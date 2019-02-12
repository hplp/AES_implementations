from __future__ import division, absolute_import
import pyrtl
from pyrtl.rtllib import libutils

"""
This code started with the version from UCSBarchlab/PyRTL github repository
https://github.com/UCSBarchlab/PyRTL/blob/development/pyrtl/rtllib/aes.py

Updates:
- TODO: complete the AES implementation
- TODO: towards a compact, memory-based, parametrizable implementation
- TODO: fixed the way the expanded key is used
- TODO: supports AES 128, 192, 256

A class for building a PyRTL AES circuit.

See the file test_aes.py for a usage example
"""


# TODO:
# 2) All ROMs should be synchronous.  This should be easy once (3) is completed
# 3) Right now decryption generates one GIANT combinatorial block. Instead
#    it should generate one of 2 options -- Either an iterative design or a
#    pipelined design.  Both will add registers between each round of AES
# 5) a single "aes-unit" combining encryption and decryption (without making
#    full independent hardware units) would be a plus as well


class AES(object):
    # AES can use 128, 192, or 256 bit cipher keys
    #             16,  24,  or 32 byte cipher keys
    #             Nk = 4, 6 or 8 [32-bit words] columns in cipher key
    #             Nr = max(Nb, Nk) + 6 = 10, 12 or 14 rounds

    def __init__(self):
        self.memories_built = False  # memories not yet built
        self.Nb = 4  # number of columns in state (in this standard)
        self.rows = 4  # number of rows
        self.StateLength = self.Nb * self.rows  # state length in bytes
        self.StateLengthBits = self.Nb * self.rows * 8  # state length in bits
        self.Nk = 4  # 4 or 6 or 8 [32-bit words] columns in cipher key
        self.KeyLength = self.Nk * self.rows  # key length in bytes
        self.KeyLengthBits = self.Nk * self.rows * 8  # key length in bits
        self.Nr = max(self.Nb, self.Nk) + 6  # = 10, 12 or 14 rounds

    def describe(self):
        print(
            "AES with Nb = %d columns, Nk = %d (32-bit) words i.e. KeyLenghth = %d bytes (or %d bits), Nr = %d rounds" %
            (self.Nb, self.Nk, self.KeyLength, self.KeyLengthBits, self.Nr))

    def cipher_round(self, plaintext, key_in, start):
        """
        AES Cipher executing one round per clock cycle

        :param plaintext: 128 bit plaintext input
        :param key_in: 128 bit key_in input
        :param start: a one bit signal telling the state machine
          to reset and accept the current plaintext and key
        :return ready, state: ready is a one bit signal showing
        that the encryption result (ciphertext) has been calculated,
        state is the ciphertext version at the current round
        """
        # check that the inputs are of the right length
        if len(key_in) != self.KeyLengthBits:
            raise pyrtl.PyrtlError("AES key length is incorrect! " +
                                   str(self.KeyLengthBits) + " != " + str(len(key_in)))
        if len(plaintext) != self.StateLengthBits:
            raise pyrtl.PyrtlError("AES plaintext length is incorrect! " +
                                   str(self.StateLengthBits) + " != " + str(len(plaintext)))

        # create state and round key registers
        state = pyrtl.Register(bitwidth=self.StateLengthBits, name='state')
        key = pyrtl.Register(bitwidth=self.KeyLengthBits, name='round_key')

        # two StateLengthBits-wide WireVectors
        key_exp_in = pyrtl.WireVector(bitwidth=self.StateLengthBits)
        add_round_in = pyrtl.WireVector(bitwidth=self.StateLengthBits)

        counter = pyrtl.Register(bitwidth=4, name='counter')  # 2^4-1 = 17 > max of 14 rounds
        round = pyrtl.WireVector(bitwidth=4, name='round')
        counter.next <<= round

        # connect aes methods
        sub_bytes_out = self._sub_bytes(state)
        shift_rows_out = self._shift_rows(sub_bytes_out)
        mix_columns_out = self._mix_columns(shift_rows_out)
        key_out = self._key_expansion(key, counter)
        add_round_key_out = self._add_round_key(add_round_in, key_exp_in)

        # cipher state machine
        with pyrtl.conditional_assignment:
            # starting the cipher
            with start == 1:
                round |= 0
                key_exp_in |= key_in  # to lower the number of cycles
                state.next |= add_round_key_out
                key.next |= key_in
                add_round_in |= plaintext

            # last AES cipher round
            with counter == self.Nr:  # keep everything the same
                round |= counter
                state.next |= state

            # running through AES cipher
            with pyrtl.otherwise:
                round |= counter + 1
                key_exp_in |= key_out
                state.next |= add_round_key_out
                key.next |= key_out
                with counter == (self.Nr - 1):
                    add_round_in |= shift_rows_out
                with pyrtl.otherwise:
                    add_round_in |= mix_columns_out

        ready = (counter == self.Nr)
        return ready, state

    def _key_gen(self, key):
        keys = [key]
        for enc_round in range(self.Nr):
            key = self._key_expansion(key, enc_round)
            keys.append(key)
        return keys

    def _key_expansion(self, old_key, key_expand_round):
        self._build_memories_if_not_exists()
        w = libutils.partition_wire(old_key, 32)
        x = [w[3] ^ self._g(w[0], key_expand_round)]
        x.insert(0, x[0] ^ w[2])
        x.insert(0, x[0] ^ w[1])
        x.insert(0, x[0] ^ w[0])
        return pyrtl.concat_list(x)

    def _g(self, word, key_expand_round):
        """
        One-byte left circular rotation, substitution of each byte
        """
        import numbers
        self._build_memories_if_not_exists()
        a = libutils.partition_wire(word, 8)
        sub = [self.sbox[a[index]] for index in (3, 0, 1, 2)]
        if isinstance(key_expand_round, numbers.Number):
            rcon_data = self._rcon_data[key_expand_round + 1]  # int value
        else:
            rcon_data = self.rcon[key_expand_round + 1]
        sub[3] = sub[3] ^ rcon_data
        return pyrtl.concat_list(sub)

    def _sub_bytes(self, state, inverse=False):
        self._build_memories_if_not_exists()
        state_out = [self.inv_sbox[byte] if inverse else self.sbox[byte]
                     for byte in libutils.partition_wire(state, 8)]
        return pyrtl.concat_list(state_out)

    def _shift_rows(self, state):
        a = libutils.partition_wire(state, 8)
        return pyrtl.concat_list((a[4], a[9], a[14], a[3],
                                  a[8], a[13], a[2], a[7],
                                  a[12], a[1], a[6], a[11],
                                  a[0], a[5], a[10], a[15]))

    def _inv_shift_rows(self, state):
        a = libutils.partition_wire(state, 8)
        return pyrtl.concat_list((a[12], a[9], a[6], a[3],
                                  a[0], a[13], a[10], a[7],
                                  a[4], a[1], a[14], a[11],
                                  a[8], a[5], a[2], a[15]))

    def _galois_mult(self, c, mult_table):
        if mult_table == 1:
            return c
        else:
            return self._galois_mults[mult_table][c]

    def _mix_columns(self, state, inverse=False):
        self._build_memories_if_not_exists()
        igm_mults = [14, 9, 13, 11] if inverse else [2, 1, 1, 3]
        subgroups = libutils.partition_wire(state, 32)
        return pyrtl.concat_list([self._mix_col_subgroup(sg, igm_mults) for sg in subgroups])

    def _mix_col_subgroup(self, in_vector, gm_multipliers):
        def _mix_single(index):
            mult_items = [self._galois_mult(a[(index + loc) % 4], mult_table)
                          for loc, mult_table in enumerate(gm_multipliers)]
            return mult_items[0] ^ mult_items[1] ^ mult_items[2] ^ mult_items[3]

        a = libutils.partition_wire(in_vector, 8)
        return pyrtl.concat_list([_mix_single(index) for index in range(len(a))])

    def _add_round_key(self, t, key):
        return t ^ key

    def _build_memories_if_not_exists(self):
        if not self.memories_built:
            self._build_memories()

    def _build_memories(self):
        def build_mem(data):
            return pyrtl.RomBlock(bitwidth=8, addrwidth=8, romdata=data, build_new_roms=True,
                                  asynchronous=True)

        self.sbox = build_mem(self._sbox_data)
        self.inv_sbox = build_mem(self._inv_sbox_data)
        self.rcon = build_mem(self._rcon_data)
        self.GM2 = build_mem(self._GM2_data)
        self.GM3 = build_mem(self._GM3_data)
        self.GM9 = build_mem(self._GM9_data)
        self.GM11 = build_mem(self._GM11_data)
        self.GM13 = build_mem(self._GM13_data)
        self.GM14 = build_mem(self._GM14_data)
        self.round_keys = build_mem(self._round_keys_data)
        self._galois_mults = {3: self.GM3, 2: self.GM2, 9: self.GM9, 11: self.GM11,
                              13: self.GM13, 14: self.GM14}
        self.memories_built = True

    _sbox_data = libutils.str_to_int_array('''
        63 7c 77 7b f2 6b 6f c5 30 01 67 2b fe d7 ab 76 ca 82 c9 7d fa 59 47 f0
        ad d4 a2 af 9c a4 72 c0 b7 fd 93 26 36 3f f7 cc 34 a5 e5 f1 71 d8 31 15
        04 c7 23 c3 18 96 05 9a 07 12 80 e2 eb 27 b2 75 09 83 2c 1a 1b 6e 5a a0
        52 3b d6 b3 29 e3 2f 84 53 d1 00 ed 20 fc b1 5b 6a cb be 39 4a 4c 58 cf
        d0 ef aa fb 43 4d 33 85 45 f9 02 7f 50 3c 9f a8 51 a3 40 8f 92 9d 38 f5
        bc b6 da 21 10 ff f3 d2 cd 0c 13 ec 5f 97 44 17 c4 a7 7e 3d 64 5d 19 73
        60 81 4f dc 22 2a 90 88 46 ee b8 14 de 5e 0b db e0 32 3a 0a 49 06 24 5c
        c2 d3 ac 62 91 95 e4 79 e7 c8 37 6d 8d d5 4e a9 6c 56 f4 ea 65 7a ae 08
        ba 78 25 2e 1c a6 b4 c6 e8 dd 74 1f 4b bd 8b 8a 70 3e b5 66 48 03 f6 0e
        61 35 57 b9 86 c1 1d 9e e1 f8 98 11 69 d9 8e 94 9b 1e 87 e9 ce 55 28 df
        8c a1 89 0d bf e6 42 68 41 99 2d 0f b0 54 bb 16
        ''')

    _inv_sbox_data = libutils.str_to_int_array('''
        52 09 6a d5 30 36 a5 38 bf 40 a3 9e 81 f3 d7 fb 7c e3 39 82 9b 2f ff 87
        34 8e 43 44 c4 de e9 cb 54 7b 94 32 a6 c2 23 3d ee 4c 95 0b 42 fa c3 4e
        08 2e a1 66 28 d9 24 b2 76 5b a2 49 6d 8b d1 25 72 f8 f6 64 86 68 98 16
        d4 a4 5c cc 5d 65 b6 92 6c 70 48 50 fd ed b9 da 5e 15 46 57 a7 8d 9d 84
        90 d8 ab 00 8c bc d3 0a f7 e4 58 05 b8 b3 45 06 d0 2c 1e 8f ca 3f 0f 02
        c1 af bd 03 01 13 8a 6b 3a 91 11 41 4f 67 dc ea 97 f2 cf ce f0 b4 e6 73
        96 ac 74 22 e7 ad 35 85 e2 f9 37 e8 1c 75 df 6e 47 f1 1a 71 1d 29 c5 89
        6f b7 62 0e aa 18 be 1b fc 56 3e 4b c6 d2 79 20 9a db c0 fe 78 cd 5a f4
        1f dd a8 33 88 07 c7 31 b1 12 10 59 27 80 ec 5f 60 51 7f a9 19 b5 4a 0d
        2d e5 7a 9f 93 c9 9c ef a0 e0 3b 4d ae 2a f5 b0 c8 eb bb 3c 83 53 99 61
        17 2b 04 7e ba 77 d6 26 e1 69 14 63 55 21 0c 7d
        ''')

    _rcon_data = libutils.str_to_int_array('''
        8d 01 02 04 08 10 20 40 80 1b 36 6c d8 ab 4d 9a 2f 5e bc 63 c6 97 35 6a
        d4 b3 7d fa ef c5 91 39 72 e4 d3 bd 61 c2 9f 25 4a 94 33 66 cc 83 1d 3a
        74 e8 cb 8d 01 02 04 08 10 20 40 80 1b 36 6c d8 ab 4d 9a 2f 5e bc 63 c6
        97 35 6a d4 b3 7d fa ef c5 91 39 72 e4 d3 bd 61 c2 9f 25 4a 94 33 66 cc
        83 1d 3a 74 e8 cb 8d 01 02 04 08 10 20 40 80 1b 36 6c d8 ab 4d 9a 2f 5e
        bc 63 c6 97 35 6a d4 b3 7d fa ef c5 91 39 72 e4 d3 bd 61 c2 9f 25 4a 94
        33 66 cc 83 1d 3a 74 e8 cb 8d 01 02 04 08 10 20 40 80 1b 36 6c d8 ab 4d
        9a 2f 5e bc 63 c6 97 35 6a d4 b3 7d fa ef c5 91 39 72 e4 d3 bd 61 c2 9f
        25 4a 94 33 66 cc 83 1d 3a 74 e8 cb 8d 01 02 04 08 10 20 40 80 1b 36 6c
        d8 ab 4d 9a 2f 5e bc 63 c6 97 35 6a d4 b3 7d fa ef c5 91 39 72 e4 d3 bd
        61 c2 9f 25 4a 94 33 66 cc 83 1d 3a 74 e8 cb 8d
        ''')

    # Galois Multiplication tables for 2, 3, 9, 11, 13, and 14.

    _GM2_data = libutils.str_to_int_array('''
        00 02 04 06 08 0a 0c 0e 10 12 14 16 18 1a 1c 1e 20 22 24 26 28 2a 2c 2e
        30 32 34 36 38 3a 3c 3e 40 42 44 46 48 4a 4c 4e 50 52 54 56 58 5a 5c 5e
        60 62 64 66 68 6a 6c 6e 70 72 74 76 78 7a 7c 7e 80 82 84 86 88 8a 8c 8e
        90 92 94 96 98 9a 9c 9e a0 a2 a4 a6 a8 aa ac ae b0 b2 b4 b6 b8 ba bc be
        c0 c2 c4 c6 c8 ca cc ce d0 d2 d4 d6 d8 da dc de e0 e2 e4 e6 e8 ea ec ee
        f0 f2 f4 f6 f8 fa fc fe 1b 19 1f 1d 13 11 17 15 0b 09 0f 0d 03 01 07 05
        3b 39 3f 3d 33 31 37 35 2b 29 2f 2d 23 21 27 25 5b 59 5f 5d 53 51 57 55
        4b 49 4f 4d 43 41 47 45 7b 79 7f 7d 73 71 77 75 6b 69 6f 6d 63 61 67 65
        9b 99 9f 9d 93 91 97 95 8b 89 8f 8d 83 81 87 85 bb b9 bf bd b3 b1 b7 b5
        ab a9 af ad a3 a1 a7 a5 db d9 df dd d3 d1 d7 d5 cb c9 cf cd c3 c1 c7 c5
        fb f9 ff fd f3 f1 f7 f5 eb e9 ef ed e3 e1 e7 e5
        ''')

    _GM3_data = libutils.str_to_int_array('''
        00 03 06 05 0c 0f 0a 09 18 1b 1e 1d 14 17 12 11 30 33 36 35 3c 3f 3a 39
        28 2b 2e 2d 24 27 22 21 60 63 66 65 6c 6f 6a 69 78 7b 7e 7d 74 77 72 71
        50 53 56 55 5c 5f 5a 59 48 4b 4e 4d 44 47 42 41 c0 c3 c6 c5 cc cf ca c9
        d8 db de dd d4 d7 d2 d1 f0 f3 f6 f5 fc ff fa f9 e8 eb ee ed e4 e7 e2 e1
        a0 a3 a6 a5 ac af aa a9 b8 bb be bd b4 b7 b2 b1 90 93 96 95 9c 9f 9a 99
        88 8b 8e 8d 84 87 82 81 9b 98 9d 9e 97 94 91 92 83 80 85 86 8f 8c 89 8a
        ab a8 ad ae a7 a4 a1 a2 b3 b0 b5 b6 bf bc b9 ba fb f8 fd fe f7 f4 f1 f2
        e3 e0 e5 e6 ef ec e9 ea cb c8 cd ce c7 c4 c1 c2 d3 d0 d5 d6 df dc d9 da
        5b 58 5d 5e 57 54 51 52 43 40 45 46 4f 4c 49 4a 6b 68 6d 6e 67 64 61 62
        73 70 75 76 7f 7c 79 7a 3b 38 3d 3e 37 34 31 32 23 20 25 26 2f 2c 29 2a
        0b 08 0d 0e 07 04 01 02 13 10 15 16 1f 1c 19 1a
        ''')

    _GM9_data = libutils.str_to_int_array('''
        00 09 12 1b 24 2d 36 3f 48 41 5a 53 6c 65 7e 77 90 99 82 8b b4 bd a6 af
        d8 d1 ca c3 fc f5 ee e7 3b 32 29 20 1f 16 0d 04 73 7a 61 68 57 5e 45 4c
        ab a2 b9 b0 8f 86 9d 94 e3 ea f1 f8 c7 ce d5 dc 76 7f 64 6d 52 5b 40 49
        3e 37 2c 25 1a 13 08 01 e6 ef f4 fd c2 cb d0 d9 ae a7 bc b5 8a 83 98 91
        4d 44 5f 56 69 60 7b 72 05 0c 17 1e 21 28 33 3a dd d4 cf c6 f9 f0 eb e2
        95 9c 87 8e b1 b8 a3 aa ec e5 fe f7 c8 c1 da d3 a4 ad b6 bf 80 89 92 9b
        7c 75 6e 67 58 51 4a 43 34 3d 26 2f 10 19 02 0b d7 de c5 cc f3 fa e1 e8
        9f 96 8d 84 bb b2 a9 a0 47 4e 55 5c 63 6a 71 78 0f 06 1d 14 2b 22 39 30
        9a 93 88 81 be b7 ac a5 d2 db c0 c9 f6 ff e4 ed 0a 03 18 11 2e 27 3c 35
        42 4b 50 59 66 6f 74 7d a1 a8 b3 ba 85 8c 97 9e e9 e0 fb f2 cd c4 df d6
        31 38 23 2a 15 1c 07 0e 79 70 6b 62 5d 54 4f 46
        ''')

    _GM11_data = libutils.str_to_int_array('''
        00 0b 16 1d 2c 27 3a 31 58 53 4e 45 74 7f 62 69 b0 bb a6 ad 9c 97 8a 81
        e8 e3 fe f5 c4 cf d2 d9 7b 70 6d 66 57 5c 41 4a 23 28 35 3e 0f 04 19 12
        cb c0 dd d6 e7 ec f1 fa 93 98 85 8e bf b4 a9 a2 f6 fd e0 eb da d1 cc c7
        ae a5 b8 b3 82 89 94 9f 46 4d 50 5b 6a 61 7c 77 1e 15 08 03 32 39 24 2f
        8d 86 9b 90 a1 aa b7 bc d5 de c3 c8 f9 f2 ef e4 3d 36 2b 20 11 1a 07 0c
        65 6e 73 78 49 42 5f 54 f7 fc e1 ea db d0 cd c6 af a4 b9 b2 83 88 95 9e
        47 4c 51 5a 6b 60 7d 76 1f 14 09 02 33 38 25 2e 8c 87 9a 91 a0 ab b6 bd
        d4 df c2 c9 f8 f3 ee e5 3c 37 2a 21 10 1b 06 0d 64 6f 72 79 48 43 5e 55
        01 0a 17 1c 2d 26 3b 30 59 52 4f 44 75 7e 63 68 b1 ba a7 ac 9d 96 8b 80
        e9 e2 ff f4 c5 ce d3 d8 7a 71 6c 67 56 5d 40 4b 22 29 34 3f 0e 05 18 13
        ca c1 dc d7 e6 ed f0 fb 92 99 84 8f be b5 a8 a3
        ''')

    _GM13_data = libutils.str_to_int_array('''
        00 0d 1a 17 34 39 2e 23 68 65 72 7f 5c 51 46 4b d0 dd ca c7 e4 e9 fe f3
        b8 b5 a2 af 8c 81 96 9b bb b6 a1 ac 8f 82 95 98 d3 de c9 c4 e7 ea fd f0
        6b 66 71 7c 5f 52 45 48 03 0e 19 14 37 3a 2d 20 6d 60 77 7a 59 54 43 4e
        05 08 1f 12 31 3c 2b 26 bd b0 a7 aa 89 84 93 9e d5 d8 cf c2 e1 ec fb f6
        d6 db cc c1 e2 ef f8 f5 be b3 a4 a9 8a 87 90 9d 06 0b 1c 11 32 3f 28 25
        6e 63 74 79 5a 57 40 4d da d7 c0 cd ee e3 f4 f9 b2 bf a8 a5 86 8b 9c 91
        0a 07 10 1d 3e 33 24 29 62 6f 78 75 56 5b 4c 41 61 6c 7b 76 55 58 4f 42
        09 04 13 1e 3d 30 27 2a b1 bc ab a6 85 88 9f 92 d9 d4 c3 ce ed e0 f7 fa
        b7 ba ad a0 83 8e 99 94 df d2 c5 c8 eb e6 f1 fc 67 6a 7d 70 53 5e 49 44
        0f 02 15 18 3b 36 21 2c 0c 01 16 1b 38 35 22 2f 64 69 7e 73 50 5d 4a 47
        dc d1 c6 cb e8 e5 f2 ff b4 b9 ae a3 80 8d 9a 97
        ''')

    _GM14_data = libutils.str_to_int_array('''
        00 0e 1c 12 38 36 24 2a 70 7e 6c 62 48 46 54 5a e0 ee fc f2 d8 d6 c4 ca
        90 9e 8c 82 a8 a6 b4 ba db d5 c7 c9 e3 ed ff f1 ab a5 b7 b9 93 9d 8f 81
        3b 35 27 29 03 0d 1f 11 4b 45 57 59 73 7d 6f 61 ad a3 b1 bf 95 9b 89 87
        dd d3 c1 cf e5 eb f9 f7 4d 43 51 5f 75 7b 69 67 3d 33 21 2f 05 0b 19 17
        76 78 6a 64 4e 40 52 5c 06 08 1a 14 3e 30 22 2c 96 98 8a 84 ae a0 b2 bc
        e6 e8 fa f4 de d0 c2 cc 41 4f 5d 53 79 77 65 6b 31 3f 2d 23 09 07 15 1b
        a1 af bd b3 99 97 85 8b d1 df cd c3 e9 e7 f5 fb 9a 94 86 88 a2 ac be b0
        ea e4 f6 f8 d2 dc ce c0 7a 74 66 68 42 4c 5e 50 0a 04 16 18 32 3c 2e 20
        ec e2 f0 fe d4 da c8 c6 9c 92 80 8e a4 aa b8 b6 0c 02 10 1e 34 3a 28 26
        7c 72 60 6e 44 4a 58 56 37 39 2b 25 0f 01 13 1d 47 49 5b 55 7f 71 63 6d
        d7 d9 cb c5 ef e1 f3 fd a7 a9 bb b5 9f 91 83 8d
        ''')

    # expanded key for testing
    _round_keys_data = libutils.str_to_int_array('''
        00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f
        d6 aa 74 fd d2 af 72 fa da a6 78 f1 d6 ab 76 fe
        b6 92 cf 0b 64 3d bd f1 be 9b c5 00 68 30 b3 fe
        b6 ff 74 4e d2 c2 c9 bf 6c 59 0c bf 04 69 bf 41
        47 f7 f7 bc 95 35 3e 03 f9 6c 32 bc fd 05 8d fd
        3c aa a3 e8 a9 9f 9d eb 50 f3 af 57 ad f6 22 aa
        5e 39 0f 7d f7 a6 92 96 a7 55 3d c1 0a a3 1f 6b
        14 f9 70 1a e3 5f e2 8c 44 0a df 4d 4e a9 c0 26
        47 43 87 35 a4 1c 65 b9 e0 16 ba f4 ae bf 7a d2
        54 99 32 d1 f0 85 57 68 10 93 ed 9c be 2c 97 4e
        13 11 1d 7f e3 94 4a 17 f3 07 a7 8b 4d 2b 30 c5''')

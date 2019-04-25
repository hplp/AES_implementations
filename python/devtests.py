from AESfunctions import *


def tohex(state):
    stateHex = [0] * len(state)
    for i in range(16):
        stateHex[i] = hex(state[i])
    return stateHex


state = [0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2, 0xe0, 0x37, 0x07, 0x34]
# state = [137, 237, 94, 106, 5, 202, 118, 51, 129, 53, 8, 95, 226, 28, 64, 189]
roundkey = [0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f]
print("original: ", tohex(state))
print("roundkey: ", tohex(roundkey))

# stateHex = tohex(state)
# print("orignHex: ",stateHex)

# roundkeyHex = tohex(roundkey)
# print("roundHex: ",roundkeyHex,"\n")

# state = [0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2, 0xe0, 0x37, 0x07, 0x34]
# print("afterSbB: ", tohex(SubBytes(state)))
# state = [0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2, 0xe0, 0x37, 0x07, 0x34]
# print("afteriSbB: ", tohex(InvSubBytes(state)), "\n")

# state = [0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2, 0xe0, 0x37, 0x07, 0x34]
# print("afterShR: ", tohex(ShiftRows(state)))
# state = [0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2, 0xe0, 0x37, 0x07, 0x34]
# print("afteriShR: ", tohex(InvShiftRows(state)), "\n")

# state = [0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2, 0xe0, 0x37, 0x07, 0x34]
# print("afterMxC: ", tohex(MixColumns(state)))
# state = [0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2, 0xe0, 0x37, 0x07, 0x34]
# print("afteriMxC: ", tohex(InvMixColumns(state)), "\n")

# state = SubBytes(state)
# print("afterSB: ", tohex(state))
# state = ShiftRows(state)
# print("afterSR: ", tohex(state))
# state = MixColumns(state)
# print("afterMC: ", tohex(state))
# state = AddRoundKey(state, roundkey)
# print("afterARK: ", tohex(state))

# state = InvShiftRows(state)
# print("afterSR: ", tohex(state))
# state = InvSubBytes(state)
# print("afterSB: ", tohex(state))
state = AddRoundKey(state, roundkey)
print("afterARK: ", tohex(state))
# state = InvMixColumns(state)
# print("afterMC: ", tohex(state))

# expandedKey = KeyExpansion(roundkey, 4)
# ij_roundKeyHex = [0] * 16
# for i in range(11):
#     for j in range(16):
#         ij_roundKeyHex[j] = "0x{:02x}".format(
#             expandedKey[i * 16 + j])  # hex(expandedKey[i * 16 + j])
#     print("ij_roundKeyHex: ", ij_roundKeyHex)
# print("expandedKey: ", expandedKey)

# in dev test sequence

#state = AddRoundKey(state, expandedKey[0:(stt_lng)])
#print("state: ", 0, state)

# for i in range(10):
#    state = SubBytes(state)
#    state = ShiftRows(state)
#    # Skip MixColumns in final round
#    if(i != (10 - 1)):
#        state = MixColumns(state)
#    state = AddRoundKey(state, expandedKey[
#        (i + 1) * stt_lng:(i + 2) * stt_lng])
#    print("state: ", i + 1, state)

# state = AddRoundKey(state, expandedKey[10 * stt_lng:(10 + 1) * stt_lng])
# print("state: ", 0, state)

# for i in range(10):
#    state = InvShiftRows(state)
#    state = InvSubBytes(state)
#    state = AddRoundKey(state, expandedKey[(10 - i - 1) * stt_lng:(10 - i) * stt_lng])
# Skip InvMixColumns in final round
#    if(i != (10 - 1)):
#        state = InvMixColumns(state)
#    print("state: ", i + 1, state)

# state = AddRoundKey(state, roundkey)
# state = SubBytes(state)
# state = ShiftRows(state)
# state = MixColumns(state)
# state = AddRoundKey(state, roundkey)
# print("dev_seq: ", state)
# stateHex = [0] * 16
# for i in range(16):
#    stateHex[i] = "0x{:02x}".format(state[i])
# print("dev_seqHex: ", stateHex)

# Nk = 8  # 4 or 6 or 8 [32-bit words] columns in cipher key
# rows = 4
# stt_lng = Nb * rows  # state length
# CipherKeyLenghth = Nk * rows
# Nr = max(Nb, Nk) + 6  # = 10, 12 or 14 rounds
# state = [0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2, 0xe0, 0x37, 0x07, 0x34]
# key = [0] * CipherKeyLenghth
# for i in range(CipherKeyLenghth):
#     key[i] = i
# expandedKey = KeyExpansion(key, Nk)
# print(Nk, tohex(AES_Encrypt(state, expandedKey, Nr)))

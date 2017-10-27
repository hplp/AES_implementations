# https://en.wikipedia.org/wiki/Advanced_Encryption_Standard

from AEStables import *
Nb = 4  # columns
rows = 4
stt_lng = Nb * rows  # state length


def KeyExpansion(inputKey, Nk):
    Nr = max(Nb, Nk) + 6  # = 10, 12 or 14 rounds

    def KeyExpansionCore(in4, i):
        # RotWord rotates left
        # SubWord substitutes with S-Box value
        t = in4[0]
        in4[0] = s_box[in4[1]]
        in4[1] = s_box[in4[2]]
        in4[2] = s_box[in4[3]]
        in4[3] = s_box[t]
        # SubWord substitutes with S-Box value
        # in4[0] = s_box[in4[0]]
        # in4[1] = s_box[in4[1]]
        # in4[2] = s_box[in4[2]]
        # in4[3] = s_box[in4[3]]
        # RCon (round constant) 1st byte XOR rcon
        in4[0] = in4[0] ^ rcon[i]
        # Return KeyExpansionCore
        return in4

    def SubWord(in4):
        # SubWord substitutes with S-Box value
        in4[0] = s_box[in4[0]]
        in4[1] = s_box[in4[1]]
        in4[2] = s_box[in4[2]]
        in4[3] = s_box[in4[3]]
        # Return SubWord
        return in4

    # Declare expandedKeys
    expandedKeys = [0] * ((Nr + 1) * stt_lng)
    # Copy the inputKey at its beginning
    for i in range(Nk * rows):
        expandedKeys[i] = inputKey[i]

    # Variables
    byGen = Nk * rows
    rconIdx = 1
    temp = [0] * rows

    # Generate expanded keys
    while(byGen < (Nr + 1) * stt_lng):
        # Read previously generated last 4 bytes (last word)
        for i in range(rows):
            temp[i] = expandedKeys[byGen - rows + i]
        # Perform KeyExpansionCore once for each 16 byte key
        if(byGen % (Nk * rows) == 0):
            temp = KeyExpansionCore(temp, rconIdx)
            rconIdx = rconIdx + 1
        elif((Nk > 6) and (byGen % (Nk * rows) == (4 * rows))):
            temp = SubWord(temp)
        # XOR temp with [byGen-(Nk * rows)] and store in expandedKeys
        for i in range(rows):
            expandedKeys[byGen] = expandedKeys[byGen - Nk * rows] ^ temp[i]
            byGen = byGen + 1
    return expandedKeys


def SubBytes(state):
    for i in range(stt_lng):
        state[i] = s_box[state[i]]
    return state


def InvSubBytes(state):
    for i in range(stt_lng):
        state[i] = inverted_s_box[state[i]]
    return state


def ShiftRows(state):
    tmp_state = [0] * stt_lng
    tmp_state[0] = state[0]
    tmp_state[1] = state[5]
    tmp_state[2] = state[10]
    tmp_state[3] = state[15]

    tmp_state[4] = state[4]
    tmp_state[5] = state[9]
    tmp_state[6] = state[14]
    tmp_state[7] = state[3]

    tmp_state[8] = state[8]
    tmp_state[9] = state[13]
    tmp_state[10] = state[2]
    tmp_state[11] = state[7]

    tmp_state[12] = state[12]
    tmp_state[13] = state[1]
    tmp_state[14] = state[6]
    tmp_state[15] = state[11]
    return tmp_state


def InvShiftRows(state):
    tmp_state = [0] * stt_lng
    tmp_state[0] = state[0]
    tmp_state[1] = state[13]
    tmp_state[2] = state[10]
    tmp_state[3] = state[7]

    tmp_state[4] = state[4]
    tmp_state[5] = state[1]
    tmp_state[6] = state[14]
    tmp_state[7] = state[11]

    tmp_state[8] = state[8]
    tmp_state[9] = state[5]
    tmp_state[10] = state[2]
    tmp_state[11] = state[15]

    tmp_state[12] = state[12]
    tmp_state[13] = state[9]
    tmp_state[14] = state[6]
    tmp_state[15] = state[3]
    return tmp_state


def MixColumns(state):
    tmp_state = [0] * stt_lng
    tmp_state[0] = mul02[state[0]] ^ mul03[state[1]] ^ state[2] ^ state[3]
    tmp_state[1] = state[0] ^ mul02[state[1]] ^ mul03[state[2]] ^ state[3]
    tmp_state[2] = state[0] ^ state[1] ^ mul02[state[2]] ^ mul03[state[3]]
    tmp_state[3] = mul03[state[0]] ^ state[1] ^ state[2] ^ mul02[state[3]]

    tmp_state[4] = mul02[state[4]] ^ mul03[state[5]] ^ state[6] ^ state[7]
    tmp_state[5] = state[4] ^ mul02[state[5]] ^ mul03[state[6]] ^ state[7]
    tmp_state[6] = state[4] ^ state[5] ^ mul02[state[6]] ^ mul03[state[7]]
    tmp_state[7] = mul03[state[4]] ^ state[5] ^ state[6] ^ mul02[state[7]]

    tmp_state[8] = mul02[state[8]] ^ mul03[state[9]] ^ state[10] ^ state[11]
    tmp_state[9] = state[8] ^ mul02[state[9]] ^ mul03[state[10]] ^ state[11]
    tmp_state[10] = state[8] ^ state[9] ^ mul02[state[10]] ^ mul03[state[11]]
    tmp_state[11] = mul03[state[8]] ^ state[9] ^ state[10] ^ mul02[state[11]]

    tmp_state[12] = mul02[state[12]] ^ mul03[state[13]] ^ state[14] ^ state[15]
    tmp_state[13] = state[12] ^ mul02[state[13]] ^ mul03[state[14]] ^ state[15]
    tmp_state[14] = state[12] ^ state[13] ^ mul02[state[14]] ^ mul03[state[15]]
    tmp_state[15] = mul03[state[12]] ^ state[13] ^ state[14] ^ mul02[state[15]]
    return tmp_state


def InvMixColumns(state):
    tmp_state = [0] * stt_lng
    tmp_state[0] = mul14[state[0]] ^ mul11[
        state[1]] ^ mul13[state[2]] ^ mul09[state[3]]
    tmp_state[1] = mul09[state[0]] ^ mul14[
        state[1]] ^ mul11[state[2]] ^ mul13[state[3]]
    tmp_state[2] = mul13[state[0]] ^ mul09[
        state[1]] ^ mul14[state[2]] ^ mul11[state[3]]
    tmp_state[3] = mul11[state[0]] ^ mul13[
        state[1]] ^ mul09[state[2]] ^ mul14[state[3]]

    tmp_state[4] = mul14[state[4]] ^ mul11[
        state[5]] ^ mul13[state[6]] ^ mul09[state[7]]
    tmp_state[5] = mul09[state[4]] ^ mul14[
        state[5]] ^ mul11[state[6]] ^ mul13[state[7]]
    tmp_state[6] = mul13[state[4]] ^ mul09[
        state[5]] ^ mul14[state[6]] ^ mul11[state[7]]
    tmp_state[7] = mul11[state[4]] ^ mul13[
        state[5]] ^ mul09[state[6]] ^ mul14[state[7]]

    tmp_state[8] = mul14[state[8]] ^ mul11[
        state[9]] ^ mul13[state[10]] ^ mul09[state[11]]
    tmp_state[9] = mul09[state[8]] ^ mul14[
        state[9]] ^ mul11[state[10]] ^ mul13[state[11]]
    tmp_state[10] = mul13[state[8]] ^ mul09[
        state[9]] ^ mul14[state[10]] ^ mul11[state[11]]
    tmp_state[11] = mul11[state[8]] ^ mul13[
        state[9]] ^ mul09[state[10]] ^ mul14[state[11]]

    tmp_state[12] = mul14[state[12]] ^ mul11[
        state[13]] ^ mul13[state[14]] ^ mul09[state[15]]
    tmp_state[13] = mul09[state[12]] ^ mul14[
        state[13]] ^ mul11[state[14]] ^ mul13[state[15]]
    tmp_state[14] = mul13[state[12]] ^ mul09[
        state[13]] ^ mul14[state[14]] ^ mul11[state[15]]
    tmp_state[15] = mul11[state[12]] ^ mul13[
        state[13]] ^ mul09[state[14]] ^ mul14[state[15]]
    return tmp_state


def AddRoundKey(state, roundKey):
    for i in range(stt_lng):
        state[i] = state[i] ^ roundKey[i]
    return state


def AES_Encrypt(message, expandedKey, Nr):  # Cipher
    state = [0] * stt_lng
    # Convert chars to HEX (INT) using ASCII
    for i in range(stt_lng):
        state[i] = ord(message[i])

    # Whitening with round key
    state = AddRoundKey(state, expandedKey[0:stt_lng])

    # Rounds
    for i in range(Nr):
        state = SubBytes(state)
        state = ShiftRows(state)
        # Skip MixColumns in final round
        if(i != (Nr - 1)):
            state = MixColumns(state)
        state = AddRoundKey(state, expandedKey[
            (i + 1) * stt_lng:(i + 2) * stt_lng])

    # Return encrypted result (ciphertext)
    return state


def AES_Decrypt(encrypted_message, expandedKey, Nr):  # Inverse Cipher
    state = encrypted_message

    # Whitening with round key
    state = AddRoundKey(state, expandedKey[Nr * stt_lng:(Nr + 1) * 16])

    # Rounds
    for i in range(Nr):
        state = InvShiftRows(state)
        state = InvSubBytes(state)
        state = AddRoundKey(state, expandedKey[
            (Nr - i - 1) * stt_lng:(Nr - i) * stt_lng])
        # Skip InvMixColumns in final round
        if(i != (Nr - 1)):
            state = InvMixColumns(state)

    # Return decrypted result (plaintext)
    return state

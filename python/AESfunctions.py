from AEStables import *

def KeyExpansion(inputKey, rounds):
	def KeyExpansionCore(in4, i):
		# RotWord rotates left
		t = in4[0]
		in4[0] = in4[1]
		in4[1] = in4[2]
		in4[2] = in4[3]
		in4[3] = t
		# SubWord substitutes with S-Box value
		in4[0] = s_box[in4[0]]
		in4[1] = s_box[in4[1]]
		in4[2] = s_box[in4[2]]
		in4[3] = s_box[in4[3]]
		# RCon (round constant) 1st byte XOR rcon
		in4[0] = in4[0] ^ rcon[i]
		# return KeyExpansionCore
		return in4

	# Declare expandedKeys and copy the inputKey at its beginning
	expandedKeys=[0]*((rounds+1)*16)
	for i in range((rounds-6)*4): expandedKeys[i] = inputKey[i]
	# Variables
	bytesGenerated = (rounds-6)*4
	rconIteration = 1
	temp=[0]*4
	# Generate expanded keys 
	while(bytesGenerated < (rounds+1)*16):
		# Read previously generated last 4 bytes
		for i in range(4):
			temp[i] = expandedKeys[i + bytesGenerated - 4]
		# Perform the core once for each 16 byte key
		if(bytesGenerated % 16 == 0):
			temp = KeyExpansionCore(temp, rconIteration)
			rconIteration = rconIteration + 1
		# XOR temp with [bytesGenerated-16] and store in expandedKeys
		for i in range(4):
			expandedKeys[bytesGenerated] = expandedKeys[bytesGenerated - 16] ^ temp[i]
			bytesGenerated = bytesGenerated + 1
	#print(len(expandedKeys),expandedKeys)
	return expandedKeys

def SubBytes(state):
	for i in range(16): state[i] = s_box[state[i]]
	return state

def InvSubBytes(state):
	for i in range(16): state[i] = rs_box[state[i]]
	return state

def ShiftRows(state):
	tmp_state=[0]*16
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
	tmp_state=[0]*16
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
	tmp_state=[0]*16
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
	tmp_state=[0]*16
	tmp_state[0]  = mul14[state[0]] ^ mul11[state[1]] ^ mul13[state[2]] ^ mul09[state[3]]
	tmp_state[1]  = mul09[state[0]] ^ mul14[state[1]] ^ mul11[state[2]] ^ mul13[state[3]]
	tmp_state[2]  = mul13[state[0]] ^ mul09[state[1]] ^ mul14[state[2]] ^ mul11[state[3]]
	tmp_state[3]  = mul11[state[0]] ^ mul13[state[1]] ^ mul09[state[2]] ^ mul14[state[3]]

	tmp_state[4]  = mul14[state[4]] ^ mul11[state[5]] ^ mul13[state[6]] ^ mul09[state[7]]
	tmp_state[5]  = mul09[state[4]] ^ mul14[state[5]] ^ mul11[state[6]] ^ mul13[state[7]]
	tmp_state[6]  = mul13[state[4]] ^ mul09[state[5]] ^ mul14[state[6]] ^ mul11[state[7]]
	tmp_state[7]  = mul11[state[4]] ^ mul13[state[5]] ^ mul09[state[6]] ^ mul14[state[7]]

	tmp_state[8]  = mul14[state[8]] ^ mul11[state[9]] ^ mul13[state[10]] ^ mul09[state[11]]
	tmp_state[9]  = mul09[state[8]] ^ mul14[state[9]] ^ mul11[state[10]] ^ mul13[state[11]]
	tmp_state[10] = mul13[state[8]] ^ mul09[state[9]] ^ mul14[state[10]] ^ mul11[state[11]]
	tmp_state[11] = mul11[state[8]] ^ mul13[state[9]] ^ mul09[state[10]] ^ mul14[state[11]]

	tmp_state[12] = mul14[state[12]] ^ mul11[state[13]] ^ mul13[state[14]] ^ mul09[state[15]]
	tmp_state[13] = mul09[state[12]] ^ mul14[state[13]] ^ mul11[state[14]] ^ mul13[state[15]]
	tmp_state[14] = mul13[state[12]] ^ mul09[state[13]] ^ mul14[state[14]] ^ mul11[state[15]]
	tmp_state[15] = mul11[state[12]] ^ mul13[state[13]] ^ mul09[state[14]] ^ mul14[state[15]]
	return tmp_state

def AddRoundKey(state, roundKey):
	for i in range(16): state[i] = state[i] ^ roundKey[i]
	return state

# Cipher
def AES_Encrypt(message, expandedKey, rounds):
	state=[0]*16
	# Convert chars to HEX (INT) using ASCII
	for i in range(16): state[i] = ord(message[i])

	# Whitening
	state = AddRoundKey(state, expandedKey[0:16])

	# Rounds
	for i in range(rounds-1):
		state = SubBytes(state)
		state = ShiftRows(state)
		state = MixColumns(state)
		state = AddRoundKey(state, expandedKey[16*(i+1):16*(i+2)])

	# Final Round
	state = SubBytes(state)
	state = ShiftRows(state)
	state = AddRoundKey(state, expandedKey[16*rounds:16*(rounds+1)])

	# Return encrypted result
	return state

# Inverse Cipher
def AES_Decrypt(encrypted_message, expandedKey, rounds):
	state=encrypted_message

	# Whitening
	state = AddRoundKey(state, expandedKey[16*rounds:16*(rounds+1)])

	# Rounds
	for i in range(rounds-1):
		state = InvShiftRows(state)
		state = InvSubBytes(state)
		state = AddRoundKey(state, expandedKey[16*(rounds-i-1):16*(rounds-i)])
		state = InvMixColumns(state)
		
	# Final Round
	state = InvShiftRows(state)
	state = InvSubBytes(state)
	state = AddRoundKey(state, expandedKey[0:16])

	# Return decrypted result
	return state
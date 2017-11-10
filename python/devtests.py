from AESfunctions import *

state = [0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d,
         0x31, 0x31, 0x98, 0xa2, 0xe0, 0x37, 0x07, 0x34]
roundkey = [0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
            0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f]
print("original: ", state)
print("roundkey: ", roundkey)

# stateHex=[0]*16
#for i in range(16): stateHex[i]=hex(state[i])
#print("orignHex: ",stateHex)

# roundkeyHex=[0]*16
#for i in range(16): roundkeyHex[i]=hex(roundkey[i])
#print("roundHex: ",roundkeyHex,"\n")

#stateSbB = SubBytes(state)
#print("afterSbB: ", stateSbB, "\n")

#stateiSbB = InvSubBytes(state)
#print("afteriSbB: ", stateiSbB, "\n")

#stateSR = ShiftRows(state)
#print("afterShR: ", stateSR)

#stateiSR = InvShiftRows(state)
#print("afteriShR: ", stateiSR)

#stateMC = MixColumns(state)
#print("afterMxC: ", stateMC)

#stateiMC = InvMixColumns(state)
#print("afteriMxC: ", stateiMC)

#stateARK = AddRoundKey(state, roundkey)
#print("afterARK: ", stateARK)

#expandedKey = KeyExpansion(roundkey, 4)
#ij_roundKeyHex = [0] * 16
# for i in range(10):
#    for j in range(16):
#        ij_roundKeyHex[j] = "0x{:02x}".format(
#            expandedKey[i * 16 + j])  # hex(expandedKey[i * 16 + j])
#    print("ij_roundKeyHex: ", ij_roundKeyHex)

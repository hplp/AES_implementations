from AESfunctions import *

# test input data
message = "The quick brown fox jumps over the lazy dog."

# AES can use 16, 24, or 32 byte keys (128, 192, and 256 bits respectively)
# test key length and value
key_length = 32
if key_length == 16:
	key = [0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf]
	rounds = 10
elif key_length == 24:
	key = [0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17]
	rounds = 12
elif key_length == 32:
	key = [0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f]
	rounds = 14

print("message: ",len(message),message)
expandedKey=KeyExpansion(key, rounds)
print("expandedKey: ",len(expandedKey),expandedKey)

# pad message with spaces to be integer chunks of 16 bytes
if len(message)%16:
	message = message.ljust(len(message) + 16 - len(message)%16, chr(0))
print("Original: ",len(message),message)

message_list=[0]*len(message)
# Convert chars to INT using ASCII
for i in range(len(message)): message_list[i] = ord(message[i])
print("ASCII vals: ",len(message_list),message_list)

###
encrypted_message=[0]*len(message)
index = 0
while(message):
	encrypted_message[index:index+16] = AES_Encrypt(message[:16], expandedKey, rounds)
	message = message[16:]
	index = index + 16

print("Encrypted: ",len(encrypted_message),encrypted_message)

encrypted_message_hex=[0]*len(encrypted_message)
index = 0
for v in encrypted_message:
	encrypted_message_hex[index] = hex(v)
	index = index + 1

print("Encr HEX: ",len(encrypted_message_hex),encrypted_message_hex)

###
decrypted_message=[0]*len(encrypted_message)
index = 0
while(encrypted_message):
	decrypted_message[index:index+16] = AES_Decrypt(encrypted_message[:16], expandedKey, rounds)
	encrypted_message = encrypted_message[16:]
	index = index + 16

print("Decrypted: ",len(decrypted_message),decrypted_message)

rec_message = "".join(chr(i) for i in decrypted_message)
print("Decrypted chars: ",len(rec_message),rec_message)
from AESfunctions import *

# test input data (plaintext)
message = "The quick brown fox jumps over the lazy dog."
print("message: ",len(message),message)

# AES can use 128, 192, or 256 bit cipher keys
#             16,  24,  or 32 byte cipher keys
#             Nk = 4, 6 or 8 [32-bit words]
#             Nr = 10, 12 or 14 rounds (=Nk+6 for Nb=4)

# test cipher key length and value in bytes
key_length = 16
Nk = key_length // 4
Nr = Nk + 6
if key_length == 16:
	key = [0x00, 0x01, 0x02, 0x03,
	       0x04, 0x05, 0x06, 0x07,
	       0x08, 0x09, 0x0a, 0x0b,
	       0x0c, 0x0d, 0x0e, 0x0f]
elif key_length == 24:
	key = [0x00, 0x01, 0x02, 0x03, 0x04, 0x05,
	       0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b,
	       0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11,
	       0x12, 0x13, 0x14, 0x15, 0x16, 0x17]
elif key_length == 32:
	key = [0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
	       0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f,
	       0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
	       0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f]

# Nb = 4 columns in state (in this standard)
Nb = 4

expandedKey=KeyExpansion(key, Nr)
print("expandedKey: ",len(expandedKey),expandedKey)

# pad message with spaces to be integer chunks of 16 bytes
if len(message)%16:
	message = message.ljust(len(message) + 16 - len(message)%16, chr(0))
print("Original: ",len(message),message)

message_list=[0]*len(message)
# Convert chars to INT using ASCII
for i in range(len(message)): message_list[i] = ord(message[i])
print("ASCII vals: ",len(message_list),message_list)

### Ciphertext
encrypted_message=[0]*len(message)
index = 0
while(message):
	encrypted_message[index:index+16] = AES_Encrypt(message[:16], expandedKey, Nr)
	message = message[16:]
	index = index + 16

print("Encrypted: ",len(encrypted_message),encrypted_message)

encrypted_message_hex=[0]*len(encrypted_message)
index = 0
for v in encrypted_message:
	encrypted_message_hex[index] = hex(v)
	index = index + 1

print("Encr HEX: ",len(encrypted_message_hex),encrypted_message_hex)

### Plaintext
decrypted_message=[0]*len(encrypted_message)
index = 0
while(encrypted_message):
	decrypted_message[index:index+16] = AES_Decrypt(encrypted_message[:16], expandedKey, Nr)
	encrypted_message = encrypted_message[16:]
	index = index + 16

print("Decrypted: ",len(decrypted_message),decrypted_message)

rec_message = "".join(chr(i) for i in decrypted_message)
print("Decrypted chars: ",len(rec_message),rec_message)
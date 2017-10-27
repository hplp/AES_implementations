from AESfunctions import *

# Nb = 4 columns in state (in this standard)
Nb = 4  # columns


# AES can use 128, 192, or 256 bit cipher keys
#             16,  24,  or 32 byte cipher keys
#             Nk = 4, 6 or 8 [32-bit words] columns in cipher key
#             Nr = max(Nb, Nk)+6 = 10, 12 or 14 rounds
Nk = 8  # 4 or 6 or 8 [32-bit words] columns in cipher key
rows = 4
CipherKeyLenghth = Nk * rows
Nr = max(Nb, Nk) + 6  # = 10, 12 or 14 rounds
print("AES with Nb =", Nb, "columns, Nk =", Nk, "(32-bit) words i.e. CipherKeyLenghth =",
      CipherKeyLenghth, "bytes (or", CipherKeyLenghth * 8, "bits), Nr =", Nr, "rounds \n")

# Create a dummy test cipher key
key = [0] * CipherKeyLenghth
for i in range(CipherKeyLenghth):
    key[i] = i
# key = [0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6,
#       0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c]
# key = [0x8e, 0x73, 0xb0, 0xf7, 0xda, 0x0e, 0x64, 0x52, 0xc8, 0x10, 0xf3, 0x2b,
#       0x80, 0x90, 0x79, 0xe5, 0x62, 0xf8, 0xea, 0xd2, 0x52, 0x2c, 0x6b, 0x7b]
key = [0x60, 0x3d, 0xeb, 0x10, 0x15, 0xca, 0x71, 0xbe,
       0x2b, 0x73, 0xae, 0xf0, 0x85, 0x7d, 0x77, 0x81,
       0x1f, 0x35, 0x2c, 0x07, 0x3b, 0x61, 0x08, 0xd7,
       0x2d, 0x98, 0x10, 0xa3, 0x09, 0x14, 0xdf, 0xf4]
print("key: ", len(key), key)


# Expand key
expandedKey = KeyExpansion(key, Nk)
print("expkey: ", len(expandedKey), expandedKey, "\n")


# Create a test input data (plaintext)
message = "The quick brown fox jumps over the lazy dog."
print("message: ", len(message), message)


# Pad message with spaces to be integer chunks of 16 bytes
if len(message) % 16:
    message = message.ljust(len(message) + 16 - len(message) % 16, chr(0))
print("padded: ", len(message), message, "\n")


# message_list=[0]*len(message)
# Convert chars to INT using ASCII
#for i in range(len(message)): message_list[i] = ord(message[i])
#print("ASCII vals: ",len(message_list),message_list)


# Ciphertext
encrypted_message = [0] * len(message)
index = 0
while(message):
    encrypted_message[index:index +
                      16] = AES_Encrypt(message[:16], expandedKey, Nr)
    message = message[16:]
    index = index + 16
print("encrypted: ", len(encrypted_message), encrypted_message)
#encrypted_message_chr = "".join(chr(i) for i in encrypted_message)
#print("ecr chars: ", len(encrypted_message_chr), encrypted_message_chr)


encrypted_message_hex = [0] * len(encrypted_message)
index = 0
for v in encrypted_message:
    encrypted_message_hex[index] = hex(v)
    index = index + 1
print("encrp HEX: ", len(encrypted_message_hex), encrypted_message_hex, "\n")


# Plaintext
decrypted_message = [0] * len(encrypted_message)
index = 0
while(encrypted_message):
    decrypted_message[index:index +
                      16] = AES_Decrypt(encrypted_message[:16], expandedKey, Nr)
    encrypted_message = encrypted_message[16:]
    index = index + 16
print("decrypted: ", len(decrypted_message), decrypted_message)


rec_message = "".join(chr(i) for i in decrypted_message)
print("dcr chars: ", len(rec_message), rec_message)


# Scratch area

# if CipherKeyLenghth == 16:
# 	key = [0x00, 0x01, 0x02, 0x03,
# 	       0x04, 0x05, 0x06, 0x07,
# 	       0x08, 0x09, 0x0a, 0x0b,
# 	       0x0c, 0x0d, 0x0e, 0x0f]
# elif CipherKeyLenghth == 24:
# 	key = [0x00, 0x01, 0x02, 0x03, 0x04, 0x05,
# 	       0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b,
# 	       0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11,
# 	       0x12, 0x13, 0x14, 0x15, 0x16, 0x17]
# elif CipherKeyLenghth == 32:
# 	key = [0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
# 	       0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f,
# 	       0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
# 	       0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f]

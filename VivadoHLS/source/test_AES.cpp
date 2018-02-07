#include "AESfunctions.h"
#include "AEStables.h"

void AES_Encrypt(unsigned char plaintext[stt_lng],
		unsigned char expandedKey[ExtdCipherKeyLenghth_max], unsigned int Nr,
		unsigned char ciphertext[stt_lng]);

void AES_Decrypt(unsigned char ciphertext[stt_lng],
		unsigned char expandedKey[ExtdCipherKeyLenghth_max], unsigned int Nr,
		unsigned char plaintext[stt_lng]);

// Rijndael key schedule
// https://en.wikipedia.org/wiki/Rijndael_key_schedule
const unsigned char rcon[256] = { 0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20,
		0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab, 0x4d, 0x9a, 0x2f, 0x5e, 0xbc,
		0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 0x7d, 0xfa, 0xef, 0xc5, 0x91,
		0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25, 0x4a, 0x94, 0x33,
		0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d, 0x01, 0x02, 0x04,
		0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab, 0x4d, 0x9a,
		0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 0x7d, 0xfa,
		0xef, 0xc5, 0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25,
		0x4a, 0x94, 0x33, 0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d,
		0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8,
		0xab, 0x4d, 0x9a, 0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4,
		0xb3, 0x7d, 0xfa, 0xef, 0xc5, 0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61,
		0xc2, 0x9f, 0x25, 0x4a, 0x94, 0x33, 0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74,
		0xe8, 0xcb, 0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b,
		0x36, 0x6c, 0xd8, 0xab, 0x4d, 0x9a, 0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97,
		0x35, 0x6a, 0xd4, 0xb3, 0x7d, 0xfa, 0xef, 0xc5, 0x91, 0x39, 0x72, 0xe4,
		0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25, 0x4a, 0x94, 0x33, 0x66, 0xcc, 0x83,
		0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20,
		0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab, 0x4d, 0x9a, 0x2f, 0x5e, 0xbc,
		0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 0x7d, 0xfa, 0xef, 0xc5, 0x91,
		0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25, 0x4a, 0x94, 0x33,
		0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d };

void KeyExpansionCore(unsigned char* in4, unsigned char i) {
	// RotWord rotates left
	// SubWord substitutes with S - Box value
	unsigned char t = in4[0];
	in4[0] = s_box[in4[1]];
	in4[1] = s_box[in4[2]];
	in4[2] = s_box[in4[3]];
	in4[3] = s_box[t];
	// RCon (round constant) 1st byte XOR rcon
	in4[0] = in4[0] ^ rcon[i];
}

void SubWord(unsigned char* in4) {
	// SubWord substitutes with S - Box value
	in4[0] = s_box[in4[0]];
	in4[1] = s_box[in4[1]];
	in4[2] = s_box[in4[2]];
	in4[3] = s_box[in4[3]];
}

void KeyExpansion(unsigned char* inputKey, unsigned int Nk,
		unsigned char* expandedKey) {
	unsigned int Nr = (Nk > Nb) ? Nk + 6 : Nb + 6; // = 10, 12 or 14 rounds
	// Copy the inputKey at the beginning of expandedKey
	for (unsigned int i = 0; i < Nk * rows; i++) {
		expandedKey[i] = inputKey[i];
	}

	// Variables
	unsigned int byGen = Nk * rows;
	unsigned int rconIdx = 1;
	unsigned char temp[rows];

	// Generate expanded keys
	while (byGen < (Nr + 1) * stt_lng) {
		// Read previously generated last 4 bytes (last word)
		for (unsigned int i = 0; i < rows; i++) {
			temp[i] = expandedKey[byGen - rows + i];
		}
		// Perform KeyExpansionCore once for each 16 byte key
		if (byGen % (Nk * rows) == 0) {
			KeyExpansionCore(temp, rconIdx);
			rconIdx++;
		} else if ((Nk > 6) && (byGen % (Nk * rows) == (4 * rows))) {
			SubWord(temp);
		}
		// XOR temp with [bytesGenerated-16] and store in expandedKeys
		for (unsigned int i = 0; i < rows; i++) {
			expandedKey[byGen] = expandedKey[byGen - Nk * rows] ^ temp[i];
			byGen++;
		}
	}
}

int main() {
	unsigned int Nk = 4; // 4 or 6 or 8 [32-bit words] columns in cipher key
	unsigned int CipherKeyLenghth = Nk * rows; // bytes
	unsigned int Nr = max(Nb, Nk) + 6; // = 10, 12 or 14 rounds
	unsigned int ExtdCipherKeyLenghth = (Nr + 1) * stt_lng; // bytes in the expanded cipher key

	cout << "AES with Nb = " << Nb << " columns, Nk = " << Nk
			<< " (32-bit) words i.e. CipherKeyLenghth = " << CipherKeyLenghth
			<< " bytes (or " << CipherKeyLenghth * 8 << " bits), Nr = " << Nr
			<< " rounds" << endl << endl;

	// create a dummy test cipher key
	unsigned char key[CipherKeyLenghth_max];
	cout << "key = ";
	for (unsigned int i = 0; i < CipherKeyLenghth; i++) {
		key[i] = (unsigned char) i;
		printf("0x%X ", key[i]);
	}
	cout << endl << endl;

	// extend key
	unsigned char expandedKey[ExtdCipherKeyLenghth_max];
	KeyExpansion(key, Nk, expandedKey);
	cout << "expandedKey = ";
	for (unsigned int i = 0; i < ExtdCipherKeyLenghth; i++) {
		printf("0x%X ", expandedKey[i]);
	}
	cout << endl << endl;

	// create a test input data (plaintext) (ABCDEFGHIJKLMNOP)
	unsigned char plaintext[stt_lng] = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
			'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P' };
	cout << "plaintext = ";
	for (unsigned int i = 0; i < stt_lng; i++) {
		printf("%c ", plaintext[i]);
	}
	cout << " <=> ";
	for (unsigned int i = 0; i < stt_lng; i++) {
		printf("%X ", plaintext[i]);
	}
	cout << endl << endl;

	// encrypt
	unsigned char ciphertext[stt_lng];
	AES_Encrypt(plaintext, expandedKey, Nr, ciphertext);
	cout << "ciphertext = ";
	for (unsigned int i = 0; i < stt_lng; i++) {
		printf("%X ", ciphertext[i]);
	}
	cout << " <=> ";
	for (unsigned int i = 0; i < stt_lng; i++) {
		printf("%d ", ciphertext[i]);
	}
	cout << endl;

	// decrypt
	unsigned char decrypted_plaintext[stt_lng];
	AES_Decrypt(ciphertext, expandedKey, Nr, decrypted_plaintext);
	cout << "decrypted_plaintext = ";
	for (unsigned int i = 0; i < stt_lng; i++) {
		printf("%c ", decrypted_plaintext[i]);
	}
	cout << " <=> ";
	for (unsigned int i = 0; i < stt_lng; i++) {
		printf("%X ", decrypted_plaintext[i]);
	}
	cout << endl << endl;

	return 0;
}

#include "AESfunctions.h"
#include "AEStables.h"

void AES_Encrypt(unsigned char plaintext[stt_lng],
		unsigned char expandedKey[ExtdCipherKeyLenghth_max], unsigned int Nr,
		unsigned char ciphertext[stt_lng]);

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
}

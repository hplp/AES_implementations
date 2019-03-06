#include "AESfunctions.h"

void AES_Encrypt(unsigned char plaintext[stt_lng], unsigned short Nr, unsigned char ciphertext[stt_lng]);

void AES_Decrypt(unsigned char ciphertext[stt_lng], unsigned short Nr, unsigned char plaintext[stt_lng]);

void KeyExpansion(unsigned char* inputKey, unsigned short Nk, unsigned char* expandedKey);


int main()
{
	unsigned short NkVals[3] = {4, 6, 8};
	unsigned short Nk, CipherKeyLenghth, Nr, ExtdCipherKeyLenghth;

	// create a dummy test cipher key
	unsigned char key[CipherKeyLenghth_max];
	// extend key
	unsigned char expandedKey[ExtdCipherKeyLenghth_max];
	// create a test input data (plaintext) (ABCDEFGHIJKLMNOP)
	unsigned char plaintext[stt_lng] = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P' };
	// variable array for ciphertext
	unsigned char ciphertext[stt_lng];
	// variable array for decrypted plaintext
	unsigned char decrypted_plaintext[stt_lng];

	for (unsigned short test = 0; test < 512; test++) {

		// These variables allow to change the AES length
		// Nk = 4, 6 or 8 for AES 128, 192 or 256 respectively
		// Only set Nk and the rest will compute according to the AES specification
		Nk = NkVals[rand() % 3]; // 4 or 6 or 8 [32-bit words] columns in cipher key
		CipherKeyLenghth = Nk * rows; // bytes
		Nr = (Nk > Nb) ? Nk + 6 : Nb + 6; // = 10, 12 or 14 rounds
		ExtdCipherKeyLenghth = (Nr + 1) * stt_lng; // bytes in the expanded cipher key

		cout << "AES with Nb = " << Nb << " columns, Nk = " << Nk << " (32-bit) words i.e. CipherKeyLenghth = "
			<< CipherKeyLenghth << " bytes (or " << CipherKeyLenghth * 8 << " bits), Nr = " << Nr << " rounds" << endl << endl;


//		cout << "key = ";
//		for (unsigned short i = 0; i < CipherKeyLenghth; i++) {
//			key[i] = (unsigned char)i;
//			cout << "0x" << hex << (unsigned short)key[i] << " ";
//		} cout << endl << endl;


//		KeyExpansion(key, Nk, expandedKey);
//		cout << "expandedKey = ";
//		for (unsigned short i = 0; i < ExtdCipherKeyLenghth; i++) { cout << dec << (unsigned short)expandedKey[i] << " "; }
//		cout << "<=> ";
//		for (unsigned short i = 0; i < ExtdCipherKeyLenghth; i++) { cout << "0x" << hex << (unsigned short)expandedKey[i] << " "; }
//		cout << endl << endl;


//		cout << "plaintext = ";
//		for (unsigned short i = 0; i < stt_lng; i++) { cout << plaintext[i] << " "; }
//		cout << "<=> ";
//		for (unsigned short i = 0; i < stt_lng; i++) { cout << "0x" << hex << (unsigned short)plaintext[i] << " "; }
//		cout << endl << endl;


		// encrypt
		AES_Encrypt(plaintext, Nr, ciphertext);
		cout << "ciphertext = ";
		for (unsigned short i = 0; i < stt_lng; i++) { cout << dec << (unsigned short)ciphertext[i] << " "; }
		cout << "<=> ";
		for (unsigned short i = 0; i < stt_lng; i++) { cout << "0x" << hex << (unsigned short)ciphertext[i] << " "; }
		cout << endl << endl;


		// decrypt
		AES_Decrypt(ciphertext, Nr, decrypted_plaintext);
		cout << "decrypted_plaintext = ";
		for (unsigned short i = 0; i < stt_lng; i++) { cout << decrypted_plaintext[i] << " "; }
		cout << "<=> ";
		for (unsigned short i = 0; i < stt_lng; i++) { cout << "0x" << hex << (unsigned short)decrypted_plaintext[i] << " "; }
		cout << endl << endl;

		if (plaintext[0] == decrypted_plaintext[0])
			cout << "test " << dec << test << " passed" << endl << endl;
	}
    return 0;
}

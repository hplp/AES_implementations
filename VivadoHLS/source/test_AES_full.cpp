#include "AESfunctions.h"

void AES_Full_axis128(bool cipher_or_i_cipher, unsigned char Nr, aes_inout &aes_in, aes_inout &aes_out);

void KeyExpansion(unsigned char* inputKey, unsigned short Nk, unsigned char* expandedKey);

int main() {
	unsigned short NkVals[3] = { 4, 6, 8 };
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

	aes_inout aes_in;
	aes_inout aes_out;
	aes_inout aes_out_o;

	aes_in.data0 = plaintext[0];
	aes_in.data1 = plaintext[1];
	aes_in.data2 = plaintext[2];
	aes_in.data3 = plaintext[3];
	aes_in.data4 = plaintext[4];
	aes_in.data5 = plaintext[5];
	aes_in.data6 = plaintext[6];
	aes_in.data7 = plaintext[7];
	aes_in.data8 = plaintext[8];
	aes_in.data9 = plaintext[9];
	aes_in.data10 = plaintext[10];
	aes_in.data11 = plaintext[11];
	aes_in.data12 = plaintext[12];
	aes_in.data13 = plaintext[13];
	aes_in.data14 = plaintext[14];
	aes_in.data15 = plaintext[15];

	bool all_tests_pass = true;

	for (unsigned short test = 0; test < 100; test++) {

		// These variables allow to change the AES length
		// Nk = 4, 6 or 8 for AES 128, 192 or 256 respectively
		// Only set Nk and the rest will compute according to the AES specification
		Nk = NkVals[rand() % 3]; // 4 or 6 or 8 [32-bit words] columns in cipher key
		CipherKeyLenghth = Nk * rows; // bytes
		Nr = (Nk > Nb) ? Nk + 6 : Nb + 6; // = 10, 12 or 14 rounds
		ExtdCipherKeyLenghth = (Nr + 1) * stt_lng; // bytes in the expanded cipher key

		cout << "AES with Nb = " << (unsigned short) Nb << " columns, Nk = " << Nk << " (32-bit) words i.e. CipherKeyLenghth = " << CipherKeyLenghth << " bytes (or " << CipherKeyLenghth * 8 << " bits), Nr = " << Nr << " rounds" << endl << endl;

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
		AES_Full_axis128(true, (unsigned char) Nr, aes_in, aes_out);

		ciphertext[0] = aes_out.data0;
		ciphertext[1] = aes_out.data1;
		ciphertext[2] = aes_out.data2;
		ciphertext[3] = aes_out.data3;
		ciphertext[4] = aes_out.data4;
		ciphertext[5] = aes_out.data5;
		ciphertext[6] = aes_out.data6;
		ciphertext[7] = aes_out.data7;
		ciphertext[8] = aes_out.data8;
		ciphertext[9] = aes_out.data9;
		ciphertext[10] = aes_out.data10;
		ciphertext[11] = aes_out.data11;
		ciphertext[12] = aes_out.data12;
		ciphertext[13] = aes_out.data13;
		ciphertext[14] = aes_out.data14;
		ciphertext[15] = aes_out.data15;

		cout << "ciphertext = ";
		for (unsigned short i = 0; i < stt_lng; i++) {
			cout << dec << (unsigned short) ciphertext[i] << " ";
		}
		cout << "<=> ";
		for (unsigned short i = 0; i < stt_lng; i++) {
			cout << "0x" << hex << (unsigned short) ciphertext[i] << " ";
		}
		cout << endl << endl;

		// decrypt
		AES_Full_axis128(false, (unsigned char) Nr, aes_out, aes_out_o);

		decrypted_plaintext[0] = aes_out_o.data0;
		decrypted_plaintext[1] = aes_out_o.data1;
		decrypted_plaintext[2] = aes_out_o.data2;
		decrypted_plaintext[3] = aes_out_o.data3;
		decrypted_plaintext[4] = aes_out_o.data4;
		decrypted_plaintext[5] = aes_out_o.data5;
		decrypted_plaintext[6] = aes_out_o.data6;
		decrypted_plaintext[7] = aes_out_o.data7;
		decrypted_plaintext[8] = aes_out_o.data8;
		decrypted_plaintext[9] = aes_out_o.data9;
		decrypted_plaintext[10] = aes_out_o.data10;
		decrypted_plaintext[11] = aes_out_o.data11;
		decrypted_plaintext[12] = aes_out_o.data12;
		decrypted_plaintext[13] = aes_out_o.data13;
		decrypted_plaintext[14] = aes_out_o.data14;
		decrypted_plaintext[15] = aes_out_o.data15;

		cout << "decrypted_plaintext = ";
		for (unsigned short i = 0; i < stt_lng; i++) {
			cout << decrypted_plaintext[i] << " ";
		}
		cout << "<=> ";
		for (unsigned short i = 0; i < stt_lng; i++) {
			cout << "0x" << hex << (unsigned short) decrypted_plaintext[i] << " ";
		}
		cout << endl << endl;

		if (plaintext[0] == decrypted_plaintext[0])
			cout << "test " << dec << test << " passed" << endl << endl;
		else
			all_tests_pass = false;

	}
	if (all_tests_pass)
		cout << "all tests pass!" << endl << endl;
	else
		cout << "fail" << endl << endl;

	return 0;
}

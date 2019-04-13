#include "AESfunctions.h"
#include <stdlib.h>

void AES_Full_axis128(bool cipher_or_i_cipher, unsigned char Nr, aes_inout aes_in[AES_WORDS], aes_inout aes_out[AES_WORDS]);

char random_char() {
	unsigned short min_ascii = 65;
	unsigned short max_ascii = 90;
	return min_ascii + rand() % (max_ascii - min_ascii + 1);
}

int main() {
	unsigned short NkVals[3] = { 4, 6, 8 };
	unsigned short Nk, CipherKeyLenghth, Nr, ExtdCipherKeyLenghth;

	// create a test input data (plaintext words)
	aes_inout plaintext_words[AES_WORDS];
	for (unsigned short i = 0; i < AES_WORDS; i++) {
		for (unsigned short j = 0; j < stt_lng; j++) {
			plaintext_words[i].data[j] = random_char();
		}
		//cout << i << " " << hex << (unsigned short) plaintext_words[i].data15 << " ";
	} //cout << endl;

	bool all_tests_pass = true;
	for (unsigned short test = 0; test < 32; test++) {

		// These variables allow to change the AES length
		// Nk = 4, 6 or 8 for AES 128, 192 or 256 respectively
		// Only set Nk and the rest will compute according to the AES specification
		Nk = NkVals[rand() % 3]; // 4 or 6 or 8 [32-bit words] columns in cipher key
		CipherKeyLenghth = Nk * rows; // bytes
		Nr = (Nk > Nb) ? Nk + 6 : Nb + 6; // = 10, 12 or 14 rounds
		ExtdCipherKeyLenghth = (Nr + 1) * stt_lng; // bytes in the expanded cipher key

		cout << "AES with Nb = " << (unsigned short) Nb << " columns, Nk = " << Nk << " (32-bit) words i.e. CipherKeyLenghth = " << CipherKeyLenghth << " bytes (or " << CipherKeyLenghth * 8 << " bits), Nr = " << Nr << " rounds" << endl << endl;

		// variable array for ciphertext
		aes_inout ciphertext_words[AES_WORDS];

		AES_Full_axis128(true, (unsigned char) Nr, plaintext_words, ciphertext_words);

		printf("TL97_98_99: %d %d %d\n", ciphertext_words[AES_WORDS - 3].TLAST, ciphertext_words[AES_WORDS - 2].TLAST, ciphertext_words[AES_WORDS - 1].TLAST);

		// variable array for decrypted plaintext
		aes_inout plaintext_words_d[AES_WORDS];

		AES_Full_axis128(false, (unsigned char) Nr, ciphertext_words, plaintext_words_d);

		printf("TL97_98_99: %d %d %d\n", plaintext_words_d[AES_WORDS - 3].TLAST, plaintext_words_d[AES_WORDS - 2].TLAST, plaintext_words_d[AES_WORDS - 1].TLAST);

		// brief check if plaintext_words and plaintext_words_d match
		for (unsigned short i = 0; i < AES_WORDS; i++) {
			if (plaintext_words[i].data[0] != plaintext_words_d[i].data[0])
				all_tests_pass = false;
			if (plaintext_words[i].data[15] != plaintext_words_d[i].data[15])
				all_tests_pass = false;
		}
	}
	if (all_tests_pass)
		cout << "all tests pass!" << endl << endl;
	else
		cout << "fail" << endl << endl;

	return 0;
}

#include "platform.h"
#include "xbasic_types.h"
#include "xparameters.h" // Contains definitions for all peripherals

#include "xaes_full.h" // Contains AES Full macros and functions

#include <stdlib.h>
#include <stdbool.h>

// These are AES constants for AES 128, 192, 256
const unsigned short Nb = 4; // columns (can be changed to a larger number in the future)
const unsigned short rows = 4; // rows
const unsigned short stt_lng = 16; // = Nb * rows; // state length

// This will allocate (hardware and memory) resources to accommodate all AES
const unsigned short Nk_max = 8; // max [32-bit words] columns in cipher key
const unsigned short CipherKeyLenghth_max = 32; // = Nk_max * rows; // max bytes in key length
const unsigned short Nr_max = 14; // = (Nk_max > Nb) ? Nk_max + 6 : Nb + 6; // max number of rounds
const unsigned short ExtdCipherKeyLenghth_max = 240; // = (Nr_max + 1) * stt_lng; // max bytes in extended key length


int main() {
	init_platform();

	////////////////////////////////////////////////////////////////////////////////////////
	// HLS AES TEST

	// Initialize the AES Full module
	XAes_full do_Aes_full; // Create HLS AES pointer
	XAes_full_Config *do_Aes_full_cfg;
	do_Aes_full_cfg = XAes_full_LookupConfig(XPAR_AES_FULL_0_DEVICE_ID);

	if (!do_Aes_full_cfg) {
		xil_printf("Error loading configuration for do_Aes_full_cfg \n\r");
	}

	int status;
	status = XAes_full_CfgInitialize(&do_Aes_full, do_Aes_full_cfg);
	if (status != XST_SUCCESS) {
		xil_printf("Error initializing for do_Aes_full \n\r");
	}

	XAes_full_Initialize(&do_Aes_full, XPAR_AES_FULL_0_DEVICE_ID);

	unsigned short NkVals[3] = {4, 6, 8};
	unsigned short Nk, CipherKeyLenghth, Nr;//, ExtdCipherKeyLenghth;

	// create a dummy test cipher key
	//unsigned char key[CipherKeyLenghth_max];
	// extend key
	//unsigned char expandedKey[ExtdCipherKeyLenghth_max];

	// create a test input data (plaintext) (ABCDEFGHIJKLMNOP)
	unsigned char plaintext[stt_lng];
	xil_printf("plaintext = ");
	for (unsigned short i = 0; i < stt_lng; i++) {
		plaintext[i] = (unsigned char) i + 65;
		xil_printf("%c ", plaintext[i]);
	}
	xil_printf(" <=> ");
	for (unsigned short i = 0; i < stt_lng; i++) {
		xil_printf("%X ", plaintext[i]);
	}
	xil_printf("\n\r");

	// variable array for ciphertext
	unsigned char ciphertext[stt_lng];
	// variable array for decrypted plaintext
	unsigned char decrypted_plaintext[stt_lng];

	bool all_tests_pass = true;

	for (unsigned short test = 0; test < 512; test++) {

		// These variables allow to change the AES length, they have to be smaller than their equivalent max
		// Nk = 4, 6 or 8 for AES 128, 192 or 256 respectively
		// Only set Nk and the rest will compute according to the AES specification
		Nk = NkVals[rand() % 3];//Nk = 4; // 4 or 6 or 8 [32-bit words] columns in cipher key
		CipherKeyLenghth = Nk * rows; // bytes
		Nr = (Nk > Nb) ? Nk + 6 : Nb + 6; // = 10, 12 or 14 rounds
		//ExtdCipherKeyLenghth = (Nr + 1) * stt_lng; // bytes in the expanded cipher key

		// Print a description
		xil_printf(
				"AES with Nb = %d columns, Nk = %d (32-bit) words i.e. CipherKeyLenghth = %d  bytes (or %d bits), Nr = %d rounds \n\r",
				Nb, Nk, CipherKeyLenghth, CipherKeyLenghth * 8, Nr);

		/** Encrypt **/

		// Write AES Cipher inputs
		XAes_full_Set_cipher_or_i_cipher(&do_Aes_full, 1);
		XAes_full_Write_data_in_Bytes(&do_Aes_full, 0, plaintext, stt_lng); // int offset, char *data, int length
		XAes_full_Set_Nr(&do_Aes_full, Nr);

		// Start AES
		XAes_full_Start(&do_Aes_full);

		// Wait until it's done (optional here)
		while (!XAes_full_IsDone(&do_Aes_full))
			;

		// Read AES Cipher returned value
		XAes_full_Read_data_out_Bytes(&do_Aes_full, 0, ciphertext, stt_lng); // int offset, char *data, int length
		xil_printf("ciphertext = ");
		for (unsigned short i = 0; i < stt_lng; i++) {
			xil_printf("%d ", ciphertext[i]);
		}
		xil_printf(" <=> ");
		for (unsigned short i = 0; i < stt_lng; i++) {
			xil_printf("0x%x ", ciphertext[i]);
		}
		xil_printf("\n\r");

		/** Decrypt **/

		// Write AES Inverse Cipher inputs
		XAes_full_Set_cipher_or_i_cipher(&do_Aes_full, 0);
		XAes_full_Write_data_in_Bytes(&do_Aes_full, 0, ciphertext, stt_lng); // int offset, char *data, int length
		XAes_full_Set_Nr(&do_Aes_full, Nr);

		// Start AES
		XAes_full_Start(&do_Aes_full);

		// Wait until it's done (optional here)
		while (!XAes_full_IsDone(&do_Aes_full))
			;

		// Read AES Cipher returned value
		XAes_full_Read_data_out_Bytes(&do_Aes_full, 0, decrypted_plaintext, stt_lng); // int offset, char *data, int length
		xil_printf("decrypted_plaintext = ");
		for (unsigned short i = 0; i < stt_lng; i++) {
			xil_printf("%c ", decrypted_plaintext[i]);
		}
		xil_printf(" <=> ");
		for (unsigned short i = 0; i < stt_lng; i++) {
			xil_printf("0x%x ", decrypted_plaintext[i]);
		}
		xil_printf("\n\r");

		if (plaintext[0] == decrypted_plaintext[0])
			xil_printf("test %d passed \n\r", test);
		else
			all_tests_pass = false;

	}
	if (all_tests_pass)
		xil_printf("all tests pass!\n\r");
	else
		xil_printf("fail\n\r");

	cleanup_platform();
	return 0;
}

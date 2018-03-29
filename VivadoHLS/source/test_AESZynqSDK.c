#include "platform.h"
#include "xbasic_types.h"
#include "xparameters.h" // Contains definitions for all peripherals

#include "xaes_full.h" // Contains AES Full macros and functions

#include "AEStables.h"

// These are AES constants for AES 128, 192, 256
const unsigned short Nb = 4; // columns (can be changed to a larger number in the future)
const unsigned short rows = 4; // rows
const unsigned short stt_lng = 16; // = Nb * rows; // state length

// NK_max = 8 for AES 256
// This will allocate (hardware and memory) resources to accommodate all AES
const unsigned short Nk_max = 4; // max [32-bit words] columns in cipher key
const unsigned short CipherKeyLenghth_max = 16; // = Nk_max * rows; // max bytes in key length
const unsigned short Nr_max = 10; // = (Nk_max > Nb) ? Nk_max + 6 : Nb + 6; // max number of rounds
const unsigned short ExtdCipherKeyLenghth_max = 176; // = (Nr_max + 1) * stt_lng; // max bytes in extended key length

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

void KeyExpansion(unsigned char* inputKey, unsigned short Nk,
		unsigned char* expandedKey) {
	unsigned short Nr = (Nk > Nb) ? Nk + 6 : Nb + 6; // = 10, 12 or 14 rounds
	// Copy the inputKey at the beginning of expandedKey
	for (unsigned short i = 0; i < Nk * rows; i++) {
		expandedKey[i] = inputKey[i];
	}

	// Variables
	unsigned short byGen = Nk * rows;
	unsigned short rconIdx = 1;
	unsigned char temp[rows];

	// Generate expanded keys
	while (byGen < (Nr + 1) * stt_lng) {
		// Read previously generated last 4 bytes (last word)
		for (unsigned short i = 0; i < rows; i++) {
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
		for (unsigned short i = 0; i < rows; i++) {
			expandedKey[byGen] = expandedKey[byGen - Nk * rows] ^ temp[i];
			byGen++;
		}
	}
}

int main() {
	init_platform();

	////////////////////////////////////////////////////////////////////////////////////////
	// HLS AES TEST

	// These variables allow to change the AES length, they have to be smaller than their equivalent max
	// Nk = 4, 6 or 8 for AES 128, 192 or 256 respectively
	// Only set Nk and the rest will compute according to the AES specification
	unsigned short Nk = 4; // 4 or 6 or 8 [32-bit words] columns in cipher key
	unsigned short CipherKeyLenghth = Nk * rows; // bytes
	unsigned short Nr = (Nk > Nb) ? Nk + 6 : Nb + 6; // = 10, 12 or 14 rounds
	unsigned short ExtdCipherKeyLenghth = (Nr + 1) * stt_lng; // bytes in the expanded cipher key

	// Print a description
	xil_printf(
			"AES with Nb = %d columns, Nk = %d (32-bit) words i.e. CipherKeyLenghth = %d  bytes (or %d bits), Nr = %d rounds \n\r",
			Nb, Nk, CipherKeyLenghth, CipherKeyLenghth * 8, Nr);

	// Initialize the AES Full module
	XAes_full do_Aes_full; // Create HLS AES pointer
	XAes_full_Config *do_Aes_full_cfg;
	do_Aes_full_cfg = XAes_full_LookupConfig(
	XPAR_AES_FULL_0_DEVICE_ID);

	if (!do_Aes_full_cfg) {
		xil_printf("Error loading configuration for do_Aes_full_cfg \n\r");
	}

	int status;
	status = XAes_full_CfgInitialize(&do_Aes_full, do_Aes_full_cfg);
	if (status != XST_SUCCESS) {
		xil_printf("Error initializing for do_Aes_full \n\r");
	}

	XAes_full_Initialize(&do_Aes_full, XPAR_AES_FULL_0_DEVICE_ID);

	// create a dummy test cipher key
	unsigned char key[CipherKeyLenghth_max];
	xil_printf("key = ");
	for (unsigned short i = 0; i < CipherKeyLenghth; i++) {
		key[i] = (unsigned char) i;
		xil_printf("0x%X ", key[i]);
	}
	xil_printf("\n\r");

	// extend key
	unsigned char expandedKey[ExtdCipherKeyLenghth_max];
	KeyExpansion(key, Nk, expandedKey);
	xil_printf("expandedKey = ");
	for (unsigned short i = 0; i < ExtdCipherKeyLenghth; i++) {
		xil_printf("0x%X ", expandedKey[i]);
	}
	xil_printf("\n\r");

	// create a test input data (plaintext) (ABCDEFGHIJKLMNOP)
	unsigned char plaintext[stt_lng]; //{'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P'};
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

	// encrypt
	unsigned char ciphertext[stt_lng];

	// Write AES Cipher inputs
	XAes_full_Set_mode_cipher(&do_Aes_full, 1);
	XAes_full_Set_mode_inverse_cipher(&do_Aes_full, 0);
	XAes_full_Write_data_in_Bytes(&do_Aes_full, 0, plaintext, stt_lng); // int offset, int *data, int length
	XAes_full_Write_expandedKey_Bytes(&do_Aes_full, 0, expandedKey,
			ExtdCipherKeyLenghth_max);
	XAes_full_Set_Nr(&do_Aes_full, Nr);

	// Start AES
	XAes_full_Start(&do_Aes_full);
	xil_printf("Started AES \n\r");

	// Wait until it's done (optional here)
	while (!XAes_full_IsDone(&do_Aes_full))
		;

	// Read AES Cipher returned value
	XAes_full_Read_data_out_Bytes(&do_Aes_full, 0, ciphertext, stt_lng);
	xil_printf("ciphertext = ");
	for (unsigned short i = 0; i < stt_lng; i++) {
		xil_printf("%X ", ciphertext[i]);
	}
	xil_printf(" <=> ");
	for (unsigned short i = 0; i < stt_lng; i++) {
		xil_printf("%d ", ciphertext[i]);
	}
	xil_printf("\n\r");

	// decrypt
	unsigned char decrypted_plaintext[stt_lng];

	// TODO: Write AES Cipher inputs
	// TODO: Read AES Cipher returned value

	cleanup_platform();
	return 0;
}

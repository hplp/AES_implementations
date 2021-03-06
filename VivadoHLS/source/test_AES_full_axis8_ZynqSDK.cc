#include <stdio.h>
#include <unistd.h>
#include <xparameters.h>
#include "xaes_full_axis8.h"
#include "xaxidma.h"

// Aes_fill and axiDMA pointers and handlers
XAes_full_axis8 Aes_full_axis8;
XAes_full_axis8_Config *Aes_full_axis8_cfg;
XAxiDma axiDMA;
XAxiDma_Config *axiDMA_cfg;

// DMA addresses
#define MEM_BASE_ADDR 0x01000000
#define TX_BUFFER_BASE (MEM_BASE_ADDR+0x00100000)
#define RX_BUFFER_BASE (MEM_BASE_ADDR+0x00300000)

// These are AES constants for AES 128, 192, 256
const unsigned short Nb = 4; // columns (can be changed to a larger number in the future)
const unsigned short rows = 4; // rows
const unsigned short stt_lng = 16; // = Nb * rows; // state length

// This will allocate (hardware and memory) resources to accommodate all AES
const unsigned short Nk_max = 8; // max [32-bit words] columns in cipher key
const unsigned short CipherKeyLenghth_max = 32; // = Nk_max * rows; // max bytes in key length
const unsigned short Nr_max = 14; // = (Nk_max > Nb) ? Nk_max + 6 : Nb + 6; // max number of rounds
const unsigned short ExtdCipherKeyLenghth_max = 240; // = (Nr_max + 1) * stt_lng; // max bytes in extended key length

// variable array for plaintext
unsigned char plaintext[stt_lng] = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P' };
// variable array for ciphertext
unsigned char ciphertext[stt_lng]; // = { 111, 31, 36, 98, 56, 201, 250, 150, 163, 108, 78, 47, 89, 80, 133, 6 };
// variable array for decrypted plaintext
unsigned char decrypted_plaintext[stt_lng];

void initPeripherals() {
	printf("initializing AES_Full\n");
	Aes_full_axis8_cfg = XAes_full_axis8_LookupConfig(XPAR_AES_FULL_AXIS8_0_DEVICE_ID);
	if (Aes_full_axis8_cfg) {
		int status = XAes_full_axis8_CfgInitialize(&Aes_full_axis8, Aes_full_axis8_cfg);
		if (status != XST_SUCCESS)
			printf("Error initializing AES_Full core\n");
	}

	printf("initializing AxiDMA\n");
	axiDMA_cfg = XAxiDma_LookupConfig(XPAR_AXIDMA_0_DEVICE_ID);
	if (axiDMA_cfg) {
		int status = XAxiDma_CfgInitialize(&axiDMA, axiDMA_cfg);
		if (status != XST_SUCCESS)
			printf("Error initializing AxiDMA core\n");
	}

	// disable interrupts
	XAxiDma_IntrDisable(&axiDMA, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&axiDMA, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
}

int main() {
	// pointers to DMA TX/RX addresses
	unsigned char *m_dma_buffer_TX = (unsigned char*) TX_BUFFER_BASE;
	unsigned char *m_dma_buffer_RX = (unsigned char*) RX_BUFFER_BASE;

	initPeripherals();

	unsigned short NkVals[3] = { 4, 6, 8 };
	unsigned short Nk, CipherKeyLenghth, Nr; //, ExtdCipherKeyLenghth;

	printf("plaintext = ");
	for (unsigned short idx = 0; idx < stt_lng; idx++) {
		printf("%c ", plaintext[idx]);
	}
	printf("\n");

	bool all_tests_pass = true;

	for (unsigned short test = 0; test < 512; test++) {

		// These variables allow to change the AES length, they have to be smaller than their equivalent max
		// Nk = 4, 6 or 8 for AES 128, 192 or 256 respectively
		// Only set Nk and the rest will compute according to the AES specification
		Nk = NkVals[rand() % 3];		//Nk = 4; // 4 or 6 or 8 [32-bit words] columns in cipher key
		CipherKeyLenghth = Nk * rows; // bytes
		Nr = (Nk > Nb) ? Nk + 6 : Nb + 6; // = 10, 12 or 14 rounds
		//ExtdCipherKeyLenghth = (Nr + 1) * stt_lng; // bytes in the expanded cipher key

		// Print a description
		printf("AES with Nb = %d columns, Nk = %d (32-bit) words i.e. CipherKeyLenghth = %d  bytes (or %d bits), Nr = %d rounds \n\r", Nb, Nk, CipherKeyLenghth, CipherKeyLenghth * 8, Nr);

		/** Encrypt **/
		XAes_full_axis8_Set_cipher_or_i_cipher(&Aes_full_axis8, 1);
		XAes_full_axis8_Set_Nr(&Aes_full_axis8, Nr);
		XAes_full_axis8_Start(&Aes_full_axis8);

		Xil_DCacheFlushRange((u32) plaintext, (u32) stt_lng * sizeof(unsigned char));
		Xil_DCacheFlushRange((u32) m_dma_buffer_RX, (u32) stt_lng * sizeof(unsigned char));

		printf("Sending data to AES core\n");
		XAxiDma_SimpleTransfer(&axiDMA, (u32) plaintext, (u32) stt_lng * sizeof(unsigned char), XAXIDMA_DMA_TO_DEVICE);

		printf("Receive data from AES core\n");
		XAxiDma_SimpleTransfer(&axiDMA, (u32) m_dma_buffer_RX, (u32) stt_lng * sizeof(unsigned char), XAXIDMA_DEVICE_TO_DMA);
		while (XAxiDma_Busy(&axiDMA, XAXIDMA_DEVICE_TO_DMA))
			;

		Xil_DCacheInvalidateRange((u32) m_dma_buffer_RX, (u32) stt_lng * sizeof(unsigned char));

		while (!XAes_full_axis8_IsDone(&Aes_full_axis8))
			;
		printf("Encrypt complete\n");

		printf("ciphertext = ");
		for (unsigned short idx = 0; idx < stt_lng; idx++) {
			ciphertext[idx] = (unsigned char) m_dma_buffer_RX[idx];
			printf("%d ", ciphertext[idx]);
		}
		printf("\n");

		/** Decrypt **/
		XAes_full_axis8_Set_cipher_or_i_cipher(&Aes_full_axis8, 0);
		XAes_full_axis8_Set_Nr(&Aes_full_axis8, Nr);
		XAes_full_axis8_Start(&Aes_full_axis8);

		Xil_DCacheFlushRange((u32) ciphertext, (u32) stt_lng * sizeof(unsigned char));
		Xil_DCacheFlushRange((u32) m_dma_buffer_RX, (u32) stt_lng * sizeof(unsigned char));

		printf("Sending data to AES core\n");
		XAxiDma_SimpleTransfer(&axiDMA, (u32) ciphertext, (u32) stt_lng * sizeof(unsigned char), XAXIDMA_DMA_TO_DEVICE);

		printf("Receive data from AES core\n");
		XAxiDma_SimpleTransfer(&axiDMA, (u32) m_dma_buffer_RX, (u32) stt_lng * sizeof(unsigned char), XAXIDMA_DEVICE_TO_DMA);
		while (XAxiDma_Busy(&axiDMA, XAXIDMA_DEVICE_TO_DMA))
			;

		Xil_DCacheInvalidateRange((u32) m_dma_buffer_RX, (u32) stt_lng * sizeof(unsigned char));

		while (!XAes_full_axis8_IsDone(&Aes_full_axis8))
			;
		printf("Decrypt complete\n");

		printf("decrypted_plaintext = ");
		for (unsigned short idx = 0; idx < stt_lng; idx++) {
			decrypted_plaintext[idx] = (unsigned char) m_dma_buffer_RX[idx];
			printf("%c ", decrypted_plaintext[idx]);
		}
		printf("\n");

		if (plaintext[0] == decrypted_plaintext[0])
			printf("test %d passed \n\r", test);
		else
			all_tests_pass = false;

	}
	if (all_tests_pass)
		printf("all tests pass!\n\r");
	else
		printf("fail\n\r");

	return 0;
}

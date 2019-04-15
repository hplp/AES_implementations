#include <stdio.h>
#include <unistd.h>
#include <xparameters.h>
#include "xaes_full_axis128.h"
#include "xaxidma.h"

// Aes_fill and axiDMA pointers and handlers
XAes_full_axis128 Aes_full_axis128;
XAes_full_axis128_Config *Aes_full_axis128_cfg;
XAxiDma axiDMA;
XAxiDma_Config *axiDMA_cfg;

// DMA addresses
#define MEM_BASE_ADDR 0x01000000
#define TX_BUFFER_BASE (MEM_BASE_ADDR+0x00100000)
#define RX_BUFFER_BASE (MEM_BASE_ADDR+0x00300000)

// These are AES constants for AES 128, 192, 256
const unsigned char Nb = 4; // columns (could be changed to a larger number in the future)
const unsigned char rows = 4; // rows
const unsigned char stt_lng = Nb * rows; // state length

// This will allocate (hardware and memory) resources to accommodate all AES at the same time up to max
const unsigned char Nk_max = 8; // =(4, 6 or 8), max [32-bit words] columns in cipher key
const unsigned char CipherKeyLenghth_max = Nk_max * rows; // max bytes in key length
const unsigned char Nr_max = (Nk_max > Nb) ? Nk_max + 6 : Nb + 6; // max number of rounds
const unsigned char ExtdCipherKeyLenghth_max = (Nr_max + 1) * stt_lng; // max bytes in extended key length

typedef struct {
	unsigned char data0;
	unsigned char data1;
	unsigned char data2;
	unsigned char data3;
	unsigned char data4;
	unsigned char data5;
	unsigned char data6;
	unsigned char data7;
	unsigned char data8;
	unsigned char data9;
	unsigned char data10;
	unsigned char data11;
	unsigned char data12;
	unsigned char data13;
	unsigned char data14;
	unsigned char data15;
} aes_inout;

#define AES_WORDS 100
// create a test input data (plaintext words)
aes_inout plaintext_words[AES_WORDS];
// variable array for ciphertext
aes_inout ciphertext_words[AES_WORDS];
// variable array for decrypted plaintext
aes_inout plaintext_words_d[AES_WORDS];

void initPeripherals() {
	printf("initializing AES_Full_axis128\n");
	Aes_full_axis128_cfg = XAes_full_axis128_LookupConfig(XPAR_AES_FULL_AXIS128_0_DEVICE_ID);
	if (Aes_full_axis128_cfg) {
		int status = XAes_full_axis128_CfgInitialize(&Aes_full_axis128, Aes_full_axis128_cfg);
		if (status != XST_SUCCESS)
			printf("Error initializing AES_Full_axis128 core\n");
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

char random_char() {
	unsigned short min_ascii = 65;
	unsigned short max_ascii = 90;
	return min_ascii + rand() % (max_ascii - min_ascii + 1);
}

int main() {
	// pointers to DMA TX/RX addresses
	aes_inout *m_dma_buffer_TX = (aes_inout*) TX_BUFFER_BASE;
	aes_inout *m_dma_buffer_RX = (aes_inout*) RX_BUFFER_BASE;

	initPeripherals();

	unsigned short NkVals[3] = { 4, 6, 8 };
	unsigned short Nk, CipherKeyLenghth, Nr, ExtdCipherKeyLenghth;

	for (unsigned short i = 0; i < AES_WORDS; i++) {
		plaintext_words[i].data0 = random_char();
		plaintext_words[i].data1 = random_char();
		plaintext_words[i].data2 = random_char();
		plaintext_words[i].data3 = random_char();
		plaintext_words[i].data4 = random_char();
		plaintext_words[i].data5 = random_char();
		plaintext_words[i].data6 = random_char();
		plaintext_words[i].data7 = random_char();
		plaintext_words[i].data8 = random_char();
		plaintext_words[i].data9 = random_char();
		plaintext_words[i].data10 = random_char();
		plaintext_words[i].data11 = random_char();
		plaintext_words[i].data12 = random_char();
		plaintext_words[i].data13 = random_char();
		plaintext_words[i].data14 = random_char();
		plaintext_words[i].data15 = random_char();
	}

	bool all_tests_pass = true;
	for (unsigned short test = 0; test < 16; test++) {

		// These variables allow to change the AES length
		// Nk = 4, 6 or 8 for AES 128, 192 or 256 respectively
		// Only set Nk and the rest will compute according to the AES specification
		Nk = NkVals[rand() % 3]; // 4 or 6 or 8 [32-bit words] columns in cipher key
		CipherKeyLenghth = Nk * rows; // bytes
		Nr = (Nk > Nb) ? Nk + 6 : Nb + 6; // = 10, 12 or 14 rounds
		ExtdCipherKeyLenghth = (Nr + 1) * stt_lng; // bytes in the expanded cipher key

		printf("%d: AES with Nb = %d columns, Nk = %d (32-bit) words i.e. CipherKeyLenghth = %d bytes (or %d bits), Nr = %d rounds\n", test, Nb, Nk, CipherKeyLenghth, CipherKeyLenghth * 8, Nr);
		//printf("plaintext00=%d\n", plaintext_words[0].data0);

		/** Encrypt **/
		XAes_full_axis128_Set_cipher_or_i_cipher(&Aes_full_axis128, 1);
		XAes_full_axis128_Set_Nr(&Aes_full_axis128, Nr);
		XAes_full_axis128_Start(&Aes_full_axis128);

		Xil_DCacheFlushRange((u32) plaintext_words, AES_WORDS * sizeof(aes_inout));
		Xil_DCacheFlushRange((u32) m_dma_buffer_RX, AES_WORDS * sizeof(aes_inout));

		//printf("Sending data to IP core slave\n");
		XAxiDma_SimpleTransfer(&axiDMA, (u32) plaintext_words, AES_WORDS * sizeof(aes_inout), XAXIDMA_DMA_TO_DEVICE);

		//printf("Receive data from IP core\n");
		XAxiDma_SimpleTransfer(&axiDMA, (u32) m_dma_buffer_RX, AES_WORDS * sizeof(aes_inout), XAXIDMA_DEVICE_TO_DMA);
		while (XAxiDma_Busy(&axiDMA, XAXIDMA_DEVICE_TO_DMA))
			;
		//printf("Calculation complete\n");

		for (unsigned short i = 0; i < AES_WORDS; i++) {
			ciphertext_words[i] = m_dma_buffer_RX[i];
		}

		Xil_DCacheInvalidateRange((u32) m_dma_buffer_RX, AES_WORDS * sizeof(aes_inout));

		/** Decrypt **/
		XAes_full_axis128_Set_cipher_or_i_cipher(&Aes_full_axis128, 0);
		XAes_full_axis128_Set_Nr(&Aes_full_axis128, Nr);
		XAes_full_axis128_Start(&Aes_full_axis128);

		Xil_DCacheFlushRange((u32) ciphertext_words, AES_WORDS * sizeof(aes_inout));
		Xil_DCacheFlushRange((u32) m_dma_buffer_RX, AES_WORDS * sizeof(aes_inout));

		//printf("Sending data to IP core slave\n");
		XAxiDma_SimpleTransfer(&axiDMA, (u32) ciphertext_words, AES_WORDS * sizeof(aes_inout), XAXIDMA_DMA_TO_DEVICE);

		//printf("Receive data from IP core\n");
		XAxiDma_SimpleTransfer(&axiDMA, (u32) m_dma_buffer_RX, AES_WORDS * sizeof(aes_inout), XAXIDMA_DEVICE_TO_DMA);
		while (XAxiDma_Busy(&axiDMA, XAXIDMA_DEVICE_TO_DMA))
			;
		//printf("Calculation complete\n");

		for (unsigned short i = 0; i < AES_WORDS; i++) {
			plaintext_words_d[i] = m_dma_buffer_RX[i];
		}

		// brief check if plaintext_words and plaintext_words_d match
		for (unsigned short i = 0; i < AES_WORDS; i++) {
			if (plaintext_words[i].data15 != plaintext_words_d[i].data15)
				all_tests_pass = false;
		}

		Xil_DCacheInvalidateRange((u32) m_dma_buffer_RX, AES_WORDS * sizeof(aes_inout));
	}
	if (all_tests_pass)
		printf("all tests pass!\n");
	else
		printf("fail\n");

	printf("-- END --\n");
	return 0;
}
#include <iostream>
using namespace std;

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
	bool TLAST;
} aes_inout;

#define AES_WORDS 100

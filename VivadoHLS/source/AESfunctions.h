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
	unsigned char data[stt_lng];
	bool TLAST;
} aes_inout;

#define AES_WORDS 100

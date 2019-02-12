#include <iostream>
using namespace std;

// These are AES constants for AES 128, 192, 256
const unsigned int Nb = 4; // columns (could be changed to a larger number in the future)
const unsigned int rows = 4; // rows
const unsigned int stt_lng = Nb * rows; // state length

// This will allocate (memory) resources to accommodate all AES
const unsigned int Nk_max = 8; // =(4, 6 or 8), max [32-bit words] columns in cipher key
const unsigned int CipherKeyLenghth_max = Nk_max * rows; // max bytes in key length
const unsigned int Nr_max = (Nk_max > Nb) ? Nk_max + 6 : Nb + 6; // max number of rounds
const unsigned int ExtdCipherKeyLenghth_max = (Nr_max + 1) * stt_lng; // max bytes in extended key length

void KeyExpansion(unsigned char*, unsigned int, unsigned char*);
void AES_Encrypt(unsigned char*, unsigned char*, unsigned int, unsigned char*);
void AES_Decrypt(unsigned char*, unsigned char*, unsigned int, unsigned char*);
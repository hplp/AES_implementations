#include "stdafx.h"
#include "AESfunctions.h"

int main()
{
    unsigned int Nk = 4; // 4 or 6 or 8 [32-bit words] columns in cipher key
    unsigned int CipherKeyLenghth = Nk * rows; // bytes
    unsigned int Nr = (Nk > Nb) ? Nk + 6 : Nb + 6; // = 10, 12 or 14 rounds
    unsigned int ExtdCipherKeyLenghth = (Nr + 1) * stt_lng; // bytes in the expanded cipher key

    cout << "AES with Nb = " << Nb << " columns, Nk = " << Nk << " (32-bit) words i.e. CipherKeyLenghth = "
        << CipherKeyLenghth << " bytes (or " << CipherKeyLenghth * 8 << " bits), Nr = " << Nr << " rounds" << endl << endl;


    // create a dummy test cipher key
    unsigned char key[CipherKeyLenghth_max];
    cout << "key = ";
    for (unsigned int i = 0; i < CipherKeyLenghth; i++) {
        key[i] = (unsigned char)i;
        printf("0x%X ", key[i]);
    } cout << endl << endl;


    // extend key
    unsigned char expandedKey[ExtdCipherKeyLenghth_max];
    KeyExpansion(key, Nk, expandedKey);
    cout << "expandedKey = ";
    for (unsigned int i = 0; i < ExtdCipherKeyLenghth; i++) { printf("0x%X ", expandedKey[i]); }
    cout << endl << endl;


    // create a test input data (plaintext) (ABCDEFGHIJKLMNOP)
    unsigned char plaintext[stt_lng] = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P' };
    cout << "plaintext = ";
    for (unsigned int i = 0; i < stt_lng; i++) { printf("%c ", plaintext[i]); }
    cout << " <=> ";
    for (unsigned int i = 0; i < stt_lng; i++) { printf("%X ", plaintext[i]); }
    cout << endl << endl;


    // encrypt
    unsigned char ciphertext[stt_lng];
    AES_Encrypt(plaintext, expandedKey, Nr, ciphertext);
    cout << "ciphertext = ";
    for (unsigned int i = 0; i < stt_lng; i++) { printf("%X ", ciphertext[i]); }
    cout << " <=> ";
    for (unsigned int i = 0; i < stt_lng; i++) { printf("%d ", ciphertext[i]); }
    cout << endl;


    // decrypt
    unsigned char decrypted_plaintext[stt_lng];
    AES_Decrypt(ciphertext, expandedKey, Nr, decrypted_plaintext);
    cout << "decrypted_plaintext = ";
    for (unsigned int i = 0; i < stt_lng; i++) { printf("%c ", decrypted_plaintext[i]); }
    cout << " <=> ";
    for (unsigned int i = 0; i < stt_lng; i++) { printf("%X ", decrypted_plaintext[i]); }
    cout << endl << endl;

    return 0;
}


/*

Scratch area:

char key16[16] =
{
1,  2,  3,  4,
5,  6,  7,  8,
9, 10, 11, 12,
13, 14, 15, 16
};
char key24[24] =
{
1,  2,  3,  4,  5,  6,
7,  8,  9, 10, 11, 12,
13, 14, 15, 16, 17, 18,
19, 20, 21, 22, 23, 24
};
char key32[32] =
{
1,  2,  3,  4,  5,  6,  7,  8,
9, 10, 11, 12, 13, 14, 15, 16,
17, 18, 19, 20, 21, 22, 23, 24,
25, 26, 27, 28, 29, 30, 31, 32
};
char plaintext[16] = { 'A','B','C','D','e','f','g','h','I','J','K','L','m','n','o','p' };

// A.1 Expansion of a 128-bit Cipher Key
unsigned char key[CipherKeyLenghth_max] =
{
    0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c
};

// A.2 Expansion of a 192-bit Cipher Key
unsigned char key[CipherKeyLenghth_max] =
{
    0x8e, 0x73, 0xb0, 0xf7, 0xda, 0x0e, 0x64, 0x52, 0xc8, 0x10, 0xf3, 0x2b,
    0x80, 0x90, 0x79, 0xe5, 0x62, 0xf8, 0xea, 0xd2, 0x52, 0x2c, 0x6b, 0x7b
};

// A.3 Expansion of a 256-bit Cipher Key
unsigned char key[CipherKeyLenghth_max] =
{
    0x60, 0x3d, 0xeb, 0x10, 0x15, 0xca, 0x71, 0xbe,
    0x2b, 0x73, 0xae, 0xf0, 0x85, 0x7d, 0x77, 0x81,
    0x1f, 0x35, 0x2c, 0x07, 0x3b, 0x61, 0x08, 0xd7,
    0x2d, 0x98, 0x10, 0xa3, 0x09, 0x14, 0xdf, 0xf4
};

// Appendix B – Cipher Example
unsigned char plaintext[stt_lng] = { 0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2, 0xe0, 0x37, 0x07, 0x34 };

// C.1 AES-128 (Nk=4, Nr=10)
// C.2 AES-192 (Nk=6, Nr=12)
// C.3 AES-256 (Nk=8, Nr=14)
unsigned char plaintext[stt_lng] = { 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff };

*/
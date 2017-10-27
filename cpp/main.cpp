#include "stdafx.h"
#include "AESfunctions.h"

int main()
{
    unsigned int Nk = 8; // 4 or 6 or 8 [32-bit words] columns in cipher key
    unsigned int CipherKeyLenghth = Nk * rows; // bytes
    unsigned int Nr = max(Nb, Nk) + 6; // = 10, 12 or 14 rounds

    cout << "AES with Nb = " << Nb << " columns, Nk = " << Nk << " (32-bit) words i.e. CipherKeyLenghth = "
        << CipherKeyLenghth << " bytes (or " << CipherKeyLenghth * 8 << " bits), Nr = " << Nr << " rounds" << endl << endl;


    // create a dummy test cipher key
    unsigned char key[CipherKeyLenghth_max];
    cout << "key = ";
    for (unsigned int i = 0; i < CipherKeyLenghth; i++) {
        key[i] = (unsigned char)i;
        printf("%X ", key[i]);
    } cout << endl << endl;


    // extend key
    unsigned char expandedKey[ExtdCipherKeyLenghth_max];
    KeyExpansion(key, Nk, Nr, expandedKey);
    cout << "expandedKey = ";
    for (unsigned int i = 0; i < (Nr + 1) * stt_lng; i++) { printf("%X ", expandedKey[i]); }
    cout << endl << endl;


    // create a test input data (plaintext) (ABCDEFGHIJKLMNOP)
    unsigned char plaintext[16] = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P' };
    cout << "plaintext = ";
    for (unsigned int i = 0; i < stt_lng; i++) { printf("%c ", plaintext[i]); }
    cout << " <=> ";
    for (unsigned int i = 0; i < stt_lng; i++) { printf("%X ", plaintext[i]); }
    cout << endl << endl;

    // encrypt
    unsigned char ciphertext[16];
    AES_Encrypt(plaintext, expandedKey, Nr, ciphertext);
    cout << "ciphertext = ";
    for (unsigned int i = 0; i < 16; i++) { printf("%x ", ciphertext[i]); }
    cout << endl;

    // decrypt
    unsigned char decrypted_plaintext[16];
    AES_Decrypt(ciphertext, expandedKey, Nr, decrypted_plaintext);
    cout << "decrypted_plaintext = ";
    for (unsigned int i = 0; i < stt_lng; i++) { printf("%c ", decrypted_plaintext[i]); }
    cout << " <=> ";
    for (unsigned int i = 0; i < stt_lng; i++) { printf("%x ", decrypted_plaintext[i]); }
    cout << endl;

    cout << endl;
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

*/
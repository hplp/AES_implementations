#include "stdafx.h"
#include <iostream>
#include <algorithm>

using namespace std;

#include "AESfunctions.h"

int main()
{
    int Nb = 4; // columns
    int Nk = 4; // 4 or 6 or 8 [32-bit words] in cipher key
    int rows = 4;
    int CipherKeyLenghth = Nk * rows; // bytes
    int Nr = max(Nb, Nk) + 6; // = 10, 12 or 14 rounds

    cout << "AES with Nb = " << Nb << " columns, Nk = " << Nk << " (32-bit) words i.e. CipherKeyLenghth = " << CipherKeyLenghth << " bytes (or " << Nk * 32 << " bits), Nr = " << Nr << " rounds" << endl << endl;

    // create a dummy test cipher key
    unsigned char* key = new unsigned char[CipherKeyLenghth];
    cout << "key = ";
    for (int i = 0; i < CipherKeyLenghth; i++) {
        key[i] = (unsigned char)i;
        printf("%X ", key[i]);
    } cout << endl << endl;

    // extend key
    unsigned char* expandedKey = new unsigned char[rows * Nb * (Nr + 1)];
    KeyExpansion(key, expandedKey);
    cout << "expandedKey = ";
    for (int i = 0; i < rows * Nb * (Nr + 1); i++) { printf("%X ", expandedKey[i]); }
    cout << endl << endl;

    // input (ABCDEFGHIJKLMNOP)
    unsigned char plaintext[16] = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', };
    cout << "plaintext = ";
    for (int i = 0; i < 16; i++) { printf("%c ", plaintext[i]); }
    cout << " <=> ";
    for (int i = 0; i < 16; i++) { printf("%X ", plaintext[i]); }
    cout << endl << endl;

    // encrypt
    unsigned char ciphertext[16];
    AES_Encrypt(plaintext, expandedKey, ciphertext);
    cout << "ciphertext = ";
    for (int i = 0; i < 16; i++) { printf("%x ", ciphertext[i]); }
    cout << endl;

    delete[] key;
    delete[] expandedKey;
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
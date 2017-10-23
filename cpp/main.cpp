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

    cout << "AES with Nb = " << Nb << " columns, Nk = " << Nk << " (32-bit) words i.e. CipherKeyLenghth = " << CipherKeyLenghth << " bytes (or " << Nk * 32 << " bits), Nr = " << Nr << " rounds" << endl;

    // create a dummy test cipher key
    unsigned char* key = new unsigned char[Nk * 4];
    cout << "key = [";
    for (int i = 0; i < CipherKeyLenghth; i++) {
        key[i] = (unsigned char)i;
        cout << (int)key[i] << " ";
    } cout << "]" << endl;

    // input
    unsigned char plaintext[16] = { 'H', 'e', 'l', 'l', 'o', ',', ' ', 'w', 'o', 'r', 'l', 'd', '!', '!', '!', '\0', };
    cout << "input = " << plaintext << endl;

    // extend key
    unsigned char* expandedKey = new unsigned char[rows * Nb * (Nr + 1)];
    KeyExpansion(key, expandedKey);

    AES_Encrypt(plaintext, expandedKey);

    delete[] key;
    cout << endl;
    return 0;
}
/*
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

#include "stdafx.h"
#include "AESfunctions.h"
#include "AEStables.h"

int increment(int a) {
    return a + 1;
}

void KeyExpansion(unsigned char* key) {}

void SubBytes(unsigned char* state)
{
    for (int i = 0; i < 16; i++) { state[i] = s_box[state[i]]; }
}
void InvSubBytes(unsigned char* state)
{
    for (int i = 0; i < 16; i++) { state[i] = inverted_s_box[state[i]]; }
}

void ShiftRows(unsigned char* state)
{
    unsigned char tmp_state[16];
    tmp_state[0] = state[0];
    tmp_state[1] = state[5];
    tmp_state[2] = state[10];
    tmp_state[3] = state[15];

    tmp_state[4] = state[4];
    tmp_state[5] = state[9];
    tmp_state[6] = state[14];
    tmp_state[7] = state[3];

    tmp_state[8] = state[8];
    tmp_state[9] = state[13];
    tmp_state[10] = state[2];
    tmp_state[11] = state[7];

    tmp_state[12] = state[12];
    tmp_state[13] = state[1];
    tmp_state[14] = state[6];
    tmp_state[15] = state[11];
    for (int i = 0; i < 16; i++) { state[i] = tmp_state[i]; }
}
void InvShiftRows(unsigned char* state)
{
    unsigned char tmp_state[16];
    tmp_state[0] = state[0];
    tmp_state[1] = state[13];
    tmp_state[2] = state[10];
    tmp_state[3] = state[7];

    tmp_state[4] = state[4];
    tmp_state[5] = state[1];
    tmp_state[6] = state[14];
    tmp_state[7] = state[11];

    tmp_state[8] = state[8];
    tmp_state[9] = state[5];
    tmp_state[10] = state[2];
    tmp_state[11] = state[15];

    tmp_state[12] = state[12];
    tmp_state[13] = state[9];
    tmp_state[14] = state[6];
    tmp_state[15] = state[3];
    for (int i = 0; i < 16; i++) { state[i] = tmp_state[i]; }
}

void MixColumns(unsigned char* state) {}

void AddRoundKey(unsigned char* state, unsigned char* roundKey)
{
    for (int i = 0; i < 16; i++) { state[i] ^= roundKey[i]; }
}

// Cipher
void AES_Encrypt(unsigned char* plaintext, unsigned char* expandedKey)
{
    // copy plaintext into state
    unsigned char state[16];
    for (int i = 0; i < 16; i++) { state[i] = plaintext[i]; }

    int rounds = 1;
    AddRoundKey(state, expandedKey);

    for (int i = 0; i < rounds; i++)
    {
        SubBytes(state);
        ShiftRows(state);
        if (i != (rounds - 1)) {
            MixColumns(state);
        }
        AddRoundKey(state, expandedKey);

    }
}
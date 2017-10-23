#include "stdafx.h"
#include "AESfunctions.h"
#include "AEStables.h"

void KeyExpansionCore(unsigned char* in4, unsigned char i)
{
    // RotWord rotates left
    unsigned char t = in4[0];
    in4[0] = in4[1];
    in4[1] = in4[2];
    in4[2] = in4[3];
    in4[3] = t;
    unsigned int* q = (unsigned int*)in4;
    *q = (*q >> 8) | ((*q & 0xff) << 24);
    // SubWord substitutes with S - Box value
    in4[0] = s_box[in4[0]];
    in4[1] = s_box[in4[1]];
    in4[2] = s_box[in4[2]];
    in4[3] = s_box[in4[3]];
    // RCon (round constant) 1st byte XOR rcon
    in4[0] = in4[0] ^ rcon[i];
}

void KeyExpansion(unsigned char* key, unsigned char* expandedKey)
{

    expandedKey = key;
}


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


void MixColumns(unsigned char* state) {
    unsigned char tmp_state[16];
    tmp_state[0] = mul02[state[0]] ^ mul03[state[1]] ^ state[2] ^ state[3];
    tmp_state[1] = state[0] ^ mul02[state[1]] ^ mul03[state[2]] ^ state[3];
    tmp_state[2] = state[0] ^ state[1] ^ mul02[state[2]] ^ mul03[state[3]];
    tmp_state[3] = mul03[state[0]] ^ state[1] ^ state[2] ^ mul02[state[3]];

    tmp_state[4] = mul02[state[4]] ^ mul03[state[5]] ^ state[6] ^ state[7];
    tmp_state[5] = state[4] ^ mul02[state[5]] ^ mul03[state[6]] ^ state[7];
    tmp_state[6] = state[4] ^ state[5] ^ mul02[state[6]] ^ mul03[state[7]];
    tmp_state[7] = mul03[state[4]] ^ state[5] ^ state[6] ^ mul02[state[7]];

    tmp_state[8] = mul02[state[8]] ^ mul03[state[9]] ^ state[10] ^ state[11];
    tmp_state[9] = state[8] ^ mul02[state[9]] ^ mul03[state[10]] ^ state[11];
    tmp_state[10] = state[8] ^ state[9] ^ mul02[state[10]] ^ mul03[state[11]];
    tmp_state[11] = mul03[state[8]] ^ state[9] ^ state[10] ^ mul02[state[11]];

    tmp_state[12] = mul02[state[12]] ^ mul03[state[13]] ^ state[14] ^ state[15];
    tmp_state[13] = state[12] ^ mul02[state[13]] ^ mul03[state[14]] ^ state[15];
    tmp_state[14] = state[12] ^ state[13] ^ mul02[state[14]] ^ mul03[state[15]];
    tmp_state[15] = mul03[state[12]] ^ state[13] ^ state[14] ^ mul02[state[15]];
    for (int i = 0; i < 16; i++) { state[i] = tmp_state[i]; }
    /*
    tmp[0] = (unsigned char)(mul2[state[0]] ^ mul3[state[1]] ^ state[2] ^ state[3]);
    tmp[1] = (unsigned char)(state[0] ^ mul2[state[1]] ^ mul3[state[2]] ^ state[3]);
    tmp[2] = (unsigned char)(state[0] ^ state[1] ^ mul2[state[2]] ^ mul3[state[3]]);
    tmp[3] = (unsigned char)(mul3[state[0]] ^ state[1] ^ state[2] ^ mul2[state[3]]);

    tmp[4] = (unsigned char)(mul2[state[4]] ^ mul3[state[5]] ^ state[6] ^ state[7]);
    tmp[5] = (unsigned char)(state[4] ^ mul2[state[5]] ^ mul3[state[6]] ^ state[7]);
    tmp[6] = (unsigned char)(state[4] ^ state[5] ^ mul2[state[6]] ^ mul3[state[7]]);
    tmp[7] = (unsigned char)(mul3[state[4]] ^ state[5] ^ state[6] ^ mul2[state[7]]);

    tmp[8] = (unsigned char)(mul2[state[8]] ^ mul3[state[9]] ^ state[10] ^ state[11]);
    tmp[9] = (unsigned char)(state[8] ^ mul2[state[9]] ^ mul3[state[10]] ^ state[11]);
    tmp[10] = (unsigned char)(state[8] ^ state[9] ^ mul2[state[10]] ^ mul3[state[11]]);
    tmp[11] = (unsigned char)(mul3[state[8]] ^ state[9] ^ state[10] ^ mul2[state[11]]);

    tmp[12] = (unsigned char)(mul2[state[12]] ^ mul3[state[13]] ^ state[14] ^ state[15]);
    tmp[13] = (unsigned char)(state[12] ^ mul2[state[13]] ^ mul3[state[14]] ^ state[15]);
    tmp[14] = (unsigned char)(state[12] ^ state[13] ^ mul2[state[14]] ^ mul3[state[15]]);
    tmp[15] = (unsigned char)(mul3[state[12]] ^ state[13] ^ state[14] ^ mul2[state[15]]);
    */
}

void InvMixColumns(unsigned char* state) {
    unsigned char tmp_state[16];
    tmp_state[0] = mul14[state[0]] ^ mul11[state[1]] ^ mul13[state[2]] ^ mul09[state[3]];
    tmp_state[1] = mul09[state[0]] ^ mul14[state[1]] ^ mul11[state[2]] ^ mul13[state[3]];
    tmp_state[2] = mul13[state[0]] ^ mul09[state[1]] ^ mul14[state[2]] ^ mul11[state[3]];
    tmp_state[3] = mul11[state[0]] ^ mul13[state[1]] ^ mul09[state[2]] ^ mul14[state[3]];

    tmp_state[4] = mul14[state[4]] ^ mul11[state[5]] ^ mul13[state[6]] ^ mul09[state[7]];
    tmp_state[5] = mul09[state[4]] ^ mul14[state[5]] ^ mul11[state[6]] ^ mul13[state[7]];
    tmp_state[6] = mul13[state[4]] ^ mul09[state[5]] ^ mul14[state[6]] ^ mul11[state[7]];
    tmp_state[7] = mul11[state[4]] ^ mul13[state[5]] ^ mul09[state[6]] ^ mul14[state[7]];

    tmp_state[8] = mul14[state[8]] ^ mul11[state[9]] ^ mul13[state[10]] ^ mul09[state[11]];
    tmp_state[9] = mul09[state[8]] ^ mul14[state[9]] ^ mul11[state[10]] ^ mul13[state[11]];
    tmp_state[10] = mul13[state[8]] ^ mul09[state[9]] ^ mul14[state[10]] ^ mul11[state[11]];
    tmp_state[11] = mul11[state[8]] ^ mul13[state[9]] ^ mul09[state[10]] ^ mul14[state[11]];

    tmp_state[12] = mul14[state[12]] ^ mul11[state[13]] ^ mul13[state[14]] ^ mul09[state[15]];
    tmp_state[13] = mul09[state[12]] ^ mul14[state[13]] ^ mul11[state[14]] ^ mul13[state[15]];
    tmp_state[14] = mul13[state[12]] ^ mul09[state[13]] ^ mul14[state[14]] ^ mul11[state[15]];
    tmp_state[15] = mul11[state[12]] ^ mul13[state[13]] ^ mul09[state[14]] ^ mul14[state[15]];
    for (int i = 0; i < 16; i++) { state[i] = tmp_state[i]; }
}


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


// Inverse Cipher
void AES_Decrypt(unsigned char* plaintext, unsigned char* expandedKey)
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
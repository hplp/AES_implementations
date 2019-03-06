// https://en.wikipedia.org/wiki/Advanced_Encryption_Standard

#include "AESfunctions.h"
#include "AEStables.h"
#include "AESkeys.h"

void KeyExpansionCore(unsigned char* in4, unsigned short i) {
	// RotWord rotates left
	// SubWord substitutes with S - Box value
	unsigned char t = in4[0];
	in4[0] = s_box[in4[1]];
	in4[1] = s_box[in4[2]];
	in4[2] = s_box[in4[3]];
	in4[3] = s_box[t];
	// RCon (round constant) 1st byte XOR rcon
	in4[0] = in4[0] ^ rcon[i];
}

void SubWord(unsigned char* in4) {
	// SubWord substitutes with S - Box value
	in4[0] = s_box[in4[0]];
	in4[1] = s_box[in4[1]];
	in4[2] = s_box[in4[2]];
	in4[3] = s_box[in4[3]];
}

void KeyExpansion(unsigned char* inputKey, unsigned short Nk,
		unsigned char* expandedKey) {
	unsigned short Nr = (Nk > Nb) ? Nk + 6 : Nb + 6; // = 10, 12 or 14 rounds
	// Copy the inputKey at the beginning of expandedKey
	for (unsigned short i = 0; i < Nk * rows; i++) {
		expandedKey[i] = inputKey[i];
	}

	// Variables
	unsigned short byGen = Nk * rows;
	unsigned short rconIdx = 1;
	unsigned char temp[rows];

	// Generate expanded keys
	while (byGen < (Nr + 1) * stt_lng) {
		// Read previously generated last 4 bytes (last word)
		for (unsigned short i = 0; i < rows; i++) {
			temp[i] = expandedKey[byGen - rows + i];
		}
		// Perform KeyExpansionCore once for each 16 byte key
		if (byGen % (Nk * rows) == 0) {
			KeyExpansionCore(temp, rconIdx);
			rconIdx++;
		} else if ((Nk > 6) && (byGen % (Nk * rows) == (4 * rows))) {
			SubWord(temp);
		}
		// XOR temp with [bytesGenerated-16] and store in expandedKeys
		for (unsigned short i = 0; i < rows; i++) {
			expandedKey[byGen] = expandedKey[byGen - Nk * rows] ^ temp[i];
			byGen++;
		}
	}
}

void SubBytes(unsigned char* state) {
#pragma HLS inline off
	L_SB: for (unsigned short i = 0; i < stt_lng; i++) {
#pragma HLS unroll
		state[i] = s_box[state[i]];
	}
}

void InvSubBytes(unsigned char* state) {
#pragma HLS inline off
	L_ISB: for (unsigned short i = 0; i < stt_lng; i++) {
#pragma HLS unroll
		state[i] = inverted_s_box[state[i]];
	}
}

void ShiftRows(unsigned char* state) {
#pragma HLS inline off
	unsigned char tmp_state[stt_lng];
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
	L_SR: for (unsigned short i = 0; i < stt_lng; i++) {
#pragma HLS unroll
		state[i] = tmp_state[i];
	}
}

void InvShiftRows(unsigned char* state) {
#pragma HLS inline off
	unsigned char tmp_state[stt_lng];
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
	L_ISR: for (unsigned short i = 0; i < stt_lng; i++) {
#pragma HLS unroll
		state[i] = tmp_state[i];
	}
}

void MixColumns(unsigned char* state) {
#pragma HLS inline off
	unsigned char tmp_state[stt_lng];
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
	L_MC: for (unsigned short i = 0; i < stt_lng; i++) {
#pragma HLS unroll
		state[i] = tmp_state[i];
	}
}

void InvMixColumns(unsigned char* state) {
#pragma HLS inline off
	unsigned char tmp_state[stt_lng];
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
	L_IMC: for (unsigned short i = 0; i < stt_lng; i++) {
#pragma HLS unroll
		state[i] = tmp_state[i];
	}
}

void AddRoundKey(unsigned char* state, unsigned short Nr, unsigned short round) {
#pragma HLS inline off
#pragma HLS array_map variable=expandedKey128 instance=expandedKey horizontal
#pragma HLS array_map variable=expandedKey192 instance=expandedKey horizontal
#pragma HLS array_map variable=expandedKey256 instance=expandedKey horizontal
	L_ARK: for (unsigned short i = 0; i < stt_lng; i++) {
#pragma HLS unroll
		switch (Nr) {
		case 10:
			state[i] ^= expandedKey128[round][i];
			break;
		case 12:
			state[i] ^= expandedKey192[round][i];
			break;
		case 14:
			state[i] ^= expandedKey256[round][i];
			break;
		}
	}
}

// Cipher
void AES_Encrypt(unsigned char plaintext[stt_lng], unsigned short Nr, unsigned char ciphertext[stt_lng]) {
#pragma HLS INTERFACe s_axilite          port=return     bundle=Cipher
#pragma HLS INTERFACE s_axilite          port=Nr         bundle=Cipher
#pragma HLS INTERFACE s_axilite depth=16 port=plaintext  bundle=Cipher
#pragma HLS INTERFACE s_axilite depth=16 port=ciphertext bundle=Cipher

#pragma HLS inline region // will inline the functions unless inlining is off
#pragma HLS pipeline // reduces II

//#pragma HLS allocation instances=AddRoundKey limit=1 function // ensure only one instance of AddRoundKey

// group cipher tables together
#pragma HLS array_map variable=s_box          instance=cipher      horizontal
#pragma HLS array_map variable=mul02          instance=cipher      horizontal
#pragma HLS array_map variable=mul03          instance=cipher      horizontal

	// Copy plaintext into state
	unsigned char state[stt_lng];
	L_copy_i: for (unsigned short i = 0; i < stt_lng; i++) {
#pragma HLS unroll
		state[i] = plaintext[i];
	}

	AddRoundKey(state, Nr, 0);

	L_rounds: for (unsigned short j = 0; j < Nr_max; j++) {
#pragma HLS unroll
		SubBytes(state);
		ShiftRows(state);
		if (j != (Nr - 1))
			MixColumns(state);
		AddRoundKey(state, Nr, j + 1);
		if (j == (Nr - 1))
			break; // early exit
	}

	// Copy state to ciphertext
	L_copy_o: for (unsigned short i = 0; i < stt_lng; i++) {
#pragma HLS unroll
		ciphertext[i] = state[i];
	}
}

// Inverse Cipher
void AES_Decrypt(unsigned char ciphertext[stt_lng], unsigned short Nr, unsigned char plaintext[stt_lng]) {
#pragma HLS INTERFACe s_axilite          port=return     bundle=Decipher
#pragma HLS INTERFACE s_axilite          port=Nr         bundle=Decipher
#pragma HLS INTERFACE s_axilite depth=16 port=plaintext  bundle=Decipher
#pragma HLS INTERFACE s_axilite depth=16 port=ciphertext bundle=Decipher

#pragma HLS inline region // will inline the functions unless inlining is off
#pragma HLS pipeline // reduces II

//#pragma HLS allocation instances=AddRoundKey limit=1 function // ensure only one instance of AddRoundKey

// group cipher tables together
#pragma HLS array_map variable=inverted_s_box instance=decipher horizontal
#pragma HLS array_map variable=mul09          instance=decipher horizontal
#pragma HLS array_map variable=mul11          instance=decipher horizontal
#pragma HLS array_map variable=mul13          instance=decipher horizontal
#pragma HLS array_map variable=mul14          instance=decipher horizontal

	// Copy ciphertext into state
	unsigned char state[stt_lng];
	L_copy_i: for (unsigned short i = 0; i < stt_lng; i++) {
#pragma HLS unroll
		state[i] = ciphertext[i];
	}

	AddRoundKey(state, Nr, Nr);

	L_rounds: for (unsigned short j = 0; j < Nr_max; j++) {
#pragma HLS unroll
		InvShiftRows(state);
		InvSubBytes(state);
		AddRoundKey(state, Nr, Nr - j - 1);
		if (j != (Nr - 1))
			InvMixColumns(state);
		else
			break;
	}

	// Copy state to plaintext
	L_copy_o: for (unsigned short i = 0; i < stt_lng; i++) {
#pragma HLS unroll
		plaintext[i] = state[i];
	}
}

//// AES Full
void AES_Full(bool mode_cipher, bool mode_inverse_cipher,
		unsigned char data_in[stt_lng], unsigned short Nr,
		unsigned char data_out[stt_lng]) {
#pragma HLS INTERFACe s_axilite          port=return              bundle=AES
#pragma HLS INTERFACE s_axilite          port=mode_cipher         bundle=AES
#pragma HLS INTERFACE s_axilite          port=mode_inverse_cipher bundle=AES
#pragma HLS INTERFACE s_axilite depth=16 port=data_in             bundle=AES
#pragma HLS INTERFACE s_axilite          port=Nr                  bundle=AES
#pragma HLS INTERFACE s_axilite depth=16 port=data_out            bundle=AES

#pragma HLS inline region // will inline the functions unless inlining is off

	if (mode_cipher) {
		AES_Encrypt(data_in, Nr, data_out);
	}
	if (mode_inverse_cipher) {
		AES_Decrypt(data_in, Nr, data_out);
	}
}

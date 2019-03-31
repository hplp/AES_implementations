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

void KeyExpansion(unsigned char* inputKey, unsigned short Nk, unsigned char* expandedKey) {
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
	L_SB: for (unsigned char i = 0; i < stt_lng; i++) {
#pragma HLS unroll
		state[i] = s_box[state[i]];
	}
}

void InvSubBytes(unsigned char* state) {
#pragma HLS inline off
	L_ISB: for (unsigned char i = 0; i < stt_lng; i++) {
#pragma HLS unroll
		state[i] = inverted_s_box[state[i]];
	}
}

void ShiftRows(unsigned char* state) {
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
	L_SR: for (unsigned char i = 0; i < stt_lng; i++) {
#pragma HLS unroll
		state[i] = tmp_state[i];
	}
}

void InvShiftRows(unsigned char* state) {
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
	L_ISR: for (unsigned char i = 0; i < stt_lng; i++) {
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
	L_MC: for (unsigned char i = 0; i < stt_lng; i++) {
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
	L_IMC: for (unsigned char i = 0; i < stt_lng; i++) {
#pragma HLS unroll
		state[i] = tmp_state[i];
	}
}

void AddRoundKey(unsigned char* state, unsigned char Nr, unsigned char round) {
#pragma HLS inline off
#pragma HLS array_map variable=expandedKey128 instance=expandedKey horizontal
#pragma HLS array_map variable=expandedKey192 instance=expandedKey horizontal
#pragma HLS array_map variable=expandedKey256 instance=expandedKey horizontal
	L_ARK: for (unsigned char i = 0; i < stt_lng; i++) {
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
void AES_Encrypt(unsigned char Nr, unsigned char plaintext[stt_lng], unsigned char ciphertext[stt_lng]) {

#pragma HLS inline region // will inline the functions unless inlining is off

#pragma HLS INTERFACE s_axilite port=Nr         bundle=Cipher
#pragma HLS INTERFACE axis register forward port=plaintext
#pragma HLS INTERFACE axis register reverse port=ciphertext
#pragma HLS INTERFACe s_axilite port=return     bundle=Cipher

#pragma HLS pipeline //II=2

// ensure only one instance; proper unroll needs 15-14-13 instances
//#pragma HLS allocation instances=AddRoundKey limit=1 function
//#pragma HLS allocation instances=SubBytes    limit=1 function
//#pragma HLS allocation instances=MixColumns  limit=1 function

// group cipher tables together
#pragma HLS array_map variable=s_box instance=cipher horizontal
#pragma HLS array_map variable=mul02 instance=cipher horizontal
#pragma HLS array_map variable=mul03 instance=cipher horizontal

	// Copy plaintext into state
	unsigned char state[stt_lng];
	L_copy_i: for (unsigned char i = 0; i < stt_lng; i++) {
#pragma HLS unroll
		state[i] = plaintext[i];
	}

	// prior to rounds
	AddRoundKey(state, Nr, 0);

	// rounds 1 to Nr-1
	L_rounds: for (unsigned char j = 0; j < Nr_max - 1; j++) {
#pragma HLS unroll
		SubBytes(state);
		ShiftRows(state);
		MixColumns(state);
		AddRoundKey(state, Nr, j + 1);
		if (j == (Nr - 2))
			break; // early exit
	}

	// last round
	SubBytes(state);
	ShiftRows(state);
	AddRoundKey(state, Nr, Nr);

	// Copy state to ciphertext
	L_copy_o: for (unsigned char i = 0; i < stt_lng; i++) {
#pragma HLS unroll
		ciphertext[i] = state[i];
	}
}

// Inverse Cipher
void AES_Decrypt(unsigned char Nr, unsigned char ciphertext[stt_lng], unsigned char plaintext[stt_lng]) {

#pragma HLS inline region // will inline the functions unless inlining is off

#pragma HLS INTERFACE s_axilite port=Nr         bundle=Decipher
#pragma HLS INTERFACE axis register forward port=ciphertext
#pragma HLS INTERFACE axis register reverse port=plaintext
#pragma HLS INTERFACe s_axilite port=return     bundle=Decipher

#pragma HLS pipeline //II=

// ensure only one instance; proper unroll needs 15-14-13 instances
//#pragma HLS allocation instances=AddRoundKey   limit=1 function
//#pragma HLS allocation instances=InvSubBytes   limit=1 function
//#pragma HLS allocation instances=InvMixColumns limit=1 function

// group cipher tables together
#pragma HLS array_map variable=inverted_s_box instance=decipher horizontal
#pragma HLS array_map variable=mul09          instance=decipher horizontal
#pragma HLS array_map variable=mul11          instance=decipher horizontal
#pragma HLS array_map variable=mul13          instance=decipher horizontal
#pragma HLS array_map variable=mul14          instance=decipher horizontal

	// Copy ciphertext into state
	unsigned char state[stt_lng];
	L_copy_i: for (unsigned char i = 0; i < stt_lng; i++) {
#pragma HLS unroll
		state[i] = ciphertext[i];
	}

	// prior to rounds
	AddRoundKey(state, Nr, Nr);

	// rounds 1 to Nr-1
	L_rounds: for (unsigned char j = 0; j < Nr_max - 1; j++) {
#pragma HLS unroll
		InvShiftRows(state);
		InvSubBytes(state);
		AddRoundKey(state, Nr, Nr - j - 1);
		InvMixColumns(state);
		if (j == (Nr - 2))
			break;
	}

	// last round
	InvShiftRows(state);
	InvSubBytes(state);
	AddRoundKey(state, Nr, 0);

	// Copy state to plaintext
	L_copy_o: for (unsigned char i = 0; i < stt_lng; i++) {
#pragma HLS unroll
		plaintext[i] = state[i];
	}
}

//// AES Full with 128-bit AXI Stream interface
void AES_Full_axis128(bool cipher_or_i_cipher, unsigned char Nr, aes_inout aes_in[AES_WORDS], aes_inout aes_out[AES_WORDS]) {

#pragma HLS inline region // will inline the functions unless inlining is off

#pragma HLS INTERFACE s_axilite port=cipher_or_i_cipher bundle=AES
#pragma HLS INTERFACE s_axilite port=Nr                 bundle=AES
#pragma HLS INTERFACE axis register forward port=aes_in
#pragma HLS INTERFACE axis register reverse port=aes_out
#pragma HLS INTERFACe s_axilite port=return             bundle=AES

	L_stream: for (unsigned char i = 0; i < AES_WORDS; i++) {
#pragma HLS pipeline II=1

		unsigned char data_in[stt_lng];
		unsigned char data_out[stt_lng];

		data_in[0] = aes_in[i].data0;
		data_in[1] = aes_in[i].data1;
		data_in[2] = aes_in[i].data2;
		data_in[3] = aes_in[i].data3;
		data_in[4] = aes_in[i].data4;
		data_in[5] = aes_in[i].data5;
		data_in[6] = aes_in[i].data6;
		data_in[7] = aes_in[i].data7;
		data_in[8] = aes_in[i].data8;
		data_in[9] = aes_in[i].data9;
		data_in[10] = aes_in[i].data10;
		data_in[11] = aes_in[i].data11;
		data_in[12] = aes_in[i].data12;
		data_in[13] = aes_in[i].data13;
		data_in[14] = aes_in[i].data14;
		data_in[15] = aes_in[i].data15;

		if (cipher_or_i_cipher)
			AES_Encrypt(Nr, data_in, data_out);
		else
			AES_Decrypt(Nr, data_in, data_out);

		aes_out[i].data0 = data_out[0];
		aes_out[i].data1 = data_out[1];
		aes_out[i].data2 = data_out[2];
		aes_out[i].data3 = data_out[3];
		aes_out[i].data4 = data_out[4];
		aes_out[i].data5 = data_out[5];
		aes_out[i].data6 = data_out[6];
		aes_out[i].data7 = data_out[7];
		aes_out[i].data8 = data_out[8];
		aes_out[i].data9 = data_out[9];
		aes_out[i].data10 = data_out[10];
		aes_out[i].data11 = data_out[11];
		aes_out[i].data12 = data_out[12];
		aes_out[i].data13 = data_out[13];
		aes_out[i].data14 = data_out[14];
		aes_out[i].data15 = data_out[15];

	}
}

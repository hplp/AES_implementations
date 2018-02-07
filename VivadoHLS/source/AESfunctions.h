#pragma once

#include <iostream>
using namespace std;
#include <cstdio>

const unsigned int Nb = 4; // columns
const unsigned int rows = 4; // rows
const unsigned int stt_lng = Nb * rows; // state length

const unsigned int Nk_max = 8; // max [32-bit words] columns in cipher key
const unsigned int CipherKeyLenghth_max = Nk_max * rows; // max bytes in key length
const unsigned int Nr_max = (Nk_max > Nb) ? Nk_max + 6 : Nb + 6; // max number of rounds
const unsigned int ExtdCipherKeyLenghth_max = (Nr_max + 1) * stt_lng; // max bytes in extended key length

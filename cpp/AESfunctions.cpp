#include "stdafx.h"
#include "AESfunctions.h"

int increment(int a) {
    return a + 1;
}

void KeyExpansion() {}
void InitialRound() {}

void AES_Encrypt()
{
    int numberOfRounds = 1;
    KeyExpansion();
    InitialRound();
}
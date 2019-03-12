// ==============================================================
// File generated on Tue Mar 12 11:22:48 -0400 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AES
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of cipher_or_i_cipher
//        bit 0  - cipher_or_i_cipher[0] (Read/Write)
//        others - reserved
// 0x14 : reserved
// 0x18 : Data signal of Nr
//        bit 7~0 - Nr[7:0] (Read/Write)
//        others  - reserved
// 0x1c : reserved
// 0x20 ~
// 0x2f : Memory 'data_in' (16 * 8b)
//        Word n : bit [ 7: 0] - data_in[4n]
//                 bit [15: 8] - data_in[4n+1]
//                 bit [23:16] - data_in[4n+2]
//                 bit [31:24] - data_in[4n+3]
// 0x30 ~
// 0x3f : Memory 'data_out' (16 * 8b)
//        Word n : bit [ 7: 0] - data_out[4n]
//                 bit [15: 8] - data_out[4n+1]
//                 bit [23:16] - data_out[4n+2]
//                 bit [31:24] - data_out[4n+3]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XAES_FULL_AES_ADDR_AP_CTRL                 0x00
#define XAES_FULL_AES_ADDR_GIE                     0x04
#define XAES_FULL_AES_ADDR_IER                     0x08
#define XAES_FULL_AES_ADDR_ISR                     0x0c
#define XAES_FULL_AES_ADDR_CIPHER_OR_I_CIPHER_DATA 0x10
#define XAES_FULL_AES_BITS_CIPHER_OR_I_CIPHER_DATA 1
#define XAES_FULL_AES_ADDR_NR_DATA                 0x18
#define XAES_FULL_AES_BITS_NR_DATA                 8
#define XAES_FULL_AES_ADDR_DATA_IN_BASE            0x20
#define XAES_FULL_AES_ADDR_DATA_IN_HIGH            0x2f
#define XAES_FULL_AES_WIDTH_DATA_IN                8
#define XAES_FULL_AES_DEPTH_DATA_IN                16
#define XAES_FULL_AES_ADDR_DATA_OUT_BASE           0x30
#define XAES_FULL_AES_ADDR_DATA_OUT_HIGH           0x3f
#define XAES_FULL_AES_WIDTH_DATA_OUT               8
#define XAES_FULL_AES_DEPTH_DATA_OUT               16


############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project aes_full
set_top AES_Full
add_files source/AESfunctions.cpp
add_files source/AESfunctions.h
add_files source/AEStables.h
add_files -tb source/test_AES_full.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 8 -name default
config_sdx -optimization_level 0 -target xocc
config_schedule -effort medium -enable_dsp_full_reg
config_export -vivado_phys_opt none
config_compile -name_max_length 256 -pipeline_loops 64
config_bind -effort medium
config_rtl -auto_prefix  -register_reset_num 3
config_interface -m_axi_addr64
set_clock_uncertainty 5%
#source "./aes_full/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog

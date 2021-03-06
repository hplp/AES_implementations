############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AES_Full_axis8
set_top AES_Full_axis8
add_files source/AEStables.h
add_files source/AESkeys.h
add_files source/AESfunctions.h
add_files source/AESfunctions.cpp
add_files -tb source/test_AES_full_axis8.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
config_export -description {AES Full with 8-bit AXI4 Stream} -display_name AES_Full_axis8 -format ip_catalog -library HLS -rtl verilog -vendor UVA_HPLP -vivado_phys_opt place -vivado_report_level 0
#source "./AES_Full_axis8/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -description "AES Full with 8-bit AXI4 Stream" -vendor "UVA_HPLP" -library "HLS" -display_name "AES_Full_axis8"

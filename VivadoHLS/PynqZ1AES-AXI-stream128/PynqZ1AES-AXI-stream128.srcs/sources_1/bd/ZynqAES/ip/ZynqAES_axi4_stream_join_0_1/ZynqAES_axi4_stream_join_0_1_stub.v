// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr  5 16:07:00 2019
// Host        : HPLP-SM7ED running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/OneDrive/UVA/crypto/AES_implementations/VivadoHLS/PynqZ1AES-AXI-stream128/PynqZ1AES-AXI-stream128.srcs/sources_1/bd/ZynqAES/ip/ZynqAES_axi4_stream_join_0_1/ZynqAES_axi4_stream_join_0_1_stub.v
// Design      : ZynqAES_axi4_stream_join_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi4_stream_join,Vivado 2018.3" *)
module ZynqAES_axi4_stream_join_0_1(in_data00_TDATA, in_data00_TVALID, 
  in_data00_TREADY, in_data01_TDATA, in_data01_TVALID, in_data01_TREADY, in_data02_TDATA, 
  in_data02_TVALID, in_data02_TREADY, in_data03_TDATA, in_data03_TVALID, in_data03_TREADY, 
  in_data04_TDATA, in_data04_TVALID, in_data04_TREADY, in_data05_TDATA, in_data05_TVALID, 
  in_data05_TREADY, in_data06_TDATA, in_data06_TVALID, in_data06_TREADY, in_data07_TDATA, 
  in_data07_TVALID, in_data07_TREADY, in_data08_TDATA, in_data08_TVALID, in_data08_TREADY, 
  in_data09_TDATA, in_data09_TVALID, in_data09_TREADY, in_data10_TDATA, in_data10_TVALID, 
  in_data10_TREADY, in_data11_TDATA, in_data11_TVALID, in_data11_TREADY, in_data12_TDATA, 
  in_data12_TVALID, in_data12_TREADY, in_data13_TDATA, in_data13_TVALID, in_data13_TREADY, 
  in_data14_TDATA, in_data14_TVALID, in_data14_TREADY, in_data15_TDATA, in_data15_TVALID, 
  in_data15_TREADY, out_data_TDATA, out_data_TVALID, out_data_TREADY)
/* synthesis syn_black_box black_box_pad_pin="in_data00_TDATA[7:0],in_data00_TVALID,in_data00_TREADY,in_data01_TDATA[7:0],in_data01_TVALID,in_data01_TREADY,in_data02_TDATA[7:0],in_data02_TVALID,in_data02_TREADY,in_data03_TDATA[7:0],in_data03_TVALID,in_data03_TREADY,in_data04_TDATA[7:0],in_data04_TVALID,in_data04_TREADY,in_data05_TDATA[7:0],in_data05_TVALID,in_data05_TREADY,in_data06_TDATA[7:0],in_data06_TVALID,in_data06_TREADY,in_data07_TDATA[7:0],in_data07_TVALID,in_data07_TREADY,in_data08_TDATA[7:0],in_data08_TVALID,in_data08_TREADY,in_data09_TDATA[7:0],in_data09_TVALID,in_data09_TREADY,in_data10_TDATA[7:0],in_data10_TVALID,in_data10_TREADY,in_data11_TDATA[7:0],in_data11_TVALID,in_data11_TREADY,in_data12_TDATA[7:0],in_data12_TVALID,in_data12_TREADY,in_data13_TDATA[7:0],in_data13_TVALID,in_data13_TREADY,in_data14_TDATA[7:0],in_data14_TVALID,in_data14_TREADY,in_data15_TDATA[7:0],in_data15_TVALID,in_data15_TREADY,out_data_TDATA[127:0],out_data_TVALID,out_data_TREADY" */;
  input [7:0]in_data00_TDATA;
  input in_data00_TVALID;
  output in_data00_TREADY;
  input [7:0]in_data01_TDATA;
  input in_data01_TVALID;
  output in_data01_TREADY;
  input [7:0]in_data02_TDATA;
  input in_data02_TVALID;
  output in_data02_TREADY;
  input [7:0]in_data03_TDATA;
  input in_data03_TVALID;
  output in_data03_TREADY;
  input [7:0]in_data04_TDATA;
  input in_data04_TVALID;
  output in_data04_TREADY;
  input [7:0]in_data05_TDATA;
  input in_data05_TVALID;
  output in_data05_TREADY;
  input [7:0]in_data06_TDATA;
  input in_data06_TVALID;
  output in_data06_TREADY;
  input [7:0]in_data07_TDATA;
  input in_data07_TVALID;
  output in_data07_TREADY;
  input [7:0]in_data08_TDATA;
  input in_data08_TVALID;
  output in_data08_TREADY;
  input [7:0]in_data09_TDATA;
  input in_data09_TVALID;
  output in_data09_TREADY;
  input [7:0]in_data10_TDATA;
  input in_data10_TVALID;
  output in_data10_TREADY;
  input [7:0]in_data11_TDATA;
  input in_data11_TVALID;
  output in_data11_TREADY;
  input [7:0]in_data12_TDATA;
  input in_data12_TVALID;
  output in_data12_TREADY;
  input [7:0]in_data13_TDATA;
  input in_data13_TVALID;
  output in_data13_TREADY;
  input [7:0]in_data14_TDATA;
  input in_data14_TVALID;
  output in_data14_TREADY;
  input [7:0]in_data15_TDATA;
  input in_data15_TVALID;
  output in_data15_TREADY;
  output [127:0]out_data_TDATA;
  output out_data_TVALID;
  input out_data_TREADY;
endmodule

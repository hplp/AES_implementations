// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr  5 16:07:49 2019
// Host        : HPLP-SM7ED running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top ZynqAES_axi4_stream_split_0_1 -prefix
//               ZynqAES_axi4_stream_split_0_1_ ZynqAES_axi4_stream_split_0_0_stub.v
// Design      : ZynqAES_axi4_stream_split_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi4_stream_split,Vivado 2018.3" *)
module ZynqAES_axi4_stream_split_0_1(in_data_TDATA, in_data_TVALID, 
  in_data_TREADY, out_data00_TDATA, out_data00_TVALID, out_data00_TREADY, out_data01_TDATA, 
  out_data01_TVALID, out_data01_TREADY, out_data02_TDATA, out_data02_TVALID, 
  out_data02_TREADY, out_data03_TDATA, out_data03_TVALID, out_data03_TREADY, 
  out_data04_TDATA, out_data04_TVALID, out_data04_TREADY, out_data05_TDATA, 
  out_data05_TVALID, out_data05_TREADY, out_data06_TDATA, out_data06_TVALID, 
  out_data06_TREADY, out_data07_TDATA, out_data07_TVALID, out_data07_TREADY, 
  out_data08_TDATA, out_data08_TVALID, out_data08_TREADY, out_data09_TDATA, 
  out_data09_TVALID, out_data09_TREADY, out_data10_TDATA, out_data10_TVALID, 
  out_data10_TREADY, out_data11_TDATA, out_data11_TVALID, out_data11_TREADY, 
  out_data12_TDATA, out_data12_TVALID, out_data12_TREADY, out_data13_TDATA, 
  out_data13_TVALID, out_data13_TREADY, out_data14_TDATA, out_data14_TVALID, 
  out_data14_TREADY, out_data15_TDATA, out_data15_TVALID, out_data15_TREADY)
/* synthesis syn_black_box black_box_pad_pin="in_data_TDATA[127:0],in_data_TVALID,in_data_TREADY,out_data00_TDATA[7:0],out_data00_TVALID,out_data00_TREADY,out_data01_TDATA[7:0],out_data01_TVALID,out_data01_TREADY,out_data02_TDATA[7:0],out_data02_TVALID,out_data02_TREADY,out_data03_TDATA[7:0],out_data03_TVALID,out_data03_TREADY,out_data04_TDATA[7:0],out_data04_TVALID,out_data04_TREADY,out_data05_TDATA[7:0],out_data05_TVALID,out_data05_TREADY,out_data06_TDATA[7:0],out_data06_TVALID,out_data06_TREADY,out_data07_TDATA[7:0],out_data07_TVALID,out_data07_TREADY,out_data08_TDATA[7:0],out_data08_TVALID,out_data08_TREADY,out_data09_TDATA[7:0],out_data09_TVALID,out_data09_TREADY,out_data10_TDATA[7:0],out_data10_TVALID,out_data10_TREADY,out_data11_TDATA[7:0],out_data11_TVALID,out_data11_TREADY,out_data12_TDATA[7:0],out_data12_TVALID,out_data12_TREADY,out_data13_TDATA[7:0],out_data13_TVALID,out_data13_TREADY,out_data14_TDATA[7:0],out_data14_TVALID,out_data14_TREADY,out_data15_TDATA[7:0],out_data15_TVALID,out_data15_TREADY" */;
  input [127:0]in_data_TDATA;
  input in_data_TVALID;
  output in_data_TREADY;
  output [7:0]out_data00_TDATA;
  output out_data00_TVALID;
  input out_data00_TREADY;
  output [7:0]out_data01_TDATA;
  output out_data01_TVALID;
  input out_data01_TREADY;
  output [7:0]out_data02_TDATA;
  output out_data02_TVALID;
  input out_data02_TREADY;
  output [7:0]out_data03_TDATA;
  output out_data03_TVALID;
  input out_data03_TREADY;
  output [7:0]out_data04_TDATA;
  output out_data04_TVALID;
  input out_data04_TREADY;
  output [7:0]out_data05_TDATA;
  output out_data05_TVALID;
  input out_data05_TREADY;
  output [7:0]out_data06_TDATA;
  output out_data06_TVALID;
  input out_data06_TREADY;
  output [7:0]out_data07_TDATA;
  output out_data07_TVALID;
  input out_data07_TREADY;
  output [7:0]out_data08_TDATA;
  output out_data08_TVALID;
  input out_data08_TREADY;
  output [7:0]out_data09_TDATA;
  output out_data09_TVALID;
  input out_data09_TREADY;
  output [7:0]out_data10_TDATA;
  output out_data10_TVALID;
  input out_data10_TREADY;
  output [7:0]out_data11_TDATA;
  output out_data11_TVALID;
  input out_data11_TREADY;
  output [7:0]out_data12_TDATA;
  output out_data12_TVALID;
  input out_data12_TREADY;
  output [7:0]out_data13_TDATA;
  output out_data13_TVALID;
  input out_data13_TREADY;
  output [7:0]out_data14_TDATA;
  output out_data14_TVALID;
  input out_data14_TREADY;
  output [7:0]out_data15_TDATA;
  output out_data15_TVALID;
  input out_data15_TREADY;
endmodule

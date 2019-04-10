// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Apr  8 12:44:08 2019
// Host        : HPLP-SM7ED running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/OneDrive/UVA/crypto/AES_implementations/VivadoHLS/PynqZ1AES-AXI-stream128/PynqZ1AES-AXI-stream128.srcs/sources_1/bd/ZynqAES/ip/ZynqAES_AES_Full_axis128_0_1/ZynqAES_AES_Full_axis128_0_1_stub.v
// Design      : ZynqAES_AES_Full_axis128_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "AES_Full_axis128,Vivado 2018.3" *)
module ZynqAES_AES_Full_axis128_0_1(s_axi_AES_AWADDR, s_axi_AES_AWVALID, 
  s_axi_AES_AWREADY, s_axi_AES_WDATA, s_axi_AES_WSTRB, s_axi_AES_WVALID, s_axi_AES_WREADY, 
  s_axi_AES_BRESP, s_axi_AES_BVALID, s_axi_AES_BREADY, s_axi_AES_ARADDR, s_axi_AES_ARVALID, 
  s_axi_AES_ARREADY, s_axi_AES_RDATA, s_axi_AES_RRESP, s_axi_AES_RVALID, s_axi_AES_RREADY, 
  ap_clk, ap_rst_n, interrupt, aes_in_data0_TVALID, aes_in_data0_TREADY, aes_in_data0_TDATA, 
  aes_in_data1_TVALID, aes_in_data1_TREADY, aes_in_data1_TDATA, aes_in_data2_TVALID, 
  aes_in_data2_TREADY, aes_in_data2_TDATA, aes_in_data3_TVALID, aes_in_data3_TREADY, 
  aes_in_data3_TDATA, aes_in_data4_TVALID, aes_in_data4_TREADY, aes_in_data4_TDATA, 
  aes_in_data5_TVALID, aes_in_data5_TREADY, aes_in_data5_TDATA, aes_in_data6_TVALID, 
  aes_in_data6_TREADY, aes_in_data6_TDATA, aes_in_data7_TVALID, aes_in_data7_TREADY, 
  aes_in_data7_TDATA, aes_in_data8_TVALID, aes_in_data8_TREADY, aes_in_data8_TDATA, 
  aes_in_data9_TVALID, aes_in_data9_TREADY, aes_in_data9_TDATA, aes_in_data10_TVALID, 
  aes_in_data10_TREADY, aes_in_data10_TDATA, aes_in_data11_TVALID, aes_in_data11_TREADY, 
  aes_in_data11_TDATA, aes_in_data12_TVALID, aes_in_data12_TREADY, aes_in_data12_TDATA, 
  aes_in_data13_TVALID, aes_in_data13_TREADY, aes_in_data13_TDATA, aes_in_data14_TVALID, 
  aes_in_data14_TREADY, aes_in_data14_TDATA, aes_in_data15_TVALID, aes_in_data15_TREADY, 
  aes_in_data15_TDATA, aes_out_data0_TVALID, aes_out_data0_TREADY, aes_out_data0_TDATA, 
  aes_out_data1_TVALID, aes_out_data1_TREADY, aes_out_data1_TDATA, aes_out_data2_TVALID, 
  aes_out_data2_TREADY, aes_out_data2_TDATA, aes_out_data3_TVALID, aes_out_data3_TREADY, 
  aes_out_data3_TDATA, aes_out_data4_TVALID, aes_out_data4_TREADY, aes_out_data4_TDATA, 
  aes_out_data5_TVALID, aes_out_data5_TREADY, aes_out_data5_TDATA, aes_out_data6_TVALID, 
  aes_out_data6_TREADY, aes_out_data6_TDATA, aes_out_data7_TVALID, aes_out_data7_TREADY, 
  aes_out_data7_TDATA, aes_out_data8_TVALID, aes_out_data8_TREADY, aes_out_data8_TDATA, 
  aes_out_data9_TVALID, aes_out_data9_TREADY, aes_out_data9_TDATA, aes_out_data10_TVALID, 
  aes_out_data10_TREADY, aes_out_data10_TDATA, aes_out_data11_TVALID, 
  aes_out_data11_TREADY, aes_out_data11_TDATA, aes_out_data12_TVALID, 
  aes_out_data12_TREADY, aes_out_data12_TDATA, aes_out_data13_TVALID, 
  aes_out_data13_TREADY, aes_out_data13_TDATA, aes_out_data14_TVALID, 
  aes_out_data14_TREADY, aes_out_data14_TDATA, aes_out_data15_TVALID, 
  aes_out_data15_TREADY, aes_out_data15_TDATA)
/* synthesis syn_black_box black_box_pad_pin="s_axi_AES_AWADDR[4:0],s_axi_AES_AWVALID,s_axi_AES_AWREADY,s_axi_AES_WDATA[31:0],s_axi_AES_WSTRB[3:0],s_axi_AES_WVALID,s_axi_AES_WREADY,s_axi_AES_BRESP[1:0],s_axi_AES_BVALID,s_axi_AES_BREADY,s_axi_AES_ARADDR[4:0],s_axi_AES_ARVALID,s_axi_AES_ARREADY,s_axi_AES_RDATA[31:0],s_axi_AES_RRESP[1:0],s_axi_AES_RVALID,s_axi_AES_RREADY,ap_clk,ap_rst_n,interrupt,aes_in_data0_TVALID,aes_in_data0_TREADY,aes_in_data0_TDATA[7:0],aes_in_data1_TVALID,aes_in_data1_TREADY,aes_in_data1_TDATA[7:0],aes_in_data2_TVALID,aes_in_data2_TREADY,aes_in_data2_TDATA[7:0],aes_in_data3_TVALID,aes_in_data3_TREADY,aes_in_data3_TDATA[7:0],aes_in_data4_TVALID,aes_in_data4_TREADY,aes_in_data4_TDATA[7:0],aes_in_data5_TVALID,aes_in_data5_TREADY,aes_in_data5_TDATA[7:0],aes_in_data6_TVALID,aes_in_data6_TREADY,aes_in_data6_TDATA[7:0],aes_in_data7_TVALID,aes_in_data7_TREADY,aes_in_data7_TDATA[7:0],aes_in_data8_TVALID,aes_in_data8_TREADY,aes_in_data8_TDATA[7:0],aes_in_data9_TVALID,aes_in_data9_TREADY,aes_in_data9_TDATA[7:0],aes_in_data10_TVALID,aes_in_data10_TREADY,aes_in_data10_TDATA[7:0],aes_in_data11_TVALID,aes_in_data11_TREADY,aes_in_data11_TDATA[7:0],aes_in_data12_TVALID,aes_in_data12_TREADY,aes_in_data12_TDATA[7:0],aes_in_data13_TVALID,aes_in_data13_TREADY,aes_in_data13_TDATA[7:0],aes_in_data14_TVALID,aes_in_data14_TREADY,aes_in_data14_TDATA[7:0],aes_in_data15_TVALID,aes_in_data15_TREADY,aes_in_data15_TDATA[7:0],aes_out_data0_TVALID,aes_out_data0_TREADY,aes_out_data0_TDATA[7:0],aes_out_data1_TVALID,aes_out_data1_TREADY,aes_out_data1_TDATA[7:0],aes_out_data2_TVALID,aes_out_data2_TREADY,aes_out_data2_TDATA[7:0],aes_out_data3_TVALID,aes_out_data3_TREADY,aes_out_data3_TDATA[7:0],aes_out_data4_TVALID,aes_out_data4_TREADY,aes_out_data4_TDATA[7:0],aes_out_data5_TVALID,aes_out_data5_TREADY,aes_out_data5_TDATA[7:0],aes_out_data6_TVALID,aes_out_data6_TREADY,aes_out_data6_TDATA[7:0],aes_out_data7_TVALID,aes_out_data7_TREADY,aes_out_data7_TDATA[7:0],aes_out_data8_TVALID,aes_out_data8_TREADY,aes_out_data8_TDATA[7:0],aes_out_data9_TVALID,aes_out_data9_TREADY,aes_out_data9_TDATA[7:0],aes_out_data10_TVALID,aes_out_data10_TREADY,aes_out_data10_TDATA[7:0],aes_out_data11_TVALID,aes_out_data11_TREADY,aes_out_data11_TDATA[7:0],aes_out_data12_TVALID,aes_out_data12_TREADY,aes_out_data12_TDATA[7:0],aes_out_data13_TVALID,aes_out_data13_TREADY,aes_out_data13_TDATA[7:0],aes_out_data14_TVALID,aes_out_data14_TREADY,aes_out_data14_TDATA[7:0],aes_out_data15_TVALID,aes_out_data15_TREADY,aes_out_data15_TDATA[7:0]" */;
  input [4:0]s_axi_AES_AWADDR;
  input s_axi_AES_AWVALID;
  output s_axi_AES_AWREADY;
  input [31:0]s_axi_AES_WDATA;
  input [3:0]s_axi_AES_WSTRB;
  input s_axi_AES_WVALID;
  output s_axi_AES_WREADY;
  output [1:0]s_axi_AES_BRESP;
  output s_axi_AES_BVALID;
  input s_axi_AES_BREADY;
  input [4:0]s_axi_AES_ARADDR;
  input s_axi_AES_ARVALID;
  output s_axi_AES_ARREADY;
  output [31:0]s_axi_AES_RDATA;
  output [1:0]s_axi_AES_RRESP;
  output s_axi_AES_RVALID;
  input s_axi_AES_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input aes_in_data0_TVALID;
  output aes_in_data0_TREADY;
  input [7:0]aes_in_data0_TDATA;
  input aes_in_data1_TVALID;
  output aes_in_data1_TREADY;
  input [7:0]aes_in_data1_TDATA;
  input aes_in_data2_TVALID;
  output aes_in_data2_TREADY;
  input [7:0]aes_in_data2_TDATA;
  input aes_in_data3_TVALID;
  output aes_in_data3_TREADY;
  input [7:0]aes_in_data3_TDATA;
  input aes_in_data4_TVALID;
  output aes_in_data4_TREADY;
  input [7:0]aes_in_data4_TDATA;
  input aes_in_data5_TVALID;
  output aes_in_data5_TREADY;
  input [7:0]aes_in_data5_TDATA;
  input aes_in_data6_TVALID;
  output aes_in_data6_TREADY;
  input [7:0]aes_in_data6_TDATA;
  input aes_in_data7_TVALID;
  output aes_in_data7_TREADY;
  input [7:0]aes_in_data7_TDATA;
  input aes_in_data8_TVALID;
  output aes_in_data8_TREADY;
  input [7:0]aes_in_data8_TDATA;
  input aes_in_data9_TVALID;
  output aes_in_data9_TREADY;
  input [7:0]aes_in_data9_TDATA;
  input aes_in_data10_TVALID;
  output aes_in_data10_TREADY;
  input [7:0]aes_in_data10_TDATA;
  input aes_in_data11_TVALID;
  output aes_in_data11_TREADY;
  input [7:0]aes_in_data11_TDATA;
  input aes_in_data12_TVALID;
  output aes_in_data12_TREADY;
  input [7:0]aes_in_data12_TDATA;
  input aes_in_data13_TVALID;
  output aes_in_data13_TREADY;
  input [7:0]aes_in_data13_TDATA;
  input aes_in_data14_TVALID;
  output aes_in_data14_TREADY;
  input [7:0]aes_in_data14_TDATA;
  input aes_in_data15_TVALID;
  output aes_in_data15_TREADY;
  input [7:0]aes_in_data15_TDATA;
  output aes_out_data0_TVALID;
  input aes_out_data0_TREADY;
  output [7:0]aes_out_data0_TDATA;
  output aes_out_data1_TVALID;
  input aes_out_data1_TREADY;
  output [7:0]aes_out_data1_TDATA;
  output aes_out_data2_TVALID;
  input aes_out_data2_TREADY;
  output [7:0]aes_out_data2_TDATA;
  output aes_out_data3_TVALID;
  input aes_out_data3_TREADY;
  output [7:0]aes_out_data3_TDATA;
  output aes_out_data4_TVALID;
  input aes_out_data4_TREADY;
  output [7:0]aes_out_data4_TDATA;
  output aes_out_data5_TVALID;
  input aes_out_data5_TREADY;
  output [7:0]aes_out_data5_TDATA;
  output aes_out_data6_TVALID;
  input aes_out_data6_TREADY;
  output [7:0]aes_out_data6_TDATA;
  output aes_out_data7_TVALID;
  input aes_out_data7_TREADY;
  output [7:0]aes_out_data7_TDATA;
  output aes_out_data8_TVALID;
  input aes_out_data8_TREADY;
  output [7:0]aes_out_data8_TDATA;
  output aes_out_data9_TVALID;
  input aes_out_data9_TREADY;
  output [7:0]aes_out_data9_TDATA;
  output aes_out_data10_TVALID;
  input aes_out_data10_TREADY;
  output [7:0]aes_out_data10_TDATA;
  output aes_out_data11_TVALID;
  input aes_out_data11_TREADY;
  output [7:0]aes_out_data11_TDATA;
  output aes_out_data12_TVALID;
  input aes_out_data12_TREADY;
  output [7:0]aes_out_data12_TDATA;
  output aes_out_data13_TVALID;
  input aes_out_data13_TREADY;
  output [7:0]aes_out_data13_TDATA;
  output aes_out_data14_TVALID;
  input aes_out_data14_TREADY;
  output [7:0]aes_out_data14_TDATA;
  output aes_out_data15_TVALID;
  input aes_out_data15_TREADY;
  output [7:0]aes_out_data15_TDATA;
endmodule

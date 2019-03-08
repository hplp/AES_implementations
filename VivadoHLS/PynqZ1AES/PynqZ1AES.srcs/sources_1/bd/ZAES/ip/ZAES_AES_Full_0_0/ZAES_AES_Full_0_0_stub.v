// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Mar  8 17:15:58 2019
// Host        : HPLP-SM7ED running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/OneDrive/UVA/crypto/AES_implementations/VivadoHLS/PynqZ1AES/PynqZ1AES.srcs/sources_1/bd/ZAES/ip/ZAES_AES_Full_0_0/ZAES_AES_Full_0_0_stub.v
// Design      : ZAES_AES_Full_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "AES_Full,Vivado 2018.3" *)
module ZAES_AES_Full_0_0(s_axi_AES_AWADDR, s_axi_AES_AWVALID, 
  s_axi_AES_AWREADY, s_axi_AES_WDATA, s_axi_AES_WSTRB, s_axi_AES_WVALID, s_axi_AES_WREADY, 
  s_axi_AES_BRESP, s_axi_AES_BVALID, s_axi_AES_BREADY, s_axi_AES_ARADDR, s_axi_AES_ARVALID, 
  s_axi_AES_ARREADY, s_axi_AES_RDATA, s_axi_AES_RRESP, s_axi_AES_RVALID, s_axi_AES_RREADY, 
  ap_clk, ap_rst_n, interrupt)
/* synthesis syn_black_box black_box_pad_pin="s_axi_AES_AWADDR[5:0],s_axi_AES_AWVALID,s_axi_AES_AWREADY,s_axi_AES_WDATA[31:0],s_axi_AES_WSTRB[3:0],s_axi_AES_WVALID,s_axi_AES_WREADY,s_axi_AES_BRESP[1:0],s_axi_AES_BVALID,s_axi_AES_BREADY,s_axi_AES_ARADDR[5:0],s_axi_AES_ARVALID,s_axi_AES_ARREADY,s_axi_AES_RDATA[31:0],s_axi_AES_RRESP[1:0],s_axi_AES_RVALID,s_axi_AES_RREADY,ap_clk,ap_rst_n,interrupt" */;
  input [5:0]s_axi_AES_AWADDR;
  input s_axi_AES_AWVALID;
  output s_axi_AES_AWREADY;
  input [31:0]s_axi_AES_WDATA;
  input [3:0]s_axi_AES_WSTRB;
  input s_axi_AES_WVALID;
  output s_axi_AES_WREADY;
  output [1:0]s_axi_AES_BRESP;
  output s_axi_AES_BVALID;
  input s_axi_AES_BREADY;
  input [5:0]s_axi_AES_ARADDR;
  input s_axi_AES_ARVALID;
  output s_axi_AES_ARREADY;
  output [31:0]s_axi_AES_RDATA;
  output [1:0]s_axi_AES_RRESP;
  output s_axi_AES_RVALID;
  input s_axi_AES_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
endmodule

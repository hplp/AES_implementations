// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: UVA_HPLP:hls:AES_Full_axis8:1.0
// IP Revision: 1904102215

(* X_CORE_INFO = "AES_Full_axis8,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "ZAES_AES_Full_axis8_0_0,AES_Full_axis8,{}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ZAES_AES_Full_axis8_0_0 (
  s_axi_AES_AWADDR,
  s_axi_AES_AWVALID,
  s_axi_AES_AWREADY,
  s_axi_AES_WDATA,
  s_axi_AES_WSTRB,
  s_axi_AES_WVALID,
  s_axi_AES_WREADY,
  s_axi_AES_BRESP,
  s_axi_AES_BVALID,
  s_axi_AES_BREADY,
  s_axi_AES_ARADDR,
  s_axi_AES_ARVALID,
  s_axi_AES_ARREADY,
  s_axi_AES_RDATA,
  s_axi_AES_RRESP,
  s_axi_AES_RVALID,
  s_axi_AES_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  data_out_TVALID,
  data_out_TREADY,
  data_out_TDATA,
  data_in_TVALID,
  data_in_TREADY,
  data_in_TDATA
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES AWADDR" *)
input wire [4 : 0] s_axi_AES_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES AWVALID" *)
input wire s_axi_AES_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES AWREADY" *)
output wire s_axi_AES_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES WDATA" *)
input wire [31 : 0] s_axi_AES_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES WSTRB" *)
input wire [3 : 0] s_axi_AES_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES WVALID" *)
input wire s_axi_AES_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES WREADY" *)
output wire s_axi_AES_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES BRESP" *)
output wire [1 : 0] s_axi_AES_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES BVALID" *)
output wire s_axi_AES_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES BREADY" *)
input wire s_axi_AES_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES ARADDR" *)
input wire [4 : 0] s_axi_AES_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES ARVALID" *)
input wire s_axi_AES_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES ARREADY" *)
output wire s_axi_AES_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES RDATA" *)
output wire [31 : 0] s_axi_AES_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES RRESP" *)
output wire [1 : 0] s_axi_AES_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES RVALID" *)
output wire s_axi_AES_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_AES, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, ID_W\
IDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN ZAES_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AES RREADY" *)
input wire s_axi_AES_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_AES:data_out:data_in, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000\
, CLK_DOMAIN ZAES_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {INTERRUPT {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out TVALID" *)
output wire data_out_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out TREADY" *)
input wire data_out_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_out, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {}\
 format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMA\
IN ZAES_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out TDATA" *)
output wire [7 : 0] data_out_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in TVALID" *)
input wire data_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in TREADY" *)
output wire data_in_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_in, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ZAES_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in TDATA" *)
input wire [7 : 0] data_in_TDATA;

  AES_Full_axis8 #(
    .C_S_AXI_AES_ADDR_WIDTH(5),
    .C_S_AXI_AES_DATA_WIDTH(32)
  ) inst (
    .s_axi_AES_AWADDR(s_axi_AES_AWADDR),
    .s_axi_AES_AWVALID(s_axi_AES_AWVALID),
    .s_axi_AES_AWREADY(s_axi_AES_AWREADY),
    .s_axi_AES_WDATA(s_axi_AES_WDATA),
    .s_axi_AES_WSTRB(s_axi_AES_WSTRB),
    .s_axi_AES_WVALID(s_axi_AES_WVALID),
    .s_axi_AES_WREADY(s_axi_AES_WREADY),
    .s_axi_AES_BRESP(s_axi_AES_BRESP),
    .s_axi_AES_BVALID(s_axi_AES_BVALID),
    .s_axi_AES_BREADY(s_axi_AES_BREADY),
    .s_axi_AES_ARADDR(s_axi_AES_ARADDR),
    .s_axi_AES_ARVALID(s_axi_AES_ARVALID),
    .s_axi_AES_ARREADY(s_axi_AES_ARREADY),
    .s_axi_AES_RDATA(s_axi_AES_RDATA),
    .s_axi_AES_RRESP(s_axi_AES_RRESP),
    .s_axi_AES_RVALID(s_axi_AES_RVALID),
    .s_axi_AES_RREADY(s_axi_AES_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .data_out_TVALID(data_out_TVALID),
    .data_out_TREADY(data_out_TREADY),
    .data_out_TDATA(data_out_TDATA),
    .data_in_TVALID(data_in_TVALID),
    .data_in_TREADY(data_in_TREADY),
    .data_in_TDATA(data_in_TDATA)
  );
endmodule

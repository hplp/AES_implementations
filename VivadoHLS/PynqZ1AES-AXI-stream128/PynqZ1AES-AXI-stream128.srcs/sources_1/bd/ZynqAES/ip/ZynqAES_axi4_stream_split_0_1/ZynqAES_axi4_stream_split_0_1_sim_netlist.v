// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr  5 16:07:49 2019
// Host        : HPLP-SM7ED running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top ZynqAES_axi4_stream_split_0_1 -prefix
//               ZynqAES_axi4_stream_split_0_1_ ZynqAES_axi4_stream_split_0_0_sim_netlist.v
// Design      : ZynqAES_axi4_stream_split_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ZynqAES_axi4_stream_split_0_0,axi4_stream_split,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axi4_stream_split,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module ZynqAES_axi4_stream_split_0_1
   (in_data_TDATA,
    in_data_TVALID,
    in_data_TREADY,
    out_data00_TDATA,
    out_data00_TVALID,
    out_data00_TREADY,
    out_data01_TDATA,
    out_data01_TVALID,
    out_data01_TREADY,
    out_data02_TDATA,
    out_data02_TVALID,
    out_data02_TREADY,
    out_data03_TDATA,
    out_data03_TVALID,
    out_data03_TREADY,
    out_data04_TDATA,
    out_data04_TVALID,
    out_data04_TREADY,
    out_data05_TDATA,
    out_data05_TVALID,
    out_data05_TREADY,
    out_data06_TDATA,
    out_data06_TVALID,
    out_data06_TREADY,
    out_data07_TDATA,
    out_data07_TVALID,
    out_data07_TREADY,
    out_data08_TDATA,
    out_data08_TVALID,
    out_data08_TREADY,
    out_data09_TDATA,
    out_data09_TVALID,
    out_data09_TREADY,
    out_data10_TDATA,
    out_data10_TVALID,
    out_data10_TREADY,
    out_data11_TDATA,
    out_data11_TVALID,
    out_data11_TREADY,
    out_data12_TDATA,
    out_data12_TVALID,
    out_data12_TREADY,
    out_data13_TDATA,
    out_data13_TVALID,
    out_data13_TREADY,
    out_data14_TDATA,
    out_data14_TVALID,
    out_data14_TREADY,
    out_data15_TDATA,
    out_data15_TVALID,
    out_data15_TREADY);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data TDATA" *) input [127:0]in_data_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data TVALID" *) input in_data_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_data TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_data, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output in_data_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data00 TDATA" *) output [7:0]out_data00_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data00 TVALID" *) output out_data00_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data00 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data00, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input out_data00_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data01 TDATA" *) output [7:0]out_data01_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data01 TVALID" *) output out_data01_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data01 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data01, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input out_data01_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data02 TDATA" *) output [7:0]out_data02_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data02 TVALID" *) output out_data02_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data02 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data02, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input out_data02_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data03 TDATA" *) output [7:0]out_data03_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data03 TVALID" *) output out_data03_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data03 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data03, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input out_data03_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data04 TDATA" *) output [7:0]out_data04_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data04 TVALID" *) output out_data04_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data04 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data04, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input out_data04_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data05 TDATA" *) output [7:0]out_data05_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data05 TVALID" *) output out_data05_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data05 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data05, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input out_data05_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data06 TDATA" *) output [7:0]out_data06_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data06 TVALID" *) output out_data06_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data06 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data06, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input out_data06_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data07 TDATA" *) output [7:0]out_data07_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data07 TVALID" *) output out_data07_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data07 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data07, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input out_data07_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data08 TDATA" *) output [7:0]out_data08_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data08 TVALID" *) output out_data08_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data08 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data08, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input out_data08_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data09 TDATA" *) output [7:0]out_data09_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data09 TVALID" *) output out_data09_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data09 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data09, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input out_data09_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data10 TDATA" *) output [7:0]out_data10_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data10 TVALID" *) output out_data10_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data10 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data10, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input out_data10_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data11 TDATA" *) output [7:0]out_data11_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data11 TVALID" *) output out_data11_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data11 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data11, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input out_data11_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data12 TDATA" *) output [7:0]out_data12_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data12 TVALID" *) output out_data12_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data12 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data12, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input out_data12_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data13 TDATA" *) output [7:0]out_data13_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data13 TVALID" *) output out_data13_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data13 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data13, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input out_data13_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data14 TDATA" *) output [7:0]out_data14_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data14 TVALID" *) output out_data14_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data14 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data14, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input out_data14_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data15 TDATA" *) output [7:0]out_data15_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data15 TVALID" *) output out_data15_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_data15 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_data15, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input out_data15_TREADY;

  wire [127:0]in_data_TDATA;
  wire in_data_TVALID;
  wire out_data00_TREADY;

  assign in_data_TREADY = out_data00_TREADY;
  assign out_data00_TDATA[7:0] = in_data_TDATA[127:120];
  assign out_data00_TVALID = in_data_TVALID;
  assign out_data01_TDATA[7:0] = in_data_TDATA[119:112];
  assign out_data01_TVALID = in_data_TVALID;
  assign out_data02_TDATA[7:0] = in_data_TDATA[111:104];
  assign out_data02_TVALID = in_data_TVALID;
  assign out_data03_TDATA[7:0] = in_data_TDATA[103:96];
  assign out_data03_TVALID = in_data_TVALID;
  assign out_data04_TDATA[7:0] = in_data_TDATA[95:88];
  assign out_data04_TVALID = in_data_TVALID;
  assign out_data05_TDATA[7:0] = in_data_TDATA[87:80];
  assign out_data05_TVALID = in_data_TVALID;
  assign out_data06_TDATA[7:0] = in_data_TDATA[79:72];
  assign out_data06_TVALID = in_data_TVALID;
  assign out_data07_TDATA[7:0] = in_data_TDATA[71:64];
  assign out_data07_TVALID = in_data_TVALID;
  assign out_data08_TDATA[7:0] = in_data_TDATA[63:56];
  assign out_data08_TVALID = in_data_TVALID;
  assign out_data09_TDATA[7:0] = in_data_TDATA[55:48];
  assign out_data09_TVALID = in_data_TVALID;
  assign out_data10_TDATA[7:0] = in_data_TDATA[47:40];
  assign out_data10_TVALID = in_data_TVALID;
  assign out_data11_TDATA[7:0] = in_data_TDATA[39:32];
  assign out_data11_TVALID = in_data_TVALID;
  assign out_data12_TDATA[7:0] = in_data_TDATA[31:24];
  assign out_data12_TVALID = in_data_TVALID;
  assign out_data13_TDATA[7:0] = in_data_TDATA[23:16];
  assign out_data13_TVALID = in_data_TVALID;
  assign out_data14_TDATA[7:0] = in_data_TDATA[15:8];
  assign out_data14_TVALID = in_data_TVALID;
  assign out_data15_TDATA[7:0] = in_data_TDATA[7:0];
  assign out_data15_TVALID = in_data_TVALID;
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

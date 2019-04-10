-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Apr  8 12:44:08 2019
-- Host        : HPLP-SM7ED running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/OneDrive/UVA/crypto/AES_implementations/VivadoHLS/PynqZ1AES-AXI-stream128/PynqZ1AES-AXI-stream128.srcs/sources_1/bd/ZynqAES/ip/ZynqAES_AES_Full_axis128_0_1/ZynqAES_AES_Full_axis128_0_1_stub.vhdl
-- Design      : ZynqAES_AES_Full_axis128_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ZynqAES_AES_Full_axis128_0_1 is
  Port ( 
    s_axi_AES_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AES_AWVALID : in STD_LOGIC;
    s_axi_AES_AWREADY : out STD_LOGIC;
    s_axi_AES_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AES_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AES_WVALID : in STD_LOGIC;
    s_axi_AES_WREADY : out STD_LOGIC;
    s_axi_AES_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AES_BVALID : out STD_LOGIC;
    s_axi_AES_BREADY : in STD_LOGIC;
    s_axi_AES_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AES_ARVALID : in STD_LOGIC;
    s_axi_AES_ARREADY : out STD_LOGIC;
    s_axi_AES_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AES_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AES_RVALID : out STD_LOGIC;
    s_axi_AES_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    aes_in_data0_TVALID : in STD_LOGIC;
    aes_in_data0_TREADY : out STD_LOGIC;
    aes_in_data0_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_in_data1_TVALID : in STD_LOGIC;
    aes_in_data1_TREADY : out STD_LOGIC;
    aes_in_data1_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_in_data2_TVALID : in STD_LOGIC;
    aes_in_data2_TREADY : out STD_LOGIC;
    aes_in_data2_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_in_data3_TVALID : in STD_LOGIC;
    aes_in_data3_TREADY : out STD_LOGIC;
    aes_in_data3_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_in_data4_TVALID : in STD_LOGIC;
    aes_in_data4_TREADY : out STD_LOGIC;
    aes_in_data4_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_in_data5_TVALID : in STD_LOGIC;
    aes_in_data5_TREADY : out STD_LOGIC;
    aes_in_data5_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_in_data6_TVALID : in STD_LOGIC;
    aes_in_data6_TREADY : out STD_LOGIC;
    aes_in_data6_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_in_data7_TVALID : in STD_LOGIC;
    aes_in_data7_TREADY : out STD_LOGIC;
    aes_in_data7_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_in_data8_TVALID : in STD_LOGIC;
    aes_in_data8_TREADY : out STD_LOGIC;
    aes_in_data8_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_in_data9_TVALID : in STD_LOGIC;
    aes_in_data9_TREADY : out STD_LOGIC;
    aes_in_data9_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_in_data10_TVALID : in STD_LOGIC;
    aes_in_data10_TREADY : out STD_LOGIC;
    aes_in_data10_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_in_data11_TVALID : in STD_LOGIC;
    aes_in_data11_TREADY : out STD_LOGIC;
    aes_in_data11_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_in_data12_TVALID : in STD_LOGIC;
    aes_in_data12_TREADY : out STD_LOGIC;
    aes_in_data12_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_in_data13_TVALID : in STD_LOGIC;
    aes_in_data13_TREADY : out STD_LOGIC;
    aes_in_data13_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_in_data14_TVALID : in STD_LOGIC;
    aes_in_data14_TREADY : out STD_LOGIC;
    aes_in_data14_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_in_data15_TVALID : in STD_LOGIC;
    aes_in_data15_TREADY : out STD_LOGIC;
    aes_in_data15_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_out_data0_TVALID : out STD_LOGIC;
    aes_out_data0_TREADY : in STD_LOGIC;
    aes_out_data0_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_out_data1_TVALID : out STD_LOGIC;
    aes_out_data1_TREADY : in STD_LOGIC;
    aes_out_data1_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_out_data2_TVALID : out STD_LOGIC;
    aes_out_data2_TREADY : in STD_LOGIC;
    aes_out_data2_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_out_data3_TVALID : out STD_LOGIC;
    aes_out_data3_TREADY : in STD_LOGIC;
    aes_out_data3_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_out_data4_TVALID : out STD_LOGIC;
    aes_out_data4_TREADY : in STD_LOGIC;
    aes_out_data4_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_out_data5_TVALID : out STD_LOGIC;
    aes_out_data5_TREADY : in STD_LOGIC;
    aes_out_data5_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_out_data6_TVALID : out STD_LOGIC;
    aes_out_data6_TREADY : in STD_LOGIC;
    aes_out_data6_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_out_data7_TVALID : out STD_LOGIC;
    aes_out_data7_TREADY : in STD_LOGIC;
    aes_out_data7_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_out_data8_TVALID : out STD_LOGIC;
    aes_out_data8_TREADY : in STD_LOGIC;
    aes_out_data8_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_out_data9_TVALID : out STD_LOGIC;
    aes_out_data9_TREADY : in STD_LOGIC;
    aes_out_data9_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_out_data10_TVALID : out STD_LOGIC;
    aes_out_data10_TREADY : in STD_LOGIC;
    aes_out_data10_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_out_data11_TVALID : out STD_LOGIC;
    aes_out_data11_TREADY : in STD_LOGIC;
    aes_out_data11_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_out_data12_TVALID : out STD_LOGIC;
    aes_out_data12_TREADY : in STD_LOGIC;
    aes_out_data12_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_out_data13_TVALID : out STD_LOGIC;
    aes_out_data13_TREADY : in STD_LOGIC;
    aes_out_data13_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_out_data14_TVALID : out STD_LOGIC;
    aes_out_data14_TREADY : in STD_LOGIC;
    aes_out_data14_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aes_out_data15_TVALID : out STD_LOGIC;
    aes_out_data15_TREADY : in STD_LOGIC;
    aes_out_data15_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end ZynqAES_AES_Full_axis128_0_1;

architecture stub of ZynqAES_AES_Full_axis128_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_AES_AWADDR[4:0],s_axi_AES_AWVALID,s_axi_AES_AWREADY,s_axi_AES_WDATA[31:0],s_axi_AES_WSTRB[3:0],s_axi_AES_WVALID,s_axi_AES_WREADY,s_axi_AES_BRESP[1:0],s_axi_AES_BVALID,s_axi_AES_BREADY,s_axi_AES_ARADDR[4:0],s_axi_AES_ARVALID,s_axi_AES_ARREADY,s_axi_AES_RDATA[31:0],s_axi_AES_RRESP[1:0],s_axi_AES_RVALID,s_axi_AES_RREADY,ap_clk,ap_rst_n,interrupt,aes_in_data0_TVALID,aes_in_data0_TREADY,aes_in_data0_TDATA[7:0],aes_in_data1_TVALID,aes_in_data1_TREADY,aes_in_data1_TDATA[7:0],aes_in_data2_TVALID,aes_in_data2_TREADY,aes_in_data2_TDATA[7:0],aes_in_data3_TVALID,aes_in_data3_TREADY,aes_in_data3_TDATA[7:0],aes_in_data4_TVALID,aes_in_data4_TREADY,aes_in_data4_TDATA[7:0],aes_in_data5_TVALID,aes_in_data5_TREADY,aes_in_data5_TDATA[7:0],aes_in_data6_TVALID,aes_in_data6_TREADY,aes_in_data6_TDATA[7:0],aes_in_data7_TVALID,aes_in_data7_TREADY,aes_in_data7_TDATA[7:0],aes_in_data8_TVALID,aes_in_data8_TREADY,aes_in_data8_TDATA[7:0],aes_in_data9_TVALID,aes_in_data9_TREADY,aes_in_data9_TDATA[7:0],aes_in_data10_TVALID,aes_in_data10_TREADY,aes_in_data10_TDATA[7:0],aes_in_data11_TVALID,aes_in_data11_TREADY,aes_in_data11_TDATA[7:0],aes_in_data12_TVALID,aes_in_data12_TREADY,aes_in_data12_TDATA[7:0],aes_in_data13_TVALID,aes_in_data13_TREADY,aes_in_data13_TDATA[7:0],aes_in_data14_TVALID,aes_in_data14_TREADY,aes_in_data14_TDATA[7:0],aes_in_data15_TVALID,aes_in_data15_TREADY,aes_in_data15_TDATA[7:0],aes_out_data0_TVALID,aes_out_data0_TREADY,aes_out_data0_TDATA[7:0],aes_out_data1_TVALID,aes_out_data1_TREADY,aes_out_data1_TDATA[7:0],aes_out_data2_TVALID,aes_out_data2_TREADY,aes_out_data2_TDATA[7:0],aes_out_data3_TVALID,aes_out_data3_TREADY,aes_out_data3_TDATA[7:0],aes_out_data4_TVALID,aes_out_data4_TREADY,aes_out_data4_TDATA[7:0],aes_out_data5_TVALID,aes_out_data5_TREADY,aes_out_data5_TDATA[7:0],aes_out_data6_TVALID,aes_out_data6_TREADY,aes_out_data6_TDATA[7:0],aes_out_data7_TVALID,aes_out_data7_TREADY,aes_out_data7_TDATA[7:0],aes_out_data8_TVALID,aes_out_data8_TREADY,aes_out_data8_TDATA[7:0],aes_out_data9_TVALID,aes_out_data9_TREADY,aes_out_data9_TDATA[7:0],aes_out_data10_TVALID,aes_out_data10_TREADY,aes_out_data10_TDATA[7:0],aes_out_data11_TVALID,aes_out_data11_TREADY,aes_out_data11_TDATA[7:0],aes_out_data12_TVALID,aes_out_data12_TREADY,aes_out_data12_TDATA[7:0],aes_out_data13_TVALID,aes_out_data13_TREADY,aes_out_data13_TDATA[7:0],aes_out_data14_TVALID,aes_out_data14_TREADY,aes_out_data14_TDATA[7:0],aes_out_data15_TVALID,aes_out_data15_TREADY,aes_out_data15_TDATA[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "AES_Full_axis128,Vivado 2018.3";
begin
end;

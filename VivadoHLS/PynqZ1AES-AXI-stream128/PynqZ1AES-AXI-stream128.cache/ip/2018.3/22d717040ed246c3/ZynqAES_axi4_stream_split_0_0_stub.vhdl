-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Apr  5 16:07:49 2019
-- Host        : HPLP-SM7ED running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ZynqAES_axi4_stream_split_0_0_stub.vhdl
-- Design      : ZynqAES_axi4_stream_split_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    in_data_TDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    in_data_TVALID : in STD_LOGIC;
    in_data_TREADY : out STD_LOGIC;
    out_data00_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_data00_TVALID : out STD_LOGIC;
    out_data00_TREADY : in STD_LOGIC;
    out_data01_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_data01_TVALID : out STD_LOGIC;
    out_data01_TREADY : in STD_LOGIC;
    out_data02_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_data02_TVALID : out STD_LOGIC;
    out_data02_TREADY : in STD_LOGIC;
    out_data03_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_data03_TVALID : out STD_LOGIC;
    out_data03_TREADY : in STD_LOGIC;
    out_data04_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_data04_TVALID : out STD_LOGIC;
    out_data04_TREADY : in STD_LOGIC;
    out_data05_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_data05_TVALID : out STD_LOGIC;
    out_data05_TREADY : in STD_LOGIC;
    out_data06_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_data06_TVALID : out STD_LOGIC;
    out_data06_TREADY : in STD_LOGIC;
    out_data07_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_data07_TVALID : out STD_LOGIC;
    out_data07_TREADY : in STD_LOGIC;
    out_data08_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_data08_TVALID : out STD_LOGIC;
    out_data08_TREADY : in STD_LOGIC;
    out_data09_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_data09_TVALID : out STD_LOGIC;
    out_data09_TREADY : in STD_LOGIC;
    out_data10_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_data10_TVALID : out STD_LOGIC;
    out_data10_TREADY : in STD_LOGIC;
    out_data11_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_data11_TVALID : out STD_LOGIC;
    out_data11_TREADY : in STD_LOGIC;
    out_data12_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_data12_TVALID : out STD_LOGIC;
    out_data12_TREADY : in STD_LOGIC;
    out_data13_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_data13_TVALID : out STD_LOGIC;
    out_data13_TREADY : in STD_LOGIC;
    out_data14_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_data14_TVALID : out STD_LOGIC;
    out_data14_TREADY : in STD_LOGIC;
    out_data15_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_data15_TVALID : out STD_LOGIC;
    out_data15_TREADY : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "in_data_TDATA[127:0],in_data_TVALID,in_data_TREADY,out_data00_TDATA[7:0],out_data00_TVALID,out_data00_TREADY,out_data01_TDATA[7:0],out_data01_TVALID,out_data01_TREADY,out_data02_TDATA[7:0],out_data02_TVALID,out_data02_TREADY,out_data03_TDATA[7:0],out_data03_TVALID,out_data03_TREADY,out_data04_TDATA[7:0],out_data04_TVALID,out_data04_TREADY,out_data05_TDATA[7:0],out_data05_TVALID,out_data05_TREADY,out_data06_TDATA[7:0],out_data06_TVALID,out_data06_TREADY,out_data07_TDATA[7:0],out_data07_TVALID,out_data07_TREADY,out_data08_TDATA[7:0],out_data08_TVALID,out_data08_TREADY,out_data09_TDATA[7:0],out_data09_TVALID,out_data09_TREADY,out_data10_TDATA[7:0],out_data10_TVALID,out_data10_TREADY,out_data11_TDATA[7:0],out_data11_TVALID,out_data11_TREADY,out_data12_TDATA[7:0],out_data12_TVALID,out_data12_TREADY,out_data13_TDATA[7:0],out_data13_TVALID,out_data13_TREADY,out_data14_TDATA[7:0],out_data14_TVALID,out_data14_TREADY,out_data15_TDATA[7:0],out_data15_TVALID,out_data15_TREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi4_stream_split,Vivado 2018.3";
begin
end;

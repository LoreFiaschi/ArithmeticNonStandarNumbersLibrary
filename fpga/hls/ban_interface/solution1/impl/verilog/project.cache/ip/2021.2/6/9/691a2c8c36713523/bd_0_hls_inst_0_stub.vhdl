-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Tue Feb  8 15:56:59 2022
-- Host        : lorenzo-System-Product-Name running 64-bit Linux Mint 19.3 Tricia
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ap_local_block : out STD_LOGIC;
    ap_local_deadlock : out STD_LOGIC;
    b_op1_o_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 127 downto 0 );
    b_op1_i : in STD_LOGIC_VECTOR ( 127 downto 0 );
    b_op1_o : out STD_LOGIC_VECTOR ( 127 downto 0 );
    b_op2 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    f_op : in STD_LOGIC_VECTOR ( 31 downto 0 );
    op : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_local_block,ap_local_deadlock,b_op1_o_ap_vld,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_return[127:0],b_op1_i[127:0],b_op1_o[127:0],b_op2[127:0],f_op[31:0],op[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ban_interface,Vivado 2021.2";
begin
end;

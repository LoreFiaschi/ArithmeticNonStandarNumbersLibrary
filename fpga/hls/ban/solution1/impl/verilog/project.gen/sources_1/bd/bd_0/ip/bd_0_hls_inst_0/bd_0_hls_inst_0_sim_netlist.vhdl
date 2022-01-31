-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Mon Jan 31 16:30:56 2022
-- Host        : lorenzo-System-Product-Name running 64-bit Linux Mint 19.3 Tricia
-- Command     : write_vhdl -force -mode funcsim
--               /home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/hls/ban/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_main_flow_control_loop_pipe_sequential_init is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_start_0 : out STD_LOGIC;
    \i_fu_40_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg : in STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_main_flow_control_loop_pipe_sequential_init : entity is "main_flow_control_loop_pipe_sequential_init";
end bd_0_hls_inst_0_main_flow_control_loop_pipe_sequential_init;

architecture STRUCTURE of bd_0_hls_inst_0_main_flow_control_loop_pipe_sequential_init is
  signal ap_done_cache : STD_LOGIC;
  signal ap_done_cache_i_1_n_2 : STD_LOGIC;
  signal ap_done_reg1 : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal ap_loop_init_int_i_1_n_2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ap_done_cache_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ap_loop_init_int_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_fu_40[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i_fu_40[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_fu_40[1]_i_2\ : label is "soft_lutpair4";
begin
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888F8F888F8"
    )
        port map (
      I0 => \ap_CS_fsm_reg[2]\(0),
      I1 => ap_start,
      I2 => \ap_CS_fsm_reg[2]\(1),
      I3 => ap_done_cache,
      I4 => grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg,
      I5 => ap_done_reg1,
      O => D(0)
    );
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => Q(0),
      I1 => ap_loop_init_int,
      I2 => grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg,
      I3 => Q(1),
      O => ap_done_reg1
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20FF200000000000"
    )
        port map (
      I0 => Q(1),
      I1 => ap_loop_init_int,
      I2 => Q(0),
      I3 => grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg,
      I4 => ap_done_cache,
      I5 => \ap_CS_fsm_reg[2]\(1),
      O => D(1)
    );
ap_done_cache_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2000"
    )
        port map (
      I0 => Q(1),
      I1 => ap_loop_init_int,
      I2 => Q(0),
      I3 => grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg,
      I4 => ap_done_cache,
      O => ap_done_cache_i_1_n_2
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_done_cache_i_1_n_2,
      Q => ap_done_cache,
      R => ap_rst
    );
ap_loop_init_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2C0C"
    )
        port map (
      I0 => Q(0),
      I1 => ap_loop_init_int,
      I2 => grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg,
      I3 => Q(1),
      I4 => ap_rst,
      O => ap_loop_init_int_i_1_n_2
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_int_i_1_n_2,
      Q => ap_loop_init_int,
      R => '0'
    );
grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8F8888FFFF8888"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg[2]\(0),
      I2 => Q(0),
      I3 => ap_loop_init_int,
      I4 => grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg,
      I5 => Q(1),
      O => ap_start_0
    );
\i_fu_40[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => Q(0),
      O => \i_fu_40_reg[1]\(0)
    );
\i_fu_40[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0F0"
    )
        port map (
      I0 => Q(0),
      I1 => ap_loop_init_int,
      I2 => grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg,
      I3 => Q(1),
      O => E(0)
    );
\i_fu_40[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => Q(1),
      I1 => ap_loop_init_int,
      I2 => Q(0),
      O => \i_fu_40_reg[1]\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_main_flow_control_loop_pipe_sequential_init_0 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_ready : out STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_ready : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ap_done_cache_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_main_flow_control_loop_pipe_sequential_init_0 : entity is "main_flow_control_loop_pipe_sequential_init";
end bd_0_hls_inst_0_main_flow_control_loop_pipe_sequential_init_0;

architecture STRUCTURE of bd_0_hls_inst_0_main_flow_control_loop_pipe_sequential_init_0 is
  signal ap_done_cache : STD_LOGIC;
  signal \ap_done_cache_i_1__0_n_2\ : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal \ap_loop_init_int_i_1__0_n_2\ : STD_LOGIC;
begin
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2F2F22222F222"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      I2 => Q(2),
      I3 => ap_done_cache,
      I4 => grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg,
      I5 => grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_ready,
      O => D(0)
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEEAE"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => ap_done_cache,
      I3 => grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg,
      I4 => grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_ready,
      O => D(1)
    );
\ap_done_cache_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => ap_done_cache_reg_0(0),
      I1 => ap_done_cache_reg_0(1),
      I2 => ap_enable_reg_pp0_iter1,
      I3 => grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg,
      I4 => ap_done_cache,
      O => \ap_done_cache_i_1__0_n_2\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__0_n_2\,
      Q => ap_done_cache,
      R => ap_rst
    );
\ap_loop_init_int_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4444444"
    )
        port map (
      I0 => grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg,
      I1 => ap_loop_init_int,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => ap_done_cache_reg_0(1),
      I4 => ap_done_cache_reg_0(0),
      I5 => ap_rst,
      O => \ap_loop_init_int_i_1__0_n_2\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__0_n_2\,
      Q => ap_loop_init_int,
      R => '0'
    );
ap_ready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA08080808080808"
    )
        port map (
      I0 => Q(2),
      I1 => ap_done_cache,
      I2 => grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => ap_done_cache_reg_0(1),
      I5 => ap_done_cache_reg_0(0),
      O => ap_ready
    );
\i_1_fu_36[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_main_main_Pipeline_VITIS_LOOP_142_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_ready : out STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : out STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_main_main_Pipeline_VITIS_LOOP_142_1 : entity is "main_main_Pipeline_VITIS_LOOP_142_1";
end bd_0_hls_inst_0_main_main_Pipeline_VITIS_LOOP_142_1;

architecture STRUCTURE of bd_0_hls_inst_0_main_main_Pipeline_VITIS_LOOP_142_1 is
  signal add_ln142_fu_99_p2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_2 : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_ready : STD_LOGIC;
  signal \i_1_fu_36[1]_i_2_n_2\ : STD_LOGIC;
  signal \i_1_fu_36_reg_n_2_[0]\ : STD_LOGIC;
  signal \i_1_fu_36_reg_n_2_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_1_fu_36[1]_i_3\ : label is "soft_lutpair1";
begin
\ap_CS_fsm[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \i_1_fu_36_reg_n_2_[1]\,
      I2 => \i_1_fu_36_reg_n_2_[0]\,
      O => grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_ready
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002AAA"
    )
        port map (
      I0 => grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => \i_1_fu_36_reg_n_2_[1]\,
      I3 => \i_1_fu_36_reg_n_2_[0]\,
      I4 => ap_rst,
      O => ap_enable_reg_pp0_iter1_i_1_n_2
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_2,
      Q => ap_enable_reg_pp0_iter1,
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.bd_0_hls_inst_0_main_flow_control_loop_pipe_sequential_init_0
     port map (
      D(1 downto 0) => D(1 downto 0),
      Q(2 downto 0) => Q(2 downto 0),
      SR(0) => ap_loop_init,
      ap_clk => ap_clk,
      ap_done_cache_reg_0(1) => \i_1_fu_36_reg_n_2_[1]\,
      ap_done_cache_reg_0(0) => \i_1_fu_36_reg_n_2_[0]\,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start,
      grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_ready => grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_ready,
      grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg => grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg
    );
grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFAAAA"
    )
        port map (
      I0 => Q(1),
      I1 => \i_1_fu_36_reg_n_2_[0]\,
      I2 => \i_1_fu_36_reg_n_2_[1]\,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg,
      O => \ap_CS_fsm_reg[2]\
    );
\i_1_fu_36[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_1_fu_36_reg_n_2_[0]\,
      O => add_ln142_fu_99_p2(0)
    );
\i_1_fu_36[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \i_1_fu_36_reg_n_2_[1]\,
      I2 => \i_1_fu_36_reg_n_2_[0]\,
      O => \i_1_fu_36[1]_i_2_n_2\
    );
\i_1_fu_36[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \i_1_fu_36_reg_n_2_[0]\,
      I1 => \i_1_fu_36_reg_n_2_[1]\,
      O => add_ln142_fu_99_p2(1)
    );
\i_1_fu_36_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_1_fu_36[1]_i_2_n_2\,
      D => add_ln142_fu_99_p2(0),
      Q => \i_1_fu_36_reg_n_2_[0]\,
      R => ap_loop_init
    );
\i_1_fu_36_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_1_fu_36[1]_i_2_n_2\,
      D => add_ln142_fu_99_p2(1),
      Q => \i_1_fu_36_reg_n_2_[1]\,
      R => ap_loop_init
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_main_main_Pipeline_VITIS_LOOP_21_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_start_0 : out STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_main_main_Pipeline_VITIS_LOOP_21_1 : entity is "main_main_Pipeline_VITIS_LOOP_21_1";
end bd_0_hls_inst_0_main_main_Pipeline_VITIS_LOOP_21_1;

architecture STRUCTURE of bd_0_hls_inst_0_main_main_Pipeline_VITIS_LOOP_21_1 is
  signal flow_control_loop_pipe_sequential_init_U_n_6 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_7 : STD_LOGIC;
  signal i_fu_40 : STD_LOGIC;
  signal \i_fu_40_reg_n_2_[0]\ : STD_LOGIC;
  signal \i_fu_40_reg_n_2_[1]\ : STD_LOGIC;
begin
flow_control_loop_pipe_sequential_init_U: entity work.bd_0_hls_inst_0_main_flow_control_loop_pipe_sequential_init
     port map (
      D(1 downto 0) => D(1 downto 0),
      E(0) => i_fu_40,
      Q(1) => \i_fu_40_reg_n_2_[1]\,
      Q(0) => \i_fu_40_reg_n_2_[0]\,
      \ap_CS_fsm_reg[2]\(1 downto 0) => Q(1 downto 0),
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_start => ap_start,
      ap_start_0 => ap_start_0,
      grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg => grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg,
      \i_fu_40_reg[1]\(1) => flow_control_loop_pipe_sequential_init_U_n_6,
      \i_fu_40_reg[1]\(0) => flow_control_loop_pipe_sequential_init_U_n_7
    );
\i_fu_40_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_40,
      D => flow_control_loop_pipe_sequential_init_U_n_7,
      Q => \i_fu_40_reg_n_2_[0]\,
      R => '0'
    );
\i_fu_40_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_40,
      D => flow_control_loop_pipe_sequential_init_U_n_6,
      Q => \i_fu_40_reg_n_2_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_main is
  port (
    ap_local_block : out STD_LOGIC;
    ap_local_deadlock : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_main : entity is "main";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of bd_0_hls_inst_0_main : entity is "4'b0001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of bd_0_hls_inst_0_main : entity is "4'b0010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of bd_0_hls_inst_0_main : entity is "4'b0100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of bd_0_hls_inst_0_main : entity is "4'b1000";
  attribute hls_module : string;
  attribute hls_module of bd_0_hls_inst_0_main : entity is "yes";
end bd_0_hls_inst_0_main;

architecture STRUCTURE of bd_0_hls_inst_0_main is
  signal \<const0>\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_2_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^ap_ready\ : STD_LOGIC;
  signal grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg : STD_LOGIC;
  signal grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_n_5 : STD_LOGIC;
  signal grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg : STD_LOGIC;
  signal grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_n_4 : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
begin
  ap_done <= \^ap_ready\;
  ap_local_block <= \<const0>\;
  ap_local_deadlock <= \<const0>\;
  ap_ready <= \^ap_ready\;
  ap_return(31) <= \<const0>\;
  ap_return(30) <= \<const0>\;
  ap_return(29) <= \<const0>\;
  ap_return(28) <= \<const0>\;
  ap_return(27) <= \<const0>\;
  ap_return(26) <= \<const0>\;
  ap_return(25) <= \<const0>\;
  ap_return(24) <= \<const0>\;
  ap_return(23) <= \<const0>\;
  ap_return(22) <= \<const0>\;
  ap_return(21) <= \<const0>\;
  ap_return(20) <= \<const0>\;
  ap_return(19) <= \<const0>\;
  ap_return(18) <= \<const0>\;
  ap_return(17) <= \<const0>\;
  ap_return(16) <= \<const0>\;
  ap_return(15) <= \<const0>\;
  ap_return(14) <= \<const0>\;
  ap_return(13) <= \<const0>\;
  ap_return(12) <= \<const0>\;
  ap_return(11) <= \<const0>\;
  ap_return(10) <= \<const0>\;
  ap_return(9) <= \<const0>\;
  ap_return(8) <= \<const0>\;
  ap_return(7) <= \<const0>\;
  ap_return(6) <= \<const0>\;
  ap_return(5) <= \<const0>\;
  ap_return(4) <= \<const0>\;
  ap_return(3) <= \<const0>\;
  ap_return(2) <= \<const0>\;
  ap_return(1) <= \<const0>\;
  ap_return(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_2_[0]\,
      S => ap_rst
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => ap_rst
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_2_[0]\,
      I1 => ap_start,
      O => ap_idle
    );
grp_main_Pipeline_VITIS_LOOP_142_1_fu_33: entity work.bd_0_hls_inst_0_main_main_Pipeline_VITIS_LOOP_142_1
     port map (
      D(1) => ap_NS_fsm(3),
      D(0) => ap_NS_fsm(0),
      Q(2) => ap_CS_fsm_state4,
      Q(1) => ap_CS_fsm_state3,
      Q(0) => \ap_CS_fsm_reg_n_2_[0]\,
      \ap_CS_fsm_reg[2]\ => grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_n_5,
      ap_clk => ap_clk,
      ap_ready => \^ap_ready\,
      ap_rst => ap_rst,
      ap_start => ap_start,
      grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg => grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg
    );
grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_n_5,
      Q => grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg,
      R => ap_rst
    );
grp_main_Pipeline_VITIS_LOOP_21_1_fu_26: entity work.bd_0_hls_inst_0_main_main_Pipeline_VITIS_LOOP_21_1
     port map (
      D(1 downto 0) => ap_NS_fsm(2 downto 1),
      Q(1) => ap_CS_fsm_state2,
      Q(0) => \ap_CS_fsm_reg_n_2_[0]\,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_start => ap_start,
      ap_start_0 => grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_n_4,
      grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg => grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg
    );
grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_n_4,
      Q => grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg,
      R => ap_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0 is
  port (
    ap_local_block : out STD_LOGIC;
    ap_local_deadlock : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_0_hls_inst_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_0_hls_inst_0 : entity is "bd_0_hls_inst_0,main,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_0_hls_inst_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bd_0_hls_inst_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_0_hls_inst_0 : entity is "main,Vivado 2021.2";
  attribute hls_module : string;
  attribute hls_module of bd_0_hls_inst_0 : entity is "yes";
end bd_0_hls_inst_0;

architecture STRUCTURE of bd_0_hls_inst_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_ap_local_block_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ap_local_deadlock_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ap_return_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "4'b0001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "4'b0010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "4'b0100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "4'b1000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of ap_return : signal is "xilinx.com:signal:data:1.0 ap_return DATA";
  attribute X_INTERFACE_PARAMETER of ap_return : signal is "XIL_INTERFACENAME ap_return, LAYERED_METADATA undef";
begin
  ap_local_block <= \<const0>\;
  ap_local_deadlock <= \<const0>\;
  ap_return(31) <= \<const0>\;
  ap_return(30) <= \<const0>\;
  ap_return(29) <= \<const0>\;
  ap_return(28) <= \<const0>\;
  ap_return(27) <= \<const0>\;
  ap_return(26) <= \<const0>\;
  ap_return(25) <= \<const0>\;
  ap_return(24) <= \<const0>\;
  ap_return(23) <= \<const0>\;
  ap_return(22) <= \<const0>\;
  ap_return(21) <= \<const0>\;
  ap_return(20) <= \<const0>\;
  ap_return(19) <= \<const0>\;
  ap_return(18) <= \<const0>\;
  ap_return(17) <= \<const0>\;
  ap_return(16) <= \<const0>\;
  ap_return(15) <= \<const0>\;
  ap_return(14) <= \<const0>\;
  ap_return(13) <= \<const0>\;
  ap_return(12) <= \<const0>\;
  ap_return(11) <= \<const0>\;
  ap_return(10) <= \<const0>\;
  ap_return(9) <= \<const0>\;
  ap_return(8) <= \<const0>\;
  ap_return(7) <= \<const0>\;
  ap_return(6) <= \<const0>\;
  ap_return(5) <= \<const0>\;
  ap_return(4) <= \<const0>\;
  ap_return(3) <= \<const0>\;
  ap_return(2) <= \<const0>\;
  ap_return(1) <= \<const0>\;
  ap_return(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.bd_0_hls_inst_0_main
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_local_block => NLW_inst_ap_local_block_UNCONNECTED,
      ap_local_deadlock => NLW_inst_ap_local_deadlock_UNCONNECTED,
      ap_ready => ap_ready,
      ap_return(31 downto 0) => NLW_inst_ap_return_UNCONNECTED(31 downto 0),
      ap_rst => ap_rst,
      ap_start => ap_start
    );
end STRUCTURE;

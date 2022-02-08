-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity main_operator_Pipeline_VITIS_LOOP_84_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    tmp_115 : IN STD_LOGIC_VECTOR (31 downto 0);
    tmp_116 : IN STD_LOGIC_VECTOR (31 downto 0);
    tmp_117 : IN STD_LOGIC_VECTOR (31 downto 0);
    idx_tmp_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    idx_tmp_out_ap_vld : OUT STD_LOGIC;
    grp_fu_2010_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_2010_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_2010_p_opcode : OUT STD_LOGIC_VECTOR (4 downto 0);
    grp_fu_2010_p_dout0 : IN STD_LOGIC_VECTOR (0 downto 0);
    grp_fu_2010_p_ce : OUT STD_LOGIC );
end;


architecture behav of main_operator_Pipeline_VITIS_LOOP_84_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv23_0 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln84_fu_99_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal idx_tmp_load_1_reg_253 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln85_fu_108_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln85_reg_258 : STD_LOGIC_VECTOR (0 downto 0);
    signal idx_6_fu_114_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal idx_6_reg_264 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_s_fu_120_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln85_1_fu_148_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln85_1_reg_274 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln85_2_fu_154_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln85_2_reg_279 : STD_LOGIC_VECTOR (0 downto 0);
    signal idx_1_fu_48 : STD_LOGIC_VECTOR (1 downto 0);
    signal idx_5_fu_160_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal idx_tmp_fu_52 : STD_LOGIC_VECTOR (31 downto 0);
    signal idx_7_fu_205_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_allocacmp_idx_tmp_load_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal bitcast_ln85_fu_130_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_21_fu_134_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln85_fu_144_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal or_ln85_fu_173_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln85_fu_177_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln85_fu_183_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln85_1_fu_189_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal idx_fu_194_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln81_fu_201_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_00001 : BOOLEAN;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component main_fcmp_32ns_32ns_1_2_no_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        opcode : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component main_mux_32_32_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        din3 : IN STD_LOGIC_VECTOR (1 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component main_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    mux_32_32_1_1_U399 : component main_mux_32_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 2,
        dout_WIDTH => 32)
    port map (
        din0 => tmp_115,
        din1 => tmp_116,
        din2 => tmp_117,
        din3 => idx_1_fu_48,
        dout => tmp_s_fu_120_p5);

    flow_control_loop_pipe_sequential_init_U : component main_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    idx_1_fu_48_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    idx_1_fu_48 <= ap_const_lv2_1;
                elsif (((icmp_ln84_fu_99_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    idx_1_fu_48 <= idx_5_fu_160_p3;
                end if;
            end if; 
        end if;
    end process;

    idx_tmp_fu_52_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    idx_tmp_fu_52 <= ap_const_lv32_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    idx_tmp_fu_52 <= idx_7_fu_205_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln84_fu_99_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln85_1_reg_274 <= icmp_ln85_1_fu_148_p2;
                icmp_ln85_2_reg_279 <= icmp_ln85_2_fu_154_p2;
                icmp_ln85_reg_258 <= icmp_ln85_fu_108_p2;
                idx_6_reg_264 <= idx_6_fu_114_p2;
                idx_tmp_load_1_reg_253 <= ap_sig_allocacmp_idx_tmp_load_1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    and_ln85_1_fu_189_p2 <= (xor_ln85_fu_183_p2 and icmp_ln85_reg_258);
    and_ln85_fu_177_p2 <= (or_ln85_fu_173_p2 and grp_fu_2010_p_dout0);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_00001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln84_fu_99_p2)
    begin
        if (((icmp_ln84_fu_99_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_idx_tmp_load_1_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0, idx_tmp_fu_52, idx_7_fu_205_p3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ap_sig_allocacmp_idx_tmp_load_1 <= idx_7_fu_205_p3;
        else 
            ap_sig_allocacmp_idx_tmp_load_1 <= idx_tmp_fu_52;
        end if; 
    end process;

    bitcast_ln85_fu_130_p1 <= tmp_s_fu_120_p5;
    grp_fu_2010_p_ce <= ap_const_logic_1;
    grp_fu_2010_p_din0 <= tmp_s_fu_120_p5;
    grp_fu_2010_p_din1 <= ap_const_lv32_0;
    grp_fu_2010_p_opcode <= ap_const_lv5_1;
    icmp_ln84_fu_99_p2 <= "1" when (idx_1_fu_48 = ap_const_lv2_3) else "0";
    icmp_ln85_1_fu_148_p2 <= "0" when (tmp_21_fu_134_p4 = ap_const_lv8_FF) else "1";
    icmp_ln85_2_fu_154_p2 <= "1" when (trunc_ln85_fu_144_p1 = ap_const_lv23_0) else "0";
    icmp_ln85_fu_108_p2 <= "1" when (ap_sig_allocacmp_idx_tmp_load_1 = ap_const_lv32_0) else "0";
    idx_5_fu_160_p3 <= 
        idx_6_fu_114_p2 when (icmp_ln85_fu_108_p2(0) = '1') else 
        idx_1_fu_48;
    idx_6_fu_114_p2 <= std_logic_vector(unsigned(idx_1_fu_48) + unsigned(ap_const_lv2_1));
    idx_7_fu_205_p3 <= 
        zext_ln81_fu_201_p1 when (icmp_ln85_reg_258(0) = '1') else 
        idx_tmp_load_1_reg_253;
    idx_fu_194_p3 <= 
        idx_6_reg_264 when (and_ln85_1_fu_189_p2(0) = '1') else 
        ap_const_lv2_0;
    idx_tmp_out <= idx_tmp_fu_52;

    idx_tmp_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln84_fu_99_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln84_fu_99_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            idx_tmp_out_ap_vld <= ap_const_logic_1;
        else 
            idx_tmp_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    or_ln85_fu_173_p2 <= (icmp_ln85_2_reg_279 or icmp_ln85_1_reg_274);
    tmp_21_fu_134_p4 <= bitcast_ln85_fu_130_p1(30 downto 23);
    trunc_ln85_fu_144_p1 <= bitcast_ln85_fu_130_p1(23 - 1 downto 0);
    xor_ln85_fu_183_p2 <= (ap_const_lv1_1 xor and_ln85_fu_177_p2);
    zext_ln81_fu_201_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(idx_fu_194_p3),32));
end behav;

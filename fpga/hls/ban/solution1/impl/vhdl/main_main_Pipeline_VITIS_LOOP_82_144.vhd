-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity main_main_Pipeline_VITIS_LOOP_82_144 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    sub_ln535 : IN STD_LOGIC_VECTOR (5 downto 0);
    b_num_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    b_num_ce0 : OUT STD_LOGIC;
    b_num_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    idx_tmp_36_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    idx_tmp_36_out_ap_vld : OUT STD_LOGIC;
    grp_fu_4230_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_4230_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_4230_p_opcode : OUT STD_LOGIC_VECTOR (4 downto 0);
    grp_fu_4230_p_dout0 : IN STD_LOGIC_VECTOR (0 downto 0);
    grp_fu_4230_p_ce : OUT STD_LOGIC );
end;


architecture behav of main_main_Pipeline_VITIS_LOOP_82_144 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
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
    signal icmp_ln82_fu_99_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal idx_reg_238 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln82_reg_244 : STD_LOGIC_VECTOR (0 downto 0);
    signal idx_tmp_load_17_reg_253 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln83_6_fu_123_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln83_6_reg_258 : STD_LOGIC_VECTOR (0 downto 0);
    signal idx_116_fu_129_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal idx_116_reg_264 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln83_fu_152_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln83_reg_274 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln83_20_fu_158_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln83_20_reg_279 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln83_6_fu_115_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal idx_60_fu_46 : STD_LOGIC_VECTOR (1 downto 0);
    signal idx_115_fu_164_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_allocacmp_idx : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal idx_tmp_fu_50 : STD_LOGIC_VECTOR (31 downto 0);
    signal idx_117_fu_208_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_allocacmp_idx_tmp_load_17 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal zext_ln83_fu_105_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln83_fu_109_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal bitcast_ln83_fu_134_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_s_fu_138_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln83_fu_148_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal or_ln83_fu_176_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln83_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln83_fu_186_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln83_13_fu_192_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal idx_113_fu_197_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln79_fu_204_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_00001 : BOOLEAN;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
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
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    idx_60_fu_46_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    idx_60_fu_46 <= ap_const_lv2_1;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    idx_60_fu_46 <= idx_115_fu_164_p3;
                end if;
            end if; 
        end if;
    end process;

    idx_tmp_fu_50_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    idx_tmp_fu_50 <= ap_const_lv32_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    idx_tmp_fu_50 <= idx_117_fu_208_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                icmp_ln82_reg_244 <= icmp_ln82_fu_99_p2;
                icmp_ln83_20_reg_279 <= icmp_ln83_20_fu_158_p2;
                icmp_ln83_6_reg_258 <= icmp_ln83_6_fu_123_p2;
                icmp_ln83_reg_274 <= icmp_ln83_fu_152_p2;
                idx_116_reg_264 <= idx_116_fu_129_p2;
                idx_reg_238 <= ap_sig_allocacmp_idx;
                idx_tmp_load_17_reg_253 <= ap_sig_allocacmp_idx_tmp_load_17;
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
    add_ln83_fu_109_p2 <= std_logic_vector(unsigned(sub_ln535) + unsigned(zext_ln83_fu_105_p1));
    and_ln83_13_fu_192_p2 <= (xor_ln83_fu_186_p2 and icmp_ln83_6_reg_258);
    and_ln83_fu_180_p2 <= (or_ln83_fu_176_p2 and grp_fu_4230_p_dout0);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_00001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln82_fu_99_p2)
    begin
        if (((icmp_ln82_fu_99_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_idx_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, idx_60_fu_46, idx_115_fu_164_p3, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
            if ((ap_loop_init = ap_const_logic_1)) then 
                ap_sig_allocacmp_idx <= ap_const_lv2_1;
            elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                ap_sig_allocacmp_idx <= idx_115_fu_164_p3;
            else 
                ap_sig_allocacmp_idx <= idx_60_fu_46;
            end if;
        else 
            ap_sig_allocacmp_idx <= idx_60_fu_46;
        end if; 
    end process;


    ap_sig_allocacmp_idx_tmp_load_17_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0, idx_tmp_fu_50, idx_117_fu_208_p3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ap_sig_allocacmp_idx_tmp_load_17 <= idx_117_fu_208_p3;
        else 
            ap_sig_allocacmp_idx_tmp_load_17 <= idx_tmp_fu_50;
        end if; 
    end process;

    b_num_address0 <= zext_ln83_6_fu_115_p1(6 - 1 downto 0);

    b_num_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            b_num_ce0 <= ap_const_logic_1;
        else 
            b_num_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    bitcast_ln83_fu_134_p1 <= b_num_q0;
    grp_fu_4230_p_ce <= ap_const_logic_1;
    grp_fu_4230_p_din0 <= b_num_q0;
    grp_fu_4230_p_din1 <= ap_const_lv32_0;
    grp_fu_4230_p_opcode <= ap_const_lv5_1;
    icmp_ln82_fu_99_p2 <= "1" when (ap_sig_allocacmp_idx = ap_const_lv2_3) else "0";
    icmp_ln83_20_fu_158_p2 <= "1" when (trunc_ln83_fu_148_p1 = ap_const_lv23_0) else "0";
    icmp_ln83_6_fu_123_p2 <= "1" when (ap_sig_allocacmp_idx_tmp_load_17 = ap_const_lv32_0) else "0";
    icmp_ln83_fu_152_p2 <= "0" when (tmp_s_fu_138_p4 = ap_const_lv8_FF) else "1";
    idx_113_fu_197_p3 <= 
        idx_116_reg_264 when (and_ln83_13_fu_192_p2(0) = '1') else 
        ap_const_lv2_0;
    idx_115_fu_164_p3 <= 
        idx_116_fu_129_p2 when (icmp_ln83_6_fu_123_p2(0) = '1') else 
        idx_reg_238;
    idx_116_fu_129_p2 <= std_logic_vector(unsigned(idx_reg_238) + unsigned(ap_const_lv2_1));
    idx_117_fu_208_p3 <= 
        zext_ln79_fu_204_p1 when (icmp_ln83_6_reg_258(0) = '1') else 
        idx_tmp_load_17_reg_253;
    idx_tmp_36_out <= idx_tmp_fu_50;

    idx_tmp_36_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, icmp_ln82_reg_244)
    begin
        if (((icmp_ln82_reg_244 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            idx_tmp_36_out_ap_vld <= ap_const_logic_1;
        else 
            idx_tmp_36_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    or_ln83_fu_176_p2 <= (icmp_ln83_reg_274 or icmp_ln83_20_reg_279);
    tmp_s_fu_138_p4 <= bitcast_ln83_fu_134_p1(30 downto 23);
    trunc_ln83_fu_148_p1 <= bitcast_ln83_fu_134_p1(23 - 1 downto 0);
    xor_ln83_fu_186_p2 <= (ap_const_lv1_1 xor and_ln83_fu_180_p2);
    zext_ln79_fu_204_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(idx_113_fu_197_p3),32));
    zext_ln83_6_fu_115_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln83_fu_109_p2),64));
    zext_ln83_fu_105_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_idx),6));
end behav;

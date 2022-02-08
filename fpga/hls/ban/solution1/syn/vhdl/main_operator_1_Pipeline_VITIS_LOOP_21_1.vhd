-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity main_operator_1_Pipeline_VITIS_LOOP_21_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    n : IN STD_LOGIC_VECTOR (31 downto 0);
    num_res_1_02_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    num_res_2_01_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    write_flag4_6_out : OUT STD_LOGIC_VECTOR (0 downto 0);
    write_flag4_6_out_ap_vld : OUT STD_LOGIC;
    agg_result_num_6_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    agg_result_num_6_out_ap_vld : OUT STD_LOGIC;
    agg_result_num16_6_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    agg_result_num16_6_out_ap_vld : OUT STD_LOGIC;
    write_flag8_6_out : OUT STD_LOGIC_VECTOR (0 downto 0);
    write_flag8_6_out_ap_vld : OUT STD_LOGIC;
    write_flag_6_out : OUT STD_LOGIC_VECTOR (0 downto 0);
    write_flag_6_out_ap_vld : OUT STD_LOGIC;
    agg_result_num2_6_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    agg_result_num2_6_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of main_operator_1_Pipeline_VITIS_LOOP_21_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln21_fu_165_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal i_17_fu_54 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln21_fu_171_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i : STD_LOGIC_VECTOR (1 downto 0);
    signal i_load_fu_162_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal agg_result_num2_6_fu_58 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_s_fu_177_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal write_flag_6_fu_62 : STD_LOGIC_VECTOR (0 downto 0);
    signal write_flag8_6_fu_66 : STD_LOGIC_VECTOR (0 downto 0);
    signal agg_result_num16_6_fu_70 : STD_LOGIC_VECTOR (31 downto 0);
    signal agg_result_num_6_fu_74 : STD_LOGIC_VECTOR (31 downto 0);
    signal write_flag4_6_fu_78 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_66 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

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
    mux_32_32_1_1_U324 : component main_mux_32_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 2,
        dout_WIDTH => 32)
    port map (
        din0 => n,
        din1 => num_res_1_02_reload,
        din2 => num_res_2_01_reload,
        din3 => ap_sig_allocacmp_i,
        dout => tmp_s_fu_177_p5);

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
                ap_CS_fsm <= ap_ST_fsm_state1;
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
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    i_17_fu_54_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                if ((icmp_ln21_fu_165_p2 = ap_const_lv1_0)) then 
                    i_17_fu_54 <= add_ln21_fu_171_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_17_fu_54 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;

    write_flag4_6_fu_78_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                if (((i_load_fu_162_p1 = ap_const_lv2_1) and (icmp_ln21_fu_165_p2 = ap_const_lv1_0))) then 
                    write_flag4_6_fu_78 <= ap_const_lv1_1;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    write_flag4_6_fu_78 <= ap_const_lv1_0;
                end if;
            end if; 
        end if;
    end process;

    write_flag8_6_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                if ((ap_const_boolean_1 = ap_condition_66)) then 
                    write_flag8_6_fu_66 <= ap_const_lv1_1;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    write_flag8_6_fu_66 <= ap_const_lv1_0;
                end if;
            end if; 
        end if;
    end process;

    write_flag_6_fu_62_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                if (((i_load_fu_162_p1 = ap_const_lv2_0) and (icmp_ln21_fu_165_p2 = ap_const_lv1_0))) then 
                    write_flag_6_fu_62 <= ap_const_lv1_1;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    write_flag_6_fu_62 <= ap_const_lv1_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((i_load_fu_162_p1 = ap_const_lv2_1) and (icmp_ln21_fu_165_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                agg_result_num16_6_fu_70 <= tmp_s_fu_177_p5;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((i_load_fu_162_p1 = ap_const_lv2_1)) and not((i_load_fu_162_p1 = ap_const_lv2_0)) and (icmp_ln21_fu_165_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                agg_result_num2_6_fu_58 <= tmp_s_fu_177_p5;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((i_load_fu_162_p1 = ap_const_lv2_0) and (icmp_ln21_fu_165_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                agg_result_num_6_fu_74 <= tmp_s_fu_177_p5;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln21_fu_171_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i) + unsigned(ap_const_lv2_1));
    agg_result_num16_6_out <= agg_result_num16_6_fu_70;

    agg_result_num16_6_out_ap_vld_assign_proc : process(ap_CS_fsm_state1, icmp_ln21_fu_165_p2, ap_start_int)
    begin
        if (((icmp_ln21_fu_165_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            agg_result_num16_6_out_ap_vld <= ap_const_logic_1;
        else 
            agg_result_num16_6_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    agg_result_num2_6_out <= agg_result_num2_6_fu_58;

    agg_result_num2_6_out_ap_vld_assign_proc : process(ap_CS_fsm_state1, icmp_ln21_fu_165_p2, ap_start_int)
    begin
        if (((icmp_ln21_fu_165_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            agg_result_num2_6_out_ap_vld <= ap_const_logic_1;
        else 
            agg_result_num2_6_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    agg_result_num_6_out <= agg_result_num_6_fu_74;

    agg_result_num_6_out_ap_vld_assign_proc : process(ap_CS_fsm_state1, icmp_ln21_fu_165_p2, ap_start_int)
    begin
        if (((icmp_ln21_fu_165_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            agg_result_num_6_out_ap_vld <= ap_const_logic_1;
        else 
            agg_result_num_6_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start_int)
    begin
        if ((ap_start_int = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start_int = ap_const_logic_0);
    end process;


    ap_condition_66_assign_proc : process(icmp_ln21_fu_165_p2, i_load_fu_162_p1)
    begin
                ap_condition_66 <= (not((i_load_fu_162_p1 = ap_const_lv2_1)) and not((i_load_fu_162_p1 = ap_const_lv2_0)) and (icmp_ln21_fu_165_p2 = ap_const_lv1_0));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, icmp_ln21_fu_165_p2, ap_start_int)
    begin
        if (((icmp_ln21_fu_165_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_state1, ap_loop_exit_ready, ap_done_reg, ap_start_int)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_assign_proc : process(ap_CS_fsm_state1, i_17_fu_54, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_i <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_i <= i_17_fu_54;
        end if; 
    end process;

    i_load_fu_162_p1 <= ap_sig_allocacmp_i;
    icmp_ln21_fu_165_p2 <= "1" when (ap_sig_allocacmp_i = ap_const_lv2_3) else "0";
    write_flag4_6_out <= write_flag4_6_fu_78;

    write_flag4_6_out_ap_vld_assign_proc : process(ap_CS_fsm_state1, icmp_ln21_fu_165_p2, ap_start_int)
    begin
        if (((icmp_ln21_fu_165_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            write_flag4_6_out_ap_vld <= ap_const_logic_1;
        else 
            write_flag4_6_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    write_flag8_6_out <= write_flag8_6_fu_66;

    write_flag8_6_out_ap_vld_assign_proc : process(ap_CS_fsm_state1, icmp_ln21_fu_165_p2, ap_start_int)
    begin
        if (((icmp_ln21_fu_165_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            write_flag8_6_out_ap_vld <= ap_const_logic_1;
        else 
            write_flag8_6_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    write_flag_6_out <= write_flag_6_fu_62;

    write_flag_6_out_ap_vld_assign_proc : process(ap_CS_fsm_state1, icmp_ln21_fu_165_p2, ap_start_int)
    begin
        if (((icmp_ln21_fu_165_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            write_flag_6_out_ap_vld <= ap_const_logic_1;
        else 
            write_flag_6_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;

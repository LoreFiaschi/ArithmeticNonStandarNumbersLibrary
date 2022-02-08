-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity main_main_Pipeline_VITIS_LOOP_21_127 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    b8_num_2_0_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    b8_num_2_0_out_ap_vld : OUT STD_LOGIC;
    b8_num_1_0_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    b8_num_1_0_out_ap_vld : OUT STD_LOGIC;
    b8_num_0_0_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    b8_num_0_0_out_ap_vld : OUT STD_LOGIC;
    b8_num_load_2_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    b8_num_load_2_out_ap_vld : OUT STD_LOGIC;
    b8_num_load_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    b8_num_load_1_out_ap_vld : OUT STD_LOGIC;
    b8_num_load_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    b8_num_load_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of main_main_Pipeline_VITIS_LOOP_21_127 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv32_C09276F3 : STD_LOGIC_VECTOR (31 downto 0) := "11000000100100100111011011110011";
    constant ap_const_lv32_C0187FCC : STD_LOGIC_VECTOR (31 downto 0) := "11000000000110000111111111001100";
    constant ap_const_lv32_41105A71 : STD_LOGIC_VECTOR (31 downto 0) := "01000001000100000101101001110001";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln21_fu_124_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal i_33_fu_46 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln21_fu_130_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i : STD_LOGIC_VECTOR (1 downto 0);
    signal i_load_fu_121_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal b8_num_1_fu_50 : STD_LOGIC_VECTOR (31 downto 0);
    signal b8_num_1_7_fu_136_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal b8_num_1_1_fu_54 : STD_LOGIC_VECTOR (31 downto 0);
    signal b8_num_1_2_fu_58 : STD_LOGIC_VECTOR (31 downto 0);
    signal b8_num_1_3_fu_62 : STD_LOGIC_VECTOR (31 downto 0);
    signal b8_num_1_4_fu_66 : STD_LOGIC_VECTOR (31 downto 0);
    signal b8_num_1_5_fu_70 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
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
    mux_32_32_1_1_U34 : component main_mux_32_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 2,
        dout_WIDTH => 32)
    port map (
        din0 => ap_const_lv32_C09276F3,
        din1 => ap_const_lv32_C0187FCC,
        din2 => ap_const_lv32_41105A71,
        din3 => ap_sig_allocacmp_i,
        dout => b8_num_1_7_fu_136_p5);

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


    i_33_fu_46_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                if ((icmp_ln21_fu_124_p2 = ap_const_lv1_0)) then 
                    i_33_fu_46 <= add_ln21_fu_130_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_33_fu_46 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((i_load_fu_121_p1 = ap_const_lv2_1) and (icmp_ln21_fu_124_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                b8_num_1_1_fu_54 <= b8_num_1_7_fu_136_p5;
                b8_num_1_4_fu_66 <= b8_num_1_7_fu_136_p5;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((i_load_fu_121_p1 = ap_const_lv2_1)) and not((i_load_fu_121_p1 = ap_const_lv2_0)) and (icmp_ln21_fu_124_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                b8_num_1_2_fu_58 <= b8_num_1_7_fu_136_p5;
                b8_num_1_5_fu_70 <= b8_num_1_7_fu_136_p5;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((i_load_fu_121_p1 = ap_const_lv2_0) and (icmp_ln21_fu_124_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                b8_num_1_3_fu_62 <= b8_num_1_7_fu_136_p5;
                b8_num_1_fu_50 <= b8_num_1_7_fu_136_p5;
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
    add_ln21_fu_130_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i) + unsigned(ap_const_lv2_1));
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


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, icmp_ln21_fu_124_p2, ap_start_int)
    begin
        if (((icmp_ln21_fu_124_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
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


    ap_sig_allocacmp_i_assign_proc : process(ap_CS_fsm_state1, i_33_fu_46, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_i <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_i <= i_33_fu_46;
        end if; 
    end process;

    b8_num_0_0_out <= b8_num_1_3_fu_62;

    b8_num_0_0_out_ap_vld_assign_proc : process(ap_CS_fsm_state1, icmp_ln21_fu_124_p2, ap_start_int)
    begin
        if (((icmp_ln21_fu_124_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            b8_num_0_0_out_ap_vld <= ap_const_logic_1;
        else 
            b8_num_0_0_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    b8_num_1_0_out <= b8_num_1_4_fu_66;

    b8_num_1_0_out_ap_vld_assign_proc : process(ap_CS_fsm_state1, icmp_ln21_fu_124_p2, ap_start_int)
    begin
        if (((icmp_ln21_fu_124_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            b8_num_1_0_out_ap_vld <= ap_const_logic_1;
        else 
            b8_num_1_0_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    b8_num_2_0_out <= b8_num_1_5_fu_70;

    b8_num_2_0_out_ap_vld_assign_proc : process(ap_CS_fsm_state1, icmp_ln21_fu_124_p2, ap_start_int)
    begin
        if (((icmp_ln21_fu_124_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            b8_num_2_0_out_ap_vld <= ap_const_logic_1;
        else 
            b8_num_2_0_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    b8_num_load_1_out <= b8_num_1_1_fu_54;

    b8_num_load_1_out_ap_vld_assign_proc : process(ap_CS_fsm_state1, icmp_ln21_fu_124_p2, ap_start_int)
    begin
        if (((icmp_ln21_fu_124_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            b8_num_load_1_out_ap_vld <= ap_const_logic_1;
        else 
            b8_num_load_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    b8_num_load_2_out <= b8_num_1_2_fu_58;

    b8_num_load_2_out_ap_vld_assign_proc : process(ap_CS_fsm_state1, icmp_ln21_fu_124_p2, ap_start_int)
    begin
        if (((icmp_ln21_fu_124_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            b8_num_load_2_out_ap_vld <= ap_const_logic_1;
        else 
            b8_num_load_2_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    b8_num_load_out <= b8_num_1_fu_50;

    b8_num_load_out_ap_vld_assign_proc : process(ap_CS_fsm_state1, icmp_ln21_fu_124_p2, ap_start_int)
    begin
        if (((icmp_ln21_fu_124_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            b8_num_load_out_ap_vld <= ap_const_logic_1;
        else 
            b8_num_load_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    i_load_fu_121_p1 <= ap_sig_allocacmp_i;
    icmp_ln21_fu_124_p2 <= "1" when (ap_sig_allocacmp_i = ap_const_lv2_3) else "0";
end behav;

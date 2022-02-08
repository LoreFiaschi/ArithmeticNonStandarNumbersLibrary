-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity main_p_sum_2_Pipeline_VITIS_LOOP_90_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    agg_result_num_0 : IN STD_LOGIC_VECTOR (31 downto 0);
    agg_result_num16_6 : IN STD_LOGIC_VECTOR (31 downto 0);
    tmp_317 : IN STD_LOGIC_VECTOR (31 downto 0);
    zext_ln90 : IN STD_LOGIC_VECTOR (1 downto 0);
    xor_ln90 : IN STD_LOGIC_VECTOR (1 downto 0);
    agg_result_num_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    agg_result_num_1_out_ap_vld : OUT STD_LOGIC;
    agg_result_num16_0_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    agg_result_num16_0_out_ap_vld : OUT STD_LOGIC;
    agg_result_num2_0_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    agg_result_num2_0_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of main_p_sum_2_Pipeline_VITIS_LOOP_90_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln90_fu_182_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal base_fu_52 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln91_25_fu_187_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal base_41_load_fu_179_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal idx_146_fu_56 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln91_fu_205_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln90_cast_fu_135_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal empty_fu_60 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_s_fu_215_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal empty_80_fu_64 : STD_LOGIC_VECTOR (31 downto 0);
    signal empty_81_fu_68 : STD_LOGIC_VECTOR (31 downto 0);
    signal agg_result_num2_0_fu_72 : STD_LOGIC_VECTOR (31 downto 0);
    signal agg_result_num16_0_fu_76 : STD_LOGIC_VECTOR (31 downto 0);
    signal agg_result_num_1_fu_80 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_s_fu_215_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_194 : BOOLEAN;
    signal ap_condition_198 : BOOLEAN;
    signal ap_condition_201 : BOOLEAN;
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
    mux_32_32_1_1_U999 : component main_mux_32_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 2,
        dout_WIDTH => 32)
    port map (
        din0 => empty_fu_60,
        din1 => empty_80_fu_64,
        din2 => empty_81_fu_68,
        din3 => tmp_s_fu_215_p4,
        dout => tmp_s_fu_215_p5);

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


    agg_result_num16_0_fu_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    agg_result_num16_0_fu_76 <= agg_result_num16_6;
                elsif ((ap_const_boolean_1 = ap_condition_194)) then 
                    agg_result_num16_0_fu_76 <= tmp_s_fu_215_p5;
                end if;
            end if; 
        end if;
    end process;

    agg_result_num2_0_fu_72_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    agg_result_num2_0_fu_72 <= tmp_317;
                elsif ((ap_const_boolean_1 = ap_condition_198)) then 
                    agg_result_num2_0_fu_72 <= tmp_s_fu_215_p5;
                end if;
            end if; 
        end if;
    end process;

    agg_result_num_1_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    agg_result_num_1_fu_80 <= agg_result_num_0;
                elsif ((ap_const_boolean_1 = ap_condition_201)) then 
                    agg_result_num_1_fu_80 <= tmp_s_fu_215_p5;
                end if;
            end if; 
        end if;
    end process;

    base_fu_52_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    base_fu_52 <= ap_const_lv2_0;
                elsif (((icmp_ln90_fu_182_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    base_fu_52 <= add_ln91_25_fu_187_p2;
                end if;
            end if; 
        end if;
    end process;

    empty_80_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    empty_80_fu_64 <= agg_result_num16_6;
                elsif ((ap_const_boolean_1 = ap_condition_194)) then 
                    empty_80_fu_64 <= tmp_s_fu_215_p5;
                end if;
            end if; 
        end if;
    end process;

    empty_81_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    empty_81_fu_68 <= tmp_317;
                elsif ((ap_const_boolean_1 = ap_condition_198)) then 
                    empty_81_fu_68 <= tmp_s_fu_215_p5;
                end if;
            end if; 
        end if;
    end process;

    empty_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    empty_fu_60 <= agg_result_num_0;
                elsif ((ap_const_boolean_1 = ap_condition_201)) then 
                    empty_fu_60 <= tmp_s_fu_215_p5;
                end if;
            end if; 
        end if;
    end process;

    idx_146_fu_56_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    idx_146_fu_56 <= zext_ln90_cast_fu_135_p1;
                elsif (((icmp_ln90_fu_182_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    idx_146_fu_56 <= add_ln91_fu_205_p2;
                end if;
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
    add_ln91_25_fu_187_p2 <= std_logic_vector(unsigned(base_fu_52) + unsigned(ap_const_lv2_1));
    add_ln91_fu_205_p2 <= std_logic_vector(unsigned(idx_146_fu_56) + unsigned(ap_const_lv3_1));
    agg_result_num16_0_out <= agg_result_num16_0_fu_76;

    agg_result_num16_0_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln90_fu_182_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln90_fu_182_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            agg_result_num16_0_out_ap_vld <= ap_const_logic_1;
        else 
            agg_result_num16_0_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    agg_result_num2_0_out <= agg_result_num2_0_fu_72;

    agg_result_num2_0_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln90_fu_182_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln90_fu_182_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            agg_result_num2_0_out_ap_vld <= ap_const_logic_1;
        else 
            agg_result_num2_0_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    agg_result_num_1_out <= agg_result_num_1_fu_80;

    agg_result_num_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln90_fu_182_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln90_fu_182_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            agg_result_num_1_out_ap_vld <= ap_const_logic_1;
        else 
            agg_result_num_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_194_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln90_fu_182_p2, base_41_load_fu_179_p1)
    begin
                ap_condition_194 <= ((base_41_load_fu_179_p1 = ap_const_lv2_1) and (icmp_ln90_fu_182_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_198_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln90_fu_182_p2, base_41_load_fu_179_p1)
    begin
                ap_condition_198 <= (not((base_41_load_fu_179_p1 = ap_const_lv2_0)) and not((base_41_load_fu_179_p1 = ap_const_lv2_1)) and (icmp_ln90_fu_182_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_201_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln90_fu_182_p2, base_41_load_fu_179_p1)
    begin
                ap_condition_201 <= ((base_41_load_fu_179_p1 = ap_const_lv2_0) and (icmp_ln90_fu_182_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln90_fu_182_p2)
    begin
        if (((icmp_ln90_fu_182_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
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

    base_41_load_fu_179_p1 <= base_fu_52;
    icmp_ln90_fu_182_p2 <= "1" when (base_fu_52 = xor_ln90) else "0";
    tmp_s_fu_215_p4 <= idx_146_fu_56(2 - 1 downto 0);
    zext_ln90_cast_fu_135_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln90),3));
end behav;

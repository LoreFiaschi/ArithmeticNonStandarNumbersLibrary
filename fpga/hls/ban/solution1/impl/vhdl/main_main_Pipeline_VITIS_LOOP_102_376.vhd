-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity main_main_Pipeline_VITIS_LOOP_102_376 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    b8_num_load_6966 : IN STD_LOGIC_VECTOR (31 downto 0);
    b8_num_load_5958 : IN STD_LOGIC_VECTOR (31 downto 0);
    b8_num_load_4952 : IN STD_LOGIC_VECTOR (31 downto 0);
    zext_ln102_2 : IN STD_LOGIC_VECTOR (1 downto 0);
    zext_ln102_9 : IN STD_LOGIC_VECTOR (2 downto 0);
    b8_num_load_6964_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    b8_num_load_6964_out_ap_vld : OUT STD_LOGIC;
    b8_num_load_5956_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    b8_num_load_5956_out_ap_vld : OUT STD_LOGIC;
    b8_num_load_4950_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    b8_num_load_4950_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of main_main_Pipeline_VITIS_LOOP_102_376 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";

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
    signal icmp_ln102_fu_144_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal zext_ln102_9_cast_fu_113_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln102_9_cast_reg_219 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal base_12_fu_46 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln103_fu_149_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln102_2_cast_fu_117_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal b8_num_load_4950_fu_50 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln103_fu_155_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal b8_num_load_5956_fu_54 : STD_LOGIC_VECTOR (31 downto 0);
    signal b8_num_load_6964_fu_58 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_169 : BOOLEAN;
    signal ap_condition_172 : BOOLEAN;
    signal ap_condition_176 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

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


    b8_num_load_4950_fu_50_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    b8_num_load_4950_fu_50 <= b8_num_load_4952;
                elsif ((ap_const_boolean_1 = ap_condition_169)) then 
                    b8_num_load_4950_fu_50 <= ap_const_lv32_0;
                end if;
            end if; 
        end if;
    end process;

    b8_num_load_5956_fu_54_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    b8_num_load_5956_fu_54 <= b8_num_load_5958;
                elsif ((ap_const_boolean_1 = ap_condition_172)) then 
                    b8_num_load_5956_fu_54 <= ap_const_lv32_0;
                end if;
            end if; 
        end if;
    end process;

    b8_num_load_6964_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    b8_num_load_6964_fu_58 <= b8_num_load_6966;
                elsif ((ap_const_boolean_1 = ap_condition_176)) then 
                    b8_num_load_6964_fu_58 <= ap_const_lv32_0;
                end if;
            end if; 
        end if;
    end process;

    base_12_fu_46_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    base_12_fu_46 <= zext_ln102_2_cast_fu_117_p1;
                elsif (((icmp_ln102_fu_144_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    base_12_fu_46 <= add_ln103_fu_149_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    zext_ln102_9_cast_reg_219(2 downto 0) <= zext_ln102_9_cast_fu_113_p1(2 downto 0);
            end if;
        end if;
    end process;
    zext_ln102_9_cast_reg_219(63 downto 3) <= "0000000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln103_fu_149_p2 <= std_logic_vector(unsigned(base_12_fu_46) + unsigned(ap_const_lv64_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_169_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln102_fu_144_p2, trunc_ln103_fu_155_p1)
    begin
                ap_condition_169 <= ((trunc_ln103_fu_155_p1 = ap_const_lv2_0) and (icmp_ln102_fu_144_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_172_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln102_fu_144_p2, trunc_ln103_fu_155_p1)
    begin
                ap_condition_172 <= ((trunc_ln103_fu_155_p1 = ap_const_lv2_1) and (icmp_ln102_fu_144_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_176_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln102_fu_144_p2, trunc_ln103_fu_155_p1)
    begin
                ap_condition_176 <= (not((trunc_ln103_fu_155_p1 = ap_const_lv2_1)) and not((trunc_ln103_fu_155_p1 = ap_const_lv2_0)) and (icmp_ln102_fu_144_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln102_fu_144_p2)
    begin
        if (((icmp_ln102_fu_144_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    b8_num_load_4950_out <= b8_num_load_4950_fu_50;

    b8_num_load_4950_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln102_fu_144_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln102_fu_144_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            b8_num_load_4950_out_ap_vld <= ap_const_logic_1;
        else 
            b8_num_load_4950_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    b8_num_load_5956_out <= b8_num_load_5956_fu_54;

    b8_num_load_5956_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln102_fu_144_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln102_fu_144_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            b8_num_load_5956_out_ap_vld <= ap_const_logic_1;
        else 
            b8_num_load_5956_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    b8_num_load_6964_out <= b8_num_load_6964_fu_58;

    b8_num_load_6964_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln102_fu_144_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln102_fu_144_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            b8_num_load_6964_out_ap_vld <= ap_const_logic_1;
        else 
            b8_num_load_6964_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln102_fu_144_p2 <= "1" when (base_12_fu_46 = zext_ln102_9_cast_reg_219) else "0";
    trunc_ln103_fu_155_p1 <= base_12_fu_46(2 - 1 downto 0);
    zext_ln102_2_cast_fu_117_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln102_2),64));
    zext_ln102_9_cast_fu_113_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln102_9),64));
end behav;

-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity main_operator_2_Pipeline_VITIS_LOOP_215_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_read47 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read58 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_read6 : IN STD_LOGIC_VECTOR (31 downto 0);
    den_norm_1_020_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    den_norm_1_020_out_ap_vld : OUT STD_LOGIC;
    den_norm_2_019_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    den_norm_2_019_out_ap_vld : OUT STD_LOGIC;
    den_norm_28_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    den_norm_28_out_ap_vld : OUT STD_LOGIC;
    den_norm_17_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    den_norm_17_out_ap_vld : OUT STD_LOGIC;
    grp_fu_319_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_319_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_319_p_dout0 : IN STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_319_p_ce : OUT STD_LOGIC );
end;


architecture behav of main_operator_2_Pipeline_VITIS_LOOP_215_1 is 
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
    constant ap_const_lv32_80000000 : STD_LOGIC_VECTOR (31 downto 0) := "10000000000000000000000000000000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter5 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter6 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter7 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter8 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter9 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter10 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter5 : BOOLEAN;
    signal ap_block_state7_pp0_stage0_iter6 : BOOLEAN;
    signal ap_block_state8_pp0_stage0_iter7 : BOOLEAN;
    signal ap_block_state9_pp0_stage0_iter8 : BOOLEAN;
    signal ap_block_state10_pp0_stage0_iter9 : BOOLEAN;
    signal ap_block_state11_pp0_stage0_iter10 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln215_fu_120_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln215_reg_277 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln215_reg_277_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln215_reg_277_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln215_reg_277_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln215_reg_277_pp0_iter4_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln215_reg_277_pp0_iter5_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln215_reg_277_pp0_iter6_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln215_reg_277_pp0_iter7_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln215_reg_277_pp0_iter8_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln216_fu_126_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln216_reg_281 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln216_reg_281_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln216_reg_281_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln216_reg_281_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln216_reg_281_pp0_iter4_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln216_reg_281_pp0_iter5_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln216_reg_281_pp0_iter6_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln216_reg_281_pp0_iter7_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln216_reg_281_pp0_iter8_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln216_reg_281_pp0_iter9_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln216_fu_144_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal xor_ln216_reg_289 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln216_1_fu_161_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal den_norm_2_reg_299 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fu_42 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln215_fu_150_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_10 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal den_norm_17_fu_46 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln216_4_fu_195_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal den_norm_28_fu_50 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln216_3_fu_189_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal den_norm_2_019_fu_54 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln216_2_fu_183_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal den_norm_1_020_fu_58 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln216_fu_177_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal select_ln216_1_fu_132_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln216_fu_140_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter5_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter6_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter7_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter8_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter9_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component main_fdiv_32ns_32ns_32_9_no_dsp_1 IS
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter9_reg = ap_const_logic_1))) then 
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


    ap_enable_reg_pp0_iter10_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter10 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
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


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter5_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter5 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter6_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter6 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter7_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter7 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter8_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter8 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter9_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter9 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
                end if; 
            end if;
        end if;
    end process;


    i_fu_42_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln215_fu_120_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_42 <= add_ln215_fu_150_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_42 <= ap_const_lv2_1;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                icmp_ln215_reg_277 <= icmp_ln215_fu_120_p2;
                icmp_ln215_reg_277_pp0_iter1_reg <= icmp_ln215_reg_277;
                icmp_ln216_reg_281_pp0_iter1_reg <= icmp_ln216_reg_281;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
                ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
                ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
                ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
                ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
                ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
                den_norm_2_reg_299 <= grp_fu_319_p_dout0;
                icmp_ln215_reg_277_pp0_iter2_reg <= icmp_ln215_reg_277_pp0_iter1_reg;
                icmp_ln215_reg_277_pp0_iter3_reg <= icmp_ln215_reg_277_pp0_iter2_reg;
                icmp_ln215_reg_277_pp0_iter4_reg <= icmp_ln215_reg_277_pp0_iter3_reg;
                icmp_ln215_reg_277_pp0_iter5_reg <= icmp_ln215_reg_277_pp0_iter4_reg;
                icmp_ln215_reg_277_pp0_iter6_reg <= icmp_ln215_reg_277_pp0_iter5_reg;
                icmp_ln215_reg_277_pp0_iter7_reg <= icmp_ln215_reg_277_pp0_iter6_reg;
                icmp_ln215_reg_277_pp0_iter8_reg <= icmp_ln215_reg_277_pp0_iter7_reg;
                icmp_ln216_reg_281_pp0_iter2_reg <= icmp_ln216_reg_281_pp0_iter1_reg;
                icmp_ln216_reg_281_pp0_iter3_reg <= icmp_ln216_reg_281_pp0_iter2_reg;
                icmp_ln216_reg_281_pp0_iter4_reg <= icmp_ln216_reg_281_pp0_iter3_reg;
                icmp_ln216_reg_281_pp0_iter5_reg <= icmp_ln216_reg_281_pp0_iter4_reg;
                icmp_ln216_reg_281_pp0_iter6_reg <= icmp_ln216_reg_281_pp0_iter5_reg;
                icmp_ln216_reg_281_pp0_iter7_reg <= icmp_ln216_reg_281_pp0_iter6_reg;
                icmp_ln216_reg_281_pp0_iter8_reg <= icmp_ln216_reg_281_pp0_iter7_reg;
                icmp_ln216_reg_281_pp0_iter9_reg <= icmp_ln216_reg_281_pp0_iter8_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter10 = ap_const_logic_1))) then
                den_norm_17_fu_46 <= select_ln216_4_fu_195_p3;
                den_norm_1_020_fu_58 <= select_ln216_fu_177_p3;
                den_norm_28_fu_50 <= select_ln216_3_fu_189_p3;
                den_norm_2_019_fu_54 <= select_ln216_2_fu_183_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln215_fu_120_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln216_reg_281 <= icmp_ln216_fu_126_p2;
                xor_ln216_reg_289 <= xor_ln216_fu_144_p2;
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
    add_ln215_fu_150_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_10) + unsigned(ap_const_lv2_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state10_pp0_stage0_iter9 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state11_pp0_stage0_iter10 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage0_iter6 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state8_pp0_stage0_iter7 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state9_pp0_stage0_iter8 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln215_fu_120_p2)
    begin
        if (((icmp_ln215_fu_120_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter9_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter9_reg = ap_const_logic_1))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5, ap_enable_reg_pp0_iter6, ap_enable_reg_pp0_iter7, ap_enable_reg_pp0_iter8, ap_enable_reg_pp0_iter9, ap_enable_reg_pp0_iter10)
    begin
        if (((ap_enable_reg_pp0_iter10 = ap_const_logic_0) and (ap_enable_reg_pp0_iter9 = ap_const_logic_0) and (ap_enable_reg_pp0_iter8 = ap_const_logic_0) and (ap_enable_reg_pp0_iter7 = ap_const_logic_0) and (ap_enable_reg_pp0_iter6 = ap_const_logic_0) and (ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
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


    ap_sig_allocacmp_i_10_assign_proc : process(ap_CS_fsm_pp0_stage0, i_fu_42, ap_loop_init, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_10 <= ap_const_lv2_1;
        else 
            ap_sig_allocacmp_i_10 <= i_fu_42;
        end if; 
    end process;

    bitcast_ln216_1_fu_161_p1 <= xor_ln216_reg_289;
    bitcast_ln216_fu_140_p1 <= select_ln216_1_fu_132_p3;
    den_norm_17_out <= den_norm_17_fu_46;

    den_norm_17_out_ap_vld_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln215_reg_277_pp0_iter8_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln215_reg_277_pp0_iter8_reg = ap_const_lv1_1))) then 
            den_norm_17_out_ap_vld <= ap_const_logic_1;
        else 
            den_norm_17_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    den_norm_1_020_out <= den_norm_1_020_fu_58;

    den_norm_1_020_out_ap_vld_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln215_reg_277_pp0_iter8_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln215_reg_277_pp0_iter8_reg = ap_const_lv1_1))) then 
            den_norm_1_020_out_ap_vld <= ap_const_logic_1;
        else 
            den_norm_1_020_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    den_norm_28_out <= den_norm_28_fu_50;

    den_norm_28_out_ap_vld_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln215_reg_277_pp0_iter8_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln215_reg_277_pp0_iter8_reg = ap_const_lv1_1))) then 
            den_norm_28_out_ap_vld <= ap_const_logic_1;
        else 
            den_norm_28_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    den_norm_2_019_out <= den_norm_2_019_fu_54;

    den_norm_2_019_out_ap_vld_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln215_reg_277_pp0_iter8_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln215_reg_277_pp0_iter8_reg = ap_const_lv1_1))) then 
            den_norm_2_019_out_ap_vld <= ap_const_logic_1;
        else 
            den_norm_2_019_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_319_p_ce <= ap_const_logic_1;
    grp_fu_319_p_din0 <= bitcast_ln216_1_fu_161_p1;
    grp_fu_319_p_din1 <= p_read6;
    icmp_ln215_fu_120_p2 <= "1" when (ap_sig_allocacmp_i_10 = ap_const_lv2_3) else "0";
    icmp_ln216_fu_126_p2 <= "1" when (ap_sig_allocacmp_i_10 = ap_const_lv2_1) else "0";
    select_ln216_1_fu_132_p3 <= 
        p_read47 when (icmp_ln216_fu_126_p2(0) = '1') else 
        p_read58;
    select_ln216_2_fu_183_p3 <= 
        den_norm_2_019_fu_54 when (icmp_ln216_reg_281_pp0_iter9_reg(0) = '1') else 
        den_norm_2_reg_299;
    select_ln216_3_fu_189_p3 <= 
        den_norm_28_fu_50 when (icmp_ln216_reg_281_pp0_iter9_reg(0) = '1') else 
        den_norm_2_reg_299;
    select_ln216_4_fu_195_p3 <= 
        den_norm_2_reg_299 when (icmp_ln216_reg_281_pp0_iter9_reg(0) = '1') else 
        den_norm_17_fu_46;
    select_ln216_fu_177_p3 <= 
        den_norm_2_reg_299 when (icmp_ln216_reg_281_pp0_iter9_reg(0) = '1') else 
        den_norm_1_020_fu_58;
    xor_ln216_fu_144_p2 <= (bitcast_ln216_fu_140_p1 xor ap_const_lv32_80000000);
end behav;

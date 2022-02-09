-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ban_interface_ban_interface_Pipeline_VITIS_LOOP_53_14 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    b_op1_load : IN STD_LOGIC_VECTOR (127 downto 0);
    b_op2_load : IN STD_LOGIC_VECTOR (127 downto 0);
    res_2_out : OUT STD_LOGIC_VECTOR (0 downto 0);
    res_2_out_ap_vld : OUT STD_LOGIC;
    grp_fu_7441_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_7441_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_7441_p_opcode : OUT STD_LOGIC_VECTOR (4 downto 0);
    grp_fu_7441_p_dout0 : IN STD_LOGIC_VECTOR (0 downto 0);
    grp_fu_7441_p_ce : OUT STD_LOGIC );
end;


architecture behav of ban_interface_ban_interface_Pipeline_VITIS_LOOP_53_14 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv7_20 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_const_lv7_3F : STD_LOGIC_VECTOR (6 downto 0) := "0111111";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv128_lc_1 : STD_LOGIC_VECTOR (127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv128_lc_2 : STD_LOGIC_VECTOR (127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv97_1 : STD_LOGIC_VECTOR (96 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv23_0 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000000";
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
    signal icmp_ln53_fu_114_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal res_2_reg_89 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln53_reg_336 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln53_reg_336_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln54_fu_218_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln54_reg_340 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln54_1_fu_234_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln54_1_reg_345 : STD_LOGIC_VECTOR (31 downto 0);
    signal notlhs945_fu_266_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal notlhs945_reg_350 : STD_LOGIC_VECTOR (0 downto 0);
    signal notlhs945_reg_350_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal notrhs946_fu_272_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal notrhs946_reg_355 : STD_LOGIC_VECTOR (0 downto 0);
    signal notrhs946_reg_355_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal notlhs947_fu_278_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal notlhs947_reg_360 : STD_LOGIC_VECTOR (0 downto 0);
    signal notlhs947_reg_360_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal notrhs948_fu_284_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal notrhs948_reg_365 : STD_LOGIC_VECTOR (0 downto 0);
    signal notrhs948_reg_365_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal bitcast_ln54_fu_295_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln54_1_fu_299_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal res_fu_323_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_loop_init : STD_LOGIC;
    signal i_5_fu_66 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln53_fu_120_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_allocacmp_i : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal shl_ln54_3_fu_126_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln54_fu_134_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln54_1_fu_140_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln54_2_fu_154_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln54_2_fu_158_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln54_3_fu_164_p1 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_fu_174_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal shl_ln54_fu_168_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal zext_ln54_1_fu_150_p1 : STD_LOGIC_VECTOR (96 downto 0);
    signal shl_ln54_1_fu_190_p2 : STD_LOGIC_VECTOR (96 downto 0);
    signal select_ln54_fu_182_p3 : STD_LOGIC_VECTOR (127 downto 0);
    signal zext_ln54_4_fu_196_p1 : STD_LOGIC_VECTOR (127 downto 0);
    signal sub_ln54_fu_200_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal and_ln54_fu_206_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal zext_ln54_fu_146_p1 : STD_LOGIC_VECTOR (127 downto 0);
    signal lshr_ln54_fu_212_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal and_ln54_1_fu_222_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal lshr_ln54_1_fu_228_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_s_fu_238_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal empty_59_fu_248_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_94_fu_252_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal empty_60_fu_262_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal empty_61_fu_303_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_62_fu_307_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_63_fu_311_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_64_fu_317_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_00001 : BOOLEAN;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component ban_interface_fcmp_32ns_32ns_1_2_no_dsp_1 IS
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


    component ban_interface_flow_control_loop_pipe_sequential_init IS
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
    flow_control_loop_pipe_sequential_init_U : component ban_interface_flow_control_loop_pipe_sequential_init
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
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    i_5_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln53_fu_114_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_5_fu_66 <= add_ln53_fu_120_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_5_fu_66 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;

    res_2_reg_89_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                res_2_reg_89 <= ap_const_lv1_1;
            elsif (((icmp_ln53_reg_336_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
                res_2_reg_89 <= res_fu_323_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                icmp_ln53_reg_336 <= icmp_ln53_fu_114_p2;
                icmp_ln53_reg_336_pp0_iter1_reg <= icmp_ln53_reg_336;
                notlhs945_reg_350_pp0_iter1_reg <= notlhs945_reg_350;
                notlhs947_reg_360_pp0_iter1_reg <= notlhs947_reg_360;
                notrhs946_reg_355_pp0_iter1_reg <= notrhs946_reg_355;
                notrhs948_reg_365_pp0_iter1_reg <= notrhs948_reg_365;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln53_fu_114_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                notlhs945_reg_350 <= notlhs945_fu_266_p2;
                notlhs947_reg_360 <= notlhs947_fu_278_p2;
                notrhs946_reg_355 <= notrhs946_fu_272_p2;
                notrhs948_reg_365 <= notrhs948_fu_284_p2;
                trunc_ln54_1_reg_345 <= trunc_ln54_1_fu_234_p1;
                trunc_ln54_reg_340 <= trunc_ln54_fu_218_p1;
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
    add_ln53_fu_120_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i) + unsigned(ap_const_lv2_1));
    add_ln54_1_fu_140_p2 <= std_logic_vector(unsigned(shl_ln54_3_fu_126_p3) + unsigned(ap_const_lv7_3F));
    add_ln54_2_fu_158_p2 <= std_logic_vector(unsigned(zext_ln54_2_fu_154_p1) + unsigned(ap_const_lv8_1));
    add_ln54_fu_134_p2 <= std_logic_vector(unsigned(shl_ln54_3_fu_126_p3) + unsigned(ap_const_lv7_20));
    and_ln54_1_fu_222_p2 <= (sub_ln54_fu_200_p2 and b_op2_load);
    and_ln54_fu_206_p2 <= (sub_ln54_fu_200_p2 and b_op1_load);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_00001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln53_fu_114_p2)
    begin
        if (((icmp_ln53_fu_114_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln53_reg_336)
    begin
        if (((icmp_ln53_reg_336 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
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
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    ap_sig_allocacmp_i_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, i_5_fu_66)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_i <= i_5_fu_66;
        end if; 
    end process;

    bitcast_ln54_1_fu_299_p1 <= trunc_ln54_1_reg_345;
    bitcast_ln54_fu_295_p1 <= trunc_ln54_reg_340;
    empty_59_fu_248_p1 <= lshr_ln54_fu_212_p2(23 - 1 downto 0);
    empty_60_fu_262_p1 <= lshr_ln54_1_fu_228_p2(23 - 1 downto 0);
    empty_61_fu_303_p2 <= (notrhs946_reg_355_pp0_iter1_reg or notlhs945_reg_350_pp0_iter1_reg);
    empty_62_fu_307_p2 <= (notrhs948_reg_365_pp0_iter1_reg or notlhs947_reg_360_pp0_iter1_reg);
    empty_63_fu_311_p2 <= (empty_62_fu_307_p2 and empty_61_fu_303_p2);
    empty_64_fu_317_p2 <= (grp_fu_7441_p_dout0 and empty_63_fu_311_p2);
    grp_fu_7441_p_ce <= ap_const_logic_1;
    grp_fu_7441_p_din0 <= bitcast_ln54_fu_295_p1;
    grp_fu_7441_p_din1 <= bitcast_ln54_1_fu_299_p1;
    grp_fu_7441_p_opcode <= ap_const_lv5_1;
    icmp_ln53_fu_114_p2 <= "1" when (ap_sig_allocacmp_i = ap_const_lv2_3) else "0";
    lshr_ln54_1_fu_228_p2 <= std_logic_vector(shift_right(unsigned(and_ln54_1_fu_222_p2),to_integer(unsigned('0' & zext_ln54_fu_146_p1(31-1 downto 0)))));
    lshr_ln54_fu_212_p2 <= std_logic_vector(shift_right(unsigned(and_ln54_fu_206_p2),to_integer(unsigned('0' & zext_ln54_fu_146_p1(31-1 downto 0)))));
    notlhs945_fu_266_p2 <= "0" when (tmp_s_fu_238_p4 = ap_const_lv8_FF) else "1";
    notlhs947_fu_278_p2 <= "0" when (tmp_94_fu_252_p4 = ap_const_lv8_FF) else "1";
    notrhs946_fu_272_p2 <= "1" when (empty_59_fu_248_p1 = ap_const_lv23_0) else "0";
    notrhs948_fu_284_p2 <= "1" when (empty_60_fu_262_p1 = ap_const_lv23_0) else "0";
    res_2_out <= res_2_reg_89;

    res_2_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln53_reg_336, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln53_reg_336 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            res_2_out_ap_vld <= ap_const_logic_1;
        else 
            res_2_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    res_fu_323_p2 <= (res_2_reg_89 and empty_64_fu_317_p2);
    select_ln54_fu_182_p3 <= 
        ap_const_lv128_lc_2 when (tmp_fu_174_p3(0) = '1') else 
        shl_ln54_fu_168_p2;
    shl_ln54_1_fu_190_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv97_1),to_integer(unsigned('0' & zext_ln54_1_fu_150_p1(31-1 downto 0)))));
    shl_ln54_3_fu_126_p3 <= (ap_sig_allocacmp_i & ap_const_lv5_0);
    shl_ln54_fu_168_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv128_lc_1),to_integer(unsigned('0' & zext_ln54_3_fu_164_p1(31-1 downto 0)))));
    sub_ln54_fu_200_p2 <= std_logic_vector(unsigned(select_ln54_fu_182_p3) - unsigned(zext_ln54_4_fu_196_p1));
    tmp_94_fu_252_p4 <= lshr_ln54_1_fu_228_p2(30 downto 23);
    tmp_fu_174_p3 <= add_ln54_2_fu_158_p2(7 downto 7);
    tmp_s_fu_238_p4 <= lshr_ln54_fu_212_p2(30 downto 23);
    trunc_ln54_1_fu_234_p1 <= lshr_ln54_1_fu_228_p2(32 - 1 downto 0);
    trunc_ln54_fu_218_p1 <= lshr_ln54_fu_212_p2(32 - 1 downto 0);
    zext_ln54_1_fu_150_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln54_fu_134_p2),97));
    zext_ln54_2_fu_154_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln54_1_fu_140_p2),8));
    zext_ln54_3_fu_164_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln54_2_fu_158_p2),128));
    zext_ln54_4_fu_196_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln54_1_fu_190_p2),128));
    zext_ln54_fu_146_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln54_fu_134_p2),128));
end behav;
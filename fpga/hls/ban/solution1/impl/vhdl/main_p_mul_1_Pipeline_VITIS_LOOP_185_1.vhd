-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity main_p_mul_1_Pipeline_VITIS_LOOP_185_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    aux_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    aux_ce0 : OUT STD_LOGIC;
    aux_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    write_flag5_0_out : OUT STD_LOGIC_VECTOR (0 downto 0);
    write_flag5_0_out_ap_vld : OUT STD_LOGIC;
    num_res_08_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    num_res_08_out_ap_vld : OUT STD_LOGIC;
    num_res5_07_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    num_res5_07_out_ap_vld : OUT STD_LOGIC;
    write_flag8_0_out : OUT STD_LOGIC_VECTOR (0 downto 0);
    write_flag8_0_out_ap_vld : OUT STD_LOGIC;
    write_flag_0_out : OUT STD_LOGIC_VECTOR (0 downto 0);
    write_flag_0_out_ap_vld : OUT STD_LOGIC;
    num_res6_06_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    num_res6_06_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of main_p_mul_1_Pipeline_VITIS_LOOP_185_1 is 
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
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";

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
    signal icmp_ln185_fu_154_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal i_reg_276 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal trunc_ln186_cast_fu_166_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal i_5_fu_48 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln185_fu_160_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i : STD_LOGIC_VECTOR (1 downto 0);
    signal num_res6_06_fu_52 : STD_LOGIC_VECTOR (31 downto 0);
    signal write_flag_0_fu_56 : STD_LOGIC_VECTOR (0 downto 0);
    signal write_flag8_0_fu_60 : STD_LOGIC_VECTOR (0 downto 0);
    signal num_res5_07_fu_64 : STD_LOGIC_VECTOR (31 downto 0);
    signal num_res_08_fu_68 : STD_LOGIC_VECTOR (31 downto 0);
    signal write_flag5_0_fu_72 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_183 : BOOLEAN;
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    i_5_fu_48_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln185_fu_154_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_5_fu_48 <= add_ln185_fu_160_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_5_fu_48 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;

    write_flag5_0_fu_72_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    write_flag5_0_fu_72 <= ap_const_lv1_0;
                elsif (((i_reg_276 = ap_const_lv2_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    write_flag5_0_fu_72 <= ap_const_lv1_1;
                end if;
            end if; 
        end if;
    end process;

    write_flag8_0_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    write_flag8_0_fu_60 <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_183)) then 
                    write_flag8_0_fu_60 <= ap_const_lv1_1;
                end if;
            end if; 
        end if;
    end process;

    write_flag_0_fu_56_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    write_flag_0_fu_56 <= ap_const_lv1_0;
                elsif (((i_reg_276 = ap_const_lv2_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    write_flag_0_fu_56 <= ap_const_lv1_1;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                i_reg_276 <= ap_sig_allocacmp_i;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((i_reg_276 = ap_const_lv2_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                num_res5_07_fu_64 <= aux_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((i_reg_276 = ap_const_lv2_0)) and not((i_reg_276 = ap_const_lv2_1)) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                num_res6_06_fu_52 <= aux_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((i_reg_276 = ap_const_lv2_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                num_res_08_fu_68 <= aux_q0;
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
    add_ln185_fu_160_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i) + unsigned(ap_const_lv2_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_183_assign_proc : process(ap_enable_reg_pp0_iter1, i_reg_276)
    begin
                ap_condition_183 <= (not((i_reg_276 = ap_const_lv2_0)) and not((i_reg_276 = ap_const_lv2_1)) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln185_fu_154_p2)
    begin
        if (((icmp_ln185_fu_154_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
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

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_5_fu_48, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_i <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_i <= i_5_fu_48;
        end if; 
    end process;

    aux_address0 <= trunc_ln186_cast_fu_166_p1(3 - 1 downto 0);

    aux_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            aux_ce0 <= ap_const_logic_1;
        else 
            aux_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln185_fu_154_p2 <= "1" when (ap_sig_allocacmp_i = ap_const_lv2_3) else "0";
    num_res5_07_out <= num_res5_07_fu_64;

    num_res5_07_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln185_fu_154_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln185_fu_154_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            num_res5_07_out_ap_vld <= ap_const_logic_1;
        else 
            num_res5_07_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    num_res6_06_out <= num_res6_06_fu_52;

    num_res6_06_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln185_fu_154_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln185_fu_154_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            num_res6_06_out_ap_vld <= ap_const_logic_1;
        else 
            num_res6_06_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    num_res_08_out <= num_res_08_fu_68;

    num_res_08_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln185_fu_154_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln185_fu_154_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            num_res_08_out_ap_vld <= ap_const_logic_1;
        else 
            num_res_08_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln186_cast_fu_166_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i),64));
    write_flag5_0_out <= write_flag5_0_fu_72;

    write_flag5_0_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln185_fu_154_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln185_fu_154_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            write_flag5_0_out_ap_vld <= ap_const_logic_1;
        else 
            write_flag5_0_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    write_flag8_0_out <= write_flag8_0_fu_60;

    write_flag8_0_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln185_fu_154_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln185_fu_154_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            write_flag8_0_out_ap_vld <= ap_const_logic_1;
        else 
            write_flag8_0_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    write_flag_0_out <= write_flag_0_fu_56;

    write_flag_0_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln185_fu_154_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln185_fu_154_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            write_flag_0_out_ap_vld <= ap_const_logic_1;
        else 
            write_flag_0_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;

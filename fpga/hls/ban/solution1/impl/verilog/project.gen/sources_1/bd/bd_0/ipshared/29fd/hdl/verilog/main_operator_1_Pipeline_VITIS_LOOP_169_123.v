// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module main_operator_1_Pipeline_VITIS_LOOP_169_123 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        eps_tmp_0_04_reload,
        eps_tmp_1_05_reload,
        eps_tmp_2_01_reload,
        b_norm_load_reload,
        b_norm_load_1_reload,
        aux_address0,
        aux_ce0,
        aux_we0,
        aux_d0,
        grp_fu_1028_p_din0,
        grp_fu_1028_p_din1,
        grp_fu_1028_p_opcode,
        grp_fu_1028_p_dout0,
        grp_fu_1028_p_ce,
        grp_fu_1032_p_din0,
        grp_fu_1032_p_din1,
        grp_fu_1032_p_opcode,
        grp_fu_1032_p_dout0,
        grp_fu_1032_p_ce,
        grp_fu_1036_p_din0,
        grp_fu_1036_p_din1,
        grp_fu_1036_p_opcode,
        grp_fu_1036_p_dout0,
        grp_fu_1036_p_ce,
        grp_fu_1024_p_din0,
        grp_fu_1024_p_din1,
        grp_fu_1024_p_dout0,
        grp_fu_1024_p_ce,
        grp_fu_1040_p_din0,
        grp_fu_1040_p_din1,
        grp_fu_1040_p_dout0,
        grp_fu_1040_p_ce,
        grp_fu_1044_p_din0,
        grp_fu_1044_p_din1,
        grp_fu_1044_p_dout0,
        grp_fu_1044_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] eps_tmp_0_04_reload;
input  [31:0] eps_tmp_1_05_reload;
input  [31:0] eps_tmp_2_01_reload;
input  [31:0] b_norm_load_reload;
input  [31:0] b_norm_load_1_reload;
output  [2:0] aux_address0;
output   aux_ce0;
output   aux_we0;
output  [31:0] aux_d0;
output  [31:0] grp_fu_1028_p_din0;
output  [31:0] grp_fu_1028_p_din1;
output  [1:0] grp_fu_1028_p_opcode;
input  [31:0] grp_fu_1028_p_dout0;
output   grp_fu_1028_p_ce;
output  [31:0] grp_fu_1032_p_din0;
output  [31:0] grp_fu_1032_p_din1;
output  [1:0] grp_fu_1032_p_opcode;
input  [31:0] grp_fu_1032_p_dout0;
output   grp_fu_1032_p_ce;
output  [31:0] grp_fu_1036_p_din0;
output  [31:0] grp_fu_1036_p_din1;
output  [1:0] grp_fu_1036_p_opcode;
input  [31:0] grp_fu_1036_p_dout0;
output   grp_fu_1036_p_ce;
output  [31:0] grp_fu_1024_p_din0;
output  [31:0] grp_fu_1024_p_din1;
input  [31:0] grp_fu_1024_p_dout0;
output   grp_fu_1024_p_ce;
output  [31:0] grp_fu_1040_p_din0;
output  [31:0] grp_fu_1040_p_din1;
input  [31:0] grp_fu_1040_p_dout0;
output   grp_fu_1040_p_ce;
output  [31:0] grp_fu_1044_p_din0;
output  [31:0] grp_fu_1044_p_din1;
input  [31:0] grp_fu_1044_p_dout0;
output   grp_fu_1044_p_ce;

reg ap_idle;
reg aux_ce0;
reg aux_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
wire    ap_block_state12_pp0_stage0_iter11;
wire    ap_block_state13_pp0_stage0_iter12;
wire    ap_block_state14_pp0_stage0_iter13;
wire    ap_block_state15_pp0_stage0_iter14;
wire    ap_block_state16_pp0_stage0_iter15;
wire    ap_block_state17_pp0_stage0_iter16;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln169_fu_135_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [2:0] i_reg_282;
reg   [2:0] i_reg_282_pp0_iter1_reg;
reg   [2:0] i_reg_282_pp0_iter2_reg;
reg   [2:0] i_reg_282_pp0_iter3_reg;
reg   [2:0] i_reg_282_pp0_iter4_reg;
reg   [2:0] i_reg_282_pp0_iter5_reg;
reg   [2:0] i_reg_282_pp0_iter6_reg;
reg   [2:0] i_reg_282_pp0_iter7_reg;
reg   [2:0] i_reg_282_pp0_iter8_reg;
reg   [2:0] i_reg_282_pp0_iter9_reg;
reg   [2:0] i_reg_282_pp0_iter10_reg;
reg   [2:0] i_reg_282_pp0_iter11_reg;
reg   [2:0] i_reg_282_pp0_iter12_reg;
reg   [2:0] i_reg_282_pp0_iter13_reg;
reg   [2:0] i_reg_282_pp0_iter14_reg;
reg   [2:0] i_reg_282_pp0_iter15_reg;
wire   [0:0] icmp_ln172_fu_147_p2;
reg   [0:0] icmp_ln172_reg_293;
reg   [0:0] icmp_ln172_reg_293_pp0_iter1_reg;
reg   [0:0] icmp_ln172_reg_293_pp0_iter2_reg;
reg   [0:0] icmp_ln172_reg_293_pp0_iter3_reg;
reg   [0:0] icmp_ln172_reg_293_pp0_iter4_reg;
reg   [0:0] icmp_ln172_reg_293_pp0_iter5_reg;
reg   [0:0] icmp_ln172_reg_293_pp0_iter6_reg;
wire   [1:0] trunc_ln173_fu_153_p1;
reg   [1:0] trunc_ln173_reg_298;
reg   [1:0] trunc_ln173_reg_298_pp0_iter1_reg;
reg   [1:0] trunc_ln173_reg_298_pp0_iter2_reg;
reg   [1:0] trunc_ln173_reg_298_pp0_iter3_reg;
reg   [1:0] trunc_ln173_reg_298_pp0_iter4_reg;
reg   [1:0] trunc_ln173_reg_298_pp0_iter5_reg;
reg   [1:0] trunc_ln173_reg_298_pp0_iter6_reg;
reg   [1:0] trunc_ln173_reg_298_pp0_iter7_reg;
wire   [31:0] tmp_s_fu_157_p5;
reg   [31:0] tmp_s_reg_304;
reg   [31:0] mul_i_i1_reg_309;
wire   [0:0] icmp_ln172_3_fu_179_p2;
reg   [0:0] icmp_ln172_3_reg_314;
reg   [0:0] icmp_ln172_3_reg_314_pp0_iter5_reg;
reg   [0:0] icmp_ln172_3_reg_314_pp0_iter6_reg;
reg   [0:0] icmp_ln172_3_reg_314_pp0_iter7_reg;
reg   [0:0] icmp_ln172_3_reg_314_pp0_iter8_reg;
reg   [0:0] icmp_ln172_3_reg_314_pp0_iter9_reg;
reg   [0:0] icmp_ln172_3_reg_314_pp0_iter10_reg;
wire   [31:0] tmp_38_fu_190_p5;
reg   [31:0] tmp_38_reg_319;
wire   [31:0] tmp_40_fu_199_p3;
reg   [31:0] tmp_40_reg_324;
reg   [31:0] tmp_40_reg_324_pp0_iter8_reg;
reg   [31:0] tmp_40_reg_324_pp0_iter9_reg;
reg   [31:0] tmp_40_reg_324_pp0_iter10_reg;
reg   [31:0] mul_1_i_i1_reg_330;
wire   [0:0] icmp_ln172_4_fu_211_p2;
reg   [0:0] icmp_ln172_4_reg_335;
reg   [0:0] icmp_ln172_4_reg_335_pp0_iter9_reg;
reg   [0:0] icmp_ln172_4_reg_335_pp0_iter10_reg;
reg   [0:0] icmp_ln172_4_reg_335_pp0_iter11_reg;
reg   [0:0] icmp_ln172_4_reg_335_pp0_iter12_reg;
reg   [0:0] icmp_ln172_4_reg_335_pp0_iter13_reg;
reg   [0:0] icmp_ln172_4_reg_335_pp0_iter14_reg;
wire   [31:0] tmp_39_fu_222_p5;
reg   [31:0] tmp_39_reg_340;
wire   [31:0] tmp_42_fu_231_p3;
reg   [31:0] tmp_42_reg_345;
reg   [31:0] tmp_42_reg_345_pp0_iter12_reg;
reg   [31:0] tmp_42_reg_345_pp0_iter13_reg;
reg   [31:0] tmp_42_reg_345_pp0_iter14_reg;
reg   [31:0] mul_2_i_i1_reg_351;
wire   [31:0] tmp_44_fu_237_p3;
reg   [31:0] tmp_44_reg_356;
wire   [63:0] trunc_ln172_1_cast_fu_243_p1;
wire    ap_block_pp0_stage0;
reg   [2:0] i_9_fu_54;
wire   [2:0] add_ln169_fu_141_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i;
wire   [1:0] tmp_s_fu_157_p4;
wire   [2:0] add_ln172_fu_174_p2;
wire   [1:0] tmp_38_fu_190_p4;
wire   [2:0] add_ln172_2_fu_206_p2;
wire   [1:0] tmp_39_fu_222_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_block_pp0_stage0_00001;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_done_reg = 1'b0;
end

main_mux_32_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_32_32_1_1_U811(
    .din0(eps_tmp_0_04_reload),
    .din1(eps_tmp_1_05_reload),
    .din2(eps_tmp_2_01_reload),
    .din3(tmp_s_fu_157_p4),
    .dout(tmp_s_fu_157_p5)
);

main_mux_32_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_32_32_1_1_U812(
    .din0(eps_tmp_0_04_reload),
    .din1(eps_tmp_1_05_reload),
    .din2(eps_tmp_2_01_reload),
    .din3(tmp_38_fu_190_p4),
    .dout(tmp_38_fu_190_p5)
);

main_mux_32_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_32_32_1_1_U813(
    .din0(eps_tmp_0_04_reload),
    .din1(eps_tmp_1_05_reload),
    .din2(eps_tmp_2_01_reload),
    .din3(tmp_39_fu_222_p4),
    .dout(tmp_39_fu_222_p5)
);

main_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln169_fu_135_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_9_fu_54 <= add_ln169_fu_141_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_9_fu_54 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        i_reg_282_pp0_iter10_reg <= i_reg_282_pp0_iter9_reg;
        i_reg_282_pp0_iter11_reg <= i_reg_282_pp0_iter10_reg;
        i_reg_282_pp0_iter12_reg <= i_reg_282_pp0_iter11_reg;
        i_reg_282_pp0_iter13_reg <= i_reg_282_pp0_iter12_reg;
        i_reg_282_pp0_iter14_reg <= i_reg_282_pp0_iter13_reg;
        i_reg_282_pp0_iter15_reg <= i_reg_282_pp0_iter14_reg;
        i_reg_282_pp0_iter2_reg <= i_reg_282_pp0_iter1_reg;
        i_reg_282_pp0_iter3_reg <= i_reg_282_pp0_iter2_reg;
        i_reg_282_pp0_iter4_reg <= i_reg_282_pp0_iter3_reg;
        i_reg_282_pp0_iter5_reg <= i_reg_282_pp0_iter4_reg;
        i_reg_282_pp0_iter6_reg <= i_reg_282_pp0_iter5_reg;
        i_reg_282_pp0_iter7_reg <= i_reg_282_pp0_iter6_reg;
        i_reg_282_pp0_iter8_reg <= i_reg_282_pp0_iter7_reg;
        i_reg_282_pp0_iter9_reg <= i_reg_282_pp0_iter8_reg;
        icmp_ln172_3_reg_314 <= icmp_ln172_3_fu_179_p2;
        icmp_ln172_3_reg_314_pp0_iter10_reg <= icmp_ln172_3_reg_314_pp0_iter9_reg;
        icmp_ln172_3_reg_314_pp0_iter5_reg <= icmp_ln172_3_reg_314;
        icmp_ln172_3_reg_314_pp0_iter6_reg <= icmp_ln172_3_reg_314_pp0_iter5_reg;
        icmp_ln172_3_reg_314_pp0_iter7_reg <= icmp_ln172_3_reg_314_pp0_iter6_reg;
        icmp_ln172_3_reg_314_pp0_iter8_reg <= icmp_ln172_3_reg_314_pp0_iter7_reg;
        icmp_ln172_3_reg_314_pp0_iter9_reg <= icmp_ln172_3_reg_314_pp0_iter8_reg;
        icmp_ln172_4_reg_335 <= icmp_ln172_4_fu_211_p2;
        icmp_ln172_4_reg_335_pp0_iter10_reg <= icmp_ln172_4_reg_335_pp0_iter9_reg;
        icmp_ln172_4_reg_335_pp0_iter11_reg <= icmp_ln172_4_reg_335_pp0_iter10_reg;
        icmp_ln172_4_reg_335_pp0_iter12_reg <= icmp_ln172_4_reg_335_pp0_iter11_reg;
        icmp_ln172_4_reg_335_pp0_iter13_reg <= icmp_ln172_4_reg_335_pp0_iter12_reg;
        icmp_ln172_4_reg_335_pp0_iter14_reg <= icmp_ln172_4_reg_335_pp0_iter13_reg;
        icmp_ln172_4_reg_335_pp0_iter9_reg <= icmp_ln172_4_reg_335;
        icmp_ln172_reg_293_pp0_iter2_reg <= icmp_ln172_reg_293_pp0_iter1_reg;
        icmp_ln172_reg_293_pp0_iter3_reg <= icmp_ln172_reg_293_pp0_iter2_reg;
        icmp_ln172_reg_293_pp0_iter4_reg <= icmp_ln172_reg_293_pp0_iter3_reg;
        icmp_ln172_reg_293_pp0_iter5_reg <= icmp_ln172_reg_293_pp0_iter4_reg;
        icmp_ln172_reg_293_pp0_iter6_reg <= icmp_ln172_reg_293_pp0_iter5_reg;
        tmp_38_reg_319 <= tmp_38_fu_190_p5;
        tmp_39_reg_340 <= tmp_39_fu_222_p5;
        tmp_40_reg_324 <= tmp_40_fu_199_p3;
        tmp_40_reg_324_pp0_iter10_reg <= tmp_40_reg_324_pp0_iter9_reg;
        tmp_40_reg_324_pp0_iter8_reg <= tmp_40_reg_324;
        tmp_40_reg_324_pp0_iter9_reg <= tmp_40_reg_324_pp0_iter8_reg;
        tmp_42_reg_345 <= tmp_42_fu_231_p3;
        tmp_42_reg_345_pp0_iter12_reg <= tmp_42_reg_345;
        tmp_42_reg_345_pp0_iter13_reg <= tmp_42_reg_345_pp0_iter12_reg;
        tmp_42_reg_345_pp0_iter14_reg <= tmp_42_reg_345_pp0_iter13_reg;
        tmp_44_reg_356 <= tmp_44_fu_237_p3;
        trunc_ln173_reg_298_pp0_iter2_reg <= trunc_ln173_reg_298_pp0_iter1_reg;
        trunc_ln173_reg_298_pp0_iter3_reg <= trunc_ln173_reg_298_pp0_iter2_reg;
        trunc_ln173_reg_298_pp0_iter4_reg <= trunc_ln173_reg_298_pp0_iter3_reg;
        trunc_ln173_reg_298_pp0_iter5_reg <= trunc_ln173_reg_298_pp0_iter4_reg;
        trunc_ln173_reg_298_pp0_iter6_reg <= trunc_ln173_reg_298_pp0_iter5_reg;
        trunc_ln173_reg_298_pp0_iter7_reg <= trunc_ln173_reg_298_pp0_iter6_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_reg_282 <= ap_sig_allocacmp_i;
        i_reg_282_pp0_iter1_reg <= i_reg_282;
        icmp_ln172_reg_293_pp0_iter1_reg <= icmp_ln172_reg_293;
        trunc_ln173_reg_298_pp0_iter1_reg <= trunc_ln173_reg_298;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln169_fu_135_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln172_reg_293 <= icmp_ln172_fu_147_p2;
        tmp_s_reg_304 <= tmp_s_fu_157_p5;
        trunc_ln173_reg_298 <= trunc_ln173_fu_153_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln172_3_reg_314_pp0_iter6_reg == 1'd1))) begin
        mul_1_i_i1_reg_330 <= grp_fu_1040_p_dout0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln172_4_reg_335_pp0_iter10_reg == 1'd1))) begin
        mul_2_i_i1_reg_351 <= grp_fu_1044_p_dout0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln172_reg_293_pp0_iter2_reg == 1'd1))) begin
        mul_i_i1_reg_309 <= grp_fu_1024_p_dout0;
    end
end

always @ (*) begin
    if (((icmp_ln169_fu_135_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 3'd0;
    end else begin
        ap_sig_allocacmp_i = i_9_fu_54;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        aux_ce0 = 1'b1;
    end else begin
        aux_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        aux_we0 = 1'b1;
    end else begin
        aux_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln169_fu_141_p2 = (ap_sig_allocacmp_i + 3'd1);

assign add_ln172_2_fu_206_p2 = ($signed(i_reg_282_pp0_iter7_reg) + $signed(3'd6));

assign add_ln172_fu_174_p2 = ($signed(i_reg_282_pp0_iter3_reg) + $signed(3'd7));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter15 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter16 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign aux_address0 = trunc_ln172_1_cast_fu_243_p1;

assign aux_d0 = tmp_44_reg_356;

assign grp_fu_1024_p_ce = 1'b1;

assign grp_fu_1024_p_din0 = tmp_s_reg_304;

assign grp_fu_1024_p_din1 = 32'd0;

assign grp_fu_1028_p_ce = 1'b1;

assign grp_fu_1028_p_din0 = mul_i_i1_reg_309;

assign grp_fu_1028_p_din1 = 32'd0;

assign grp_fu_1028_p_opcode = 2'd0;

assign grp_fu_1032_p_ce = 1'b1;

assign grp_fu_1032_p_din0 = tmp_40_reg_324;

assign grp_fu_1032_p_din1 = mul_1_i_i1_reg_330;

assign grp_fu_1032_p_opcode = 2'd0;

assign grp_fu_1036_p_ce = 1'b1;

assign grp_fu_1036_p_din0 = tmp_42_reg_345;

assign grp_fu_1036_p_din1 = mul_2_i_i1_reg_351;

assign grp_fu_1036_p_opcode = 2'd0;

assign grp_fu_1040_p_ce = 1'b1;

assign grp_fu_1040_p_din0 = tmp_38_reg_319;

assign grp_fu_1040_p_din1 = b_norm_load_reload;

assign grp_fu_1044_p_ce = 1'b1;

assign grp_fu_1044_p_din0 = tmp_39_reg_340;

assign grp_fu_1044_p_din1 = b_norm_load_1_reload;

assign icmp_ln169_fu_135_p2 = ((ap_sig_allocacmp_i == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln172_3_fu_179_p2 = ((add_ln172_fu_174_p2 < 3'd3) ? 1'b1 : 1'b0);

assign icmp_ln172_4_fu_211_p2 = ((add_ln172_2_fu_206_p2 < 3'd3) ? 1'b1 : 1'b0);

assign icmp_ln172_fu_147_p2 = ((ap_sig_allocacmp_i < 3'd3) ? 1'b1 : 1'b0);

assign tmp_38_fu_190_p4 = ($signed(trunc_ln173_reg_298_pp0_iter3_reg) + $signed(2'd3));

assign tmp_39_fu_222_p4 = (trunc_ln173_reg_298_pp0_iter7_reg ^ 2'd2);

assign tmp_40_fu_199_p3 = ((icmp_ln172_reg_293_pp0_iter6_reg[0:0] == 1'b1) ? grp_fu_1028_p_dout0 : 32'd0);

assign tmp_42_fu_231_p3 = ((icmp_ln172_3_reg_314_pp0_iter10_reg[0:0] == 1'b1) ? grp_fu_1032_p_dout0 : tmp_40_reg_324_pp0_iter10_reg);

assign tmp_44_fu_237_p3 = ((icmp_ln172_4_reg_335_pp0_iter14_reg[0:0] == 1'b1) ? grp_fu_1036_p_dout0 : tmp_42_reg_345_pp0_iter14_reg);

assign tmp_s_fu_157_p4 = ap_sig_allocacmp_i[1:0];

assign trunc_ln172_1_cast_fu_243_p1 = i_reg_282_pp0_iter15_reg;

assign trunc_ln173_fu_153_p1 = ap_sig_allocacmp_i[1:0];

endmodule //main_operator_1_Pipeline_VITIS_LOOP_169_123

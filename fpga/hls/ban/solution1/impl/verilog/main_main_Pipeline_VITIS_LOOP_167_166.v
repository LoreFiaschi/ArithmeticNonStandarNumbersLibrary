// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module main_main_Pipeline_VITIS_LOOP_167_166 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        b1500_num_0_0_reload,
        b1500_num_1_0_reload,
        b1500_num_2_0_reload,
        b1502_num_0_0918_reload,
        b1502_num_1_0917_reload,
        b1502_num_2_0916_reload,
        aux_3_address0,
        aux_3_ce0,
        aux_3_we0,
        aux_3_d0,
        grp_fu_12738_p_din0,
        grp_fu_12738_p_din1,
        grp_fu_12738_p_opcode,
        grp_fu_12738_p_dout0,
        grp_fu_12738_p_ce,
        grp_fu_4178_p_din0,
        grp_fu_4178_p_din1,
        grp_fu_4178_p_opcode,
        grp_fu_4178_p_dout0,
        grp_fu_4178_p_ce,
        grp_fu_4185_p_din0,
        grp_fu_4185_p_din1,
        grp_fu_4185_p_opcode,
        grp_fu_4185_p_dout0,
        grp_fu_4185_p_ce,
        grp_fu_4193_p_din0,
        grp_fu_4193_p_din1,
        grp_fu_4193_p_dout0,
        grp_fu_4193_p_ce,
        grp_fu_4199_p_din0,
        grp_fu_4199_p_din1,
        grp_fu_4199_p_dout0,
        grp_fu_4199_p_ce,
        grp_fu_12742_p_din0,
        grp_fu_12742_p_din1,
        grp_fu_12742_p_dout0,
        grp_fu_12742_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] b1500_num_0_0_reload;
input  [31:0] b1500_num_1_0_reload;
input  [31:0] b1500_num_2_0_reload;
input  [31:0] b1502_num_0_0918_reload;
input  [31:0] b1502_num_1_0917_reload;
input  [31:0] b1502_num_2_0916_reload;
output  [2:0] aux_3_address0;
output   aux_3_ce0;
output   aux_3_we0;
output  [31:0] aux_3_d0;
output  [31:0] grp_fu_12738_p_din0;
output  [31:0] grp_fu_12738_p_din1;
output  [1:0] grp_fu_12738_p_opcode;
input  [31:0] grp_fu_12738_p_dout0;
output   grp_fu_12738_p_ce;
output  [31:0] grp_fu_4178_p_din0;
output  [31:0] grp_fu_4178_p_din1;
output  [0:0] grp_fu_4178_p_opcode;
input  [31:0] grp_fu_4178_p_dout0;
output   grp_fu_4178_p_ce;
output  [31:0] grp_fu_4185_p_din0;
output  [31:0] grp_fu_4185_p_din1;
output  [1:0] grp_fu_4185_p_opcode;
input  [31:0] grp_fu_4185_p_dout0;
output   grp_fu_4185_p_ce;
output  [31:0] grp_fu_4193_p_din0;
output  [31:0] grp_fu_4193_p_din1;
input  [31:0] grp_fu_4193_p_dout0;
output   grp_fu_4193_p_ce;
output  [31:0] grp_fu_4199_p_din0;
output  [31:0] grp_fu_4199_p_din1;
input  [31:0] grp_fu_4199_p_dout0;
output   grp_fu_4199_p_ce;
output  [31:0] grp_fu_12742_p_din0;
output  [31:0] grp_fu_12742_p_din1;
input  [31:0] grp_fu_12742_p_dout0;
output   grp_fu_12742_p_ce;

reg ap_idle;
reg aux_3_ce0;
reg aux_3_we0;

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
wire   [0:0] icmp_ln167_fu_142_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [2:0] i_60_reg_294;
reg   [2:0] i_60_reg_294_pp0_iter1_reg;
reg   [2:0] i_60_reg_294_pp0_iter2_reg;
reg   [2:0] i_60_reg_294_pp0_iter3_reg;
reg   [2:0] i_60_reg_294_pp0_iter4_reg;
reg   [2:0] i_60_reg_294_pp0_iter5_reg;
reg   [2:0] i_60_reg_294_pp0_iter6_reg;
reg   [2:0] i_60_reg_294_pp0_iter7_reg;
reg   [2:0] i_60_reg_294_pp0_iter8_reg;
reg   [2:0] i_60_reg_294_pp0_iter9_reg;
reg   [2:0] i_60_reg_294_pp0_iter10_reg;
reg   [2:0] i_60_reg_294_pp0_iter11_reg;
reg   [2:0] i_60_reg_294_pp0_iter12_reg;
reg   [2:0] i_60_reg_294_pp0_iter13_reg;
reg   [2:0] i_60_reg_294_pp0_iter14_reg;
reg   [2:0] i_60_reg_294_pp0_iter15_reg;
wire   [0:0] icmp_ln170_fu_154_p2;
reg   [0:0] icmp_ln170_reg_305;
reg   [0:0] icmp_ln170_reg_305_pp0_iter1_reg;
reg   [0:0] icmp_ln170_reg_305_pp0_iter2_reg;
reg   [0:0] icmp_ln170_reg_305_pp0_iter3_reg;
reg   [0:0] icmp_ln170_reg_305_pp0_iter4_reg;
reg   [0:0] icmp_ln170_reg_305_pp0_iter5_reg;
reg   [0:0] icmp_ln170_reg_305_pp0_iter6_reg;
wire   [1:0] trunc_ln171_fu_160_p1;
reg   [1:0] trunc_ln171_reg_310;
reg   [1:0] trunc_ln171_reg_310_pp0_iter1_reg;
reg   [1:0] trunc_ln171_reg_310_pp0_iter2_reg;
reg   [1:0] trunc_ln171_reg_310_pp0_iter3_reg;
reg   [1:0] trunc_ln171_reg_310_pp0_iter4_reg;
reg   [1:0] trunc_ln171_reg_310_pp0_iter5_reg;
reg   [1:0] trunc_ln171_reg_310_pp0_iter6_reg;
reg   [1:0] trunc_ln171_reg_310_pp0_iter7_reg;
wire   [31:0] tmp_141_fu_164_p5;
reg   [31:0] tmp_141_reg_316;
reg   [31:0] mul_i_i23_i1_reg_321;
wire   [0:0] icmp_ln170_13_fu_186_p2;
reg   [0:0] icmp_ln170_13_reg_326;
reg   [0:0] icmp_ln170_13_reg_326_pp0_iter5_reg;
reg   [0:0] icmp_ln170_13_reg_326_pp0_iter6_reg;
reg   [0:0] icmp_ln170_13_reg_326_pp0_iter7_reg;
reg   [0:0] icmp_ln170_13_reg_326_pp0_iter8_reg;
reg   [0:0] icmp_ln170_13_reg_326_pp0_iter9_reg;
reg   [0:0] icmp_ln170_13_reg_326_pp0_iter10_reg;
wire   [31:0] tmp_142_fu_197_p5;
reg   [31:0] tmp_142_reg_331;
wire   [31:0] tmp_130_fu_206_p3;
reg   [31:0] tmp_130_reg_336;
reg   [31:0] tmp_130_reg_336_pp0_iter8_reg;
reg   [31:0] tmp_130_reg_336_pp0_iter9_reg;
reg   [31:0] tmp_130_reg_336_pp0_iter10_reg;
reg   [31:0] mul_1_i_i30_i1_reg_342;
wire   [0:0] icmp_ln170_14_fu_218_p2;
reg   [0:0] icmp_ln170_14_reg_347;
reg   [0:0] icmp_ln170_14_reg_347_pp0_iter9_reg;
reg   [0:0] icmp_ln170_14_reg_347_pp0_iter10_reg;
reg   [0:0] icmp_ln170_14_reg_347_pp0_iter11_reg;
reg   [0:0] icmp_ln170_14_reg_347_pp0_iter12_reg;
reg   [0:0] icmp_ln170_14_reg_347_pp0_iter13_reg;
reg   [0:0] icmp_ln170_14_reg_347_pp0_iter14_reg;
wire   [31:0] tmp_s_fu_229_p5;
reg   [31:0] tmp_s_reg_352;
wire   [31:0] tmp_132_fu_238_p3;
reg   [31:0] tmp_132_reg_357;
reg   [31:0] tmp_132_reg_357_pp0_iter12_reg;
reg   [31:0] tmp_132_reg_357_pp0_iter13_reg;
reg   [31:0] tmp_132_reg_357_pp0_iter14_reg;
reg   [31:0] mul_2_i_i37_i1_reg_363;
wire   [31:0] tmp_134_fu_244_p3;
reg   [31:0] tmp_134_reg_368;
wire   [63:0] trunc_ln170_cast_fu_250_p1;
wire    ap_block_pp0_stage0;
reg   [2:0] i_fu_56;
wire   [2:0] add_ln167_fu_148_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i_60;
wire   [1:0] tmp_141_fu_164_p4;
wire   [2:0] add_ln170_fu_181_p2;
wire   [1:0] tmp_142_fu_197_p4;
wire   [2:0] add_ln170_8_fu_213_p2;
wire   [1:0] tmp_s_fu_229_p4;
wire    ap_block_pp0_stage0_00001;
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
mux_32_32_1_1_U714(
    .din0(b1500_num_0_0_reload),
    .din1(b1500_num_1_0_reload),
    .din2(b1500_num_2_0_reload),
    .din3(tmp_141_fu_164_p4),
    .dout(tmp_141_fu_164_p5)
);

main_mux_32_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_32_32_1_1_U715(
    .din0(b1500_num_0_0_reload),
    .din1(b1500_num_1_0_reload),
    .din2(b1500_num_2_0_reload),
    .din3(tmp_142_fu_197_p4),
    .dout(tmp_142_fu_197_p5)
);

main_mux_32_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_32_32_1_1_U716(
    .din0(b1500_num_0_0_reload),
    .din1(b1500_num_1_0_reload),
    .din2(b1500_num_2_0_reload),
    .din3(tmp_s_fu_229_p4),
    .dout(tmp_s_fu_229_p5)
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
        if (((icmp_ln167_fu_142_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_56 <= add_ln167_fu_148_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_56 <= 3'd0;
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
        i_60_reg_294_pp0_iter10_reg <= i_60_reg_294_pp0_iter9_reg;
        i_60_reg_294_pp0_iter11_reg <= i_60_reg_294_pp0_iter10_reg;
        i_60_reg_294_pp0_iter12_reg <= i_60_reg_294_pp0_iter11_reg;
        i_60_reg_294_pp0_iter13_reg <= i_60_reg_294_pp0_iter12_reg;
        i_60_reg_294_pp0_iter14_reg <= i_60_reg_294_pp0_iter13_reg;
        i_60_reg_294_pp0_iter15_reg <= i_60_reg_294_pp0_iter14_reg;
        i_60_reg_294_pp0_iter2_reg <= i_60_reg_294_pp0_iter1_reg;
        i_60_reg_294_pp0_iter3_reg <= i_60_reg_294_pp0_iter2_reg;
        i_60_reg_294_pp0_iter4_reg <= i_60_reg_294_pp0_iter3_reg;
        i_60_reg_294_pp0_iter5_reg <= i_60_reg_294_pp0_iter4_reg;
        i_60_reg_294_pp0_iter6_reg <= i_60_reg_294_pp0_iter5_reg;
        i_60_reg_294_pp0_iter7_reg <= i_60_reg_294_pp0_iter6_reg;
        i_60_reg_294_pp0_iter8_reg <= i_60_reg_294_pp0_iter7_reg;
        i_60_reg_294_pp0_iter9_reg <= i_60_reg_294_pp0_iter8_reg;
        icmp_ln170_13_reg_326 <= icmp_ln170_13_fu_186_p2;
        icmp_ln170_13_reg_326_pp0_iter10_reg <= icmp_ln170_13_reg_326_pp0_iter9_reg;
        icmp_ln170_13_reg_326_pp0_iter5_reg <= icmp_ln170_13_reg_326;
        icmp_ln170_13_reg_326_pp0_iter6_reg <= icmp_ln170_13_reg_326_pp0_iter5_reg;
        icmp_ln170_13_reg_326_pp0_iter7_reg <= icmp_ln170_13_reg_326_pp0_iter6_reg;
        icmp_ln170_13_reg_326_pp0_iter8_reg <= icmp_ln170_13_reg_326_pp0_iter7_reg;
        icmp_ln170_13_reg_326_pp0_iter9_reg <= icmp_ln170_13_reg_326_pp0_iter8_reg;
        icmp_ln170_14_reg_347 <= icmp_ln170_14_fu_218_p2;
        icmp_ln170_14_reg_347_pp0_iter10_reg <= icmp_ln170_14_reg_347_pp0_iter9_reg;
        icmp_ln170_14_reg_347_pp0_iter11_reg <= icmp_ln170_14_reg_347_pp0_iter10_reg;
        icmp_ln170_14_reg_347_pp0_iter12_reg <= icmp_ln170_14_reg_347_pp0_iter11_reg;
        icmp_ln170_14_reg_347_pp0_iter13_reg <= icmp_ln170_14_reg_347_pp0_iter12_reg;
        icmp_ln170_14_reg_347_pp0_iter14_reg <= icmp_ln170_14_reg_347_pp0_iter13_reg;
        icmp_ln170_14_reg_347_pp0_iter9_reg <= icmp_ln170_14_reg_347;
        icmp_ln170_reg_305_pp0_iter2_reg <= icmp_ln170_reg_305_pp0_iter1_reg;
        icmp_ln170_reg_305_pp0_iter3_reg <= icmp_ln170_reg_305_pp0_iter2_reg;
        icmp_ln170_reg_305_pp0_iter4_reg <= icmp_ln170_reg_305_pp0_iter3_reg;
        icmp_ln170_reg_305_pp0_iter5_reg <= icmp_ln170_reg_305_pp0_iter4_reg;
        icmp_ln170_reg_305_pp0_iter6_reg <= icmp_ln170_reg_305_pp0_iter5_reg;
        tmp_130_reg_336 <= tmp_130_fu_206_p3;
        tmp_130_reg_336_pp0_iter10_reg <= tmp_130_reg_336_pp0_iter9_reg;
        tmp_130_reg_336_pp0_iter8_reg <= tmp_130_reg_336;
        tmp_130_reg_336_pp0_iter9_reg <= tmp_130_reg_336_pp0_iter8_reg;
        tmp_132_reg_357 <= tmp_132_fu_238_p3;
        tmp_132_reg_357_pp0_iter12_reg <= tmp_132_reg_357;
        tmp_132_reg_357_pp0_iter13_reg <= tmp_132_reg_357_pp0_iter12_reg;
        tmp_132_reg_357_pp0_iter14_reg <= tmp_132_reg_357_pp0_iter13_reg;
        tmp_134_reg_368 <= tmp_134_fu_244_p3;
        tmp_142_reg_331 <= tmp_142_fu_197_p5;
        tmp_s_reg_352 <= tmp_s_fu_229_p5;
        trunc_ln171_reg_310_pp0_iter2_reg <= trunc_ln171_reg_310_pp0_iter1_reg;
        trunc_ln171_reg_310_pp0_iter3_reg <= trunc_ln171_reg_310_pp0_iter2_reg;
        trunc_ln171_reg_310_pp0_iter4_reg <= trunc_ln171_reg_310_pp0_iter3_reg;
        trunc_ln171_reg_310_pp0_iter5_reg <= trunc_ln171_reg_310_pp0_iter4_reg;
        trunc_ln171_reg_310_pp0_iter6_reg <= trunc_ln171_reg_310_pp0_iter5_reg;
        trunc_ln171_reg_310_pp0_iter7_reg <= trunc_ln171_reg_310_pp0_iter6_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_60_reg_294 <= ap_sig_allocacmp_i_60;
        i_60_reg_294_pp0_iter1_reg <= i_60_reg_294;
        icmp_ln170_reg_305_pp0_iter1_reg <= icmp_ln170_reg_305;
        trunc_ln171_reg_310_pp0_iter1_reg <= trunc_ln171_reg_310;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln167_fu_142_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln170_reg_305 <= icmp_ln170_fu_154_p2;
        tmp_141_reg_316 <= tmp_141_fu_164_p5;
        trunc_ln171_reg_310 <= trunc_ln171_fu_160_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln170_13_reg_326_pp0_iter6_reg == 1'd1))) begin
        mul_1_i_i30_i1_reg_342 <= grp_fu_4199_p_dout0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln170_14_reg_347_pp0_iter10_reg == 1'd1))) begin
        mul_2_i_i37_i1_reg_363 <= grp_fu_12742_p_dout0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln170_reg_305_pp0_iter2_reg == 1'd1))) begin
        mul_i_i23_i1_reg_321 <= grp_fu_4193_p_dout0;
    end
end

always @ (*) begin
    if (((icmp_ln167_fu_142_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_60 = 3'd0;
    end else begin
        ap_sig_allocacmp_i_60 = i_fu_56;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        aux_3_ce0 = 1'b1;
    end else begin
        aux_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        aux_3_we0 = 1'b1;
    end else begin
        aux_3_we0 = 1'b0;
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

assign add_ln167_fu_148_p2 = (ap_sig_allocacmp_i_60 + 3'd1);

assign add_ln170_8_fu_213_p2 = ($signed(i_60_reg_294_pp0_iter7_reg) + $signed(3'd6));

assign add_ln170_fu_181_p2 = ($signed(i_60_reg_294_pp0_iter3_reg) + $signed(3'd7));

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

assign aux_3_address0 = trunc_ln170_cast_fu_250_p1;

assign aux_3_d0 = tmp_134_reg_368;

assign grp_fu_12738_p_ce = 1'b1;

assign grp_fu_12738_p_din0 = mul_i_i23_i1_reg_321;

assign grp_fu_12738_p_din1 = 32'd0;

assign grp_fu_12738_p_opcode = 2'd0;

assign grp_fu_12742_p_ce = 1'b1;

assign grp_fu_12742_p_din0 = tmp_s_reg_352;

assign grp_fu_12742_p_din1 = b1502_num_2_0916_reload;

assign grp_fu_4178_p_ce = 1'b1;

assign grp_fu_4178_p_din0 = tmp_130_reg_336;

assign grp_fu_4178_p_din1 = mul_1_i_i30_i1_reg_342;

assign grp_fu_4178_p_opcode = 2'd0;

assign grp_fu_4185_p_ce = 1'b1;

assign grp_fu_4185_p_din0 = tmp_132_reg_357;

assign grp_fu_4185_p_din1 = mul_2_i_i37_i1_reg_363;

assign grp_fu_4185_p_opcode = 2'd0;

assign grp_fu_4193_p_ce = 1'b1;

assign grp_fu_4193_p_din0 = tmp_141_reg_316;

assign grp_fu_4193_p_din1 = b1502_num_0_0918_reload;

assign grp_fu_4199_p_ce = 1'b1;

assign grp_fu_4199_p_din0 = tmp_142_reg_331;

assign grp_fu_4199_p_din1 = b1502_num_1_0917_reload;

assign icmp_ln167_fu_142_p2 = ((ap_sig_allocacmp_i_60 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln170_13_fu_186_p2 = ((add_ln170_fu_181_p2 < 3'd3) ? 1'b1 : 1'b0);

assign icmp_ln170_14_fu_218_p2 = ((add_ln170_8_fu_213_p2 < 3'd3) ? 1'b1 : 1'b0);

assign icmp_ln170_fu_154_p2 = ((ap_sig_allocacmp_i_60 < 3'd3) ? 1'b1 : 1'b0);

assign tmp_130_fu_206_p3 = ((icmp_ln170_reg_305_pp0_iter6_reg[0:0] == 1'b1) ? grp_fu_12738_p_dout0 : 32'd0);

assign tmp_132_fu_238_p3 = ((icmp_ln170_13_reg_326_pp0_iter10_reg[0:0] == 1'b1) ? grp_fu_4178_p_dout0 : tmp_130_reg_336_pp0_iter10_reg);

assign tmp_134_fu_244_p3 = ((icmp_ln170_14_reg_347_pp0_iter14_reg[0:0] == 1'b1) ? grp_fu_4185_p_dout0 : tmp_132_reg_357_pp0_iter14_reg);

assign tmp_141_fu_164_p4 = ap_sig_allocacmp_i_60[1:0];

assign tmp_142_fu_197_p4 = ($signed(trunc_ln171_reg_310_pp0_iter3_reg) + $signed(2'd3));

assign tmp_s_fu_229_p4 = (trunc_ln171_reg_310_pp0_iter7_reg ^ 2'd2);

assign trunc_ln170_cast_fu_250_p1 = i_60_reg_294_pp0_iter15_reg;

assign trunc_ln171_fu_160_p1 = ap_sig_allocacmp_i_60[1:0];

endmodule //main_main_Pipeline_VITIS_LOOP_167_166

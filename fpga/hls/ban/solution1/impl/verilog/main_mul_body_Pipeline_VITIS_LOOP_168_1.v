// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module main_mul_body_Pipeline_VITIS_LOOP_168_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        aux_address0,
        aux_ce0,
        aux_we0,
        aux_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] aux_address0;
output   aux_ce0;
output   aux_we0;
output  [31:0] aux_d0;

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
reg    ap_enable_reg_pp0_iter17;
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
wire    ap_block_state18_pp0_stage0_iter17;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln168_fu_136_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [5:0] b_num_address0;
reg    b_num_ce0;
wire   [31:0] b_num_q0;
wire   [5:0] b_num_address1;
reg    b_num_ce1;
wire   [31:0] b_num_q1;
wire   [5:0] b_num_address2;
reg    b_num_ce2;
wire   [31:0] b_num_q2;
reg   [2:0] i_2_reg_259;
wire    ap_block_pp0_stage0_11001;
reg   [2:0] i_2_reg_259_pp0_iter1_reg;
reg   [2:0] i_2_reg_259_pp0_iter2_reg;
reg   [2:0] i_2_reg_259_pp0_iter3_reg;
reg   [2:0] i_2_reg_259_pp0_iter4_reg;
reg   [2:0] i_2_reg_259_pp0_iter5_reg;
reg   [2:0] i_2_reg_259_pp0_iter6_reg;
reg   [2:0] i_2_reg_259_pp0_iter7_reg;
reg   [2:0] i_2_reg_259_pp0_iter8_reg;
reg   [2:0] i_2_reg_259_pp0_iter9_reg;
reg   [2:0] i_2_reg_259_pp0_iter10_reg;
reg   [2:0] i_2_reg_259_pp0_iter11_reg;
reg   [2:0] i_2_reg_259_pp0_iter12_reg;
reg   [2:0] i_2_reg_259_pp0_iter13_reg;
reg   [2:0] i_2_reg_259_pp0_iter14_reg;
reg   [2:0] i_2_reg_259_pp0_iter15_reg;
reg   [2:0] i_2_reg_259_pp0_iter16_reg;
wire   [0:0] icmp_ln171_fu_164_p2;
reg   [0:0] icmp_ln171_reg_276;
reg   [0:0] icmp_ln171_reg_276_pp0_iter2_reg;
reg   [0:0] icmp_ln171_reg_276_pp0_iter3_reg;
reg   [0:0] icmp_ln171_reg_276_pp0_iter4_reg;
reg   [0:0] icmp_ln171_reg_276_pp0_iter5_reg;
reg   [0:0] icmp_ln171_reg_276_pp0_iter6_reg;
reg   [0:0] icmp_ln171_reg_276_pp0_iter7_reg;
reg   [31:0] b_num_load_reg_281;
wire   [31:0] grp_fu_113_p2;
reg   [31:0] mul_i_reg_286;
wire   [0:0] icmp_ln171_1_fu_174_p2;
reg   [0:0] icmp_ln171_1_reg_291;
reg   [0:0] icmp_ln171_1_reg_291_pp0_iter5_reg;
reg   [0:0] icmp_ln171_1_reg_291_pp0_iter6_reg;
reg   [0:0] icmp_ln171_1_reg_291_pp0_iter7_reg;
reg   [0:0] icmp_ln171_1_reg_291_pp0_iter8_reg;
reg   [0:0] icmp_ln171_1_reg_291_pp0_iter9_reg;
reg   [0:0] icmp_ln171_1_reg_291_pp0_iter10_reg;
reg   [0:0] icmp_ln171_1_reg_291_pp0_iter11_reg;
reg   [31:0] b_num_load_1_reg_301;
wire   [31:0] tmp_1_fu_199_p3;
reg   [31:0] tmp_1_reg_306;
reg   [31:0] tmp_1_reg_306_pp0_iter9_reg;
reg   [31:0] tmp_1_reg_306_pp0_iter10_reg;
reg   [31:0] tmp_1_reg_306_pp0_iter11_reg;
wire   [31:0] grp_fu_118_p2;
reg   [31:0] mul_1_i_reg_312;
wire   [0:0] icmp_ln171_2_fu_211_p2;
reg   [0:0] icmp_ln171_2_reg_317;
reg   [0:0] icmp_ln171_2_reg_317_pp0_iter9_reg;
reg   [0:0] icmp_ln171_2_reg_317_pp0_iter10_reg;
reg   [0:0] icmp_ln171_2_reg_317_pp0_iter11_reg;
reg   [0:0] icmp_ln171_2_reg_317_pp0_iter12_reg;
reg   [0:0] icmp_ln171_2_reg_317_pp0_iter13_reg;
reg   [0:0] icmp_ln171_2_reg_317_pp0_iter14_reg;
reg   [0:0] icmp_ln171_2_reg_317_pp0_iter15_reg;
reg   [31:0] b_num_load_2_reg_327;
wire   [31:0] tmp_3_fu_236_p3;
reg   [31:0] tmp_3_reg_332;
reg   [31:0] tmp_3_reg_332_pp0_iter13_reg;
reg   [31:0] tmp_3_reg_332_pp0_iter14_reg;
reg   [31:0] tmp_3_reg_332_pp0_iter15_reg;
wire   [31:0] grp_fu_123_p2;
reg   [31:0] mul_2_i_reg_338;
wire   [31:0] tmp_5_fu_242_p3;
reg   [31:0] tmp_5_reg_343;
wire   [63:0] zext_ln172_fu_154_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_1_fu_194_p1;
wire   [63:0] zext_ln172_2_fu_231_p1;
wire   [63:0] trunc_ln171_cast_fu_248_p1;
reg   [2:0] i_fu_46;
wire   [2:0] add_ln168_fu_142_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i_2;
wire   [2:0] add_ln172_fu_148_p2;
wire  signed [2:0] add_ln171_fu_169_p2;
wire  signed [3:0] sext_ln172_fu_180_p1;
wire   [3:0] add_ln172_1_fu_184_p2;
wire  signed [5:0] sext_ln172_1_fu_190_p1;
wire   [31:0] grp_fu_100_p2;
wire  signed [2:0] add_ln171_1_fu_206_p2;
wire  signed [3:0] sext_ln172_2_fu_217_p1;
wire   [3:0] add_ln172_2_fu_221_p2;
wire  signed [5:0] sext_ln172_3_fu_227_p1;
wire   [31:0] grp_fu_105_p2;
wire   [31:0] grp_fu_109_p2;
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
reg    ap_loop_exit_ready_pp0_iter16_reg;
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
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_done_reg = 1'b0;
end

main_mul_body_Pipeline_VITIS_LOOP_168_1_b_num_ROM_AUTO_1R #(
    .DataWidth( 32 ),
    .AddressRange( 60 ),
    .AddressWidth( 6 ))
b_num_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(b_num_address0),
    .ce0(b_num_ce0),
    .q0(b_num_q0),
    .address1(b_num_address1),
    .ce1(b_num_ce1),
    .q1(b_num_q1),
    .address2(b_num_address2),
    .ce2(b_num_ce2),
    .q2(b_num_q2)
);

main_fadd_32ns_32ns_32_4_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_4_full_dsp_1_U24(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mul_i_reg_286),
    .din1(32'd0),
    .ce(1'b1),
    .dout(grp_fu_100_p2)
);

main_fadd_32ns_32ns_32_4_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_4_full_dsp_1_U25(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_1_reg_306),
    .din1(mul_1_i_reg_312),
    .ce(1'b1),
    .dout(grp_fu_105_p2)
);

main_fadd_32ns_32ns_32_4_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_4_full_dsp_1_U26(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_3_reg_332),
    .din1(mul_2_i_reg_338),
    .ce(1'b1),
    .dout(grp_fu_109_p2)
);

main_fmul_32ns_32ns_32_3_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_3_max_dsp_1_U27(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(b_num_load_reg_281),
    .din1(32'd1092115287),
    .ce(1'b1),
    .dout(grp_fu_113_p2)
);

main_fmul_32ns_32ns_32_3_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_3_max_dsp_1_U28(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(b_num_load_1_reg_301),
    .din1(32'd1087073671),
    .ce(1'b1),
    .dout(grp_fu_118_p2)
);

main_fmul_32ns_32ns_32_3_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_3_max_dsp_1_U29(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(b_num_load_2_reg_327),
    .din1(32'd1068843129),
    .ce(1'b1),
    .dout(grp_fu_123_p2)
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln168_fu_136_p2 == 1'd0))) begin
            i_fu_46 <= add_ln168_fu_142_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_46 <= 3'd0;
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
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        i_2_reg_259_pp0_iter10_reg <= i_2_reg_259_pp0_iter9_reg;
        i_2_reg_259_pp0_iter11_reg <= i_2_reg_259_pp0_iter10_reg;
        i_2_reg_259_pp0_iter12_reg <= i_2_reg_259_pp0_iter11_reg;
        i_2_reg_259_pp0_iter13_reg <= i_2_reg_259_pp0_iter12_reg;
        i_2_reg_259_pp0_iter14_reg <= i_2_reg_259_pp0_iter13_reg;
        i_2_reg_259_pp0_iter15_reg <= i_2_reg_259_pp0_iter14_reg;
        i_2_reg_259_pp0_iter16_reg <= i_2_reg_259_pp0_iter15_reg;
        i_2_reg_259_pp0_iter2_reg <= i_2_reg_259_pp0_iter1_reg;
        i_2_reg_259_pp0_iter3_reg <= i_2_reg_259_pp0_iter2_reg;
        i_2_reg_259_pp0_iter4_reg <= i_2_reg_259_pp0_iter3_reg;
        i_2_reg_259_pp0_iter5_reg <= i_2_reg_259_pp0_iter4_reg;
        i_2_reg_259_pp0_iter6_reg <= i_2_reg_259_pp0_iter5_reg;
        i_2_reg_259_pp0_iter7_reg <= i_2_reg_259_pp0_iter6_reg;
        i_2_reg_259_pp0_iter8_reg <= i_2_reg_259_pp0_iter7_reg;
        i_2_reg_259_pp0_iter9_reg <= i_2_reg_259_pp0_iter8_reg;
        icmp_ln171_1_reg_291 <= icmp_ln171_1_fu_174_p2;
        icmp_ln171_1_reg_291_pp0_iter10_reg <= icmp_ln171_1_reg_291_pp0_iter9_reg;
        icmp_ln171_1_reg_291_pp0_iter11_reg <= icmp_ln171_1_reg_291_pp0_iter10_reg;
        icmp_ln171_1_reg_291_pp0_iter5_reg <= icmp_ln171_1_reg_291;
        icmp_ln171_1_reg_291_pp0_iter6_reg <= icmp_ln171_1_reg_291_pp0_iter5_reg;
        icmp_ln171_1_reg_291_pp0_iter7_reg <= icmp_ln171_1_reg_291_pp0_iter6_reg;
        icmp_ln171_1_reg_291_pp0_iter8_reg <= icmp_ln171_1_reg_291_pp0_iter7_reg;
        icmp_ln171_1_reg_291_pp0_iter9_reg <= icmp_ln171_1_reg_291_pp0_iter8_reg;
        icmp_ln171_2_reg_317 <= icmp_ln171_2_fu_211_p2;
        icmp_ln171_2_reg_317_pp0_iter10_reg <= icmp_ln171_2_reg_317_pp0_iter9_reg;
        icmp_ln171_2_reg_317_pp0_iter11_reg <= icmp_ln171_2_reg_317_pp0_iter10_reg;
        icmp_ln171_2_reg_317_pp0_iter12_reg <= icmp_ln171_2_reg_317_pp0_iter11_reg;
        icmp_ln171_2_reg_317_pp0_iter13_reg <= icmp_ln171_2_reg_317_pp0_iter12_reg;
        icmp_ln171_2_reg_317_pp0_iter14_reg <= icmp_ln171_2_reg_317_pp0_iter13_reg;
        icmp_ln171_2_reg_317_pp0_iter15_reg <= icmp_ln171_2_reg_317_pp0_iter14_reg;
        icmp_ln171_2_reg_317_pp0_iter9_reg <= icmp_ln171_2_reg_317;
        icmp_ln171_reg_276_pp0_iter2_reg <= icmp_ln171_reg_276;
        icmp_ln171_reg_276_pp0_iter3_reg <= icmp_ln171_reg_276_pp0_iter2_reg;
        icmp_ln171_reg_276_pp0_iter4_reg <= icmp_ln171_reg_276_pp0_iter3_reg;
        icmp_ln171_reg_276_pp0_iter5_reg <= icmp_ln171_reg_276_pp0_iter4_reg;
        icmp_ln171_reg_276_pp0_iter6_reg <= icmp_ln171_reg_276_pp0_iter5_reg;
        icmp_ln171_reg_276_pp0_iter7_reg <= icmp_ln171_reg_276_pp0_iter6_reg;
        tmp_1_reg_306 <= tmp_1_fu_199_p3;
        tmp_1_reg_306_pp0_iter10_reg <= tmp_1_reg_306_pp0_iter9_reg;
        tmp_1_reg_306_pp0_iter11_reg <= tmp_1_reg_306_pp0_iter10_reg;
        tmp_1_reg_306_pp0_iter9_reg <= tmp_1_reg_306;
        tmp_3_reg_332 <= tmp_3_fu_236_p3;
        tmp_3_reg_332_pp0_iter13_reg <= tmp_3_reg_332;
        tmp_3_reg_332_pp0_iter14_reg <= tmp_3_reg_332_pp0_iter13_reg;
        tmp_3_reg_332_pp0_iter15_reg <= tmp_3_reg_332_pp0_iter14_reg;
        tmp_5_reg_343 <= tmp_5_fu_242_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_2_reg_259 <= ap_sig_allocacmp_i_2;
        i_2_reg_259_pp0_iter1_reg <= i_2_reg_259;
        icmp_ln171_reg_276 <= icmp_ln171_fu_164_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        b_num_load_1_reg_301 <= b_num_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        b_num_load_2_reg_327 <= b_num_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_num_load_reg_281 <= b_num_q2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln171_1_reg_291_pp0_iter7_reg == 1'd1))) begin
        mul_1_i_reg_312 <= grp_fu_118_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln171_2_reg_317_pp0_iter11_reg == 1'd1))) begin
        mul_2_i_reg_338 <= grp_fu_123_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln171_reg_276_pp0_iter3_reg == 1'd1))) begin
        mul_i_reg_286 <= grp_fu_113_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln168_fu_136_p2 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_2 = 3'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_46;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        aux_ce0 = 1'b1;
    end else begin
        aux_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        aux_we0 = 1'b1;
    end else begin
        aux_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        b_num_ce0 = 1'b1;
    end else begin
        b_num_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        b_num_ce1 = 1'b1;
    end else begin
        b_num_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_num_ce2 = 1'b1;
    end else begin
        b_num_ce2 = 1'b0;
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

assign add_ln168_fu_142_p2 = (ap_sig_allocacmp_i_2 + 3'd1);

assign add_ln171_1_fu_206_p2 = ($signed(i_2_reg_259_pp0_iter7_reg) + $signed(3'd6));

assign add_ln171_fu_169_p2 = ($signed(i_2_reg_259_pp0_iter3_reg) + $signed(3'd7));

assign add_ln172_1_fu_184_p2 = ($signed(sext_ln172_fu_180_p1) + $signed(4'd3));

assign add_ln172_2_fu_221_p2 = ($signed(sext_ln172_2_fu_217_p1) + $signed(4'd3));

assign add_ln172_fu_148_p2 = (ap_sig_allocacmp_i_2 + 3'd3);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

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

assign ap_block_state18_pp0_stage0_iter17 = ~(1'b1 == 1'b1);

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

assign aux_address0 = trunc_ln171_cast_fu_248_p1;

assign aux_d0 = tmp_5_reg_343;

assign b_num_address0 = zext_ln172_2_fu_231_p1;

assign b_num_address1 = zext_ln172_1_fu_194_p1;

assign b_num_address2 = zext_ln172_fu_154_p1;

assign icmp_ln168_fu_136_p2 = ((ap_sig_allocacmp_i_2 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln171_1_fu_174_p2 = ((add_ln171_fu_169_p2 < 3'd3) ? 1'b1 : 1'b0);

assign icmp_ln171_2_fu_211_p2 = ((add_ln171_1_fu_206_p2 < 3'd3) ? 1'b1 : 1'b0);

assign icmp_ln171_fu_164_p2 = ((i_2_reg_259 < 3'd3) ? 1'b1 : 1'b0);

assign sext_ln172_1_fu_190_p1 = $signed(add_ln172_1_fu_184_p2);

assign sext_ln172_2_fu_217_p1 = add_ln171_1_fu_206_p2;

assign sext_ln172_3_fu_227_p1 = $signed(add_ln172_2_fu_221_p2);

assign sext_ln172_fu_180_p1 = add_ln171_fu_169_p2;

assign tmp_1_fu_199_p3 = ((icmp_ln171_reg_276_pp0_iter7_reg[0:0] == 1'b1) ? grp_fu_100_p2 : 32'd0);

assign tmp_3_fu_236_p3 = ((icmp_ln171_1_reg_291_pp0_iter11_reg[0:0] == 1'b1) ? grp_fu_105_p2 : tmp_1_reg_306_pp0_iter11_reg);

assign tmp_5_fu_242_p3 = ((icmp_ln171_2_reg_317_pp0_iter15_reg[0:0] == 1'b1) ? grp_fu_109_p2 : tmp_3_reg_332_pp0_iter15_reg);

assign trunc_ln171_cast_fu_248_p1 = i_2_reg_259_pp0_iter16_reg;

assign zext_ln172_1_fu_194_p1 = $unsigned(sext_ln172_1_fu_190_p1);

assign zext_ln172_2_fu_231_p1 = $unsigned(sext_ln172_3_fu_227_p1);

assign zext_ln172_fu_154_p1 = add_ln172_fu_148_p2;

endmodule //main_mul_body_Pipeline_VITIS_LOOP_168_1

// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module main_main_Pipeline_VITIS_LOOP_455_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        sub_ln535,
        b_num_address0,
        b_num_ce0,
        b_num_q0,
        sub_ln153,
        ap_return,
        grp_fu_4230_p_din0,
        grp_fu_4230_p_din1,
        grp_fu_4230_p_opcode,
        grp_fu_4230_p_dout0,
        grp_fu_4230_p_ce
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] sub_ln535;
output  [5:0] b_num_address0;
output   b_num_ce0;
input  [31:0] b_num_q0;
input  [5:0] sub_ln153;
output  [1:0] ap_return;
output  [31:0] grp_fu_4230_p_din0;
output  [31:0] grp_fu_4230_p_din1;
output  [4:0] grp_fu_4230_p_opcode;
input  [0:0] grp_fu_4230_p_dout0;
output   grp_fu_4230_p_ce;

reg ap_idle;
reg[5:0] b_num_address0;
reg b_num_ce0;
reg[1:0] ap_return;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state5;
wire    ap_block_state5_pp0_stage4_iter0;
wire   [0:0] grp_fu_108_p2;
reg   [0:0] and_ln456_1_reg_287;
reg   [0:0] icmp_ln455_reg_246;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [1:0] merge_reg_87;
wire   [0:0] icmp_ln455_fu_121_p2;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [1:0] add_ln455_fu_127_p2;
reg   [1:0] add_ln455_reg_250;
wire   [5:0] add_ln456_1_fu_148_p2;
reg   [5:0] add_ln456_1_reg_260;
wire    ap_CS_fsm_state2;
wire    ap_block_state2_pp0_stage1_iter0;
reg   [31:0] b_num_load_reg_270;
reg   [31:0] b_num_load_2_reg_276;
wire    ap_CS_fsm_state3;
wire    ap_block_state3_pp0_stage2_iter0;
wire   [0:0] and_ln456_fu_228_p2;
reg   [0:0] and_ln456_reg_282;
wire    ap_CS_fsm_state4;
wire    ap_block_state4_pp0_stage3_iter0;
reg   [1:0] ap_phi_mux_merge_phi_fu_92_p6;
wire   [63:0] zext_ln456_1_fu_143_p1;
wire   [63:0] zext_ln456_2_fu_154_p1;
reg   [1:0] i_fu_50;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_34;
reg   [31:0] grp_fu_103_p1;
reg   [0:0] grp_fu_108_p0;
wire   [5:0] zext_ln456_fu_133_p1;
wire   [5:0] add_ln456_fu_137_p2;
wire   [31:0] bitcast_ln456_fu_158_p1;
wire   [31:0] bitcast_ln456_1_fu_175_p1;
wire   [7:0] tmp_s_fu_161_p4;
wire   [22:0] trunc_ln456_fu_171_p1;
wire   [0:0] icmp_ln456_1_fu_198_p2;
wire   [0:0] icmp_ln456_fu_192_p2;
wire   [7:0] tmp_137_fu_178_p4;
wire   [22:0] trunc_ln456_1_fu_188_p1;
wire   [0:0] icmp_ln456_3_fu_216_p2;
wire   [0:0] icmp_ln456_2_fu_210_p2;
wire   [0:0] or_ln456_fu_204_p2;
wire   [0:0] or_ln456_1_fu_222_p2;
reg   [4:0] grp_fu_103_opcode;
reg   [1:0] ap_return_preg;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_return_preg = 2'd0;
#0 ap_done_reg = 1'b0;
end

main_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage4),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 2'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state5) & ((icmp_ln455_reg_246 == 1'd1) | ((1'd1 == and_ln456_1_reg_287) | (grp_fu_108_p2 == 1'd1))))) begin
            ap_return_preg <= ap_phi_mux_merge_phi_fu_92_p6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        i_fu_50 <= 2'd0;
    end else if (((1'd0 == and_ln456_1_reg_287) & (icmp_ln455_reg_246 == 1'd0) & (grp_fu_108_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        i_fu_50 <= add_ln455_reg_250;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln455_reg_246 == 1'd0) & (grp_fu_108_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        merge_reg_87 <= 2'd2;
    end else if (((1'd0 == and_ln456_1_reg_287) & (icmp_ln455_reg_246 == 1'd0) & (grp_fu_108_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        merge_reg_87 <= 2'd1;
    end else if (((icmp_ln455_fu_121_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        merge_reg_87 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln455_reg_250 <= add_ln455_fu_127_p2;
        icmp_ln455_reg_246 <= icmp_ln455_fu_121_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln455_fu_121_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln456_1_reg_260 <= add_ln456_1_fu_148_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln455_reg_246 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        and_ln456_1_reg_287 <= grp_fu_108_p2;
        and_ln456_reg_282 <= and_ln456_fu_228_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln455_reg_246 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        b_num_load_2_reg_276 <= b_num_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln455_reg_246 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        b_num_load_reg_270 <= b_num_q0;
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & ((icmp_ln455_reg_246 == 1'd1) | ((1'd1 == and_ln456_1_reg_287) | (grp_fu_108_p2 == 1'd1))))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln456_1_reg_287) & (icmp_ln455_reg_246 == 1'd0) & (grp_fu_108_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_phi_mux_merge_phi_fu_92_p6 = 2'd1;
    end else begin
        ap_phi_mux_merge_phi_fu_92_p6 = merge_reg_87;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & ((icmp_ln455_reg_246 == 1'd1) | ((1'd1 == and_ln456_1_reg_287) | (grp_fu_108_p2 == 1'd1))))) begin
        ap_return = ap_phi_mux_merge_phi_fu_92_p6;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_34 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_34 = i_fu_50;
    end
end

always @ (*) begin
    if (((icmp_ln455_reg_246 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        b_num_address0 = zext_ln456_2_fu_154_p1;
    end else if (((icmp_ln455_fu_121_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        b_num_address0 = zext_ln456_1_fu_143_p1;
    end else begin
        b_num_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln455_reg_246 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln455_fu_121_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        b_num_ce0 = 1'b1;
    end else begin
        b_num_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln455_reg_246 == 1'd0)) begin
        if (((grp_fu_108_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
            grp_fu_103_opcode = 5'd2;
        end else if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_fu_103_opcode = 5'd4;
        end else begin
            grp_fu_103_opcode = 'bx;
        end
    end else begin
        grp_fu_103_opcode = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_103_p1 = b_num_load_2_reg_276;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_103_p1 = b_num_q0;
    end else begin
        grp_fu_103_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_108_p0 = and_ln456_reg_282;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_108_p0 = and_ln456_fu_228_p2;
    end else begin
        grp_fu_108_p0 = 'bx;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln455_fu_127_p2 = (ap_sig_allocacmp_i_34 + 2'd1);

assign add_ln456_1_fu_148_p2 = (sub_ln153 + zext_ln456_fu_133_p1);

assign add_ln456_fu_137_p2 = (sub_ln535 + zext_ln456_fu_133_p1);

assign and_ln456_fu_228_p2 = (or_ln456_fu_204_p2 & or_ln456_1_fu_222_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;

assign bitcast_ln456_1_fu_175_p1 = b_num_load_2_reg_276;

assign bitcast_ln456_fu_158_p1 = b_num_load_reg_270;

assign grp_fu_108_p2 = (grp_fu_4230_p_dout0 & grp_fu_108_p0);

assign grp_fu_4230_p_ce = 1'b1;

assign grp_fu_4230_p_din0 = b_num_load_reg_270;

assign grp_fu_4230_p_din1 = grp_fu_103_p1;

assign grp_fu_4230_p_opcode = grp_fu_103_opcode;

assign icmp_ln455_fu_121_p2 = ((ap_sig_allocacmp_i_34 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln456_1_fu_198_p2 = ((trunc_ln456_fu_171_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln456_2_fu_210_p2 = ((tmp_137_fu_178_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln456_3_fu_216_p2 = ((trunc_ln456_1_fu_188_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln456_fu_192_p2 = ((tmp_s_fu_161_p4 != 8'd255) ? 1'b1 : 1'b0);

assign or_ln456_1_fu_222_p2 = (icmp_ln456_3_fu_216_p2 | icmp_ln456_2_fu_210_p2);

assign or_ln456_fu_204_p2 = (icmp_ln456_fu_192_p2 | icmp_ln456_1_fu_198_p2);

assign tmp_137_fu_178_p4 = {{bitcast_ln456_1_fu_175_p1[30:23]}};

assign tmp_s_fu_161_p4 = {{bitcast_ln456_fu_158_p1[30:23]}};

assign trunc_ln456_1_fu_188_p1 = bitcast_ln456_1_fu_175_p1[22:0];

assign trunc_ln456_fu_171_p1 = bitcast_ln456_fu_158_p1[22:0];

assign zext_ln456_1_fu_143_p1 = add_ln456_fu_137_p2;

assign zext_ln456_2_fu_154_p1 = add_ln456_1_reg_260;

assign zext_ln456_fu_133_p1 = ap_sig_allocacmp_i_34;

endmodule //main_main_Pipeline_VITIS_LOOP_455_1

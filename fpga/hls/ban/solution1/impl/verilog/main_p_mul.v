// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module main_p_mul (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        num_a_1_read,
        num_a_2_read,
        num_b_address0,
        num_b_ce0,
        num_b_q0,
        num_b_address1,
        num_b_ce1,
        num_b_q1,
        num_b_address2,
        num_b_ce2,
        num_b_q2,
        ap_return_0,
        ap_return_1,
        ap_return_2
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] num_a_1_read;
input  [31:0] num_a_2_read;
output  [5:0] num_b_address0;
output   num_b_ce0;
input  [31:0] num_b_q0;
output  [5:0] num_b_address1;
output   num_b_ce1;
input  [31:0] num_b_q1;
output  [5:0] num_b_address2;
output   num_b_ce2;
input  [31:0] num_b_q2;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;
output  [31:0] ap_return_2;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg num_b_ce0;
reg num_b_ce1;
reg num_b_ce2;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state2;
reg   [31:0] num_b_load_reg_185;
reg   [31:0] num_b_load_1_reg_190;
reg   [31:0] num_b_load_2_reg_195;
reg   [2:0] aux_address0;
reg    aux_ce0;
reg    aux_we0;
wire   [31:0] aux_q0;
wire    grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_ap_start;
wire    grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_ap_done;
wire    grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_ap_idle;
wire    grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_ap_ready;
wire   [2:0] grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_aux_address0;
wire    grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_aux_ce0;
wire    grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_aux_we0;
wire   [31:0] grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_aux_d0;
wire    grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_ap_start;
wire    grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_ap_done;
wire    grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_ap_idle;
wire    grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_ap_ready;
wire   [2:0] grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_aux_address0;
wire    grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_aux_ce0;
wire   [31:0] grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_num_res_0_write_assign_out;
wire    grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_num_res_0_write_assign_out_ap_vld;
wire   [31:0] grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_num_res_1_write_assign_out;
wire    grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_num_res_1_write_assign_out_ap_vld;
wire   [31:0] grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_num_res_2_write_assign_out;
wire    grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_num_res_2_write_assign_out_ap_vld;
reg    grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_ap_start_reg = 1'b0;
#0 grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_ap_start_reg = 1'b0;
end

main_p_mul_aux_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 5 ),
    .AddressWidth( 3 ))
aux_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(aux_address0),
    .ce0(aux_ce0),
    .we0(aux_we0),
    .d0(grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_aux_d0),
    .q0(aux_q0)
);

main_p_mul_Pipeline_VITIS_LOOP_168_1 grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_ap_start),
    .ap_done(grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_ap_done),
    .ap_idle(grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_ap_idle),
    .ap_ready(grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_ap_ready),
    .num_a_1_read(num_a_1_read),
    .num_a_2_read(num_a_2_read),
    .num_b_load(num_b_load_reg_185),
    .num_b_load_1(num_b_load_1_reg_190),
    .num_b_load_2(num_b_load_2_reg_195),
    .aux_address0(grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_aux_address0),
    .aux_ce0(grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_aux_ce0),
    .aux_we0(grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_aux_we0),
    .aux_d0(grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_aux_d0)
);

main_p_mul_Pipeline_VITIS_LOOP_180_3 grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_ap_start),
    .ap_done(grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_ap_done),
    .ap_idle(grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_ap_idle),
    .ap_ready(grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_ap_ready),
    .aux_address0(grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_aux_address0),
    .aux_ce0(grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_aux_ce0),
    .aux_q0(aux_q0),
    .num_res_0_write_assign_out(grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_num_res_0_write_assign_out),
    .num_res_0_write_assign_out_ap_vld(grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_num_res_0_write_assign_out_ap_vld),
    .num_res_1_write_assign_out(grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_num_res_1_write_assign_out),
    .num_res_1_write_assign_out_ap_vld(grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_num_res_1_write_assign_out_ap_vld),
    .num_res_2_write_assign_out(grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_num_res_2_write_assign_out),
    .num_res_2_write_assign_out_ap_vld(grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_num_res_2_write_assign_out_ap_vld)
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
        grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_ap_start_reg <= 1'b1;
        end else if ((grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_ap_ready == 1'b1)) begin
            grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_ap_start_reg <= 1'b1;
        end else if ((grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_ap_ready == 1'b1)) begin
            grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        num_b_load_1_reg_190 <= num_b_q1;
        num_b_load_2_reg_195 <= num_b_q0;
        num_b_load_reg_185 <= num_b_q2;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if ((grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

assign ap_ST_fsm_state6_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        aux_address0 = grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_aux_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        aux_address0 = grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_aux_address0;
    end else begin
        aux_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        aux_ce0 = grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_aux_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        aux_ce0 = grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_aux_ce0;
    end else begin
        aux_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        aux_we0 = grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_aux_we0;
    end else begin
        aux_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        num_b_ce0 = 1'b1;
    end else begin
        num_b_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        num_b_ce1 = 1'b1;
    end else begin
        num_b_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        num_b_ce2 = 1'b1;
    end else begin
        num_b_ce2 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_return_0 = grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_num_res_0_write_assign_out;

assign ap_return_1 = grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_num_res_1_write_assign_out;

assign ap_return_2 = grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_num_res_2_write_assign_out;

assign grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_ap_start = grp_p_mul_Pipeline_VITIS_LOOP_168_1_fu_92_ap_start_reg;

assign grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_ap_start = grp_p_mul_Pipeline_VITIS_LOOP_180_3_fu_107_ap_start_reg;

assign num_b_address0 = 64'd5;

assign num_b_address1 = 64'd4;

assign num_b_address2 = 64'd3;

endmodule //main_p_mul

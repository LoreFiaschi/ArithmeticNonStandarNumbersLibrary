// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="main_main,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu7ev-ffvc1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.254000,HLS_SYN_LAT=13,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=207,HLS_SYN_LUT=210,HLS_VERSION=2021_2}" *)

module main (
        ap_local_block,
        ap_local_deadlock,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_return
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

output   ap_local_block;
output   ap_local_deadlock;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start;
wire    grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_done;
wire    grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_idle;
wire    grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_ready;
wire   [31:0] grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_b_num_2_out;
wire    grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_b_num_2_out_ap_vld;
wire   [31:0] grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_b_num_1_out;
wire    grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_b_num_1_out_ap_vld;
wire   [31:0] grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_b_num_0_out;
wire    grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_b_num_0_out_ap_vld;
wire    grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start;
wire    grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_done;
wire    grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_idle;
wire    grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_ready;
reg    grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg = 1'b0;
#0 grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg = 1'b0;
end

main_main_Pipeline_VITIS_LOOP_21_1 grp_main_Pipeline_VITIS_LOOP_21_1_fu_26(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start),
    .ap_done(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_done),
    .ap_idle(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_idle),
    .ap_ready(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_ready),
    .b_num_2_out(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_b_num_2_out),
    .b_num_2_out_ap_vld(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_b_num_2_out_ap_vld),
    .b_num_1_out(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_b_num_1_out),
    .b_num_1_out_ap_vld(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_b_num_1_out_ap_vld),
    .b_num_0_out(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_b_num_0_out),
    .b_num_0_out_ap_vld(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_b_num_0_out_ap_vld)
);

main_main_Pipeline_VITIS_LOOP_142_1 grp_main_Pipeline_VITIS_LOOP_142_1_fu_33(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start),
    .ap_done(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_done),
    .ap_idle(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_idle),
    .ap_ready(grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_ready),
    .b_num_2_reload(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_b_num_2_out),
    .b_num_1_reload(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_b_num_1_out),
    .b_num_0_reload(grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_b_num_0_out)
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
        grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg <= 1'b1;
        end else if ((grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_ready == 1'b1)) begin
            grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg <= 1'b1;
        end else if ((grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_ready == 1'b1)) begin
            grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state4) & (grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
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

assign ap_local_block = 1'b0;

assign ap_local_deadlock = 1'b0;

assign ap_return = 32'd0;

assign grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start = grp_main_Pipeline_VITIS_LOOP_142_1_fu_33_ap_start_reg;

assign grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start = grp_main_Pipeline_VITIS_LOOP_21_1_fu_26_ap_start_reg;

endmodule //main
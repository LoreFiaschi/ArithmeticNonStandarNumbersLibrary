// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module main_mul_body_Pipeline_VITIS_LOOP_168_1_b_num_ROM_AUTO_1R (
address0, ce0, q0, address1, ce1, q1, address2, ce2, q2, reset,clk);

parameter DataWidth = 32;
parameter AddressWidth = 6;
parameter AddressRange = 60;

input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input[AddressWidth-1:0] address1;
input ce1;
output reg[DataWidth-1:0] q1;
input[AddressWidth-1:0] address2;
input ce2;
output reg[DataWidth-1:0] q2;
input reset;
input clk;

reg [DataWidth-1:0] ram0[0:AddressRange-1];
reg [DataWidth-1:0] ram1[0:AddressRange-1];

initial begin
    $readmemh("./main_mul_body_Pipeline_VITIS_LOOP_168_1_b_num_ROM_AUTO_1R.dat", ram0);
    $readmemh("./main_mul_body_Pipeline_VITIS_LOOP_168_1_b_num_ROM_AUTO_1R.dat", ram1);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram0[address0];
    end
end



always @(posedge clk)  
begin 
    if (ce1) 
    begin
        q1 <= ram0[address1];
    end
end



always @(posedge clk)  
begin 
    if (ce2) 
    begin
        q2 <= ram1[address2];
    end
end



endmodule


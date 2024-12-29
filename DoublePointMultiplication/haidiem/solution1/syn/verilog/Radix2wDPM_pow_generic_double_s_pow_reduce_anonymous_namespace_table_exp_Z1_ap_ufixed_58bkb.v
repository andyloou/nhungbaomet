// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module Radix2wDPM_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58bkb (
address0, ce0, q0, reset,clk);

parameter DataWidth = 58;
parameter AddressWidth = 8;
parameter AddressRange = 256;

input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;

reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./Radix2wDPM_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58bkb.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[address0];
    end
end



endmodule


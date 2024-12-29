// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module Radix2wDPM_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0cud (
address0, ce0, q0, address1, ce1, q1, reset,clk);

parameter DataWidth = 26;
parameter AddressWidth = 8;
parameter AddressRange = 256;

input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input[AddressWidth-1:0] address1;
input ce1;
output reg[DataWidth-1:0] q1;
input reset;
input clk;

reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./Radix2wDPM_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0cud.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[address0];
    end
end



always @(posedge clk)  
begin 
    if (ce1) 
    begin
        q1 <= ram[address1];
    end
end



endmodule


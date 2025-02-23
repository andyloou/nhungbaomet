// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Radix2wDPM_Radix2wDPM_Pipeline_VITIS_LOOP_120_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        sext_ln120,
        p_out,
        p_out_ap_vld,
        n_out,
        n_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [2:0] sext_ln120;
output  [15:0] p_out;
output   p_out_ap_vld;
output  [31:0] n_out;
output   n_out_ap_vld;

reg ap_idle;
reg p_out_ap_vld;
reg n_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] or_ln120_fu_94_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] n_fu_34;
wire   [31:0] n_2_fu_100_p2;
wire    ap_block_pp0_stage0_11001;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [15:0] empty_fu_38;
wire   [15:0] select_ln121_fu_154_p3;
wire  signed [15:0] sext_ln120_cast_fu_62_p1;
wire    ap_block_pp0_stage0_01001;
wire   [0:0] empty_210_fu_84_p1;
wire   [0:0] icmp_ln120_fu_88_p2;
wire   [15:0] sub_ln121_fu_114_p2;
wire   [14:0] lshr_ln121_1_fu_120_p4;
wire   [15:0] zext_ln121_fu_130_p1;
wire   [14:0] lshr_ln121_2_fu_140_p4;
wire   [0:0] tmp_fu_106_p3;
wire   [15:0] sub_ln121_1_fu_134_p2;
wire   [15:0] zext_ln121_1_fu_150_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

Radix2wDPM_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            empty_fu_38 <= sext_ln120_cast_fu_62_p1;
        end else if (((or_ln120_fu_94_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            empty_fu_38 <= select_ln121_fu_154_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            n_fu_34 <= 32'd0;
        end else if (((or_ln120_fu_94_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            n_fu_34 <= n_2_fu_100_p2;
        end
    end
end

always @ (*) begin
    if (((or_ln120_fu_94_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((or_ln120_fu_94_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        n_out_ap_vld = 1'b1;
    end else begin
        n_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((or_ln120_fu_94_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_out_ap_vld = 1'b1;
    end else begin
        p_out_ap_vld = 1'b0;
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

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign empty_210_fu_84_p1 = empty_fu_38[0:0];

assign icmp_ln120_fu_88_p2 = ((empty_fu_38 == 16'd0) ? 1'b1 : 1'b0);

assign lshr_ln121_1_fu_120_p4 = {{sub_ln121_fu_114_p2[15:1]}};

assign lshr_ln121_2_fu_140_p4 = {{empty_fu_38[15:1]}};

assign n_2_fu_100_p2 = (n_fu_34 + 32'd1);

assign n_out = n_fu_34;

assign or_ln120_fu_94_p2 = (icmp_ln120_fu_88_p2 | empty_210_fu_84_p1);

assign p_out = empty_fu_38;

assign select_ln121_fu_154_p3 = ((tmp_fu_106_p3[0:0] == 1'b1) ? sub_ln121_1_fu_134_p2 : zext_ln121_1_fu_150_p1);

assign sext_ln120_cast_fu_62_p1 = $signed(sext_ln120);

assign sub_ln121_1_fu_134_p2 = (16'd0 - zext_ln121_fu_130_p1);

assign sub_ln121_fu_114_p2 = (16'd0 - empty_fu_38);

assign tmp_fu_106_p3 = empty_fu_38[32'd15];

assign zext_ln121_1_fu_150_p1 = lshr_ln121_2_fu_140_p4;

assign zext_ln121_fu_130_p1 = lshr_ln121_1_fu_120_p4;

endmodule //Radix2wDPM_Radix2wDPM_Pipeline_VITIS_LOOP_120_1

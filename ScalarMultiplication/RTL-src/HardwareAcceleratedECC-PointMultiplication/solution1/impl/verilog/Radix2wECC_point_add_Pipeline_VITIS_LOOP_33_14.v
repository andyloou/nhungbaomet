// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Radix2wECC_point_add_Pipeline_VITIS_LOOP_33_14 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        y1_V_read,
        y2_V_read,
        p_Val2_4_out,
        p_Val2_4_out_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [165:0] y1_V_read;
input  [165:0] y2_V_read;
output  [162:0] p_Val2_4_out;
output   p_Val2_4_out_ap_vld;

reg ap_idle;
reg p_Val2_4_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln33_fu_81_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [7:0] i_fu_38;
wire   [7:0] i_2_fu_87_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_i_1;
reg   [165:0] p_Val2_s_fu_42;
reg   [165:0] p_Result_2_fu_123_p4;
wire   [31:0] index_assign_7_cast_fu_93_p1;
wire   [0:0] p_Result_s_fu_97_p3;
wire   [0:0] p_Result_1_fu_105_p3;
wire   [0:0] p_Repl2_s_fu_113_p2;
wire   [31:0] zext_ln844_fu_119_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end

Radix2wECC_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        if ((icmp_ln33_fu_81_p2 == 1'd0)) begin
            i_fu_38 <= i_2_fu_87_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_38 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln33_fu_81_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        p_Val2_s_fu_42 <= p_Result_2_fu_123_p4;
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln33_fu_81_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_1 = 8'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_38;
    end
end

always @ (*) begin
    if (((icmp_ln33_fu_81_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        p_Val2_4_out_ap_vld = 1'b1;
    end else begin
        p_Val2_4_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign i_2_fu_87_p2 = (ap_sig_allocacmp_i_1 + 8'd1);

assign icmp_ln33_fu_81_p2 = ((ap_sig_allocacmp_i_1 == 8'd166) ? 1'b1 : 1'b0);

assign index_assign_7_cast_fu_93_p1 = ap_sig_allocacmp_i_1;

assign p_Repl2_s_fu_113_p2 = (p_Result_s_fu_97_p3 ^ p_Result_1_fu_105_p3);

assign p_Result_1_fu_105_p3 = y2_V_read[index_assign_7_cast_fu_93_p1];

always @ (*) begin
    p_Result_2_fu_123_p4 = p_Val2_s_fu_42;
    p_Result_2_fu_123_p4[index_assign_7_cast_fu_93_p1] = |(zext_ln844_fu_119_p1);
end

assign p_Result_s_fu_97_p3 = y1_V_read[index_assign_7_cast_fu_93_p1];

assign p_Val2_4_out = p_Val2_s_fu_42[162:0];

assign zext_ln844_fu_119_p1 = p_Repl2_s_fu_113_p2;

endmodule //Radix2wECC_point_add_Pipeline_VITIS_LOOP_33_14

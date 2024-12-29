//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Thu Dec 26 19:30:40 2024
//Host        : dundun running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DDR_0_1_addr,
    DDR_0_1_ba,
    DDR_0_1_cas_n,
    DDR_0_1_ck_n,
    DDR_0_1_ck_p,
    DDR_0_1_cke,
    DDR_0_1_cs_n,
    DDR_0_1_dm,
    DDR_0_1_dq,
    DDR_0_1_dqs_n,
    DDR_0_1_dqs_p,
    DDR_0_1_odt,
    DDR_0_1_ras_n,
    DDR_0_1_reset_n,
    DDR_0_1_we_n,
    FIXED_IO_0_1_ddr_vrn,
    FIXED_IO_0_1_ddr_vrp,
    FIXED_IO_0_1_mio,
    FIXED_IO_0_1_ps_clk,
    FIXED_IO_0_1_ps_porb,
    FIXED_IO_0_1_ps_srstb);
  inout [14:0]DDR_0_1_addr;
  inout [2:0]DDR_0_1_ba;
  inout DDR_0_1_cas_n;
  inout DDR_0_1_ck_n;
  inout DDR_0_1_ck_p;
  inout DDR_0_1_cke;
  inout DDR_0_1_cs_n;
  inout [3:0]DDR_0_1_dm;
  inout [31:0]DDR_0_1_dq;
  inout [3:0]DDR_0_1_dqs_n;
  inout [3:0]DDR_0_1_dqs_p;
  inout DDR_0_1_odt;
  inout DDR_0_1_ras_n;
  inout DDR_0_1_reset_n;
  inout DDR_0_1_we_n;
  inout FIXED_IO_0_1_ddr_vrn;
  inout FIXED_IO_0_1_ddr_vrp;
  inout [53:0]FIXED_IO_0_1_mio;
  inout FIXED_IO_0_1_ps_clk;
  inout FIXED_IO_0_1_ps_porb;
  inout FIXED_IO_0_1_ps_srstb;

  wire [14:0]DDR_0_1_addr;
  wire [2:0]DDR_0_1_ba;
  wire DDR_0_1_cas_n;
  wire DDR_0_1_ck_n;
  wire DDR_0_1_ck_p;
  wire DDR_0_1_cke;
  wire DDR_0_1_cs_n;
  wire [3:0]DDR_0_1_dm;
  wire [31:0]DDR_0_1_dq;
  wire [3:0]DDR_0_1_dqs_n;
  wire [3:0]DDR_0_1_dqs_p;
  wire DDR_0_1_odt;
  wire DDR_0_1_ras_n;
  wire DDR_0_1_reset_n;
  wire DDR_0_1_we_n;
  wire FIXED_IO_0_1_ddr_vrn;
  wire FIXED_IO_0_1_ddr_vrp;
  wire [53:0]FIXED_IO_0_1_mio;
  wire FIXED_IO_0_1_ps_clk;
  wire FIXED_IO_0_1_ps_porb;
  wire FIXED_IO_0_1_ps_srstb;

  design_1 design_1_i
       (.DDR_0_1_addr(DDR_0_1_addr),
        .DDR_0_1_ba(DDR_0_1_ba),
        .DDR_0_1_cas_n(DDR_0_1_cas_n),
        .DDR_0_1_ck_n(DDR_0_1_ck_n),
        .DDR_0_1_ck_p(DDR_0_1_ck_p),
        .DDR_0_1_cke(DDR_0_1_cke),
        .DDR_0_1_cs_n(DDR_0_1_cs_n),
        .DDR_0_1_dm(DDR_0_1_dm),
        .DDR_0_1_dq(DDR_0_1_dq),
        .DDR_0_1_dqs_n(DDR_0_1_dqs_n),
        .DDR_0_1_dqs_p(DDR_0_1_dqs_p),
        .DDR_0_1_odt(DDR_0_1_odt),
        .DDR_0_1_ras_n(DDR_0_1_ras_n),
        .DDR_0_1_reset_n(DDR_0_1_reset_n),
        .DDR_0_1_we_n(DDR_0_1_we_n),
        .FIXED_IO_0_1_ddr_vrn(FIXED_IO_0_1_ddr_vrn),
        .FIXED_IO_0_1_ddr_vrp(FIXED_IO_0_1_ddr_vrp),
        .FIXED_IO_0_1_mio(FIXED_IO_0_1_mio),
        .FIXED_IO_0_1_ps_clk(FIXED_IO_0_1_ps_clk),
        .FIXED_IO_0_1_ps_porb(FIXED_IO_0_1_ps_porb),
        .FIXED_IO_0_1_ps_srstb(FIXED_IO_0_1_ps_srstb));
endmodule

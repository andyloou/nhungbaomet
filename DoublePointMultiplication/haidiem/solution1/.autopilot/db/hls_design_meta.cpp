#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_local_block", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_local_deadlock", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("k1", 166, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("k2", 166, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("R", 332, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("S", 332, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("P", 332, hls_out, 4, "ap_vld", "out_data", 1),
	Port_Property("P_ap_vld", 1, hls_out, 4, "ap_vld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "Radix2wDPM";

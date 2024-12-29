vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_25
vlib questa_lib/msim/fifo_generator_v13_2_6
vlib questa_lib/msim/axi_data_fifo_v2_1_24
vlib questa_lib/msim/axi_crossbar_v2_1_26
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/axi_intc_v4_1_16
vlib questa_lib/msim/axi_vip_v1_1_11
vlib questa_lib/msim/processing_system7_vip_v1_0_13
vlib questa_lib/msim/axi_protocol_converter_v2_1_25
vlib questa_lib/msim/axi_clock_converter_v2_1_24
vlib questa_lib/msim/blk_mem_gen_v8_4_5
vlib questa_lib/msim/axi_dwidth_converter_v2_1_25

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_25 questa_lib/msim/axi_register_slice_v2_1_25
vmap fifo_generator_v13_2_6 questa_lib/msim/fifo_generator_v13_2_6
vmap axi_data_fifo_v2_1_24 questa_lib/msim/axi_data_fifo_v2_1_24
vmap axi_crossbar_v2_1_26 questa_lib/msim/axi_crossbar_v2_1_26
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_16 questa_lib/msim/axi_intc_v4_1_16
vmap axi_vip_v1_1_11 questa_lib/msim/axi_vip_v1_1_11
vmap processing_system7_vip_v1_0_13 questa_lib/msim/processing_system7_vip_v1_0_13
vmap axi_protocol_converter_v2_1_25 questa_lib/msim/axi_protocol_converter_v2_1_25
vmap axi_clock_converter_v2_1_24 questa_lib/msim/axi_clock_converter_v2_1_24
vmap blk_mem_gen_v8_4_5 questa_lib/msim/blk_mem_gen_v8_4_5
vmap axi_dwidth_converter_v2_1_25 questa_lib/msim/axi_dwidth_converter_v2_1_25

vlog -work xilinx_vip  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ip/design_2_Radix2wECC_0_1/drivers/Radix2wECC_v1_0/src" "+incdir+D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"D:/vitis/xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/vitis/xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/vitis/xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_2/ip/design_2_proc_sys_reset_0_0/sim/design_2_proc_sys_reset_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ip/design_2_Radix2wECC_0_1/drivers/Radix2wECC_v1_0/src" "+incdir+D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ip/design_2_Radix2wECC_0_1/drivers/Radix2wECC_v1_0/src" "+incdir+D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_25  -incr -mfcu "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ip/design_2_Radix2wECC_0_1/drivers/Radix2wECC_v1_0/src" "+incdir+D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_6  -incr -mfcu "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ip/design_2_Radix2wECC_0_1/drivers/Radix2wECC_v1_0/src" "+incdir+D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6  -93 \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -incr -mfcu "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ip/design_2_Radix2wECC_0_1/drivers/Radix2wECC_v1_0/src" "+incdir+D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_24  -incr -mfcu "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ip/design_2_Radix2wECC_0_1/drivers/Radix2wECC_v1_0/src" "+incdir+D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_26  -incr -mfcu "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ip/design_2_Radix2wECC_0_1/drivers/Radix2wECC_v1_0/src" "+incdir+D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ip/design_2_Radix2wECC_0_1/drivers/Radix2wECC_v1_0/src" "+incdir+D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_xbar_0/sim/design_2_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_16  -93 \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/0b29/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_2/ip/design_2_axi_intc_0_0/sim/design_2_axi_intc_0_0.vhd" \

vlog -work axi_vip_v1_1_11  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ip/design_2_Radix2wECC_0_1/drivers/Radix2wECC_v1_0/src" "+incdir+D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_13  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ip/design_2_Radix2wECC_0_1/drivers/Radix2wECC_v1_0/src" "+incdir+D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ip/design_2_Radix2wECC_0_1/drivers/Radix2wECC_v1_0/src" "+incdir+D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_processing_system7_0_0/sim/design_2_processing_system7_0_0.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_bf_add_1.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_bf_inv.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_bf_inv_Pipeline_VITIS_LOOP_25_1.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_bf_inv_Pipeline_VITIS_LOOP_25_18.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_bf_inv_Pipeline_VITIS_LOOP_33_1.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_bf_inv_Pipeline_VITIS_LOOP_33_19.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_bf_mult.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_bf_mult_1.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_bf_mult_1_Pipeline_VITIS_LOOP_33_1.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_bf_mult_1_Pipeline_VITIS_LOOP_33_16.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_bf_mult_2.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_bf_mult_2_Pipeline_VITIS_LOOP_33_1.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_bf_mult_2_Pipeline_VITIS_LOOP_33_15.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_bf_mult_Pipeline_VITIS_LOOP_33_1.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_bf_mult_Pipeline_VITIS_LOOP_33_17.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_buff1_RAM_AUTO_1R1W.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_control_s_axi.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_flow_control_loop_pipe_sequential_init.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_gmem_m_axi.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_point_add.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_point_add_Pipeline_VITIS_LOOP_33_1.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_point_add_Pipeline_VITIS_LOOP_33_11.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_point_add_Pipeline_VITIS_LOOP_33_12.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_point_add_Pipeline_VITIS_LOOP_33_13.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_point_add_Pipeline_VITIS_LOOP_33_14.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_Radix2wECC_Pipeline_1.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_Radix2wECC_Pipeline_2.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_Radix2wECC_Pipeline_3.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_Radix2wECC_Pipeline_17.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_Radix2wECC_Pipeline_18.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_Radix2wECC_Pipeline_VITIS_LOOP_33_1.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_Radix2wECC_Pipeline_VITIS_LOOP_33_110.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_Radix2wECC_Pipeline_VITIS_LOOP_33_111.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_Radix2wECC_Pipeline_VITIS_LOOP_33_112.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_Radix2wECC_Pipeline_VITIS_LOOP_33_113.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_Radix2wECC_Pipeline_VITIS_LOOP_33_114.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_Radix2wECC_Pipeline_VITIS_LOOP_33_115.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_Radix2wECC_Pipeline_VITIS_LOOP_33_116.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_Radix2wECC_Pipeline_VITIS_LOOP_36_2.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_Radix2wECC_Pipeline_VITIS_LOOP_39_3.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_Radix2wECC_Pipeline_VITIS_LOOP_56_6.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_Radix2wECC_Pipeline_VITIS_LOOP_77_7.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_Radix2wECC_Pipeline_VITIS_LOOP_92_1.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC_values_x_V_RAM_AUTO_1R1W.v" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/3002/hdl/verilog/Radix2wECC.v" \
"../../../bd/design_2/ip/design_2_Radix2wECC_0_1/sim/design_2_Radix2wECC_0_1.v" \

vlog -work axi_protocol_converter_v2_1_25  -incr -mfcu "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ip/design_2_Radix2wECC_0_1/drivers/Radix2wECC_v1_0/src" "+incdir+D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ip/design_2_Radix2wECC_0_1/drivers/Radix2wECC_v1_0/src" "+incdir+D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_auto_pc_0/sim/design_2_auto_pc_0.v" \
"../../../bd/design_2/ip/design_2_auto_pc_1/sim/design_2_auto_pc_1.v" \

vlog -work axi_clock_converter_v2_1_24  -incr -mfcu "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ip/design_2_Radix2wECC_0_1/drivers/Radix2wECC_v1_0/src" "+incdir+D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/23c0/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_5  -incr -mfcu "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ip/design_2_Radix2wECC_0_1/drivers/Radix2wECC_v1_0/src" "+incdir+D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_25  -incr -mfcu "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ip/design_2_Radix2wECC_0_1/drivers/Radix2wECC_v1_0/src" "+incdir+D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/38b4/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ip/design_2_Radix2wECC_0_1/drivers/Radix2wECC_v1_0/src" "+incdir+D:/vitis/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_auto_us_0/sim/design_2_auto_us_0.v" \
"../../../bd/design_2/sim/design_2.v" \

vlog -work xil_defaultlib \
"glbl.v"


############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HardwareAcceleratedECC-PointMultiplication
set_top Radix2wECC
add_files gf2_arithmetic.cpp
add_files gf2_arithmetic.hpp
add_files module.cpp
add_files module.hpp
add_files -tb gf2_arith_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./HardwareAcceleratedECC-PointMultiplication/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog

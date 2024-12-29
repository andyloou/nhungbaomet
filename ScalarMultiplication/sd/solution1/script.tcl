############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sd
set_top gf2_arithmetic
add_files RTL-src/gf2_arithmetic.cpp
add_files RTL-src/gf2_arithmetic.hpp
add_files RTL-src/module.cpp
add_files RTL-src/module.hpp
add_files -tb RTL-src/gf2_arith_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
#source "./sd/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog

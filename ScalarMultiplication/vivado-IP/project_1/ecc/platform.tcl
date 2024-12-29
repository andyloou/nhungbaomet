# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\HardwareAcceleratedECC-PointMultiplication\ScalarMultiplication\vivado-IP\project_1\ecc\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\HardwareAcceleratedECC-PointMultiplication\ScalarMultiplication\vivado-IP\project_1\ecc\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ecc}\
-hw {C:\HardwareAcceleratedECC-PointMultiplication\ScalarMultiplication\vivado-IP\project_1\design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/HardwareAcceleratedECC-PointMultiplication/ScalarMultiplication/vivado-IP/project_1}

platform write
platform generate -domains 
platform active {ecc}

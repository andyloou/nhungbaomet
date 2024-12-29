onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Radix2wDPM_dmul_64ns_64ns_64_7_max_dsp_1_ip_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {Radix2wDPM_dmul_64ns_64ns_64_7_max_dsp_1_ip.udo}

run -all

quit -force

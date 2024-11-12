onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib adder_sfix32_opt

do {wave.do}

view wave
view structure
view signals

do {adder_sfix32.udo}

run -all

quit -force

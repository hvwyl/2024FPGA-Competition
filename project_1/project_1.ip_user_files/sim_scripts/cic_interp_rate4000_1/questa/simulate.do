onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib cic_interp_rate4000_1_opt

do {wave.do}

view wave
view structure
view signals

do {cic_interp_rate4000_1.udo}

run -all

quit -force

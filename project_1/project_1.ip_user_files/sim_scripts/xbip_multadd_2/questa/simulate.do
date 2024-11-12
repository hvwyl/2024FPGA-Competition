onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib xbip_multadd_2_opt

do {wave.do}

view wave
view structure
view signals

do {xbip_multadd_2.udo}

run -all

quit -force

onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L oddr_v1_0_0 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.oddr_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {oddr_0.udo}

run -all

quit -force

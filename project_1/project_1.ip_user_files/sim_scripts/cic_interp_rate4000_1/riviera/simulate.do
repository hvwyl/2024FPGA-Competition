onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+cic_interp_rate4000_1 -L xil_defaultlib -L xpm -L xbip_utils_v3_0_9 -L axi_utils_v2_0_5 -L cic_compiler_v4_0_13 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.cic_interp_rate4000_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {cic_interp_rate4000_1.udo}

run -all

endsim

quit -force

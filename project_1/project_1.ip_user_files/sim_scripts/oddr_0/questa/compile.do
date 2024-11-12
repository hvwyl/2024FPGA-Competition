vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/oddr_v1_0_0

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap oddr_v1_0_0 questa_lib/msim/oddr_v1_0_0

vlog -work xil_defaultlib -64 -sv \
"D:/Software/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Software/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Software/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work oddr_v1_0_0 -64 \
"../../../ipstatic/hdl/oddr_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../../project_1.srcs/sources_1/ip/oddr_0/sim/oddr_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


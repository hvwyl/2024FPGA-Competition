vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/jtag_axi

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap jtag_axi questa_lib/msim/jtag_axi

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../project_1.srcs/sources_1/ip/jtag_axi_0/hdl/verilog" \
"D:/Software/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Software/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Software/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work jtag_axi -64 "+incdir+../../../../project_1.srcs/sources_1/ip/jtag_axi_0/hdl/verilog" \
"../../../ipstatic/hdl/jtag_axi_v1_2_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/ip/jtag_axi_0/hdl/verilog" \
"../../../../project_1.srcs/sources_1/ip/jtag_axi_0/sim/jtag_axi_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


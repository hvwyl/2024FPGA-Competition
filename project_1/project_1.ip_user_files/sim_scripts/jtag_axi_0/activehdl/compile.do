vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/jtag_axi

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap jtag_axi activehdl/jtag_axi

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/ip/jtag_axi_0/hdl/verilog" \
"D:/Software/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Software/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Software/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work jtag_axi  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/ip/jtag_axi_0/hdl/verilog" \
"../../../ipstatic/hdl/jtag_axi_v1_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/ip/jtag_axi_0/hdl/verilog" \
"../../../../project_1.srcs/sources_1/ip/jtag_axi_0/sim/jtag_axi_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Nov 12 16:25:29 2024
// Host        : DESKTOP-494Q00J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/admin/Desktop/project_1/project_1.srcs/sources_1/ip/oddr_0/oddr_0_stub.v
// Design      : oddr_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "oddr_v1_0_0_oddr,Vivado 2018.3" *)
module oddr_0(clk_in, clk_out)
/* synthesis syn_black_box black_box_pad_pin="clk_in,clk_out" */;
  input clk_in;
  output clk_out;
endmodule

// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Nov 12 16:26:46 2024
// Host        : DESKTOP-494Q00J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/admin/Desktop/project_1/project_1.srcs/sources_1/ip/adder_sfix32/adder_sfix32_stub.v
// Design      : adder_sfix32
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *)
module adder_sfix32(A, B, CLK, CE, S)
/* synthesis syn_black_box black_box_pad_pin="A[31:0],B[31:0],CLK,CE,S[32:0]" */;
  input [31:0]A;
  input [31:0]B;
  input CLK;
  input CE;
  output [32:0]S;
endmodule

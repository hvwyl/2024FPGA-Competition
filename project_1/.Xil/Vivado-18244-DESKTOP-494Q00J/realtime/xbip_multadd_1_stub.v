// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_multadd_v3_0_13,Vivado 2018.3" *)
module xbip_multadd_1(CLK, CE, SCLR, A, B, C, SUBTRACT, P, PCOUT);
  input CLK;
  input CE;
  input SCLR;
  input [31:0]A;
  input [31:0]B;
  input [63:0]C;
  input SUBTRACT;
  output [64:0]P;
  output [47:0]PCOUT;
endmodule

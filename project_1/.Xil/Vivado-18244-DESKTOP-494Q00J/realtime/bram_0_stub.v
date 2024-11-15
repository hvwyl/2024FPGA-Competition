// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module bram_0(clka, ena, wea, addra, dina, douta, clkb, enb, web, addrb, 
  dinb, doutb);
  input clka;
  input ena;
  input [3:0]wea;
  input [11:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input enb;
  input [3:0]web;
  input [11:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
endmodule

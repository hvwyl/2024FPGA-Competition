`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/19 19:06:03
// Design Name: 
// Module Name: AM_sfix16
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//AM_sfix16(
//.clk(),
//.rst(),
//.mod_depth(),
//.basebnad_in(),
//.carrier_freq_word_in(),
//.carrier_phase_word_in(),
//.AM_signal_out()
//);

module AM_sfix16(
    input clk,
    input rst,
    input [15:0] mod_depth,
    input signed [15:0] basebnad_in,
    input [31:0] carrier_freq_word_in,
    input [31:0] carrier_phase_word_in,
    output signed [15:0] AM_signal_out
    );
    
    wire signed [15:0] baseband_offset;
    wire signed [31:0] baseband_scaled;
    wire signed [31:0] AM_tmp;

    wire signed [15:0] dds_sin,dds_cos;
    wire signed [15:0] carrier_in;
    dds_sfix16 
    AM_sfix16_dds_sfix16_u0 (
    .aclk(clk),                                // input wire aclk
    .aresetn(!rst),                          // input wire aresetn
    .s_axis_phase_tvalid(1'b1),  // input wire s_axis_phase_tvalid
    .s_axis_phase_tdata({carrier_phase_word_in,carrier_freq_word_in}),    // input wire [63 : 0] s_axis_phase_tdata
    .m_axis_data_tvalid(),    // output wire m_axis_data_tvalid
    .m_axis_data_tdata({dds_sin,dds_cos}),      // output wire [31 : 0] m_axis_data_tdata
    .m_axis_phase_tvalid(),  // output wire m_axis_phase_tvalid
    .m_axis_phase_tdata()    // output wire [31 : 0] m_axis_phase_tdata
    );
    assign carrier_in=dds_sin;
    
    
    assign baseband_offset=baseband_scaled[31:16]+16'd8192;
    mult_sfix16
    AM_sfix16_mult_gen_0_u0 (
      .CLK(clk),  // input wire CLK
      .A({basebnad_in[15],basebnad_in[15:1]}),      // input wire [15 : 0] A//sfix16
      .B({1'b0,mod_depth[15:1]}),      // input wire [15 : 0] B//sfix16
      .P(baseband_scaled)      // output wire [31 : 0] P//sfix32
    ),
    AM_sfix16_mult_gen_0_u1 (
      .CLK(clk),  // input wire CLK
      .A(baseband_offset),      // input wire [15 : 0] A//sfix16
      .B(carrier_in),      // input wire [15 : 0] B//sfix16
      .P(AM_tmp)      // output wire [31 : 0] P//sfix32
    );
    assign AM_signal_out=AM_tmp[29-:16];
endmodule

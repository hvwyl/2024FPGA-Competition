`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/10 14:40:48
// Design Name: 
// Module Name: IQ_synth_fix16
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

//IQ_synth_fix16(
//    .clk(),
//    .rst(),
//    .swap_IQ_channel(),
//    .I_baseband_in_sfix16(),
//    .Q_baseband_in_sfix16(),
//    .carrier_freq_word_in_ufix32(),
//    .carrier_phase_word_in_ufix32(),
//    .carrier_phase_count_out_ufix32(),
//    .I_carrier_out_sfix16(),
//    .Q_carrier_out_sfix16(),
//    .I_channel_out_sfix16(),
//    .Q_channel_out_sfix16(),
//    .IQ_output_sfix16()
//    );

module IQ_synth_fix16(
    input clk,
    input rst,
    input swap_IQ_channel,
    input signed [15:0] I_baseband_in_sfix16,
    input signed [15:0] Q_baseband_in_sfix16,
    input [31:0] carrier_freq_word_in_ufix32,
    input [31:0] carrier_phase_word_in_ufix32,
    output [31:0] carrier_phase_count_out_ufix32,
    output signed [15:0] I_carrier_out_sfix16,
    output signed [15:0] Q_carrier_out_sfix16,
    output signed [15:0] I_channel_out_sfix16,
    output signed [15:0] Q_channel_out_sfix16,
    output signed [15:0] IQ_output_sfix16
    );

    ///////////
    //dds module generate carrier wave
    //////////
    wire [15:0] dds_carrier_sin,dds_carrier_cos;
    dds_sfix16 
    dds_fix16_u3 (
      .aclk(clk),                                // input wire aclk
      .aresetn(!rst),                          // input wire aresetn
      .s_axis_phase_tvalid(1'b1),  // input wire s_axis_phase_tvalid
      .s_axis_phase_tdata({carrier_phase_word_in_ufix32,carrier_freq_word_in_ufix32}),    // input wire [63 : 0] s_axis_phase_tdata
      .m_axis_data_tvalid(),    // output wire m_axis_data_tvalid
      .m_axis_data_tdata({dds_carrier_sin,dds_carrier_cos}),      // output wire [31 : 0] m_axis_data_tdata
      .m_axis_phase_tvalid(),  // output wire m_axis_phase_tvalid
      .m_axis_phase_tdata(carrier_phase_count_out_ufix32)    // output wire [31 : 0] m_axis_phase_tdata
    );
    
    //////////////////
    //choose if swap IQ channel
    ////////////////
    wire signed [15:0] I_base_in,Q_base_in;
    assign I_base_in=swap_IQ_channel?(Q_baseband_in_sfix16):(I_baseband_in_sfix16);
    assign Q_base_in=swap_IQ_channel?(I_baseband_in_sfix16):(Q_baseband_in_sfix16);
    assign I_carrier_out_sfix16=dds_carrier_sin;
    assign Q_carrier_out_sfix16=dds_carrier_cos;
    
    
    wire signed [31:0] I_channel,Q_channel;
    mult_sfix16 
    mult_sfix16_u0 (
    .CLK(clk),  // input wire CLK
    .A(I_base_in),      // input wire [15 : 0] A
    .B(dds_carrier_sin),      // input wire [15 : 0] B
    .P(I_channel)      // output wire [31 : 0] P
    ),
    mult_sfix16_u1 (
    .CLK(clk),  // input wire CLK
    .A(Q_base_in),      // input wire [15 : 0] A
    .B(dds_carrier_cos),      // input wire [15 : 0] B
    .P(Q_channel)      // output wire [31 : 0] P
    );
    assign I_channel_out_sfix16=I_channel[31:16];
    assign Q_channel_out_sfix16=Q_channel[31:16];

    wire signed [32:0] adder_result;
    adder_sfix32 
    adder_sfix32_u0 (
    .A(I_channel),      // input wire [31 : 0] A
    .B(Q_channel),      // input wire [31 : 0] B
    .CLK(clk),  // input wire CLK
    .CE(1'b1),    // input wire CE
    .S(adder_result)      // output wire [32 : 0] S
    );
    assign IQ_output_sfix16=adder_result[32:17];
endmodule

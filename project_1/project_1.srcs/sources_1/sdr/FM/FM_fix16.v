  `timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/14 10:19:57
// Design Name: 
// Module Name: FM_fix16
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


//FM_fix16(
//.clk(),
//.rst(),
//.baseband_signal_in_sfix16(),
//.mod_offset_factor_in_ufix16(),
//.carrier_center_freq_word_in_ufix32(),
//.carrier_phase_offset_word_in_ufix32(),
//.carrier_freq_word_out_ufix32(),
//.FM_signal_I_out_sfix16(),
//.FM_signal_Q_out_sfix16(),
//.FM_signal_phase_out_ufix32()
//);

/*
carrier_center_frequency=clk*freq_word/2^32
carrier_frequncy_interval=clk/2^32
FM_signal_output_freq_range=range(baseband_input)*mod_offset_factor*clk/2^32
*/
module FM_fix16(
    input clk,
    input rst,
    input signed [15:0] baseband_signal_in_sfix16,
    input [15:0] mod_offset_factor_in_ufix16,
    input [31:0] carrier_center_freq_word_in_ufix32,
    input [31:0] carrier_phase_offset_word_in_ufix32,
    output [31:0] carrier_freq_word_out_ufix32,
    output signed [15:0] FM_signal_I_out_sfix16,
    output signed [15:0] FM_signal_Q_out_sfix16,
    output [31:0] FM_signal_phase_out_ufix32
    );

    wire signed [32:0] P;
    wire [47:0] PCOUT;
    xbip_multadd_2 
    FM_fix16_xbip_multadd_0_u0 (
    .CLK(clk),            // input wire CLK
    .CE(1'b1),              // input wire CE
    .SCLR(rst),          // input wire SCLR
    .A(baseband_signal_in_sfix16),                // input wire [15 : 0] A  //signed 16bit
    .B(mod_offset_factor_in_ufix16),                // input wire [15 : 0] B  //unsigned 16bit
    .C(carrier_center_freq_word_in_ufix32),                // input wire [31 : 0] C  //unsigned 32bit
    .SUBTRACT(1'b0),  // input wire SUBTRACT    //1:subtract    0:add
    .P(P),                // output wire [32 : 0]   //signed output 33bit
    .PCOUT(PCOUT)        // output wire [47 : 0] PCOUT
    );
    assign carrier_freq_word_out_ufix32=P[31:0];

    dds_sfix16
    FM_fix16_DDS_fix16_u0 (
    .aclk(clk),                                // input wire aclk
    .aresetn(!rst),                          // input wire aresetn
    .s_axis_phase_tvalid(1'b1),  // input wire s_axis_phase_tvalid
    .s_axis_phase_tdata({carrier_phase_offset_word_in_ufix32,carrier_freq_word_out_ufix32}),    // input wire [63 : 0] s_axis_phase_tdata
    .m_axis_data_tvalid(tvalid1),    // output wire m_axis_data_tvalid
    .m_axis_data_tdata({FM_signal_I_out_sfix16,FM_signal_Q_out_sfix16}),      // output wire [31 : 0] m_axis_data_tdata
    .m_axis_phase_tvalid(tvalid2),  // output wire m_axis_phase_tvalid
    .m_axis_phase_tdata(FM_signal_phase_out_ufix32)    // output wire [31 : 0] m_axis_phase_tdata
    );
endmodule

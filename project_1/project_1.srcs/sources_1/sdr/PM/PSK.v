`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/22 22:33:16
// Design Name: 
// Module Name: PSK
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


module PSK_2(
    input clk,
    input rst,
    input din,
    input [31:0] phase_0_word_in_ufix32,
    input [31:0] phase_1_word_in_ufix32,
    input [31:0] freq_word_in_ufix32,
    output [15:0] PSK_2_out_I_sfix16,
    output [15:0] PSK_2_out_Q_sfix16,
    output [31:0] phase_out
    );
    
    wire [31:0] current_phase=(din==1'b1)?(phase_1_word_in_ufix32):(phase_0_word_in_ufix32);
    
    dds_sfix16 
    PSK_2_DDS_fix16_u0 (
    .aclk(clk),                                // input wire aclk
    .aresetn(!rst),                          // input wire aresetn
    .s_axis_phase_tvalid(1'b1),  // input wire s_axis_phase_tvalid
    .s_axis_phase_tdata({current_phase,freq_word_in_ufix32}),    // input wire [63 : 0] s_axis_phase_tdata
    .m_axis_data_tvalid(),    // output wire m_axis_data_tvalid
    .m_axis_data_tdata({PSK_2_out_I_sfix16,PSK_2_out_Q_sfix16}),      // output wire [31 : 0] m_axis_data_tdata
    .m_axis_phase_tvalid(),  // output wire m_axis_phase_tvalid
    .m_axis_phase_tdata(phase_out)    // output wire [31 : 0] m_axis_phase_tdata
    );
endmodule

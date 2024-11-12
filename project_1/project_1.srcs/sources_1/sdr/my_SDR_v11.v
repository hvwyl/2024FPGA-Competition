`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/08 15:42:04
// Design Name: 
// Module Name: my_SDR_v1
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

// my_SDR_v1(
//    .clk(),
//    .rst(),
//    .uart_rxd(),
//    .ad_din(),
//    .dspi_din(),
//    .dspi_sclk(),
//    .dspi_cs(),
//   ////////////////////
//   .pwm_out_1bit(),
//   .pdm_out_1bit(),
//   .da1_out(),
//   .da2_out(),
//   .da1_clk(),
//   .da2_clk(),
//   .da1_wrt(),
//   .da2_wrt(),
//   .ad_clk(),
//   .seg_s(),
//   .seg_ap()
// );
module my_SDR_v1(
  input clk,
  input rst,
  input uart_rxd,
  output clk_cpu,
  input [11:0] ad_din,
  input [1:0] dspi_din,
  input dspi_sclk,
  input dspi_cs,
  ////////////////////

  input [3:0] i_MOD_STATE,

  input [31:0] i_s0_arg_AM_fc,//0:7,8-15,16-23,24-31//31-24,23-16,15-8,7-0
  input [15:0] i_s0_arg_AM_Depth,

  input [31:0] i_s1_arg_DSB_fc,

  input [31:0] i_s2_arg_SSB_fc,
  input i_s2_arg_LU_MODE,

  input [31:0] i_s3_arg_FM_fc,
  input [15:0] i_s3_arg_FM_offset,

  input [31:0] i_s4_arg_PM_fc,
  input [15:0] i_s4_arg_PM_offset,

  input [31:0] i_s5_arg_ASK_fc,
  input [15:0] i_s5_arg_ASK_amp,

  input [31:0] i_s6_arg_BFSK_fc,
  input [31:0] i_s6_arg_BFSK_range,

  input [31:0] i_s7_arg_BPSK_fc,
  input [31:0] i_s7_arg_BPSK_range,

  input [31:0] i_s8_arg_DPSK_fc,

  input [31:0] i_s9_arg_QPSK_fc,

  ////////////////////
  output pwm_out_1bit,
  output pdm_out_1bit,
  output reg [13:0] da1_out,
  output reg [13:0] da2_out,
  output da1_clk,
  output da2_clk,
  output da1_wrt,
  output da2_wrt,
  output ad_clk
  // output [3:0] seg_s,
  // output [7:0] seg_ap
);

  wire clk_200MHz,clk_100MHz,clk_50MHz,clk_50kHz,clk_500Hz;
  clk_wiz_1 my_SDR_v1_clk_wiz_0 (
  // Clock out ports
  .clk_out1(clk_200MHz),     // output clk_out1
  .clk_out2(clk_100MHz),     // output clk_out2
  .clk_out3(clk_50MHz),     // output clk_out3
  // Status and control signals
  .reset(rst), // input reset
  .locked(),       // output locked
  // Clock in ports
  .clk_in1(clk)      // input clk_in1
  );
  Int_Clock_Div clk_div_u1(//Output freq:clkout=(clkin/div_count)/2
  .clkin(clk_200MHz),
  .rst_n(!rst),
  .div_count(32'd2000),
  .clkout(clk_50kHz)
  ),
  clk_div_u2(//Output freq:clkout=(clkin/div_count)/2
  .clkin(clk_200MHz),
  .rst_n(!rst),
  .div_count(32'd200000),
  .clkout(clk_500Hz)
  );
    assign clk_cpu = clk_50MHz;
  //output adc and dac clock
  oddr_0 
  oddr_u0 (
  .clk_in(clk_200MHz),    // input wire clk_in
  .clk_out(da1_clk)  // output wire clk_out
  ),
  oddr_u1 (
  .clk_in(clk_200MHz),    // input wire clk_in
  .clk_out(da2_clk)  // output wire clk_out
  ),
  oddr_u2 (
  .clk_in(clk_200MHz),    // input wire clk_in
  .clk_out(da1_wrt)  // output wire clk_out
  ),
  oddr_u3 (
  .clk_in(clk_200MHz),    // input wire clk_in
  .clk_out(da2_wrt)  // output wire clk_out
  ),
  oddr_u4 (
  .clk_in(clk_50kHz),    // input wire clk_in
  .clk_out(ad_clk)  // output wire clk_out
  );



  //uart part
  wire uart_rx_wire=uart_rxd;


  
  //enumrate all modulation for state machine
  localparam S0_AM_MODE = 4'd0;
  localparam S1_DSB_MODE = 4'd1;
  localparam S2_SSB_MODE = 4'd2;
  localparam S3_FM_MODE = 4'd3;
  localparam S4_PM_MODE = 4'd4;
  localparam S5_ASK_MODE = 4'd5;
  localparam S6_BFSK_MODE = 4'd6;
  localparam S7_BPSK_MODE = 4'd7;
  localparam S8_DPSK_MODE = 4'd8;
  localparam S9_QPSK_MODE = 4'd9;
  localparam S10_PDM_MODE = 4'd10;
  localparam S11_PWM_MODE = 4'd11;
  localparam S12_OFF_MODE = 4'd12;
  
  reg [3:0] MOD_STATE;
  always @(posedge clk_200MHz or posedge rst) begin
    if(rst) begin
      MOD_STATE<=S12_OFF_MODE;
    end
    else if(clk_200MHz) begin
        case (i_MOD_STATE)
          8'd0: MOD_STATE<=S0_AM_MODE;
          8'd1: MOD_STATE<=S1_DSB_MODE;
          8'd2: MOD_STATE<=S2_SSB_MODE;
          8'd3: MOD_STATE<=S3_FM_MODE;
          8'd4: MOD_STATE<=S4_PM_MODE;
          8'd5: MOD_STATE<=S5_ASK_MODE;
          8'd6: MOD_STATE<=S6_BFSK_MODE;
          8'd7: MOD_STATE<=S7_BPSK_MODE;
          8'd8: MOD_STATE<=S8_DPSK_MODE;
          8'd9: MOD_STATE<=S9_QPSK_MODE;
          8'd10: MOD_STATE<=S10_PDM_MODE;
          8'd11: MOD_STATE<=S11_PWM_MODE;
          8'd12: MOD_STATE<=S12_OFF_MODE;
          default: MOD_STATE<=S12_OFF_MODE;
        endcase
    end
  end


  //digit bansband serial signal input
  wire digit_baseband_sd0=dspi_din[0];//external serial data input 0
  wire digit_baseband_sd1=dspi_din[1];//external serial data input 1 (for QPSK only)
  wire digit_baseband_sclk=dspi_sclk;//external serial data clk (active rise-edge)
  reg digit_baseband_sd0_r1,digit_baseband_sd0_r2;
  reg digit_baseband_sd1_r1,digit_baseband_sd1_r2;
  reg digit_baseband_sclk_r1,digit_baseband_sclk_r2;
  always @(posedge clk_200MHz or posedge rst) begin
    if(rst) begin
      digit_baseband_sd0_r1<=0;
      digit_baseband_sd0_r2<=0;
      digit_baseband_sd1_r1<=0;
      digit_baseband_sd1_r2<=0;
      digit_baseband_sclk_r1<=0;
      digit_baseband_sclk_r2<=0;
    end
    else if(clk_200MHz&&(!dspi_cs)) begin
      digit_baseband_sd0_r1<=digit_baseband_sd0;
      digit_baseband_sd0_r2<=digit_baseband_sd0_r1;
      digit_baseband_sd1_r1<=digit_baseband_sd1;
      digit_baseband_sd1_r2<=digit_baseband_sd1_r1;
      digit_baseband_sclk_r1<=digit_baseband_sclk;
      digit_baseband_sclk_r2<=digit_baseband_sclk_r1;
  end
end



  //adc part
  reg [11:0] ad_din_r1,ad_din_r2;
  //reg signed [15:0] analong_baseband_sfix16=0;
  always @(posedge clk_50kHz or posedge rst) begin
    if(rst) begin
      ad_din_r1<=0;
      ad_din_r2<=0;
      //analong_baseband_sfix16<=0;
    end
    else if(clk_50kHz) begin
      ad_din_r1<=ad_din;
      ad_din_r2<=ad_din_r1-12'd2048;
      //analong_baseband_sfix16<=ad_din_r2<<4;
    end
  end
  wire [31:0] hilbert_out;
  fir_compiler_0 
  top_hilbert_u0 (
    .aclk(clk_50kHz),                              // input wire aclk
    .s_axis_data_tvalid(1'b1),  // input wire s_axis_data_tvalid
    .s_axis_data_tready(),  // output wire s_axis_data_tready
    .s_axis_data_tdata({{4{ad_din_r2[11]}},ad_din_r2[11:0]}),    // input wire [15 : 0] s_axis_data_tdata
    .m_axis_data_tvalid(),  // output wire m_axis_data_tvalid
    .m_axis_data_tdata(hilbert_out)    // output wire [31 : 0] m_axis_data_tdata
  );
  wire signed [15:0] baseband_i_sfix16,baseband_q_sfix16;
  assign baseband_i_sfix16=hilbert_out[11:0]<<4;
  assign baseband_q_sfix16=hilbert_out[31:16]<<2;
  wire signed [15:0] cic_baseband_i_sfix16,cic_baseband_q_sfix16;
  cic_interp_rate4000_1 
  cic_u0 (
  .aclk(clk_200MHz),                              // input wire aclk
  .s_axis_data_tdata(baseband_i_sfix16),    // input wire [15 : 0] s_axis_data_tdata
  .s_axis_data_tvalid(1'b1),  // input wire s_axis_data_tvalid
  .s_axis_data_tready(),  // output wire s_axis_data_tready
  .m_axis_data_tdata(cic_baseband_i_sfix16),    // output wire [15 : 0] m_axis_data_tdata
  .m_axis_data_tvalid()  // output wire m_axis_data_tvalid
  ),
  cic_u1 (
  .aclk(clk_200MHz),                              // input wire aclk
  .s_axis_data_tdata(baseband_q_sfix16),    // input wire [15 : 0] s_axis_data_tdata
  .s_axis_data_tvalid(1'b1),  // input wire s_axis_data_tvalid
  .s_axis_data_tready(),  // output wire s_axis_data_tready
  .m_axis_data_tdata(cic_baseband_q_sfix16),    // output wire [15 : 0] m_axis_data_tdata
  .m_axis_data_tvalid()  // output wire m_axis_data_tvalid
  );


  //S0_AM_MODE
  reg EN_AM;
  always @(*) begin
    if(MOD_STATE==S0_AM_MODE) EN_AM=1'b1;
    else EN_AM=1'b0;
  end
  wire AM_clk;
  bufif1(AM_clk,clk_200MHz,EN_AM);
  reg [15:0] arg_AM_Depth;
  reg [31:0] arg_AM_fc;
  reg signed [15:0] AM_in;
  wire signed [15:0] AM_out;
  always @(posedge AM_clk) begin
    arg_AM_Depth<=i_s0_arg_AM_Depth;
    arg_AM_fc<=i_s0_arg_AM_fc;
    AM_in<=cic_baseband_i_sfix16;
  end
  AM_sfix16
  top_am_u0(
  .clk(AM_clk),
  .rst(rst),
  .mod_depth(arg_AM_Depth),
  .basebnad_in(AM_in),
  .carrier_freq_word_in(arg_AM_fc),
  .carrier_phase_word_in(32'd0),
  .AM_signal_out(AM_out)
  );



  //S1_DSB_MODE
  reg EN_DSB;  
  always @(*) begin
    if(MOD_STATE==S1_DSB_MODE) EN_DSB=1'b1;
    else EN_DSB=1'b0;
  end
  wire DSB_clk;
  bufif1(DSB_clk,clk_200MHz,EN_DSB);
  reg [31:0] arg_DSB_fc;
  wire signed [15:0] DSB_carrier_i_sfix16,DSB_carrier_q_sfix16;
  reg signed [15:0] DSB_in;
  wire signed [31:0] DSB_out_tmp;
  wire signed [15:0] DSB_out=DSB_out_tmp[31-:16];
  always @(posedge DSB_clk) begin
    arg_DSB_fc<=i_s1_arg_DSB_fc;
    DSB_in<=cic_baseband_i_sfix16;
  end
  dds_sfix16
  top_dds_u0 (
  .aclk(DSB_clk),                                // input wire aclk
  .aresetn(!rst),                          // input wire aresetn
  .s_axis_phase_tvalid(1'b1),  // input wire s_axis_phase_tvalid
  .s_axis_phase_tdata({32'd0,arg_DSB_fc}),    // input wire [63 : 0] s_axis_phase_tdata
  .m_axis_data_tvalid(),    // output wire m_axis_data_tvalid
  .m_axis_data_tdata({DSB_carrier_i_sfix16,DSB_carrier_q_sfix16}),      // output wire [31 : 0] m_axis_data_tdata
  .m_axis_phase_tvalid(),  // output wire m_axis_phase_tvalid
  .m_axis_phase_tdata()    // output wire [31 : 0] m_axis_phase_tdata
  );
  mult_sfix16 
  top_mult_u0 (
  .CLK(DSB_clk),  // input wire CLK
  .A(DSB_carrier_i_sfix16),      // input wire [15 : 0] A
  .B(DSB_in),      // input wire [15 : 0] B
  .P(DSB_out_tmp)      // output wire [31 : 0] P
  );



    //S2_SSB_MODE
  reg EN_SSB;
  always @(*) begin
    if(MOD_STATE==S2_SSB_MODE) EN_SSB=1'b1;
    else EN_SSB=1'b0;
  end
  wire SSB_clk;
  bufif1(SSB_clk,clk_200MHz,EN_SSB);
  reg arg_LU_MODE;
  reg [31:0] arg_SSB_fc;
  wire signed [15:0] SSB_carrier_i_sfix16,SSB_carrier_q_sfix16;
  reg signed [15:0] SSB_i_in;
  reg signed [15:0] SSB_q_in;
  wire signed [15:0] SSB_out;
  always @(posedge SSB_clk) begin
    arg_SSB_fc<=i_s2_arg_SSB_fc;
    arg_LU_MODE<=i_s2_arg_LU_MODE;//1:lsb,0:usb
    SSB_i_in<=cic_baseband_i_sfix16;
    SSB_q_in<=cic_baseband_q_sfix16;
  end
  IQ_synth_fix16
  top_iq_synth_u0(
  .clk(SSB_clk),
  .rst(rst),
  .swap_IQ_channel(arg_LU_MODE),
  .I_baseband_in_sfix16(SSB_i_in),
  .Q_baseband_in_sfix16(SSB_q_in),
  .carrier_freq_word_in_ufix32(arg_SSB_fc),
  .carrier_phase_word_in_ufix32(32'd0),
  .carrier_phase_count_out_ufix32(),
  .I_carrier_out_sfix16(),
  .Q_carrier_out_sfix16(),
  .I_channel_out_sfix16(),
  .Q_channel_out_sfix16(),
  .IQ_output_sfix16(SSB_out)
  );




  //S3_FM_MODE
  reg EN_FM;
  always @(*) begin
    if(MOD_STATE==S3_FM_MODE) EN_FM=1'b1;
    else EN_FM=1'b0;
  end
  wire FM_clk;
  bufif1(FM_clk,clk_200MHz,EN_FM);
  reg [15:0] arg_FM_offset;
  reg [31:0] arg_FM_fc;
  reg signed [15:0] FM_in;
  wire signed [15:0] FM_out_i,FM_out_q;
  always @(posedge FM_clk) begin
    arg_FM_offset<=i_s3_arg_FM_offset;
    arg_FM_fc<=i_s3_arg_FM_fc;
    FM_in<=cic_baseband_i_sfix16;
  end
  FM_fix16
  top_fm_u0(
  .clk(FM_clk),
  .rst(rst),
  .baseband_signal_in_sfix16(FM_in),
  .mod_offset_factor_in_ufix16(arg_FM_offset),
  .carrier_center_freq_word_in_ufix32(arg_FM_fc),
  .carrier_phase_offset_word_in_ufix32(32'd0),
  .carrier_freq_word_out_ufix32(),
  .FM_signal_I_out_sfix16(FM_out_i),
  .FM_signal_Q_out_sfix16(FM_out_q),
  .FM_signal_phase_out_ufix32()
  );




  //S4_PM_MODE
  reg EN_PM;
  always @(*) begin
    if(MOD_STATE==S4_PM_MODE) EN_PM=1'b1;
    else EN_PM=1'b0;
  end
  wire PM_clk;
  bufif1(PM_clk,clk_200MHz,EN_PM);
  reg [15:0] arg_PM_offset;
  reg [31:0] arg_PM_fc;
  reg signed [15:0] PM_in;
  wire signed [31:0] PM_tmp1;
  wire [31:0] PM_tmp2;
  wire signed [15:0] PM_i_out,PM_q_out;
  always @(posedge PM_clk) begin
    arg_PM_offset<=i_s4_arg_PM_offset;
    arg_PM_fc<=i_s4_arg_PM_fc;
    PM_in<=cic_baseband_i_sfix16;
  end
  mult_sfix16 
  top_mult_u1 (
  .CLK(PM_clk),  // input wire CLK
  .A(arg_PM_offset),      // input wire [15 : 0] A
  .B(PM_in),      // input wire [15 : 0] B
  .P(PM_tmp1)      // output wire [31 : 0] P
  );
  assign PM_tmp2=PM_tmp1+32'd2147483648;
  dds_sfix16
  top_dds_u1 (
  .aclk(PM_clk),                                // input wire aclk
  .aresetn(!rst),                          // input wire aresetn
  .s_axis_phase_tvalid(1'b1),  // input wire s_axis_phase_tvalid
  .s_axis_phase_tdata({PM_tmp2,arg_PM_fc}),    // input wire [63 : 0] s_axis_phase_tdata
  .m_axis_data_tvalid(),    // output wire m_axis_data_tvalid
  .m_axis_data_tdata({PM_i_out,PM_q_out}),      // output wire [31 : 0] m_axis_data_tdata
  .m_axis_phase_tvalid(),  // output wire m_axis_phase_tvalid
  .m_axis_phase_tdata()    // output wire [31 : 0] m_axis_phase_tdata
  );




    //S5_ASK_MODE
  reg EN_ASK;
  always @(*) begin
    if(MOD_STATE==S5_ASK_MODE) EN_ASK=1'b1;
    else EN_ASK=1'b0;
  end
  wire ASK_clk;
  bufif1(ASK_clk,clk_200MHz,EN_ASK);
  reg [15:0] arg_ASK_amp;
  reg [31:0] arg_ASK_fc;
  wire signed [15:0] ASK_carrier_i,ASK_carrier_q;
  reg [15:0] ASK_data_in;
  wire signed [31:0] ASK_tmp1;
  wire signed [15:0] ASK_out;
  always @(posedge ASK_clk) begin
    arg_ASK_amp<=i_s5_arg_ASK_amp;
    arg_ASK_fc<=i_s5_arg_ASK_fc;
  end
  dds_sfix16
  top_dds_u2 (
  .aclk(ASK_clk),                                // input wire aclk
  .aresetn(!rst),                          // input wire aresetn
  .s_axis_phase_tvalid(1'b1),  // input wire s_axis_phase_tvalid
  .s_axis_phase_tdata({32'd0,arg_ASK_fc}),    // input wire [63 : 0] s_axis_phase_tdata
  .m_axis_data_tvalid(),    // output wire m_axis_data_tvalid
  .m_axis_data_tdata({ASK_carrier_i,ASK_carrier_q}),      // output wire [31 : 0] m_axis_data_tdata
  .m_axis_phase_tvalid(),  // output wire m_axis_phase_tvalid
  .m_axis_phase_tdata()    // output wire [31 : 0] m_axis_phase_tdata
  );
  always @(posedge digit_baseband_sclk_r2) begin
    if(digit_baseband_sd0==1'b1) begin
      ASK_data_in<=16'd32767;
    end
    else begin
      ASK_data_in<=arg_ASK_amp>>1;//convert [0~65535] to [0~32767]
    end
  end
  mult_sfix16 
  top_mult_u2 (
  .CLK(ASK_clk),  // input wire CLK
  .A(ASK_data_in),      // input wire [15 : 0] A
  .B(ASK_carrier_i),      // input wire [15 : 0] B
  .P(ASK_tmp1)      // output wire [31 : 0] P
  );
  assign ASK_out=ASK_tmp1[30:15];



  //S6_BFSK_MODE
  reg EN_BFSK;
  always @(*) begin
    if(MOD_STATE==S6_BFSK_MODE) EN_BFSK=1'b1;
    else EN_BFSK=1'b0;
  end
  wire BFSK_clk;
  bufif1(BFSK_clk,clk_200MHz,EN_BFSK);
  reg [31:0] arg_BFSK_range;
  reg [31:0] arg_BFSK_fc;
  wire [31:0] BFSK_f_word1,BFSK_f_word2;
  wire signed [15:0] BFSK_i_out,BFSK_q_out;
  reg [31:0] BFSK_data_in;
  always @(posedge BFSK_clk) begin
    arg_BFSK_range<=i_s6_arg_BFSK_range;
    arg_BFSK_fc<=i_s6_arg_BFSK_fc;
  end
  
  assign BFSK_f_word1=arg_BFSK_fc-(arg_BFSK_range>>1);
  assign BFSK_f_word2=arg_BFSK_fc+(arg_BFSK_range>>1);
  always @(posedge digit_baseband_sclk_r2) begin
    if(digit_baseband_sd0==1'b1) begin
      BFSK_data_in<=BFSK_f_word1;
    end
    else begin
      BFSK_data_in<=BFSK_f_word2;
    end
  end
  dds_sfix16
  top_dds_u3 (
  .aclk(BFSK_clk),                                // input wire aclk
  .aresetn(!rst),                          // input wire aresetn
  .s_axis_phase_tvalid(1'b1),  // input wire s_axis_phase_tvalid
  .s_axis_phase_tdata({32'd0,BFSK_data_in}),    // input wire [63 : 0] s_axis_phase_tdata
  .m_axis_data_tvalid(),    // output wire m_axis_data_tvalid
  .m_axis_data_tdata({BFSK_i_out,BFSK_q_out}),      // output wire [31 : 0] m_axis_data_tdata
  .m_axis_phase_tvalid(),  // output wire m_axis_phase_tvalid
  .m_axis_phase_tdata()    // output wire [31 : 0] m_axis_phase_tdata
  );




  //S7_BPSK_MODE
  reg EN_BPSK;
  always @(*) begin
    if(MOD_STATE==S7_BPSK_MODE) EN_BPSK=1'b1;
    else EN_BPSK=1'b0;
  end
  wire BPSK_clk;
  bufif1(BPSK_clk,clk_200MHz,EN_BPSK);
  reg [31:0] arg_BPSK_range;
  reg [31:0] arg_BPSK_fc;
  wire signed [15:0] BPSK_i_out,BPSK_q_out;
  reg [31:0] BPSK_data_in;
  always @(posedge BPSK_clk) begin
    arg_BPSK_range<=i_s7_arg_BPSK_range;
    arg_BPSK_fc<=i_s7_arg_BPSK_fc;
  end
  always @(posedge digit_baseband_sclk_r2) begin
    if(digit_baseband_sd0==1'b1) begin
      BPSK_data_in<=arg_BPSK_range;
    end
    else begin
      BPSK_data_in<=32'd0;
    end
  end
  dds_sfix16
  top_dds_u4 (
  .aclk(BPSK_clk),                                // input wire aclk
  .aresetn(!rst),                          // input wire aresetn
  .s_axis_phase_tvalid(1'b1),  // input wire s_axis_phase_tvalid
  .s_axis_phase_tdata({BPSK_data_in,arg_BPSK_fc}),    // input wire [63 : 0] s_axis_phase_tdata
  .m_axis_data_tvalid(),    // output wire m_axis_data_tvalid
  .m_axis_data_tdata({BPSK_i_out,BPSK_q_out}),      // output wire [31 : 0] m_axis_data_tdata
  .m_axis_phase_tvalid(),  // output wire m_axis_phase_tvalid
  .m_axis_phase_tdata()    // output wire [31 : 0] m_axis_phase_tdata
  );



  

  //S8_DPSK_MODE
  reg EN_DPSK;
  always @(*) begin
    if(MOD_STATE==S8_DPSK_MODE) EN_DPSK=1'b1;
    else EN_DPSK=1'b0;
  end
  wire DPSK_clk;
  bufif1(DPSK_clk,clk_200MHz,EN_DPSK);
  reg [31:0] arg_DPSK_fc;
  wire signed [15:0] DPSK_i_out,DPSK_q_out;
  wire DPSK_data_in_1bit;
  reg [31:0] DPSK_data_in_32bit;
  always @(posedge DPSK_clk) begin
    arg_DPSK_fc<=i_s8_arg_DPSK_fc;
  end
  diff_code_gen
  top_diff_code_u0(
  .clk(digit_baseband_sclk_r2),
  .rst(rst),
  .din(digit_baseband_sd0),
  .diff_dout(DPSK_data_in_1bit)
  );
  always @(*) begin
    if(DPSK_data_in_1bit==1'b1) begin
      DPSK_data_in_32bit<=32'd2147483648;//180deg
    end
    else begin
      DPSK_data_in_32bit<=32'd0;//0deg
    end
  end
  dds_sfix16
  top_dds_u5 (
  .aclk(DPSK_clk),                                // input wire aclk
  .aresetn(!rst),                          // input wire aresetn
  .s_axis_phase_tvalid(1'b1),  // input wire s_axis_phase_tvalid
  .s_axis_phase_tdata({DPSK_data_in_32bit,arg_DPSK_fc}),    // input wire [63 : 0] s_axis_phase_tdata
  .m_axis_data_tvalid(),    // output wire m_axis_data_tvalid
  .m_axis_data_tdata({DPSK_i_out,DPSK_q_out}),      // output wire [31 : 0] m_axis_data_tdata
  .m_axis_phase_tvalid(),  // output wire m_axis_phase_tvalid
  .m_axis_phase_tdata()    // output wire [31 : 0] m_axis_phase_tdata
  );




  //S9_QPSK_MODE
  reg EN_QPSK;
  always @(*) begin
    if(MOD_STATE==S9_QPSK_MODE) EN_QPSK=1'b1;
    else EN_QPSK=1'b0;
  end
  wire QPSK_clk;
  bufif1(QPSK_clk,clk_200MHz,EN_QPSK);
  reg [31:0] arg_QPSK_fc;
  wire signed [15:0] QPSK_i_out,QPSK_q_out;
  reg [31:0] QPSK_data_in;
  always @(posedge QPSK_clk) begin
    arg_QPSK_fc<=i_s9_arg_QPSK_fc;
  end

  always @(posedge digit_baseband_sclk_r2) begin
    case ({digit_baseband_sd0_r2,digit_baseband_sd1_r2})
      2'b00: QPSK_data_in<=32'd0;//0deg
      2'b01: QPSK_data_in<=32'd1073741824;//90deg
      2'b10: QPSK_data_in<=32'd2147483648;//180deg
      2'b11: QPSK_data_in<=32'd3221225472;//270deg
      default:;
    endcase
  end
  dds_sfix16
  top_dds_u6 (
  .aclk(QPSK_clk),                                // input wire aclk
  .aresetn(!rst),                          // input wire aresetn
  .s_axis_phase_tvalid(1'b1),  // input wire s_axis_phase_tvalid
  .s_axis_phase_tdata({QPSK_data_in,arg_QPSK_fc}),    // input wire [63 : 0] s_axis_phase_tdata
  .m_axis_data_tvalid(),    // output wire m_axis_data_tvalid
  .m_axis_data_tdata({QPSK_i_out,QPSK_q_out}),      // output wire [31 : 0] m_axis_data_tdata
  .m_axis_phase_tvalid(),  // output wire m_axis_phase_tvalid
  .m_axis_phase_tdata()    // output wire [31 : 0] m_axis_phase_tdata
  );





  //S10_PDM_MODE
  reg EN_PDM;
  always @(*) begin
    if(MOD_STATE==S10_PDM_MODE) EN_PDM=1'b1;
    else EN_PDM=1'b0;
  end
  wire PDM_clk;
  bufif1(PDM_clk,clk_50MHz,EN_PDM);
  wire PDM_out_1bit;
  reg signed [15:0] PDM_out_16bit;
  reg signed [15:0] PDM_in;
  always @(posedge PDM_clk) begin
    PDM_in<=cic_baseband_i_sfix16;
  end
  delta_sigma_dac_3rd #(.W(16))
  top_D_S_u0
  (
  .clk(PDM_clk),
  .rst_n(~rst),
  .din(PDM_in),
  .dout(pdm_out_1bit)
  );
  always @(posedge PDM_clk) begin
    if(PDM_out_1bit) PDM_out_16bit<=16'd32767;
    else PDM_out_16bit<=-16'd32768;
  end

  
  


  //S11_PWM_MODE
  reg EN_PWM;
  always @(*) begin
    if(MOD_STATE==S11_PWM_MODE) EN_PWM=1'b1;
    else EN_PWM=1'b0;
  end
  wire PWM_clk;
  bufif1(PWM_clk,clk_200MHz,EN_PWM);
  reg signed [15:0] PWM_in;
  wire PWM_out_1bit;
  reg signed [15:0] PWM_out_16bit;
  always @(posedge PWM_clk) begin
    PWM_in<=(cic_baseband_i_sfix16+16'd32768)>>4;//convert to 12bit unsigned number
  end
  PWM
  top_pwm_u0(
  .clk(PWM_clk),
  .rst(rst),
  .pwm_period_counter(16'd4095), 
  .signal_in(PWM_in),
  .PWM_out(pwm_out_1bit)
  );
  always @(posedge PWM_clk) begin
    if(PWM_out_1bit) PWM_out_16bit<=16'd32767;
    else PWM_out_16bit<=-16'd32768;
  end







  reg [15:0] da1_data_sfix16,da2_data_sfix16;
  always @(*) begin
    case (MOD_STATE)
      S0_AM_MODE:begin
        da1_data_sfix16=AM_out;
        da2_data_sfix16=AM_out;
      end 
      S1_DSB_MODE:begin
        da1_data_sfix16=DSB_out;
        da2_data_sfix16=DSB_carrier_i_sfix16;
      end 
      S2_SSB_MODE:begin
        da1_data_sfix16=SSB_out;
        da2_data_sfix16=SSB_out;
      end 
      S3_FM_MODE:begin
        da1_data_sfix16=FM_out_i;
        da2_data_sfix16=FM_out_q;
      end 
      S4_PM_MODE:begin
        da1_data_sfix16=PM_i_out;
        da2_data_sfix16=PM_q_out;
      end 
      S5_ASK_MODE:begin
        da1_data_sfix16=ASK_out;
        da2_data_sfix16=ASK_carrier_i;
      end 
      S6_BFSK_MODE:begin
        da1_data_sfix16=BFSK_i_out;
        da2_data_sfix16=BFSK_q_out;
      end 
      S7_BPSK_MODE:begin
        da1_data_sfix16=BPSK_i_out;
        da2_data_sfix16=BPSK_q_out;
      end 
      S8_DPSK_MODE:begin
        da1_data_sfix16=DPSK_i_out;
        da2_data_sfix16=DPSK_q_out;
      end 
      S9_QPSK_MODE:begin
        da1_data_sfix16=QPSK_i_out;
        da2_data_sfix16=QPSK_q_out;
      end     
      S10_PDM_MODE:begin
        da1_data_sfix16=PDM_out_16bit;
        da2_data_sfix16=PDM_out_16bit;
      end   
      S11_PWM_MODE:begin
        da1_data_sfix16=PWM_out_16bit;
        da2_data_sfix16=PWM_out_16bit;
      end
      S12_OFF_MODE:begin
        da1_data_sfix16=0;
        da2_data_sfix16=0;
      end   
      default:da1_data_sfix16=0;
    endcase
  end

  always @(posedge clk_200MHz) begin
    da1_out<=(da1_data_sfix16+16'd32768)>>2;
  end
  always @(posedge clk_200MHz) begin
    da2_out<=(da2_data_sfix16+16'd32768)>>2;
  end




  // reg [3:0] leg_seg_digit1,leg_seg_digit2,leg_seg_digit3,leg_seg_digit4;
  // always @(*) begin
  //   case (MOD_STATE)
  //     S0_AM_MODE: {leg_seg_digit1,leg_seg_digit2}=8'haa;
  //     S1_DSB_MODE: {leg_seg_digit1,leg_seg_digit2}=8'ha2;
  //     S2_SSB_MODE: {leg_seg_digit1,leg_seg_digit2}=8'ha1;
  //     S3_FM_MODE: {leg_seg_digit1,leg_seg_digit2}=8'hff;
  //     S4_PM_MODE: {leg_seg_digit1,leg_seg_digit2}=8'h1f;
  //     S5_ASK_MODE: {leg_seg_digit1,leg_seg_digit2}=8'hab;
  //     S6_BFSK_MODE: {leg_seg_digit1,leg_seg_digit2}=8'hfb;
  //     S7_BPSK_MODE: {leg_seg_digit1,leg_seg_digit2}=8'h0b;
  //     S8_DPSK_MODE: {leg_seg_digit1,leg_seg_digit2}=8'h0d;
  //     S9_QPSK_MODE: {leg_seg_digit1,leg_seg_digit2}=8'h0e;
  //     S10_PDM_MODE: {leg_seg_digit1,leg_seg_digit2}=8'hdd;
  //     S11_PWM_MODE: {leg_seg_digit1,leg_seg_digit2}=8'h3e;
  //     S12_OFF_MODE: {leg_seg_digit1,leg_seg_digit2}=8'hff;
  //     default:{leg_seg_digit1,leg_seg_digit2}=8'hFF; 
  //   endcase
  // end
  // always @(*) begin
  //   case (MOD_STATE)
  //     S0_AM_MODE: {leg_seg_digit3,leg_seg_digit4}=8'h00;
  //     S1_DSB_MODE: {leg_seg_digit3,leg_seg_digit4}=8'h01;
  //     S2_SSB_MODE: {leg_seg_digit3,leg_seg_digit4}=8'h02;
  //     S3_FM_MODE: {leg_seg_digit3,leg_seg_digit4}=8'h03;
  //     S4_PM_MODE: {leg_seg_digit3,leg_seg_digit4}=8'h04;
  //     S5_ASK_MODE: {leg_seg_digit3,leg_seg_digit4}=8'h05;
  //     S6_BFSK_MODE: {leg_seg_digit3,leg_seg_digit4}=8'h06;
  //     S7_BPSK_MODE: {leg_seg_digit3,leg_seg_digit4}=8'h07;
  //     S8_DPSK_MODE: {leg_seg_digit3,leg_seg_digit4}=8'h08;
  //     S9_QPSK_MODE: {leg_seg_digit3,leg_seg_digit4}=8'h09;
  //     S10_PDM_MODE: {leg_seg_digit3,leg_seg_digit4}=8'h10;
  //     S11_PWM_MODE: {leg_seg_digit3,leg_seg_digit4}=8'h11;
  //     S12_OFF_MODE: {leg_seg_digit3,leg_seg_digit4}=8'h12;
  //     13: {leg_seg_digit3,leg_seg_digit4}=8'h13;
  //     14: {leg_seg_digit3,leg_seg_digit4}=8'h14;
  //     15: {leg_seg_digit3,leg_seg_digit4}=8'h15;
  //     default: {leg_seg_digit3,leg_seg_digit4}=8'hxx;
  //   endcase
  // end
  // //use led segment to display state


  // wire [7:0] seg_ap_n;
  // wire [3:0] seg_s_n;
  // led_segment
  // led_driver_u0(
  // .led_scan_clk(clk_500Hz),//this clk use to generate active scan clk
  // .rst(rst),
  // .bcd_code_1_in(leg_seg_digit4),//digit 1 bcd code input
  // .bcd_code_2_in(leg_seg_digit3),//digit 2 bcd code input
  // .bcd_code_3_in(leg_seg_digit2),//digit 3 bcd code input
  // .bcd_code_4_in(leg_seg_digit1),//digit 4 bcd code input
  // .dot_point_1(1'b0),//control this digit's dot point
  // .dot_point_2(1'b0),//control this digit's dot point
  // .dot_point_3(1'b1),//control this digit's dot point
  // .dot_point_4(1'b0),//control this digit's dot point
  // .segment_out(seg_ap_n),//decoded led segment signal output for all led segment
  // /*format:segment_out[7] is dp,segment_out[6:0]->segment{g,f,e,d,c,b,a},common cathod(active high)*/
  // .segment_select_out(seg_s_n)//active scan signal output,use to select which segment is active
  // );
  // assign seg_ap=~seg_ap_n;
  // assign seg_s=~seg_s_n;

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/30 16:08:18
// Design Name: 
// Module Name: led_segment
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


// led_segment(
// .led_scan_clk(),//this clk use to generate active scan clk
// .rst(),
// .bcd_code_1_in(),//digit 1 bcd code input
// .bcd_code_2_in(),//digit 2 bcd code input
// .bcd_code_3_in(),//digit 3 bcd code input
// .bcd_code_4_in(),//digit 4 bcd code input
// .dot_point_1(),//control this digit's dot point
// .dot_point_2(),//control this digit's dot point
// .dot_point_3(),//control this digit's dot point
// .dot_point_4(),//control this digit's dot point
// .segment_out(),//decoded led segment signal output for all led segment
// /*format:segment_out[7] is dp,segment_out[6:0]->segment{g,f,e,d,c,b,a},common cathod(active high)*/
// .segment_select_out()//active scan signal output,use to select which segment is active
// );

module led_segment(
  input led_scan_clk,//this clk use to generate active scan clk
  input rst,
  input [3:0] bcd_code_1_in,//digit 1 bcd code input
  input [3:0] bcd_code_2_in,//digit 2 bcd code input
  input [3:0] bcd_code_3_in,//digit 3 bcd code input
  input [3:0] bcd_code_4_in,//digit 4 bcd code input
  input dot_point_1,//control this digit's dot point
  input dot_point_2,//control this digit's dot point
  input dot_point_3,//control this digit's dot point
  input dot_point_4,//control this digit's dot point
  output reg [7:0] segment_out,//decoded led segment signal output for all led segment
  /*format:segment_out[7] is dp,segment_out[6:0]->segment{g,f,e,d,c,b,a},common cathod(active high)*/
  output reg [3:0] segment_select_out//active scan signal output,use to select which segment is active
  );

  // decoder :bcd code transform to 7-segment led code
  reg [7:0] segment_1,segment_2,segment_3,segment_4;
  always @(*) begin
    case (bcd_code_1_in)
      4'h0: segment_1={dot_point_1,7'b0111_111};
      4'h1: segment_1={dot_point_1,7'b0000_110};
      4'h2: segment_1={dot_point_1,7'b1011_011};
      4'h3: segment_1={dot_point_1,7'b1001_111};
      4'h4: segment_1={dot_point_1,7'b1100_110};
      4'h5: segment_1={dot_point_1,7'b1101_101};
      4'h6: segment_1={dot_point_1,7'b1111_101};
      4'h7: segment_1={dot_point_1,7'b0000_111};
      4'h8: segment_1={dot_point_1,7'b1111_111};
      4'h9: segment_1={dot_point_1,7'b1101_111};
      4'ha: segment_1={dot_point_1,7'b1110_111};
      4'hb: segment_1={dot_point_1,7'b1111_100};
      4'hc: segment_1={dot_point_1,7'b0111_001};
      4'hd: segment_1={dot_point_1,7'b1011_110};
      4'he: segment_1={dot_point_1,7'b1111_001};
      4'hf: segment_1={dot_point_1,7'b1110_001};
      default: segment_1=8'h0;
    endcase
  end
  always @(*) begin
    case (bcd_code_2_in)
      4'h0: segment_2={dot_point_2,7'b0111_111};
      4'h1: segment_2={dot_point_2,7'b0000_110};
      4'h2: segment_2={dot_point_2,7'b1011_011};
      4'h3: segment_2={dot_point_2,7'b1001_111};
      4'h4: segment_2={dot_point_2,7'b1100_110};
      4'h5: segment_2={dot_point_2,7'b1101_101};
      4'h6: segment_2={dot_point_2,7'b1111_101};
      4'h7: segment_2={dot_point_2,7'b0000_111};
      4'h8: segment_2={dot_point_2,7'b1111_111};
      4'h9: segment_2={dot_point_2,7'b1101_111};
      4'ha: segment_2={dot_point_2,7'b1110_111};
      4'hb: segment_2={dot_point_2,7'b1111_100};
      4'hc: segment_2={dot_point_2,7'b0111_001};
      4'hd: segment_2={dot_point_2,7'b1011_110};
      4'he: segment_2={dot_point_2,7'b1111_001};
      4'hf: segment_2={dot_point_2,7'b1110_001};
      default: segment_2=8'h0;
    endcase
  end
  always @(*) begin
    case (bcd_code_3_in)
      4'h0: segment_3={dot_point_3,7'b0111_111};
      4'h1: segment_3={dot_point_3,7'b0000_110};
      4'h2: segment_3={dot_point_3,7'b1011_011};
      4'h3: segment_3={dot_point_3,7'b1001_111};
      4'h4: segment_3={dot_point_3,7'b1100_110};
      4'h5: segment_3={dot_point_3,7'b1101_101};
      4'h6: segment_3={dot_point_3,7'b1111_101};
      4'h7: segment_3={dot_point_3,7'b0000_111};
      4'h8: segment_3={dot_point_3,7'b1111_111};
      4'h9: segment_3={dot_point_3,7'b1101_111};
      4'ha: segment_3={dot_point_3,7'b1110_111};
      4'hb: segment_3={dot_point_3,7'b1111_100};
      4'hc: segment_3={dot_point_3,7'b0111_001};
      4'hd: segment_3={dot_point_3,7'b1011_110};
      4'he: segment_3={dot_point_3,7'b1111_001};
      4'hf: segment_3={dot_point_3,7'b1110_001};
      default: segment_3=8'h0;
    endcase
  end
  always @(*) begin
    case (bcd_code_4_in)
      4'h0: segment_4={dot_point_4,7'b0111_111};
      4'h1: segment_4={dot_point_4,7'b0000_110};
      4'h2: segment_4={dot_point_4,7'b1011_011};
      4'h3: segment_4={dot_point_4,7'b1001_111};
      4'h4: segment_4={dot_point_4,7'b1100_110};
      4'h5: segment_4={dot_point_4,7'b1101_101};
      4'h6: segment_4={dot_point_4,7'b1111_101};
      4'h7: segment_4={dot_point_4,7'b0000_111};
      4'h8: segment_4={dot_point_4,7'b1111_111};
      4'h9: segment_4={dot_point_4,7'b1101_111};
      4'ha: segment_4={dot_point_4,7'b1110_111};
      4'hb: segment_4={dot_point_4,7'b1111_100};
      4'hc: segment_4={dot_point_4,7'b0111_001};
      4'hd: segment_4={dot_point_4,7'b1011_110};
      4'he: segment_4={dot_point_4,7'b1111_001};
      4'hf: segment_4={dot_point_4,7'b1110_001};
      default: segment_4=8'h0;
    endcase
  end

  always @(posedge led_scan_clk or posedge rst) begin
    if(rst) segment_select_out<=4'b0001;
    else if(led_scan_clk) begin
      segment_select_out<={segment_select_out[2:0],segment_select_out[3]};//cyclic shift
    end
  end
  always @(*) begin//assign decoded segment signal to segment_out according to segment_select
    case (segment_select_out)
      4'b0001: segment_out=segment_1;
      4'b0010: segment_out=segment_2;
      4'b0100: segment_out=segment_3;
      4'b1000: segment_out=segment_4;
      default: segment_out=8'h0;
    endcase
  end
endmodule

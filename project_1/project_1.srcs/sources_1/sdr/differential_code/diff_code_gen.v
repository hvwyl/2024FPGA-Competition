`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/06 18:46:19
// Design Name: 
// Module Name: diff_code_gen
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

// diff_code_gen(
//   .clk(),
//   .rst(),
//   .din(),
//   .diff_dout()
// );

module diff_code_gen(
  input clk,
  input rst,
  input din,
  output reg diff_dout
);
  always @(posedge clk or posedge rst) begin
    if(rst) diff_dout<=1'b0;
    else begin
      diff_dout<=diff_dout^din;
    end
  end
endmodule



// diff_code_decode (
//   .clk(),
//   .rst(),
//   .diff_din(),
//   .dout()
// );

module diff_code_decode (
  input clk,
  input rst,
  input diff_din,
  output reg dout
);
  reg r1,r2;
  always @(posedge clk or posedge rst) begin
    if(rst) {dout,r1,r2}<=3'b000;
    else begin
      r1<=diff_din;
      r2<=r1;
      dout<=r1^r2;
    end
  end
endmodule
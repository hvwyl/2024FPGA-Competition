`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/06 14:59:45
// Design Name: 
// Module Name: PN_code_gen
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

//PN_code_gen #(.Order(5))
//(
//  .clk(),
//  .rst(),
//  .initial_state(),
//  .polynomial(),
//  .PN_code_out()
//);

module PN_code_gen
#(
  parameter Order = 5
)
(
  input clk,
  input rst,
  input [Order-1:0] initial_state,
  input [Order:0] polynomial,
  output reg PN_code_out
);
  integer i;
  reg [Order-1:0] pn_seq;
  reg tmp;
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      pn_seq<=initial_state;
      PN_code_out<=1'b0;
    end
    else begin
      pn_seq[0]<=tmp;
      PN_code_out<=pn_seq[Order-1];
      for (i = 0;i<(Order-1) ;i=i+1 ) pn_seq[i+1]<=pn_seq[i];
    end
  end

  integer j;
  always @(*) begin
    for (j = (Order-1);j>=0 ;j=j-1 ) begin
      if (j==(Order-1)) begin
        tmp=pn_seq[j];
      end
      else if (polynomial[j+1]) begin
        tmp=tmp^pn_seq[j];
      end
    end
  end
endmodule

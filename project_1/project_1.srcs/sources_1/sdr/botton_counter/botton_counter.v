`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/30 18:33:41
// Design Name: 
// Module Name: botton_counter
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


// botton_counter #(.counter_width(4),.counter_max_limit(15))
// (
// .clk(),
// .rst(),
// .botton_add_in(),//(active high) counter value increase 1 when press
// .botton_minus_in(),//(active high) counter value decrease 1 when press
// .counter_out()
// );


module botton_counter
#(
  parameter counter_width = 4,
  parameter counter_max_limit = 15
)
(
  input clk,
  input rst,
  input botton_add_in,//(active high) counter value increase 1 when press
  input botton_minus_in,//(active high) counter value decrease 1 when press
  output reg [counter_width-1:0] counter_out
);

  reg botton_add_in_r1,botton_add_in_r2;
  reg botton_minus_in_r1,botton_minus_in_r2;
  always @(posedge clk or posedge rst) begin
    if(rst) begin
      botton_add_in_r1<=0;
      botton_add_in_r2<=0;
      botton_minus_in_r1<=0;
      botton_minus_in_r2<=0;
    end
    else if(clk) begin
      botton_add_in_r1<=botton_add_in;
      botton_add_in_r2<=botton_add_in_r1;
      botton_minus_in_r1<=botton_minus_in;
      botton_minus_in_r2<=botton_minus_in_r1;
    end
  end

  wire botton_add_up_edge=botton_add_in_r1&~botton_add_in_r2;
  wire botton_minus_up_edge=botton_minus_in_r1&~botton_minus_in_r2;

  always @(posedge clk or posedge rst) begin
    if(rst) counter_out<=0;
    else if(clk) begin
      if(botton_add_up_edge) begin
        if(counter_out==counter_max_limit) counter_out<=0;
        else counter_out<=counter_out+1;
        //counter_out<=counter_out+1;
      end
      else if(botton_minus_up_edge) begin
        if(counter_out==0) counter_out<=counter_max_limit;
        else counter_out<=counter_out-1;
        //counter_out<=counter_out-1;
      end
    end
  end
endmodule

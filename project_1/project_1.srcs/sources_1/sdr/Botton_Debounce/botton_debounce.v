`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/22 01:42:48
// Design Name: 
// Module Name: botton_debounce
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



//botton_debounce #(.length(50))
//(
//    .clk(),
//    .rst(),
//    .botton_in(),
//    .botton_out()
//);

module botton_debounce
#(parameter length=50)
(
    input clk,
    input rst,
    input botton_in,
    output reg botton_out
);
    reg [length-1:0] delay_shift_reg;
    initial begin
        delay_shift_reg<=0;
        botton_out<=botton_in;
    end
    always @(posedge clk)begin
        if(rst) begin
            delay_shift_reg<=0;
            botton_out<=botton_in;
        end
        else begin
            delay_shift_reg<={delay_shift_reg[length-2:0],botton_in};//store n-cycle state
            if(&delay_shift_reg||&(~delay_shift_reg)) botton_out=delay_shift_reg[1];//if it's all 1 or all 0,transfer the botton state
        end
    end
endmodule


//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/02 10:57:29
// Design Name: 
// Module Name: Diff_Clk
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


//Diff_clk tb_u1(
//    .clkin(clk),
//    .rst(rst),
//    .clk_out_n(clk_n),
//    .clk_out_p(clk_p)
//);

//module Diff_clk(
//    input clkin,
//    input rst,
//    output reg clk_out_n,
//    output reg clk_out_p
//);
//    initial begin
//        clk_out_n<=1'b0;
//        clk_out_p<=1'b1;
//    end
//    always @(clkin) begin
//        if(rst) {clk_out_p,clk_out_n}<=2'b10;
//        else begin
//            clk_out_n<=~clk_out_n;
//            clk_out_p<=~clk_out_p;
//        end
//    end 
//endmodule
module Diff_clk(
    input clkin,
    input rst,
    output reg clk_out_n,
    output reg clk_out_p
);
    initial begin
        clk_out_n<=1'b0;
        clk_out_p<=1'b1;
    end
    always @(clkin) begin
        if(rst) {clk_out_p,clk_out_n}<=2'b10;
        else begin
          if(clkin==1'b1) {clk_out_p,clk_out_n}<=2'b10;
          else {clk_out_p,clk_out_n}<=2'b01;
        end
    end
endmodule


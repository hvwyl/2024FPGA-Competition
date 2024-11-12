`timescale 1ns/1ps
module top_tb ();
reg clk, rst_n;

initial begin
    clk = 0;
    forever #10 clk = ~clk;
end

initial begin
    rst_n = 1;
    #10
    rst_n = 0;
    #10
    rst_n = 1;
    #80000
    $finish();
end
wire tx, rx;
top top_0(
    .clk                (clk),
    .rst_n              (rst_n),
    
    .tx                 (tx),
    .rx                 (rx)
);
endmodule

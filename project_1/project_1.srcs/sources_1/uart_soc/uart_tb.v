`timescale 1ns / 1ps
module uart_tb();
initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
    #8000 $finish;
end

reg clk, rst_n;
initial begin
    clk='b0;
    forever #10 clk=~clk;
end

initial begin
    rst_n='b1;
    #10
    rst_n='b0;
    #10
    rst_n='b1;
end

// 测试数据
reg w_en,r_en;
reg [7:0] wdata;
wire [7:0] rdata;
wire full,empty;

initial begin
    w_en<='b0;
    r_en<='b0;
    wdata<='h00;
    #50
    // 测试写入
    repeat (8) @(negedge clk) begin
        w_en<='b1;
        r_en<='b0;
        wdata<=$random;
    end
    w_en<='b0;
    // 测试读取
    forever @(negedge clk)begin
        if (!empty) begin
            r_en<='b1;
        end
        else begin
            r_en<='b0;
        end
    end
end

// 环回测试
wire tx;
uart #(
    .CLK_FREQ           (50_000_000),
    .BAUD               (25_000_000),
    .FIFO_DEPTH         (8)
) uart0(
    .clk                (clk),
    .rst_n              (rst_n),

    .i_txfifo_wen       (w_en),
    .o_txfifo_full      (full),
    .i_txfifo_wdata     (wdata),
    .o_txfifo_cnt       (),

    .i_rxfifo_ren       (r_en),
    .o_rxfifo_empty     (empty),
    .o_rxfifo_rdata     (rdata),
    .o_rxfifo_cnt       (),

    .i_rx               (tx),
    .o_tx               (tx)
);
endmodule

module uart_intf #(
    parameter CLK_FREQ  = 50_000_000,
    parameter BAUD      = 115200
) (
    input       clk,
    input       rst_n,

    input               i_tx_valid,
    input [7:0]         i_tx_data,
    output reg          o_tx_ready,

    input               i_rx_ready,
    output reg [7:0]    o_rx_data,
    output reg          o_rx_valid,

    output reg          o_tx,
    input               i_rx
);
    /* baudrate generator */
    localparam CNT_MAX = CLK_FREQ/BAUD - 1;
    reg [$clog2(CNT_MAX)-1:0] cnt;
    wire cnt_flag;
    assign cnt_flag = (cnt == CNT_MAX);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt <= 'b0;
        end
        else if (!o_tx_ready || !o_rx_valid) begin
            if (cnt == CNT_MAX) begin
                cnt <= 'b0;
            end
            else begin
                cnt <= cnt + 'd1;
            end
        end
    end

    /* tx interface */
    reg [3:0] tx_cnt;
    reg [7:0] tx_reg;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            tx_cnt <= 'b0;
            tx_reg <= 'b0;
            o_tx_ready <= 'b1;
            o_tx <= 'b1;
        end
        else if (o_tx_ready) begin
            tx_cnt <= 'd0;
            tx_reg <= i_tx_data;
            if (i_tx_valid) begin
                o_tx_ready <= 'b0;
            end
            else begin
                o_tx_ready <= 'b1;
            end
            o_tx <= 'b1;
        end
        else if (cnt_flag) begin
            tx_cnt <= tx_cnt + 'd1;
            case (tx_cnt)
                'd0: begin
                    o_tx <= 'b0;
                    o_tx_ready<='b0;
                end
                'd1,'d2,'d3,'d4,'d5,'d6,'d7,'d8: begin
                    tx_reg <= {1'b0, tx_reg[7:1]};
                    o_tx <= tx_reg[0];
                    o_tx_ready <= 'b0;
                end
                'd9: begin
                    o_tx <= 'b1;
                    o_tx_ready <= 'b0;
                end
                default: begin
                    o_tx <= 'b1;
                    o_tx_ready <= 'b1;
                end
            endcase
        end
    end

    /* rx interface */
    reg rx1;
    reg rx2;
    always @(posedge clk) begin
        rx1 <= i_rx;
        rx2 <= rx1;
    end

    reg [3:0] rx_cnt;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rx_cnt <= 'd0;
            o_rx_data <= 'b0;
            o_rx_valid <= 'd0;
        end
        else if (o_rx_valid) begin
            rx_cnt <= 'd0;
            if (i_rx_ready) begin
                o_rx_valid <= 'b0;
            end
            else begin
                o_rx_valid <= 'b1;
            end
        end
        else if (cnt_flag) begin
            case (rx_cnt)
                'd0: if (~rx2) begin
                    rx_cnt <= 'd1;
                end
                else begin
                    rx_cnt <= 'd0;
                end
                default: begin
                    rx_cnt <= rx_cnt + 'd1;
                    o_rx_data <= {rx2, o_rx_data[7:1]};
                    if (rx_cnt == 'd8) begin
                        o_rx_valid <= 'b1;
                    end
                    else begin
                        o_rx_valid <= 'b0;
                    end
                end
            endcase
        end
    end
endmodule
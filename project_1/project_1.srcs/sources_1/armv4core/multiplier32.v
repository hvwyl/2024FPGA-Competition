module multiplier32 (
    input clk,
    input rst_n,

    input               i_vld,
    input               i_sign,
    input [31:0]        i_op1,
    input [31:0]        i_op2,
    input [63:0]        i_acc,

    output reg          o_vld,
    output reg [63:0]   o_result
);
    /* signed multadd */
    wire [63:0] result_s;
    xbip_multadd_0 xbip_multadd_0(
        .CLK        (clk),
        .CE         ('b1),
        .SCLR       ('b0),
        .A          (i_op1),
        .B          (i_op2),
        .C          (i_acc),
        .SUBTRACT   ('b0),
        .P          (result_s),
        .PCOUT      ()
    );
    /* unsigned multadd */
    wire [63:0] result_u;
    xbip_multadd_1 xbip_multadd_1(
        .CLK        (clk),
        .CE         ('b1),
        .SCLR       ('b0),
        .A          (i_op1),
        .B          (i_op2),
        .C          (i_acc),
        .SUBTRACT   ('b0),
        .P          (result_u),
        .PCOUT      ()
    );
    
    reg [3:0] cnt;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            o_vld <= 'b1;
            o_result <= 'b0;
        end
        else begin
            if (i_vld) begin
                o_vld <= 'b0;
                cnt <= 'd8;
            end
            else begin
                cnt <= cnt - 'd1;
                if (cnt == 'd0) begin
                    o_vld <= 'b1;
                    o_result <= i_sign ? result_s : result_u;
                end
                else begin
                    o_vld <= 'b0;
                end
            end
        end
    end
endmodule
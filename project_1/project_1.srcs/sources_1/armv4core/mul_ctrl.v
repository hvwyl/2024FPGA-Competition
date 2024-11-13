module mul_ctrl (
    input clk,
    input rst_n,
    input en,

    /* from ID phase */
    input               i_vld,

    /* from EX phase */
    input [2:0]         i_opcode,
    input [31:0]        i_op1,
    input [31:0]        i_op2,
    input [31:0]        i_acc_lo,
    input [31:0]        i_acc_hi,

    /* result output */
    output              o_result_vld,
    output [31:0]       o_result_lo,
    output [31:0]       o_result_hi
);
    `define MUL_MUL     3'b000
    `define MUL_MLA     3'b001
    `define MUL_UMULL   3'b100
    `define MUL_UMLAL   3'b101
    `define MUL_SMULL   3'b110
    `define MUL_SMLAL   3'b111

    reg [0:0] state;
    localparam IDLE = 0;
    localparam MULL = 1;
    assign o_result_vld = (state==IDLE);

    reg [63:0] acc;
    always @(*) begin
        case (i_opcode)
            // `MUL_MUL, `MUL_UMULL, `MUL_SMULL:
            default:
                acc <= 'b0;
            `MUL_MLA, /* for MLA instruction, upper 32 bits will be discarded */
            `MUL_UMLAL, `MUL_SMLAL:
                acc <= {i_acc_hi, i_acc_lo};
        endcase
    end

    reg mul_ctrl_vld;
    reg mul_sign;
    wire mul_result_vld;
    multiplier32 multiplier32_0(
        .clk        (clk),
        .rst_n      (rst_n),
        .i_vld      (mul_ctrl_vld&en),
        .i_sign     (mul_sign),
        .i_op1      (i_op1),
        .i_op2      (i_op2),
        .i_acc      (acc),
        .o_vld      (mul_result_vld),
        .o_result   ({o_result_hi, o_result_lo})
    );

    always @(*) begin
        case (i_opcode)
            // `MUL_MUL, `MUL_MLA, `MUL_UMULL, `MUL_UMLAL:
            default:
                mul_sign <= 'b0;
            `MUL_SMULL, `MUL_SMLAL:
                mul_sign <= 'b1;
        endcase
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
            mul_ctrl_vld <= 'b0;
        end
        else if (en) begin
            case (state)
                // IDLE: begin
                default: begin
                    if (i_vld) begin
                        state <= MULL;
                        mul_ctrl_vld <= 'b1;
                    end
                    else begin
                        state <= IDLE;
                        mul_ctrl_vld <= 'b0;
                    end
                end
                MULL: if (mul_ctrl_vld) begin
                    state <= MULL;
                    if (mul_result_vld) begin
                        mul_ctrl_vld <= 'b1;
                    end
                    else begin
                        mul_ctrl_vld <= 'b0;
                    end
                end
                else begin
                    if (mul_result_vld) begin
                        state <= IDLE;
                    end
                    else begin
                        state <= MULL;
                    end
                    mul_ctrl_vld <= 'b0;
                end
            endcase
        end
    end
endmodule
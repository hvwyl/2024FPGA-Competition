
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/01 21:31:32
// Design Name: 
// Module Name: Quadrature_Clk
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


//Quadrature_Clk tb_u0(//note:output clk freq is 1/4 of input freq,input clk duty con isn't be 50%
//    .clkin(clk),
//    .rst(rst),
//    .D1_270deg_clk(clk_270),
//    .D2_180deg_clk(clk_180),
//    .Q1_90deg_clk(clk_90),
//    .Q2_0deg_clk(clk_0)
//);


module Quadrature_Clk(//caution:output clk freq is 1/4 of input freq
    input clkin,
    input rst,
    output D1_270deg_clk,
    output D2_180deg_clk,
    output Q1_90deg_clk,
    output Q2_0deg_clk
);
    reg clk_N=1'b1,clk_P=1'b0;
    
    always @(posedge clkin) begin
        if(rst){clk_N,clk_P}<=2'b10;
        else begin
            clk_N<=~clk_N;
            clk_P<=~clk_P;
        end
    end
    wire D1,D2,Q1,Q2;
    FDRE #(.INIT(1'b0)) // Initial value of register (1'b0 or 1'b1))
    FDRE_u0 (
        .Q(Q1), // 1-bit Data output
        .C(clk_P), // 1-bit Clock input
        .CE(1'b1), // 1-bit Clock enable input
        .R(rst), // 1-bit Asynchronous clear input
        .D(D1) // 1-bit Data input
    ),
    FDRE_u1 (
        .Q(Q2), // 1-bit Data output
        .C(clk_N), // 1-bit Clock input
        .CE(1'b1), // 1-bit Clock enable input
        .R(rst), // 1-bit Asynchronous clear input
        .D(D2) // 1-bit Data input
    );
//    util_ff_0 //vivado basic IP core: FDRE,R don't inverted
//    IP_ff_u0 (
//        .clk(clk_P),                // input wire clk
//        .D(D1),                    // input wire [0 : 0] D
//        .Q(Q1),                    // output wire [0 : 0] Q
//        .reset(rst),            // input wire reset//high active
//        .clk_enable(1'b1)  // input wire clk_enable
//    ),
//    IP_ff_u1 (
//        .clk(clk_N),                // input wire clk
//        .D(D2),                    // input wire [0 : 0] D
//        .Q(Q2),                    // output wire [0 : 0] Q
//        .reset(rst),            // input wire reset//high active
//        .clk_enable(1'b1)  // input wire clk_enable
//    );
    assign D1=~Q1;
    assign D2=~Q2;
    
//    oddr_0 
//    oddr_u0 (
//        .clk_in(D1),    // input wire clk_in
//        .clk_out(D1_270deg_clk)  // output wire clk_out
//    ),
//    oddr_u1 (
//        .clk_in(D2),    // input wire clk_in
//        .clk_out(D2_180deg_clk)  // output wire clk_out
//    ),
//    oddr_u2 (
//        .clk_in(Q1),    // input wire clk_in
//        .clk_out(Q1_90deg_clk)  // output wire clk_out
//    ),
//    oddr_u3 (
//        .clk_in(Q2),    // input wire clk_in
//        .clk_out(Q2_0deg_clk)  // output wire clk_out
//    );
    
//    ODDR #(
//          .DDR_CLK_EDGE("OPPOSITE_EDGE"), //"OPPOSITE_EDGE" or "SAME_EDGE"
//          .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
//          .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC"
//    ) 
//    oddr_u0 (
//         .Q(D1_270deg_clk),   // 1-bit DDR output
//         .C(D1),   // 1-bit clock input
//         .CE(1'b1), // 1-bit clock enable input
//         .D1(1'b1), // 1-bit data input (positive edge)
//         .D2(1'b0), // 1-bit data input (negative edge)
//         .R(1'b0),   // 1-bit reset
//         .S(1'b0)    // 1-bit set
//    ),
//    oddr_u1 (
//         .Q(D2_180deg_clk),   // 1-bit DDR output
//         .C(D2),   // 1-bit clock input
//         .CE(1'b1), // 1-bit clock enable input
//         .D1(1'b1), // 1-bit data input (positive edge)
//         .D2(1'b0), // 1-bit data input (negative edge)
//         .R(1'b0),   // 1-bit reset
//         .S(1'b0)    // 1-bit set
//    ),
//    oddr_u2 (
//         .Q(Q1_90deg_clk),   // 1-bit DDR output
//         .C(Q1),   // 1-bit clock input
//         .CE(1'b1), // 1-bit clock enable input
//         .D1(1'b1), // 1-bit data input (positive edge)
//         .D2(1'b0), // 1-bit data input (negative edge)
//         .R(1'b0),   // 1-bit reset
//         .S(1'b0)    // 1-bit set
//    ),
//    oddr_u3 (
//         .Q(Q2_0deg_clk),   // 1-bit DDR output
//         .C(Q2),   // 1-bit clock input
//         .CE(1'b1), // 1-bit clock enable input
//         .D1(1'b1), // 1-bit data input (positive edge)
//         .D2(1'b0), // 1-bit data input (negative edge)
//         .R(1'b0),   // 1-bit reset
//         .S(1'b0)    // 1-bit set
//    );
    assign D1_270deg_clk=D1;
    assign D2_180deg_clk=D2;
    assign Q1_90deg_clk=Q1;
    assign Q2_0deg_clk=Q2;
endmodule

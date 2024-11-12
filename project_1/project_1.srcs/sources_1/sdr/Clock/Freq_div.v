//Frac_Clock_Div(//Output Freq:Clk_out=(Clk_in*Div_ratio/4294967296)
//    .clkin(),
//    .div_ratio(),
//    .rst_n(),
//    .clkout()
//);

module Frac_Clock_Div(//Output Freq:Clk_out=(Clk_in*Div_ratio/4294967296)
    input clkin,
    input [31:0] div_ratio,
    input rst_n,
    output reg clkout
);
    reg [31:0] sum;
    initial begin
        sum<=32'd0;
        clkout<=1'b0;
    end
    always @(posedge clkin) begin
        if(!rst_n)begin//reset all
            sum<=32'd0;
            clkout<=1'b0;
        end
        else begin//main loop
            sum<=sum+div_ratio;//when sum+div_ratio is bigger than 32bit,the reg can auto cutoff overflow bit
            if(sum<=32'h7fff_ffff)clkout=1'b0;
            else clkout=1'b1;
            //and also means it's a remainder calculator    found the remainder of 2^32
            /*if(sum[32]==1'b1)begin
                sum[32]<=1'b0;
                clkout<=~clkout;
            end*/
        end
    end
endmodule


//Int_Clock_Div(//Output freq:clkout=(clkin/div_count)/2
//    .clkin(),
//    .rst_n(),
//    .div_count(),
//    .clkout()
//);
module Int_Clock_Div(//Output freq:clkout=(clkin/div_count)/2
    input clkin,
    input rst_n,
    input [31:0] div_count,
    output reg clkout
);
reg [32:0] clk_div_cnt;
initial begin 
    clk_div_cnt=33'd0;
    clkout=1'b0;
end
always @(posedge clkin) begin
    if(rst_n) begin
        if(clk_div_cnt<div_count) clk_div_cnt<=clk_div_cnt+1'b1;
        else begin
            clk_div_cnt<=0;
            clkout<=~clkout;
        end
    end
    else begin
        clk_div_cnt<=33'd0;
        clkout<=1'b0;
    end 
end
endmodule



//Binary_Freq_Div(
//    .clkin(),
//    .rst(),
//    .clk_div2(),
//    .clk_div4(),
//    .clk_div8(),
//    .clk_div16(),
//    .clk_div32(),
//    .clk_div64(),
//    .clk_div128(),
//    .clk_div256(),
//    .clk_div512(),
//    .clk_div1024(),
//    .clk_div2048(),
//    .clk_div4096(),
//    .clk_div8192(),
//    .clk_div16384(),
//    .clk_div32768(),
//    .clk_div65536()
//);

module Binary_Freq_Div(
    input clkin,
    input rst,
    output clk_div2,
    output clk_div4,
    output clk_div8,
    output clk_div16,
    output clk_div32,
    output clk_div64,
    output clk_div128,
    output clk_div256,
    output clk_div512,
    output clk_div1024,
    output clk_div2048,
    output clk_div4096,
    output clk_div8192,
    output clk_div16384,
    output clk_div32768,
    output clk_div65536
);
    reg [15:0] cnt;
    initial cnt=16'd0;
    always @(posedge clkin) begin
        if(rst) cnt<=16'd0;
        else cnt<=cnt+1;
    end
    assign clk_div2=cnt[0];
    assign clk_div4=cnt[1];
    assign clk_div8=cnt[2];
    assign clk_div16=cnt[3];
    assign clk_div32=cnt[4];
    assign clk_div64=cnt[5];
    assign clk_div128=cnt[6];
    assign clk_div256=cnt[7];
    assign clk_div512=cnt[8];
    assign clk_div1024=cnt[9];
    assign clk_div2048=cnt[10];
    assign clk_div4096=cnt[11];
    assign clk_div8192=cnt[12];
    assign clk_div16384=cnt[13];
    assign clk_div32768=cnt[14];
    assign clk_div65536=cnt[15];

endmodule
module bridge (
    input clk,
    input rst_n,

    input               i_ram_en,
    input               i_ram_wr,
    input [1:0]         i_ram_size,
    input [31:0]        i_ram_addr,
    output reg [31:0]   o_ram_rdata,
    input [31:0]        i_ram_wdata,

    output              o_bus_en,
    output [31:0]       o_bus_addr,
    output [31:0]       o_bus_addr_prev,
    output reg [3:0]    o_bus_we,
    input [31:0]        i_bus_rdata,
    output reg [31:0]   o_bus_wdata
);
    `define MEM_B       2'b00   // byte
    `define MEM_H       2'b01   // half word
    `define MEM_W       2'b10   // word

    reg [31:0] ram_addr_prev;
    reg [1:0] ram_size_prev;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ram_addr_prev <= 32'b0;
            ram_size_prev <= 2'b0;
        end
        else begin
            ram_addr_prev <= i_ram_addr;
            ram_size_prev <= i_ram_size;
        end
    end
    assign o_bus_en = i_ram_en;
    assign o_bus_addr = {i_ram_addr[31:2], 2'b00};
    assign o_bus_addr_prev = {ram_addr_prev[31:2], 2'b00};

    always @(*) begin
        case (i_ram_size)
            `MEM_B: o_bus_we <= ({i_ram_wr} << i_ram_addr[1:0]);
            `MEM_H: o_bus_we <= ({2{i_ram_wr}} << {i_ram_addr[1], 1'b0});
            `MEM_W: o_bus_we <= {4{i_ram_wr}};
            default: o_bus_we <= {4{i_ram_wr}};
        endcase
    end
    always @(*) begin
        case (ram_size_prev)
            `MEM_B: o_ram_rdata <= {24'b0, i_bus_rdata[{ram_addr_prev[1:0], 3'b0}+:8]};
            `MEM_H: o_ram_rdata <= {16'b0, i_bus_rdata[{ram_addr_prev[1], 4'b0}+:16]};
            `MEM_W: o_ram_rdata <= i_bus_rdata;
            default: o_ram_rdata <= i_bus_rdata;
        endcase
    end
    always @(*) begin
        case (i_ram_size)
            `MEM_B: o_bus_wdata <= (i_ram_wdata << {i_ram_addr[1:0], 3'b0});
            `MEM_H: o_bus_wdata <= (i_ram_wdata << {i_ram_addr[1], 4'b0});
            `MEM_W: o_bus_wdata <= i_ram_wdata;
            default: o_bus_wdata <= i_ram_wdata;
        endcase
    end

endmodule
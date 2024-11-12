module bus(
    input clk,
    input rst_n,
    
    /* download flag */
    output              o_dl,

    /* interrupt request */
    output              o_irq,
    output [31:0]       o_irq_r0,

    /* rom bus */
    input               i_rom_en,
    input [31:0]        i_rom_addr,
    output [31:0]       o_rom_data,

    /* ram bus */
    input               i_ram_en,
    input               i_ram_wr,
    input [1:0]         i_ram_size,
    input [31:0]        i_ram_addr,
    output [31:0]       o_ram_rdata,
    input [31:0]        i_ram_wdata,

    /* UART0 interface */
    input               i_uart0_rx,
    output              o_uart0_tx,

    /* SDR interface */
    output  reg [3:0]   o_MOD_STATE           ,    
    output  reg [31:0]  o_s0_arg_AM_fc        ,
    output  reg [15:0]  o_s0_arg_AM_Depth     ,
    output  reg [31:0]  o_s1_arg_DSB_fc       ,
    output  reg [31:0]  o_s2_arg_SSB_fc       ,
    output  reg         o_s2_arg_LU_MODE      ,
    output  reg [31:0]  o_s3_arg_FM_fc        ,
    output  reg [15:0]  o_s3_arg_FM_offset    ,
    output  reg [31:0]  o_s4_arg_PM_fc        ,
    output  reg [15:0]  o_s4_arg_PM_offset    ,
    output  reg [31:0]  o_s5_arg_ASK_fc       ,
    output  reg [15:0]  o_s5_arg_ASK_amp      ,
    output  reg [31:0]  o_s6_arg_BFSK_fc      ,
    output  reg [31:0]  o_s6_arg_BFSK_range   ,
    output  reg [31:0]  o_s7_arg_BPSK_fc      ,
    output  reg [31:0]  o_s7_arg_BPSK_range   ,
    output  reg [31:0]  o_s8_arg_DPSK_fc      ,
    output  reg [31:0]  o_s9_arg_QPSK_fc      
);
    `define MEM_B       2'b00   // byte
    `define MEM_H       2'b01   // half word
    `define MEM_W       2'b10   // word

    /* bridge definitions */
    wire bus_en;
    wire [31:0] bus_addr;
    wire [31:0] bus_addr_prev;
    wire [3:0] bus_we;
    reg [31:0] bus_rdata;
    wire [31:0] bus_wdata;
    bridge bridge_0(
        .clk                (clk),
        .rst_n              (rst_n),

        .i_ram_en           (i_ram_en),
        .i_ram_wr           (i_ram_wr),
        .i_ram_size         (i_ram_size),
        .i_ram_addr         (i_ram_addr),
        .o_ram_rdata        (o_ram_rdata),
        .i_ram_wdata        (i_ram_wdata),

        .o_bus_en           (bus_en),
        .o_bus_addr         (bus_addr),
        .o_bus_addr_prev    (bus_addr_prev),
        .o_bus_we           (bus_we),
        .i_bus_rdata        (bus_rdata),
        .o_bus_wdata        (bus_wdata)
    );

    /*
        Memory definitions:
        BRAM = 16KB (rw, x, aligned4)
        +------------+------------+
        | 0x00000000 | BRAM(16KB) |
        +------------+------------+
        | 0x00004000 | UART0_FIFO |
        +------------+------------+
        | 0x00004004 | UART0_FLAG |
        +------------+------------+
    */

    /* BRAM definitions */
    wire [31:0] bram_rdata;
    bram_debug bram_0(
        /* debug interface*/
        .clk        (clk),
        .rst_n      (rst_n),
        .dl         (o_dl),

        /* bram interface*/
        .addra      (bus_addr[13:2]),
        .clka       (clk),
        .dina       (bus_wdata),
        .douta      (bram_rdata),
        .ena        (bus_en && (bus_addr[31:14]==19'b0000_0000_0000_0000_00)),
        .wea        (bus_we),

        .addrb      (i_rom_addr[13:2]),
        .clkb       (clk),
        .dinb       (),
        .doutb      (o_rom_data),
        .enb        (i_rom_en && (i_rom_addr[31:14]==19'b0000_0000_0000_0000_00)),
        .web        (4'b0000)
    );

    /* UART0 definitions */
    wire uart0_txfifo_full;
    wire uart0_rxfifo_empty;
    wire [7:0] uart0_rxfifo_rdata;
    uart #(
        .CLK_FREQ           (50_000_000),
        .BAUD               (115200),
        .FIFO_DEPTH         (8)
    ) uart_0(
        .clk                (clk),
        .rst_n              (rst_n),

        .i_txfifo_wen       (bus_en && (|bus_we) && (bus_addr==32'h0000_4000)),
        .o_txfifo_full      (uart0_txfifo_full),
        .i_txfifo_wdata     (bus_wdata[7:0]),
        .o_txfifo_cnt       (),

        .i_rxfifo_ren       (bus_en && !(|bus_we) && (bus_addr==32'h0000_4000)),
        .o_rxfifo_empty     (uart0_rxfifo_empty),
        .o_rxfifo_rdata     (uart0_rxfifo_rdata),
        .o_rxfifo_cnt       (),

        .i_rx               (i_uart0_rx),
        .o_tx               (o_uart0_tx)
    );

    /* SDR */
    localparam S0_AM_MODE   = 4'd0;
    localparam S1_DSB_MODE  = 4'd1;
    localparam S2_SSB_MODE  = 4'd2;
    localparam S3_FM_MODE   = 4'd3;
    localparam S4_PM_MODE   = 4'd4;
    localparam S5_ASK_MODE  = 4'd5;
    localparam S6_BFSK_MODE = 4'd6;
    localparam S7_BPSK_MODE = 4'd7;
    localparam S8_DPSK_MODE = 4'd8;
    localparam S9_QPSK_MODE = 4'd9;
    localparam S10_PDM_MODE = 4'd10;
    localparam S11_PWM_MODE = 4'd11;
    localparam S12_OFF_MODE = 4'd12;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            o_MOD_STATE           <= S12_OFF_MODE;
            o_s0_arg_AM_fc        <= 'b0;
            o_s0_arg_AM_Depth     <= 'b0;
            o_s1_arg_DSB_fc       <= 'b0;
            o_s2_arg_SSB_fc       <= 'b0;
            o_s2_arg_LU_MODE      <= 'b0;
            o_s3_arg_FM_fc        <= 'b0;
            o_s3_arg_FM_offset    <= 'b0;
            o_s4_arg_PM_fc        <= 'b0;
            o_s4_arg_PM_offset    <= 'b0;
            o_s5_arg_ASK_fc       <= 'b0;
            o_s5_arg_ASK_amp      <= 'b0;
            o_s6_arg_BFSK_fc      <= 'b0;
            o_s6_arg_BFSK_range   <= 'b0;
            o_s7_arg_BPSK_fc      <= 'b0;
            o_s7_arg_BPSK_range   <= 'b0;
            o_s8_arg_DPSK_fc      <= 'b0;
            o_s9_arg_QPSK_fc      <= 'b0;
        end
        else if (bus_en && (|bus_we)) begin
            if (bus_addr==32'h0000_6000) o_MOD_STATE           <= bus_wdata[3:0]    ;
            if (bus_addr==32'h0000_6004) o_s0_arg_AM_fc        <= bus_wdata         ;
            if (bus_addr==32'h0000_6008) o_s0_arg_AM_Depth     <= bus_wdata[15:0]   ;
            if (bus_addr==32'h0000_600C) o_s1_arg_DSB_fc       <= bus_wdata         ;
            if (bus_addr==32'h0000_6010) o_s2_arg_SSB_fc       <= bus_wdata         ;
            if (bus_addr==32'h0000_6014) o_s2_arg_LU_MODE      <= bus_wdata[0]      ;
            if (bus_addr==32'h0000_6018) o_s3_arg_FM_fc        <= bus_wdata         ;
            if (bus_addr==32'h0000_601C) o_s3_arg_FM_offset    <= bus_wdata[15:0]   ;
            if (bus_addr==32'h0000_6020) o_s4_arg_PM_fc        <= bus_wdata         ;
            if (bus_addr==32'h0000_6024) o_s4_arg_PM_offset    <= bus_wdata[15:0]   ;
            if (bus_addr==32'h0000_6028) o_s5_arg_ASK_fc       <= bus_wdata         ;
            if (bus_addr==32'h0000_602C) o_s5_arg_ASK_amp      <= bus_wdata[15:0]   ;
            if (bus_addr==32'h0000_6030) o_s6_arg_BFSK_fc      <= bus_wdata         ;
            if (bus_addr==32'h0000_6034) o_s6_arg_BFSK_range   <= bus_wdata         ;
            if (bus_addr==32'h0000_6038) o_s7_arg_BPSK_fc      <= bus_wdata         ;
            if (bus_addr==32'h0000_603C) o_s7_arg_BPSK_range   <= bus_wdata         ;
            if (bus_addr==32'h0000_6040) o_s8_arg_DPSK_fc      <= bus_wdata         ;
            if (bus_addr==32'h0000_6044) o_s9_arg_QPSK_fc      <= bus_wdata         ;
        end
    end

    /* read multiplexer definitions */
    always @(*) begin
        if (bus_addr_prev[31:14]==19'b0000_0000_0000_0000_00) bus_rdata = bram_rdata;
        /* UART0 read interface */
        else if (bus_addr_prev==32'h0000_4000) bus_rdata = {24'b0, uart0_rxfifo_rdata};
        else if (bus_addr_prev==32'h0000_4004) bus_rdata = {15'b0, uart0_rxfifo_empty, 15'b0, uart0_txfifo_full};
        /* SDR read interface */
        else if (bus_addr_prev==32'h0000_6000) bus_rdata = {24'b0, o_MOD_STATE}         ;
        else if (bus_addr_prev==32'h0000_6004) bus_rdata = o_s0_arg_AM_fc               ;
        else if (bus_addr_prev==32'h0000_6008) bus_rdata = {16'b0, o_s0_arg_AM_Depth}   ;
        else if (bus_addr_prev==32'h0000_600C) bus_rdata = o_s1_arg_DSB_fc              ;
        else if (bus_addr_prev==32'h0000_6010) bus_rdata = o_s2_arg_SSB_fc              ;
        else if (bus_addr_prev==32'h0000_6014) bus_rdata = {31'b0, o_s2_arg_LU_MODE}    ;
        else if (bus_addr_prev==32'h0000_6018) bus_rdata = o_s3_arg_FM_fc               ;
        else if (bus_addr_prev==32'h0000_601C) bus_rdata = {16'b0, o_s3_arg_FM_offset}  ;
        else if (bus_addr_prev==32'h0000_6020) bus_rdata = o_s4_arg_PM_fc               ;
        else if (bus_addr_prev==32'h0000_6024) bus_rdata = {16'b0, o_s4_arg_PM_offset}  ;
        else if (bus_addr_prev==32'h0000_6028) bus_rdata = o_s5_arg_ASK_fc              ;
        else if (bus_addr_prev==32'h0000_602C) bus_rdata = {16'b0, o_s5_arg_ASK_amp}    ;
        else if (bus_addr_prev==32'h0000_6030) bus_rdata = o_s6_arg_BFSK_fc             ;
        else if (bus_addr_prev==32'h0000_6034) bus_rdata = o_s6_arg_BFSK_range          ;
        else if (bus_addr_prev==32'h0000_6038) bus_rdata = o_s7_arg_BPSK_fc             ;
        else if (bus_addr_prev==32'h0000_603C) bus_rdata = o_s7_arg_BPSK_range          ;
        else if (bus_addr_prev==32'h0000_6040) bus_rdata = o_s8_arg_DPSK_fc             ;
        else if (bus_addr_prev==32'h0000_6044) bus_rdata = o_s9_arg_QPSK_fc             ;
        /* avoid latches */
        else bus_rdata = 'b0;
    end

    /* interrupt request definitions */
    assign o_irq = (!uart0_rxfifo_empty);
    // assign o_irq = 'b0;
    assign o_irq_r0 = 'b0;
endmodule
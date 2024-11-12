module bram_debug (
    /* download mode */
    input           clk,
    input           rst_n,
    output          dl,

    /* bram interface */
    input [11:0]    addra,
    input           clka,
    input [31:0]    dina,
    output [31:0]   douta,
    input           ena,
    input [3:0]     wea,

    input [11:0]    addrb,
    input           clkb,
    input [31:0]    dinb,
    output [31:0]   doutb,
    input           enb,
    input [3:0]     web
);
    vio_0 vio_0(
        .clk            (clk),
        .probe_out0     (dl)
    );

    wire [13:0] jtag_addr;
    wire jtag_clk;
    wire [31:0] jtag_din;
    wire jtag_en;
    wire jtag_rst;
    wire [3:0] jtag_we;
    jtag2bram jtag2bram_0(
        .clk            (clk),
        .rst_n          (rst_n),
        .bram_addr      (jtag_addr),
        .bram_clk       (jtag_clk),
        .bram_wrdata    (jtag_din),
        .bram_rddata    (doutb),
        .bram_en        (jtag_en),
        .bram_rst       (jtag_rst),
        .bram_we        (jtag_we)
    );

    wire [11:0] addrb_muxed;
    assign addrb_muxed = dl ? jtag_addr[13:2] : addrb;

    wire clkb_muxed;
    BUFGMUX #() BUFGMUX_inst(
        .O  (clkb_muxed),   // 1-bit output: Clock output
        .I0 (clkb),         // 1-bit input: Clock input (S=0)
        .I1 (jtag_clk),     // 1-bit input: Clock input (S=1)
        .S  (dl)            // 1-bit input: Clock select
    );

    wire [31:0] dinb_muxed;
    assign dinb_muxed = dl ? jtag_din : dinb;

    wire enb_muxed;
    assign enb_muxed = dl ? jtag_en : enb;

    wire [3:0] web_muxed;
    assign web_muxed = dl ? jtag_we : web;

    bram_0 bram_0(
        .addra      (addra),
        .clka       (clka),
        .dina       (dina),
        .douta      (douta),
        .ena        (ena),
        .wea        (wea),

        .addrb      (addrb_muxed),
        .clkb       (clkb_muxed),
        .dinb       (dinb_muxed),
        .doutb      (doutb),
        .enb        (enb_muxed),
        .web        (web_muxed)
    );
endmodule
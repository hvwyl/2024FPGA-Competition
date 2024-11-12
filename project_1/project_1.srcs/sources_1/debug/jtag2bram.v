module jtag2bram (
    input clk,
    input rst_n,
    output [13:0] bram_addr,
    output bram_clk,
    output [31:0] bram_wrdata,
    input [31:0] bram_rddata,
    output bram_en,
    output bram_rst,
    output [3:0] bram_we
);
    wire [31:0] axi_araddr;
    wire [2:0] axi_arprot;
    wire axi_arready;
    wire axi_arvalid;
    wire [31:0] axi_awaddr;
    wire [2:0] axi_awprot;
    wire axi_awready;
    wire axi_awvalid;
    wire axi_bready;
    wire [1:0] axi_bresp;
    wire axi_bvalid;
    wire [31:0] axi_rdata;
    wire axi_rready;
    wire [1:0] axi_rresp;
    wire axi_rvalid;
    wire [31:0] axi_wdata;
    wire axi_wready;
    wire [3:0] axi_wstrb;
    wire axi_wvalid;
    jtag_axi_0 jtag_axi_0(
        .aclk           (clk),
        .aresetn        (rst_n),
        .m_axi_araddr   (axi_araddr),
        .m_axi_arprot   (axi_arprot),
        .m_axi_arready  (axi_arready),
        .m_axi_arvalid  (axi_arvalid),
        .m_axi_awaddr   (axi_awaddr),
        .m_axi_awprot   (axi_awprot),
        .m_axi_awready  (axi_awready),
        .m_axi_awvalid  (axi_awvalid),
        .m_axi_bready   (axi_bready),
        .m_axi_bresp    (axi_bresp),
        .m_axi_bvalid   (axi_bvalid),
        .m_axi_rdata    (axi_rdata),
        .m_axi_rready   (axi_rready),
        .m_axi_rresp    (axi_rresp),
        .m_axi_rvalid   (axi_rvalid),
        .m_axi_wdata    (axi_wdata),
        .m_axi_wready   (axi_wready),
        .m_axi_wstrb    (axi_wstrb),
        .m_axi_wvalid   (axi_wvalid)
    );
    axi_bram_ctrl_0 axi_bram_ctrl_0(
        .s_axi_aclk     (clk),
        .s_axi_aresetn  (rst_n),
        .s_axi_araddr   (axi_araddr),
        .s_axi_arprot   (axi_arprot),
        .s_axi_arready  (axi_arready),
        .s_axi_arvalid  (axi_arvalid),
        .s_axi_awaddr   (axi_awaddr),
        .s_axi_awprot   (axi_awprot),
        .s_axi_awready  (axi_awready),
        .s_axi_awvalid  (axi_awvalid),
        .s_axi_bready   (axi_bready),
        .s_axi_bresp    (axi_bresp),
        .s_axi_bvalid   (axi_bvalid),
        .s_axi_rdata    (axi_rdata),
        .s_axi_rready   (axi_rready),
        .s_axi_rresp    (axi_rresp),
        .s_axi_rvalid   (axi_rvalid),
        .s_axi_wdata    (axi_wdata),
        .s_axi_wready   (axi_wready),
        .s_axi_wstrb    (axi_wstrb),
        .s_axi_wvalid   (axi_wvalid),
        .bram_addr_a    (bram_addr),
        .bram_clk_a     (bram_clk),
        .bram_wrdata_a  (bram_wrdata),
        .bram_rddata_a  (bram_rddata),
        .bram_en_a      (bram_en),
        .bram_rst_a     (bram_rst),
        .bram_we_a      (bram_we)
    );
endmodule
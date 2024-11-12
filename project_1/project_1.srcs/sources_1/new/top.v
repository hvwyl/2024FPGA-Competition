module top(
  input gclk,               
  input rst,                 


  input key1,                
  input key2,               
  input key3,                
  input key4,               

  output [7:0] led,   
  output [3:0] seg_s,
  output [7:0] seg_ap,


  output ad_clk,             
  (* KEEP="TRUE"*)
  input [11:0] ad_din,       


  output da1_wrt,
  output da1_clk,
  output [13:0] da1_out,
  output da2_wrt,
  output da2_clk,
  output [13:0] da2_out, 

  inout [38:3] ext
);
    wire clk_50m;
    wire rst_n;
    assign rst_n = ~rst;

    wire dl;
    // delay one moment to avoid metastability issues when resetting asynchronously
    reg dl1;
    always @(posedge clk_50m) dl1 <= dl;

    /* armv4core processor */
    wire irq;
    wire [31:0] irq_r0;
    wire rom_en;
    wire [31:0] rom_addr;
    wire [31:0] rom_data;
    wire ram_en;
    wire ram_wr;
    wire [1:0] ram_size;
    wire [31:0] ram_addr;
    wire [31:0] ram_wdata;
    wire [31:0] ram_rdata;
    armv4core core_0(
        .clk                (clk_50m),
        .rst_n              (rst_n && (~dl) && (~dl1)),
        .en                 (1'b1),
        
        /* interrupt request */
        .i_irq              (irq),
        .i_irq_r0           (irq_r0),
        
        /* rom bus */
        .o_rom_en           (rom_en),
        .o_rom_addr         (rom_addr),
        .i_rom_data         (rom_data),
        
        /* ram bus */
        .o_ram_en           (ram_en),
        .o_ram_wr           (ram_wr),
        .o_ram_size         (ram_size),
        .o_ram_addr         (ram_addr),
        .i_ram_rdata        (ram_rdata),
        .o_ram_wdata        (ram_wdata)
    );

    wire [3:0]   MOD_STATE           ;
    wire [31:0]  s0_arg_AM_fc        ;
    wire [15:0]  s0_arg_AM_Depth     ;
    wire [31:0]  s1_arg_DSB_fc       ;
    wire [31:0]  s2_arg_SSB_fc       ;
    wire         s2_arg_LU_MODE      ;
    wire [31:0]  s3_arg_FM_fc        ;
    wire [15:0]  s3_arg_FM_offset    ;
    wire [31:0]  s4_arg_PM_fc        ;
    wire [15:0]  s4_arg_PM_offset    ;
    wire [31:0]  s5_arg_ASK_fc       ;
    wire [15:0]  s5_arg_ASK_amp      ;
    wire [31:0]  s6_arg_BFSK_fc      ;
    wire [31:0]  s6_arg_BFSK_range   ;
    wire [31:0]  s7_arg_BPSK_fc      ;
    wire [31:0]  s7_arg_BPSK_range   ;
    wire [31:0]  s8_arg_DPSK_fc      ;
    wire [31:0]  s9_arg_QPSK_fc      ;
    /* bus definitions */
    bus bus_0(
        .clk                (clk_50m),
        .rst_n              (rst_n),
        
        /* download flag */
        .o_dl               (dl),

        /* interrupt request */
        .o_irq              (irq),
        .o_irq_r0           (irq_r0),

        /* rom bus */
        .i_rom_en           (rom_en),
        .i_rom_addr         (rom_addr),
        .o_rom_data         (rom_data),

        /* ram bus */
        .i_ram_en           (ram_en),
        .i_ram_wr           (ram_wr),
        .i_ram_size         (ram_size),
        .i_ram_addr         (ram_addr),
        .o_ram_rdata        (ram_rdata),
        .i_ram_wdata        (ram_wdata),

        /* SDR interface */
        .o_MOD_STATE           (MOD_STATE           ),
        .o_s0_arg_AM_fc        (s0_arg_AM_fc        ),
        .o_s0_arg_AM_Depth     (s0_arg_AM_Depth     ),
        .o_s1_arg_DSB_fc       (s1_arg_DSB_fc       ),
        .o_s2_arg_SSB_fc       (s2_arg_SSB_fc       ),
        .o_s2_arg_LU_MODE      (s2_arg_LU_MODE      ),
        .o_s3_arg_FM_fc        (s3_arg_FM_fc        ),
        .o_s3_arg_FM_offset    (s3_arg_FM_offset    ),
        .o_s4_arg_PM_fc        (s4_arg_PM_fc        ),
        .o_s4_arg_PM_offset    (s4_arg_PM_offset    ),
        .o_s5_arg_ASK_fc       (s5_arg_ASK_fc       ),
        .o_s5_arg_ASK_amp      (s5_arg_ASK_amp      ),
        .o_s6_arg_BFSK_fc      (s6_arg_BFSK_fc      ),
        .o_s6_arg_BFSK_range   (s6_arg_BFSK_range   ),
        .o_s7_arg_BPSK_fc      (s7_arg_BPSK_fc      ),
        .o_s7_arg_BPSK_range   (s7_arg_BPSK_range   ),
        .o_s8_arg_DPSK_fc      (s8_arg_DPSK_fc      ),
        .o_s9_arg_QPSK_fc      (s9_arg_QPSK_fc      ),

        /* UART0 interface */
        .i_uart0_rx         (ext[3]),
        .o_uart0_tx         (ext[4])
    );

    my_SDR_v1 sdr(
  .clk(gclk),
  .rst(rst),
  .ad_din(ad_din),
  .dspi_din(ext[4:3]),
  .dspi_sclk(ext[5]),
  .dspi_cs(ext[6]),
  ////////////////////
        .i_MOD_STATE            (MOD_STATE           ),
        .i_s0_arg_AM_fc         (s0_arg_AM_fc        ),
        .i_s0_arg_AM_Depth      (s0_arg_AM_Depth     ),
        .i_s1_arg_DSB_fc        (s1_arg_DSB_fc       ),
        .i_s2_arg_SSB_fc        (s2_arg_SSB_fc       ),
        .i_s2_arg_LU_MODE       (s2_arg_LU_MODE      ),
        .i_s3_arg_FM_fc         (s3_arg_FM_fc        ),
        .i_s3_arg_FM_offset     (s3_arg_FM_offset    ),
        .i_s4_arg_PM_fc         (s4_arg_PM_fc        ),
        .i_s4_arg_PM_offset     (s4_arg_PM_offset    ),
        .i_s5_arg_ASK_fc        (s5_arg_ASK_fc       ),
        .i_s5_arg_ASK_amp       (s5_arg_ASK_amp      ),
        .i_s6_arg_BFSK_fc       (s6_arg_BFSK_fc      ),
        .i_s6_arg_BFSK_range    (s6_arg_BFSK_range   ),
        .i_s7_arg_BPSK_fc       (s7_arg_BPSK_fc      ),
        .i_s7_arg_BPSK_range    (s7_arg_BPSK_range   ),
        .i_s8_arg_DPSK_fc       (s8_arg_DPSK_fc      ),
        .i_s9_arg_QPSK_fc       (s9_arg_QPSK_fc      ),
  ////////////////////
  .clk_cpu      (clk_50m),
  .pwm_out_1bit(ext[7]),
  .pdm_out_1bit(ext[8]),
        .da1_out(da1_out),
        .da2_out(da2_out),
        .da1_clk(da1_clk),
        .da2_clk(da2_clk),
        .da1_wrt(da1_wrt),
        .da2_wrt(da2_wrt),
  .ad_clk(ad_clk)
  // output [3:0] seg_s,
  // output [7:0] seg_ap
    );
endmodule

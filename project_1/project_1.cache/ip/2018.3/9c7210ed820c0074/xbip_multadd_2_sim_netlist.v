// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Nov 12 16:32:52 2024
// Host        : DESKTOP-494Q00J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xbip_multadd_2_sim_netlist.v
// Design      : xbip_multadd_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_multadd_2,xbip_multadd_v3_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_multadd_v3_0_13,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    SCLR,
    A,
    B,
    C,
    SUBTRACT,
    P,
    PCOUT);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF pcout_intf:p_intf:subtract_intf:pcin_intf:c_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [31:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 subtract_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME subtract_intf, LAYERED_METADATA undef" *) input SUBTRACT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [32:0]P;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;

  wire [15:0]A;
  wire [15:0]B;
  wire [31:0]C;
  wire CE;
  wire CLK;
  wire [32:0]P;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SUBTRACT;

  (* C_AB_LATENCY = "-1" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "-1" *) 
  (* C_C_TYPE = "1" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_OUT_HIGH = "32" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_multadd_v3_0_13 U0
       (.A(A),
        .B(B),
        .C(C),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SUBTRACT(SUBTRACT));
endmodule

(* C_AB_LATENCY = "-1" *) (* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) 
(* C_B_TYPE = "1" *) (* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_C_LATENCY = "-1" *) (* C_C_TYPE = "1" *) (* C_C_WIDTH = "32" *) 
(* C_OUT_HIGH = "32" *) (* C_OUT_LOW = "0" *) (* C_TEST_CORE = "0" *) 
(* C_USE_PCIN = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_multadd_v3_0_13
   (CLK,
    CE,
    SCLR,
    A,
    B,
    C,
    PCIN,
    SUBTRACT,
    P,
    PCOUT);
  input CLK;
  input CE;
  input SCLR;
  input [15:0]A;
  input [15:0]B;
  input [31:0]C;
  input [47:0]PCIN;
  input SUBTRACT;
  output [32:0]P;
  output [47:0]PCOUT;

  wire [15:0]A;
  wire [15:0]B;
  wire [31:0]C;
  wire CE;
  wire CLK;
  wire [32:0]P;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SUBTRACT;

  (* C_AB_LATENCY = "-1" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "-1" *) 
  (* C_C_TYPE = "1" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_OUT_HIGH = "32" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_multadd_v3_0_13_viv i_synth
       (.A(A),
        .B(B),
        .C(C),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SUBTRACT(SUBTRACT));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dPt5E4AieGCEt/K66u1/rHhPwZDIYuKJwNBuR3AyvXP3DLERa8PZqI33iFD5YJ9K/pk84GsX6gXR
MC76HtZRQg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ipv6ffnwFF7w6Ljnhr7VoRPZgB1xYGVDBO+TeyA+ahu9o3WI4B6MbZL7+nv2IMUuMck+p/96Vm2S
2AlMDXC4nTIaPKSBgF9dXv+35lhtJCWo4bWiW8wYuCs9hpcTZ5QrDse1NwpDrsU1BdGGANPzkO/m
NZcFX3LChIZ7REQB07E=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UZUgdCuw/Ac1ONRQBUfK5aNtN1l1cOReTrgn2gb4ILBz0ZwK5khLM9TWNLMXkoMo7N7PTJ8qzO1k
t50c0i5imhdgTF1vLgLjhrJyhVV36LJbQMbHnsVPNdfrxDUcaUyM4wnvK6amvgGTvU3jGiq3Vw1b
ftPQEstmyIqMvIoyTDwpS5g78tGtVvAxw/I1Du998pj+WRr6NPmYQyZPIzjYyMnEtQCmZd845S+l
jRux0/v8Nl7jeiQFBa5x1XY1pPSUVSaOqNHH5i2VyB4fQGhununoLlUTP8GCP6eExGXfePBOQxsN
5yUsIKgx40ND3sb317vZbUn/6KPB9Jp9AmevmQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
itAx4PFdHKd1pmYBAUAeYLzpD2P3lq3ovIMewnbIZEMg4IhZggNF6oYRG0yDOH3jUWBXfp0UCUlQ
TjLuruS+58ta9malWIYG1Vp2JR7IDWwT+zqneaXOYhFidduDVHGoVSS0s5LW6JITUQB1VxOfbdzG
2Nak8LjI/GUlGwcxphtXykrL89CimAoCE6rE72zVZ0ljifKC+6j9c2d2GMFMUUxIkCion2/IMeT+
LYa6L9Ccs4b2iLDyFdRni+iaXjKg4y7dD7JJ2aKy65TA1KF06xjDS2FxRC20TC1c9JRa9bgaEHWM
oRHZBvkX8S1Wc0DMZS99iNKpcOGPgtcJRLeMTg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hMRQn17JrfkggLuUDBtw0SSucCOYDsiTT49JuhzF7AXT7ldqRnzU79S6QcX2P5xPeSQD1OLrxCMl
P4qRH5kCvfUjpu3u4hQjUZWcXU3Uc8dGpFXYujAE4p5/nCUgMFdnPeqqYENSvOg+CFHRWsucjcRH
dwVo6kCKsn1+vVadQbUqYothaDoMdqKpIfERwVTbk3zbmdnBuq1keVYYsTRE7FewU5+yj0tSQoTG
hXBr3oTfE+RB1x1X5A59k+Lil/UU0AWYuGRJQD6qgv+JatF4ch12k+jUCQWDuKE6qAv2P7aHp5Ai
evj0iRNJXk7I28xo7R+4IIoLSrtcMXVN2rrkdQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oeVfoBxMjOQlLHahMvbBt9pCmBLpFy87hhFGDJKOlXQpdYbWDCKubxm3l5LJe578FTxJNOLt+DM/
Twrcb4yTwW5J1Ps58huSXu5X2oHCMw5H9jY/GNpPPjViet4YtuG23G+dS3SoW7WoOCiC5XH7F5H+
T8m6V5PyUqGIFLFRr0A=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JygHOAa03zUR1c70sqKmG58tH0oRsKYKnGmP6aNoXz1lyVhXSQACXpOn1c55aV5MmzZUVQBCWZyn
3HUdFXCgloQcywkYOpiV6acnlDrNNZjnJGQkLOmPm4ZmNPxuVGPIZZQtHoT5QUkjbdwDBDPy4jiE
CskQPt97etE7I4zl5d/nG7dX1I4SxKvdHZZChBS/+l85X40Jk3TmO6YAkGszEdNetanqnZZjv209
n8+16TD3e6CyjDT4Oe/Fd9L7vnNhJXfNzkL2tyAsZMCX4E6PjOSMH8NwNuLAasN03HaDJoiPsrvt
3MctCKl3EYFQBnT3ZCKP2+uLu/zRfBsJzwLu8Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K7GQjblllqzZz7uegEz3xPiY7PFuVrS7dbRUHXQeyEnu3jn8kojO323eSzQrdpdKL0ivl1lN1AXG
9RRcXy6w3dKCT69xxV4L4I+1C+b7nx7f/DkvXKwIX6x03xrlgcsJUUhJozQU6a0NR0eaxVGgfXs5
Kb6b7Y09KXKDKuNHgsvJEWCh7e5EQ/ian7q/NgeSQtNpfmwt3c1NPd6dPiWB4fs0EscOVElEcO3Z
N2TtHVAT+lTCm39C8Edm5MmxBkP+dulTkkICdq+Ly4FEj1Lm2aHV+4hVNlO1uWDJHEaFRDSEgB47
JkBW4IVfX0nuFChNJ8JstFoU7ltBqoe2jfnsIg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
34DEan0HY+HYIQyjFbMUredeAti30bvvFmODHzh6dHia0OwogtOwtTKn2aSPaq4iuT5Z+fWz4DDR
SPn0wdAbvlpC8MlgCZCzVSdnXl+NFga7gYdESjD/EcDLf0ZoBwndA9RRG0TjA4oJcFXG96fAwh9t
WAtw94V8sjyUPy7aL2oMCKztQHQIUnyXx1HIuAq5XR9OnV5OVSeezA4K5D5y5Ar5k6A7lvv1Mt2T
J3HpQym1qXF4Qbs/dZdT9yi2uvqCLEW935uPF/sGnCxj40sDkgWuHIkV4qdgWewppmPFiQrhqsCY
voq+lef97PFbH4AZFj2fDrOxU+Fs8xR277bvkw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9808)
`pragma protect data_block
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
bIzM+Q==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Nov 12 16:32:52 2024
// Host        : DESKTOP-494Q00J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/admin/Desktop/project_1/project_1.srcs/sources_1/ip/xbip_multadd_2/xbip_multadd_2_sim_netlist.v
// Design      : xbip_multadd_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_multadd_2,xbip_multadd_v3_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_multadd_v3_0_13,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module xbip_multadd_2
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
  xbip_multadd_2_xbip_multadd_v3_0_13 U0
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
(* ORIG_REF_NAME = "xbip_multadd_v3_0_13" *) (* downgradeipidentifiedwarnings = "yes" *) 
module xbip_multadd_2_xbip_multadd_v3_0_13
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
  xbip_multadd_2_xbip_multadd_v3_0_13_viv i_synth
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
cOELM0eNPk98aIOnEMrmzGhCiwxjUN7oo1gpeRBDVVh4xBRn4i2pOYlmbWwhbQiNsBFZKMOXX0FN
g9fBx0KhF6c+9NqnDA5J4HY6HuFJZVvtAqRnYlisN9e6DYQKHzba2BpOFX9TmbxW1e/oJ3MYhJ5A
IrA0vSi9EfUAWyiRez5uVf/0f2jGD+KToabd6Z8t0rV3CCkOiqbp3BxxanTiYf2oDtVFPVey+Ij8
qT/fnXuly7hYWeBESfSEBD8yrqGXLd9yP/dpp739a5NmrlCM5Ja/9N8dc2rJZ/MfEAnVweCEr3UW
cTSyo5pkEks+kkKIoqpcIMkVXxzFHRpCGTwKIg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oz1+QMd5PtooHpEEQvu6Lm8lvYeFBKDOfgNCKsdM1yVUk+9oUcFs+yST8K2L1eBKWDE1QPFM6+Vc
pPqU87fwm3gluZ5YxsrG5L06so9b7vstjbzEV/PgUuHy+Bnw8CRLVOBGCl52U48TaJzDc18eRun/
2e3xSuG9AUVTkI0zcxf1lVNCYLvvR54wdP5Yuc/wN9YgAMrznYmjbsS0l9DL6kY4QFWebUweVRLu
Ppp5+GS7XpHGD6Jh6ZMsZG0O9QU8bPLjd2Gn6//ulc4y2c+/vKWTNNSXZksVJFQtCcPNrCfbt+ht
4prcSOx5aEro4x1KRe9Ju3ruKaZ8Mo9d+FCklg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9808)
`pragma protect data_block
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
zxC/8Q==
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

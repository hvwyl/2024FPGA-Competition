// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Nov 12 16:32:07 2024
// Host        : DESKTOP-494Q00J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/admin/Desktop/project_1/project_1.srcs/sources_1/ip/mult_sfix16/mult_sfix16_sim_netlist.v
// Design      : mult_sfix16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_sfix16,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_sfix16
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_sfix16_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_sfix16_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [15:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_sfix16_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
g7azmhtm6FcP7uNFjuXJjN8Z6yccOPk3SSjzvKB27peFKmnPmQmov5+YTGwYqqN9LpdyiUExk8K6
vPnJqontvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MFrqn2K0Cr7TmQ5al162oDGiY83d+AkTWOgFyXPYrTNznygR/tx44RAp24ytphNK9p6shs2EFMg/
Qqz0l8DCWiVEoJ/T8vMpnAn7Y+poGVGS1qAR3qE2njrl81VcGBZJeFaWIudhfr/DLTuuf2T/dWDU
YpelM3KbfYNPPiPy8PU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FZca5XZouG+/BYoQ8qrJTmnJanku4IprIWRkO6VciHehE5WehR0wsZJhfKlqLEeY1oTPA4bXaxmY
NjYkrop4EOwW8t47/hj2kFLI1OKUAE/TAhCGg/aNSOViUbB3dUomG/y+TBuDt9L6g0Arj1vb/5Pt
IChc5ZdEfRr1lJMTpFfP+5qmEH6lePPdzgPZATPB4Zrj0P6EyiEsU1FKBuAKd9iYNGiLCxVomaz0
3/RwK2Nl+/l4mc7PJt5Hso+4s1qHb4s2wD+OgbIwdH26ZkEnKVFpaLiuWQKu9uhDLGnsBMPf7XDE
p29f+mrvP9Zi/3nonA2aBKrTwR7XuH+ZYoakxA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jP68OjlYJglq3zpmKrXOhq7Sex8XNW8fQKp4hUNmuw06OOoKhQASNTnjtyVjAIk/VXb64ViBu1ds
cNMJybDSWBhnChfJq4h9PNybShGJXxSm3NDOo5wUHKf10Eti3fSotB9rVks+tNdTEZo4O97kgfdD
G1FNOqlsYcQiShEGLLiEQ2yYtgJBxJ+jc8mFjIEfPhAYy1ElrvtFEpnhkNS2LfE7xdWOQdO/XoKK
ibeY08pgncTI3pvO6TMbXushf0AX2S7hgfk8ysZrT+0gktqFrJnyR6oljS6VVPLtRNW2vo/cC8XQ
Bzvwwt4cpSo5KLS4XxB6qClZipItck2AUEdIbQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o7jAZIoXlFbFtDYmtXhfRBlb07dhBb6Wp03mlT4T0FXtvccSHWhWZgc+VUNwt6TohLihOwvSipPP
XVXpGL4pUVYNdQBCVpFzhMkt6jhyUgsF5t10yI5Of6YEfQrDHigceoBukM3+/zJHPprrPQE6FUvC
wXSGhBCXnHJs1R+n4l0714w8/WftPQhlD9QGQp1qT2VARQXUKBRxcRjxe9TcLfs0P4xnN7uHu0R6
JTmV+MHmhGpetSZGx+B2Wa1MQofUPURqwE70IwBoUhdXH8+39DT5I6x2+wMY6RcVATnhNd2BCgPd
RzAhwfrcqRiU9aB+eNNdFR8ve9M2nGMmV2JxZg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Cl1Dz+fZIDYEIQuUd0pSg+5jknmtX/JERd+yOZ2SRaVra/4pU/eCTjEXMzhz4VFGYB6dgUxMsGBk
nL2WNdn/uaSPpi6mNF0UHQvZik4pUkYPrnRbFveVqW8i1t95SG0RW96uD19206lWrp5U1lqc4fH7
sfKHi8ZpU3MAg0DOO0E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qqp76m2aV9ue8Qai7QUavb+lhRYdu/txrnwYLzwTe0vS0S2OD1vxr8VeIT3bF/ZuXlTGm4S/UCSF
bgOPp7VqEOeGNfsSPK+VpQ+foQMENCQYccwKquBDSg/sLjpPK9uuoGLBLxjw2OwsRzplVFXiPcRN
LYK1/FmCP7RJBNgmhh/ti99a+WSl6i2YIIRGocNplQlG8FXq8ZTTHd/x2Gtdf/zGvJOy/fNsos6S
Oq9yJ0rMmbGeWbri5c04gZM08pUmXBsivgOHm2IVEZZFM4SBqrsi0xa52hs2kelc3iKJcWiTvU3X
0fJP9qNFuIjXBPPZvEYwhVtIh6DwiIC2viSscQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UuLTpjVruR920BIfGb8UaBVrroTB7PbBUhSD+jpxjomEBO6/BvLGSP92CAt3uuZSbNawSWMuNitR
o5WN70V9RLI8ge99ZRizdo4s3wyFTSwaOVd3W5Zu7wyIH54fPewA9hBKtpnTr4AuKVdeaUD/hBJw
xwNUzmw83zNT0xVMxYrPf0By0Zj2q3Mn3zFjiQ4xvm/gOWtAWh7TkIIqCev2qcF87QWualhvL2Ln
P7SHDQwsrp3OqOKqnloYjavCOMht8YLwMW79W4AN4uggkCgTeWigFB9OAhwUXYkoj7Vwi6vqXwL9
B3hj9oO9ScwvL6gCG2ZtetZh/LJD0IzEGIEmkw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WezhLJsOK8xSSWiZVdLwo/QqXEOwWdfaD0sfjR/T+U/6X5tzUSb7X7HPDJAdIM9lwho2CfyuXUxi
JRNbHijJq2sbvtLqacwVHMiV0IyBZsSnQmESyCbgHrtvIObZavVwXzXsPeDDEVyIJAJygJ2kZ8zh
5vQnNoempYfPSOeo9ItIZP+fVJ1ki+fabOfTV9W6L4xhc8m/vdXm1zTnOlf2i7qTbiw9GNdatbyq
iE0A4T8AAguK00xrdjbaXVMH2YAGFIBgJVb0soiob9X9E7w4oUeJGmRmcFPpB8sdIGuraINe3N+b
91YDVsBtoqXFG5YhaCtU9e9aNEcraMBwnIga+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7232)
`pragma protect data_block
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
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

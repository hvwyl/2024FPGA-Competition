// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Nov 12 16:32:06 2024
// Host        : DESKTOP-494Q00J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_sfix16_sim_netlist.v
// Design      : mult_sfix16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_sfix16,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14_viv i_mult
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
dUZBOFf4Z4vA45bMsknHv/QIe+8h0rQfCiiGKSYVdEFm0gzLKZ5aDIXr32yIgJaDWioQNNdxiBnp
/rzIzFgKtJcXX5spODHpnufGMFTsuCubA6Hfvt/riIXwaO+S/vAXh31jDdTgwIPJlNJGJnI1Y7z3
T5FOw/emVccM5cGndwySX/PLKvl6bIljEtlE5pHX3iu7mDGI7nm8BYYSjkkezI7R+Qs/RfL1dO1q
jduwNPHJ0DN3AUwAaXUEMF5cz3irniTqk5a0vE59XS2UYPHAQb85J00GbTSVP57tcbHBmCFc/RIy
wCw0FHSTk3O0tXR5g+VpHCQka8h0uiLe1PUgTQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kCbG3QnQ3a0ASqWS+Tdsg5/y8YLxS1n1Yo0+aISNVUbYy/TRCVDOT1cAmzEFhzgMx7vbjCuWIU+f
unpGI6s/E5k47mPbHgW/hJ43OY/w5E/tmLkxnnGDtAL6NyLtd39E+QVop3sRS0/jDwgiYXFVCviV
rCo4YSa3fKdo/8MrLUNv6lw7fzYIr7mCwLelCxWUCefsZszC54tsebMXn4dHNd4Nm0byxyxutYoE
YtJE3+h8t5mZS+ysBZi04aCTMWUEI1T7KB5D2D3WraUJ0oyP5uGyBH9U64Tx6aSrzaEr9ZNokaET
Te+UBBAY/NJoQ4GhY4hjkV4dGQoVgN84iC6/QA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
VLgo5/gfg/Xs
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

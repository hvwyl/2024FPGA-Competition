// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Nov 12 16:26:46 2024
// Host        : DESKTOP-494Q00J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/admin/Desktop/project_1/project_1.srcs/sources_1/ip/adder_sfix32/adder_sfix32_sim_netlist.v
// Design      : adder_sfix32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_sfix32,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module adder_sfix32
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [32:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [32:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "32" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000000000000000000000" *) 
  (* c_b_width = "32" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "33" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_sfix32_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "32" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000000000000000000000" *) 
(* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "33" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module adder_sfix32_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [31:0]A;
  input [31:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [32:0]S;

  wire \<const0> ;
  wire [31:0]A;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [32:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "32" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000000000000000000000" *) 
  (* c_b_width = "32" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "33" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_sfix32_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
INaBf8vh5mCmDzf2yp77pxZAxQdyEQiT/vG2dEgvrFjseUnGc6ldwH4JvdnpZSpdf/ihioPyMNjl
u6ooyzv5TA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S5XIZZtuFR/MZffuhwdnvE3H9oRWM4uXoaGZTa/Dyk62O+Wa0v41pjmZELCiR7uodZPFQfykZ6K9
2ZDMu8dB3afQRMs5lnd/53M1b9ke+MNEeZ/wzjUcsJghubnEAwzdWeW/0tlqST1WD9B/KCxYqwH5
Gj6IZTTFHAXcaVhnCT8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CM6IcdzP0PbD6yMSqylmi4JE2qpmxiNeI+prjGwJiD8e3Xsynu3PbGKJAOpOxtR1hT/3mpBcx1Rz
Fkz0QBh4wtE8fiziv1i+xi8T6cqC8ClamjrpZ//sn6dh7NvwSYik14MlwVuei4DZoZJZF63aoPUn
RXkQ13wtK+MkYKBcPVSZMFZmaCU6jMMBYclXzvRG1JqqZoa7mWFTeFZePUTXG7Wo12QaZ8GUi0AV
UIshoN25yn5e2Xr3FyuEtm5AvsZb+iLsgLeHBtKBnsVaHQphicgqwgwv6MQQF6ZNBgU/aACfibDS
3+n/mMMm8k1cj2bW6VCi7a+c8LmCf81NlJuLww==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ehl0CusS7+JNGq6HfhyaBMy68nccIdIGqixoEztEZfkCpXuUYsdqw6G9MIJdWdu0Ck2acV7K6IVg
rzb8/bNaDDVWp48kupToegTkOdwDkCejEqppido4BkJ+iEkjPniz+aJHlOlOwmauETy2hCMuuC57
oWDprzGWlsqbCjqzKrXmPYm6fNdcOa2DiOYstQaMFNbPU2ccrbLJAiYMHNDqtPNqWxKBsD67kiGf
2eOneDOmdmy7YkNsL+cx8MJc3BVUsYBrpAEsGyFMkmX8a8nYz8R/wlFQFGQAd/t5XrfxFNI58mj1
AHXbcAMhGKVq9YdKeU/vSXY/NwMqp12xJ1nUaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h/qRAwiPuqY/Zg/QWqbaYm8xWTi9SshYuPzyL0UME9ZDDF+C2CyGAugh9HzMdD0kZmT94TKmBgLR
dKP28nlE8VCCU5rvbjKxfn/wNtNKHCvZ1hns8CF7+pGuelhxGvXNmYKFw5co8+4grYFaDXeoZZR6
S5sjvhqtSVD3+qq4vYWRjT2Y/yes7L9dRsLq2D3iZ4xjgVHuIbOQLT/EUKW+9iYudT9Uy6YTwB+5
mSb0QK3YfZdGwZyXB4S3mdF9vNQHdW/rnACq3yngF+lprNkh3ooQKdGqtxtz8KSQxNZOAFE+koOw
h00o7AKpvDAp3uNguLvnNJH3rugOhh95b8Jatw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TsA04vIYHDZne2CBj5bWCBFH4MtNoFDCn/3DNEi0BwutuUf+X+lD9kAO3kl352WHjQbF79Ssm+PT
fCYpODgWdxSVbzaHFpITxCQ4HcIJhUeW5PC5tw09Tand68D6eg84qRguH+llbb5jdGJkJeTCf+Mx
pupkkLiDvNyTYWe+nqw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rx9hgQkvaJJTJJcTjGFW1DrrWiT+xanrcMvFn0Z3KRXlZvf+SE7IQgGCiP7ZDA6T5z1Zv5nzS4h5
cVi+CvwC9UMZRWmLDAjzASJ2nx1g9BjbYe2vHAUmyurIiR6LSigTeM/9TlMv+fFwJbqwuH6FJ3/z
Vl4tIMk4NrqkMn/riOG87SjhesepM6kcQOBgDGzLTG14z3qeZG8OPzxgApfyubmX4qdD1oTgGm2u
Q4mQfFxEye6Jqkn4Rzjhifs/ieNYomHlK7R2/72QJj5j0WyYBIhvO+09izz299Z54ZP2ZXaRMfDT
lU4lQNqQU14PX9Yk9p7sy2PnK4vTwwF0CFIgSQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZdiPvUwJu70r+2JUoOVh8NWBuTTCMfdhyYq2MNsqwuPWz5CNMhIiWKfuksIBFrx6zMP1wEjqE22c
r6Cu7qU6Jz1MTk1QieKLW/2HooGkwA5pHksA8ldh8AisRV4UUDXriItDQZfQSgG7szbvbuGVLSpF
A5oYiNdjfq23xPIlFvMmFCR8plg+5JzneBwe264/sfxUF2JSCTJ40/Ce1EbIN2LyXR2GDVM7ZCHj
OVQuJ68zkJ94nNHT73dLnWGeMgYd9hemi84t7ZgVOVed7LVpsO75cyjsQKcKppBfAJVdaMHP1SNy
D/Qb+EkdCV75erA5V76XL9y70+QJ+mqxn9M/ew==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Vi9yfsRytkJHjz+PEIU75PCzcparDVCHTGDFN+c1QxU3Uo1VRzrARfUVq7FNHHs2x09W7L1/Ben0
Zwpy4n7wBjoUUltjTveJ2VNN9oTpyoJdwRJw2dpZqrVPjIv7mAZ0Y1qDd27v5vXkMyjmMRof/zP8
8Sq3g2pRDBImpRFQNZEbbNRqDUsuM+qI/84HbjOpbYIoijXHtZ+RIZFTXUZdze/Z2qjPlpwfwLC2
YQxA0oZjsbRPEWy0O4K3LzgiCeM7ut0F8qnQtx/lQ5BhiKsu0P+3uguTPD0OTmNF20QQD07kJL52
VhtG2AeoSN6k5jymzJ6ilErvtSo9nHghToXHHw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 24416)
`pragma protect data_block
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
I2+2yoml4FEGba3a7X7M5h0bBe0=
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

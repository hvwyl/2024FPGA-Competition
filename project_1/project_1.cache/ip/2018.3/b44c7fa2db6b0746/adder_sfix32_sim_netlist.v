// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Nov 12 16:26:45 2024
// Host        : DESKTOP-494Q00J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adder_sfix32_sim_netlist.v
// Design      : adder_sfix32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_sfix32,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12_viv xst_addsub
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
ChfJ8dFUoypm1r2lk4UKW9tGkDzvhgNlcjyLbtqgRbt0jCcRmZovDVt5SCx9j0PiEXSAerOr+Ehu
VwQE0/dmXrusFn/C5yH563bQ+ICnIkQGHPfsf0zTAabVocQar/kBQuVvphXny/WjtLhI3T28H/O6
bfTbkGI6DfRtlsb7PNSSRn5HCVt+j4uXnU7ZlELYnjpZOl6LZf+3oQXkYg/rXDjMyTrfqFRi++GG
oDONr4uppPs4KwwgGsOZgQddvSqmlgtTznJ104+SGJkEfdQ1FztMwI/vSyGCHwhCRGde0tibDEdS
sV+R/Th6M4UOD4QjkTa2bQHY+cMtamKE/aT0gQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
snZ2g7GJU9gmwTVez6ty1ToFR60JoATD5rWPwMWPz5SAbf7IDlSLmexczCX9ZwOTSsui5UbkrgdR
WMMyS2OAhBl4D9PZMDqttZ5eWjFg4P4PPFgFpzQ558Um5VwZq9t0uh1FOVWtF4ncku4MJfTLjRHj
bkQxuEVqCBh6SzSaUs9dx4oyasL+cgPsaHTEHvWQ9+eEgFpTBBgZAfPlLv0QXG3NQHq9bJlp3IuH
PkY760FJ1rzekXwh8/yK+kMPk8OXSkx4+dWhlbOCrHzKkPD05HA3qGwYDT5lLlybtMN/Em6LmzSt
4OvyYdlRXZQbFy094GH5Iu9cld9pAW5A7LQ1qw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 24432)
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

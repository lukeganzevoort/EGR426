// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Feb 16 19:17:19 2017
// Host        : Luke-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Luke/Documents/EGR426/LA04/LA04.srcs/sources_1/ip/four_bit_count/four_bit_count_sim_netlist.v
// Design      : four_bit_count
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "four_bit_count,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module four_bit_count
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [3:0]Q;

  wire CLK;
  wire [3:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  four_bit_count_c_counter_binary_v12_0_10 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1001" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module four_bit_count_c_counter_binary_v12_0_10
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [3:0]L;
  output THRESH0;
  output [3:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [3:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  four_bit_count_c_counter_binary_v12_0_10_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
EgsHeoOxdUxsX5gIKiaj0rabVidhYZrAC1ccO7uW1WWUY+5F26NMKfuRo2RbzpHAhKg6YWmehafX
vTPGaJRKHw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z34YzyhCkqWVBd+wfHLLkUW/H60lDZ7DBcaAzQK4qK/8LgoJdsH6DZ43BtKjfZhNz/T8CrFXpTq4
lXACmrJsvh8DNPmvB7LaQhnP9Q1UWB/2BUP3fAUHMA2d2pKOqEj3XF5pbikvIPiyQENN7Kn513bC
CvwAQIx2bzxkiYX1MZc=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SSMUY5NrZw2M/7w7U4gsSjNRmWfRCxfALTKD8+8C1h91c8RWo9X4x7A5m9YG0Pa491k6Lxf7I0eD
goajxjfLKNI+buWpvfZlHEcU7678iPGqz4g94c5n80sa3TKcwpV6f+p7C93Rto4JgUHSigA3gLBN
DzpD+6xOS6P2mkrRsQs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Tbb//X7l5IJljgHR/Q0swC7OpOr9LwQv6rxLgPXOMJNm5TebIkTTeQKZBlg96/x0gqqgFX19ZASr
qWxh3YL/aoYejZTUMHYF7ktggRgHydykFFfRo8xGrq33bJ1LOeuIQOZyZjZTB9zCoo8CMX8wCtcA
0ovBA4GCY5VFNLy/1whSrZs8R7CLSdrlxUJTTCXjF0f+Tf8OyjSS2VGyZfJbmSNnFJJuItoBbUO0
6qdcZfL3eQrA6y/AWPiFhGILWhBAvVGEahvuOHYDa8S1IUccHMOxQJtq0Y1UqRNB/qNmlHUKL/iH
IEr89vPUXnsfHTV4I+xFieSKz2LwzLXsAys4Yw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kfJNFYIhzZvlPwb4KI2aCH6Fx40tZkxF1Q5EfJSPdq2JohdV53Dn2x9HbgUIqvISu5UuFwT8R+oV
/B66+AOKivg+iSCvhh+HSv/oQNtgHeIG5xMgV8d3jXD9G4abV/g3jySuWrjXT9Z0IqvTQjqmKOR2
9nVDANRSJiSyM0Y275L4ylvrdjL8Yim0M/e9k+N+kNYfcQAzQYd/lfTmcdkn74/0qt030HQ2LxSy
A+NwqYXBuB4VkkCPvigd/s63XQNHxeHfRZs7q0iWos8Jgu9uI1zA6ZN4O4Cts2V9BF+SRqJdzrLy
1t5mzK/i0gmdsb8ds3y4b3AMet8PeT7w9sZc/A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MzDVqgEdc7DZdlm2cItrUQlry/9kVuVoApPpWX7zga11t+tLgAqain8Fhjl9Q1hFV6Rwv6WUUyOW
dL6uK1Pj4Tc0mqHyEMvAW2tHA/QcK0pphBofEd8Sd2oRBJ0l+XghTz/o5eIVzoxDF0h6fERIgAw6
PZK1iaI5d5osnKGqaJVhxQWf/M3XiOn9jCOGskyvtqNiiXNki/oAWPJNgm3Hb599C3ugMxNKGT5x
H76UXyZbcrmrFSkYz6XydewUEOb2eruDdZtf4QmJWyJ+WqAHgjSB7kcn3UfysW1iW59u7oxSpMgU
oLKWKFtXGSzN2+DVJ91qu7hIDmX5Q2X//JK4Cg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
NtgCmCbyD776j28eVfmDw82pmm5pBvCkh/v8xHyt3YIuJE30Adjae25ojF/vOOxS+9WihT5FasHy
1u5IugFglZx4njLtpeOTTUMt9GNPJOGvqfJDQjIrZdd0b8rU5OOC1/TScjKrlw9vlULmbGc9T1fm
BscUr4f7HCV/fYVrUm8YBYolReBmaijoMJ/UTO2C+tIUeFwsVO8bVYMSGJ/AgyYK5aY8UCYc1Rhu
i4UZr8zt5eTTXhq+Bl9Z1HBFvYWjPGQlomB7AHMjRvcHDTXFKk9gPWs9PELKHk/I9XO/2y90lZQ4
wZxmXdPckxFPL+Jq9OJIT64luStUAiAtgNhI1g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
NxtWGUCNyh6vNq3fUbLctINBvqzDCjoZP6mKpMW47ik0cVrWZTJiN/uIHXSg24ih4OuiMRYP82ur
+FB1tjhGYKqQT0nsv5FiSye9yZzptfSgZwW4mUTEe3Wj43tTTDWii0FI5WJuAY5G980JFuB/13el
ORHe/+UE61U6PjufEKn8C+dRYghrfr/+bWjye68XUj/H9RML2ERpLbokaSA2hHROnR7CSwevFngV
KgnwGiB0t1whpk72Smo3vUPjztpvE1jSrok2+ByFBmlXXzPCFSq+S2TyFlm17NrRvHVk4z3S9APs
/58uumVc8LXiFBhJov3zSK75CvURBmaAqnS7ZQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4976)
`pragma protect data_block
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
rthbOmm2QF9F8f0snn3LMBE=
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

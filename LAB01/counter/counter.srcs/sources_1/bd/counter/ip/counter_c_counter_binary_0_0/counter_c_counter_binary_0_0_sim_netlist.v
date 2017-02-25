// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Sat Jan 14 20:28:53 2017
// Host        : Luke-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Luke/Documents/EGR426/lab01/counter/counter.srcs/sources_1/bd/counter/ip/counter_c_counter_binary_0_0/counter_c_counter_binary_0_0_sim_netlist.v
// Design      : counter_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "counter_c_counter_binary_0_0,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module counter_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [1:0]Q;

  wire CLK;
  wire [1:0]Q;
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
  (* C_WIDTH = "2" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  counter_c_counter_binary_0_0_c_counter_binary_v12_0_10 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "2" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module counter_c_counter_binary_0_0_c_counter_binary_v12_0_10
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
  input [1:0]L;
  output THRESH0;
  output [1:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [1:0]Q;
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
  (* C_WIDTH = "2" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  counter_c_counter_binary_0_0_c_counter_binary_v12_0_10_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0}),
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
G6bKsUVDmWegG3Fn/LxkouPNCdJraFIfJJuu1LKqektZ/7OHM9DAuJORKEQwFqxVofORMj+fTWVw
XPDVk1IVtPJq8kWdHcSDaV5m2mVi21tIwBnE1lxaIMnUrQ7o6EhRLlFRxZKy8PK7maJs0By2xXtJ
cY5B1w/zr7axNvR/eUjy0skZJi2hI3e0VMDByYscFTecBBTFix8jrMXoerQozOKqJCt/Y297aZkJ
ARaEQxJVdGqz2tqHrp25TinZ4xtO8P4YKCtTo44suPLMlboFbWG1x+HbusBiLDugUkEoGZ3W+gHh
AnYl3/9D/52ProU0pM8CWrM39e+UBiCexrGivw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
gm/K7iN7ZaYZmo9ITTbj13l7mKI9aQA9MWijyL3OlmK0E33qjkOs/Nb3vajFLd8R4mhafRa1LIty
MiBSxFRvKO8jq02BhoKJb6jndoqcas6wmpgGB/70FPvYFBG7Jm56H/Spxa2UVI0iF93d9FRNUwJS
Q8t8GLjfHYO88zSqyf/Lq52ZSSVNX3w4i4H6pgrThrqq/DsxaBXa3EX/ebfaP5N1Qfz0A+wLOWlB
oCZTP6LxJTe+K3yOxyWJX2K15UPeuZcpEiFbc3vIYyfmCXmgasxUbpJvEA9ypXwAyrV5HUhrSH13
kIRI8Qb7iR2bi55jirQNLgr7EXCjzMtKTjh4yw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4288)
`pragma protect data_block
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
cgxTlrC04yG3etlONQ==
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

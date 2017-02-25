// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Sat Jan 14 20:28:53 2017
// Host        : Luke-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ counter_c_counter_binary_0_0_sim_netlist.v
// Design      : counter_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "counter_c_counter_binary_0_0,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
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
DWQy5J96z3gZ4j5ezPrPMZNJv/EoE6jEwIme5/4UnyqHVDPsqDjs46+mQ0VxOPcXl78EC9Hf9Xgb
GYY70lZlGAOe6iQsMNLBRU2ymZ7aNdHRrcVOAjrWFD6OR/YLotUc/h6K+nPz38TFT3DOMauAfBZ0
0hpyE3pDENpapogw5HgIutdlDdKVwHbeuqQY0fkwKcNIb8wDoO8LwLJEkDNyPjRbCdMYzm3vdJ4V
wbDHsnRZf8+oLJQBsuk4pgz7WbTzo0pj238e0RaUaT7ozvq+I/+iuuQ/Yme5gM/PxlckCJ8P56Jl
gEPpxKxvMy2VoLOquZlW95CtBEVYKaxm0K/9pg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
MpG16DZ8JOJWpXyU0g9Mp6zsUaqci6SO3MdP9jkVbEj1EEA4Lh0JFLffjeSnYFI7wnY0+0CB8dlA
tanq9Y03exJS0Xwm7kXt05ldcOJ+kIfHEDm5xNVZ+S509IZEcnxjH1tSzgdRjE+EE9kHsikHbo2h
9lbgk99RGxIr8d3vDk9JXa+mHVDexTl1ZYntUChZhMzzoYIaiY20tfo8XqknSqxKawcwib1W23/j
XziAJ/dzBRMVCkitvrDF4uXH8iVlmwENCB+GjuxxG/PLH9gnJpkBWSEUNtqaZDKwO/VovW/sI5wq
R7/udOarS5Z4QHwu/W9JlkRXxK3w2wKehK8n+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4112)
`pragma protect data_block
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
2zMw1U/2x4k=
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

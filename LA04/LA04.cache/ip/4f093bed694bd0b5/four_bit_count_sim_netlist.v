// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Feb 16 19:17:19 2017
// Host        : Luke-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ four_bit_count_sim_netlist.v
// Design      : four_bit_count
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "four_bit_count,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
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
SUkYa9VV3i8jy7UNQfx9Y/6wJ0tB4mmgQEsqTztyhyfpL/jqX4PJUoqBbACZWIeevf5QkY5Sy7pS
v7kzlYQ6Oe07YYQqA4AlDRWkR3xBvlcF1D+6GO1K8g9HnUBYn+yxNddweL/ZCTM5uDZTw/Yx2fts
F7j+74jwHLxEv80FVzb2loclUNnv7JCXkzXk5jZRqUh6pmN4CMw4S9PqDFwJfovpo2ZP6VNu2CwA
nhOl8aB7xtwzeB7IU6usvuvM4jj5GxJvoRvJf+4Y+OySP46cMSXPNwnbvjoWHt8rycL1qSyDWyjU
OX8sCz1nyusfMIM9/Vm/AryF67ocVwggEUI3Mw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
iJOtiE2+O/97xDpNAE+4yKeeiVXq9Fp3bmTeXiz7MaWzKffS4BYkLiHTjdzT8sxBxf2Ljy9/4jXy
OU0fUZRbrbRw4iDbE3gDDWNjHkp8kPGa1yITb/7SLMozH/eDkdqHeEYPA4mlxX1SuzeZOYaK+uFU
nEm2nO4eMzztRZISoq8rNzbNlKeA4hrKky+k+mMczo6jdZ5arBjEf4AVtZJ7NRZ26YbC1JLFe6Wq
20/cmmeq5Jb+mRbSPFVm8yhmkdB/XnI1lDMOlHJezjy+tTpmbsjbrVBoocVs4zSBCvS9VmpThUbS
0i2nYH64oi2Bo+ASgWCVeH9d2PFZgUt6A2DXuw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4960)
`pragma protect data_block
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
IQ==
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

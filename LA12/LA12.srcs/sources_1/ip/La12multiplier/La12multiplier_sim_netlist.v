// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Apr 06 17:45:41 2017
// Host        : Luke-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Luke/Documents/EGR426/LA12/LA12.srcs/sources_1/ip/La12multiplier/La12multiplier_sim_netlist.v
// Design      : La12multiplier
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "La12multiplier,mult_gen_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_12,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module La12multiplier
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [15:0]P;

  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  La12multiplier_mult_gen_v12_0_12 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "8" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "15" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module La12multiplier_mult_gen_v12_0_12
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [7:0]A;
  input [7:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [15:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [15:0]P;
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
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  La12multiplier_mult_gen_v12_0_12_viv i_mult
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
ptQ11ybvPhWFWTGrQo+7aGiIrH8JSyStYCUMOokDd+PPciOFrFMMChXZiWtXJpOf7mbM0kEZiv4j
8DmUfBzUqA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
h7OV9pYIwlKexYbVHsWdzIEKTz/iMtv4WoHaiiFghx8qJgOhdd3wDRYkR/B3E7hVYy2COcm5APup
qDYlt3IyeqL2N2RRoMmBVxAFJV6hCj9YEbUb0otyQAVPBaiI1FPjO5xFS/hWO1jK5vhJcsLkQea9
6DEIF8FtNNea1Mq/r2g=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
yy9Y6935bfig13W64uvBPEigKN5XmZP8d556jHobEKImEuxxAt50ZM5SYJfQ1cgV5QpGyGKq18LA
Ie4kVwsXuT7UsN6x8vh4jEf9eSPrjCkgrPb99+DcdRsMyS00rDCx+sglhqDRhi5OxUEkR5awg1YX
vN35O9p+48WxNYR2UC8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LZ+Jei6Dhl0h8Ft9kcSvaV7R4LftS48PATOUDxiNHixlA4BISf+lTaHLokYqG/GSOnLHxh8j6OxI
CW5SQEIloeTqRLfWEkpRzf9BKkCQOnwQZDJUvuYvW7WYQ6oQjERuGCZQVnkgpor3EtMfWSZ8YsAx
azYt49bgzZfdUTCKUgeEVEMKVshHGMBIhvTs9KkcKPz8JGeMDL5oeYdFzdkVYjPP4aev0U6zPMBs
JZ9E/7nvtBBV2vKhLY7U3X7iTZ1ePFeESc78t32tjGtG0yeSiNZq81Tw6u3srMRLOBkZoVVnCxhr
9QuVk5MuIbODepMZeZdBdNAQI/tre1Gq0gszrw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ngLIkvfW2Uts9POUsqaNJVpzIpWiCvRaKpZydG/SMwUuE3+JnTqAnNfvtZqO6SfqEzFsZu81jGwf
i3H8ALoDKBU2C9TYxmcx8GPDKo7Yp6Kvwm6+7rgm/u3Kwz3nqXCsy9/XYu++7beiX7e7DQVq3SpR
9U6+c/Hvxf1pFrCZZ5syxFGQMW6m7t5l1IO0A29eP4lBomyF+TQfc+IF8gSheDIJBglOjgfGNB6w
5Y8qVfUIS1UEnBiw/87uMLVmf6BpaHABhPRyfJCdqk8lnmkNqRYgn+04VHoeSBQK3RrLON/eSu0R
m8/U44v2OuxzhQtGethkZXEmkn07ZADBgPU1fA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T8B0w4NG7VzeSrv6OfcmA/Seybv/XseY7U8GEUORMIAwScQx2Z03UxA5e8Bhk/8hBThPu3c4qGXU
eoaU8I28PfmXT+H374KJfpPGeml3gk2eoTP/G4knHDpHTMJM8WdxRt8HBkMNrVGCTjNNJJiNL4x4
5MLjx5MIEs4FN84QBEtV7OaK2Db/KUAZVg9taAs96bhLMwoWhqovfFQMq44lVcgN45iFCZSvOMe9
YRTMUjxireq4/GqruP/WKQ3+VOBTyqfeHyw1WEd0W5Ihmbf/LsRlgkVDHAeb1ngltDXSSiOQpOC8
ZwXOYiOCNlJqGiE2Ffd8kQMyoibJpcoCKTzd6w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
bC+IJ0A+J8HzxpymHFoeLaVHEHYqyCI2VFfjRaWieBNx0AwmngCXpKawkpXgkQK3BqiSRx+vwr3B
ZaHjb63OxneNlMx2VaXQ70wlKnTlTlAWvpKfBn7ztrvV2r07Z4dkj3WihpbvcSWjdLxJ7KJNEXKy
QM+jxKdBxhls3sc6Rmvr2OhHF3DbvfCjeIgsV9hZSYuasPhZyCcGmMDPrkW/L6S5/PAWzDX3fm3d
2DN+G4yWsMqXGN+aaaxJYRMhqEuXcQekc1k4kxJB14q1f39dVTUbi7uOLLqvjFzZLaKTCN0NWz5M
xWTpV9lkceco5JGOvs9gRi3Lom17rU6VurqqHg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
CiIC8BJYkx3Ibe40s8b8D2ZRldsJ3i6wFAk8+Qnnj8Egfl/9VgC3jGQ23iucf+hXLK2olJ5/786u
dgRNhMZ49k9406oGJR3MKFSv66Pl4cEscT9gJKt/1SO1647nVTE/4CLVipCS0+ki0yVP0IeLo4He
X/Wi6/VBurxoVQ3lv1njomsSR3KPNft8CJbgxfPVTY/dq7I4wypDu4TjatuntmG1zx+eHPWB0j/E
nqUe0M+RyB6oYo961/+LrgTsdqCLIggB4vo1b0TCcXymRBA+iFIOO8ffJGvxs4x/uC5DWKdIZ/mi
CZBYLjmk3CO/B+v1hpDstUKzMUiHiwBr5BN/HA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7264)
`pragma protect data_block
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
z4Wu7heC1u/p0CscWdhOhNr03XcSn9cl8A==
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

// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Apr 06 17:45:40 2017
// Host        : Luke-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ La12multiplier_sim_netlist.v
// Design      : La12multiplier
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "La12multiplier,mult_gen_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_12,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_12 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_12
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_12_viv i_mult
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
gsUD4Aq1S7wvjH8dWnOFXBOk0dBsZNRHtgNjEsBWiH8IECWbQdGODX/Qph1y/U7GjhpvxKSvmzfI
2qQ2qwptxxC+Lza2lxm9Q3cpno2h6W3m17L3xQNBREPLCt2hq1eZk5wGADrJmTGDH0ELeazeVq2+
l7vPB88oyLpjCytqyv/PdfwGtcjkaVSHa3IVONFNKWZRHi7ooAj/5vz6Rlx/DlEqTh3KDE4Nr2QL
eVa0Mprn6qufbbEf28AH0i9SrkJwM+B4+I4NdYVME1etGZbj4wBHhX7F5y9gp41uLrYlJinaA+ld
Y+z3oIXcAo/S3KMj9v4/AFA2n+9ZsJn+vwU6uQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
IgmYW9C3oHQVuMpw+pJNk22+i2nnNPdtq+Wiv451x54lwOv+iU6c7qoHTg9UzasNZzcNDUxl7oWn
lYu1kEJB2SHzFlfBPPzmmQcyJzD48v7qoNuTjpY6jZvj1NjcEVzjGJjn+T7VdS/B5F+IqeK92yGP
7M/kjJ9OyXI80K9oYxC1KlLmw6BZIOfWXvBWCq00Y0VLhU2UXjuUwqwSakpA92R1WJYAx4ad5x4d
yoZTYnYrZ8JSoHo3UsRCIF6llWwF3o6Uhis/Oudc2tCNHR8UdbZyUziBrM/8JM/CPbBr18WikY8B
fYceNYhNCNlryaRjcQgh0GLok27f9N4pDQ92fQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7264)
`pragma protect data_block
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
kFHcErY8MCxCkTX3oe8YxSWZkI421Ud8fg==
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

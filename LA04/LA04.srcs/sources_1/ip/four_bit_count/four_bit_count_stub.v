// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Feb 16 19:17:19 2017
// Host        : Luke-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Luke/Documents/EGR426/LA04/LA04.srcs/sources_1/ip/four_bit_count/four_bit_count_stub.v
// Design      : four_bit_count
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_10,Vivado 2016.3" *)
module four_bit_count(CLK, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,Q[3:0]" */;
  input CLK;
  output [3:0]Q;
endmodule

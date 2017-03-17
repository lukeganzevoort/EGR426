// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Mar 16 18:45:46 2017
// Host        : B4-Digital running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/ganzevol/Debug/Debug.srcs/sources_1/ip/ila_led/ila_led_stub.v
// Design      : ila_led
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ila,Vivado 2016.3" *)
module ila_led(clk, probe0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[7:0]" */;
  input clk;
  input [7:0]probe0;
endmodule

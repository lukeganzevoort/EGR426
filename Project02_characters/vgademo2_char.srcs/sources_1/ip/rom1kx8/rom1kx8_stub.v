// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Mar 02 20:21:53 2017
// Host        : Luke-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Luke/Documents/EGR426/Project02_characters/vgademo2_char.srcs/sources_1/ip/rom1kx8/rom1kx8_stub.v
// Design      : rom1kx8
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_4,Vivado 2016.3" *)
module rom1kx8(clka, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[10:0],douta[15:0]" */;
  input clka;
  input [10:0]addra;
  output [15:0]douta;
endmodule

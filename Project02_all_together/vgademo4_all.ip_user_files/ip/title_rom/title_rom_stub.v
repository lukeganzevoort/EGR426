// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Mar 02 09:32:04 2017
// Host        : parikhc-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               C:/chirag/GVSUcourses/Winter17/EGR426/Projects/Project2_Feb16/vgademo4_all/vgademo4_all.runs/title_rom_synth_1/title_rom_stub.v
// Design      : title_rom
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_4,Vivado 2016.3" *)
module title_rom(clka, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[6:0],douta[31:0]" */;
  input clka;
  input [6:0]addra;
  output [31:0]douta;
endmodule

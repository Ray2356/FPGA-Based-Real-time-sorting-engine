// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Dec 16 04:21:48 2023
// Host        : 3115A0203 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub d:/Project_final/Project_final.gen/sources_1/ip/ram/ram_stub.v
// Design      : ram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *)
module ram(clka, ena, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[9:0],dina[23:0],douta[23:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [9:0]addra;
  input [23:0]dina;
  output [23:0]douta;
endmodule

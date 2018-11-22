// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Nov 21 15:38:49 2018
// Host        : DESKTOP-5U412PN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/4th-year-project/FPGA_ADC_interface/FPGA_ADC_interface.srcs/sources_1/ip/ila_0/ila_0_stub.v
// Design      : ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2018.2" *)
module ila_0(clk, probe0, probe1, probe2)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[7:0],probe1[0:0],probe2[0:0]" */;
  input clk;
  input [7:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
endmodule

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Mar  6 02:22:11 2026
// Host        : ubuntu running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.gen/sources_1/bd/kv260_ispMipiRx_vcu_DP/ip/kv260_ispMipiRx_vcu_DP_clk_wiz_0_0/kv260_ispMipiRx_vcu_DP_clk_wiz_0_0_stub.v
// Design      : kv260_ispMipiRx_vcu_DP_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module kv260_ispMipiRx_vcu_DP_clk_wiz_0_0(clk_200M, clk_100M, clkv_200M, clk_50M, clk_600M, 
  resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_200M,clk_100M,clkv_200M,clk_50M,clk_600M,resetn,locked,clk_in1" */;
  output clk_200M;
  output clk_100M;
  output clkv_200M;
  output clk_50M;
  output clk_600M;
  input resetn;
  output locked;
  input clk_in1;
endmodule

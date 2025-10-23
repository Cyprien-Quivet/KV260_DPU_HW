//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Thu Oct 23 17:16:57 2025
//Host        : DESKTOP-S4UD1KI running 64-bit major release  (build 9200)
//Command     : generate_target top.bd
//Design      : top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module hier_dpu_clk_imp_P5CT15
   (CLK,
    DPU_CLK,
    DSP_CLK,
    LOCKED,
    RSTn,
    RSTn_DSP,
    RSTn_INTC,
    RSTn_PERI,
    clk_dsp_ce);
  input CLK;
  output DPU_CLK;
  output DSP_CLK;
  output LOCKED;
  input RSTn;
  output [0:0]RSTn_DSP;
  output [0:0]RSTn_INTC;
  output [0:0]RSTn_PERI;
  input clk_dsp_ce;

  wire CLK;
  wire DPU_CLK;
  wire DSP_CLK;
  wire LOCKED;
  wire RSTn;
  wire [0:0]RSTn_DSP;
  wire [0:0]RSTn_INTC;
  wire [0:0]RSTn_PERI;
  wire clk_dsp_ce;

  top_dpu_clk_wiz_0 dpu_clk_wiz
       (.clk_dpu(DPU_CLK),
        .clk_dsp(DSP_CLK),
        .clk_dsp_ce(clk_dsp_ce),
        .clk_in1(CLK),
        .locked(LOCKED),
        .resetn(RSTn));
  top_rst_gen_clk_0 rst_gen_clk
       (.aux_reset_in(1'b1),
        .dcm_locked(LOCKED),
        .ext_reset_in(RSTn),
        .interconnect_aresetn(RSTn_INTC),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(RSTn_PERI),
        .slowest_sync_clk(DPU_CLK));
  top_rst_gen_clk_dsp_0 rst_gen_clk_dsp
       (.aux_reset_in(1'b1),
        .dcm_locked(LOCKED),
        .ext_reset_in(RSTn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(RSTn_DSP),
        .slowest_sync_clk(DSP_CLK));
endmodule

module hier_dpu_ghp_imp_1DUMQPD
   (CLK,
    DPU0_M_AXI_DATA0_araddr,
    DPU0_M_AXI_DATA0_arburst,
    DPU0_M_AXI_DATA0_arcache,
    DPU0_M_AXI_DATA0_arid,
    DPU0_M_AXI_DATA0_arlen,
    DPU0_M_AXI_DATA0_arlock,
    DPU0_M_AXI_DATA0_arprot,
    DPU0_M_AXI_DATA0_arqos,
    DPU0_M_AXI_DATA0_arready,
    DPU0_M_AXI_DATA0_arsize,
    DPU0_M_AXI_DATA0_aruser,
    DPU0_M_AXI_DATA0_arvalid,
    DPU0_M_AXI_DATA0_awaddr,
    DPU0_M_AXI_DATA0_awburst,
    DPU0_M_AXI_DATA0_awcache,
    DPU0_M_AXI_DATA0_awid,
    DPU0_M_AXI_DATA0_awlen,
    DPU0_M_AXI_DATA0_awlock,
    DPU0_M_AXI_DATA0_awprot,
    DPU0_M_AXI_DATA0_awqos,
    DPU0_M_AXI_DATA0_awready,
    DPU0_M_AXI_DATA0_awsize,
    DPU0_M_AXI_DATA0_awuser,
    DPU0_M_AXI_DATA0_awvalid,
    DPU0_M_AXI_DATA0_bid,
    DPU0_M_AXI_DATA0_bready,
    DPU0_M_AXI_DATA0_bresp,
    DPU0_M_AXI_DATA0_bvalid,
    DPU0_M_AXI_DATA0_rdata,
    DPU0_M_AXI_DATA0_rid,
    DPU0_M_AXI_DATA0_rlast,
    DPU0_M_AXI_DATA0_rready,
    DPU0_M_AXI_DATA0_rresp,
    DPU0_M_AXI_DATA0_rvalid,
    DPU0_M_AXI_DATA0_wdata,
    DPU0_M_AXI_DATA0_wlast,
    DPU0_M_AXI_DATA0_wready,
    DPU0_M_AXI_DATA0_wstrb,
    DPU0_M_AXI_DATA0_wvalid,
    DPU0_M_AXI_DATA1_araddr,
    DPU0_M_AXI_DATA1_arburst,
    DPU0_M_AXI_DATA1_arcache,
    DPU0_M_AXI_DATA1_arid,
    DPU0_M_AXI_DATA1_arlen,
    DPU0_M_AXI_DATA1_arlock,
    DPU0_M_AXI_DATA1_arprot,
    DPU0_M_AXI_DATA1_arqos,
    DPU0_M_AXI_DATA1_arready,
    DPU0_M_AXI_DATA1_arsize,
    DPU0_M_AXI_DATA1_aruser,
    DPU0_M_AXI_DATA1_arvalid,
    DPU0_M_AXI_DATA1_awaddr,
    DPU0_M_AXI_DATA1_awburst,
    DPU0_M_AXI_DATA1_awcache,
    DPU0_M_AXI_DATA1_awid,
    DPU0_M_AXI_DATA1_awlen,
    DPU0_M_AXI_DATA1_awlock,
    DPU0_M_AXI_DATA1_awprot,
    DPU0_M_AXI_DATA1_awqos,
    DPU0_M_AXI_DATA1_awready,
    DPU0_M_AXI_DATA1_awsize,
    DPU0_M_AXI_DATA1_awuser,
    DPU0_M_AXI_DATA1_awvalid,
    DPU0_M_AXI_DATA1_bid,
    DPU0_M_AXI_DATA1_bready,
    DPU0_M_AXI_DATA1_bresp,
    DPU0_M_AXI_DATA1_bvalid,
    DPU0_M_AXI_DATA1_rdata,
    DPU0_M_AXI_DATA1_rid,
    DPU0_M_AXI_DATA1_rlast,
    DPU0_M_AXI_DATA1_rready,
    DPU0_M_AXI_DATA1_rresp,
    DPU0_M_AXI_DATA1_rvalid,
    DPU0_M_AXI_DATA1_wdata,
    DPU0_M_AXI_DATA1_wlast,
    DPU0_M_AXI_DATA1_wready,
    DPU0_M_AXI_DATA1_wstrb,
    DPU0_M_AXI_DATA1_wvalid,
    DPU0_M_AXI_INSTR_araddr,
    DPU0_M_AXI_INSTR_arburst,
    DPU0_M_AXI_INSTR_arcache,
    DPU0_M_AXI_INSTR_arid,
    DPU0_M_AXI_INSTR_arlen,
    DPU0_M_AXI_INSTR_arlock,
    DPU0_M_AXI_INSTR_arprot,
    DPU0_M_AXI_INSTR_arqos,
    DPU0_M_AXI_INSTR_arready,
    DPU0_M_AXI_INSTR_arsize,
    DPU0_M_AXI_INSTR_aruser,
    DPU0_M_AXI_INSTR_arvalid,
    DPU0_M_AXI_INSTR_awaddr,
    DPU0_M_AXI_INSTR_awburst,
    DPU0_M_AXI_INSTR_awcache,
    DPU0_M_AXI_INSTR_awid,
    DPU0_M_AXI_INSTR_awlen,
    DPU0_M_AXI_INSTR_awlock,
    DPU0_M_AXI_INSTR_awprot,
    DPU0_M_AXI_INSTR_awqos,
    DPU0_M_AXI_INSTR_awready,
    DPU0_M_AXI_INSTR_awsize,
    DPU0_M_AXI_INSTR_awuser,
    DPU0_M_AXI_INSTR_awvalid,
    DPU0_M_AXI_INSTR_bid,
    DPU0_M_AXI_INSTR_bready,
    DPU0_M_AXI_INSTR_bresp,
    DPU0_M_AXI_INSTR_bvalid,
    DPU0_M_AXI_INSTR_rdata,
    DPU0_M_AXI_INSTR_rid,
    DPU0_M_AXI_INSTR_rlast,
    DPU0_M_AXI_INSTR_rready,
    DPU0_M_AXI_INSTR_rresp,
    DPU0_M_AXI_INSTR_rvalid,
    DPU0_M_AXI_INSTR_wdata,
    DPU0_M_AXI_INSTR_wlast,
    DPU0_M_AXI_INSTR_wready,
    DPU0_M_AXI_INSTR_wstrb,
    DPU0_M_AXI_INSTR_wvalid,
    GHP_CLK_I,
    GHP_CLK_O,
    GHP_RSTn,
    M_AXI_HP0_FPD_araddr,
    M_AXI_HP0_FPD_arburst,
    M_AXI_HP0_FPD_arcache,
    M_AXI_HP0_FPD_arid,
    M_AXI_HP0_FPD_arlen,
    M_AXI_HP0_FPD_arlock,
    M_AXI_HP0_FPD_arprot,
    M_AXI_HP0_FPD_arqos,
    M_AXI_HP0_FPD_arready,
    M_AXI_HP0_FPD_arsize,
    M_AXI_HP0_FPD_aruser,
    M_AXI_HP0_FPD_arvalid,
    M_AXI_HP0_FPD_awaddr,
    M_AXI_HP0_FPD_awburst,
    M_AXI_HP0_FPD_awcache,
    M_AXI_HP0_FPD_awid,
    M_AXI_HP0_FPD_awlen,
    M_AXI_HP0_FPD_awlock,
    M_AXI_HP0_FPD_awprot,
    M_AXI_HP0_FPD_awqos,
    M_AXI_HP0_FPD_awready,
    M_AXI_HP0_FPD_awsize,
    M_AXI_HP0_FPD_awuser,
    M_AXI_HP0_FPD_awvalid,
    M_AXI_HP0_FPD_bid,
    M_AXI_HP0_FPD_bready,
    M_AXI_HP0_FPD_bresp,
    M_AXI_HP0_FPD_bvalid,
    M_AXI_HP0_FPD_rdata,
    M_AXI_HP0_FPD_rid,
    M_AXI_HP0_FPD_rlast,
    M_AXI_HP0_FPD_rready,
    M_AXI_HP0_FPD_rresp,
    M_AXI_HP0_FPD_rvalid,
    M_AXI_HP0_FPD_wdata,
    M_AXI_HP0_FPD_wlast,
    M_AXI_HP0_FPD_wready,
    M_AXI_HP0_FPD_wstrb,
    M_AXI_HP0_FPD_wvalid,
    M_AXI_HP1_FPD_araddr,
    M_AXI_HP1_FPD_arburst,
    M_AXI_HP1_FPD_arcache,
    M_AXI_HP1_FPD_arid,
    M_AXI_HP1_FPD_arlen,
    M_AXI_HP1_FPD_arlock,
    M_AXI_HP1_FPD_arprot,
    M_AXI_HP1_FPD_arqos,
    M_AXI_HP1_FPD_arready,
    M_AXI_HP1_FPD_arsize,
    M_AXI_HP1_FPD_aruser,
    M_AXI_HP1_FPD_arvalid,
    M_AXI_HP1_FPD_awaddr,
    M_AXI_HP1_FPD_awburst,
    M_AXI_HP1_FPD_awcache,
    M_AXI_HP1_FPD_awid,
    M_AXI_HP1_FPD_awlen,
    M_AXI_HP1_FPD_awlock,
    M_AXI_HP1_FPD_awprot,
    M_AXI_HP1_FPD_awqos,
    M_AXI_HP1_FPD_awready,
    M_AXI_HP1_FPD_awsize,
    M_AXI_HP1_FPD_awuser,
    M_AXI_HP1_FPD_awvalid,
    M_AXI_HP1_FPD_bid,
    M_AXI_HP1_FPD_bready,
    M_AXI_HP1_FPD_bresp,
    M_AXI_HP1_FPD_bvalid,
    M_AXI_HP1_FPD_rdata,
    M_AXI_HP1_FPD_rid,
    M_AXI_HP1_FPD_rlast,
    M_AXI_HP1_FPD_rready,
    M_AXI_HP1_FPD_rresp,
    M_AXI_HP1_FPD_rvalid,
    M_AXI_HP1_FPD_wdata,
    M_AXI_HP1_FPD_wlast,
    M_AXI_HP1_FPD_wready,
    M_AXI_HP1_FPD_wstrb,
    M_AXI_HP1_FPD_wvalid,
    M_AXI_LPD_araddr,
    M_AXI_LPD_arburst,
    M_AXI_LPD_arcache,
    M_AXI_LPD_arid,
    M_AXI_LPD_arlen,
    M_AXI_LPD_arlock,
    M_AXI_LPD_arprot,
    M_AXI_LPD_arqos,
    M_AXI_LPD_arready,
    M_AXI_LPD_arsize,
    M_AXI_LPD_aruser,
    M_AXI_LPD_arvalid,
    M_AXI_LPD_awaddr,
    M_AXI_LPD_awburst,
    M_AXI_LPD_awcache,
    M_AXI_LPD_awid,
    M_AXI_LPD_awlen,
    M_AXI_LPD_awlock,
    M_AXI_LPD_awprot,
    M_AXI_LPD_awqos,
    M_AXI_LPD_awready,
    M_AXI_LPD_awsize,
    M_AXI_LPD_awuser,
    M_AXI_LPD_awvalid,
    M_AXI_LPD_bid,
    M_AXI_LPD_bready,
    M_AXI_LPD_bresp,
    M_AXI_LPD_bvalid,
    M_AXI_LPD_rdata,
    M_AXI_LPD_rid,
    M_AXI_LPD_rlast,
    M_AXI_LPD_rready,
    M_AXI_LPD_rresp,
    M_AXI_LPD_rvalid,
    M_AXI_LPD_wdata,
    M_AXI_LPD_wlast,
    M_AXI_LPD_wready,
    M_AXI_LPD_wstrb,
    M_AXI_LPD_wvalid,
    RSTn_INTC,
    RSTn_PERI);
  input CLK;
  input [39:0]DPU0_M_AXI_DATA0_araddr;
  input [1:0]DPU0_M_AXI_DATA0_arburst;
  input [3:0]DPU0_M_AXI_DATA0_arcache;
  input [1:0]DPU0_M_AXI_DATA0_arid;
  input [7:0]DPU0_M_AXI_DATA0_arlen;
  input DPU0_M_AXI_DATA0_arlock;
  input [2:0]DPU0_M_AXI_DATA0_arprot;
  input [3:0]DPU0_M_AXI_DATA0_arqos;
  output DPU0_M_AXI_DATA0_arready;
  input [2:0]DPU0_M_AXI_DATA0_arsize;
  input DPU0_M_AXI_DATA0_aruser;
  input DPU0_M_AXI_DATA0_arvalid;
  input [39:0]DPU0_M_AXI_DATA0_awaddr;
  input [1:0]DPU0_M_AXI_DATA0_awburst;
  input [3:0]DPU0_M_AXI_DATA0_awcache;
  input [1:0]DPU0_M_AXI_DATA0_awid;
  input [7:0]DPU0_M_AXI_DATA0_awlen;
  input DPU0_M_AXI_DATA0_awlock;
  input [2:0]DPU0_M_AXI_DATA0_awprot;
  input [3:0]DPU0_M_AXI_DATA0_awqos;
  output DPU0_M_AXI_DATA0_awready;
  input [2:0]DPU0_M_AXI_DATA0_awsize;
  input DPU0_M_AXI_DATA0_awuser;
  input DPU0_M_AXI_DATA0_awvalid;
  output [5:0]DPU0_M_AXI_DATA0_bid;
  input DPU0_M_AXI_DATA0_bready;
  output [1:0]DPU0_M_AXI_DATA0_bresp;
  output DPU0_M_AXI_DATA0_bvalid;
  output [127:0]DPU0_M_AXI_DATA0_rdata;
  output [5:0]DPU0_M_AXI_DATA0_rid;
  output DPU0_M_AXI_DATA0_rlast;
  input DPU0_M_AXI_DATA0_rready;
  output [1:0]DPU0_M_AXI_DATA0_rresp;
  output DPU0_M_AXI_DATA0_rvalid;
  input [127:0]DPU0_M_AXI_DATA0_wdata;
  input DPU0_M_AXI_DATA0_wlast;
  output DPU0_M_AXI_DATA0_wready;
  input [15:0]DPU0_M_AXI_DATA0_wstrb;
  input DPU0_M_AXI_DATA0_wvalid;
  input [39:0]DPU0_M_AXI_DATA1_araddr;
  input [1:0]DPU0_M_AXI_DATA1_arburst;
  input [3:0]DPU0_M_AXI_DATA1_arcache;
  input [1:0]DPU0_M_AXI_DATA1_arid;
  input [7:0]DPU0_M_AXI_DATA1_arlen;
  input DPU0_M_AXI_DATA1_arlock;
  input [2:0]DPU0_M_AXI_DATA1_arprot;
  input [3:0]DPU0_M_AXI_DATA1_arqos;
  output DPU0_M_AXI_DATA1_arready;
  input [2:0]DPU0_M_AXI_DATA1_arsize;
  input DPU0_M_AXI_DATA1_aruser;
  input DPU0_M_AXI_DATA1_arvalid;
  input [39:0]DPU0_M_AXI_DATA1_awaddr;
  input [1:0]DPU0_M_AXI_DATA1_awburst;
  input [3:0]DPU0_M_AXI_DATA1_awcache;
  input [1:0]DPU0_M_AXI_DATA1_awid;
  input [7:0]DPU0_M_AXI_DATA1_awlen;
  input DPU0_M_AXI_DATA1_awlock;
  input [2:0]DPU0_M_AXI_DATA1_awprot;
  input [3:0]DPU0_M_AXI_DATA1_awqos;
  output DPU0_M_AXI_DATA1_awready;
  input [2:0]DPU0_M_AXI_DATA1_awsize;
  input DPU0_M_AXI_DATA1_awuser;
  input DPU0_M_AXI_DATA1_awvalid;
  output [5:0]DPU0_M_AXI_DATA1_bid;
  input DPU0_M_AXI_DATA1_bready;
  output [1:0]DPU0_M_AXI_DATA1_bresp;
  output DPU0_M_AXI_DATA1_bvalid;
  output [127:0]DPU0_M_AXI_DATA1_rdata;
  output [5:0]DPU0_M_AXI_DATA1_rid;
  output DPU0_M_AXI_DATA1_rlast;
  input DPU0_M_AXI_DATA1_rready;
  output [1:0]DPU0_M_AXI_DATA1_rresp;
  output DPU0_M_AXI_DATA1_rvalid;
  input [127:0]DPU0_M_AXI_DATA1_wdata;
  input DPU0_M_AXI_DATA1_wlast;
  output DPU0_M_AXI_DATA1_wready;
  input [15:0]DPU0_M_AXI_DATA1_wstrb;
  input DPU0_M_AXI_DATA1_wvalid;
  input [39:0]DPU0_M_AXI_INSTR_araddr;
  input [1:0]DPU0_M_AXI_INSTR_arburst;
  input [3:0]DPU0_M_AXI_INSTR_arcache;
  input [1:0]DPU0_M_AXI_INSTR_arid;
  input [7:0]DPU0_M_AXI_INSTR_arlen;
  input DPU0_M_AXI_INSTR_arlock;
  input [2:0]DPU0_M_AXI_INSTR_arprot;
  input [3:0]DPU0_M_AXI_INSTR_arqos;
  output DPU0_M_AXI_INSTR_arready;
  input [2:0]DPU0_M_AXI_INSTR_arsize;
  input DPU0_M_AXI_INSTR_aruser;
  input DPU0_M_AXI_INSTR_arvalid;
  input [39:0]DPU0_M_AXI_INSTR_awaddr;
  input [1:0]DPU0_M_AXI_INSTR_awburst;
  input [3:0]DPU0_M_AXI_INSTR_awcache;
  input [1:0]DPU0_M_AXI_INSTR_awid;
  input [7:0]DPU0_M_AXI_INSTR_awlen;
  input DPU0_M_AXI_INSTR_awlock;
  input [2:0]DPU0_M_AXI_INSTR_awprot;
  input [3:0]DPU0_M_AXI_INSTR_awqos;
  output DPU0_M_AXI_INSTR_awready;
  input [2:0]DPU0_M_AXI_INSTR_awsize;
  input DPU0_M_AXI_INSTR_awuser;
  input DPU0_M_AXI_INSTR_awvalid;
  output [5:0]DPU0_M_AXI_INSTR_bid;
  input DPU0_M_AXI_INSTR_bready;
  output [1:0]DPU0_M_AXI_INSTR_bresp;
  output DPU0_M_AXI_INSTR_bvalid;
  output [31:0]DPU0_M_AXI_INSTR_rdata;
  output [5:0]DPU0_M_AXI_INSTR_rid;
  output DPU0_M_AXI_INSTR_rlast;
  input DPU0_M_AXI_INSTR_rready;
  output [1:0]DPU0_M_AXI_INSTR_rresp;
  output DPU0_M_AXI_INSTR_rvalid;
  input [31:0]DPU0_M_AXI_INSTR_wdata;
  input DPU0_M_AXI_INSTR_wlast;
  output DPU0_M_AXI_INSTR_wready;
  input [3:0]DPU0_M_AXI_INSTR_wstrb;
  input DPU0_M_AXI_INSTR_wvalid;
  input GHP_CLK_I;
  output GHP_CLK_O;
  input GHP_RSTn;
  output [39:0]M_AXI_HP0_FPD_araddr;
  output [1:0]M_AXI_HP0_FPD_arburst;
  output [3:0]M_AXI_HP0_FPD_arcache;
  output [1:0]M_AXI_HP0_FPD_arid;
  output [7:0]M_AXI_HP0_FPD_arlen;
  output M_AXI_HP0_FPD_arlock;
  output [2:0]M_AXI_HP0_FPD_arprot;
  output [3:0]M_AXI_HP0_FPD_arqos;
  input M_AXI_HP0_FPD_arready;
  output [2:0]M_AXI_HP0_FPD_arsize;
  output M_AXI_HP0_FPD_aruser;
  output M_AXI_HP0_FPD_arvalid;
  output [39:0]M_AXI_HP0_FPD_awaddr;
  output [1:0]M_AXI_HP0_FPD_awburst;
  output [3:0]M_AXI_HP0_FPD_awcache;
  output [1:0]M_AXI_HP0_FPD_awid;
  output [7:0]M_AXI_HP0_FPD_awlen;
  output M_AXI_HP0_FPD_awlock;
  output [2:0]M_AXI_HP0_FPD_awprot;
  output [3:0]M_AXI_HP0_FPD_awqos;
  input M_AXI_HP0_FPD_awready;
  output [2:0]M_AXI_HP0_FPD_awsize;
  output M_AXI_HP0_FPD_awuser;
  output M_AXI_HP0_FPD_awvalid;
  input [5:0]M_AXI_HP0_FPD_bid;
  output M_AXI_HP0_FPD_bready;
  input [1:0]M_AXI_HP0_FPD_bresp;
  input M_AXI_HP0_FPD_bvalid;
  input [127:0]M_AXI_HP0_FPD_rdata;
  input [5:0]M_AXI_HP0_FPD_rid;
  input M_AXI_HP0_FPD_rlast;
  output M_AXI_HP0_FPD_rready;
  input [1:0]M_AXI_HP0_FPD_rresp;
  input M_AXI_HP0_FPD_rvalid;
  output [127:0]M_AXI_HP0_FPD_wdata;
  output M_AXI_HP0_FPD_wlast;
  input M_AXI_HP0_FPD_wready;
  output [15:0]M_AXI_HP0_FPD_wstrb;
  output M_AXI_HP0_FPD_wvalid;
  output [39:0]M_AXI_HP1_FPD_araddr;
  output [1:0]M_AXI_HP1_FPD_arburst;
  output [3:0]M_AXI_HP1_FPD_arcache;
  output [1:0]M_AXI_HP1_FPD_arid;
  output [7:0]M_AXI_HP1_FPD_arlen;
  output M_AXI_HP1_FPD_arlock;
  output [2:0]M_AXI_HP1_FPD_arprot;
  output [3:0]M_AXI_HP1_FPD_arqos;
  input M_AXI_HP1_FPD_arready;
  output [2:0]M_AXI_HP1_FPD_arsize;
  output M_AXI_HP1_FPD_aruser;
  output M_AXI_HP1_FPD_arvalid;
  output [39:0]M_AXI_HP1_FPD_awaddr;
  output [1:0]M_AXI_HP1_FPD_awburst;
  output [3:0]M_AXI_HP1_FPD_awcache;
  output [1:0]M_AXI_HP1_FPD_awid;
  output [7:0]M_AXI_HP1_FPD_awlen;
  output M_AXI_HP1_FPD_awlock;
  output [2:0]M_AXI_HP1_FPD_awprot;
  output [3:0]M_AXI_HP1_FPD_awqos;
  input M_AXI_HP1_FPD_awready;
  output [2:0]M_AXI_HP1_FPD_awsize;
  output M_AXI_HP1_FPD_awuser;
  output M_AXI_HP1_FPD_awvalid;
  input [5:0]M_AXI_HP1_FPD_bid;
  output M_AXI_HP1_FPD_bready;
  input [1:0]M_AXI_HP1_FPD_bresp;
  input M_AXI_HP1_FPD_bvalid;
  input [127:0]M_AXI_HP1_FPD_rdata;
  input [5:0]M_AXI_HP1_FPD_rid;
  input M_AXI_HP1_FPD_rlast;
  output M_AXI_HP1_FPD_rready;
  input [1:0]M_AXI_HP1_FPD_rresp;
  input M_AXI_HP1_FPD_rvalid;
  output [127:0]M_AXI_HP1_FPD_wdata;
  output M_AXI_HP1_FPD_wlast;
  input M_AXI_HP1_FPD_wready;
  output [15:0]M_AXI_HP1_FPD_wstrb;
  output M_AXI_HP1_FPD_wvalid;
  output [39:0]M_AXI_LPD_araddr;
  output [1:0]M_AXI_LPD_arburst;
  output [3:0]M_AXI_LPD_arcache;
  output [1:0]M_AXI_LPD_arid;
  output [7:0]M_AXI_LPD_arlen;
  output M_AXI_LPD_arlock;
  output [2:0]M_AXI_LPD_arprot;
  output [3:0]M_AXI_LPD_arqos;
  input M_AXI_LPD_arready;
  output [2:0]M_AXI_LPD_arsize;
  output M_AXI_LPD_aruser;
  output M_AXI_LPD_arvalid;
  output [39:0]M_AXI_LPD_awaddr;
  output [1:0]M_AXI_LPD_awburst;
  output [3:0]M_AXI_LPD_awcache;
  output [1:0]M_AXI_LPD_awid;
  output [7:0]M_AXI_LPD_awlen;
  output M_AXI_LPD_awlock;
  output [2:0]M_AXI_LPD_awprot;
  output [3:0]M_AXI_LPD_awqos;
  input M_AXI_LPD_awready;
  output [2:0]M_AXI_LPD_awsize;
  output M_AXI_LPD_awuser;
  output M_AXI_LPD_awvalid;
  input [5:0]M_AXI_LPD_bid;
  output M_AXI_LPD_bready;
  input [1:0]M_AXI_LPD_bresp;
  input M_AXI_LPD_bvalid;
  input [31:0]M_AXI_LPD_rdata;
  input [5:0]M_AXI_LPD_rid;
  input M_AXI_LPD_rlast;
  output M_AXI_LPD_rready;
  input [1:0]M_AXI_LPD_rresp;
  input M_AXI_LPD_rvalid;
  output [31:0]M_AXI_LPD_wdata;
  output M_AXI_LPD_wlast;
  input M_AXI_LPD_wready;
  output [3:0]M_AXI_LPD_wstrb;
  output M_AXI_LPD_wvalid;
  input RSTn_INTC;
  input RSTn_PERI;

  wire DPU0_M_AXI_DATA0_arready;
  wire DPU0_M_AXI_DATA0_awready;
  wire [5:0]DPU0_M_AXI_DATA0_bid;
  wire [1:0]DPU0_M_AXI_DATA0_bresp;
  wire DPU0_M_AXI_DATA0_bvalid;
  wire [127:0]DPU0_M_AXI_DATA0_rdata;
  wire [5:0]DPU0_M_AXI_DATA0_rid;
  wire DPU0_M_AXI_DATA0_rlast;
  wire [1:0]DPU0_M_AXI_DATA0_rresp;
  wire DPU0_M_AXI_DATA0_rvalid;
  wire DPU0_M_AXI_DATA0_wready;
  wire DPU0_M_AXI_DATA1_arready;
  wire DPU0_M_AXI_DATA1_awready;
  wire [5:0]DPU0_M_AXI_DATA1_bid;
  wire [1:0]DPU0_M_AXI_DATA1_bresp;
  wire DPU0_M_AXI_DATA1_bvalid;
  wire [127:0]DPU0_M_AXI_DATA1_rdata;
  wire [5:0]DPU0_M_AXI_DATA1_rid;
  wire DPU0_M_AXI_DATA1_rlast;
  wire [1:0]DPU0_M_AXI_DATA1_rresp;
  wire DPU0_M_AXI_DATA1_rvalid;
  wire DPU0_M_AXI_DATA1_wready;
  wire DPU0_M_AXI_INSTR_arready;
  wire DPU0_M_AXI_INSTR_awready;
  wire [5:0]DPU0_M_AXI_INSTR_bid;
  wire [1:0]DPU0_M_AXI_INSTR_bresp;
  wire DPU0_M_AXI_INSTR_bvalid;
  wire [31:0]DPU0_M_AXI_INSTR_rdata;
  wire [5:0]DPU0_M_AXI_INSTR_rid;
  wire DPU0_M_AXI_INSTR_rlast;
  wire [1:0]DPU0_M_AXI_INSTR_rresp;
  wire DPU0_M_AXI_INSTR_rvalid;
  wire DPU0_M_AXI_INSTR_wready;
  wire GHP_CLK_O;
  wire [39:0]M_AXI_HP0_FPD_araddr;
  wire [1:0]M_AXI_HP0_FPD_arburst;
  wire [3:0]M_AXI_HP0_FPD_arcache;
  wire [1:0]M_AXI_HP0_FPD_arid;
  wire [7:0]M_AXI_HP0_FPD_arlen;
  wire M_AXI_HP0_FPD_arlock;
  wire [2:0]M_AXI_HP0_FPD_arprot;
  wire [3:0]M_AXI_HP0_FPD_arqos;
  wire [2:0]M_AXI_HP0_FPD_arsize;
  wire M_AXI_HP0_FPD_aruser;
  wire M_AXI_HP0_FPD_arvalid;
  wire [39:0]M_AXI_HP0_FPD_awaddr;
  wire [1:0]M_AXI_HP0_FPD_awburst;
  wire [3:0]M_AXI_HP0_FPD_awcache;
  wire [1:0]M_AXI_HP0_FPD_awid;
  wire [7:0]M_AXI_HP0_FPD_awlen;
  wire M_AXI_HP0_FPD_awlock;
  wire [2:0]M_AXI_HP0_FPD_awprot;
  wire [3:0]M_AXI_HP0_FPD_awqos;
  wire [2:0]M_AXI_HP0_FPD_awsize;
  wire M_AXI_HP0_FPD_awuser;
  wire M_AXI_HP0_FPD_awvalid;
  wire M_AXI_HP0_FPD_bready;
  wire M_AXI_HP0_FPD_rready;
  wire [127:0]M_AXI_HP0_FPD_wdata;
  wire M_AXI_HP0_FPD_wlast;
  wire [15:0]M_AXI_HP0_FPD_wstrb;
  wire M_AXI_HP0_FPD_wvalid;
  wire [39:0]M_AXI_HP1_FPD_araddr;
  wire [1:0]M_AXI_HP1_FPD_arburst;
  wire [3:0]M_AXI_HP1_FPD_arcache;
  wire [1:0]M_AXI_HP1_FPD_arid;
  wire [7:0]M_AXI_HP1_FPD_arlen;
  wire M_AXI_HP1_FPD_arlock;
  wire [2:0]M_AXI_HP1_FPD_arprot;
  wire [3:0]M_AXI_HP1_FPD_arqos;
  wire [2:0]M_AXI_HP1_FPD_arsize;
  wire M_AXI_HP1_FPD_aruser;
  wire M_AXI_HP1_FPD_arvalid;
  wire [39:0]M_AXI_HP1_FPD_awaddr;
  wire [1:0]M_AXI_HP1_FPD_awburst;
  wire [3:0]M_AXI_HP1_FPD_awcache;
  wire [1:0]M_AXI_HP1_FPD_awid;
  wire [7:0]M_AXI_HP1_FPD_awlen;
  wire M_AXI_HP1_FPD_awlock;
  wire [2:0]M_AXI_HP1_FPD_awprot;
  wire [3:0]M_AXI_HP1_FPD_awqos;
  wire [2:0]M_AXI_HP1_FPD_awsize;
  wire M_AXI_HP1_FPD_awuser;
  wire M_AXI_HP1_FPD_awvalid;
  wire M_AXI_HP1_FPD_bready;
  wire M_AXI_HP1_FPD_rready;
  wire [127:0]M_AXI_HP1_FPD_wdata;
  wire M_AXI_HP1_FPD_wlast;
  wire [15:0]M_AXI_HP1_FPD_wstrb;
  wire M_AXI_HP1_FPD_wvalid;
  wire [39:0]M_AXI_LPD_araddr;
  wire [1:0]M_AXI_LPD_arburst;
  wire [3:0]M_AXI_LPD_arcache;
  wire [1:0]M_AXI_LPD_arid;
  wire [7:0]M_AXI_LPD_arlen;
  wire M_AXI_LPD_arlock;
  wire [2:0]M_AXI_LPD_arprot;
  wire [3:0]M_AXI_LPD_arqos;
  wire [2:0]M_AXI_LPD_arsize;
  wire M_AXI_LPD_aruser;
  wire M_AXI_LPD_arvalid;
  wire [39:0]M_AXI_LPD_awaddr;
  wire [1:0]M_AXI_LPD_awburst;
  wire [3:0]M_AXI_LPD_awcache;
  wire [1:0]M_AXI_LPD_awid;
  wire [7:0]M_AXI_LPD_awlen;
  wire M_AXI_LPD_awlock;
  wire [2:0]M_AXI_LPD_awprot;
  wire [3:0]M_AXI_LPD_awqos;
  wire [2:0]M_AXI_LPD_awsize;
  wire M_AXI_LPD_awuser;
  wire M_AXI_LPD_awvalid;
  wire M_AXI_LPD_bready;
  wire M_AXI_LPD_rready;
  wire [31:0]M_AXI_LPD_wdata;
  wire M_AXI_LPD_wlast;
  wire [3:0]M_AXI_LPD_wstrb;
  wire M_AXI_LPD_wvalid;

  assign DPU0_M_AXI_DATA0_arready = M_AXI_HP0_FPD_arready;
  assign DPU0_M_AXI_DATA0_awready = M_AXI_HP0_FPD_awready;
  assign DPU0_M_AXI_DATA0_bid = M_AXI_HP0_FPD_bid[5:0];
  assign DPU0_M_AXI_DATA0_bresp = M_AXI_HP0_FPD_bresp[1:0];
  assign DPU0_M_AXI_DATA0_bvalid = M_AXI_HP0_FPD_bvalid;
  assign DPU0_M_AXI_DATA0_rdata = M_AXI_HP0_FPD_rdata[127:0];
  assign DPU0_M_AXI_DATA0_rid = M_AXI_HP0_FPD_rid[5:0];
  assign DPU0_M_AXI_DATA0_rlast = M_AXI_HP0_FPD_rlast;
  assign DPU0_M_AXI_DATA0_rresp = M_AXI_HP0_FPD_rresp[1:0];
  assign DPU0_M_AXI_DATA0_rvalid = M_AXI_HP0_FPD_rvalid;
  assign DPU0_M_AXI_DATA0_wready = M_AXI_HP0_FPD_wready;
  assign DPU0_M_AXI_DATA1_arready = M_AXI_HP1_FPD_arready;
  assign DPU0_M_AXI_DATA1_awready = M_AXI_HP1_FPD_awready;
  assign DPU0_M_AXI_DATA1_bid = M_AXI_HP1_FPD_bid[5:0];
  assign DPU0_M_AXI_DATA1_bresp = M_AXI_HP1_FPD_bresp[1:0];
  assign DPU0_M_AXI_DATA1_bvalid = M_AXI_HP1_FPD_bvalid;
  assign DPU0_M_AXI_DATA1_rdata = M_AXI_HP1_FPD_rdata[127:0];
  assign DPU0_M_AXI_DATA1_rid = M_AXI_HP1_FPD_rid[5:0];
  assign DPU0_M_AXI_DATA1_rlast = M_AXI_HP1_FPD_rlast;
  assign DPU0_M_AXI_DATA1_rresp = M_AXI_HP1_FPD_rresp[1:0];
  assign DPU0_M_AXI_DATA1_rvalid = M_AXI_HP1_FPD_rvalid;
  assign DPU0_M_AXI_DATA1_wready = M_AXI_HP1_FPD_wready;
  assign DPU0_M_AXI_INSTR_arready = M_AXI_LPD_arready;
  assign DPU0_M_AXI_INSTR_awready = M_AXI_LPD_awready;
  assign DPU0_M_AXI_INSTR_bid = M_AXI_LPD_bid[5:0];
  assign DPU0_M_AXI_INSTR_bresp = M_AXI_LPD_bresp[1:0];
  assign DPU0_M_AXI_INSTR_bvalid = M_AXI_LPD_bvalid;
  assign DPU0_M_AXI_INSTR_rdata = M_AXI_LPD_rdata[31:0];
  assign DPU0_M_AXI_INSTR_rid = M_AXI_LPD_rid[5:0];
  assign DPU0_M_AXI_INSTR_rlast = M_AXI_LPD_rlast;
  assign DPU0_M_AXI_INSTR_rresp = M_AXI_LPD_rresp[1:0];
  assign DPU0_M_AXI_INSTR_rvalid = M_AXI_LPD_rvalid;
  assign DPU0_M_AXI_INSTR_wready = M_AXI_LPD_wready;
  assign GHP_CLK_O = GHP_CLK_I;
  assign M_AXI_HP0_FPD_araddr = DPU0_M_AXI_DATA0_araddr[39:0];
  assign M_AXI_HP0_FPD_arburst = DPU0_M_AXI_DATA0_arburst[1:0];
  assign M_AXI_HP0_FPD_arcache = DPU0_M_AXI_DATA0_arcache[3:0];
  assign M_AXI_HP0_FPD_arid = DPU0_M_AXI_DATA0_arid[1:0];
  assign M_AXI_HP0_FPD_arlen = DPU0_M_AXI_DATA0_arlen[7:0];
  assign M_AXI_HP0_FPD_arlock = DPU0_M_AXI_DATA0_arlock;
  assign M_AXI_HP0_FPD_arprot = DPU0_M_AXI_DATA0_arprot[2:0];
  assign M_AXI_HP0_FPD_arqos = DPU0_M_AXI_DATA0_arqos[3:0];
  assign M_AXI_HP0_FPD_arsize = DPU0_M_AXI_DATA0_arsize[2:0];
  assign M_AXI_HP0_FPD_aruser = DPU0_M_AXI_DATA0_aruser;
  assign M_AXI_HP0_FPD_arvalid = DPU0_M_AXI_DATA0_arvalid;
  assign M_AXI_HP0_FPD_awaddr = DPU0_M_AXI_DATA0_awaddr[39:0];
  assign M_AXI_HP0_FPD_awburst = DPU0_M_AXI_DATA0_awburst[1:0];
  assign M_AXI_HP0_FPD_awcache = DPU0_M_AXI_DATA0_awcache[3:0];
  assign M_AXI_HP0_FPD_awid = DPU0_M_AXI_DATA0_awid[1:0];
  assign M_AXI_HP0_FPD_awlen = DPU0_M_AXI_DATA0_awlen[7:0];
  assign M_AXI_HP0_FPD_awlock = DPU0_M_AXI_DATA0_awlock;
  assign M_AXI_HP0_FPD_awprot = DPU0_M_AXI_DATA0_awprot[2:0];
  assign M_AXI_HP0_FPD_awqos = DPU0_M_AXI_DATA0_awqos[3:0];
  assign M_AXI_HP0_FPD_awsize = DPU0_M_AXI_DATA0_awsize[2:0];
  assign M_AXI_HP0_FPD_awuser = DPU0_M_AXI_DATA0_awuser;
  assign M_AXI_HP0_FPD_awvalid = DPU0_M_AXI_DATA0_awvalid;
  assign M_AXI_HP0_FPD_bready = DPU0_M_AXI_DATA0_bready;
  assign M_AXI_HP0_FPD_rready = DPU0_M_AXI_DATA0_rready;
  assign M_AXI_HP0_FPD_wdata = DPU0_M_AXI_DATA0_wdata[127:0];
  assign M_AXI_HP0_FPD_wlast = DPU0_M_AXI_DATA0_wlast;
  assign M_AXI_HP0_FPD_wstrb = DPU0_M_AXI_DATA0_wstrb[15:0];
  assign M_AXI_HP0_FPD_wvalid = DPU0_M_AXI_DATA0_wvalid;
  assign M_AXI_HP1_FPD_araddr = DPU0_M_AXI_DATA1_araddr[39:0];
  assign M_AXI_HP1_FPD_arburst = DPU0_M_AXI_DATA1_arburst[1:0];
  assign M_AXI_HP1_FPD_arcache = DPU0_M_AXI_DATA1_arcache[3:0];
  assign M_AXI_HP1_FPD_arid = DPU0_M_AXI_DATA1_arid[1:0];
  assign M_AXI_HP1_FPD_arlen = DPU0_M_AXI_DATA1_arlen[7:0];
  assign M_AXI_HP1_FPD_arlock = DPU0_M_AXI_DATA1_arlock;
  assign M_AXI_HP1_FPD_arprot = DPU0_M_AXI_DATA1_arprot[2:0];
  assign M_AXI_HP1_FPD_arqos = DPU0_M_AXI_DATA1_arqos[3:0];
  assign M_AXI_HP1_FPD_arsize = DPU0_M_AXI_DATA1_arsize[2:0];
  assign M_AXI_HP1_FPD_aruser = DPU0_M_AXI_DATA1_aruser;
  assign M_AXI_HP1_FPD_arvalid = DPU0_M_AXI_DATA1_arvalid;
  assign M_AXI_HP1_FPD_awaddr = DPU0_M_AXI_DATA1_awaddr[39:0];
  assign M_AXI_HP1_FPD_awburst = DPU0_M_AXI_DATA1_awburst[1:0];
  assign M_AXI_HP1_FPD_awcache = DPU0_M_AXI_DATA1_awcache[3:0];
  assign M_AXI_HP1_FPD_awid = DPU0_M_AXI_DATA1_awid[1:0];
  assign M_AXI_HP1_FPD_awlen = DPU0_M_AXI_DATA1_awlen[7:0];
  assign M_AXI_HP1_FPD_awlock = DPU0_M_AXI_DATA1_awlock;
  assign M_AXI_HP1_FPD_awprot = DPU0_M_AXI_DATA1_awprot[2:0];
  assign M_AXI_HP1_FPD_awqos = DPU0_M_AXI_DATA1_awqos[3:0];
  assign M_AXI_HP1_FPD_awsize = DPU0_M_AXI_DATA1_awsize[2:0];
  assign M_AXI_HP1_FPD_awuser = DPU0_M_AXI_DATA1_awuser;
  assign M_AXI_HP1_FPD_awvalid = DPU0_M_AXI_DATA1_awvalid;
  assign M_AXI_HP1_FPD_bready = DPU0_M_AXI_DATA1_bready;
  assign M_AXI_HP1_FPD_rready = DPU0_M_AXI_DATA1_rready;
  assign M_AXI_HP1_FPD_wdata = DPU0_M_AXI_DATA1_wdata[127:0];
  assign M_AXI_HP1_FPD_wlast = DPU0_M_AXI_DATA1_wlast;
  assign M_AXI_HP1_FPD_wstrb = DPU0_M_AXI_DATA1_wstrb[15:0];
  assign M_AXI_HP1_FPD_wvalid = DPU0_M_AXI_DATA1_wvalid;
  assign M_AXI_LPD_araddr = DPU0_M_AXI_INSTR_araddr[39:0];
  assign M_AXI_LPD_arburst = DPU0_M_AXI_INSTR_arburst[1:0];
  assign M_AXI_LPD_arcache = DPU0_M_AXI_INSTR_arcache[3:0];
  assign M_AXI_LPD_arid = DPU0_M_AXI_INSTR_arid[1:0];
  assign M_AXI_LPD_arlen = DPU0_M_AXI_INSTR_arlen[7:0];
  assign M_AXI_LPD_arlock = DPU0_M_AXI_INSTR_arlock;
  assign M_AXI_LPD_arprot = DPU0_M_AXI_INSTR_arprot[2:0];
  assign M_AXI_LPD_arqos = DPU0_M_AXI_INSTR_arqos[3:0];
  assign M_AXI_LPD_arsize = DPU0_M_AXI_INSTR_arsize[2:0];
  assign M_AXI_LPD_aruser = DPU0_M_AXI_INSTR_aruser;
  assign M_AXI_LPD_arvalid = DPU0_M_AXI_INSTR_arvalid;
  assign M_AXI_LPD_awaddr = DPU0_M_AXI_INSTR_awaddr[39:0];
  assign M_AXI_LPD_awburst = DPU0_M_AXI_INSTR_awburst[1:0];
  assign M_AXI_LPD_awcache = DPU0_M_AXI_INSTR_awcache[3:0];
  assign M_AXI_LPD_awid = DPU0_M_AXI_INSTR_awid[1:0];
  assign M_AXI_LPD_awlen = DPU0_M_AXI_INSTR_awlen[7:0];
  assign M_AXI_LPD_awlock = DPU0_M_AXI_INSTR_awlock;
  assign M_AXI_LPD_awprot = DPU0_M_AXI_INSTR_awprot[2:0];
  assign M_AXI_LPD_awqos = DPU0_M_AXI_INSTR_awqos[3:0];
  assign M_AXI_LPD_awsize = DPU0_M_AXI_INSTR_awsize[2:0];
  assign M_AXI_LPD_awuser = DPU0_M_AXI_INSTR_awuser;
  assign M_AXI_LPD_awvalid = DPU0_M_AXI_INSTR_awvalid;
  assign M_AXI_LPD_bready = DPU0_M_AXI_INSTR_bready;
  assign M_AXI_LPD_rready = DPU0_M_AXI_INSTR_rready;
  assign M_AXI_LPD_wdata = DPU0_M_AXI_INSTR_wdata[31:0];
  assign M_AXI_LPD_wlast = DPU0_M_AXI_INSTR_wlast;
  assign M_AXI_LPD_wstrb = DPU0_M_AXI_INSTR_wstrb[3:0];
  assign M_AXI_LPD_wvalid = DPU0_M_AXI_INSTR_wvalid;
endmodule

module hier_dpu_imp_CAA3KC
   (CLK,
    GHP_CLK_O,
    INTR,
    M_AXI_HP0_FPD_araddr,
    M_AXI_HP0_FPD_arburst,
    M_AXI_HP0_FPD_arcache,
    M_AXI_HP0_FPD_arid,
    M_AXI_HP0_FPD_arlen,
    M_AXI_HP0_FPD_arlock,
    M_AXI_HP0_FPD_arprot,
    M_AXI_HP0_FPD_arqos,
    M_AXI_HP0_FPD_arready,
    M_AXI_HP0_FPD_arsize,
    M_AXI_HP0_FPD_aruser,
    M_AXI_HP0_FPD_arvalid,
    M_AXI_HP0_FPD_awaddr,
    M_AXI_HP0_FPD_awburst,
    M_AXI_HP0_FPD_awcache,
    M_AXI_HP0_FPD_awid,
    M_AXI_HP0_FPD_awlen,
    M_AXI_HP0_FPD_awlock,
    M_AXI_HP0_FPD_awprot,
    M_AXI_HP0_FPD_awqos,
    M_AXI_HP0_FPD_awready,
    M_AXI_HP0_FPD_awsize,
    M_AXI_HP0_FPD_awuser,
    M_AXI_HP0_FPD_awvalid,
    M_AXI_HP0_FPD_bid,
    M_AXI_HP0_FPD_bready,
    M_AXI_HP0_FPD_bresp,
    M_AXI_HP0_FPD_bvalid,
    M_AXI_HP0_FPD_rdata,
    M_AXI_HP0_FPD_rid,
    M_AXI_HP0_FPD_rlast,
    M_AXI_HP0_FPD_rready,
    M_AXI_HP0_FPD_rresp,
    M_AXI_HP0_FPD_rvalid,
    M_AXI_HP0_FPD_wdata,
    M_AXI_HP0_FPD_wlast,
    M_AXI_HP0_FPD_wready,
    M_AXI_HP0_FPD_wstrb,
    M_AXI_HP0_FPD_wvalid,
    M_AXI_HP1_FPD_araddr,
    M_AXI_HP1_FPD_arburst,
    M_AXI_HP1_FPD_arcache,
    M_AXI_HP1_FPD_arid,
    M_AXI_HP1_FPD_arlen,
    M_AXI_HP1_FPD_arlock,
    M_AXI_HP1_FPD_arprot,
    M_AXI_HP1_FPD_arqos,
    M_AXI_HP1_FPD_arready,
    M_AXI_HP1_FPD_arsize,
    M_AXI_HP1_FPD_aruser,
    M_AXI_HP1_FPD_arvalid,
    M_AXI_HP1_FPD_awaddr,
    M_AXI_HP1_FPD_awburst,
    M_AXI_HP1_FPD_awcache,
    M_AXI_HP1_FPD_awid,
    M_AXI_HP1_FPD_awlen,
    M_AXI_HP1_FPD_awlock,
    M_AXI_HP1_FPD_awprot,
    M_AXI_HP1_FPD_awqos,
    M_AXI_HP1_FPD_awready,
    M_AXI_HP1_FPD_awsize,
    M_AXI_HP1_FPD_awuser,
    M_AXI_HP1_FPD_awvalid,
    M_AXI_HP1_FPD_bid,
    M_AXI_HP1_FPD_bready,
    M_AXI_HP1_FPD_bresp,
    M_AXI_HP1_FPD_bvalid,
    M_AXI_HP1_FPD_rdata,
    M_AXI_HP1_FPD_rid,
    M_AXI_HP1_FPD_rlast,
    M_AXI_HP1_FPD_rready,
    M_AXI_HP1_FPD_rresp,
    M_AXI_HP1_FPD_rvalid,
    M_AXI_HP1_FPD_wdata,
    M_AXI_HP1_FPD_wlast,
    M_AXI_HP1_FPD_wready,
    M_AXI_HP1_FPD_wstrb,
    M_AXI_HP1_FPD_wvalid,
    M_AXI_LPD_araddr,
    M_AXI_LPD_arburst,
    M_AXI_LPD_arcache,
    M_AXI_LPD_arid,
    M_AXI_LPD_arlen,
    M_AXI_LPD_arlock,
    M_AXI_LPD_arprot,
    M_AXI_LPD_arqos,
    M_AXI_LPD_arready,
    M_AXI_LPD_arsize,
    M_AXI_LPD_aruser,
    M_AXI_LPD_arvalid,
    M_AXI_LPD_awaddr,
    M_AXI_LPD_awburst,
    M_AXI_LPD_awcache,
    M_AXI_LPD_awid,
    M_AXI_LPD_awlen,
    M_AXI_LPD_awlock,
    M_AXI_LPD_awprot,
    M_AXI_LPD_awqos,
    M_AXI_LPD_awready,
    M_AXI_LPD_awsize,
    M_AXI_LPD_awuser,
    M_AXI_LPD_awvalid,
    M_AXI_LPD_bid,
    M_AXI_LPD_bready,
    M_AXI_LPD_bresp,
    M_AXI_LPD_bvalid,
    M_AXI_LPD_rdata,
    M_AXI_LPD_rid,
    M_AXI_LPD_rlast,
    M_AXI_LPD_rready,
    M_AXI_LPD_rresp,
    M_AXI_LPD_rvalid,
    M_AXI_LPD_wdata,
    M_AXI_LPD_wlast,
    M_AXI_LPD_wready,
    M_AXI_LPD_wstrb,
    M_AXI_LPD_wvalid,
    RSTn,
    S_AXI_CLK,
    S_AXI_RSTn,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input CLK;
  output GHP_CLK_O;
  output [0:0]INTR;
  output [39:0]M_AXI_HP0_FPD_araddr;
  output [1:0]M_AXI_HP0_FPD_arburst;
  output [3:0]M_AXI_HP0_FPD_arcache;
  output [1:0]M_AXI_HP0_FPD_arid;
  output [7:0]M_AXI_HP0_FPD_arlen;
  output M_AXI_HP0_FPD_arlock;
  output [2:0]M_AXI_HP0_FPD_arprot;
  output [3:0]M_AXI_HP0_FPD_arqos;
  input M_AXI_HP0_FPD_arready;
  output [2:0]M_AXI_HP0_FPD_arsize;
  output M_AXI_HP0_FPD_aruser;
  output M_AXI_HP0_FPD_arvalid;
  output [39:0]M_AXI_HP0_FPD_awaddr;
  output [1:0]M_AXI_HP0_FPD_awburst;
  output [3:0]M_AXI_HP0_FPD_awcache;
  output [1:0]M_AXI_HP0_FPD_awid;
  output [7:0]M_AXI_HP0_FPD_awlen;
  output M_AXI_HP0_FPD_awlock;
  output [2:0]M_AXI_HP0_FPD_awprot;
  output [3:0]M_AXI_HP0_FPD_awqos;
  input M_AXI_HP0_FPD_awready;
  output [2:0]M_AXI_HP0_FPD_awsize;
  output M_AXI_HP0_FPD_awuser;
  output M_AXI_HP0_FPD_awvalid;
  input [5:0]M_AXI_HP0_FPD_bid;
  output M_AXI_HP0_FPD_bready;
  input [1:0]M_AXI_HP0_FPD_bresp;
  input M_AXI_HP0_FPD_bvalid;
  input [127:0]M_AXI_HP0_FPD_rdata;
  input [5:0]M_AXI_HP0_FPD_rid;
  input M_AXI_HP0_FPD_rlast;
  output M_AXI_HP0_FPD_rready;
  input [1:0]M_AXI_HP0_FPD_rresp;
  input M_AXI_HP0_FPD_rvalid;
  output [127:0]M_AXI_HP0_FPD_wdata;
  output M_AXI_HP0_FPD_wlast;
  input M_AXI_HP0_FPD_wready;
  output [15:0]M_AXI_HP0_FPD_wstrb;
  output M_AXI_HP0_FPD_wvalid;
  output [39:0]M_AXI_HP1_FPD_araddr;
  output [1:0]M_AXI_HP1_FPD_arburst;
  output [3:0]M_AXI_HP1_FPD_arcache;
  output [1:0]M_AXI_HP1_FPD_arid;
  output [7:0]M_AXI_HP1_FPD_arlen;
  output M_AXI_HP1_FPD_arlock;
  output [2:0]M_AXI_HP1_FPD_arprot;
  output [3:0]M_AXI_HP1_FPD_arqos;
  input M_AXI_HP1_FPD_arready;
  output [2:0]M_AXI_HP1_FPD_arsize;
  output M_AXI_HP1_FPD_aruser;
  output M_AXI_HP1_FPD_arvalid;
  output [39:0]M_AXI_HP1_FPD_awaddr;
  output [1:0]M_AXI_HP1_FPD_awburst;
  output [3:0]M_AXI_HP1_FPD_awcache;
  output [1:0]M_AXI_HP1_FPD_awid;
  output [7:0]M_AXI_HP1_FPD_awlen;
  output M_AXI_HP1_FPD_awlock;
  output [2:0]M_AXI_HP1_FPD_awprot;
  output [3:0]M_AXI_HP1_FPD_awqos;
  input M_AXI_HP1_FPD_awready;
  output [2:0]M_AXI_HP1_FPD_awsize;
  output M_AXI_HP1_FPD_awuser;
  output M_AXI_HP1_FPD_awvalid;
  input [5:0]M_AXI_HP1_FPD_bid;
  output M_AXI_HP1_FPD_bready;
  input [1:0]M_AXI_HP1_FPD_bresp;
  input M_AXI_HP1_FPD_bvalid;
  input [127:0]M_AXI_HP1_FPD_rdata;
  input [5:0]M_AXI_HP1_FPD_rid;
  input M_AXI_HP1_FPD_rlast;
  output M_AXI_HP1_FPD_rready;
  input [1:0]M_AXI_HP1_FPD_rresp;
  input M_AXI_HP1_FPD_rvalid;
  output [127:0]M_AXI_HP1_FPD_wdata;
  output M_AXI_HP1_FPD_wlast;
  input M_AXI_HP1_FPD_wready;
  output [15:0]M_AXI_HP1_FPD_wstrb;
  output M_AXI_HP1_FPD_wvalid;
  output [39:0]M_AXI_LPD_araddr;
  output [1:0]M_AXI_LPD_arburst;
  output [3:0]M_AXI_LPD_arcache;
  output [1:0]M_AXI_LPD_arid;
  output [7:0]M_AXI_LPD_arlen;
  output M_AXI_LPD_arlock;
  output [2:0]M_AXI_LPD_arprot;
  output [3:0]M_AXI_LPD_arqos;
  input M_AXI_LPD_arready;
  output [2:0]M_AXI_LPD_arsize;
  output M_AXI_LPD_aruser;
  output M_AXI_LPD_arvalid;
  output [39:0]M_AXI_LPD_awaddr;
  output [1:0]M_AXI_LPD_awburst;
  output [3:0]M_AXI_LPD_awcache;
  output [1:0]M_AXI_LPD_awid;
  output [7:0]M_AXI_LPD_awlen;
  output M_AXI_LPD_awlock;
  output [2:0]M_AXI_LPD_awprot;
  output [3:0]M_AXI_LPD_awqos;
  input M_AXI_LPD_awready;
  output [2:0]M_AXI_LPD_awsize;
  output M_AXI_LPD_awuser;
  output M_AXI_LPD_awvalid;
  input [5:0]M_AXI_LPD_bid;
  output M_AXI_LPD_bready;
  input [1:0]M_AXI_LPD_bresp;
  input M_AXI_LPD_bvalid;
  input [31:0]M_AXI_LPD_rdata;
  input [5:0]M_AXI_LPD_rid;
  input M_AXI_LPD_rlast;
  output M_AXI_LPD_rready;
  input [1:0]M_AXI_LPD_rresp;
  input M_AXI_LPD_rvalid;
  output [31:0]M_AXI_LPD_wdata;
  output M_AXI_LPD_wlast;
  input M_AXI_LPD_wready;
  output [3:0]M_AXI_LPD_wstrb;
  output M_AXI_LPD_wvalid;
  input RSTn;
  input S_AXI_CLK;
  input S_AXI_RSTn;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire CLK;
  wire [39:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARADDR;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARBURST;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARCACHE;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARID;
  wire [7:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARLEN;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARLOCK;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARPROT;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARQOS;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_ARREADY;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARSIZE;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA0_ARUSER;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_ARVALID;
  wire [39:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWADDR;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWBURST;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWCACHE;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWID;
  wire [7:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWLEN;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWLOCK;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWPROT;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWQOS;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_AWREADY;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWSIZE;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA0_AWUSER;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_AWVALID;
  wire [5:0]DPUCZDX8G_DPU0_M_AXI_DATA0_BID;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_BREADY;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_BRESP;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_BVALID;
  wire [127:0]DPUCZDX8G_DPU0_M_AXI_DATA0_RDATA;
  wire [5:0]DPUCZDX8G_DPU0_M_AXI_DATA0_RID;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_RLAST;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_RREADY;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA0_RRESP;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_RVALID;
  wire [127:0]DPUCZDX8G_DPU0_M_AXI_DATA0_WDATA;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_WLAST;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_WREADY;
  wire [15:0]DPUCZDX8G_DPU0_M_AXI_DATA0_WSTRB;
  wire DPUCZDX8G_DPU0_M_AXI_DATA0_WVALID;
  wire [39:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARADDR;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARBURST;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARCACHE;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARID;
  wire [7:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARLEN;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARLOCK;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARPROT;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARQOS;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_ARREADY;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARSIZE;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA1_ARUSER;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_ARVALID;
  wire [39:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWADDR;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWBURST;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWCACHE;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWID;
  wire [7:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWLEN;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWLOCK;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWPROT;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWQOS;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_AWREADY;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWSIZE;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_DATA1_AWUSER;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_AWVALID;
  wire [5:0]DPUCZDX8G_DPU0_M_AXI_DATA1_BID;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_BREADY;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_BRESP;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_BVALID;
  wire [127:0]DPUCZDX8G_DPU0_M_AXI_DATA1_RDATA;
  wire [5:0]DPUCZDX8G_DPU0_M_AXI_DATA1_RID;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_RLAST;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_RREADY;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_DATA1_RRESP;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_RVALID;
  wire [127:0]DPUCZDX8G_DPU0_M_AXI_DATA1_WDATA;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_WLAST;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_WREADY;
  wire [15:0]DPUCZDX8G_DPU0_M_AXI_DATA1_WSTRB;
  wire DPUCZDX8G_DPU0_M_AXI_DATA1_WVALID;
  wire [39:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARADDR;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARBURST;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARCACHE;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARID;
  wire [7:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARLEN;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARLOCK;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARPROT;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARQOS;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_ARREADY;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARSIZE;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_INSTR_ARUSER;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_ARVALID;
  wire [39:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWADDR;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWBURST;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWCACHE;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWID;
  wire [7:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWLEN;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWLOCK;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWPROT;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWQOS;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_AWREADY;
  wire [2:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWSIZE;
  wire [0:0]DPUCZDX8G_DPU0_M_AXI_INSTR_AWUSER;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_AWVALID;
  wire [5:0]DPUCZDX8G_DPU0_M_AXI_INSTR_BID;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_BREADY;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_BRESP;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_BVALID;
  wire [31:0]DPUCZDX8G_DPU0_M_AXI_INSTR_RDATA;
  wire [5:0]DPUCZDX8G_DPU0_M_AXI_INSTR_RID;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_RLAST;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_RREADY;
  wire [1:0]DPUCZDX8G_DPU0_M_AXI_INSTR_RRESP;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_RVALID;
  wire [31:0]DPUCZDX8G_DPU0_M_AXI_INSTR_WDATA;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_WLAST;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_WREADY;
  wire [3:0]DPUCZDX8G_DPU0_M_AXI_INSTR_WSTRB;
  wire DPUCZDX8G_DPU0_M_AXI_INSTR_WVALID;
  wire DPUCZDX8G_dpu0_interrupt;
  wire DPUCZDX8G_dpu_2x_clk_ce;
  wire GHP_CLK_O;
  wire [0:0]INTR;
  wire [39:0]M_AXI_HP0_FPD_araddr;
  wire [1:0]M_AXI_HP0_FPD_arburst;
  wire [3:0]M_AXI_HP0_FPD_arcache;
  wire [1:0]M_AXI_HP0_FPD_arid;
  wire [7:0]M_AXI_HP0_FPD_arlen;
  wire M_AXI_HP0_FPD_arlock;
  wire [2:0]M_AXI_HP0_FPD_arprot;
  wire [3:0]M_AXI_HP0_FPD_arqos;
  wire M_AXI_HP0_FPD_arready;
  wire [2:0]M_AXI_HP0_FPD_arsize;
  wire M_AXI_HP0_FPD_aruser;
  wire M_AXI_HP0_FPD_arvalid;
  wire [39:0]M_AXI_HP0_FPD_awaddr;
  wire [1:0]M_AXI_HP0_FPD_awburst;
  wire [3:0]M_AXI_HP0_FPD_awcache;
  wire [1:0]M_AXI_HP0_FPD_awid;
  wire [7:0]M_AXI_HP0_FPD_awlen;
  wire M_AXI_HP0_FPD_awlock;
  wire [2:0]M_AXI_HP0_FPD_awprot;
  wire [3:0]M_AXI_HP0_FPD_awqos;
  wire M_AXI_HP0_FPD_awready;
  wire [2:0]M_AXI_HP0_FPD_awsize;
  wire M_AXI_HP0_FPD_awuser;
  wire M_AXI_HP0_FPD_awvalid;
  wire [5:0]M_AXI_HP0_FPD_bid;
  wire M_AXI_HP0_FPD_bready;
  wire [1:0]M_AXI_HP0_FPD_bresp;
  wire M_AXI_HP0_FPD_bvalid;
  wire [127:0]M_AXI_HP0_FPD_rdata;
  wire [5:0]M_AXI_HP0_FPD_rid;
  wire M_AXI_HP0_FPD_rlast;
  wire M_AXI_HP0_FPD_rready;
  wire [1:0]M_AXI_HP0_FPD_rresp;
  wire M_AXI_HP0_FPD_rvalid;
  wire [127:0]M_AXI_HP0_FPD_wdata;
  wire M_AXI_HP0_FPD_wlast;
  wire M_AXI_HP0_FPD_wready;
  wire [15:0]M_AXI_HP0_FPD_wstrb;
  wire M_AXI_HP0_FPD_wvalid;
  wire [39:0]M_AXI_HP1_FPD_araddr;
  wire [1:0]M_AXI_HP1_FPD_arburst;
  wire [3:0]M_AXI_HP1_FPD_arcache;
  wire [1:0]M_AXI_HP1_FPD_arid;
  wire [7:0]M_AXI_HP1_FPD_arlen;
  wire M_AXI_HP1_FPD_arlock;
  wire [2:0]M_AXI_HP1_FPD_arprot;
  wire [3:0]M_AXI_HP1_FPD_arqos;
  wire M_AXI_HP1_FPD_arready;
  wire [2:0]M_AXI_HP1_FPD_arsize;
  wire M_AXI_HP1_FPD_aruser;
  wire M_AXI_HP1_FPD_arvalid;
  wire [39:0]M_AXI_HP1_FPD_awaddr;
  wire [1:0]M_AXI_HP1_FPD_awburst;
  wire [3:0]M_AXI_HP1_FPD_awcache;
  wire [1:0]M_AXI_HP1_FPD_awid;
  wire [7:0]M_AXI_HP1_FPD_awlen;
  wire M_AXI_HP1_FPD_awlock;
  wire [2:0]M_AXI_HP1_FPD_awprot;
  wire [3:0]M_AXI_HP1_FPD_awqos;
  wire M_AXI_HP1_FPD_awready;
  wire [2:0]M_AXI_HP1_FPD_awsize;
  wire M_AXI_HP1_FPD_awuser;
  wire M_AXI_HP1_FPD_awvalid;
  wire [5:0]M_AXI_HP1_FPD_bid;
  wire M_AXI_HP1_FPD_bready;
  wire [1:0]M_AXI_HP1_FPD_bresp;
  wire M_AXI_HP1_FPD_bvalid;
  wire [127:0]M_AXI_HP1_FPD_rdata;
  wire [5:0]M_AXI_HP1_FPD_rid;
  wire M_AXI_HP1_FPD_rlast;
  wire M_AXI_HP1_FPD_rready;
  wire [1:0]M_AXI_HP1_FPD_rresp;
  wire M_AXI_HP1_FPD_rvalid;
  wire [127:0]M_AXI_HP1_FPD_wdata;
  wire M_AXI_HP1_FPD_wlast;
  wire M_AXI_HP1_FPD_wready;
  wire [15:0]M_AXI_HP1_FPD_wstrb;
  wire M_AXI_HP1_FPD_wvalid;
  wire [39:0]M_AXI_LPD_araddr;
  wire [1:0]M_AXI_LPD_arburst;
  wire [3:0]M_AXI_LPD_arcache;
  wire [1:0]M_AXI_LPD_arid;
  wire [7:0]M_AXI_LPD_arlen;
  wire M_AXI_LPD_arlock;
  wire [2:0]M_AXI_LPD_arprot;
  wire [3:0]M_AXI_LPD_arqos;
  wire M_AXI_LPD_arready;
  wire [2:0]M_AXI_LPD_arsize;
  wire M_AXI_LPD_aruser;
  wire M_AXI_LPD_arvalid;
  wire [39:0]M_AXI_LPD_awaddr;
  wire [1:0]M_AXI_LPD_awburst;
  wire [3:0]M_AXI_LPD_awcache;
  wire [1:0]M_AXI_LPD_awid;
  wire [7:0]M_AXI_LPD_awlen;
  wire M_AXI_LPD_awlock;
  wire [2:0]M_AXI_LPD_awprot;
  wire [3:0]M_AXI_LPD_awqos;
  wire M_AXI_LPD_awready;
  wire [2:0]M_AXI_LPD_awsize;
  wire M_AXI_LPD_awuser;
  wire M_AXI_LPD_awvalid;
  wire [5:0]M_AXI_LPD_bid;
  wire M_AXI_LPD_bready;
  wire [1:0]M_AXI_LPD_bresp;
  wire M_AXI_LPD_bvalid;
  wire [31:0]M_AXI_LPD_rdata;
  wire [5:0]M_AXI_LPD_rid;
  wire M_AXI_LPD_rlast;
  wire M_AXI_LPD_rready;
  wire [1:0]M_AXI_LPD_rresp;
  wire M_AXI_LPD_rvalid;
  wire [31:0]M_AXI_LPD_wdata;
  wire M_AXI_LPD_wlast;
  wire M_AXI_LPD_wready;
  wire [3:0]M_AXI_LPD_wstrb;
  wire M_AXI_LPD_wvalid;
  wire RSTn;
  wire S_AXI_CLK;
  wire S_AXI_RSTn;
  wire [39:0]S_AXI_araddr;
  wire [1:0]S_AXI_arburst;
  wire [3:0]S_AXI_arcache;
  wire [15:0]S_AXI_arid;
  wire [7:0]S_AXI_arlen;
  wire S_AXI_arlock;
  wire [2:0]S_AXI_arprot;
  wire [3:0]S_AXI_arqos;
  wire S_AXI_arready;
  wire [2:0]S_AXI_arsize;
  wire [15:0]S_AXI_aruser;
  wire S_AXI_arvalid;
  wire [39:0]S_AXI_awaddr;
  wire [1:0]S_AXI_awburst;
  wire [3:0]S_AXI_awcache;
  wire [15:0]S_AXI_awid;
  wire [7:0]S_AXI_awlen;
  wire S_AXI_awlock;
  wire [2:0]S_AXI_awprot;
  wire [3:0]S_AXI_awqos;
  wire S_AXI_awready;
  wire [2:0]S_AXI_awsize;
  wire [15:0]S_AXI_awuser;
  wire S_AXI_awvalid;
  wire [15:0]S_AXI_bid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [15:0]S_AXI_rid;
  wire S_AXI_rlast;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wlast;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire hier_dpu_clk_DPU_CLK;
  wire hier_dpu_clk_DSP_CLK;
  wire [0:0]hier_dpu_clk_RSTn_DSP;
  wire [0:0]hier_dpu_clk_RSTn_INTC;
  wire [0:0]hier_dpu_clk_RSTn_PERI;

  top_DPUCZDX8G_0 DPUCZDX8G
       (.dpu0_interrupt(DPUCZDX8G_dpu0_interrupt),
        .dpu0_m_axi_data0_araddr(DPUCZDX8G_DPU0_M_AXI_DATA0_ARADDR),
        .dpu0_m_axi_data0_arburst(DPUCZDX8G_DPU0_M_AXI_DATA0_ARBURST),
        .dpu0_m_axi_data0_arcache(DPUCZDX8G_DPU0_M_AXI_DATA0_ARCACHE),
        .dpu0_m_axi_data0_arid(DPUCZDX8G_DPU0_M_AXI_DATA0_ARID),
        .dpu0_m_axi_data0_arlen(DPUCZDX8G_DPU0_M_AXI_DATA0_ARLEN),
        .dpu0_m_axi_data0_arlock(DPUCZDX8G_DPU0_M_AXI_DATA0_ARLOCK),
        .dpu0_m_axi_data0_arprot(DPUCZDX8G_DPU0_M_AXI_DATA0_ARPROT),
        .dpu0_m_axi_data0_arqos(DPUCZDX8G_DPU0_M_AXI_DATA0_ARQOS),
        .dpu0_m_axi_data0_arready(DPUCZDX8G_DPU0_M_AXI_DATA0_ARREADY),
        .dpu0_m_axi_data0_arsize(DPUCZDX8G_DPU0_M_AXI_DATA0_ARSIZE),
        .dpu0_m_axi_data0_aruser(DPUCZDX8G_DPU0_M_AXI_DATA0_ARUSER),
        .dpu0_m_axi_data0_arvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_ARVALID),
        .dpu0_m_axi_data0_awaddr(DPUCZDX8G_DPU0_M_AXI_DATA0_AWADDR),
        .dpu0_m_axi_data0_awburst(DPUCZDX8G_DPU0_M_AXI_DATA0_AWBURST),
        .dpu0_m_axi_data0_awcache(DPUCZDX8G_DPU0_M_AXI_DATA0_AWCACHE),
        .dpu0_m_axi_data0_awid(DPUCZDX8G_DPU0_M_AXI_DATA0_AWID),
        .dpu0_m_axi_data0_awlen(DPUCZDX8G_DPU0_M_AXI_DATA0_AWLEN),
        .dpu0_m_axi_data0_awlock(DPUCZDX8G_DPU0_M_AXI_DATA0_AWLOCK),
        .dpu0_m_axi_data0_awprot(DPUCZDX8G_DPU0_M_AXI_DATA0_AWPROT),
        .dpu0_m_axi_data0_awqos(DPUCZDX8G_DPU0_M_AXI_DATA0_AWQOS),
        .dpu0_m_axi_data0_awready(DPUCZDX8G_DPU0_M_AXI_DATA0_AWREADY),
        .dpu0_m_axi_data0_awsize(DPUCZDX8G_DPU0_M_AXI_DATA0_AWSIZE),
        .dpu0_m_axi_data0_awuser(DPUCZDX8G_DPU0_M_AXI_DATA0_AWUSER),
        .dpu0_m_axi_data0_awvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_AWVALID),
        .dpu0_m_axi_data0_bid(DPUCZDX8G_DPU0_M_AXI_DATA0_BID),
        .dpu0_m_axi_data0_bready(DPUCZDX8G_DPU0_M_AXI_DATA0_BREADY),
        .dpu0_m_axi_data0_bresp(DPUCZDX8G_DPU0_M_AXI_DATA0_BRESP),
        .dpu0_m_axi_data0_bvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_BVALID),
        .dpu0_m_axi_data0_rdata(DPUCZDX8G_DPU0_M_AXI_DATA0_RDATA),
        .dpu0_m_axi_data0_rid(DPUCZDX8G_DPU0_M_AXI_DATA0_RID),
        .dpu0_m_axi_data0_rlast(DPUCZDX8G_DPU0_M_AXI_DATA0_RLAST),
        .dpu0_m_axi_data0_rready(DPUCZDX8G_DPU0_M_AXI_DATA0_RREADY),
        .dpu0_m_axi_data0_rresp(DPUCZDX8G_DPU0_M_AXI_DATA0_RRESP),
        .dpu0_m_axi_data0_rvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_RVALID),
        .dpu0_m_axi_data0_wdata(DPUCZDX8G_DPU0_M_AXI_DATA0_WDATA),
        .dpu0_m_axi_data0_wlast(DPUCZDX8G_DPU0_M_AXI_DATA0_WLAST),
        .dpu0_m_axi_data0_wready(DPUCZDX8G_DPU0_M_AXI_DATA0_WREADY),
        .dpu0_m_axi_data0_wstrb(DPUCZDX8G_DPU0_M_AXI_DATA0_WSTRB),
        .dpu0_m_axi_data0_wvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_WVALID),
        .dpu0_m_axi_data1_araddr(DPUCZDX8G_DPU0_M_AXI_DATA1_ARADDR),
        .dpu0_m_axi_data1_arburst(DPUCZDX8G_DPU0_M_AXI_DATA1_ARBURST),
        .dpu0_m_axi_data1_arcache(DPUCZDX8G_DPU0_M_AXI_DATA1_ARCACHE),
        .dpu0_m_axi_data1_arid(DPUCZDX8G_DPU0_M_AXI_DATA1_ARID),
        .dpu0_m_axi_data1_arlen(DPUCZDX8G_DPU0_M_AXI_DATA1_ARLEN),
        .dpu0_m_axi_data1_arlock(DPUCZDX8G_DPU0_M_AXI_DATA1_ARLOCK),
        .dpu0_m_axi_data1_arprot(DPUCZDX8G_DPU0_M_AXI_DATA1_ARPROT),
        .dpu0_m_axi_data1_arqos(DPUCZDX8G_DPU0_M_AXI_DATA1_ARQOS),
        .dpu0_m_axi_data1_arready(DPUCZDX8G_DPU0_M_AXI_DATA1_ARREADY),
        .dpu0_m_axi_data1_arsize(DPUCZDX8G_DPU0_M_AXI_DATA1_ARSIZE),
        .dpu0_m_axi_data1_aruser(DPUCZDX8G_DPU0_M_AXI_DATA1_ARUSER),
        .dpu0_m_axi_data1_arvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_ARVALID),
        .dpu0_m_axi_data1_awaddr(DPUCZDX8G_DPU0_M_AXI_DATA1_AWADDR),
        .dpu0_m_axi_data1_awburst(DPUCZDX8G_DPU0_M_AXI_DATA1_AWBURST),
        .dpu0_m_axi_data1_awcache(DPUCZDX8G_DPU0_M_AXI_DATA1_AWCACHE),
        .dpu0_m_axi_data1_awid(DPUCZDX8G_DPU0_M_AXI_DATA1_AWID),
        .dpu0_m_axi_data1_awlen(DPUCZDX8G_DPU0_M_AXI_DATA1_AWLEN),
        .dpu0_m_axi_data1_awlock(DPUCZDX8G_DPU0_M_AXI_DATA1_AWLOCK),
        .dpu0_m_axi_data1_awprot(DPUCZDX8G_DPU0_M_AXI_DATA1_AWPROT),
        .dpu0_m_axi_data1_awqos(DPUCZDX8G_DPU0_M_AXI_DATA1_AWQOS),
        .dpu0_m_axi_data1_awready(DPUCZDX8G_DPU0_M_AXI_DATA1_AWREADY),
        .dpu0_m_axi_data1_awsize(DPUCZDX8G_DPU0_M_AXI_DATA1_AWSIZE),
        .dpu0_m_axi_data1_awuser(DPUCZDX8G_DPU0_M_AXI_DATA1_AWUSER),
        .dpu0_m_axi_data1_awvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_AWVALID),
        .dpu0_m_axi_data1_bid(DPUCZDX8G_DPU0_M_AXI_DATA1_BID),
        .dpu0_m_axi_data1_bready(DPUCZDX8G_DPU0_M_AXI_DATA1_BREADY),
        .dpu0_m_axi_data1_bresp(DPUCZDX8G_DPU0_M_AXI_DATA1_BRESP),
        .dpu0_m_axi_data1_bvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_BVALID),
        .dpu0_m_axi_data1_rdata(DPUCZDX8G_DPU0_M_AXI_DATA1_RDATA),
        .dpu0_m_axi_data1_rid(DPUCZDX8G_DPU0_M_AXI_DATA1_RID),
        .dpu0_m_axi_data1_rlast(DPUCZDX8G_DPU0_M_AXI_DATA1_RLAST),
        .dpu0_m_axi_data1_rready(DPUCZDX8G_DPU0_M_AXI_DATA1_RREADY),
        .dpu0_m_axi_data1_rresp(DPUCZDX8G_DPU0_M_AXI_DATA1_RRESP),
        .dpu0_m_axi_data1_rvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_RVALID),
        .dpu0_m_axi_data1_wdata(DPUCZDX8G_DPU0_M_AXI_DATA1_WDATA),
        .dpu0_m_axi_data1_wlast(DPUCZDX8G_DPU0_M_AXI_DATA1_WLAST),
        .dpu0_m_axi_data1_wready(DPUCZDX8G_DPU0_M_AXI_DATA1_WREADY),
        .dpu0_m_axi_data1_wstrb(DPUCZDX8G_DPU0_M_AXI_DATA1_WSTRB),
        .dpu0_m_axi_data1_wvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_WVALID),
        .dpu0_m_axi_instr_araddr(DPUCZDX8G_DPU0_M_AXI_INSTR_ARADDR),
        .dpu0_m_axi_instr_arburst(DPUCZDX8G_DPU0_M_AXI_INSTR_ARBURST),
        .dpu0_m_axi_instr_arcache(DPUCZDX8G_DPU0_M_AXI_INSTR_ARCACHE),
        .dpu0_m_axi_instr_arid(DPUCZDX8G_DPU0_M_AXI_INSTR_ARID),
        .dpu0_m_axi_instr_arlen(DPUCZDX8G_DPU0_M_AXI_INSTR_ARLEN),
        .dpu0_m_axi_instr_arlock(DPUCZDX8G_DPU0_M_AXI_INSTR_ARLOCK),
        .dpu0_m_axi_instr_arprot(DPUCZDX8G_DPU0_M_AXI_INSTR_ARPROT),
        .dpu0_m_axi_instr_arqos(DPUCZDX8G_DPU0_M_AXI_INSTR_ARQOS),
        .dpu0_m_axi_instr_arready(DPUCZDX8G_DPU0_M_AXI_INSTR_ARREADY),
        .dpu0_m_axi_instr_arsize(DPUCZDX8G_DPU0_M_AXI_INSTR_ARSIZE),
        .dpu0_m_axi_instr_aruser(DPUCZDX8G_DPU0_M_AXI_INSTR_ARUSER),
        .dpu0_m_axi_instr_arvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_ARVALID),
        .dpu0_m_axi_instr_awaddr(DPUCZDX8G_DPU0_M_AXI_INSTR_AWADDR),
        .dpu0_m_axi_instr_awburst(DPUCZDX8G_DPU0_M_AXI_INSTR_AWBURST),
        .dpu0_m_axi_instr_awcache(DPUCZDX8G_DPU0_M_AXI_INSTR_AWCACHE),
        .dpu0_m_axi_instr_awid(DPUCZDX8G_DPU0_M_AXI_INSTR_AWID),
        .dpu0_m_axi_instr_awlen(DPUCZDX8G_DPU0_M_AXI_INSTR_AWLEN),
        .dpu0_m_axi_instr_awlock(DPUCZDX8G_DPU0_M_AXI_INSTR_AWLOCK),
        .dpu0_m_axi_instr_awprot(DPUCZDX8G_DPU0_M_AXI_INSTR_AWPROT),
        .dpu0_m_axi_instr_awqos(DPUCZDX8G_DPU0_M_AXI_INSTR_AWQOS),
        .dpu0_m_axi_instr_awready(DPUCZDX8G_DPU0_M_AXI_INSTR_AWREADY),
        .dpu0_m_axi_instr_awsize(DPUCZDX8G_DPU0_M_AXI_INSTR_AWSIZE),
        .dpu0_m_axi_instr_awuser(DPUCZDX8G_DPU0_M_AXI_INSTR_AWUSER),
        .dpu0_m_axi_instr_awvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_AWVALID),
        .dpu0_m_axi_instr_bid(DPUCZDX8G_DPU0_M_AXI_INSTR_BID),
        .dpu0_m_axi_instr_bready(DPUCZDX8G_DPU0_M_AXI_INSTR_BREADY),
        .dpu0_m_axi_instr_bresp(DPUCZDX8G_DPU0_M_AXI_INSTR_BRESP),
        .dpu0_m_axi_instr_bvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_BVALID),
        .dpu0_m_axi_instr_rdata(DPUCZDX8G_DPU0_M_AXI_INSTR_RDATA),
        .dpu0_m_axi_instr_rid(DPUCZDX8G_DPU0_M_AXI_INSTR_RID),
        .dpu0_m_axi_instr_rlast(DPUCZDX8G_DPU0_M_AXI_INSTR_RLAST),
        .dpu0_m_axi_instr_rready(DPUCZDX8G_DPU0_M_AXI_INSTR_RREADY),
        .dpu0_m_axi_instr_rresp(DPUCZDX8G_DPU0_M_AXI_INSTR_RRESP),
        .dpu0_m_axi_instr_rvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_RVALID),
        .dpu0_m_axi_instr_wdata(DPUCZDX8G_DPU0_M_AXI_INSTR_WDATA),
        .dpu0_m_axi_instr_wlast(DPUCZDX8G_DPU0_M_AXI_INSTR_WLAST),
        .dpu0_m_axi_instr_wready(DPUCZDX8G_DPU0_M_AXI_INSTR_WREADY),
        .dpu0_m_axi_instr_wstrb(DPUCZDX8G_DPU0_M_AXI_INSTR_WSTRB),
        .dpu0_m_axi_instr_wvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_WVALID),
        .dpu_2x_clk(hier_dpu_clk_DSP_CLK),
        .dpu_2x_clk_ce(DPUCZDX8G_dpu_2x_clk_ce),
        .dpu_2x_resetn(hier_dpu_clk_RSTn_DSP),
        .m_axi_dpu_aclk(hier_dpu_clk_DPU_CLK),
        .m_axi_dpu_aresetn(hier_dpu_clk_RSTn_PERI),
        .s_axi_aclk(S_AXI_CLK),
        .s_axi_araddr(S_AXI_araddr[31:0]),
        .s_axi_arburst(S_AXI_arburst),
        .s_axi_arcache(S_AXI_arcache),
        .s_axi_aresetn(S_AXI_RSTn),
        .s_axi_arid(S_AXI_arid),
        .s_axi_arlen(S_AXI_arlen),
        .s_axi_arlock({S_AXI_arlock,S_AXI_arlock}),
        .s_axi_arprot(S_AXI_arprot),
        .s_axi_arqos(S_AXI_arqos),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(S_AXI_arsize),
        .s_axi_aruser(S_AXI_aruser),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr[31:0]),
        .s_axi_awburst(S_AXI_awburst),
        .s_axi_awcache(S_AXI_awcache),
        .s_axi_awid(S_AXI_awid),
        .s_axi_awlen(S_AXI_awlen),
        .s_axi_awlock({S_AXI_awlock,S_AXI_awlock}),
        .s_axi_awprot(S_AXI_awprot),
        .s_axi_awqos(S_AXI_awqos),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(S_AXI_awsize),
        .s_axi_awuser(S_AXI_awuser),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bid(S_AXI_bid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rid(S_AXI_rid),
        .s_axi_rlast(S_AXI_rlast),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(S_AXI_wlast),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
  hier_dpu_clk_imp_P5CT15 hier_dpu_clk
       (.CLK(CLK),
        .DPU_CLK(hier_dpu_clk_DPU_CLK),
        .DSP_CLK(hier_dpu_clk_DSP_CLK),
        .RSTn(RSTn),
        .RSTn_DSP(hier_dpu_clk_RSTn_DSP),
        .RSTn_INTC(hier_dpu_clk_RSTn_INTC),
        .RSTn_PERI(hier_dpu_clk_RSTn_PERI),
        .clk_dsp_ce(DPUCZDX8G_dpu_2x_clk_ce));
  hier_dpu_ghp_imp_1DUMQPD hier_dpu_ghp
       (.CLK(hier_dpu_clk_DPU_CLK),
        .DPU0_M_AXI_DATA0_araddr(DPUCZDX8G_DPU0_M_AXI_DATA0_ARADDR),
        .DPU0_M_AXI_DATA0_arburst(DPUCZDX8G_DPU0_M_AXI_DATA0_ARBURST),
        .DPU0_M_AXI_DATA0_arcache(DPUCZDX8G_DPU0_M_AXI_DATA0_ARCACHE),
        .DPU0_M_AXI_DATA0_arid(DPUCZDX8G_DPU0_M_AXI_DATA0_ARID),
        .DPU0_M_AXI_DATA0_arlen(DPUCZDX8G_DPU0_M_AXI_DATA0_ARLEN),
        .DPU0_M_AXI_DATA0_arlock(DPUCZDX8G_DPU0_M_AXI_DATA0_ARLOCK),
        .DPU0_M_AXI_DATA0_arprot(DPUCZDX8G_DPU0_M_AXI_DATA0_ARPROT),
        .DPU0_M_AXI_DATA0_arqos(DPUCZDX8G_DPU0_M_AXI_DATA0_ARQOS),
        .DPU0_M_AXI_DATA0_arready(DPUCZDX8G_DPU0_M_AXI_DATA0_ARREADY),
        .DPU0_M_AXI_DATA0_arsize(DPUCZDX8G_DPU0_M_AXI_DATA0_ARSIZE),
        .DPU0_M_AXI_DATA0_aruser(DPUCZDX8G_DPU0_M_AXI_DATA0_ARUSER),
        .DPU0_M_AXI_DATA0_arvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_ARVALID),
        .DPU0_M_AXI_DATA0_awaddr(DPUCZDX8G_DPU0_M_AXI_DATA0_AWADDR),
        .DPU0_M_AXI_DATA0_awburst(DPUCZDX8G_DPU0_M_AXI_DATA0_AWBURST),
        .DPU0_M_AXI_DATA0_awcache(DPUCZDX8G_DPU0_M_AXI_DATA0_AWCACHE),
        .DPU0_M_AXI_DATA0_awid(DPUCZDX8G_DPU0_M_AXI_DATA0_AWID),
        .DPU0_M_AXI_DATA0_awlen(DPUCZDX8G_DPU0_M_AXI_DATA0_AWLEN),
        .DPU0_M_AXI_DATA0_awlock(DPUCZDX8G_DPU0_M_AXI_DATA0_AWLOCK),
        .DPU0_M_AXI_DATA0_awprot(DPUCZDX8G_DPU0_M_AXI_DATA0_AWPROT),
        .DPU0_M_AXI_DATA0_awqos(DPUCZDX8G_DPU0_M_AXI_DATA0_AWQOS),
        .DPU0_M_AXI_DATA0_awready(DPUCZDX8G_DPU0_M_AXI_DATA0_AWREADY),
        .DPU0_M_AXI_DATA0_awsize(DPUCZDX8G_DPU0_M_AXI_DATA0_AWSIZE),
        .DPU0_M_AXI_DATA0_awuser(DPUCZDX8G_DPU0_M_AXI_DATA0_AWUSER),
        .DPU0_M_AXI_DATA0_awvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_AWVALID),
        .DPU0_M_AXI_DATA0_bid(DPUCZDX8G_DPU0_M_AXI_DATA0_BID),
        .DPU0_M_AXI_DATA0_bready(DPUCZDX8G_DPU0_M_AXI_DATA0_BREADY),
        .DPU0_M_AXI_DATA0_bresp(DPUCZDX8G_DPU0_M_AXI_DATA0_BRESP),
        .DPU0_M_AXI_DATA0_bvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_BVALID),
        .DPU0_M_AXI_DATA0_rdata(DPUCZDX8G_DPU0_M_AXI_DATA0_RDATA),
        .DPU0_M_AXI_DATA0_rid(DPUCZDX8G_DPU0_M_AXI_DATA0_RID),
        .DPU0_M_AXI_DATA0_rlast(DPUCZDX8G_DPU0_M_AXI_DATA0_RLAST),
        .DPU0_M_AXI_DATA0_rready(DPUCZDX8G_DPU0_M_AXI_DATA0_RREADY),
        .DPU0_M_AXI_DATA0_rresp(DPUCZDX8G_DPU0_M_AXI_DATA0_RRESP),
        .DPU0_M_AXI_DATA0_rvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_RVALID),
        .DPU0_M_AXI_DATA0_wdata(DPUCZDX8G_DPU0_M_AXI_DATA0_WDATA),
        .DPU0_M_AXI_DATA0_wlast(DPUCZDX8G_DPU0_M_AXI_DATA0_WLAST),
        .DPU0_M_AXI_DATA0_wready(DPUCZDX8G_DPU0_M_AXI_DATA0_WREADY),
        .DPU0_M_AXI_DATA0_wstrb(DPUCZDX8G_DPU0_M_AXI_DATA0_WSTRB),
        .DPU0_M_AXI_DATA0_wvalid(DPUCZDX8G_DPU0_M_AXI_DATA0_WVALID),
        .DPU0_M_AXI_DATA1_araddr(DPUCZDX8G_DPU0_M_AXI_DATA1_ARADDR),
        .DPU0_M_AXI_DATA1_arburst(DPUCZDX8G_DPU0_M_AXI_DATA1_ARBURST),
        .DPU0_M_AXI_DATA1_arcache(DPUCZDX8G_DPU0_M_AXI_DATA1_ARCACHE),
        .DPU0_M_AXI_DATA1_arid(DPUCZDX8G_DPU0_M_AXI_DATA1_ARID),
        .DPU0_M_AXI_DATA1_arlen(DPUCZDX8G_DPU0_M_AXI_DATA1_ARLEN),
        .DPU0_M_AXI_DATA1_arlock(DPUCZDX8G_DPU0_M_AXI_DATA1_ARLOCK),
        .DPU0_M_AXI_DATA1_arprot(DPUCZDX8G_DPU0_M_AXI_DATA1_ARPROT),
        .DPU0_M_AXI_DATA1_arqos(DPUCZDX8G_DPU0_M_AXI_DATA1_ARQOS),
        .DPU0_M_AXI_DATA1_arready(DPUCZDX8G_DPU0_M_AXI_DATA1_ARREADY),
        .DPU0_M_AXI_DATA1_arsize(DPUCZDX8G_DPU0_M_AXI_DATA1_ARSIZE),
        .DPU0_M_AXI_DATA1_aruser(DPUCZDX8G_DPU0_M_AXI_DATA1_ARUSER),
        .DPU0_M_AXI_DATA1_arvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_ARVALID),
        .DPU0_M_AXI_DATA1_awaddr(DPUCZDX8G_DPU0_M_AXI_DATA1_AWADDR),
        .DPU0_M_AXI_DATA1_awburst(DPUCZDX8G_DPU0_M_AXI_DATA1_AWBURST),
        .DPU0_M_AXI_DATA1_awcache(DPUCZDX8G_DPU0_M_AXI_DATA1_AWCACHE),
        .DPU0_M_AXI_DATA1_awid(DPUCZDX8G_DPU0_M_AXI_DATA1_AWID),
        .DPU0_M_AXI_DATA1_awlen(DPUCZDX8G_DPU0_M_AXI_DATA1_AWLEN),
        .DPU0_M_AXI_DATA1_awlock(DPUCZDX8G_DPU0_M_AXI_DATA1_AWLOCK),
        .DPU0_M_AXI_DATA1_awprot(DPUCZDX8G_DPU0_M_AXI_DATA1_AWPROT),
        .DPU0_M_AXI_DATA1_awqos(DPUCZDX8G_DPU0_M_AXI_DATA1_AWQOS),
        .DPU0_M_AXI_DATA1_awready(DPUCZDX8G_DPU0_M_AXI_DATA1_AWREADY),
        .DPU0_M_AXI_DATA1_awsize(DPUCZDX8G_DPU0_M_AXI_DATA1_AWSIZE),
        .DPU0_M_AXI_DATA1_awuser(DPUCZDX8G_DPU0_M_AXI_DATA1_AWUSER),
        .DPU0_M_AXI_DATA1_awvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_AWVALID),
        .DPU0_M_AXI_DATA1_bid(DPUCZDX8G_DPU0_M_AXI_DATA1_BID),
        .DPU0_M_AXI_DATA1_bready(DPUCZDX8G_DPU0_M_AXI_DATA1_BREADY),
        .DPU0_M_AXI_DATA1_bresp(DPUCZDX8G_DPU0_M_AXI_DATA1_BRESP),
        .DPU0_M_AXI_DATA1_bvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_BVALID),
        .DPU0_M_AXI_DATA1_rdata(DPUCZDX8G_DPU0_M_AXI_DATA1_RDATA),
        .DPU0_M_AXI_DATA1_rid(DPUCZDX8G_DPU0_M_AXI_DATA1_RID),
        .DPU0_M_AXI_DATA1_rlast(DPUCZDX8G_DPU0_M_AXI_DATA1_RLAST),
        .DPU0_M_AXI_DATA1_rready(DPUCZDX8G_DPU0_M_AXI_DATA1_RREADY),
        .DPU0_M_AXI_DATA1_rresp(DPUCZDX8G_DPU0_M_AXI_DATA1_RRESP),
        .DPU0_M_AXI_DATA1_rvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_RVALID),
        .DPU0_M_AXI_DATA1_wdata(DPUCZDX8G_DPU0_M_AXI_DATA1_WDATA),
        .DPU0_M_AXI_DATA1_wlast(DPUCZDX8G_DPU0_M_AXI_DATA1_WLAST),
        .DPU0_M_AXI_DATA1_wready(DPUCZDX8G_DPU0_M_AXI_DATA1_WREADY),
        .DPU0_M_AXI_DATA1_wstrb(DPUCZDX8G_DPU0_M_AXI_DATA1_WSTRB),
        .DPU0_M_AXI_DATA1_wvalid(DPUCZDX8G_DPU0_M_AXI_DATA1_WVALID),
        .DPU0_M_AXI_INSTR_araddr(DPUCZDX8G_DPU0_M_AXI_INSTR_ARADDR),
        .DPU0_M_AXI_INSTR_arburst(DPUCZDX8G_DPU0_M_AXI_INSTR_ARBURST),
        .DPU0_M_AXI_INSTR_arcache(DPUCZDX8G_DPU0_M_AXI_INSTR_ARCACHE),
        .DPU0_M_AXI_INSTR_arid(DPUCZDX8G_DPU0_M_AXI_INSTR_ARID),
        .DPU0_M_AXI_INSTR_arlen(DPUCZDX8G_DPU0_M_AXI_INSTR_ARLEN),
        .DPU0_M_AXI_INSTR_arlock(DPUCZDX8G_DPU0_M_AXI_INSTR_ARLOCK),
        .DPU0_M_AXI_INSTR_arprot(DPUCZDX8G_DPU0_M_AXI_INSTR_ARPROT),
        .DPU0_M_AXI_INSTR_arqos(DPUCZDX8G_DPU0_M_AXI_INSTR_ARQOS),
        .DPU0_M_AXI_INSTR_arready(DPUCZDX8G_DPU0_M_AXI_INSTR_ARREADY),
        .DPU0_M_AXI_INSTR_arsize(DPUCZDX8G_DPU0_M_AXI_INSTR_ARSIZE),
        .DPU0_M_AXI_INSTR_aruser(DPUCZDX8G_DPU0_M_AXI_INSTR_ARUSER),
        .DPU0_M_AXI_INSTR_arvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_ARVALID),
        .DPU0_M_AXI_INSTR_awaddr(DPUCZDX8G_DPU0_M_AXI_INSTR_AWADDR),
        .DPU0_M_AXI_INSTR_awburst(DPUCZDX8G_DPU0_M_AXI_INSTR_AWBURST),
        .DPU0_M_AXI_INSTR_awcache(DPUCZDX8G_DPU0_M_AXI_INSTR_AWCACHE),
        .DPU0_M_AXI_INSTR_awid(DPUCZDX8G_DPU0_M_AXI_INSTR_AWID),
        .DPU0_M_AXI_INSTR_awlen(DPUCZDX8G_DPU0_M_AXI_INSTR_AWLEN),
        .DPU0_M_AXI_INSTR_awlock(DPUCZDX8G_DPU0_M_AXI_INSTR_AWLOCK),
        .DPU0_M_AXI_INSTR_awprot(DPUCZDX8G_DPU0_M_AXI_INSTR_AWPROT),
        .DPU0_M_AXI_INSTR_awqos(DPUCZDX8G_DPU0_M_AXI_INSTR_AWQOS),
        .DPU0_M_AXI_INSTR_awready(DPUCZDX8G_DPU0_M_AXI_INSTR_AWREADY),
        .DPU0_M_AXI_INSTR_awsize(DPUCZDX8G_DPU0_M_AXI_INSTR_AWSIZE),
        .DPU0_M_AXI_INSTR_awuser(DPUCZDX8G_DPU0_M_AXI_INSTR_AWUSER),
        .DPU0_M_AXI_INSTR_awvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_AWVALID),
        .DPU0_M_AXI_INSTR_bid(DPUCZDX8G_DPU0_M_AXI_INSTR_BID),
        .DPU0_M_AXI_INSTR_bready(DPUCZDX8G_DPU0_M_AXI_INSTR_BREADY),
        .DPU0_M_AXI_INSTR_bresp(DPUCZDX8G_DPU0_M_AXI_INSTR_BRESP),
        .DPU0_M_AXI_INSTR_bvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_BVALID),
        .DPU0_M_AXI_INSTR_rdata(DPUCZDX8G_DPU0_M_AXI_INSTR_RDATA),
        .DPU0_M_AXI_INSTR_rid(DPUCZDX8G_DPU0_M_AXI_INSTR_RID),
        .DPU0_M_AXI_INSTR_rlast(DPUCZDX8G_DPU0_M_AXI_INSTR_RLAST),
        .DPU0_M_AXI_INSTR_rready(DPUCZDX8G_DPU0_M_AXI_INSTR_RREADY),
        .DPU0_M_AXI_INSTR_rresp(DPUCZDX8G_DPU0_M_AXI_INSTR_RRESP),
        .DPU0_M_AXI_INSTR_rvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_RVALID),
        .DPU0_M_AXI_INSTR_wdata(DPUCZDX8G_DPU0_M_AXI_INSTR_WDATA),
        .DPU0_M_AXI_INSTR_wlast(DPUCZDX8G_DPU0_M_AXI_INSTR_WLAST),
        .DPU0_M_AXI_INSTR_wready(DPUCZDX8G_DPU0_M_AXI_INSTR_WREADY),
        .DPU0_M_AXI_INSTR_wstrb(DPUCZDX8G_DPU0_M_AXI_INSTR_WSTRB),
        .DPU0_M_AXI_INSTR_wvalid(DPUCZDX8G_DPU0_M_AXI_INSTR_WVALID),
        .GHP_CLK_I(hier_dpu_clk_DPU_CLK),
        .GHP_CLK_O(GHP_CLK_O),
        .GHP_RSTn(hier_dpu_clk_RSTn_PERI),
        .M_AXI_HP0_FPD_araddr(M_AXI_HP0_FPD_araddr),
        .M_AXI_HP0_FPD_arburst(M_AXI_HP0_FPD_arburst),
        .M_AXI_HP0_FPD_arcache(M_AXI_HP0_FPD_arcache),
        .M_AXI_HP0_FPD_arid(M_AXI_HP0_FPD_arid),
        .M_AXI_HP0_FPD_arlen(M_AXI_HP0_FPD_arlen),
        .M_AXI_HP0_FPD_arlock(M_AXI_HP0_FPD_arlock),
        .M_AXI_HP0_FPD_arprot(M_AXI_HP0_FPD_arprot),
        .M_AXI_HP0_FPD_arqos(M_AXI_HP0_FPD_arqos),
        .M_AXI_HP0_FPD_arready(M_AXI_HP0_FPD_arready),
        .M_AXI_HP0_FPD_arsize(M_AXI_HP0_FPD_arsize),
        .M_AXI_HP0_FPD_aruser(M_AXI_HP0_FPD_aruser),
        .M_AXI_HP0_FPD_arvalid(M_AXI_HP0_FPD_arvalid),
        .M_AXI_HP0_FPD_awaddr(M_AXI_HP0_FPD_awaddr),
        .M_AXI_HP0_FPD_awburst(M_AXI_HP0_FPD_awburst),
        .M_AXI_HP0_FPD_awcache(M_AXI_HP0_FPD_awcache),
        .M_AXI_HP0_FPD_awid(M_AXI_HP0_FPD_awid),
        .M_AXI_HP0_FPD_awlen(M_AXI_HP0_FPD_awlen),
        .M_AXI_HP0_FPD_awlock(M_AXI_HP0_FPD_awlock),
        .M_AXI_HP0_FPD_awprot(M_AXI_HP0_FPD_awprot),
        .M_AXI_HP0_FPD_awqos(M_AXI_HP0_FPD_awqos),
        .M_AXI_HP0_FPD_awready(M_AXI_HP0_FPD_awready),
        .M_AXI_HP0_FPD_awsize(M_AXI_HP0_FPD_awsize),
        .M_AXI_HP0_FPD_awuser(M_AXI_HP0_FPD_awuser),
        .M_AXI_HP0_FPD_awvalid(M_AXI_HP0_FPD_awvalid),
        .M_AXI_HP0_FPD_bid(M_AXI_HP0_FPD_bid),
        .M_AXI_HP0_FPD_bready(M_AXI_HP0_FPD_bready),
        .M_AXI_HP0_FPD_bresp(M_AXI_HP0_FPD_bresp),
        .M_AXI_HP0_FPD_bvalid(M_AXI_HP0_FPD_bvalid),
        .M_AXI_HP0_FPD_rdata(M_AXI_HP0_FPD_rdata),
        .M_AXI_HP0_FPD_rid(M_AXI_HP0_FPD_rid),
        .M_AXI_HP0_FPD_rlast(M_AXI_HP0_FPD_rlast),
        .M_AXI_HP0_FPD_rready(M_AXI_HP0_FPD_rready),
        .M_AXI_HP0_FPD_rresp(M_AXI_HP0_FPD_rresp),
        .M_AXI_HP0_FPD_rvalid(M_AXI_HP0_FPD_rvalid),
        .M_AXI_HP0_FPD_wdata(M_AXI_HP0_FPD_wdata),
        .M_AXI_HP0_FPD_wlast(M_AXI_HP0_FPD_wlast),
        .M_AXI_HP0_FPD_wready(M_AXI_HP0_FPD_wready),
        .M_AXI_HP0_FPD_wstrb(M_AXI_HP0_FPD_wstrb),
        .M_AXI_HP0_FPD_wvalid(M_AXI_HP0_FPD_wvalid),
        .M_AXI_HP1_FPD_araddr(M_AXI_HP1_FPD_araddr),
        .M_AXI_HP1_FPD_arburst(M_AXI_HP1_FPD_arburst),
        .M_AXI_HP1_FPD_arcache(M_AXI_HP1_FPD_arcache),
        .M_AXI_HP1_FPD_arid(M_AXI_HP1_FPD_arid),
        .M_AXI_HP1_FPD_arlen(M_AXI_HP1_FPD_arlen),
        .M_AXI_HP1_FPD_arlock(M_AXI_HP1_FPD_arlock),
        .M_AXI_HP1_FPD_arprot(M_AXI_HP1_FPD_arprot),
        .M_AXI_HP1_FPD_arqos(M_AXI_HP1_FPD_arqos),
        .M_AXI_HP1_FPD_arready(M_AXI_HP1_FPD_arready),
        .M_AXI_HP1_FPD_arsize(M_AXI_HP1_FPD_arsize),
        .M_AXI_HP1_FPD_aruser(M_AXI_HP1_FPD_aruser),
        .M_AXI_HP1_FPD_arvalid(M_AXI_HP1_FPD_arvalid),
        .M_AXI_HP1_FPD_awaddr(M_AXI_HP1_FPD_awaddr),
        .M_AXI_HP1_FPD_awburst(M_AXI_HP1_FPD_awburst),
        .M_AXI_HP1_FPD_awcache(M_AXI_HP1_FPD_awcache),
        .M_AXI_HP1_FPD_awid(M_AXI_HP1_FPD_awid),
        .M_AXI_HP1_FPD_awlen(M_AXI_HP1_FPD_awlen),
        .M_AXI_HP1_FPD_awlock(M_AXI_HP1_FPD_awlock),
        .M_AXI_HP1_FPD_awprot(M_AXI_HP1_FPD_awprot),
        .M_AXI_HP1_FPD_awqos(M_AXI_HP1_FPD_awqos),
        .M_AXI_HP1_FPD_awready(M_AXI_HP1_FPD_awready),
        .M_AXI_HP1_FPD_awsize(M_AXI_HP1_FPD_awsize),
        .M_AXI_HP1_FPD_awuser(M_AXI_HP1_FPD_awuser),
        .M_AXI_HP1_FPD_awvalid(M_AXI_HP1_FPD_awvalid),
        .M_AXI_HP1_FPD_bid(M_AXI_HP1_FPD_bid),
        .M_AXI_HP1_FPD_bready(M_AXI_HP1_FPD_bready),
        .M_AXI_HP1_FPD_bresp(M_AXI_HP1_FPD_bresp),
        .M_AXI_HP1_FPD_bvalid(M_AXI_HP1_FPD_bvalid),
        .M_AXI_HP1_FPD_rdata(M_AXI_HP1_FPD_rdata),
        .M_AXI_HP1_FPD_rid(M_AXI_HP1_FPD_rid),
        .M_AXI_HP1_FPD_rlast(M_AXI_HP1_FPD_rlast),
        .M_AXI_HP1_FPD_rready(M_AXI_HP1_FPD_rready),
        .M_AXI_HP1_FPD_rresp(M_AXI_HP1_FPD_rresp),
        .M_AXI_HP1_FPD_rvalid(M_AXI_HP1_FPD_rvalid),
        .M_AXI_HP1_FPD_wdata(M_AXI_HP1_FPD_wdata),
        .M_AXI_HP1_FPD_wlast(M_AXI_HP1_FPD_wlast),
        .M_AXI_HP1_FPD_wready(M_AXI_HP1_FPD_wready),
        .M_AXI_HP1_FPD_wstrb(M_AXI_HP1_FPD_wstrb),
        .M_AXI_HP1_FPD_wvalid(M_AXI_HP1_FPD_wvalid),
        .M_AXI_LPD_araddr(M_AXI_LPD_araddr),
        .M_AXI_LPD_arburst(M_AXI_LPD_arburst),
        .M_AXI_LPD_arcache(M_AXI_LPD_arcache),
        .M_AXI_LPD_arid(M_AXI_LPD_arid),
        .M_AXI_LPD_arlen(M_AXI_LPD_arlen),
        .M_AXI_LPD_arlock(M_AXI_LPD_arlock),
        .M_AXI_LPD_arprot(M_AXI_LPD_arprot),
        .M_AXI_LPD_arqos(M_AXI_LPD_arqos),
        .M_AXI_LPD_arready(M_AXI_LPD_arready),
        .M_AXI_LPD_arsize(M_AXI_LPD_arsize),
        .M_AXI_LPD_aruser(M_AXI_LPD_aruser),
        .M_AXI_LPD_arvalid(M_AXI_LPD_arvalid),
        .M_AXI_LPD_awaddr(M_AXI_LPD_awaddr),
        .M_AXI_LPD_awburst(M_AXI_LPD_awburst),
        .M_AXI_LPD_awcache(M_AXI_LPD_awcache),
        .M_AXI_LPD_awid(M_AXI_LPD_awid),
        .M_AXI_LPD_awlen(M_AXI_LPD_awlen),
        .M_AXI_LPD_awlock(M_AXI_LPD_awlock),
        .M_AXI_LPD_awprot(M_AXI_LPD_awprot),
        .M_AXI_LPD_awqos(M_AXI_LPD_awqos),
        .M_AXI_LPD_awready(M_AXI_LPD_awready),
        .M_AXI_LPD_awsize(M_AXI_LPD_awsize),
        .M_AXI_LPD_awuser(M_AXI_LPD_awuser),
        .M_AXI_LPD_awvalid(M_AXI_LPD_awvalid),
        .M_AXI_LPD_bid(M_AXI_LPD_bid),
        .M_AXI_LPD_bready(M_AXI_LPD_bready),
        .M_AXI_LPD_bresp(M_AXI_LPD_bresp),
        .M_AXI_LPD_bvalid(M_AXI_LPD_bvalid),
        .M_AXI_LPD_rdata(M_AXI_LPD_rdata),
        .M_AXI_LPD_rid(M_AXI_LPD_rid),
        .M_AXI_LPD_rlast(M_AXI_LPD_rlast),
        .M_AXI_LPD_rready(M_AXI_LPD_rready),
        .M_AXI_LPD_rresp(M_AXI_LPD_rresp),
        .M_AXI_LPD_rvalid(M_AXI_LPD_rvalid),
        .M_AXI_LPD_wdata(M_AXI_LPD_wdata),
        .M_AXI_LPD_wlast(M_AXI_LPD_wlast),
        .M_AXI_LPD_wready(M_AXI_LPD_wready),
        .M_AXI_LPD_wstrb(M_AXI_LPD_wstrb),
        .M_AXI_LPD_wvalid(M_AXI_LPD_wvalid),
        .RSTn_INTC(hier_dpu_clk_RSTn_INTC),
        .RSTn_PERI(hier_dpu_clk_RSTn_PERI));
  hier_dpu_irq_imp_7KP66F hier_dpu_irq
       (.INTR(INTR),
        .In0(DPUCZDX8G_dpu0_interrupt));
endmodule

module hier_dpu_irq_imp_7KP66F
   (INTR,
    In0);
  output [0:0]INTR;
  input [0:0]In0;

  wire [0:0]INTR;
  wire [0:0]In0;

  top_dpu_concat_irq_inner_0 dpu_concat_irq_inner
       (.In0(In0),
        .dout(INTR));
endmodule

(* CORE_GENERATION_INFO = "top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=None}" *) (* HW_HANDOFF = "top.hwdef" *) 
module top
   ();

  wire [0:0]dpu_concat_irq_dout;
  wire hier_dpu_GHP_CLK_O;
  wire [0:0]hier_dpu_INTR;
  wire [39:0]hier_dpu_M_AXI_HP0_FPD_ARADDR;
  wire [1:0]hier_dpu_M_AXI_HP0_FPD_ARBURST;
  wire [3:0]hier_dpu_M_AXI_HP0_FPD_ARCACHE;
  wire [1:0]hier_dpu_M_AXI_HP0_FPD_ARID;
  wire [7:0]hier_dpu_M_AXI_HP0_FPD_ARLEN;
  wire hier_dpu_M_AXI_HP0_FPD_ARLOCK;
  wire [2:0]hier_dpu_M_AXI_HP0_FPD_ARPROT;
  wire [3:0]hier_dpu_M_AXI_HP0_FPD_ARQOS;
  wire hier_dpu_M_AXI_HP0_FPD_ARREADY;
  wire [2:0]hier_dpu_M_AXI_HP0_FPD_ARSIZE;
  wire hier_dpu_M_AXI_HP0_FPD_ARUSER;
  wire hier_dpu_M_AXI_HP0_FPD_ARVALID;
  wire [39:0]hier_dpu_M_AXI_HP0_FPD_AWADDR;
  wire [1:0]hier_dpu_M_AXI_HP0_FPD_AWBURST;
  wire [3:0]hier_dpu_M_AXI_HP0_FPD_AWCACHE;
  wire [1:0]hier_dpu_M_AXI_HP0_FPD_AWID;
  wire [7:0]hier_dpu_M_AXI_HP0_FPD_AWLEN;
  wire hier_dpu_M_AXI_HP0_FPD_AWLOCK;
  wire [2:0]hier_dpu_M_AXI_HP0_FPD_AWPROT;
  wire [3:0]hier_dpu_M_AXI_HP0_FPD_AWQOS;
  wire hier_dpu_M_AXI_HP0_FPD_AWREADY;
  wire [2:0]hier_dpu_M_AXI_HP0_FPD_AWSIZE;
  wire hier_dpu_M_AXI_HP0_FPD_AWUSER;
  wire hier_dpu_M_AXI_HP0_FPD_AWVALID;
  wire [5:0]hier_dpu_M_AXI_HP0_FPD_BID;
  wire hier_dpu_M_AXI_HP0_FPD_BREADY;
  wire [1:0]hier_dpu_M_AXI_HP0_FPD_BRESP;
  wire hier_dpu_M_AXI_HP0_FPD_BVALID;
  wire [127:0]hier_dpu_M_AXI_HP0_FPD_RDATA;
  wire [5:0]hier_dpu_M_AXI_HP0_FPD_RID;
  wire hier_dpu_M_AXI_HP0_FPD_RLAST;
  wire hier_dpu_M_AXI_HP0_FPD_RREADY;
  wire [1:0]hier_dpu_M_AXI_HP0_FPD_RRESP;
  wire hier_dpu_M_AXI_HP0_FPD_RVALID;
  wire [127:0]hier_dpu_M_AXI_HP0_FPD_WDATA;
  wire hier_dpu_M_AXI_HP0_FPD_WLAST;
  wire hier_dpu_M_AXI_HP0_FPD_WREADY;
  wire [15:0]hier_dpu_M_AXI_HP0_FPD_WSTRB;
  wire hier_dpu_M_AXI_HP0_FPD_WVALID;
  wire [39:0]hier_dpu_M_AXI_HP1_FPD_ARADDR;
  wire [1:0]hier_dpu_M_AXI_HP1_FPD_ARBURST;
  wire [3:0]hier_dpu_M_AXI_HP1_FPD_ARCACHE;
  wire [1:0]hier_dpu_M_AXI_HP1_FPD_ARID;
  wire [7:0]hier_dpu_M_AXI_HP1_FPD_ARLEN;
  wire hier_dpu_M_AXI_HP1_FPD_ARLOCK;
  wire [2:0]hier_dpu_M_AXI_HP1_FPD_ARPROT;
  wire [3:0]hier_dpu_M_AXI_HP1_FPD_ARQOS;
  wire hier_dpu_M_AXI_HP1_FPD_ARREADY;
  wire [2:0]hier_dpu_M_AXI_HP1_FPD_ARSIZE;
  wire hier_dpu_M_AXI_HP1_FPD_ARUSER;
  wire hier_dpu_M_AXI_HP1_FPD_ARVALID;
  wire [39:0]hier_dpu_M_AXI_HP1_FPD_AWADDR;
  wire [1:0]hier_dpu_M_AXI_HP1_FPD_AWBURST;
  wire [3:0]hier_dpu_M_AXI_HP1_FPD_AWCACHE;
  wire [1:0]hier_dpu_M_AXI_HP1_FPD_AWID;
  wire [7:0]hier_dpu_M_AXI_HP1_FPD_AWLEN;
  wire hier_dpu_M_AXI_HP1_FPD_AWLOCK;
  wire [2:0]hier_dpu_M_AXI_HP1_FPD_AWPROT;
  wire [3:0]hier_dpu_M_AXI_HP1_FPD_AWQOS;
  wire hier_dpu_M_AXI_HP1_FPD_AWREADY;
  wire [2:0]hier_dpu_M_AXI_HP1_FPD_AWSIZE;
  wire hier_dpu_M_AXI_HP1_FPD_AWUSER;
  wire hier_dpu_M_AXI_HP1_FPD_AWVALID;
  wire [5:0]hier_dpu_M_AXI_HP1_FPD_BID;
  wire hier_dpu_M_AXI_HP1_FPD_BREADY;
  wire [1:0]hier_dpu_M_AXI_HP1_FPD_BRESP;
  wire hier_dpu_M_AXI_HP1_FPD_BVALID;
  wire [127:0]hier_dpu_M_AXI_HP1_FPD_RDATA;
  wire [5:0]hier_dpu_M_AXI_HP1_FPD_RID;
  wire hier_dpu_M_AXI_HP1_FPD_RLAST;
  wire hier_dpu_M_AXI_HP1_FPD_RREADY;
  wire [1:0]hier_dpu_M_AXI_HP1_FPD_RRESP;
  wire hier_dpu_M_AXI_HP1_FPD_RVALID;
  wire [127:0]hier_dpu_M_AXI_HP1_FPD_WDATA;
  wire hier_dpu_M_AXI_HP1_FPD_WLAST;
  wire hier_dpu_M_AXI_HP1_FPD_WREADY;
  wire [15:0]hier_dpu_M_AXI_HP1_FPD_WSTRB;
  wire hier_dpu_M_AXI_HP1_FPD_WVALID;
  wire [39:0]hier_dpu_M_AXI_LPD_ARADDR;
  wire [1:0]hier_dpu_M_AXI_LPD_ARBURST;
  wire [3:0]hier_dpu_M_AXI_LPD_ARCACHE;
  wire [1:0]hier_dpu_M_AXI_LPD_ARID;
  wire [7:0]hier_dpu_M_AXI_LPD_ARLEN;
  wire hier_dpu_M_AXI_LPD_ARLOCK;
  wire [2:0]hier_dpu_M_AXI_LPD_ARPROT;
  wire [3:0]hier_dpu_M_AXI_LPD_ARQOS;
  wire hier_dpu_M_AXI_LPD_ARREADY;
  wire [2:0]hier_dpu_M_AXI_LPD_ARSIZE;
  wire hier_dpu_M_AXI_LPD_ARUSER;
  wire hier_dpu_M_AXI_LPD_ARVALID;
  wire [39:0]hier_dpu_M_AXI_LPD_AWADDR;
  wire [1:0]hier_dpu_M_AXI_LPD_AWBURST;
  wire [3:0]hier_dpu_M_AXI_LPD_AWCACHE;
  wire [1:0]hier_dpu_M_AXI_LPD_AWID;
  wire [7:0]hier_dpu_M_AXI_LPD_AWLEN;
  wire hier_dpu_M_AXI_LPD_AWLOCK;
  wire [2:0]hier_dpu_M_AXI_LPD_AWPROT;
  wire [3:0]hier_dpu_M_AXI_LPD_AWQOS;
  wire hier_dpu_M_AXI_LPD_AWREADY;
  wire [2:0]hier_dpu_M_AXI_LPD_AWSIZE;
  wire hier_dpu_M_AXI_LPD_AWUSER;
  wire hier_dpu_M_AXI_LPD_AWVALID;
  wire [5:0]hier_dpu_M_AXI_LPD_BID;
  wire hier_dpu_M_AXI_LPD_BREADY;
  wire [1:0]hier_dpu_M_AXI_LPD_BRESP;
  wire hier_dpu_M_AXI_LPD_BVALID;
  wire [31:0]hier_dpu_M_AXI_LPD_RDATA;
  wire [5:0]hier_dpu_M_AXI_LPD_RID;
  wire hier_dpu_M_AXI_LPD_RLAST;
  wire hier_dpu_M_AXI_LPD_RREADY;
  wire [1:0]hier_dpu_M_AXI_LPD_RRESP;
  wire hier_dpu_M_AXI_LPD_RVALID;
  wire [31:0]hier_dpu_M_AXI_LPD_WDATA;
  wire hier_dpu_M_AXI_LPD_WLAST;
  wire hier_dpu_M_AXI_LPD_WREADY;
  wire [3:0]hier_dpu_M_AXI_LPD_WSTRB;
  wire hier_dpu_M_AXI_LPD_WVALID;
  wire [0:0]rst_gen_reg_peripheral_aresetn;
  wire [39:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARID;
  wire [7:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLEN;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARQOS;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARUSER;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWID;
  wire [7:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLEN;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWQOS;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWUSER;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_BID;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_BRESP;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_BVALID;
  wire [31:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_RID;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_RLAST;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_RRESP;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_RVALID;
  wire [31:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_WDATA;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_WLAST;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_WREADY;
  wire [3:0]zynq_ultra_ps_e_M_AXI_HPM0_LPD_WSTRB;
  wire zynq_ultra_ps_e_M_AXI_HPM0_LPD_WVALID;
  wire zynq_ultra_ps_e_pl_clk0;
  wire zynq_ultra_ps_e_pl_resetn0;

  top_dpu_concat_irq_0 dpu_concat_irq
       (.In0(hier_dpu_INTR),
        .dout(dpu_concat_irq_dout));
  hier_dpu_imp_CAA3KC hier_dpu
       (.CLK(zynq_ultra_ps_e_pl_clk0),
        .GHP_CLK_O(hier_dpu_GHP_CLK_O),
        .INTR(hier_dpu_INTR),
        .M_AXI_HP0_FPD_araddr(hier_dpu_M_AXI_HP0_FPD_ARADDR),
        .M_AXI_HP0_FPD_arburst(hier_dpu_M_AXI_HP0_FPD_ARBURST),
        .M_AXI_HP0_FPD_arcache(hier_dpu_M_AXI_HP0_FPD_ARCACHE),
        .M_AXI_HP0_FPD_arid(hier_dpu_M_AXI_HP0_FPD_ARID),
        .M_AXI_HP0_FPD_arlen(hier_dpu_M_AXI_HP0_FPD_ARLEN),
        .M_AXI_HP0_FPD_arlock(hier_dpu_M_AXI_HP0_FPD_ARLOCK),
        .M_AXI_HP0_FPD_arprot(hier_dpu_M_AXI_HP0_FPD_ARPROT),
        .M_AXI_HP0_FPD_arqos(hier_dpu_M_AXI_HP0_FPD_ARQOS),
        .M_AXI_HP0_FPD_arready(hier_dpu_M_AXI_HP0_FPD_ARREADY),
        .M_AXI_HP0_FPD_arsize(hier_dpu_M_AXI_HP0_FPD_ARSIZE),
        .M_AXI_HP0_FPD_aruser(hier_dpu_M_AXI_HP0_FPD_ARUSER),
        .M_AXI_HP0_FPD_arvalid(hier_dpu_M_AXI_HP0_FPD_ARVALID),
        .M_AXI_HP0_FPD_awaddr(hier_dpu_M_AXI_HP0_FPD_AWADDR),
        .M_AXI_HP0_FPD_awburst(hier_dpu_M_AXI_HP0_FPD_AWBURST),
        .M_AXI_HP0_FPD_awcache(hier_dpu_M_AXI_HP0_FPD_AWCACHE),
        .M_AXI_HP0_FPD_awid(hier_dpu_M_AXI_HP0_FPD_AWID),
        .M_AXI_HP0_FPD_awlen(hier_dpu_M_AXI_HP0_FPD_AWLEN),
        .M_AXI_HP0_FPD_awlock(hier_dpu_M_AXI_HP0_FPD_AWLOCK),
        .M_AXI_HP0_FPD_awprot(hier_dpu_M_AXI_HP0_FPD_AWPROT),
        .M_AXI_HP0_FPD_awqos(hier_dpu_M_AXI_HP0_FPD_AWQOS),
        .M_AXI_HP0_FPD_awready(hier_dpu_M_AXI_HP0_FPD_AWREADY),
        .M_AXI_HP0_FPD_awsize(hier_dpu_M_AXI_HP0_FPD_AWSIZE),
        .M_AXI_HP0_FPD_awuser(hier_dpu_M_AXI_HP0_FPD_AWUSER),
        .M_AXI_HP0_FPD_awvalid(hier_dpu_M_AXI_HP0_FPD_AWVALID),
        .M_AXI_HP0_FPD_bid(hier_dpu_M_AXI_HP0_FPD_BID),
        .M_AXI_HP0_FPD_bready(hier_dpu_M_AXI_HP0_FPD_BREADY),
        .M_AXI_HP0_FPD_bresp(hier_dpu_M_AXI_HP0_FPD_BRESP),
        .M_AXI_HP0_FPD_bvalid(hier_dpu_M_AXI_HP0_FPD_BVALID),
        .M_AXI_HP0_FPD_rdata(hier_dpu_M_AXI_HP0_FPD_RDATA),
        .M_AXI_HP0_FPD_rid(hier_dpu_M_AXI_HP0_FPD_RID),
        .M_AXI_HP0_FPD_rlast(hier_dpu_M_AXI_HP0_FPD_RLAST),
        .M_AXI_HP0_FPD_rready(hier_dpu_M_AXI_HP0_FPD_RREADY),
        .M_AXI_HP0_FPD_rresp(hier_dpu_M_AXI_HP0_FPD_RRESP),
        .M_AXI_HP0_FPD_rvalid(hier_dpu_M_AXI_HP0_FPD_RVALID),
        .M_AXI_HP0_FPD_wdata(hier_dpu_M_AXI_HP0_FPD_WDATA),
        .M_AXI_HP0_FPD_wlast(hier_dpu_M_AXI_HP0_FPD_WLAST),
        .M_AXI_HP0_FPD_wready(hier_dpu_M_AXI_HP0_FPD_WREADY),
        .M_AXI_HP0_FPD_wstrb(hier_dpu_M_AXI_HP0_FPD_WSTRB),
        .M_AXI_HP0_FPD_wvalid(hier_dpu_M_AXI_HP0_FPD_WVALID),
        .M_AXI_HP1_FPD_araddr(hier_dpu_M_AXI_HP1_FPD_ARADDR),
        .M_AXI_HP1_FPD_arburst(hier_dpu_M_AXI_HP1_FPD_ARBURST),
        .M_AXI_HP1_FPD_arcache(hier_dpu_M_AXI_HP1_FPD_ARCACHE),
        .M_AXI_HP1_FPD_arid(hier_dpu_M_AXI_HP1_FPD_ARID),
        .M_AXI_HP1_FPD_arlen(hier_dpu_M_AXI_HP1_FPD_ARLEN),
        .M_AXI_HP1_FPD_arlock(hier_dpu_M_AXI_HP1_FPD_ARLOCK),
        .M_AXI_HP1_FPD_arprot(hier_dpu_M_AXI_HP1_FPD_ARPROT),
        .M_AXI_HP1_FPD_arqos(hier_dpu_M_AXI_HP1_FPD_ARQOS),
        .M_AXI_HP1_FPD_arready(hier_dpu_M_AXI_HP1_FPD_ARREADY),
        .M_AXI_HP1_FPD_arsize(hier_dpu_M_AXI_HP1_FPD_ARSIZE),
        .M_AXI_HP1_FPD_aruser(hier_dpu_M_AXI_HP1_FPD_ARUSER),
        .M_AXI_HP1_FPD_arvalid(hier_dpu_M_AXI_HP1_FPD_ARVALID),
        .M_AXI_HP1_FPD_awaddr(hier_dpu_M_AXI_HP1_FPD_AWADDR),
        .M_AXI_HP1_FPD_awburst(hier_dpu_M_AXI_HP1_FPD_AWBURST),
        .M_AXI_HP1_FPD_awcache(hier_dpu_M_AXI_HP1_FPD_AWCACHE),
        .M_AXI_HP1_FPD_awid(hier_dpu_M_AXI_HP1_FPD_AWID),
        .M_AXI_HP1_FPD_awlen(hier_dpu_M_AXI_HP1_FPD_AWLEN),
        .M_AXI_HP1_FPD_awlock(hier_dpu_M_AXI_HP1_FPD_AWLOCK),
        .M_AXI_HP1_FPD_awprot(hier_dpu_M_AXI_HP1_FPD_AWPROT),
        .M_AXI_HP1_FPD_awqos(hier_dpu_M_AXI_HP1_FPD_AWQOS),
        .M_AXI_HP1_FPD_awready(hier_dpu_M_AXI_HP1_FPD_AWREADY),
        .M_AXI_HP1_FPD_awsize(hier_dpu_M_AXI_HP1_FPD_AWSIZE),
        .M_AXI_HP1_FPD_awuser(hier_dpu_M_AXI_HP1_FPD_AWUSER),
        .M_AXI_HP1_FPD_awvalid(hier_dpu_M_AXI_HP1_FPD_AWVALID),
        .M_AXI_HP1_FPD_bid(hier_dpu_M_AXI_HP1_FPD_BID),
        .M_AXI_HP1_FPD_bready(hier_dpu_M_AXI_HP1_FPD_BREADY),
        .M_AXI_HP1_FPD_bresp(hier_dpu_M_AXI_HP1_FPD_BRESP),
        .M_AXI_HP1_FPD_bvalid(hier_dpu_M_AXI_HP1_FPD_BVALID),
        .M_AXI_HP1_FPD_rdata(hier_dpu_M_AXI_HP1_FPD_RDATA),
        .M_AXI_HP1_FPD_rid(hier_dpu_M_AXI_HP1_FPD_RID),
        .M_AXI_HP1_FPD_rlast(hier_dpu_M_AXI_HP1_FPD_RLAST),
        .M_AXI_HP1_FPD_rready(hier_dpu_M_AXI_HP1_FPD_RREADY),
        .M_AXI_HP1_FPD_rresp(hier_dpu_M_AXI_HP1_FPD_RRESP),
        .M_AXI_HP1_FPD_rvalid(hier_dpu_M_AXI_HP1_FPD_RVALID),
        .M_AXI_HP1_FPD_wdata(hier_dpu_M_AXI_HP1_FPD_WDATA),
        .M_AXI_HP1_FPD_wlast(hier_dpu_M_AXI_HP1_FPD_WLAST),
        .M_AXI_HP1_FPD_wready(hier_dpu_M_AXI_HP1_FPD_WREADY),
        .M_AXI_HP1_FPD_wstrb(hier_dpu_M_AXI_HP1_FPD_WSTRB),
        .M_AXI_HP1_FPD_wvalid(hier_dpu_M_AXI_HP1_FPD_WVALID),
        .M_AXI_LPD_araddr(hier_dpu_M_AXI_LPD_ARADDR),
        .M_AXI_LPD_arburst(hier_dpu_M_AXI_LPD_ARBURST),
        .M_AXI_LPD_arcache(hier_dpu_M_AXI_LPD_ARCACHE),
        .M_AXI_LPD_arid(hier_dpu_M_AXI_LPD_ARID),
        .M_AXI_LPD_arlen(hier_dpu_M_AXI_LPD_ARLEN),
        .M_AXI_LPD_arlock(hier_dpu_M_AXI_LPD_ARLOCK),
        .M_AXI_LPD_arprot(hier_dpu_M_AXI_LPD_ARPROT),
        .M_AXI_LPD_arqos(hier_dpu_M_AXI_LPD_ARQOS),
        .M_AXI_LPD_arready(hier_dpu_M_AXI_LPD_ARREADY),
        .M_AXI_LPD_arsize(hier_dpu_M_AXI_LPD_ARSIZE),
        .M_AXI_LPD_aruser(hier_dpu_M_AXI_LPD_ARUSER),
        .M_AXI_LPD_arvalid(hier_dpu_M_AXI_LPD_ARVALID),
        .M_AXI_LPD_awaddr(hier_dpu_M_AXI_LPD_AWADDR),
        .M_AXI_LPD_awburst(hier_dpu_M_AXI_LPD_AWBURST),
        .M_AXI_LPD_awcache(hier_dpu_M_AXI_LPD_AWCACHE),
        .M_AXI_LPD_awid(hier_dpu_M_AXI_LPD_AWID),
        .M_AXI_LPD_awlen(hier_dpu_M_AXI_LPD_AWLEN),
        .M_AXI_LPD_awlock(hier_dpu_M_AXI_LPD_AWLOCK),
        .M_AXI_LPD_awprot(hier_dpu_M_AXI_LPD_AWPROT),
        .M_AXI_LPD_awqos(hier_dpu_M_AXI_LPD_AWQOS),
        .M_AXI_LPD_awready(hier_dpu_M_AXI_LPD_AWREADY),
        .M_AXI_LPD_awsize(hier_dpu_M_AXI_LPD_AWSIZE),
        .M_AXI_LPD_awuser(hier_dpu_M_AXI_LPD_AWUSER),
        .M_AXI_LPD_awvalid(hier_dpu_M_AXI_LPD_AWVALID),
        .M_AXI_LPD_bid(hier_dpu_M_AXI_LPD_BID),
        .M_AXI_LPD_bready(hier_dpu_M_AXI_LPD_BREADY),
        .M_AXI_LPD_bresp(hier_dpu_M_AXI_LPD_BRESP),
        .M_AXI_LPD_bvalid(hier_dpu_M_AXI_LPD_BVALID),
        .M_AXI_LPD_rdata(hier_dpu_M_AXI_LPD_RDATA),
        .M_AXI_LPD_rid(hier_dpu_M_AXI_LPD_RID),
        .M_AXI_LPD_rlast(hier_dpu_M_AXI_LPD_RLAST),
        .M_AXI_LPD_rready(hier_dpu_M_AXI_LPD_RREADY),
        .M_AXI_LPD_rresp(hier_dpu_M_AXI_LPD_RRESP),
        .M_AXI_LPD_rvalid(hier_dpu_M_AXI_LPD_RVALID),
        .M_AXI_LPD_wdata(hier_dpu_M_AXI_LPD_WDATA),
        .M_AXI_LPD_wlast(hier_dpu_M_AXI_LPD_WLAST),
        .M_AXI_LPD_wready(hier_dpu_M_AXI_LPD_WREADY),
        .M_AXI_LPD_wstrb(hier_dpu_M_AXI_LPD_WSTRB),
        .M_AXI_LPD_wvalid(hier_dpu_M_AXI_LPD_WVALID),
        .RSTn(rst_gen_reg_peripheral_aresetn),
        .S_AXI_CLK(zynq_ultra_ps_e_pl_clk0),
        .S_AXI_RSTn(rst_gen_reg_peripheral_aresetn),
        .S_AXI_araddr(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARADDR),
        .S_AXI_arburst(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARBURST),
        .S_AXI_arcache(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARCACHE),
        .S_AXI_arid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARID),
        .S_AXI_arlen(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLEN),
        .S_AXI_arlock(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLOCK),
        .S_AXI_arprot(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARPROT),
        .S_AXI_arqos(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARQOS),
        .S_AXI_arready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARREADY),
        .S_AXI_arsize(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARSIZE),
        .S_AXI_aruser(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARUSER),
        .S_AXI_arvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARVALID),
        .S_AXI_awaddr(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWADDR),
        .S_AXI_awburst(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWBURST),
        .S_AXI_awcache(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWCACHE),
        .S_AXI_awid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWID),
        .S_AXI_awlen(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLEN),
        .S_AXI_awlock(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLOCK),
        .S_AXI_awprot(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWPROT),
        .S_AXI_awqos(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWQOS),
        .S_AXI_awready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWREADY),
        .S_AXI_awsize(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWSIZE),
        .S_AXI_awuser(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWUSER),
        .S_AXI_awvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWVALID),
        .S_AXI_bid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BID),
        .S_AXI_bready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BREADY),
        .S_AXI_bresp(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BRESP),
        .S_AXI_bvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BVALID),
        .S_AXI_rdata(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RDATA),
        .S_AXI_rid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RID),
        .S_AXI_rlast(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RLAST),
        .S_AXI_rready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RREADY),
        .S_AXI_rresp(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RRESP),
        .S_AXI_rvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RVALID),
        .S_AXI_wdata(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WDATA),
        .S_AXI_wlast(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WLAST),
        .S_AXI_wready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WREADY),
        .S_AXI_wstrb(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WSTRB),
        .S_AXI_wvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WVALID));
  top_rst_gen_reg_0 rst_gen_reg
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_gen_reg_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_pl_clk0));
  top_zynq_ultra_ps_e_0 zynq_ultra_ps_e
       (.maxigp2_araddr(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARADDR),
        .maxigp2_arburst(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARBURST),
        .maxigp2_arcache(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARCACHE),
        .maxigp2_arid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARID),
        .maxigp2_arlen(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLEN),
        .maxigp2_arlock(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLOCK),
        .maxigp2_arprot(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARPROT),
        .maxigp2_arqos(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARQOS),
        .maxigp2_arready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARREADY),
        .maxigp2_arsize(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARSIZE),
        .maxigp2_aruser(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARUSER),
        .maxigp2_arvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARVALID),
        .maxigp2_awaddr(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWADDR),
        .maxigp2_awburst(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWBURST),
        .maxigp2_awcache(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWCACHE),
        .maxigp2_awid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWID),
        .maxigp2_awlen(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLEN),
        .maxigp2_awlock(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLOCK),
        .maxigp2_awprot(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWPROT),
        .maxigp2_awqos(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWQOS),
        .maxigp2_awready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWREADY),
        .maxigp2_awsize(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWSIZE),
        .maxigp2_awuser(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWUSER),
        .maxigp2_awvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWVALID),
        .maxigp2_bid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BID),
        .maxigp2_bready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BREADY),
        .maxigp2_bresp(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BRESP),
        .maxigp2_bvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_BVALID),
        .maxigp2_rdata(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RDATA),
        .maxigp2_rid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RID),
        .maxigp2_rlast(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RLAST),
        .maxigp2_rready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RREADY),
        .maxigp2_rresp(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RRESP),
        .maxigp2_rvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_RVALID),
        .maxigp2_wdata(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WDATA),
        .maxigp2_wlast(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WLAST),
        .maxigp2_wready(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WREADY),
        .maxigp2_wstrb(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WSTRB),
        .maxigp2_wvalid(zynq_ultra_ps_e_M_AXI_HPM0_LPD_WVALID),
        .maxihpm0_lpd_aclk(zynq_ultra_ps_e_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_pl_clk0),
        .pl_ps_irq0(dpu_concat_irq_dout),
        .pl_ps_irq1(1'b0),
        .pl_resetn0(zynq_ultra_ps_e_pl_resetn0),
        .saxi_lpd_aclk(hier_dpu_GHP_CLK_O),
        .saxigp2_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP0_FPD_ARADDR}),
        .saxigp2_arburst(hier_dpu_M_AXI_HP0_FPD_ARBURST),
        .saxigp2_arcache(hier_dpu_M_AXI_HP0_FPD_ARCACHE),
        .saxigp2_arid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP0_FPD_ARID}),
        .saxigp2_arlen(hier_dpu_M_AXI_HP0_FPD_ARLEN),
        .saxigp2_arlock(hier_dpu_M_AXI_HP0_FPD_ARLOCK),
        .saxigp2_arprot(hier_dpu_M_AXI_HP0_FPD_ARPROT),
        .saxigp2_arqos(hier_dpu_M_AXI_HP0_FPD_ARQOS),
        .saxigp2_arready(hier_dpu_M_AXI_HP0_FPD_ARREADY),
        .saxigp2_arsize(hier_dpu_M_AXI_HP0_FPD_ARSIZE),
        .saxigp2_aruser(hier_dpu_M_AXI_HP0_FPD_ARUSER),
        .saxigp2_arvalid(hier_dpu_M_AXI_HP0_FPD_ARVALID),
        .saxigp2_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP0_FPD_AWADDR}),
        .saxigp2_awburst(hier_dpu_M_AXI_HP0_FPD_AWBURST),
        .saxigp2_awcache(hier_dpu_M_AXI_HP0_FPD_AWCACHE),
        .saxigp2_awid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP0_FPD_AWID}),
        .saxigp2_awlen(hier_dpu_M_AXI_HP0_FPD_AWLEN),
        .saxigp2_awlock(hier_dpu_M_AXI_HP0_FPD_AWLOCK),
        .saxigp2_awprot(hier_dpu_M_AXI_HP0_FPD_AWPROT),
        .saxigp2_awqos(hier_dpu_M_AXI_HP0_FPD_AWQOS),
        .saxigp2_awready(hier_dpu_M_AXI_HP0_FPD_AWREADY),
        .saxigp2_awsize(hier_dpu_M_AXI_HP0_FPD_AWSIZE),
        .saxigp2_awuser(hier_dpu_M_AXI_HP0_FPD_AWUSER),
        .saxigp2_awvalid(hier_dpu_M_AXI_HP0_FPD_AWVALID),
        .saxigp2_bid(hier_dpu_M_AXI_HP0_FPD_BID),
        .saxigp2_bready(hier_dpu_M_AXI_HP0_FPD_BREADY),
        .saxigp2_bresp(hier_dpu_M_AXI_HP0_FPD_BRESP),
        .saxigp2_bvalid(hier_dpu_M_AXI_HP0_FPD_BVALID),
        .saxigp2_rdata(hier_dpu_M_AXI_HP0_FPD_RDATA),
        .saxigp2_rid(hier_dpu_M_AXI_HP0_FPD_RID),
        .saxigp2_rlast(hier_dpu_M_AXI_HP0_FPD_RLAST),
        .saxigp2_rready(hier_dpu_M_AXI_HP0_FPD_RREADY),
        .saxigp2_rresp(hier_dpu_M_AXI_HP0_FPD_RRESP),
        .saxigp2_rvalid(hier_dpu_M_AXI_HP0_FPD_RVALID),
        .saxigp2_wdata(hier_dpu_M_AXI_HP0_FPD_WDATA),
        .saxigp2_wlast(hier_dpu_M_AXI_HP0_FPD_WLAST),
        .saxigp2_wready(hier_dpu_M_AXI_HP0_FPD_WREADY),
        .saxigp2_wstrb(hier_dpu_M_AXI_HP0_FPD_WSTRB),
        .saxigp2_wvalid(hier_dpu_M_AXI_HP0_FPD_WVALID),
        .saxigp3_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP1_FPD_ARADDR}),
        .saxigp3_arburst(hier_dpu_M_AXI_HP1_FPD_ARBURST),
        .saxigp3_arcache(hier_dpu_M_AXI_HP1_FPD_ARCACHE),
        .saxigp3_arid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP1_FPD_ARID}),
        .saxigp3_arlen(hier_dpu_M_AXI_HP1_FPD_ARLEN),
        .saxigp3_arlock(hier_dpu_M_AXI_HP1_FPD_ARLOCK),
        .saxigp3_arprot(hier_dpu_M_AXI_HP1_FPD_ARPROT),
        .saxigp3_arqos(hier_dpu_M_AXI_HP1_FPD_ARQOS),
        .saxigp3_arready(hier_dpu_M_AXI_HP1_FPD_ARREADY),
        .saxigp3_arsize(hier_dpu_M_AXI_HP1_FPD_ARSIZE),
        .saxigp3_aruser(hier_dpu_M_AXI_HP1_FPD_ARUSER),
        .saxigp3_arvalid(hier_dpu_M_AXI_HP1_FPD_ARVALID),
        .saxigp3_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP1_FPD_AWADDR}),
        .saxigp3_awburst(hier_dpu_M_AXI_HP1_FPD_AWBURST),
        .saxigp3_awcache(hier_dpu_M_AXI_HP1_FPD_AWCACHE),
        .saxigp3_awid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_HP1_FPD_AWID}),
        .saxigp3_awlen(hier_dpu_M_AXI_HP1_FPD_AWLEN),
        .saxigp3_awlock(hier_dpu_M_AXI_HP1_FPD_AWLOCK),
        .saxigp3_awprot(hier_dpu_M_AXI_HP1_FPD_AWPROT),
        .saxigp3_awqos(hier_dpu_M_AXI_HP1_FPD_AWQOS),
        .saxigp3_awready(hier_dpu_M_AXI_HP1_FPD_AWREADY),
        .saxigp3_awsize(hier_dpu_M_AXI_HP1_FPD_AWSIZE),
        .saxigp3_awuser(hier_dpu_M_AXI_HP1_FPD_AWUSER),
        .saxigp3_awvalid(hier_dpu_M_AXI_HP1_FPD_AWVALID),
        .saxigp3_bid(hier_dpu_M_AXI_HP1_FPD_BID),
        .saxigp3_bready(hier_dpu_M_AXI_HP1_FPD_BREADY),
        .saxigp3_bresp(hier_dpu_M_AXI_HP1_FPD_BRESP),
        .saxigp3_bvalid(hier_dpu_M_AXI_HP1_FPD_BVALID),
        .saxigp3_rdata(hier_dpu_M_AXI_HP1_FPD_RDATA),
        .saxigp3_rid(hier_dpu_M_AXI_HP1_FPD_RID),
        .saxigp3_rlast(hier_dpu_M_AXI_HP1_FPD_RLAST),
        .saxigp3_rready(hier_dpu_M_AXI_HP1_FPD_RREADY),
        .saxigp3_rresp(hier_dpu_M_AXI_HP1_FPD_RRESP),
        .saxigp3_rvalid(hier_dpu_M_AXI_HP1_FPD_RVALID),
        .saxigp3_wdata(hier_dpu_M_AXI_HP1_FPD_WDATA),
        .saxigp3_wlast(hier_dpu_M_AXI_HP1_FPD_WLAST),
        .saxigp3_wready(hier_dpu_M_AXI_HP1_FPD_WREADY),
        .saxigp3_wstrb(hier_dpu_M_AXI_HP1_FPD_WSTRB),
        .saxigp3_wvalid(hier_dpu_M_AXI_HP1_FPD_WVALID),
        .saxigp6_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_LPD_ARADDR}),
        .saxigp6_arburst(hier_dpu_M_AXI_LPD_ARBURST),
        .saxigp6_arcache(hier_dpu_M_AXI_LPD_ARCACHE),
        .saxigp6_arid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_LPD_ARID}),
        .saxigp6_arlen(hier_dpu_M_AXI_LPD_ARLEN),
        .saxigp6_arlock(hier_dpu_M_AXI_LPD_ARLOCK),
        .saxigp6_arprot(hier_dpu_M_AXI_LPD_ARPROT),
        .saxigp6_arqos(hier_dpu_M_AXI_LPD_ARQOS),
        .saxigp6_arready(hier_dpu_M_AXI_LPD_ARREADY),
        .saxigp6_arsize(hier_dpu_M_AXI_LPD_ARSIZE),
        .saxigp6_aruser(hier_dpu_M_AXI_LPD_ARUSER),
        .saxigp6_arvalid(hier_dpu_M_AXI_LPD_ARVALID),
        .saxigp6_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_LPD_AWADDR}),
        .saxigp6_awburst(hier_dpu_M_AXI_LPD_AWBURST),
        .saxigp6_awcache(hier_dpu_M_AXI_LPD_AWCACHE),
        .saxigp6_awid({1'b0,1'b0,1'b0,1'b0,hier_dpu_M_AXI_LPD_AWID}),
        .saxigp6_awlen(hier_dpu_M_AXI_LPD_AWLEN),
        .saxigp6_awlock(hier_dpu_M_AXI_LPD_AWLOCK),
        .saxigp6_awprot(hier_dpu_M_AXI_LPD_AWPROT),
        .saxigp6_awqos(hier_dpu_M_AXI_LPD_AWQOS),
        .saxigp6_awready(hier_dpu_M_AXI_LPD_AWREADY),
        .saxigp6_awsize(hier_dpu_M_AXI_LPD_AWSIZE),
        .saxigp6_awuser(hier_dpu_M_AXI_LPD_AWUSER),
        .saxigp6_awvalid(hier_dpu_M_AXI_LPD_AWVALID),
        .saxigp6_bid(hier_dpu_M_AXI_LPD_BID),
        .saxigp6_bready(hier_dpu_M_AXI_LPD_BREADY),
        .saxigp6_bresp(hier_dpu_M_AXI_LPD_BRESP),
        .saxigp6_bvalid(hier_dpu_M_AXI_LPD_BVALID),
        .saxigp6_rdata(hier_dpu_M_AXI_LPD_RDATA),
        .saxigp6_rid(hier_dpu_M_AXI_LPD_RID),
        .saxigp6_rlast(hier_dpu_M_AXI_LPD_RLAST),
        .saxigp6_rready(hier_dpu_M_AXI_LPD_RREADY),
        .saxigp6_rresp(hier_dpu_M_AXI_LPD_RRESP),
        .saxigp6_rvalid(hier_dpu_M_AXI_LPD_RVALID),
        .saxigp6_wdata(hier_dpu_M_AXI_LPD_WDATA),
        .saxigp6_wlast(hier_dpu_M_AXI_LPD_WLAST),
        .saxigp6_wready(hier_dpu_M_AXI_LPD_WREADY),
        .saxigp6_wstrb(hier_dpu_M_AXI_LPD_WSTRB),
        .saxigp6_wvalid(hier_dpu_M_AXI_LPD_WVALID),
        .saxihp0_fpd_aclk(hier_dpu_GHP_CLK_O),
        .saxihp1_fpd_aclk(hier_dpu_GHP_CLK_O));
endmodule

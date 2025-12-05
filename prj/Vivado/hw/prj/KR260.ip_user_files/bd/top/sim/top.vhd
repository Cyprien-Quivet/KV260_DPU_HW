--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Fri Dec  5 17:18:28 2025
--Host        : DESKTOP-S4UD1KI running 64-bit major release  (build 9200)
--Command     : generate_target top.bd
--Design      : top
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hier_dpu_clk_imp_P5CT15 is
  port (
    CLK : in STD_LOGIC;
    DPU_CLK : out STD_LOGIC;
    DSP_CLK : out STD_LOGIC;
    LOCKED : out STD_LOGIC;
    RSTn : in STD_LOGIC;
    RSTn_DSP : out STD_LOGIC_VECTOR ( 0 to 0 );
    RSTn_INTC : out STD_LOGIC_VECTOR ( 0 to 0 );
    RSTn_PERI : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_dsp_ce : in STD_LOGIC
  );
end hier_dpu_clk_imp_P5CT15;

architecture STRUCTURE of hier_dpu_clk_imp_P5CT15 is
  component top_dpu_clk_wiz_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_dsp : out STD_LOGIC;
    clk_dpu : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_dsp_ce : in STD_LOGIC
  );
  end component top_dpu_clk_wiz_0;
  component top_rst_gen_clk_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component top_rst_gen_clk_0;
  component top_rst_gen_clk_dsp_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component top_rst_gen_clk_dsp_0;
  signal CLK_1 : STD_LOGIC;
  signal RSTn_1 : STD_LOGIC;
  signal clk_dsp_ce_1 : STD_LOGIC;
  signal dpu_clk_wiz_clk_dpu : STD_LOGIC;
  signal dpu_clk_wiz_clk_dsp : STD_LOGIC;
  signal dpu_clk_wiz_locked : STD_LOGIC;
  signal rst_gen_clk_dsp_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_gen_clk_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_gen_clk_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_gen_clk_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_gen_clk_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_gen_clk_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_gen_clk_dsp_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_gen_clk_dsp_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_gen_clk_dsp_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_gen_clk_dsp_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  CLK_1 <= CLK;
  DPU_CLK <= dpu_clk_wiz_clk_dpu;
  DSP_CLK <= dpu_clk_wiz_clk_dsp;
  LOCKED <= dpu_clk_wiz_locked;
  RSTn_1 <= RSTn;
  RSTn_DSP(0) <= rst_gen_clk_dsp_peripheral_aresetn(0);
  RSTn_INTC(0) <= rst_gen_clk_interconnect_aresetn(0);
  RSTn_PERI(0) <= rst_gen_clk_peripheral_aresetn(0);
  clk_dsp_ce_1 <= clk_dsp_ce;
dpu_clk_wiz: component top_dpu_clk_wiz_0
     port map (
      clk_dpu => dpu_clk_wiz_clk_dpu,
      clk_dsp => dpu_clk_wiz_clk_dsp,
      clk_dsp_ce => clk_dsp_ce_1,
      clk_in1 => CLK_1,
      locked => dpu_clk_wiz_locked,
      resetn => RSTn_1
    );
rst_gen_clk: component top_rst_gen_clk_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_gen_clk_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => dpu_clk_wiz_locked,
      ext_reset_in => RSTn_1,
      interconnect_aresetn(0) => rst_gen_clk_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_gen_clk_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_gen_clk_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_gen_clk_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => dpu_clk_wiz_clk_dpu
    );
rst_gen_clk_dsp: component top_rst_gen_clk_dsp_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_gen_clk_dsp_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => dpu_clk_wiz_locked,
      ext_reset_in => RSTn_1,
      interconnect_aresetn(0) => NLW_rst_gen_clk_dsp_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_gen_clk_dsp_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_gen_clk_dsp_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_gen_clk_dsp_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => dpu_clk_wiz_clk_dsp
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hier_dpu_irq_imp_7KP66F is
  port (
    INTR : out STD_LOGIC_VECTOR ( 0 to 0 );
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end hier_dpu_irq_imp_7KP66F;

architecture STRUCTURE of hier_dpu_irq_imp_7KP66F is
  component top_dpu_concat_irq_inner_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component top_dpu_concat_irq_inner_0;
  signal In0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dpu_concat_irq_inner_dout : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  INTR(0) <= dpu_concat_irq_inner_dout(0);
  In0_1(0) <= In0(0);
dpu_concat_irq_inner: component top_dpu_concat_irq_inner_0
     port map (
      In0(0) => In0_1(0),
      dout(0) => dpu_concat_irq_inner_dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_ZF07WE is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_ZF07WE;

architecture STRUCTURE of m00_couplers_imp_ZF07WE is
  component top_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component top_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_pc_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_pc_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= auto_pc_to_m00_couplers_ARADDR(39 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= auto_pc_to_m00_couplers_AWADDR(39 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(15 downto 0) <= m00_couplers_to_auto_pc_BID(15 downto 0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(15 downto 0) <= m00_couplers_to_auto_pc_RID(15 downto 0);
  S_AXI_rlast <= m00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_pc_WREADY;
  auto_pc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_pc_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_pc_ARID(15 downto 0) <= S_AXI_arid(15 downto 0);
  m00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_pc_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_pc_AWID(15 downto 0) <= S_AXI_awid(15 downto 0);
  m00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component top_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(39 downto 0) => auto_pc_to_m00_couplers_ARADDR(39 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m00_couplers_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_pc_to_m00_couplers_AWADDR(39 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m00_couplers_WVALID,
      s_axi_araddr(39 downto 0) => m00_couplers_to_auto_pc_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(15 downto 0) => m00_couplers_to_auto_pc_ARID(15 downto 0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(39 downto 0) => m00_couplers_to_auto_pc_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(15 downto 0) => m00_couplers_to_auto_pc_AWID(15 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(15 downto 0) => m00_couplers_to_auto_pc_BID(15 downto 0),
      s_axi_bready => m00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(15 downto 0) => m00_couplers_to_auto_pc_RID(15 downto 0),
      s_axi_rlast => m00_couplers_to_auto_pc_RLAST,
      s_axi_rready => m00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m00_couplers_to_auto_pc_WLAST,
      s_axi_wready => m00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_19072BF is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_19072BF;

architecture STRUCTURE of m01_couplers_imp_19072BF is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m01_couplers_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m01_couplers_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m01_couplers_to_m01_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(39 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(39 downto 0);
  M_AXI_arburst(1 downto 0) <= m01_couplers_to_m01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m01_couplers_to_m01_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(15 downto 0) <= m01_couplers_to_m01_couplers_ARID(15 downto 0);
  M_AXI_arlen(7 downto 0) <= m01_couplers_to_m01_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= m01_couplers_to_m01_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= m01_couplers_to_m01_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= m01_couplers_to_m01_couplers_ARQOS(3 downto 0);
  M_AXI_arregion(3 downto 0) <= m01_couplers_to_m01_couplers_ARREGION(3 downto 0);
  M_AXI_arsize(2 downto 0) <= m01_couplers_to_m01_couplers_ARSIZE(2 downto 0);
  M_AXI_aruser(15 downto 0) <= m01_couplers_to_m01_couplers_ARUSER(15 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(39 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(39 downto 0);
  M_AXI_awburst(1 downto 0) <= m01_couplers_to_m01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m01_couplers_to_m01_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(15 downto 0) <= m01_couplers_to_m01_couplers_AWID(15 downto 0);
  M_AXI_awlen(7 downto 0) <= m01_couplers_to_m01_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= m01_couplers_to_m01_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= m01_couplers_to_m01_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= m01_couplers_to_m01_couplers_AWQOS(3 downto 0);
  M_AXI_awregion(3 downto 0) <= m01_couplers_to_m01_couplers_AWREGION(3 downto 0);
  M_AXI_awsize(2 downto 0) <= m01_couplers_to_m01_couplers_AWSIZE(2 downto 0);
  M_AXI_awuser(15 downto 0) <= m01_couplers_to_m01_couplers_AWUSER(15 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wlast(0) <= m01_couplers_to_m01_couplers_WLAST(0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bid(15 downto 0) <= m01_couplers_to_m01_couplers_BID(15 downto 0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rid(15 downto 0) <= m01_couplers_to_m01_couplers_RID(15 downto 0);
  S_AXI_rlast(0) <= m01_couplers_to_m01_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m01_couplers_to_m01_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m01_couplers_to_m01_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m01_couplers_to_m01_couplers_ARID(15 downto 0) <= S_AXI_arid(15 downto 0);
  m01_couplers_to_m01_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m01_couplers_to_m01_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  m01_couplers_to_m01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_m01_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m01_couplers_to_m01_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m01_couplers_to_m01_couplers_ARUSER(15 downto 0) <= S_AXI_aruser(15 downto 0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m01_couplers_to_m01_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m01_couplers_to_m01_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m01_couplers_to_m01_couplers_AWID(15 downto 0) <= S_AXI_awid(15 downto 0);
  m01_couplers_to_m01_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m01_couplers_to_m01_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  m01_couplers_to_m01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_m01_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m01_couplers_to_m01_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m01_couplers_to_m01_couplers_AWUSER(15 downto 0) <= S_AXI_awuser(15 downto 0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BID(15 downto 0) <= M_AXI_bid(15 downto 0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RID(15 downto 0) <= M_AXI_rid(15 downto 0);
  m01_couplers_to_m01_couplers_RLAST(0) <= M_AXI_rlast(0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WLAST(0) <= S_AXI_wlast(0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_8VE6K5 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_8VE6K5;

architecture STRUCTURE of m02_couplers_imp_8VE6K5 is
  component top_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component top_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_pc_to_m02_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_pc_to_m02_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m02_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m02_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m02_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m02_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_WVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m02_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m02_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m02_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m02_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m02_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m02_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(39 downto 0) <= auto_pc_to_m02_couplers_ARADDR(39 downto 0);
  M_AXI_arvalid <= auto_pc_to_m02_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= auto_pc_to_m02_couplers_AWADDR(39 downto 0);
  M_AXI_awvalid <= auto_pc_to_m02_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m02_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= auto_pc_to_m02_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m02_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m02_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(15 downto 0) <= m02_couplers_to_auto_pc_BID(15 downto 0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(15 downto 0) <= m02_couplers_to_auto_pc_RID(15 downto 0);
  S_AXI_rlast <= m02_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m02_couplers_to_auto_pc_WREADY;
  auto_pc_to_m02_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m02_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m02_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m02_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_auto_pc_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m02_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m02_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m02_couplers_to_auto_pc_ARID(15 downto 0) <= S_AXI_arid(15 downto 0);
  m02_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m02_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m02_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m02_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m02_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m02_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_auto_pc_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m02_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m02_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m02_couplers_to_auto_pc_AWID(15 downto 0) <= S_AXI_awid(15 downto 0);
  m02_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m02_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m02_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m02_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m02_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m02_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m02_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m02_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m02_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component top_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(39 downto 0) => auto_pc_to_m02_couplers_ARADDR(39 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m02_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m02_couplers_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_pc_to_m02_couplers_AWADDR(39 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m02_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m02_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m02_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m02_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m02_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m02_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m02_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m02_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => NLW_auto_pc_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid => auto_pc_to_m02_couplers_WVALID,
      s_axi_araddr(39 downto 0) => m02_couplers_to_auto_pc_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => m02_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m02_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(15 downto 0) => m02_couplers_to_auto_pc_ARID(15 downto 0),
      s_axi_arlen(7 downto 0) => m02_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m02_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m02_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m02_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m02_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m02_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m02_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m02_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(39 downto 0) => m02_couplers_to_auto_pc_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => m02_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m02_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(15 downto 0) => m02_couplers_to_auto_pc_AWID(15 downto 0),
      s_axi_awlen(7 downto 0) => m02_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m02_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m02_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m02_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m02_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m02_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m02_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m02_couplers_to_auto_pc_AWVALID,
      s_axi_bid(15 downto 0) => m02_couplers_to_auto_pc_BID(15 downto 0),
      s_axi_bready => m02_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m02_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m02_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m02_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(15 downto 0) => m02_couplers_to_auto_pc_RID(15 downto 0),
      s_axi_rlast => m02_couplers_to_auto_pc_RLAST,
      s_axi_rready => m02_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m02_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m02_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m02_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m02_couplers_to_auto_pc_WLAST,
      s_axi_wready => m02_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m02_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m02_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1NKMOJO is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_1NKMOJO;

architecture STRUCTURE of s00_couplers_imp_1NKMOJO is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_s00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(39 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(39 downto 0);
  M_AXI_arburst(1 downto 0) <= s00_couplers_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s00_couplers_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(15 downto 0) <= s00_couplers_to_s00_couplers_ARID(15 downto 0);
  M_AXI_arlen(7 downto 0) <= s00_couplers_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= s00_couplers_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s00_couplers_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s00_couplers_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_aruser(15 downto 0) <= s00_couplers_to_s00_couplers_ARUSER(15 downto 0);
  M_AXI_arvalid(0) <= s00_couplers_to_s00_couplers_ARVALID(0);
  M_AXI_awaddr(39 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(39 downto 0);
  M_AXI_awburst(1 downto 0) <= s00_couplers_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s00_couplers_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(15 downto 0) <= s00_couplers_to_s00_couplers_AWID(15 downto 0);
  M_AXI_awlen(7 downto 0) <= s00_couplers_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= s00_couplers_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s00_couplers_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s00_couplers_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awuser(15 downto 0) <= s00_couplers_to_s00_couplers_AWUSER(15 downto 0);
  M_AXI_awvalid(0) <= s00_couplers_to_s00_couplers_AWVALID(0);
  M_AXI_bready(0) <= s00_couplers_to_s00_couplers_BREADY(0);
  M_AXI_rready(0) <= s00_couplers_to_s00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast(0) <= s00_couplers_to_s00_couplers_WLAST(0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s00_couplers_to_s00_couplers_WVALID(0);
  S_AXI_arready(0) <= s00_couplers_to_s00_couplers_ARREADY(0);
  S_AXI_awready(0) <= s00_couplers_to_s00_couplers_AWREADY(0);
  S_AXI_bid(15 downto 0) <= s00_couplers_to_s00_couplers_BID(15 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s00_couplers_to_s00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rid(15 downto 0) <= s00_couplers_to_s00_couplers_RID(15 downto 0);
  S_AXI_rlast(0) <= s00_couplers_to_s00_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_s00_couplers_RVALID(0);
  S_AXI_wready(0) <= s00_couplers_to_s00_couplers_WREADY(0);
  s00_couplers_to_s00_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  s00_couplers_to_s00_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_s00_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_s00_couplers_ARID(15 downto 0) <= S_AXI_arid(15 downto 0);
  s00_couplers_to_s00_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_s00_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_s00_couplers_ARREADY(0) <= M_AXI_arready(0);
  s00_couplers_to_s00_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_s00_couplers_ARUSER(15 downto 0) <= S_AXI_aruser(15 downto 0);
  s00_couplers_to_s00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_s00_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  s00_couplers_to_s00_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_s00_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_s00_couplers_AWID(15 downto 0) <= S_AXI_awid(15 downto 0);
  s00_couplers_to_s00_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_s00_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_s00_couplers_AWREADY(0) <= M_AXI_awready(0);
  s00_couplers_to_s00_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_s00_couplers_AWUSER(15 downto 0) <= S_AXI_awuser(15 downto 0);
  s00_couplers_to_s00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s00_couplers_to_s00_couplers_BID(15 downto 0) <= M_AXI_bid(15 downto 0);
  s00_couplers_to_s00_couplers_BREADY(0) <= S_AXI_bready(0);
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RID(15 downto 0) <= M_AXI_rid(15 downto 0);
  s00_couplers_to_s00_couplers_RLAST(0) <= M_AXI_rlast(0);
  s00_couplers_to_s00_couplers_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WLAST(0) <= S_AXI_wlast(0);
  s00_couplers_to_s00_couplers_WREADY(0) <= M_AXI_wready(0);
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1UZ280X is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_aruser : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awuser : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_1UZ280X;

architecture STRUCTURE of s00_couplers_imp_1UZ280X is
  component top_auto_cc_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component top_auto_cc_1;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_cc_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_cc_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_cc_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s00_couplers_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_cc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_cc_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_cc_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_cc_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s00_couplers_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_cc_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_cc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_cc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_cc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal auto_cc_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_cc_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_cc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_cc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_cc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal auto_cc_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_cc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_cc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_cc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_cc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_cc_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_cc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_cc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_cc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_cc_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_cc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_cc_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_cc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_cc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_cc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_cc_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_cc_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_auto_cc_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_auto_cc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal NLW_auto_cc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_cc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(39 downto 0) <= auto_cc_to_s00_couplers_ARADDR(39 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_cc_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_cc_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(1 downto 0) <= auto_cc_to_s00_couplers_ARID(1 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_cc_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= auto_cc_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_cc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_cc_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_cc_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_aruser <= auto_cc_to_s00_couplers_ARUSER(0);
  M_AXI_arvalid <= auto_cc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= auto_cc_to_s00_couplers_AWADDR(39 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_cc_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_cc_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(1 downto 0) <= auto_cc_to_s00_couplers_AWID(1 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_cc_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= auto_cc_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_cc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_cc_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_cc_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awuser <= auto_cc_to_s00_couplers_AWUSER(0);
  M_AXI_awvalid <= auto_cc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_cc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_cc_to_s00_couplers_RREADY;
  M_AXI_wdata(127 downto 0) <= auto_cc_to_s00_couplers_WDATA(127 downto 0);
  M_AXI_wlast <= auto_cc_to_s00_couplers_WLAST;
  M_AXI_wstrb(15 downto 0) <= auto_cc_to_s00_couplers_WSTRB(15 downto 0);
  M_AXI_wvalid <= auto_cc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_cc_AWREADY;
  S_AXI_bid(1 downto 0) <= s00_couplers_to_auto_cc_BID(1 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(127 downto 0) <= s00_couplers_to_auto_cc_RDATA(127 downto 0);
  S_AXI_rid(1 downto 0) <= s00_couplers_to_auto_cc_RID(1 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_cc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_cc_WREADY;
  auto_cc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_cc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_cc_to_s00_couplers_BID(5 downto 0) <= M_AXI_bid(5 downto 0);
  auto_cc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_cc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_cc_to_s00_couplers_RDATA(127 downto 0) <= M_AXI_rdata(127 downto 0);
  auto_cc_to_s00_couplers_RID(5 downto 0) <= M_AXI_rid(5 downto 0);
  auto_cc_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_cc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_cc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_cc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_cc_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  s00_couplers_to_auto_cc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_cc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_cc_ARID(1 downto 0) <= S_AXI_arid(1 downto 0);
  s00_couplers_to_auto_cc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_cc_ARLOCK(0) <= S_AXI_arlock(0);
  s00_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_cc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_cc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_cc_ARUSER(0) <= S_AXI_aruser(0);
  s00_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_cc_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  s00_couplers_to_auto_cc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_cc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_cc_AWID(1 downto 0) <= S_AXI_awid(1 downto 0);
  s00_couplers_to_auto_cc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_cc_AWLOCK(0) <= S_AXI_awlock(0);
  s00_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_cc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_cc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_cc_AWUSER(0) <= S_AXI_awuser(0);
  s00_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_cc_WDATA(127 downto 0) <= S_AXI_wdata(127 downto 0);
  s00_couplers_to_auto_cc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_cc_WSTRB(15 downto 0) <= S_AXI_wstrb(15 downto 0);
  s00_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
auto_cc: component top_auto_cc_1
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(39 downto 0) => auto_cc_to_s00_couplers_ARADDR(39 downto 0),
      m_axi_arburst(1 downto 0) => auto_cc_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_cc_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arid(1 downto 0) => auto_cc_to_s00_couplers_ARID(1 downto 0),
      m_axi_arlen(7 downto 0) => auto_cc_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_cc_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_cc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_cc_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_cc_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_cc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_cc_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_aruser(0) => auto_cc_to_s00_couplers_ARUSER(0),
      m_axi_arvalid => auto_cc_to_s00_couplers_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_cc_to_s00_couplers_AWADDR(39 downto 0),
      m_axi_awburst(1 downto 0) => auto_cc_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_cc_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(1 downto 0) => auto_cc_to_s00_couplers_AWID(1 downto 0),
      m_axi_awlen(7 downto 0) => auto_cc_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_cc_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_cc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_cc_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_cc_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_cc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_cc_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awuser(0) => auto_cc_to_s00_couplers_AWUSER(0),
      m_axi_awvalid => auto_cc_to_s00_couplers_AWVALID,
      m_axi_bid(1 downto 0) => auto_cc_to_s00_couplers_BID(1 downto 0),
      m_axi_bready => auto_cc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_s00_couplers_BVALID,
      m_axi_rdata(127 downto 0) => auto_cc_to_s00_couplers_RDATA(127 downto 0),
      m_axi_rid(1 downto 0) => auto_cc_to_s00_couplers_RID(1 downto 0),
      m_axi_rlast => auto_cc_to_s00_couplers_RLAST,
      m_axi_rready => auto_cc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_s00_couplers_RVALID,
      m_axi_wdata(127 downto 0) => auto_cc_to_s00_couplers_WDATA(127 downto 0),
      m_axi_wlast => auto_cc_to_s00_couplers_WLAST,
      m_axi_wready => auto_cc_to_s00_couplers_WREADY,
      m_axi_wstrb(15 downto 0) => auto_cc_to_s00_couplers_WSTRB(15 downto 0),
      m_axi_wvalid => auto_cc_to_s00_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(39 downto 0) => s00_couplers_to_auto_cc_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_cc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_cc_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(1 downto 0) => s00_couplers_to_auto_cc_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_cc_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_auto_cc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_cc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_cc_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_cc_ARSIZE(2 downto 0),
      s_axi_aruser(0) => s00_couplers_to_auto_cc_ARUSER(0),
      s_axi_arvalid => s00_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(39 downto 0) => s00_couplers_to_auto_cc_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_cc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_cc_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => s00_couplers_to_auto_cc_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_cc_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_auto_cc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_cc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_cc_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_cc_AWSIZE(2 downto 0),
      s_axi_awuser(0) => s00_couplers_to_auto_cc_AWUSER(0),
      s_axi_awvalid => s00_couplers_to_auto_cc_AWVALID,
      s_axi_bid(1 downto 0) => s00_couplers_to_auto_cc_BID(1 downto 0),
      s_axi_bready => s00_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_cc_BVALID,
      s_axi_rdata(127 downto 0) => s00_couplers_to_auto_cc_RDATA(127 downto 0),
      s_axi_rid(1 downto 0) => s00_couplers_to_auto_cc_RID(1 downto 0),
      s_axi_rlast => s00_couplers_to_auto_cc_RLAST,
      s_axi_rready => s00_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_cc_RVALID,
      s_axi_wdata(127 downto 0) => s00_couplers_to_auto_cc_WDATA(127 downto 0),
      s_axi_wlast => s00_couplers_to_auto_cc_WLAST,
      s_axi_wready => s00_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(15 downto 0) => s00_couplers_to_auto_cc_WSTRB(15 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_cc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_UQ15FJ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_aruser : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awuser : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_UQ15FJ;

architecture STRUCTURE of s00_couplers_imp_UQ15FJ is
  component top_auto_cc_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component top_auto_cc_2;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_cc_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_cc_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_cc_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s00_couplers_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_cc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_cc_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_cc_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_cc_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s00_couplers_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_cc_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_cc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_cc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_cc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal auto_cc_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_cc_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_cc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_cc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_cc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal auto_cc_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_cc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_cc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_cc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_cc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_cc_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_cc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_cc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_cc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_cc_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_cc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_cc_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_cc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_cc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_cc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_cc_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_cc_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_auto_cc_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_auto_cc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal NLW_auto_cc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_cc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(39 downto 0) <= auto_cc_to_s00_couplers_ARADDR(39 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_cc_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_cc_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(1 downto 0) <= auto_cc_to_s00_couplers_ARID(1 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_cc_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= auto_cc_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_cc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_cc_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_cc_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_aruser <= auto_cc_to_s00_couplers_ARUSER(0);
  M_AXI_arvalid <= auto_cc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= auto_cc_to_s00_couplers_AWADDR(39 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_cc_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_cc_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(1 downto 0) <= auto_cc_to_s00_couplers_AWID(1 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_cc_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= auto_cc_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_cc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_cc_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_cc_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awuser <= auto_cc_to_s00_couplers_AWUSER(0);
  M_AXI_awvalid <= auto_cc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_cc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_cc_to_s00_couplers_RREADY;
  M_AXI_wdata(127 downto 0) <= auto_cc_to_s00_couplers_WDATA(127 downto 0);
  M_AXI_wlast <= auto_cc_to_s00_couplers_WLAST;
  M_AXI_wstrb(15 downto 0) <= auto_cc_to_s00_couplers_WSTRB(15 downto 0);
  M_AXI_wvalid <= auto_cc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_cc_AWREADY;
  S_AXI_bid(1 downto 0) <= s00_couplers_to_auto_cc_BID(1 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(127 downto 0) <= s00_couplers_to_auto_cc_RDATA(127 downto 0);
  S_AXI_rid(1 downto 0) <= s00_couplers_to_auto_cc_RID(1 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_cc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_cc_WREADY;
  auto_cc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_cc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_cc_to_s00_couplers_BID(5 downto 0) <= M_AXI_bid(5 downto 0);
  auto_cc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_cc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_cc_to_s00_couplers_RDATA(127 downto 0) <= M_AXI_rdata(127 downto 0);
  auto_cc_to_s00_couplers_RID(5 downto 0) <= M_AXI_rid(5 downto 0);
  auto_cc_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_cc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_cc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_cc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_cc_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  s00_couplers_to_auto_cc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_cc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_cc_ARID(1 downto 0) <= S_AXI_arid(1 downto 0);
  s00_couplers_to_auto_cc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_cc_ARLOCK(0) <= S_AXI_arlock(0);
  s00_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_cc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_cc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_cc_ARUSER(0) <= S_AXI_aruser(0);
  s00_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_cc_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  s00_couplers_to_auto_cc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_cc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_cc_AWID(1 downto 0) <= S_AXI_awid(1 downto 0);
  s00_couplers_to_auto_cc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_cc_AWLOCK(0) <= S_AXI_awlock(0);
  s00_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_cc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_cc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_cc_AWUSER(0) <= S_AXI_awuser(0);
  s00_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_cc_WDATA(127 downto 0) <= S_AXI_wdata(127 downto 0);
  s00_couplers_to_auto_cc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_cc_WSTRB(15 downto 0) <= S_AXI_wstrb(15 downto 0);
  s00_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
auto_cc: component top_auto_cc_2
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(39 downto 0) => auto_cc_to_s00_couplers_ARADDR(39 downto 0),
      m_axi_arburst(1 downto 0) => auto_cc_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_cc_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arid(1 downto 0) => auto_cc_to_s00_couplers_ARID(1 downto 0),
      m_axi_arlen(7 downto 0) => auto_cc_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_cc_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_cc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_cc_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_cc_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_cc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_cc_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_aruser(0) => auto_cc_to_s00_couplers_ARUSER(0),
      m_axi_arvalid => auto_cc_to_s00_couplers_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_cc_to_s00_couplers_AWADDR(39 downto 0),
      m_axi_awburst(1 downto 0) => auto_cc_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_cc_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(1 downto 0) => auto_cc_to_s00_couplers_AWID(1 downto 0),
      m_axi_awlen(7 downto 0) => auto_cc_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_cc_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_cc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_cc_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_cc_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_cc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_cc_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awuser(0) => auto_cc_to_s00_couplers_AWUSER(0),
      m_axi_awvalid => auto_cc_to_s00_couplers_AWVALID,
      m_axi_bid(1 downto 0) => auto_cc_to_s00_couplers_BID(1 downto 0),
      m_axi_bready => auto_cc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_s00_couplers_BVALID,
      m_axi_rdata(127 downto 0) => auto_cc_to_s00_couplers_RDATA(127 downto 0),
      m_axi_rid(1 downto 0) => auto_cc_to_s00_couplers_RID(1 downto 0),
      m_axi_rlast => auto_cc_to_s00_couplers_RLAST,
      m_axi_rready => auto_cc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_s00_couplers_RVALID,
      m_axi_wdata(127 downto 0) => auto_cc_to_s00_couplers_WDATA(127 downto 0),
      m_axi_wlast => auto_cc_to_s00_couplers_WLAST,
      m_axi_wready => auto_cc_to_s00_couplers_WREADY,
      m_axi_wstrb(15 downto 0) => auto_cc_to_s00_couplers_WSTRB(15 downto 0),
      m_axi_wvalid => auto_cc_to_s00_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(39 downto 0) => s00_couplers_to_auto_cc_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_cc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_cc_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(1 downto 0) => s00_couplers_to_auto_cc_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_cc_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_auto_cc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_cc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_cc_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_cc_ARSIZE(2 downto 0),
      s_axi_aruser(0) => s00_couplers_to_auto_cc_ARUSER(0),
      s_axi_arvalid => s00_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(39 downto 0) => s00_couplers_to_auto_cc_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_cc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_cc_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => s00_couplers_to_auto_cc_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_cc_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_auto_cc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_cc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_cc_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_cc_AWSIZE(2 downto 0),
      s_axi_awuser(0) => s00_couplers_to_auto_cc_AWUSER(0),
      s_axi_awvalid => s00_couplers_to_auto_cc_AWVALID,
      s_axi_bid(1 downto 0) => s00_couplers_to_auto_cc_BID(1 downto 0),
      s_axi_bready => s00_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_cc_BVALID,
      s_axi_rdata(127 downto 0) => s00_couplers_to_auto_cc_RDATA(127 downto 0),
      s_axi_rid(1 downto 0) => s00_couplers_to_auto_cc_RID(1 downto 0),
      s_axi_rlast => s00_couplers_to_auto_cc_RLAST,
      s_axi_rready => s00_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_cc_RVALID,
      s_axi_wdata(127 downto 0) => s00_couplers_to_auto_cc_WDATA(127 downto 0),
      s_axi_wlast => s00_couplers_to_auto_cc_WLAST,
      s_axi_wready => s00_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(15 downto 0) => s00_couplers_to_auto_cc_WSTRB(15 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_cc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_VZUKLR is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_aruser : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awuser : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_VZUKLR;

architecture STRUCTURE of s00_couplers_imp_VZUKLR is
  component top_auto_cc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component top_auto_cc_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_cc_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_cc_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_cc_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s00_couplers_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_cc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_cc_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_cc_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_cc_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s00_couplers_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_cc_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_cc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_cc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_cc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_cc_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_cc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_cc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_cc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_cc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_cc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_cc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_cc_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_cc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_cc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_cc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_cc_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_cc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_cc_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_cc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_cc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_cc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_cc_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_cc_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_cc_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_cc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal NLW_auto_cc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_cc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(39 downto 0) <= auto_cc_to_s00_couplers_ARADDR(39 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_cc_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_cc_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(1 downto 0) <= auto_cc_to_s00_couplers_ARID(1 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_cc_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= auto_cc_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_cc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_cc_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_cc_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_aruser <= auto_cc_to_s00_couplers_ARUSER(0);
  M_AXI_arvalid <= auto_cc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= auto_cc_to_s00_couplers_AWADDR(39 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_cc_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_cc_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(1 downto 0) <= auto_cc_to_s00_couplers_AWID(1 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_cc_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= auto_cc_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_cc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_cc_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_cc_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awuser <= auto_cc_to_s00_couplers_AWUSER(0);
  M_AXI_awvalid <= auto_cc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_cc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_cc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_cc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_cc_to_s00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_cc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_cc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_cc_AWREADY;
  S_AXI_bid(1 downto 0) <= s00_couplers_to_auto_cc_BID(1 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rid(1 downto 0) <= s00_couplers_to_auto_cc_RID(1 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_cc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_cc_WREADY;
  auto_cc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_cc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_cc_to_s00_couplers_BID(5 downto 0) <= M_AXI_bid(5 downto 0);
  auto_cc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_cc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_cc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_cc_to_s00_couplers_RID(5 downto 0) <= M_AXI_rid(5 downto 0);
  auto_cc_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_cc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_cc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_cc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_cc_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  s00_couplers_to_auto_cc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_cc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_cc_ARID(1 downto 0) <= S_AXI_arid(1 downto 0);
  s00_couplers_to_auto_cc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_cc_ARLOCK(0) <= S_AXI_arlock(0);
  s00_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_cc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_cc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_cc_ARUSER(0) <= S_AXI_aruser(0);
  s00_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_cc_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  s00_couplers_to_auto_cc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_cc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_cc_AWID(1 downto 0) <= S_AXI_awid(1 downto 0);
  s00_couplers_to_auto_cc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_cc_AWLOCK(0) <= S_AXI_awlock(0);
  s00_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_cc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_cc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_cc_AWUSER(0) <= S_AXI_awuser(0);
  s00_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_cc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
auto_cc: component top_auto_cc_0
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(39 downto 0) => auto_cc_to_s00_couplers_ARADDR(39 downto 0),
      m_axi_arburst(1 downto 0) => auto_cc_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_cc_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arid(1 downto 0) => auto_cc_to_s00_couplers_ARID(1 downto 0),
      m_axi_arlen(7 downto 0) => auto_cc_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_cc_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_cc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_cc_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_cc_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_cc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_cc_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_aruser(0) => auto_cc_to_s00_couplers_ARUSER(0),
      m_axi_arvalid => auto_cc_to_s00_couplers_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_cc_to_s00_couplers_AWADDR(39 downto 0),
      m_axi_awburst(1 downto 0) => auto_cc_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_cc_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(1 downto 0) => auto_cc_to_s00_couplers_AWID(1 downto 0),
      m_axi_awlen(7 downto 0) => auto_cc_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_cc_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_cc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_cc_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_cc_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_cc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_cc_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awuser(0) => auto_cc_to_s00_couplers_AWUSER(0),
      m_axi_awvalid => auto_cc_to_s00_couplers_AWVALID,
      m_axi_bid(1 downto 0) => auto_cc_to_s00_couplers_BID(1 downto 0),
      m_axi_bready => auto_cc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rid(1 downto 0) => auto_cc_to_s00_couplers_RID(1 downto 0),
      m_axi_rlast => auto_cc_to_s00_couplers_RLAST,
      m_axi_rready => auto_cc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_cc_to_s00_couplers_WLAST,
      m_axi_wready => auto_cc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_s00_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(39 downto 0) => s00_couplers_to_auto_cc_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_cc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_cc_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(1 downto 0) => s00_couplers_to_auto_cc_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_cc_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_auto_cc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_cc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_cc_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_cc_ARSIZE(2 downto 0),
      s_axi_aruser(0) => s00_couplers_to_auto_cc_ARUSER(0),
      s_axi_arvalid => s00_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(39 downto 0) => s00_couplers_to_auto_cc_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_cc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_cc_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => s00_couplers_to_auto_cc_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_cc_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_auto_cc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_cc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_cc_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_cc_AWSIZE(2 downto 0),
      s_axi_awuser(0) => s00_couplers_to_auto_cc_AWUSER(0),
      s_axi_awvalid => s00_couplers_to_auto_cc_AWVALID,
      s_axi_bid(1 downto 0) => s00_couplers_to_auto_cc_BID(1 downto 0),
      s_axi_bready => s00_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rid(1 downto 0) => s00_couplers_to_auto_cc_RID(1 downto 0),
      s_axi_rlast => s00_couplers_to_auto_cc_RLAST,
      s_axi_rready => s00_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wlast => s00_couplers_to_auto_cc_WLAST,
      s_axi_wready => s00_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_cc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_axi_interconnect_0_1 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M01_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M01_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M01_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M01_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    M01_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end top_axi_interconnect_0_1;

architecture STRUCTURE of top_axi_interconnect_0_1 is
  component top_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 119 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 119 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component top_xbar_1;
  signal axi_interconnect_0_ACLK_net : STD_LOGIC;
  signal axi_interconnect_0_ARESETN_net : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 79 downto 40 );
  signal xbar_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARID : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal xbar_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARUSER : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 79 downto 40 );
  signal xbar_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWID : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal xbar_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_AWREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWUSER : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xbar_to_m01_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 119 downto 80 );
  signal xbar_to_m02_couplers_ARBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARID : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal xbar_to_m02_couplers_ARLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 119 downto 80 );
  signal xbar_to_m02_couplers_AWBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWID : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal xbar_to_m02_couplers_AWLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xbar_to_m02_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_xbar_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  M00_AXI_araddr(39 downto 0) <= m00_couplers_to_axi_interconnect_0_ARADDR(39 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_axi_interconnect_0_ARPROT(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_interconnect_0_ARVALID;
  M00_AXI_awaddr(39 downto 0) <= m00_couplers_to_axi_interconnect_0_AWADDR(39 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_axi_interconnect_0_AWPROT(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_interconnect_0_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_interconnect_0_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_interconnect_0_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_interconnect_0_WVALID;
  M01_AXI_araddr(39 downto 0) <= m01_couplers_to_axi_interconnect_0_ARADDR(39 downto 0);
  M01_AXI_arburst(1 downto 0) <= m01_couplers_to_axi_interconnect_0_ARBURST(1 downto 0);
  M01_AXI_arcache(3 downto 0) <= m01_couplers_to_axi_interconnect_0_ARCACHE(3 downto 0);
  M01_AXI_arid(15 downto 0) <= m01_couplers_to_axi_interconnect_0_ARID(15 downto 0);
  M01_AXI_arlen(7 downto 0) <= m01_couplers_to_axi_interconnect_0_ARLEN(7 downto 0);
  M01_AXI_arlock(0) <= m01_couplers_to_axi_interconnect_0_ARLOCK(0);
  M01_AXI_arprot(2 downto 0) <= m01_couplers_to_axi_interconnect_0_ARPROT(2 downto 0);
  M01_AXI_arqos(3 downto 0) <= m01_couplers_to_axi_interconnect_0_ARQOS(3 downto 0);
  M01_AXI_arregion(3 downto 0) <= m01_couplers_to_axi_interconnect_0_ARREGION(3 downto 0);
  M01_AXI_arsize(2 downto 0) <= m01_couplers_to_axi_interconnect_0_ARSIZE(2 downto 0);
  M01_AXI_aruser(15 downto 0) <= m01_couplers_to_axi_interconnect_0_ARUSER(15 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_axi_interconnect_0_ARVALID(0);
  M01_AXI_awaddr(39 downto 0) <= m01_couplers_to_axi_interconnect_0_AWADDR(39 downto 0);
  M01_AXI_awburst(1 downto 0) <= m01_couplers_to_axi_interconnect_0_AWBURST(1 downto 0);
  M01_AXI_awcache(3 downto 0) <= m01_couplers_to_axi_interconnect_0_AWCACHE(3 downto 0);
  M01_AXI_awid(15 downto 0) <= m01_couplers_to_axi_interconnect_0_AWID(15 downto 0);
  M01_AXI_awlen(7 downto 0) <= m01_couplers_to_axi_interconnect_0_AWLEN(7 downto 0);
  M01_AXI_awlock(0) <= m01_couplers_to_axi_interconnect_0_AWLOCK(0);
  M01_AXI_awprot(2 downto 0) <= m01_couplers_to_axi_interconnect_0_AWPROT(2 downto 0);
  M01_AXI_awqos(3 downto 0) <= m01_couplers_to_axi_interconnect_0_AWQOS(3 downto 0);
  M01_AXI_awregion(3 downto 0) <= m01_couplers_to_axi_interconnect_0_AWREGION(3 downto 0);
  M01_AXI_awsize(2 downto 0) <= m01_couplers_to_axi_interconnect_0_AWSIZE(2 downto 0);
  M01_AXI_awuser(15 downto 0) <= m01_couplers_to_axi_interconnect_0_AWUSER(15 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_axi_interconnect_0_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_axi_interconnect_0_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_axi_interconnect_0_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M01_AXI_wlast(0) <= m01_couplers_to_axi_interconnect_0_WLAST(0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_axi_interconnect_0_WVALID(0);
  M02_AXI_araddr(39 downto 0) <= m02_couplers_to_axi_interconnect_0_ARADDR(39 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_axi_interconnect_0_ARVALID;
  M02_AXI_awaddr(39 downto 0) <= m02_couplers_to_axi_interconnect_0_AWADDR(39 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_axi_interconnect_0_AWVALID;
  M02_AXI_bready <= m02_couplers_to_axi_interconnect_0_BREADY;
  M02_AXI_rready <= m02_couplers_to_axi_interconnect_0_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_axi_interconnect_0_WVALID;
  S00_AXI_arready(0) <= axi_interconnect_0_to_s00_couplers_ARREADY(0);
  S00_AXI_awready(0) <= axi_interconnect_0_to_s00_couplers_AWREADY(0);
  S00_AXI_bid(15 downto 0) <= axi_interconnect_0_to_s00_couplers_BID(15 downto 0);
  S00_AXI_bresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= axi_interconnect_0_to_s00_couplers_BVALID(0);
  S00_AXI_rdata(31 downto 0) <= axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(15 downto 0) <= axi_interconnect_0_to_s00_couplers_RID(15 downto 0);
  S00_AXI_rlast(0) <= axi_interconnect_0_to_s00_couplers_RLAST(0);
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= axi_interconnect_0_to_s00_couplers_RVALID(0);
  S00_AXI_wready(0) <= axi_interconnect_0_to_s00_couplers_WREADY(0);
  axi_interconnect_0_ACLK_net <= ACLK;
  axi_interconnect_0_ARESETN_net <= ARESETN;
  axi_interconnect_0_to_s00_couplers_ARADDR(39 downto 0) <= S00_AXI_araddr(39 downto 0);
  axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARID(15 downto 0) <= S00_AXI_arid(15 downto 0);
  axi_interconnect_0_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_interconnect_0_to_s00_couplers_ARLOCK(0) <= S00_AXI_arlock(0);
  axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARUSER(15 downto 0) <= S00_AXI_aruser(15 downto 0);
  axi_interconnect_0_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  axi_interconnect_0_to_s00_couplers_AWADDR(39 downto 0) <= S00_AXI_awaddr(39 downto 0);
  axi_interconnect_0_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_interconnect_0_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_interconnect_0_to_s00_couplers_AWID(15 downto 0) <= S00_AXI_awid(15 downto 0);
  axi_interconnect_0_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  axi_interconnect_0_to_s00_couplers_AWLOCK(0) <= S00_AXI_awlock(0);
  axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  axi_interconnect_0_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWUSER(15 downto 0) <= S00_AXI_awuser(15 downto 0);
  axi_interconnect_0_to_s00_couplers_AWVALID(0) <= S00_AXI_awvalid(0);
  axi_interconnect_0_to_s00_couplers_BREADY(0) <= S00_AXI_bready(0);
  axi_interconnect_0_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_interconnect_0_to_s00_couplers_WLAST(0) <= S00_AXI_wlast(0);
  axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_interconnect_0_to_s00_couplers_WVALID(0) <= S00_AXI_wvalid(0);
  m00_couplers_to_axi_interconnect_0_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_interconnect_0_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_interconnect_0_WREADY <= M00_AXI_wready;
  m01_couplers_to_axi_interconnect_0_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_axi_interconnect_0_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_axi_interconnect_0_BID(15 downto 0) <= M01_AXI_bid(15 downto 0);
  m01_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_axi_interconnect_0_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_axi_interconnect_0_RID(15 downto 0) <= M01_AXI_rid(15 downto 0);
  m01_couplers_to_axi_interconnect_0_RLAST(0) <= M01_AXI_rlast(0);
  m01_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_axi_interconnect_0_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_axi_interconnect_0_WREADY(0) <= M01_AXI_wready(0);
  m02_couplers_to_axi_interconnect_0_ARREADY <= M02_AXI_arready;
  m02_couplers_to_axi_interconnect_0_AWREADY <= M02_AXI_awready;
  m02_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_axi_interconnect_0_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_axi_interconnect_0_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_axi_interconnect_0_WREADY <= M02_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_ZF07WE
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m00_couplers_to_axi_interconnect_0_ARADDR(39 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_axi_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arready => m00_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m00_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(39 downto 0) => m00_couplers_to_axi_interconnect_0_AWADDR(39 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_axi_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awready => m00_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m00_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m00_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m00_couplers_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(15 downto 0) => xbar_to_m00_couplers_ARID(15 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(39 downto 0) => xbar_to_m00_couplers_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(15 downto 0) => xbar_to_m00_couplers_AWID(15 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(15 downto 0) => xbar_to_m00_couplers_BID(15 downto 0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rid(15 downto 0) => xbar_to_m00_couplers_RID(15 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_19072BF
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m01_couplers_to_axi_interconnect_0_ARADDR(39 downto 0),
      M_AXI_arburst(1 downto 0) => m01_couplers_to_axi_interconnect_0_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m01_couplers_to_axi_interconnect_0_ARCACHE(3 downto 0),
      M_AXI_arid(15 downto 0) => m01_couplers_to_axi_interconnect_0_ARID(15 downto 0),
      M_AXI_arlen(7 downto 0) => m01_couplers_to_axi_interconnect_0_ARLEN(7 downto 0),
      M_AXI_arlock(0) => m01_couplers_to_axi_interconnect_0_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => m01_couplers_to_axi_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m01_couplers_to_axi_interconnect_0_ARQOS(3 downto 0),
      M_AXI_arready(0) => m01_couplers_to_axi_interconnect_0_ARREADY(0),
      M_AXI_arregion(3 downto 0) => m01_couplers_to_axi_interconnect_0_ARREGION(3 downto 0),
      M_AXI_arsize(2 downto 0) => m01_couplers_to_axi_interconnect_0_ARSIZE(2 downto 0),
      M_AXI_aruser(15 downto 0) => m01_couplers_to_axi_interconnect_0_ARUSER(15 downto 0),
      M_AXI_arvalid(0) => m01_couplers_to_axi_interconnect_0_ARVALID(0),
      M_AXI_awaddr(39 downto 0) => m01_couplers_to_axi_interconnect_0_AWADDR(39 downto 0),
      M_AXI_awburst(1 downto 0) => m01_couplers_to_axi_interconnect_0_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m01_couplers_to_axi_interconnect_0_AWCACHE(3 downto 0),
      M_AXI_awid(15 downto 0) => m01_couplers_to_axi_interconnect_0_AWID(15 downto 0),
      M_AXI_awlen(7 downto 0) => m01_couplers_to_axi_interconnect_0_AWLEN(7 downto 0),
      M_AXI_awlock(0) => m01_couplers_to_axi_interconnect_0_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => m01_couplers_to_axi_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m01_couplers_to_axi_interconnect_0_AWQOS(3 downto 0),
      M_AXI_awready(0) => m01_couplers_to_axi_interconnect_0_AWREADY(0),
      M_AXI_awregion(3 downto 0) => m01_couplers_to_axi_interconnect_0_AWREGION(3 downto 0),
      M_AXI_awsize(2 downto 0) => m01_couplers_to_axi_interconnect_0_AWSIZE(2 downto 0),
      M_AXI_awuser(15 downto 0) => m01_couplers_to_axi_interconnect_0_AWUSER(15 downto 0),
      M_AXI_awvalid(0) => m01_couplers_to_axi_interconnect_0_AWVALID(0),
      M_AXI_bid(15 downto 0) => m01_couplers_to_axi_interconnect_0_BID(15 downto 0),
      M_AXI_bready(0) => m01_couplers_to_axi_interconnect_0_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_axi_interconnect_0_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rid(15 downto 0) => m01_couplers_to_axi_interconnect_0_RID(15 downto 0),
      M_AXI_rlast(0) => m01_couplers_to_axi_interconnect_0_RLAST(0),
      M_AXI_rready(0) => m01_couplers_to_axi_interconnect_0_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_axi_interconnect_0_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wlast(0) => m01_couplers_to_axi_interconnect_0_WLAST(0),
      M_AXI_wready(0) => m01_couplers_to_axi_interconnect_0_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m01_couplers_to_axi_interconnect_0_WVALID(0),
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m01_couplers_ARADDR(79 downto 40),
      S_AXI_arburst(1 downto 0) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      S_AXI_arcache(3 downto 0) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      S_AXI_arid(15 downto 0) => xbar_to_m01_couplers_ARID(31 downto 16),
      S_AXI_arlen(7 downto 0) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      S_AXI_arlock(0) => xbar_to_m01_couplers_ARLOCK(1),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arqos(3 downto 0) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      S_AXI_arready(0) => xbar_to_m01_couplers_ARREADY(0),
      S_AXI_arregion(3 downto 0) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      S_AXI_arsize(2 downto 0) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      S_AXI_aruser(15 downto 0) => xbar_to_m01_couplers_ARUSER(31 downto 16),
      S_AXI_arvalid(0) => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(39 downto 0) => xbar_to_m01_couplers_AWADDR(79 downto 40),
      S_AXI_awburst(1 downto 0) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      S_AXI_awcache(3 downto 0) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      S_AXI_awid(15 downto 0) => xbar_to_m01_couplers_AWID(31 downto 16),
      S_AXI_awlen(7 downto 0) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      S_AXI_awlock(0) => xbar_to_m01_couplers_AWLOCK(1),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awqos(3 downto 0) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      S_AXI_awready(0) => xbar_to_m01_couplers_AWREADY(0),
      S_AXI_awregion(3 downto 0) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      S_AXI_awsize(2 downto 0) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      S_AXI_awuser(15 downto 0) => xbar_to_m01_couplers_AWUSER(31 downto 16),
      S_AXI_awvalid(0) => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bid(15 downto 0) => xbar_to_m01_couplers_BID(15 downto 0),
      S_AXI_bready(0) => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rid(15 downto 0) => xbar_to_m01_couplers_RID(15 downto 0),
      S_AXI_rlast(0) => xbar_to_m01_couplers_RLAST(0),
      S_AXI_rready(0) => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wlast(0) => xbar_to_m01_couplers_WLAST(1),
      S_AXI_wready(0) => xbar_to_m01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_8VE6K5
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m02_couplers_to_axi_interconnect_0_ARADDR(39 downto 0),
      M_AXI_arready => m02_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m02_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(39 downto 0) => m02_couplers_to_axi_interconnect_0_AWADDR(39 downto 0),
      M_AXI_awready => m02_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m02_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m02_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wvalid => m02_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m02_couplers_ARADDR(119 downto 80),
      S_AXI_arburst(1 downto 0) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      S_AXI_arcache(3 downto 0) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      S_AXI_arid(15 downto 0) => xbar_to_m02_couplers_ARID(47 downto 32),
      S_AXI_arlen(7 downto 0) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      S_AXI_arlock(0) => xbar_to_m02_couplers_ARLOCK(2),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arqos(3 downto 0) => xbar_to_m02_couplers_ARQOS(11 downto 8),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m02_couplers_ARREGION(11 downto 8),
      S_AXI_arsize(2 downto 0) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(39 downto 0) => xbar_to_m02_couplers_AWADDR(119 downto 80),
      S_AXI_awburst(1 downto 0) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      S_AXI_awcache(3 downto 0) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      S_AXI_awid(15 downto 0) => xbar_to_m02_couplers_AWID(47 downto 32),
      S_AXI_awlen(7 downto 0) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      S_AXI_awlock(0) => xbar_to_m02_couplers_AWLOCK(2),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awqos(3 downto 0) => xbar_to_m02_couplers_AWQOS(11 downto 8),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m02_couplers_AWREGION(11 downto 8),
      S_AXI_awsize(2 downto 0) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bid(15 downto 0) => xbar_to_m02_couplers_BID(15 downto 0),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rid(15 downto 0) => xbar_to_m02_couplers_RID(15 downto 0),
      S_AXI_rlast => xbar_to_m02_couplers_RLAST,
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wlast => xbar_to_m02_couplers_WLAST(2),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
s00_couplers: entity work.s00_couplers_imp_1NKMOJO
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_araddr(39 downto 0) => s00_couplers_to_xbar_ARADDR(39 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(15 downto 0) => s00_couplers_to_xbar_ARID(15 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_aruser(15 downto 0) => s00_couplers_to_xbar_ARUSER(15 downto 0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(39 downto 0) => s00_couplers_to_xbar_AWADDR(39 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(15 downto 0) => s00_couplers_to_xbar_AWID(15 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awuser(15 downto 0) => s00_couplers_to_xbar_AWUSER(15 downto 0),
      M_AXI_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      M_AXI_bid(15 downto 0) => s00_couplers_to_xbar_BID(15 downto 0),
      M_AXI_bready(0) => s00_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rid(15 downto 0) => s00_couplers_to_xbar_RID(15 downto 0),
      M_AXI_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast(0) => s00_couplers_to_xbar_WLAST(0),
      M_AXI_wready(0) => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s00_couplers_to_xbar_WVALID(0),
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(39 downto 0) => axi_interconnect_0_to_s00_couplers_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(15 downto 0) => axi_interconnect_0_to_s00_couplers_ARID(15 downto 0),
      S_AXI_arlen(7 downto 0) => axi_interconnect_0_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => axi_interconnect_0_to_s00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready(0) => axi_interconnect_0_to_s00_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_aruser(15 downto 0) => axi_interconnect_0_to_s00_couplers_ARUSER(15 downto 0),
      S_AXI_arvalid(0) => axi_interconnect_0_to_s00_couplers_ARVALID(0),
      S_AXI_awaddr(39 downto 0) => axi_interconnect_0_to_s00_couplers_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_0_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_0_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(15 downto 0) => axi_interconnect_0_to_s00_couplers_AWID(15 downto 0),
      S_AXI_awlen(7 downto 0) => axi_interconnect_0_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => axi_interconnect_0_to_s00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_interconnect_0_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready(0) => axi_interconnect_0_to_s00_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awuser(15 downto 0) => axi_interconnect_0_to_s00_couplers_AWUSER(15 downto 0),
      S_AXI_awvalid(0) => axi_interconnect_0_to_s00_couplers_AWVALID(0),
      S_AXI_bid(15 downto 0) => axi_interconnect_0_to_s00_couplers_BID(15 downto 0),
      S_AXI_bready(0) => axi_interconnect_0_to_s00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => axi_interconnect_0_to_s00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(15 downto 0) => axi_interconnect_0_to_s00_couplers_RID(15 downto 0),
      S_AXI_rlast(0) => axi_interconnect_0_to_s00_couplers_RLAST(0),
      S_AXI_rready(0) => axi_interconnect_0_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => axi_interconnect_0_to_s00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast(0) => axi_interconnect_0_to_s00_couplers_WLAST(0),
      S_AXI_wready(0) => axi_interconnect_0_to_s00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => axi_interconnect_0_to_s00_couplers_WVALID(0)
    );
xbar: component top_xbar_1
     port map (
      aclk => axi_interconnect_0_ACLK_net,
      aresetn => axi_interconnect_0_ARESETN_net,
      m_axi_araddr(119 downto 80) => xbar_to_m02_couplers_ARADDR(119 downto 80),
      m_axi_araddr(79 downto 40) => xbar_to_m01_couplers_ARADDR(79 downto 40),
      m_axi_araddr(39 downto 0) => xbar_to_m00_couplers_ARADDR(39 downto 0),
      m_axi_arburst(5 downto 4) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      m_axi_arburst(3 downto 2) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(11 downto 8) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      m_axi_arcache(7 downto 4) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(47 downto 32) => xbar_to_m02_couplers_ARID(47 downto 32),
      m_axi_arid(31 downto 16) => xbar_to_m01_couplers_ARID(31 downto 16),
      m_axi_arid(15 downto 0) => xbar_to_m00_couplers_ARID(15 downto 0),
      m_axi_arlen(23 downto 16) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      m_axi_arlen(15 downto 8) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(2) => xbar_to_m02_couplers_ARLOCK(2),
      m_axi_arlock(1) => xbar_to_m01_couplers_ARLOCK(1),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(11 downto 8) => xbar_to_m02_couplers_ARQOS(11 downto 8),
      m_axi_arqos(7 downto 4) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(11 downto 8) => xbar_to_m02_couplers_ARREGION(11 downto 8),
      m_axi_arregion(7 downto 4) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(8 downto 6) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      m_axi_arsize(5 downto 3) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_aruser(47 downto 32) => NLW_xbar_m_axi_aruser_UNCONNECTED(47 downto 32),
      m_axi_aruser(31 downto 16) => xbar_to_m01_couplers_ARUSER(31 downto 16),
      m_axi_aruser(15 downto 0) => NLW_xbar_m_axi_aruser_UNCONNECTED(15 downto 0),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(119 downto 80) => xbar_to_m02_couplers_AWADDR(119 downto 80),
      m_axi_awaddr(79 downto 40) => xbar_to_m01_couplers_AWADDR(79 downto 40),
      m_axi_awaddr(39 downto 0) => xbar_to_m00_couplers_AWADDR(39 downto 0),
      m_axi_awburst(5 downto 4) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      m_axi_awburst(3 downto 2) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(11 downto 8) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      m_axi_awcache(7 downto 4) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(47 downto 32) => xbar_to_m02_couplers_AWID(47 downto 32),
      m_axi_awid(31 downto 16) => xbar_to_m01_couplers_AWID(31 downto 16),
      m_axi_awid(15 downto 0) => xbar_to_m00_couplers_AWID(15 downto 0),
      m_axi_awlen(23 downto 16) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      m_axi_awlen(15 downto 8) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(2) => xbar_to_m02_couplers_AWLOCK(2),
      m_axi_awlock(1) => xbar_to_m01_couplers_AWLOCK(1),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(11 downto 8) => xbar_to_m02_couplers_AWQOS(11 downto 8),
      m_axi_awqos(7 downto 4) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(11 downto 8) => xbar_to_m02_couplers_AWREGION(11 downto 8),
      m_axi_awregion(7 downto 4) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(8 downto 6) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      m_axi_awsize(5 downto 3) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awuser(47 downto 32) => NLW_xbar_m_axi_awuser_UNCONNECTED(47 downto 32),
      m_axi_awuser(31 downto 16) => xbar_to_m01_couplers_AWUSER(31 downto 16),
      m_axi_awuser(15 downto 0) => NLW_xbar_m_axi_awuser_UNCONNECTED(15 downto 0),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(47 downto 32) => xbar_to_m02_couplers_BID(15 downto 0),
      m_axi_bid(31 downto 16) => xbar_to_m01_couplers_BID(15 downto 0),
      m_axi_bid(15 downto 0) => xbar_to_m00_couplers_BID(15 downto 0),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(47 downto 32) => xbar_to_m02_couplers_RID(15 downto 0),
      m_axi_rid(31 downto 16) => xbar_to_m01_couplers_RID(15 downto 0),
      m_axi_rid(15 downto 0) => xbar_to_m00_couplers_RID(15 downto 0),
      m_axi_rlast(2) => xbar_to_m02_couplers_RLAST,
      m_axi_rlast(1) => xbar_to_m01_couplers_RLAST(0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(2) => xbar_to_m02_couplers_WLAST(2),
      m_axi_wlast(1) => xbar_to_m01_couplers_WLAST(1),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(39 downto 0) => s00_couplers_to_xbar_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(15 downto 0) => s00_couplers_to_xbar_ARID(15 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_aruser(15 downto 0) => s00_couplers_to_xbar_ARUSER(15 downto 0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(39 downto 0) => s00_couplers_to_xbar_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(15 downto 0) => s00_couplers_to_xbar_AWID(15 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awuser(15 downto 0) => s00_couplers_to_xbar_AWUSER(15 downto 0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      s_axi_bid(15 downto 0) => s00_couplers_to_xbar_BID(15 downto 0),
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY(0),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rid(15 downto 0) => s00_couplers_to_xbar_RID(15 downto 0),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST(0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_dpu_intc_M_AXI_HP0_FPD_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC;
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_aruser : out STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC;
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awuser : out STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end top_dpu_intc_M_AXI_HP0_FPD_0;

architecture STRUCTURE of top_dpu_intc_M_AXI_HP0_FPD_0 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_ACLK_net : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_ARESETN_net : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RLAST : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WLAST : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARUSER : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWUSER : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RLAST : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WLAST : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WVALID : STD_LOGIC;
begin
  M00_AXI_araddr(39 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARADDR(39 downto 0);
  M00_AXI_arburst(1 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARCACHE(3 downto 0);
  M00_AXI_arid(1 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARID(1 downto 0);
  M00_AXI_arlen(7 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARLEN(7 downto 0);
  M00_AXI_arlock <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARLOCK;
  M00_AXI_arprot(2 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARSIZE(2 downto 0);
  M00_AXI_aruser <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARUSER;
  M00_AXI_arvalid <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARVALID;
  M00_AXI_awaddr(39 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWADDR(39 downto 0);
  M00_AXI_awburst(1 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWCACHE(3 downto 0);
  M00_AXI_awid(1 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWID(1 downto 0);
  M00_AXI_awlen(7 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWLEN(7 downto 0);
  M00_AXI_awlock <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWLOCK;
  M00_AXI_awprot(2 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWSIZE(2 downto 0);
  M00_AXI_awuser <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWUSER;
  M00_AXI_awvalid <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWVALID;
  M00_AXI_bready <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BREADY;
  M00_AXI_rready <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RREADY;
  M00_AXI_wdata(127 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WDATA(127 downto 0);
  M00_AXI_wlast <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WLAST;
  M00_AXI_wstrb(15 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WSTRB(15 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARREADY;
  S00_AXI_awready <= dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWREADY;
  S00_AXI_bid(1 downto 0) <= dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BID(1 downto 0);
  S00_AXI_bresp(1 downto 0) <= dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BVALID;
  S00_AXI_rdata(127 downto 0) <= dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RDATA(127 downto 0);
  S00_AXI_rid(1 downto 0) <= dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RID(1 downto 0);
  S00_AXI_rlast <= dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RVALID;
  S00_AXI_wready <= dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WREADY;
  dpu_intc_M_AXI_HP0_FPD_ACLK_net <= M00_ACLK;
  dpu_intc_M_AXI_HP0_FPD_ARESETN_net <= M00_ARESETN;
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARADDR(39 downto 0) <= S00_AXI_araddr(39 downto 0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARID(1 downto 0) <= S00_AXI_arid(1 downto 0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARLOCK(0) <= S00_AXI_arlock(0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARUSER(0) <= S00_AXI_aruser(0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWADDR(39 downto 0) <= S00_AXI_awaddr(39 downto 0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWID(1 downto 0) <= S00_AXI_awid(1 downto 0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWLOCK(0) <= S00_AXI_awlock(0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWUSER(0) <= S00_AXI_awuser(0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BREADY <= S00_AXI_bready;
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RREADY <= S00_AXI_rready;
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WDATA(127 downto 0) <= S00_AXI_wdata(127 downto 0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WLAST <= S00_AXI_wlast;
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WSTRB(15 downto 0) <= S00_AXI_wstrb(15 downto 0);
  dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARREADY <= M00_AXI_arready;
  s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWREADY <= M00_AXI_awready;
  s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BID(5 downto 0) <= M00_AXI_bid(5 downto 0);
  s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RDATA(127 downto 0) <= M00_AXI_rdata(127 downto 0);
  s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RID(5 downto 0) <= M00_AXI_rid(5 downto 0);
  s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RLAST <= M00_AXI_rlast;
  s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_1UZ280X
     port map (
      M_ACLK => dpu_intc_M_AXI_HP0_FPD_ACLK_net,
      M_ARESETN => dpu_intc_M_AXI_HP0_FPD_ARESETN_net,
      M_AXI_araddr(39 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARADDR(39 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARCACHE(3 downto 0),
      M_AXI_arid(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARID(1 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARLEN(7 downto 0),
      M_AXI_arlock => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARLOCK,
      M_AXI_arprot(2 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARREADY,
      M_AXI_arsize(2 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARSIZE(2 downto 0),
      M_AXI_aruser => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARUSER,
      M_AXI_arvalid => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_ARVALID,
      M_AXI_awaddr(39 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWADDR(39 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWCACHE(3 downto 0),
      M_AXI_awid(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWID(1 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWLEN(7 downto 0),
      M_AXI_awlock => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWLOCK,
      M_AXI_awprot(2 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWREADY,
      M_AXI_awsize(2 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWSIZE(2 downto 0),
      M_AXI_awuser => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWUSER,
      M_AXI_awvalid => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_AWVALID,
      M_AXI_bid(5 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BID(5 downto 0),
      M_AXI_bready => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_BVALID,
      M_AXI_rdata(127 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RDATA(127 downto 0),
      M_AXI_rid(5 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RID(5 downto 0),
      M_AXI_rlast => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RLAST,
      M_AXI_rready => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_RVALID,
      M_AXI_wdata(127 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WDATA(127 downto 0),
      M_AXI_wlast => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WLAST,
      M_AXI_wready => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WREADY,
      M_AXI_wstrb(15 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WSTRB(15 downto 0),
      M_AXI_wvalid => s00_couplers_to_dpu_intc_M_AXI_HP0_FPD_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(39 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(1 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARID(1 downto 0),
      S_AXI_arlen(7 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_aruser(0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARUSER(0),
      S_AXI_arvalid => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_ARVALID,
      S_AXI_awaddr(39 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(1 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWID(1 downto 0),
      S_AXI_awlen(7 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awuser(0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWUSER(0),
      S_AXI_awvalid => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_AWVALID,
      S_AXI_bid(1 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BID(1 downto 0),
      S_AXI_bready => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_BVALID,
      S_AXI_rdata(127 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RDATA(127 downto 0),
      S_AXI_rid(1 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RID(1 downto 0),
      S_AXI_rlast => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RLAST,
      S_AXI_rready => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_RVALID,
      S_AXI_wdata(127 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WDATA(127 downto 0),
      S_AXI_wlast => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WLAST,
      S_AXI_wready => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WREADY,
      S_AXI_wstrb(15 downto 0) => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WSTRB(15 downto 0),
      S_AXI_wvalid => dpu_intc_M_AXI_HP0_FPD_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_dpu_intc_M_AXI_HP1_FPD_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC;
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_aruser : out STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC;
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awuser : out STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end top_dpu_intc_M_AXI_HP1_FPD_0;

architecture STRUCTURE of top_dpu_intc_M_AXI_HP1_FPD_0 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_ACLK_net : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_ARESETN_net : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RLAST : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WLAST : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARUSER : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWUSER : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RLAST : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WLAST : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WVALID : STD_LOGIC;
begin
  M00_AXI_araddr(39 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARADDR(39 downto 0);
  M00_AXI_arburst(1 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARCACHE(3 downto 0);
  M00_AXI_arid(1 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARID(1 downto 0);
  M00_AXI_arlen(7 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARLEN(7 downto 0);
  M00_AXI_arlock <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARLOCK;
  M00_AXI_arprot(2 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARSIZE(2 downto 0);
  M00_AXI_aruser <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARUSER;
  M00_AXI_arvalid <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARVALID;
  M00_AXI_awaddr(39 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWADDR(39 downto 0);
  M00_AXI_awburst(1 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWCACHE(3 downto 0);
  M00_AXI_awid(1 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWID(1 downto 0);
  M00_AXI_awlen(7 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWLEN(7 downto 0);
  M00_AXI_awlock <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWLOCK;
  M00_AXI_awprot(2 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWSIZE(2 downto 0);
  M00_AXI_awuser <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWUSER;
  M00_AXI_awvalid <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWVALID;
  M00_AXI_bready <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BREADY;
  M00_AXI_rready <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RREADY;
  M00_AXI_wdata(127 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WDATA(127 downto 0);
  M00_AXI_wlast <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WLAST;
  M00_AXI_wstrb(15 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WSTRB(15 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARREADY;
  S00_AXI_awready <= dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWREADY;
  S00_AXI_bid(1 downto 0) <= dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BID(1 downto 0);
  S00_AXI_bresp(1 downto 0) <= dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BVALID;
  S00_AXI_rdata(127 downto 0) <= dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RDATA(127 downto 0);
  S00_AXI_rid(1 downto 0) <= dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RID(1 downto 0);
  S00_AXI_rlast <= dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RVALID;
  S00_AXI_wready <= dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WREADY;
  dpu_intc_M_AXI_HP1_FPD_ACLK_net <= M00_ACLK;
  dpu_intc_M_AXI_HP1_FPD_ARESETN_net <= M00_ARESETN;
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARADDR(39 downto 0) <= S00_AXI_araddr(39 downto 0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARID(1 downto 0) <= S00_AXI_arid(1 downto 0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARLOCK(0) <= S00_AXI_arlock(0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARUSER(0) <= S00_AXI_aruser(0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWADDR(39 downto 0) <= S00_AXI_awaddr(39 downto 0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWID(1 downto 0) <= S00_AXI_awid(1 downto 0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWLOCK(0) <= S00_AXI_awlock(0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWUSER(0) <= S00_AXI_awuser(0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BREADY <= S00_AXI_bready;
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RREADY <= S00_AXI_rready;
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WDATA(127 downto 0) <= S00_AXI_wdata(127 downto 0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WLAST <= S00_AXI_wlast;
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WSTRB(15 downto 0) <= S00_AXI_wstrb(15 downto 0);
  dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARREADY <= M00_AXI_arready;
  s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWREADY <= M00_AXI_awready;
  s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BID(5 downto 0) <= M00_AXI_bid(5 downto 0);
  s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RDATA(127 downto 0) <= M00_AXI_rdata(127 downto 0);
  s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RID(5 downto 0) <= M00_AXI_rid(5 downto 0);
  s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RLAST <= M00_AXI_rlast;
  s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_UQ15FJ
     port map (
      M_ACLK => dpu_intc_M_AXI_HP1_FPD_ACLK_net,
      M_ARESETN => dpu_intc_M_AXI_HP1_FPD_ARESETN_net,
      M_AXI_araddr(39 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARADDR(39 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARCACHE(3 downto 0),
      M_AXI_arid(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARID(1 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARLEN(7 downto 0),
      M_AXI_arlock => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARLOCK,
      M_AXI_arprot(2 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARREADY,
      M_AXI_arsize(2 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARSIZE(2 downto 0),
      M_AXI_aruser => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARUSER,
      M_AXI_arvalid => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_ARVALID,
      M_AXI_awaddr(39 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWADDR(39 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWCACHE(3 downto 0),
      M_AXI_awid(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWID(1 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWLEN(7 downto 0),
      M_AXI_awlock => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWLOCK,
      M_AXI_awprot(2 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWREADY,
      M_AXI_awsize(2 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWSIZE(2 downto 0),
      M_AXI_awuser => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWUSER,
      M_AXI_awvalid => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_AWVALID,
      M_AXI_bid(5 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BID(5 downto 0),
      M_AXI_bready => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_BVALID,
      M_AXI_rdata(127 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RDATA(127 downto 0),
      M_AXI_rid(5 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RID(5 downto 0),
      M_AXI_rlast => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RLAST,
      M_AXI_rready => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_RVALID,
      M_AXI_wdata(127 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WDATA(127 downto 0),
      M_AXI_wlast => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WLAST,
      M_AXI_wready => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WREADY,
      M_AXI_wstrb(15 downto 0) => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WSTRB(15 downto 0),
      M_AXI_wvalid => s00_couplers_to_dpu_intc_M_AXI_HP1_FPD_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(39 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(1 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARID(1 downto 0),
      S_AXI_arlen(7 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_aruser(0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARUSER(0),
      S_AXI_arvalid => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_ARVALID,
      S_AXI_awaddr(39 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(1 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWID(1 downto 0),
      S_AXI_awlen(7 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awuser(0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWUSER(0),
      S_AXI_awvalid => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_AWVALID,
      S_AXI_bid(1 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BID(1 downto 0),
      S_AXI_bready => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_BVALID,
      S_AXI_rdata(127 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RDATA(127 downto 0),
      S_AXI_rid(1 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RID(1 downto 0),
      S_AXI_rlast => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RLAST,
      S_AXI_rready => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_RVALID,
      S_AXI_wdata(127 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WDATA(127 downto 0),
      S_AXI_wlast => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WLAST,
      S_AXI_wready => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WREADY,
      S_AXI_wstrb(15 downto 0) => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WSTRB(15 downto 0),
      S_AXI_wvalid => dpu_intc_M_AXI_HP1_FPD_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_dpu_intc_M_AXI_LPD_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC;
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_aruser : out STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC;
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awuser : out STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end top_dpu_intc_M_AXI_LPD_0;

architecture STRUCTURE of top_dpu_intc_M_AXI_LPD_0 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_ACLK_net : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_ARESETN_net : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_BREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_BVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_RLAST : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_RREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_RVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_WLAST : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_WREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARUSER : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWUSER : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_BREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_BVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_RLAST : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_RREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_RVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_WLAST : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_WREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_WVALID : STD_LOGIC;
begin
  M00_AXI_araddr(39 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARADDR(39 downto 0);
  M00_AXI_arburst(1 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARCACHE(3 downto 0);
  M00_AXI_arid(1 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARID(1 downto 0);
  M00_AXI_arlen(7 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARLEN(7 downto 0);
  M00_AXI_arlock <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARLOCK;
  M00_AXI_arprot(2 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARSIZE(2 downto 0);
  M00_AXI_aruser <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARUSER;
  M00_AXI_arvalid <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARVALID;
  M00_AXI_awaddr(39 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWADDR(39 downto 0);
  M00_AXI_awburst(1 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWCACHE(3 downto 0);
  M00_AXI_awid(1 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWID(1 downto 0);
  M00_AXI_awlen(7 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWLEN(7 downto 0);
  M00_AXI_awlock <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWLOCK;
  M00_AXI_awprot(2 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWSIZE(2 downto 0);
  M00_AXI_awuser <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWUSER;
  M00_AXI_awvalid <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWVALID;
  M00_AXI_bready <= s00_couplers_to_dpu_intc_M_AXI_LPD_BREADY;
  M00_AXI_rready <= s00_couplers_to_dpu_intc_M_AXI_LPD_RREADY;
  M00_AXI_wdata(31 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_WDATA(31 downto 0);
  M00_AXI_wlast <= s00_couplers_to_dpu_intc_M_AXI_LPD_WLAST;
  M00_AXI_wstrb(3 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_WSTRB(3 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_dpu_intc_M_AXI_LPD_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= dpu_intc_M_AXI_LPD_to_s00_couplers_ARREADY;
  S00_AXI_awready <= dpu_intc_M_AXI_LPD_to_s00_couplers_AWREADY;
  S00_AXI_bid(1 downto 0) <= dpu_intc_M_AXI_LPD_to_s00_couplers_BID(1 downto 0);
  S00_AXI_bresp(1 downto 0) <= dpu_intc_M_AXI_LPD_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= dpu_intc_M_AXI_LPD_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= dpu_intc_M_AXI_LPD_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(1 downto 0) <= dpu_intc_M_AXI_LPD_to_s00_couplers_RID(1 downto 0);
  S00_AXI_rlast <= dpu_intc_M_AXI_LPD_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= dpu_intc_M_AXI_LPD_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= dpu_intc_M_AXI_LPD_to_s00_couplers_RVALID;
  S00_AXI_wready <= dpu_intc_M_AXI_LPD_to_s00_couplers_WREADY;
  dpu_intc_M_AXI_LPD_ACLK_net <= M00_ACLK;
  dpu_intc_M_AXI_LPD_ARESETN_net <= M00_ARESETN;
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARADDR(39 downto 0) <= S00_AXI_araddr(39 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARID(1 downto 0) <= S00_AXI_arid(1 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARLOCK(0) <= S00_AXI_arlock(0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARUSER(0) <= S00_AXI_aruser(0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWADDR(39 downto 0) <= S00_AXI_awaddr(39 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWID(1 downto 0) <= S00_AXI_awid(1 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWLOCK(0) <= S00_AXI_awlock(0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWUSER(0) <= S00_AXI_awuser(0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  dpu_intc_M_AXI_LPD_to_s00_couplers_BREADY <= S00_AXI_bready;
  dpu_intc_M_AXI_LPD_to_s00_couplers_RREADY <= S00_AXI_rready;
  dpu_intc_M_AXI_LPD_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_WLAST <= S00_AXI_wlast;
  dpu_intc_M_AXI_LPD_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  s00_couplers_to_dpu_intc_M_AXI_LPD_ARREADY <= M00_AXI_arready;
  s00_couplers_to_dpu_intc_M_AXI_LPD_AWREADY <= M00_AXI_awready;
  s00_couplers_to_dpu_intc_M_AXI_LPD_BID(5 downto 0) <= M00_AXI_bid(5 downto 0);
  s00_couplers_to_dpu_intc_M_AXI_LPD_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_dpu_intc_M_AXI_LPD_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_dpu_intc_M_AXI_LPD_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  s00_couplers_to_dpu_intc_M_AXI_LPD_RID(5 downto 0) <= M00_AXI_rid(5 downto 0);
  s00_couplers_to_dpu_intc_M_AXI_LPD_RLAST <= M00_AXI_rlast;
  s00_couplers_to_dpu_intc_M_AXI_LPD_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_dpu_intc_M_AXI_LPD_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_dpu_intc_M_AXI_LPD_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_VZUKLR
     port map (
      M_ACLK => dpu_intc_M_AXI_LPD_ACLK_net,
      M_ARESETN => dpu_intc_M_AXI_LPD_ARESETN_net,
      M_AXI_araddr(39 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_ARADDR(39 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_ARCACHE(3 downto 0),
      M_AXI_arid(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_ARID(1 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_ARLEN(7 downto 0),
      M_AXI_arlock => s00_couplers_to_dpu_intc_M_AXI_LPD_ARLOCK,
      M_AXI_arprot(2 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_dpu_intc_M_AXI_LPD_ARREADY,
      M_AXI_arsize(2 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_ARSIZE(2 downto 0),
      M_AXI_aruser => s00_couplers_to_dpu_intc_M_AXI_LPD_ARUSER,
      M_AXI_arvalid => s00_couplers_to_dpu_intc_M_AXI_LPD_ARVALID,
      M_AXI_awaddr(39 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_AWADDR(39 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_AWCACHE(3 downto 0),
      M_AXI_awid(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_AWID(1 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_AWLEN(7 downto 0),
      M_AXI_awlock => s00_couplers_to_dpu_intc_M_AXI_LPD_AWLOCK,
      M_AXI_awprot(2 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_dpu_intc_M_AXI_LPD_AWREADY,
      M_AXI_awsize(2 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_AWSIZE(2 downto 0),
      M_AXI_awuser => s00_couplers_to_dpu_intc_M_AXI_LPD_AWUSER,
      M_AXI_awvalid => s00_couplers_to_dpu_intc_M_AXI_LPD_AWVALID,
      M_AXI_bid(5 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_BID(5 downto 0),
      M_AXI_bready => s00_couplers_to_dpu_intc_M_AXI_LPD_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_dpu_intc_M_AXI_LPD_BVALID,
      M_AXI_rdata(31 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_RDATA(31 downto 0),
      M_AXI_rid(5 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_RID(5 downto 0),
      M_AXI_rlast => s00_couplers_to_dpu_intc_M_AXI_LPD_RLAST,
      M_AXI_rready => s00_couplers_to_dpu_intc_M_AXI_LPD_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_dpu_intc_M_AXI_LPD_RVALID,
      M_AXI_wdata(31 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_WDATA(31 downto 0),
      M_AXI_wlast => s00_couplers_to_dpu_intc_M_AXI_LPD_WLAST,
      M_AXI_wready => s00_couplers_to_dpu_intc_M_AXI_LPD_WREADY,
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_dpu_intc_M_AXI_LPD_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(39 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(1 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_ARID(1 downto 0),
      S_AXI_arlen(7 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => dpu_intc_M_AXI_LPD_to_s00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => dpu_intc_M_AXI_LPD_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_aruser(0) => dpu_intc_M_AXI_LPD_to_s00_couplers_ARUSER(0),
      S_AXI_arvalid => dpu_intc_M_AXI_LPD_to_s00_couplers_ARVALID,
      S_AXI_awaddr(39 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(1 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_AWID(1 downto 0),
      S_AXI_awlen(7 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => dpu_intc_M_AXI_LPD_to_s00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => dpu_intc_M_AXI_LPD_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awuser(0) => dpu_intc_M_AXI_LPD_to_s00_couplers_AWUSER(0),
      S_AXI_awvalid => dpu_intc_M_AXI_LPD_to_s00_couplers_AWVALID,
      S_AXI_bid(1 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_BID(1 downto 0),
      S_AXI_bready => dpu_intc_M_AXI_LPD_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => dpu_intc_M_AXI_LPD_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(1 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_RID(1 downto 0),
      S_AXI_rlast => dpu_intc_M_AXI_LPD_to_s00_couplers_RLAST,
      S_AXI_rready => dpu_intc_M_AXI_LPD_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => dpu_intc_M_AXI_LPD_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => dpu_intc_M_AXI_LPD_to_s00_couplers_WLAST,
      S_AXI_wready => dpu_intc_M_AXI_LPD_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => dpu_intc_M_AXI_LPD_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hier_dpu_ghp_imp_1DUMQPD is
  port (
    CLK : in STD_LOGIC;
    DPU0_M_AXI_DATA0_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    DPU0_M_AXI_DATA0_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA0_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA0_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA0_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DPU0_M_AXI_DATA0_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    DPU0_M_AXI_DATA0_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_DATA0_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA0_arready : out STD_LOGIC;
    DPU0_M_AXI_DATA0_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_DATA0_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    DPU0_M_AXI_DATA0_arvalid : in STD_LOGIC;
    DPU0_M_AXI_DATA0_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    DPU0_M_AXI_DATA0_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA0_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA0_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA0_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DPU0_M_AXI_DATA0_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    DPU0_M_AXI_DATA0_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_DATA0_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA0_awready : out STD_LOGIC;
    DPU0_M_AXI_DATA0_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_DATA0_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    DPU0_M_AXI_DATA0_awvalid : in STD_LOGIC;
    DPU0_M_AXI_DATA0_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA0_bready : in STD_LOGIC;
    DPU0_M_AXI_DATA0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA0_bvalid : out STD_LOGIC;
    DPU0_M_AXI_DATA0_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    DPU0_M_AXI_DATA0_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA0_rlast : out STD_LOGIC;
    DPU0_M_AXI_DATA0_rready : in STD_LOGIC;
    DPU0_M_AXI_DATA0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA0_rvalid : out STD_LOGIC;
    DPU0_M_AXI_DATA0_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    DPU0_M_AXI_DATA0_wlast : in STD_LOGIC;
    DPU0_M_AXI_DATA0_wready : out STD_LOGIC;
    DPU0_M_AXI_DATA0_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DPU0_M_AXI_DATA0_wvalid : in STD_LOGIC;
    DPU0_M_AXI_DATA1_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    DPU0_M_AXI_DATA1_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA1_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA1_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA1_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DPU0_M_AXI_DATA1_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    DPU0_M_AXI_DATA1_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_DATA1_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA1_arready : out STD_LOGIC;
    DPU0_M_AXI_DATA1_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_DATA1_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    DPU0_M_AXI_DATA1_arvalid : in STD_LOGIC;
    DPU0_M_AXI_DATA1_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    DPU0_M_AXI_DATA1_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA1_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA1_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA1_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DPU0_M_AXI_DATA1_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    DPU0_M_AXI_DATA1_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_DATA1_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA1_awready : out STD_LOGIC;
    DPU0_M_AXI_DATA1_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_DATA1_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    DPU0_M_AXI_DATA1_awvalid : in STD_LOGIC;
    DPU0_M_AXI_DATA1_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA1_bready : in STD_LOGIC;
    DPU0_M_AXI_DATA1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA1_bvalid : out STD_LOGIC;
    DPU0_M_AXI_DATA1_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    DPU0_M_AXI_DATA1_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA1_rlast : out STD_LOGIC;
    DPU0_M_AXI_DATA1_rready : in STD_LOGIC;
    DPU0_M_AXI_DATA1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA1_rvalid : out STD_LOGIC;
    DPU0_M_AXI_DATA1_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    DPU0_M_AXI_DATA1_wlast : in STD_LOGIC;
    DPU0_M_AXI_DATA1_wready : out STD_LOGIC;
    DPU0_M_AXI_DATA1_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DPU0_M_AXI_DATA1_wvalid : in STD_LOGIC;
    DPU0_M_AXI_INSTR_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    DPU0_M_AXI_INSTR_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_INSTR_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_INSTR_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_INSTR_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DPU0_M_AXI_INSTR_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    DPU0_M_AXI_INSTR_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_INSTR_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_INSTR_arready : out STD_LOGIC;
    DPU0_M_AXI_INSTR_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_INSTR_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    DPU0_M_AXI_INSTR_arvalid : in STD_LOGIC;
    DPU0_M_AXI_INSTR_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    DPU0_M_AXI_INSTR_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_INSTR_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_INSTR_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_INSTR_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DPU0_M_AXI_INSTR_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    DPU0_M_AXI_INSTR_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_INSTR_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_INSTR_awready : out STD_LOGIC;
    DPU0_M_AXI_INSTR_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_INSTR_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    DPU0_M_AXI_INSTR_awvalid : in STD_LOGIC;
    DPU0_M_AXI_INSTR_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_INSTR_bready : in STD_LOGIC;
    DPU0_M_AXI_INSTR_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_INSTR_bvalid : out STD_LOGIC;
    DPU0_M_AXI_INSTR_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DPU0_M_AXI_INSTR_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_INSTR_rlast : out STD_LOGIC;
    DPU0_M_AXI_INSTR_rready : in STD_LOGIC;
    DPU0_M_AXI_INSTR_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_INSTR_rvalid : out STD_LOGIC;
    DPU0_M_AXI_INSTR_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DPU0_M_AXI_INSTR_wlast : in STD_LOGIC;
    DPU0_M_AXI_INSTR_wready : out STD_LOGIC;
    DPU0_M_AXI_INSTR_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_INSTR_wvalid : in STD_LOGIC;
    GHP_CLK_I : in STD_LOGIC;
    GHP_CLK_O : out STD_LOGIC;
    GHP_RSTn : in STD_LOGIC;
    M_AXI_HP0_FPD_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_HP0_FPD_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP0_FPD_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_HP0_FPD_arlock : out STD_LOGIC;
    M_AXI_HP0_FPD_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP0_FPD_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP0_FPD_arready : in STD_LOGIC;
    M_AXI_HP0_FPD_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP0_FPD_aruser : out STD_LOGIC;
    M_AXI_HP0_FPD_arvalid : out STD_LOGIC;
    M_AXI_HP0_FPD_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_HP0_FPD_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP0_FPD_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_HP0_FPD_awlock : out STD_LOGIC;
    M_AXI_HP0_FPD_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP0_FPD_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP0_FPD_awready : in STD_LOGIC;
    M_AXI_HP0_FPD_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP0_FPD_awuser : out STD_LOGIC;
    M_AXI_HP0_FPD_awvalid : out STD_LOGIC;
    M_AXI_HP0_FPD_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_HP0_FPD_bready : out STD_LOGIC;
    M_AXI_HP0_FPD_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_bvalid : in STD_LOGIC;
    M_AXI_HP0_FPD_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_HP0_FPD_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_HP0_FPD_rlast : in STD_LOGIC;
    M_AXI_HP0_FPD_rready : out STD_LOGIC;
    M_AXI_HP0_FPD_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_rvalid : in STD_LOGIC;
    M_AXI_HP0_FPD_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_HP0_FPD_wlast : out STD_LOGIC;
    M_AXI_HP0_FPD_wready : in STD_LOGIC;
    M_AXI_HP0_FPD_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_HP0_FPD_wvalid : out STD_LOGIC;
    M_AXI_HP1_FPD_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_HP1_FPD_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP1_FPD_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_HP1_FPD_arlock : out STD_LOGIC;
    M_AXI_HP1_FPD_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP1_FPD_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP1_FPD_arready : in STD_LOGIC;
    M_AXI_HP1_FPD_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP1_FPD_aruser : out STD_LOGIC;
    M_AXI_HP1_FPD_arvalid : out STD_LOGIC;
    M_AXI_HP1_FPD_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_HP1_FPD_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP1_FPD_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_HP1_FPD_awlock : out STD_LOGIC;
    M_AXI_HP1_FPD_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP1_FPD_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP1_FPD_awready : in STD_LOGIC;
    M_AXI_HP1_FPD_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP1_FPD_awuser : out STD_LOGIC;
    M_AXI_HP1_FPD_awvalid : out STD_LOGIC;
    M_AXI_HP1_FPD_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_HP1_FPD_bready : out STD_LOGIC;
    M_AXI_HP1_FPD_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_bvalid : in STD_LOGIC;
    M_AXI_HP1_FPD_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_HP1_FPD_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_HP1_FPD_rlast : in STD_LOGIC;
    M_AXI_HP1_FPD_rready : out STD_LOGIC;
    M_AXI_HP1_FPD_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_rvalid : in STD_LOGIC;
    M_AXI_HP1_FPD_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_HP1_FPD_wlast : out STD_LOGIC;
    M_AXI_HP1_FPD_wready : in STD_LOGIC;
    M_AXI_HP1_FPD_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_HP1_FPD_wvalid : out STD_LOGIC;
    M_AXI_LPD_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_LPD_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_LPD_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_LPD_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_LPD_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_LPD_arlock : out STD_LOGIC;
    M_AXI_LPD_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_LPD_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_LPD_arready : in STD_LOGIC;
    M_AXI_LPD_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_LPD_aruser : out STD_LOGIC;
    M_AXI_LPD_arvalid : out STD_LOGIC;
    M_AXI_LPD_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_LPD_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_LPD_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_LPD_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_LPD_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_LPD_awlock : out STD_LOGIC;
    M_AXI_LPD_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_LPD_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_LPD_awready : in STD_LOGIC;
    M_AXI_LPD_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_LPD_awuser : out STD_LOGIC;
    M_AXI_LPD_awvalid : out STD_LOGIC;
    M_AXI_LPD_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_LPD_bready : out STD_LOGIC;
    M_AXI_LPD_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_LPD_bvalid : in STD_LOGIC;
    M_AXI_LPD_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_LPD_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_LPD_rlast : in STD_LOGIC;
    M_AXI_LPD_rready : out STD_LOGIC;
    M_AXI_LPD_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_LPD_rvalid : in STD_LOGIC;
    M_AXI_LPD_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_LPD_wlast : out STD_LOGIC;
    M_AXI_LPD_wready : in STD_LOGIC;
    M_AXI_LPD_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_LPD_wvalid : out STD_LOGIC;
    RSTn_INTC : in STD_LOGIC;
    RSTn_PERI : in STD_LOGIC
  );
end hier_dpu_ghp_imp_1DUMQPD;

architecture STRUCTURE of hier_dpu_ghp_imp_1DUMQPD is
  signal CLK_1 : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPU0_M_AXI_DATA0_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA0_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA0_1_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA0_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DPU0_M_AXI_DATA0_1_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPU0_M_AXI_DATA0_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_DATA0_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA0_1_ARREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_DATA0_1_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPU0_M_AXI_DATA0_1_ARVALID : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPU0_M_AXI_DATA0_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA0_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA0_1_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA0_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DPU0_M_AXI_DATA0_1_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPU0_M_AXI_DATA0_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_DATA0_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA0_1_AWREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_DATA0_1_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPU0_M_AXI_DATA0_1_AWVALID : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA0_1_BREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA0_1_BVALID : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal DPU0_M_AXI_DATA0_1_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA0_1_RLAST : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_RREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA0_1_RVALID : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal DPU0_M_AXI_DATA0_1_WLAST : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_WREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal DPU0_M_AXI_DATA0_1_WVALID : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPU0_M_AXI_DATA1_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA1_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA1_1_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA1_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DPU0_M_AXI_DATA1_1_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPU0_M_AXI_DATA1_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_DATA1_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA1_1_ARREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_DATA1_1_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPU0_M_AXI_DATA1_1_ARVALID : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPU0_M_AXI_DATA1_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA1_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA1_1_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA1_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DPU0_M_AXI_DATA1_1_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPU0_M_AXI_DATA1_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_DATA1_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA1_1_AWREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_DATA1_1_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPU0_M_AXI_DATA1_1_AWVALID : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA1_1_BREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA1_1_BVALID : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal DPU0_M_AXI_DATA1_1_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA1_1_RLAST : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_RREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA1_1_RVALID : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal DPU0_M_AXI_DATA1_1_WLAST : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_WREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal DPU0_M_AXI_DATA1_1_WVALID : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPU0_M_AXI_INSTR_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_INSTR_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_INSTR_1_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_INSTR_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DPU0_M_AXI_INSTR_1_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPU0_M_AXI_INSTR_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_INSTR_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_INSTR_1_ARREADY : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_INSTR_1_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPU0_M_AXI_INSTR_1_ARVALID : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPU0_M_AXI_INSTR_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_INSTR_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_INSTR_1_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_INSTR_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DPU0_M_AXI_INSTR_1_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPU0_M_AXI_INSTR_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_INSTR_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_INSTR_1_AWREADY : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_INSTR_1_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPU0_M_AXI_INSTR_1_AWVALID : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_INSTR_1_BREADY : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_INSTR_1_BVALID : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DPU0_M_AXI_INSTR_1_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_INSTR_1_RLAST : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_RREADY : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_INSTR_1_RVALID : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DPU0_M_AXI_INSTR_1_WLAST : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_WREADY : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_INSTR_1_WVALID : STD_LOGIC;
  signal GHP_CLK_I_1 : STD_LOGIC;
  signal GHP_RSTn_1 : STD_LOGIC;
  signal RSTn_INTC_1 : STD_LOGIC;
  signal RSTn_PERI_1 : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARLOCK : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARUSER : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWLOCK : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWUSER : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_BREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_BVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_RLAST : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_RREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_RVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_WLAST : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_WREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dpu_intc_M_AXI_HP0_FPD_M00_AXI_WVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARLOCK : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARUSER : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWLOCK : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWUSER : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_BREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_BVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_RLAST : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_RREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_RVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_WLAST : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_WREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dpu_intc_M_AXI_HP1_FPD_M00_AXI_WVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARLOCK : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARUSER : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWLOCK : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWUSER : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_BREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_BVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_RLAST : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_RREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_RVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_WLAST : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_WREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_WVALID : STD_LOGIC;
begin
  CLK_1 <= CLK;
  DPU0_M_AXI_DATA0_1_ARADDR(39 downto 0) <= DPU0_M_AXI_DATA0_araddr(39 downto 0);
  DPU0_M_AXI_DATA0_1_ARBURST(1 downto 0) <= DPU0_M_AXI_DATA0_arburst(1 downto 0);
  DPU0_M_AXI_DATA0_1_ARCACHE(3 downto 0) <= DPU0_M_AXI_DATA0_arcache(3 downto 0);
  DPU0_M_AXI_DATA0_1_ARID(1 downto 0) <= DPU0_M_AXI_DATA0_arid(1 downto 0);
  DPU0_M_AXI_DATA0_1_ARLEN(7 downto 0) <= DPU0_M_AXI_DATA0_arlen(7 downto 0);
  DPU0_M_AXI_DATA0_1_ARLOCK(0) <= DPU0_M_AXI_DATA0_arlock(0);
  DPU0_M_AXI_DATA0_1_ARPROT(2 downto 0) <= DPU0_M_AXI_DATA0_arprot(2 downto 0);
  DPU0_M_AXI_DATA0_1_ARQOS(3 downto 0) <= DPU0_M_AXI_DATA0_arqos(3 downto 0);
  DPU0_M_AXI_DATA0_1_ARSIZE(2 downto 0) <= DPU0_M_AXI_DATA0_arsize(2 downto 0);
  DPU0_M_AXI_DATA0_1_ARUSER(0) <= DPU0_M_AXI_DATA0_aruser(0);
  DPU0_M_AXI_DATA0_1_ARVALID <= DPU0_M_AXI_DATA0_arvalid;
  DPU0_M_AXI_DATA0_1_AWADDR(39 downto 0) <= DPU0_M_AXI_DATA0_awaddr(39 downto 0);
  DPU0_M_AXI_DATA0_1_AWBURST(1 downto 0) <= DPU0_M_AXI_DATA0_awburst(1 downto 0);
  DPU0_M_AXI_DATA0_1_AWCACHE(3 downto 0) <= DPU0_M_AXI_DATA0_awcache(3 downto 0);
  DPU0_M_AXI_DATA0_1_AWID(1 downto 0) <= DPU0_M_AXI_DATA0_awid(1 downto 0);
  DPU0_M_AXI_DATA0_1_AWLEN(7 downto 0) <= DPU0_M_AXI_DATA0_awlen(7 downto 0);
  DPU0_M_AXI_DATA0_1_AWLOCK(0) <= DPU0_M_AXI_DATA0_awlock(0);
  DPU0_M_AXI_DATA0_1_AWPROT(2 downto 0) <= DPU0_M_AXI_DATA0_awprot(2 downto 0);
  DPU0_M_AXI_DATA0_1_AWQOS(3 downto 0) <= DPU0_M_AXI_DATA0_awqos(3 downto 0);
  DPU0_M_AXI_DATA0_1_AWSIZE(2 downto 0) <= DPU0_M_AXI_DATA0_awsize(2 downto 0);
  DPU0_M_AXI_DATA0_1_AWUSER(0) <= DPU0_M_AXI_DATA0_awuser(0);
  DPU0_M_AXI_DATA0_1_AWVALID <= DPU0_M_AXI_DATA0_awvalid;
  DPU0_M_AXI_DATA0_1_BREADY <= DPU0_M_AXI_DATA0_bready;
  DPU0_M_AXI_DATA0_1_RREADY <= DPU0_M_AXI_DATA0_rready;
  DPU0_M_AXI_DATA0_1_WDATA(127 downto 0) <= DPU0_M_AXI_DATA0_wdata(127 downto 0);
  DPU0_M_AXI_DATA0_1_WLAST <= DPU0_M_AXI_DATA0_wlast;
  DPU0_M_AXI_DATA0_1_WSTRB(15 downto 0) <= DPU0_M_AXI_DATA0_wstrb(15 downto 0);
  DPU0_M_AXI_DATA0_1_WVALID <= DPU0_M_AXI_DATA0_wvalid;
  DPU0_M_AXI_DATA0_arready <= DPU0_M_AXI_DATA0_1_ARREADY;
  DPU0_M_AXI_DATA0_awready <= DPU0_M_AXI_DATA0_1_AWREADY;
  DPU0_M_AXI_DATA0_bid(1 downto 0) <= DPU0_M_AXI_DATA0_1_BID(1 downto 0);
  DPU0_M_AXI_DATA0_bresp(1 downto 0) <= DPU0_M_AXI_DATA0_1_BRESP(1 downto 0);
  DPU0_M_AXI_DATA0_bvalid <= DPU0_M_AXI_DATA0_1_BVALID;
  DPU0_M_AXI_DATA0_rdata(127 downto 0) <= DPU0_M_AXI_DATA0_1_RDATA(127 downto 0);
  DPU0_M_AXI_DATA0_rid(1 downto 0) <= DPU0_M_AXI_DATA0_1_RID(1 downto 0);
  DPU0_M_AXI_DATA0_rlast <= DPU0_M_AXI_DATA0_1_RLAST;
  DPU0_M_AXI_DATA0_rresp(1 downto 0) <= DPU0_M_AXI_DATA0_1_RRESP(1 downto 0);
  DPU0_M_AXI_DATA0_rvalid <= DPU0_M_AXI_DATA0_1_RVALID;
  DPU0_M_AXI_DATA0_wready <= DPU0_M_AXI_DATA0_1_WREADY;
  DPU0_M_AXI_DATA1_1_ARADDR(39 downto 0) <= DPU0_M_AXI_DATA1_araddr(39 downto 0);
  DPU0_M_AXI_DATA1_1_ARBURST(1 downto 0) <= DPU0_M_AXI_DATA1_arburst(1 downto 0);
  DPU0_M_AXI_DATA1_1_ARCACHE(3 downto 0) <= DPU0_M_AXI_DATA1_arcache(3 downto 0);
  DPU0_M_AXI_DATA1_1_ARID(1 downto 0) <= DPU0_M_AXI_DATA1_arid(1 downto 0);
  DPU0_M_AXI_DATA1_1_ARLEN(7 downto 0) <= DPU0_M_AXI_DATA1_arlen(7 downto 0);
  DPU0_M_AXI_DATA1_1_ARLOCK(0) <= DPU0_M_AXI_DATA1_arlock(0);
  DPU0_M_AXI_DATA1_1_ARPROT(2 downto 0) <= DPU0_M_AXI_DATA1_arprot(2 downto 0);
  DPU0_M_AXI_DATA1_1_ARQOS(3 downto 0) <= DPU0_M_AXI_DATA1_arqos(3 downto 0);
  DPU0_M_AXI_DATA1_1_ARSIZE(2 downto 0) <= DPU0_M_AXI_DATA1_arsize(2 downto 0);
  DPU0_M_AXI_DATA1_1_ARUSER(0) <= DPU0_M_AXI_DATA1_aruser(0);
  DPU0_M_AXI_DATA1_1_ARVALID <= DPU0_M_AXI_DATA1_arvalid;
  DPU0_M_AXI_DATA1_1_AWADDR(39 downto 0) <= DPU0_M_AXI_DATA1_awaddr(39 downto 0);
  DPU0_M_AXI_DATA1_1_AWBURST(1 downto 0) <= DPU0_M_AXI_DATA1_awburst(1 downto 0);
  DPU0_M_AXI_DATA1_1_AWCACHE(3 downto 0) <= DPU0_M_AXI_DATA1_awcache(3 downto 0);
  DPU0_M_AXI_DATA1_1_AWID(1 downto 0) <= DPU0_M_AXI_DATA1_awid(1 downto 0);
  DPU0_M_AXI_DATA1_1_AWLEN(7 downto 0) <= DPU0_M_AXI_DATA1_awlen(7 downto 0);
  DPU0_M_AXI_DATA1_1_AWLOCK(0) <= DPU0_M_AXI_DATA1_awlock(0);
  DPU0_M_AXI_DATA1_1_AWPROT(2 downto 0) <= DPU0_M_AXI_DATA1_awprot(2 downto 0);
  DPU0_M_AXI_DATA1_1_AWQOS(3 downto 0) <= DPU0_M_AXI_DATA1_awqos(3 downto 0);
  DPU0_M_AXI_DATA1_1_AWSIZE(2 downto 0) <= DPU0_M_AXI_DATA1_awsize(2 downto 0);
  DPU0_M_AXI_DATA1_1_AWUSER(0) <= DPU0_M_AXI_DATA1_awuser(0);
  DPU0_M_AXI_DATA1_1_AWVALID <= DPU0_M_AXI_DATA1_awvalid;
  DPU0_M_AXI_DATA1_1_BREADY <= DPU0_M_AXI_DATA1_bready;
  DPU0_M_AXI_DATA1_1_RREADY <= DPU0_M_AXI_DATA1_rready;
  DPU0_M_AXI_DATA1_1_WDATA(127 downto 0) <= DPU0_M_AXI_DATA1_wdata(127 downto 0);
  DPU0_M_AXI_DATA1_1_WLAST <= DPU0_M_AXI_DATA1_wlast;
  DPU0_M_AXI_DATA1_1_WSTRB(15 downto 0) <= DPU0_M_AXI_DATA1_wstrb(15 downto 0);
  DPU0_M_AXI_DATA1_1_WVALID <= DPU0_M_AXI_DATA1_wvalid;
  DPU0_M_AXI_DATA1_arready <= DPU0_M_AXI_DATA1_1_ARREADY;
  DPU0_M_AXI_DATA1_awready <= DPU0_M_AXI_DATA1_1_AWREADY;
  DPU0_M_AXI_DATA1_bid(1 downto 0) <= DPU0_M_AXI_DATA1_1_BID(1 downto 0);
  DPU0_M_AXI_DATA1_bresp(1 downto 0) <= DPU0_M_AXI_DATA1_1_BRESP(1 downto 0);
  DPU0_M_AXI_DATA1_bvalid <= DPU0_M_AXI_DATA1_1_BVALID;
  DPU0_M_AXI_DATA1_rdata(127 downto 0) <= DPU0_M_AXI_DATA1_1_RDATA(127 downto 0);
  DPU0_M_AXI_DATA1_rid(1 downto 0) <= DPU0_M_AXI_DATA1_1_RID(1 downto 0);
  DPU0_M_AXI_DATA1_rlast <= DPU0_M_AXI_DATA1_1_RLAST;
  DPU0_M_AXI_DATA1_rresp(1 downto 0) <= DPU0_M_AXI_DATA1_1_RRESP(1 downto 0);
  DPU0_M_AXI_DATA1_rvalid <= DPU0_M_AXI_DATA1_1_RVALID;
  DPU0_M_AXI_DATA1_wready <= DPU0_M_AXI_DATA1_1_WREADY;
  DPU0_M_AXI_INSTR_1_ARADDR(39 downto 0) <= DPU0_M_AXI_INSTR_araddr(39 downto 0);
  DPU0_M_AXI_INSTR_1_ARBURST(1 downto 0) <= DPU0_M_AXI_INSTR_arburst(1 downto 0);
  DPU0_M_AXI_INSTR_1_ARCACHE(3 downto 0) <= DPU0_M_AXI_INSTR_arcache(3 downto 0);
  DPU0_M_AXI_INSTR_1_ARID(1 downto 0) <= DPU0_M_AXI_INSTR_arid(1 downto 0);
  DPU0_M_AXI_INSTR_1_ARLEN(7 downto 0) <= DPU0_M_AXI_INSTR_arlen(7 downto 0);
  DPU0_M_AXI_INSTR_1_ARLOCK(0) <= DPU0_M_AXI_INSTR_arlock(0);
  DPU0_M_AXI_INSTR_1_ARPROT(2 downto 0) <= DPU0_M_AXI_INSTR_arprot(2 downto 0);
  DPU0_M_AXI_INSTR_1_ARQOS(3 downto 0) <= DPU0_M_AXI_INSTR_arqos(3 downto 0);
  DPU0_M_AXI_INSTR_1_ARSIZE(2 downto 0) <= DPU0_M_AXI_INSTR_arsize(2 downto 0);
  DPU0_M_AXI_INSTR_1_ARUSER(0) <= DPU0_M_AXI_INSTR_aruser(0);
  DPU0_M_AXI_INSTR_1_ARVALID <= DPU0_M_AXI_INSTR_arvalid;
  DPU0_M_AXI_INSTR_1_AWADDR(39 downto 0) <= DPU0_M_AXI_INSTR_awaddr(39 downto 0);
  DPU0_M_AXI_INSTR_1_AWBURST(1 downto 0) <= DPU0_M_AXI_INSTR_awburst(1 downto 0);
  DPU0_M_AXI_INSTR_1_AWCACHE(3 downto 0) <= DPU0_M_AXI_INSTR_awcache(3 downto 0);
  DPU0_M_AXI_INSTR_1_AWID(1 downto 0) <= DPU0_M_AXI_INSTR_awid(1 downto 0);
  DPU0_M_AXI_INSTR_1_AWLEN(7 downto 0) <= DPU0_M_AXI_INSTR_awlen(7 downto 0);
  DPU0_M_AXI_INSTR_1_AWLOCK(0) <= DPU0_M_AXI_INSTR_awlock(0);
  DPU0_M_AXI_INSTR_1_AWPROT(2 downto 0) <= DPU0_M_AXI_INSTR_awprot(2 downto 0);
  DPU0_M_AXI_INSTR_1_AWQOS(3 downto 0) <= DPU0_M_AXI_INSTR_awqos(3 downto 0);
  DPU0_M_AXI_INSTR_1_AWSIZE(2 downto 0) <= DPU0_M_AXI_INSTR_awsize(2 downto 0);
  DPU0_M_AXI_INSTR_1_AWUSER(0) <= DPU0_M_AXI_INSTR_awuser(0);
  DPU0_M_AXI_INSTR_1_AWVALID <= DPU0_M_AXI_INSTR_awvalid;
  DPU0_M_AXI_INSTR_1_BREADY <= DPU0_M_AXI_INSTR_bready;
  DPU0_M_AXI_INSTR_1_RREADY <= DPU0_M_AXI_INSTR_rready;
  DPU0_M_AXI_INSTR_1_WDATA(31 downto 0) <= DPU0_M_AXI_INSTR_wdata(31 downto 0);
  DPU0_M_AXI_INSTR_1_WLAST <= DPU0_M_AXI_INSTR_wlast;
  DPU0_M_AXI_INSTR_1_WSTRB(3 downto 0) <= DPU0_M_AXI_INSTR_wstrb(3 downto 0);
  DPU0_M_AXI_INSTR_1_WVALID <= DPU0_M_AXI_INSTR_wvalid;
  DPU0_M_AXI_INSTR_arready <= DPU0_M_AXI_INSTR_1_ARREADY;
  DPU0_M_AXI_INSTR_awready <= DPU0_M_AXI_INSTR_1_AWREADY;
  DPU0_M_AXI_INSTR_bid(1 downto 0) <= DPU0_M_AXI_INSTR_1_BID(1 downto 0);
  DPU0_M_AXI_INSTR_bresp(1 downto 0) <= DPU0_M_AXI_INSTR_1_BRESP(1 downto 0);
  DPU0_M_AXI_INSTR_bvalid <= DPU0_M_AXI_INSTR_1_BVALID;
  DPU0_M_AXI_INSTR_rdata(31 downto 0) <= DPU0_M_AXI_INSTR_1_RDATA(31 downto 0);
  DPU0_M_AXI_INSTR_rid(1 downto 0) <= DPU0_M_AXI_INSTR_1_RID(1 downto 0);
  DPU0_M_AXI_INSTR_rlast <= DPU0_M_AXI_INSTR_1_RLAST;
  DPU0_M_AXI_INSTR_rresp(1 downto 0) <= DPU0_M_AXI_INSTR_1_RRESP(1 downto 0);
  DPU0_M_AXI_INSTR_rvalid <= DPU0_M_AXI_INSTR_1_RVALID;
  DPU0_M_AXI_INSTR_wready <= DPU0_M_AXI_INSTR_1_WREADY;
  GHP_CLK_I_1 <= GHP_CLK_I;
  GHP_CLK_O <= GHP_CLK_I_1;
  GHP_RSTn_1 <= GHP_RSTn;
  M_AXI_HP0_FPD_araddr(39 downto 0) <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARADDR(39 downto 0);
  M_AXI_HP0_FPD_arburst(1 downto 0) <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARBURST(1 downto 0);
  M_AXI_HP0_FPD_arcache(3 downto 0) <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARCACHE(3 downto 0);
  M_AXI_HP0_FPD_arid(1 downto 0) <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARID(1 downto 0);
  M_AXI_HP0_FPD_arlen(7 downto 0) <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARLEN(7 downto 0);
  M_AXI_HP0_FPD_arlock <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARLOCK;
  M_AXI_HP0_FPD_arprot(2 downto 0) <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARPROT(2 downto 0);
  M_AXI_HP0_FPD_arqos(3 downto 0) <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARQOS(3 downto 0);
  M_AXI_HP0_FPD_arsize(2 downto 0) <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARSIZE(2 downto 0);
  M_AXI_HP0_FPD_aruser <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARUSER;
  M_AXI_HP0_FPD_arvalid <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARVALID;
  M_AXI_HP0_FPD_awaddr(39 downto 0) <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWADDR(39 downto 0);
  M_AXI_HP0_FPD_awburst(1 downto 0) <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWBURST(1 downto 0);
  M_AXI_HP0_FPD_awcache(3 downto 0) <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWCACHE(3 downto 0);
  M_AXI_HP0_FPD_awid(1 downto 0) <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWID(1 downto 0);
  M_AXI_HP0_FPD_awlen(7 downto 0) <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWLEN(7 downto 0);
  M_AXI_HP0_FPD_awlock <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWLOCK;
  M_AXI_HP0_FPD_awprot(2 downto 0) <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWPROT(2 downto 0);
  M_AXI_HP0_FPD_awqos(3 downto 0) <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWQOS(3 downto 0);
  M_AXI_HP0_FPD_awsize(2 downto 0) <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWSIZE(2 downto 0);
  M_AXI_HP0_FPD_awuser <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWUSER;
  M_AXI_HP0_FPD_awvalid <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWVALID;
  M_AXI_HP0_FPD_bready <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_BREADY;
  M_AXI_HP0_FPD_rready <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_RREADY;
  M_AXI_HP0_FPD_wdata(127 downto 0) <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_WDATA(127 downto 0);
  M_AXI_HP0_FPD_wlast <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_WLAST;
  M_AXI_HP0_FPD_wstrb(15 downto 0) <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_WSTRB(15 downto 0);
  M_AXI_HP0_FPD_wvalid <= dpu_intc_M_AXI_HP0_FPD_M00_AXI_WVALID;
  M_AXI_HP1_FPD_araddr(39 downto 0) <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARADDR(39 downto 0);
  M_AXI_HP1_FPD_arburst(1 downto 0) <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARBURST(1 downto 0);
  M_AXI_HP1_FPD_arcache(3 downto 0) <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARCACHE(3 downto 0);
  M_AXI_HP1_FPD_arid(1 downto 0) <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARID(1 downto 0);
  M_AXI_HP1_FPD_arlen(7 downto 0) <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARLEN(7 downto 0);
  M_AXI_HP1_FPD_arlock <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARLOCK;
  M_AXI_HP1_FPD_arprot(2 downto 0) <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARPROT(2 downto 0);
  M_AXI_HP1_FPD_arqos(3 downto 0) <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARQOS(3 downto 0);
  M_AXI_HP1_FPD_arsize(2 downto 0) <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARSIZE(2 downto 0);
  M_AXI_HP1_FPD_aruser <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARUSER;
  M_AXI_HP1_FPD_arvalid <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARVALID;
  M_AXI_HP1_FPD_awaddr(39 downto 0) <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWADDR(39 downto 0);
  M_AXI_HP1_FPD_awburst(1 downto 0) <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWBURST(1 downto 0);
  M_AXI_HP1_FPD_awcache(3 downto 0) <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWCACHE(3 downto 0);
  M_AXI_HP1_FPD_awid(1 downto 0) <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWID(1 downto 0);
  M_AXI_HP1_FPD_awlen(7 downto 0) <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWLEN(7 downto 0);
  M_AXI_HP1_FPD_awlock <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWLOCK;
  M_AXI_HP1_FPD_awprot(2 downto 0) <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWPROT(2 downto 0);
  M_AXI_HP1_FPD_awqos(3 downto 0) <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWQOS(3 downto 0);
  M_AXI_HP1_FPD_awsize(2 downto 0) <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWSIZE(2 downto 0);
  M_AXI_HP1_FPD_awuser <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWUSER;
  M_AXI_HP1_FPD_awvalid <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWVALID;
  M_AXI_HP1_FPD_bready <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_BREADY;
  M_AXI_HP1_FPD_rready <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_RREADY;
  M_AXI_HP1_FPD_wdata(127 downto 0) <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_WDATA(127 downto 0);
  M_AXI_HP1_FPD_wlast <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_WLAST;
  M_AXI_HP1_FPD_wstrb(15 downto 0) <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_WSTRB(15 downto 0);
  M_AXI_HP1_FPD_wvalid <= dpu_intc_M_AXI_HP1_FPD_M00_AXI_WVALID;
  M_AXI_LPD_araddr(39 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_ARADDR(39 downto 0);
  M_AXI_LPD_arburst(1 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_ARBURST(1 downto 0);
  M_AXI_LPD_arcache(3 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_ARCACHE(3 downto 0);
  M_AXI_LPD_arid(1 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_ARID(1 downto 0);
  M_AXI_LPD_arlen(7 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_ARLEN(7 downto 0);
  M_AXI_LPD_arlock <= dpu_intc_M_AXI_LPD_M00_AXI_ARLOCK;
  M_AXI_LPD_arprot(2 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_ARPROT(2 downto 0);
  M_AXI_LPD_arqos(3 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_ARQOS(3 downto 0);
  M_AXI_LPD_arsize(2 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_ARSIZE(2 downto 0);
  M_AXI_LPD_aruser <= dpu_intc_M_AXI_LPD_M00_AXI_ARUSER;
  M_AXI_LPD_arvalid <= dpu_intc_M_AXI_LPD_M00_AXI_ARVALID;
  M_AXI_LPD_awaddr(39 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_AWADDR(39 downto 0);
  M_AXI_LPD_awburst(1 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_AWBURST(1 downto 0);
  M_AXI_LPD_awcache(3 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_AWCACHE(3 downto 0);
  M_AXI_LPD_awid(1 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_AWID(1 downto 0);
  M_AXI_LPD_awlen(7 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_AWLEN(7 downto 0);
  M_AXI_LPD_awlock <= dpu_intc_M_AXI_LPD_M00_AXI_AWLOCK;
  M_AXI_LPD_awprot(2 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_AWPROT(2 downto 0);
  M_AXI_LPD_awqos(3 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_AWQOS(3 downto 0);
  M_AXI_LPD_awsize(2 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_AWSIZE(2 downto 0);
  M_AXI_LPD_awuser <= dpu_intc_M_AXI_LPD_M00_AXI_AWUSER;
  M_AXI_LPD_awvalid <= dpu_intc_M_AXI_LPD_M00_AXI_AWVALID;
  M_AXI_LPD_bready <= dpu_intc_M_AXI_LPD_M00_AXI_BREADY;
  M_AXI_LPD_rready <= dpu_intc_M_AXI_LPD_M00_AXI_RREADY;
  M_AXI_LPD_wdata(31 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_WDATA(31 downto 0);
  M_AXI_LPD_wlast <= dpu_intc_M_AXI_LPD_M00_AXI_WLAST;
  M_AXI_LPD_wstrb(3 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_WSTRB(3 downto 0);
  M_AXI_LPD_wvalid <= dpu_intc_M_AXI_LPD_M00_AXI_WVALID;
  RSTn_INTC_1 <= RSTn_INTC;
  RSTn_PERI_1 <= RSTn_PERI;
  dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARREADY <= M_AXI_HP0_FPD_arready;
  dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWREADY <= M_AXI_HP0_FPD_awready;
  dpu_intc_M_AXI_HP0_FPD_M00_AXI_BID(5 downto 0) <= M_AXI_HP0_FPD_bid(5 downto 0);
  dpu_intc_M_AXI_HP0_FPD_M00_AXI_BRESP(1 downto 0) <= M_AXI_HP0_FPD_bresp(1 downto 0);
  dpu_intc_M_AXI_HP0_FPD_M00_AXI_BVALID <= M_AXI_HP0_FPD_bvalid;
  dpu_intc_M_AXI_HP0_FPD_M00_AXI_RDATA(127 downto 0) <= M_AXI_HP0_FPD_rdata(127 downto 0);
  dpu_intc_M_AXI_HP0_FPD_M00_AXI_RID(5 downto 0) <= M_AXI_HP0_FPD_rid(5 downto 0);
  dpu_intc_M_AXI_HP0_FPD_M00_AXI_RLAST <= M_AXI_HP0_FPD_rlast;
  dpu_intc_M_AXI_HP0_FPD_M00_AXI_RRESP(1 downto 0) <= M_AXI_HP0_FPD_rresp(1 downto 0);
  dpu_intc_M_AXI_HP0_FPD_M00_AXI_RVALID <= M_AXI_HP0_FPD_rvalid;
  dpu_intc_M_AXI_HP0_FPD_M00_AXI_WREADY <= M_AXI_HP0_FPD_wready;
  dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARREADY <= M_AXI_HP1_FPD_arready;
  dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWREADY <= M_AXI_HP1_FPD_awready;
  dpu_intc_M_AXI_HP1_FPD_M00_AXI_BID(5 downto 0) <= M_AXI_HP1_FPD_bid(5 downto 0);
  dpu_intc_M_AXI_HP1_FPD_M00_AXI_BRESP(1 downto 0) <= M_AXI_HP1_FPD_bresp(1 downto 0);
  dpu_intc_M_AXI_HP1_FPD_M00_AXI_BVALID <= M_AXI_HP1_FPD_bvalid;
  dpu_intc_M_AXI_HP1_FPD_M00_AXI_RDATA(127 downto 0) <= M_AXI_HP1_FPD_rdata(127 downto 0);
  dpu_intc_M_AXI_HP1_FPD_M00_AXI_RID(5 downto 0) <= M_AXI_HP1_FPD_rid(5 downto 0);
  dpu_intc_M_AXI_HP1_FPD_M00_AXI_RLAST <= M_AXI_HP1_FPD_rlast;
  dpu_intc_M_AXI_HP1_FPD_M00_AXI_RRESP(1 downto 0) <= M_AXI_HP1_FPD_rresp(1 downto 0);
  dpu_intc_M_AXI_HP1_FPD_M00_AXI_RVALID <= M_AXI_HP1_FPD_rvalid;
  dpu_intc_M_AXI_HP1_FPD_M00_AXI_WREADY <= M_AXI_HP1_FPD_wready;
  dpu_intc_M_AXI_LPD_M00_AXI_ARREADY <= M_AXI_LPD_arready;
  dpu_intc_M_AXI_LPD_M00_AXI_AWREADY <= M_AXI_LPD_awready;
  dpu_intc_M_AXI_LPD_M00_AXI_BID(5 downto 0) <= M_AXI_LPD_bid(5 downto 0);
  dpu_intc_M_AXI_LPD_M00_AXI_BRESP(1 downto 0) <= M_AXI_LPD_bresp(1 downto 0);
  dpu_intc_M_AXI_LPD_M00_AXI_BVALID <= M_AXI_LPD_bvalid;
  dpu_intc_M_AXI_LPD_M00_AXI_RDATA(31 downto 0) <= M_AXI_LPD_rdata(31 downto 0);
  dpu_intc_M_AXI_LPD_M00_AXI_RID(5 downto 0) <= M_AXI_LPD_rid(5 downto 0);
  dpu_intc_M_AXI_LPD_M00_AXI_RLAST <= M_AXI_LPD_rlast;
  dpu_intc_M_AXI_LPD_M00_AXI_RRESP(1 downto 0) <= M_AXI_LPD_rresp(1 downto 0);
  dpu_intc_M_AXI_LPD_M00_AXI_RVALID <= M_AXI_LPD_rvalid;
  dpu_intc_M_AXI_LPD_M00_AXI_WREADY <= M_AXI_LPD_wready;
dpu_intc_M_AXI_HP0_FPD: entity work.top_dpu_intc_M_AXI_HP0_FPD_0
     port map (
      ACLK => CLK_1,
      ARESETN => RSTn_INTC_1,
      M00_ACLK => GHP_CLK_I_1,
      M00_ARESETN => GHP_RSTn_1,
      M00_AXI_araddr(39 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARADDR(39 downto 0),
      M00_AXI_arburst(1 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(1 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARID(1 downto 0),
      M00_AXI_arlen(7 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock => dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_aruser => dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARUSER,
      M00_AXI_arvalid => dpu_intc_M_AXI_HP0_FPD_M00_AXI_ARVALID,
      M00_AXI_awaddr(39 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWADDR(39 downto 0),
      M00_AXI_awburst(1 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(1 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWID(1 downto 0),
      M00_AXI_awlen(7 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock => dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWLOCK,
      M00_AXI_awprot(2 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awuser => dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWUSER,
      M00_AXI_awvalid => dpu_intc_M_AXI_HP0_FPD_M00_AXI_AWVALID,
      M00_AXI_bid(5 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_BID(5 downto 0),
      M00_AXI_bready => dpu_intc_M_AXI_HP0_FPD_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => dpu_intc_M_AXI_HP0_FPD_M00_AXI_BVALID,
      M00_AXI_rdata(127 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_RDATA(127 downto 0),
      M00_AXI_rid(5 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_RID(5 downto 0),
      M00_AXI_rlast => dpu_intc_M_AXI_HP0_FPD_M00_AXI_RLAST,
      M00_AXI_rready => dpu_intc_M_AXI_HP0_FPD_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => dpu_intc_M_AXI_HP0_FPD_M00_AXI_RVALID,
      M00_AXI_wdata(127 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_WDATA(127 downto 0),
      M00_AXI_wlast => dpu_intc_M_AXI_HP0_FPD_M00_AXI_WLAST,
      M00_AXI_wready => dpu_intc_M_AXI_HP0_FPD_M00_AXI_WREADY,
      M00_AXI_wstrb(15 downto 0) => dpu_intc_M_AXI_HP0_FPD_M00_AXI_WSTRB(15 downto 0),
      M00_AXI_wvalid => dpu_intc_M_AXI_HP0_FPD_M00_AXI_WVALID,
      S00_ACLK => CLK_1,
      S00_ARESETN => RSTn_PERI_1,
      S00_AXI_araddr(39 downto 0) => DPU0_M_AXI_DATA0_1_ARADDR(39 downto 0),
      S00_AXI_arburst(1 downto 0) => DPU0_M_AXI_DATA0_1_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => DPU0_M_AXI_DATA0_1_ARCACHE(3 downto 0),
      S00_AXI_arid(1 downto 0) => DPU0_M_AXI_DATA0_1_ARID(1 downto 0),
      S00_AXI_arlen(7 downto 0) => DPU0_M_AXI_DATA0_1_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => DPU0_M_AXI_DATA0_1_ARLOCK(0),
      S00_AXI_arprot(2 downto 0) => DPU0_M_AXI_DATA0_1_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => DPU0_M_AXI_DATA0_1_ARQOS(3 downto 0),
      S00_AXI_arready => DPU0_M_AXI_DATA0_1_ARREADY,
      S00_AXI_arsize(2 downto 0) => DPU0_M_AXI_DATA0_1_ARSIZE(2 downto 0),
      S00_AXI_aruser(0) => DPU0_M_AXI_DATA0_1_ARUSER(0),
      S00_AXI_arvalid => DPU0_M_AXI_DATA0_1_ARVALID,
      S00_AXI_awaddr(39 downto 0) => DPU0_M_AXI_DATA0_1_AWADDR(39 downto 0),
      S00_AXI_awburst(1 downto 0) => DPU0_M_AXI_DATA0_1_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => DPU0_M_AXI_DATA0_1_AWCACHE(3 downto 0),
      S00_AXI_awid(1 downto 0) => DPU0_M_AXI_DATA0_1_AWID(1 downto 0),
      S00_AXI_awlen(7 downto 0) => DPU0_M_AXI_DATA0_1_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => DPU0_M_AXI_DATA0_1_AWLOCK(0),
      S00_AXI_awprot(2 downto 0) => DPU0_M_AXI_DATA0_1_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => DPU0_M_AXI_DATA0_1_AWQOS(3 downto 0),
      S00_AXI_awready => DPU0_M_AXI_DATA0_1_AWREADY,
      S00_AXI_awsize(2 downto 0) => DPU0_M_AXI_DATA0_1_AWSIZE(2 downto 0),
      S00_AXI_awuser(0) => DPU0_M_AXI_DATA0_1_AWUSER(0),
      S00_AXI_awvalid => DPU0_M_AXI_DATA0_1_AWVALID,
      S00_AXI_bid(1 downto 0) => DPU0_M_AXI_DATA0_1_BID(1 downto 0),
      S00_AXI_bready => DPU0_M_AXI_DATA0_1_BREADY,
      S00_AXI_bresp(1 downto 0) => DPU0_M_AXI_DATA0_1_BRESP(1 downto 0),
      S00_AXI_bvalid => DPU0_M_AXI_DATA0_1_BVALID,
      S00_AXI_rdata(127 downto 0) => DPU0_M_AXI_DATA0_1_RDATA(127 downto 0),
      S00_AXI_rid(1 downto 0) => DPU0_M_AXI_DATA0_1_RID(1 downto 0),
      S00_AXI_rlast => DPU0_M_AXI_DATA0_1_RLAST,
      S00_AXI_rready => DPU0_M_AXI_DATA0_1_RREADY,
      S00_AXI_rresp(1 downto 0) => DPU0_M_AXI_DATA0_1_RRESP(1 downto 0),
      S00_AXI_rvalid => DPU0_M_AXI_DATA0_1_RVALID,
      S00_AXI_wdata(127 downto 0) => DPU0_M_AXI_DATA0_1_WDATA(127 downto 0),
      S00_AXI_wlast => DPU0_M_AXI_DATA0_1_WLAST,
      S00_AXI_wready => DPU0_M_AXI_DATA0_1_WREADY,
      S00_AXI_wstrb(15 downto 0) => DPU0_M_AXI_DATA0_1_WSTRB(15 downto 0),
      S00_AXI_wvalid => DPU0_M_AXI_DATA0_1_WVALID
    );
dpu_intc_M_AXI_HP1_FPD: entity work.top_dpu_intc_M_AXI_HP1_FPD_0
     port map (
      ACLK => CLK_1,
      ARESETN => RSTn_INTC_1,
      M00_ACLK => GHP_CLK_I_1,
      M00_ARESETN => GHP_RSTn_1,
      M00_AXI_araddr(39 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARADDR(39 downto 0),
      M00_AXI_arburst(1 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(1 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARID(1 downto 0),
      M00_AXI_arlen(7 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock => dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_aruser => dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARUSER,
      M00_AXI_arvalid => dpu_intc_M_AXI_HP1_FPD_M00_AXI_ARVALID,
      M00_AXI_awaddr(39 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWADDR(39 downto 0),
      M00_AXI_awburst(1 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(1 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWID(1 downto 0),
      M00_AXI_awlen(7 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock => dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWLOCK,
      M00_AXI_awprot(2 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awuser => dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWUSER,
      M00_AXI_awvalid => dpu_intc_M_AXI_HP1_FPD_M00_AXI_AWVALID,
      M00_AXI_bid(5 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_BID(5 downto 0),
      M00_AXI_bready => dpu_intc_M_AXI_HP1_FPD_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => dpu_intc_M_AXI_HP1_FPD_M00_AXI_BVALID,
      M00_AXI_rdata(127 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_RDATA(127 downto 0),
      M00_AXI_rid(5 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_RID(5 downto 0),
      M00_AXI_rlast => dpu_intc_M_AXI_HP1_FPD_M00_AXI_RLAST,
      M00_AXI_rready => dpu_intc_M_AXI_HP1_FPD_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => dpu_intc_M_AXI_HP1_FPD_M00_AXI_RVALID,
      M00_AXI_wdata(127 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_WDATA(127 downto 0),
      M00_AXI_wlast => dpu_intc_M_AXI_HP1_FPD_M00_AXI_WLAST,
      M00_AXI_wready => dpu_intc_M_AXI_HP1_FPD_M00_AXI_WREADY,
      M00_AXI_wstrb(15 downto 0) => dpu_intc_M_AXI_HP1_FPD_M00_AXI_WSTRB(15 downto 0),
      M00_AXI_wvalid => dpu_intc_M_AXI_HP1_FPD_M00_AXI_WVALID,
      S00_ACLK => CLK_1,
      S00_ARESETN => RSTn_PERI_1,
      S00_AXI_araddr(39 downto 0) => DPU0_M_AXI_DATA1_1_ARADDR(39 downto 0),
      S00_AXI_arburst(1 downto 0) => DPU0_M_AXI_DATA1_1_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => DPU0_M_AXI_DATA1_1_ARCACHE(3 downto 0),
      S00_AXI_arid(1 downto 0) => DPU0_M_AXI_DATA1_1_ARID(1 downto 0),
      S00_AXI_arlen(7 downto 0) => DPU0_M_AXI_DATA1_1_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => DPU0_M_AXI_DATA1_1_ARLOCK(0),
      S00_AXI_arprot(2 downto 0) => DPU0_M_AXI_DATA1_1_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => DPU0_M_AXI_DATA1_1_ARQOS(3 downto 0),
      S00_AXI_arready => DPU0_M_AXI_DATA1_1_ARREADY,
      S00_AXI_arsize(2 downto 0) => DPU0_M_AXI_DATA1_1_ARSIZE(2 downto 0),
      S00_AXI_aruser(0) => DPU0_M_AXI_DATA1_1_ARUSER(0),
      S00_AXI_arvalid => DPU0_M_AXI_DATA1_1_ARVALID,
      S00_AXI_awaddr(39 downto 0) => DPU0_M_AXI_DATA1_1_AWADDR(39 downto 0),
      S00_AXI_awburst(1 downto 0) => DPU0_M_AXI_DATA1_1_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => DPU0_M_AXI_DATA1_1_AWCACHE(3 downto 0),
      S00_AXI_awid(1 downto 0) => DPU0_M_AXI_DATA1_1_AWID(1 downto 0),
      S00_AXI_awlen(7 downto 0) => DPU0_M_AXI_DATA1_1_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => DPU0_M_AXI_DATA1_1_AWLOCK(0),
      S00_AXI_awprot(2 downto 0) => DPU0_M_AXI_DATA1_1_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => DPU0_M_AXI_DATA1_1_AWQOS(3 downto 0),
      S00_AXI_awready => DPU0_M_AXI_DATA1_1_AWREADY,
      S00_AXI_awsize(2 downto 0) => DPU0_M_AXI_DATA1_1_AWSIZE(2 downto 0),
      S00_AXI_awuser(0) => DPU0_M_AXI_DATA1_1_AWUSER(0),
      S00_AXI_awvalid => DPU0_M_AXI_DATA1_1_AWVALID,
      S00_AXI_bid(1 downto 0) => DPU0_M_AXI_DATA1_1_BID(1 downto 0),
      S00_AXI_bready => DPU0_M_AXI_DATA1_1_BREADY,
      S00_AXI_bresp(1 downto 0) => DPU0_M_AXI_DATA1_1_BRESP(1 downto 0),
      S00_AXI_bvalid => DPU0_M_AXI_DATA1_1_BVALID,
      S00_AXI_rdata(127 downto 0) => DPU0_M_AXI_DATA1_1_RDATA(127 downto 0),
      S00_AXI_rid(1 downto 0) => DPU0_M_AXI_DATA1_1_RID(1 downto 0),
      S00_AXI_rlast => DPU0_M_AXI_DATA1_1_RLAST,
      S00_AXI_rready => DPU0_M_AXI_DATA1_1_RREADY,
      S00_AXI_rresp(1 downto 0) => DPU0_M_AXI_DATA1_1_RRESP(1 downto 0),
      S00_AXI_rvalid => DPU0_M_AXI_DATA1_1_RVALID,
      S00_AXI_wdata(127 downto 0) => DPU0_M_AXI_DATA1_1_WDATA(127 downto 0),
      S00_AXI_wlast => DPU0_M_AXI_DATA1_1_WLAST,
      S00_AXI_wready => DPU0_M_AXI_DATA1_1_WREADY,
      S00_AXI_wstrb(15 downto 0) => DPU0_M_AXI_DATA1_1_WSTRB(15 downto 0),
      S00_AXI_wvalid => DPU0_M_AXI_DATA1_1_WVALID
    );
dpu_intc_M_AXI_LPD: entity work.top_dpu_intc_M_AXI_LPD_0
     port map (
      ACLK => CLK_1,
      ARESETN => RSTn_INTC_1,
      M00_ACLK => GHP_CLK_I_1,
      M00_ARESETN => GHP_RSTn_1,
      M00_AXI_araddr(39 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_ARADDR(39 downto 0),
      M00_AXI_arburst(1 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(1 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_ARID(1 downto 0),
      M00_AXI_arlen(7 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock => dpu_intc_M_AXI_LPD_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => dpu_intc_M_AXI_LPD_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_aruser => dpu_intc_M_AXI_LPD_M00_AXI_ARUSER,
      M00_AXI_arvalid => dpu_intc_M_AXI_LPD_M00_AXI_ARVALID,
      M00_AXI_awaddr(39 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_AWADDR(39 downto 0),
      M00_AXI_awburst(1 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(1 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_AWID(1 downto 0),
      M00_AXI_awlen(7 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock => dpu_intc_M_AXI_LPD_M00_AXI_AWLOCK,
      M00_AXI_awprot(2 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => dpu_intc_M_AXI_LPD_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awuser => dpu_intc_M_AXI_LPD_M00_AXI_AWUSER,
      M00_AXI_awvalid => dpu_intc_M_AXI_LPD_M00_AXI_AWVALID,
      M00_AXI_bid(5 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_BID(5 downto 0),
      M00_AXI_bready => dpu_intc_M_AXI_LPD_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => dpu_intc_M_AXI_LPD_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rid(5 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_RID(5 downto 0),
      M00_AXI_rlast => dpu_intc_M_AXI_LPD_M00_AXI_RLAST,
      M00_AXI_rready => dpu_intc_M_AXI_LPD_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => dpu_intc_M_AXI_LPD_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast => dpu_intc_M_AXI_LPD_M00_AXI_WLAST,
      M00_AXI_wready => dpu_intc_M_AXI_LPD_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => dpu_intc_M_AXI_LPD_M00_AXI_WVALID,
      S00_ACLK => CLK_1,
      S00_ARESETN => RSTn_PERI_1,
      S00_AXI_araddr(39 downto 0) => DPU0_M_AXI_INSTR_1_ARADDR(39 downto 0),
      S00_AXI_arburst(1 downto 0) => DPU0_M_AXI_INSTR_1_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => DPU0_M_AXI_INSTR_1_ARCACHE(3 downto 0),
      S00_AXI_arid(1 downto 0) => DPU0_M_AXI_INSTR_1_ARID(1 downto 0),
      S00_AXI_arlen(7 downto 0) => DPU0_M_AXI_INSTR_1_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => DPU0_M_AXI_INSTR_1_ARLOCK(0),
      S00_AXI_arprot(2 downto 0) => DPU0_M_AXI_INSTR_1_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => DPU0_M_AXI_INSTR_1_ARQOS(3 downto 0),
      S00_AXI_arready => DPU0_M_AXI_INSTR_1_ARREADY,
      S00_AXI_arsize(2 downto 0) => DPU0_M_AXI_INSTR_1_ARSIZE(2 downto 0),
      S00_AXI_aruser(0) => DPU0_M_AXI_INSTR_1_ARUSER(0),
      S00_AXI_arvalid => DPU0_M_AXI_INSTR_1_ARVALID,
      S00_AXI_awaddr(39 downto 0) => DPU0_M_AXI_INSTR_1_AWADDR(39 downto 0),
      S00_AXI_awburst(1 downto 0) => DPU0_M_AXI_INSTR_1_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => DPU0_M_AXI_INSTR_1_AWCACHE(3 downto 0),
      S00_AXI_awid(1 downto 0) => DPU0_M_AXI_INSTR_1_AWID(1 downto 0),
      S00_AXI_awlen(7 downto 0) => DPU0_M_AXI_INSTR_1_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => DPU0_M_AXI_INSTR_1_AWLOCK(0),
      S00_AXI_awprot(2 downto 0) => DPU0_M_AXI_INSTR_1_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => DPU0_M_AXI_INSTR_1_AWQOS(3 downto 0),
      S00_AXI_awready => DPU0_M_AXI_INSTR_1_AWREADY,
      S00_AXI_awsize(2 downto 0) => DPU0_M_AXI_INSTR_1_AWSIZE(2 downto 0),
      S00_AXI_awuser(0) => DPU0_M_AXI_INSTR_1_AWUSER(0),
      S00_AXI_awvalid => DPU0_M_AXI_INSTR_1_AWVALID,
      S00_AXI_bid(1 downto 0) => DPU0_M_AXI_INSTR_1_BID(1 downto 0),
      S00_AXI_bready => DPU0_M_AXI_INSTR_1_BREADY,
      S00_AXI_bresp(1 downto 0) => DPU0_M_AXI_INSTR_1_BRESP(1 downto 0),
      S00_AXI_bvalid => DPU0_M_AXI_INSTR_1_BVALID,
      S00_AXI_rdata(31 downto 0) => DPU0_M_AXI_INSTR_1_RDATA(31 downto 0),
      S00_AXI_rid(1 downto 0) => DPU0_M_AXI_INSTR_1_RID(1 downto 0),
      S00_AXI_rlast => DPU0_M_AXI_INSTR_1_RLAST,
      S00_AXI_rready => DPU0_M_AXI_INSTR_1_RREADY,
      S00_AXI_rresp(1 downto 0) => DPU0_M_AXI_INSTR_1_RRESP(1 downto 0),
      S00_AXI_rvalid => DPU0_M_AXI_INSTR_1_RVALID,
      S00_AXI_wdata(31 downto 0) => DPU0_M_AXI_INSTR_1_WDATA(31 downto 0),
      S00_AXI_wlast => DPU0_M_AXI_INSTR_1_WLAST,
      S00_AXI_wready => DPU0_M_AXI_INSTR_1_WREADY,
      S00_AXI_wstrb(3 downto 0) => DPU0_M_AXI_INSTR_1_WSTRB(3 downto 0),
      S00_AXI_wvalid => DPU0_M_AXI_INSTR_1_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hier_dpu_imp_CAA3KC is
  port (
    CLK : in STD_LOGIC;
    GHP_CLK_I : in STD_LOGIC;
    GHP_CLK_O : out STD_LOGIC;
    GHP_RSTn : in STD_LOGIC;
    INTR : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_HP0_FPD_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_HP0_FPD_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP0_FPD_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_HP0_FPD_arlock : out STD_LOGIC;
    M_AXI_HP0_FPD_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP0_FPD_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP0_FPD_arready : in STD_LOGIC;
    M_AXI_HP0_FPD_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP0_FPD_aruser : out STD_LOGIC;
    M_AXI_HP0_FPD_arvalid : out STD_LOGIC;
    M_AXI_HP0_FPD_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_HP0_FPD_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP0_FPD_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_HP0_FPD_awlock : out STD_LOGIC;
    M_AXI_HP0_FPD_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP0_FPD_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP0_FPD_awready : in STD_LOGIC;
    M_AXI_HP0_FPD_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP0_FPD_awuser : out STD_LOGIC;
    M_AXI_HP0_FPD_awvalid : out STD_LOGIC;
    M_AXI_HP0_FPD_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_HP0_FPD_bready : out STD_LOGIC;
    M_AXI_HP0_FPD_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_bvalid : in STD_LOGIC;
    M_AXI_HP0_FPD_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_HP0_FPD_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_HP0_FPD_rlast : in STD_LOGIC;
    M_AXI_HP0_FPD_rready : out STD_LOGIC;
    M_AXI_HP0_FPD_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_rvalid : in STD_LOGIC;
    M_AXI_HP0_FPD_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_HP0_FPD_wlast : out STD_LOGIC;
    M_AXI_HP0_FPD_wready : in STD_LOGIC;
    M_AXI_HP0_FPD_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_HP0_FPD_wvalid : out STD_LOGIC;
    M_AXI_HP1_FPD_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_HP1_FPD_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP1_FPD_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_HP1_FPD_arlock : out STD_LOGIC;
    M_AXI_HP1_FPD_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP1_FPD_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP1_FPD_arready : in STD_LOGIC;
    M_AXI_HP1_FPD_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP1_FPD_aruser : out STD_LOGIC;
    M_AXI_HP1_FPD_arvalid : out STD_LOGIC;
    M_AXI_HP1_FPD_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_HP1_FPD_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP1_FPD_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_HP1_FPD_awlock : out STD_LOGIC;
    M_AXI_HP1_FPD_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP1_FPD_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP1_FPD_awready : in STD_LOGIC;
    M_AXI_HP1_FPD_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP1_FPD_awuser : out STD_LOGIC;
    M_AXI_HP1_FPD_awvalid : out STD_LOGIC;
    M_AXI_HP1_FPD_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_HP1_FPD_bready : out STD_LOGIC;
    M_AXI_HP1_FPD_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_bvalid : in STD_LOGIC;
    M_AXI_HP1_FPD_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_HP1_FPD_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_HP1_FPD_rlast : in STD_LOGIC;
    M_AXI_HP1_FPD_rready : out STD_LOGIC;
    M_AXI_HP1_FPD_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_rvalid : in STD_LOGIC;
    M_AXI_HP1_FPD_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_HP1_FPD_wlast : out STD_LOGIC;
    M_AXI_HP1_FPD_wready : in STD_LOGIC;
    M_AXI_HP1_FPD_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_HP1_FPD_wvalid : out STD_LOGIC;
    M_AXI_LPD_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_LPD_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_LPD_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_LPD_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_LPD_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_LPD_arlock : out STD_LOGIC;
    M_AXI_LPD_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_LPD_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_LPD_arready : in STD_LOGIC;
    M_AXI_LPD_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_LPD_aruser : out STD_LOGIC;
    M_AXI_LPD_arvalid : out STD_LOGIC;
    M_AXI_LPD_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_LPD_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_LPD_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_LPD_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_LPD_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_LPD_awlock : out STD_LOGIC;
    M_AXI_LPD_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_LPD_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_LPD_awready : in STD_LOGIC;
    M_AXI_LPD_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_LPD_awuser : out STD_LOGIC;
    M_AXI_LPD_awvalid : out STD_LOGIC;
    M_AXI_LPD_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_LPD_bready : out STD_LOGIC;
    M_AXI_LPD_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_LPD_bvalid : in STD_LOGIC;
    M_AXI_LPD_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_LPD_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_LPD_rlast : in STD_LOGIC;
    M_AXI_LPD_rready : out STD_LOGIC;
    M_AXI_LPD_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_LPD_rvalid : in STD_LOGIC;
    M_AXI_LPD_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_LPD_wlast : out STD_LOGIC;
    M_AXI_LPD_wready : in STD_LOGIC;
    M_AXI_LPD_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_LPD_wvalid : out STD_LOGIC;
    RSTn : in STD_LOGIC;
    S_AXI_CLK : in STD_LOGIC;
    S_AXI_RSTn : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end hier_dpu_imp_CAA3KC;

architecture STRUCTURE of hier_dpu_imp_CAA3KC is
  component top_DPUCZDX8G_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    dpu_2x_clk : in STD_LOGIC;
    dpu_2x_clk_ce : out STD_LOGIC;
    dpu_2x_resetn : in STD_LOGIC;
    m_axi_dpu_aclk : in STD_LOGIC;
    m_axi_dpu_aresetn : in STD_LOGIC;
    dpu0_interrupt : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    dpu0_m_axi_instr_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_instr_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    dpu0_m_axi_instr_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dpu0_m_axi_instr_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_instr_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_instr_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    dpu0_m_axi_instr_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_instr_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_instr_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_instr_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    dpu0_m_axi_instr_awvalid : out STD_LOGIC;
    dpu0_m_axi_instr_awready : in STD_LOGIC;
    dpu0_m_axi_instr_wid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    dpu0_m_axi_instr_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dpu0_m_axi_instr_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_instr_wlast : out STD_LOGIC;
    dpu0_m_axi_instr_wvalid : out STD_LOGIC;
    dpu0_m_axi_instr_wready : in STD_LOGIC;
    dpu0_m_axi_instr_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dpu0_m_axi_instr_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_instr_bvalid : in STD_LOGIC;
    dpu0_m_axi_instr_bready : out STD_LOGIC;
    dpu0_m_axi_instr_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_instr_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    dpu0_m_axi_instr_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dpu0_m_axi_instr_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_instr_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_instr_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    dpu0_m_axi_instr_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_instr_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_instr_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_instr_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    dpu0_m_axi_instr_arvalid : out STD_LOGIC;
    dpu0_m_axi_instr_arready : in STD_LOGIC;
    dpu0_m_axi_instr_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dpu0_m_axi_instr_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpu0_m_axi_instr_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_instr_rlast : in STD_LOGIC;
    dpu0_m_axi_instr_rvalid : in STD_LOGIC;
    dpu0_m_axi_instr_rready : out STD_LOGIC;
    dpu0_m_axi_data0_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data0_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    dpu0_m_axi_data0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dpu0_m_axi_data0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_data0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data0_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    dpu0_m_axi_data0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_data0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data0_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    dpu0_m_axi_data0_awvalid : out STD_LOGIC;
    dpu0_m_axi_data0_awready : in STD_LOGIC;
    dpu0_m_axi_data0_wid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    dpu0_m_axi_data0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    dpu0_m_axi_data0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dpu0_m_axi_data0_wlast : out STD_LOGIC;
    dpu0_m_axi_data0_wvalid : out STD_LOGIC;
    dpu0_m_axi_data0_wready : in STD_LOGIC;
    dpu0_m_axi_data0_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dpu0_m_axi_data0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data0_bvalid : in STD_LOGIC;
    dpu0_m_axi_data0_bready : out STD_LOGIC;
    dpu0_m_axi_data0_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data0_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    dpu0_m_axi_data0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dpu0_m_axi_data0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_data0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data0_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    dpu0_m_axi_data0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_data0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data0_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    dpu0_m_axi_data0_arvalid : out STD_LOGIC;
    dpu0_m_axi_data0_arready : in STD_LOGIC;
    dpu0_m_axi_data0_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dpu0_m_axi_data0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    dpu0_m_axi_data0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data0_rlast : in STD_LOGIC;
    dpu0_m_axi_data0_rvalid : in STD_LOGIC;
    dpu0_m_axi_data0_rready : out STD_LOGIC;
    dpu0_m_axi_data1_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data1_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    dpu0_m_axi_data1_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dpu0_m_axi_data1_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_data1_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data1_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    dpu0_m_axi_data1_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data1_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_data1_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data1_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    dpu0_m_axi_data1_awvalid : out STD_LOGIC;
    dpu0_m_axi_data1_awready : in STD_LOGIC;
    dpu0_m_axi_data1_wid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    dpu0_m_axi_data1_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    dpu0_m_axi_data1_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dpu0_m_axi_data1_wlast : out STD_LOGIC;
    dpu0_m_axi_data1_wvalid : out STD_LOGIC;
    dpu0_m_axi_data1_wready : in STD_LOGIC;
    dpu0_m_axi_data1_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dpu0_m_axi_data1_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data1_bvalid : in STD_LOGIC;
    dpu0_m_axi_data1_bready : out STD_LOGIC;
    dpu0_m_axi_data1_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data1_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    dpu0_m_axi_data1_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dpu0_m_axi_data1_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_data1_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data1_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    dpu0_m_axi_data1_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data1_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_data1_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data1_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    dpu0_m_axi_data1_arvalid : out STD_LOGIC;
    dpu0_m_axi_data1_arready : in STD_LOGIC;
    dpu0_m_axi_data1_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dpu0_m_axi_data1_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    dpu0_m_axi_data1_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data1_rlast : in STD_LOGIC;
    dpu0_m_axi_data1_rvalid : in STD_LOGIC;
    dpu0_m_axi_data1_rready : out STD_LOGIC
  );
  end component top_DPUCZDX8G_0;
  signal CLK_1 : STD_LOGIC;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal Conn1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn1_ARLOCK : STD_LOGIC;
  signal Conn1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARUSER : STD_LOGIC;
  signal Conn1_ARVALID : STD_LOGIC;
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal Conn1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn1_AWLOCK : STD_LOGIC;
  signal Conn1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWUSER : STD_LOGIC;
  signal Conn1_AWVALID : STD_LOGIC;
  signal Conn1_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal Conn1_BREADY : STD_LOGIC;
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal Conn1_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal Conn1_RLAST : STD_LOGIC;
  signal Conn1_RREADY : STD_LOGIC;
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal Conn1_WLAST : STD_LOGIC;
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Conn1_WVALID : STD_LOGIC;
  signal Conn2_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal Conn2_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn2_ARLOCK : STD_LOGIC;
  signal Conn2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ARREADY : STD_LOGIC;
  signal Conn2_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARUSER : STD_LOGIC;
  signal Conn2_ARVALID : STD_LOGIC;
  signal Conn2_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal Conn2_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn2_AWLOCK : STD_LOGIC;
  signal Conn2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_AWREADY : STD_LOGIC;
  signal Conn2_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_AWUSER : STD_LOGIC;
  signal Conn2_AWVALID : STD_LOGIC;
  signal Conn2_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal Conn2_BREADY : STD_LOGIC;
  signal Conn2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_BVALID : STD_LOGIC;
  signal Conn2_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal Conn2_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal Conn2_RLAST : STD_LOGIC;
  signal Conn2_RREADY : STD_LOGIC;
  signal Conn2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_RVALID : STD_LOGIC;
  signal Conn2_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal Conn2_WLAST : STD_LOGIC;
  signal Conn2_WREADY : STD_LOGIC;
  signal Conn2_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Conn2_WVALID : STD_LOGIC;
  signal Conn3_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal Conn3_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn3_ARLOCK : STD_LOGIC;
  signal Conn3_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn3_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_ARREADY : STD_LOGIC;
  signal Conn3_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn3_ARUSER : STD_LOGIC;
  signal Conn3_ARVALID : STD_LOGIC;
  signal Conn3_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal Conn3_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn3_AWLOCK : STD_LOGIC;
  signal Conn3_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn3_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_AWREADY : STD_LOGIC;
  signal Conn3_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn3_AWUSER : STD_LOGIC;
  signal Conn3_AWVALID : STD_LOGIC;
  signal Conn3_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal Conn3_BREADY : STD_LOGIC;
  signal Conn3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_BVALID : STD_LOGIC;
  signal Conn3_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal Conn3_RLAST : STD_LOGIC;
  signal Conn3_RREADY : STD_LOGIC;
  signal Conn3_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_RVALID : STD_LOGIC;
  signal Conn3_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_WLAST : STD_LOGIC;
  signal Conn3_WREADY : STD_LOGIC;
  signal Conn3_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_WVALID : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_ARREADY : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_ARVALID : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_AWREADY : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_AWVALID : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_BREADY : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_BVALID : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_RLAST : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_RREADY : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_RVALID : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_WLAST : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_WREADY : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA0_WVALID : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_ARREADY : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_ARVALID : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_AWREADY : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_AWVALID : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_BREADY : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_BVALID : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_RLAST : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_RREADY : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_RVALID : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_WLAST : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_WREADY : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_DATA1_WVALID : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_ARREADY : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_ARUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_ARVALID : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_AWREADY : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_AWUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_AWVALID : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_BREADY : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_BVALID : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_RLAST : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_RREADY : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_RVALID : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_WLAST : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_WREADY : STD_LOGIC;
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_DPU0_M_AXI_INSTR_WVALID : STD_LOGIC;
  signal DPUCZDX8G_dpu0_interrupt : STD_LOGIC;
  signal DPUCZDX8G_dpu_2x_clk_ce : STD_LOGIC;
  signal GHP_CLK_I_1 : STD_LOGIC;
  signal GHP_RSTn_1 : STD_LOGIC;
  signal RSTn_1 : STD_LOGIC;
  signal S_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_1_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXI_1_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_1_ARREADY : STD_LOGIC;
  signal S_AXI_1_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_1_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S_AXI_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_1_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXI_1_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_1_AWREADY : STD_LOGIC;
  signal S_AXI_1_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_1_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S_AXI_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S_AXI_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_BVALID : STD_LOGIC;
  signal S_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_1_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S_AXI_1_RLAST : STD_LOGIC;
  signal S_AXI_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_RVALID : STD_LOGIC;
  signal S_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_1_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_WREADY : STD_LOGIC;
  signal S_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CLK_1 : STD_LOGIC;
  signal S_AXI_RSTn_1 : STD_LOGIC;
  signal hier_dpu_clk_DPU_CLK : STD_LOGIC;
  signal hier_dpu_clk_DSP_CLK : STD_LOGIC;
  signal hier_dpu_clk_RSTn_DSP : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_dpu_clk_RSTn_INTC : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_dpu_clk_RSTn_PERI : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_dpu_ghp_GHP_CLK_O : STD_LOGIC;
  signal hier_dpu_irq_INTR : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DPUCZDX8G_dpu0_m_axi_data0_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_DPUCZDX8G_dpu0_m_axi_data1_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_DPUCZDX8G_dpu0_m_axi_instr_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_hier_dpu_clk_LOCKED_UNCONNECTED : STD_LOGIC;
begin
  CLK_1 <= CLK;
  Conn1_ARREADY <= M_AXI_HP0_FPD_arready;
  Conn1_AWREADY <= M_AXI_HP0_FPD_awready;
  Conn1_BID(5 downto 0) <= M_AXI_HP0_FPD_bid(5 downto 0);
  Conn1_BRESP(1 downto 0) <= M_AXI_HP0_FPD_bresp(1 downto 0);
  Conn1_BVALID <= M_AXI_HP0_FPD_bvalid;
  Conn1_RDATA(127 downto 0) <= M_AXI_HP0_FPD_rdata(127 downto 0);
  Conn1_RID(5 downto 0) <= M_AXI_HP0_FPD_rid(5 downto 0);
  Conn1_RLAST <= M_AXI_HP0_FPD_rlast;
  Conn1_RRESP(1 downto 0) <= M_AXI_HP0_FPD_rresp(1 downto 0);
  Conn1_RVALID <= M_AXI_HP0_FPD_rvalid;
  Conn1_WREADY <= M_AXI_HP0_FPD_wready;
  Conn2_ARREADY <= M_AXI_HP1_FPD_arready;
  Conn2_AWREADY <= M_AXI_HP1_FPD_awready;
  Conn2_BID(5 downto 0) <= M_AXI_HP1_FPD_bid(5 downto 0);
  Conn2_BRESP(1 downto 0) <= M_AXI_HP1_FPD_bresp(1 downto 0);
  Conn2_BVALID <= M_AXI_HP1_FPD_bvalid;
  Conn2_RDATA(127 downto 0) <= M_AXI_HP1_FPD_rdata(127 downto 0);
  Conn2_RID(5 downto 0) <= M_AXI_HP1_FPD_rid(5 downto 0);
  Conn2_RLAST <= M_AXI_HP1_FPD_rlast;
  Conn2_RRESP(1 downto 0) <= M_AXI_HP1_FPD_rresp(1 downto 0);
  Conn2_RVALID <= M_AXI_HP1_FPD_rvalid;
  Conn2_WREADY <= M_AXI_HP1_FPD_wready;
  Conn3_ARREADY <= M_AXI_LPD_arready;
  Conn3_AWREADY <= M_AXI_LPD_awready;
  Conn3_BID(5 downto 0) <= M_AXI_LPD_bid(5 downto 0);
  Conn3_BRESP(1 downto 0) <= M_AXI_LPD_bresp(1 downto 0);
  Conn3_BVALID <= M_AXI_LPD_bvalid;
  Conn3_RDATA(31 downto 0) <= M_AXI_LPD_rdata(31 downto 0);
  Conn3_RID(5 downto 0) <= M_AXI_LPD_rid(5 downto 0);
  Conn3_RLAST <= M_AXI_LPD_rlast;
  Conn3_RRESP(1 downto 0) <= M_AXI_LPD_rresp(1 downto 0);
  Conn3_RVALID <= M_AXI_LPD_rvalid;
  Conn3_WREADY <= M_AXI_LPD_wready;
  GHP_CLK_I_1 <= GHP_CLK_I;
  GHP_CLK_O <= hier_dpu_ghp_GHP_CLK_O;
  GHP_RSTn_1 <= GHP_RSTn;
  INTR(0) <= hier_dpu_irq_INTR(0);
  M_AXI_HP0_FPD_araddr(39 downto 0) <= Conn1_ARADDR(39 downto 0);
  M_AXI_HP0_FPD_arburst(1 downto 0) <= Conn1_ARBURST(1 downto 0);
  M_AXI_HP0_FPD_arcache(3 downto 0) <= Conn1_ARCACHE(3 downto 0);
  M_AXI_HP0_FPD_arid(1 downto 0) <= Conn1_ARID(1 downto 0);
  M_AXI_HP0_FPD_arlen(7 downto 0) <= Conn1_ARLEN(7 downto 0);
  M_AXI_HP0_FPD_arlock <= Conn1_ARLOCK;
  M_AXI_HP0_FPD_arprot(2 downto 0) <= Conn1_ARPROT(2 downto 0);
  M_AXI_HP0_FPD_arqos(3 downto 0) <= Conn1_ARQOS(3 downto 0);
  M_AXI_HP0_FPD_arsize(2 downto 0) <= Conn1_ARSIZE(2 downto 0);
  M_AXI_HP0_FPD_aruser <= Conn1_ARUSER;
  M_AXI_HP0_FPD_arvalid <= Conn1_ARVALID;
  M_AXI_HP0_FPD_awaddr(39 downto 0) <= Conn1_AWADDR(39 downto 0);
  M_AXI_HP0_FPD_awburst(1 downto 0) <= Conn1_AWBURST(1 downto 0);
  M_AXI_HP0_FPD_awcache(3 downto 0) <= Conn1_AWCACHE(3 downto 0);
  M_AXI_HP0_FPD_awid(1 downto 0) <= Conn1_AWID(1 downto 0);
  M_AXI_HP0_FPD_awlen(7 downto 0) <= Conn1_AWLEN(7 downto 0);
  M_AXI_HP0_FPD_awlock <= Conn1_AWLOCK;
  M_AXI_HP0_FPD_awprot(2 downto 0) <= Conn1_AWPROT(2 downto 0);
  M_AXI_HP0_FPD_awqos(3 downto 0) <= Conn1_AWQOS(3 downto 0);
  M_AXI_HP0_FPD_awsize(2 downto 0) <= Conn1_AWSIZE(2 downto 0);
  M_AXI_HP0_FPD_awuser <= Conn1_AWUSER;
  M_AXI_HP0_FPD_awvalid <= Conn1_AWVALID;
  M_AXI_HP0_FPD_bready <= Conn1_BREADY;
  M_AXI_HP0_FPD_rready <= Conn1_RREADY;
  M_AXI_HP0_FPD_wdata(127 downto 0) <= Conn1_WDATA(127 downto 0);
  M_AXI_HP0_FPD_wlast <= Conn1_WLAST;
  M_AXI_HP0_FPD_wstrb(15 downto 0) <= Conn1_WSTRB(15 downto 0);
  M_AXI_HP0_FPD_wvalid <= Conn1_WVALID;
  M_AXI_HP1_FPD_araddr(39 downto 0) <= Conn2_ARADDR(39 downto 0);
  M_AXI_HP1_FPD_arburst(1 downto 0) <= Conn2_ARBURST(1 downto 0);
  M_AXI_HP1_FPD_arcache(3 downto 0) <= Conn2_ARCACHE(3 downto 0);
  M_AXI_HP1_FPD_arid(1 downto 0) <= Conn2_ARID(1 downto 0);
  M_AXI_HP1_FPD_arlen(7 downto 0) <= Conn2_ARLEN(7 downto 0);
  M_AXI_HP1_FPD_arlock <= Conn2_ARLOCK;
  M_AXI_HP1_FPD_arprot(2 downto 0) <= Conn2_ARPROT(2 downto 0);
  M_AXI_HP1_FPD_arqos(3 downto 0) <= Conn2_ARQOS(3 downto 0);
  M_AXI_HP1_FPD_arsize(2 downto 0) <= Conn2_ARSIZE(2 downto 0);
  M_AXI_HP1_FPD_aruser <= Conn2_ARUSER;
  M_AXI_HP1_FPD_arvalid <= Conn2_ARVALID;
  M_AXI_HP1_FPD_awaddr(39 downto 0) <= Conn2_AWADDR(39 downto 0);
  M_AXI_HP1_FPD_awburst(1 downto 0) <= Conn2_AWBURST(1 downto 0);
  M_AXI_HP1_FPD_awcache(3 downto 0) <= Conn2_AWCACHE(3 downto 0);
  M_AXI_HP1_FPD_awid(1 downto 0) <= Conn2_AWID(1 downto 0);
  M_AXI_HP1_FPD_awlen(7 downto 0) <= Conn2_AWLEN(7 downto 0);
  M_AXI_HP1_FPD_awlock <= Conn2_AWLOCK;
  M_AXI_HP1_FPD_awprot(2 downto 0) <= Conn2_AWPROT(2 downto 0);
  M_AXI_HP1_FPD_awqos(3 downto 0) <= Conn2_AWQOS(3 downto 0);
  M_AXI_HP1_FPD_awsize(2 downto 0) <= Conn2_AWSIZE(2 downto 0);
  M_AXI_HP1_FPD_awuser <= Conn2_AWUSER;
  M_AXI_HP1_FPD_awvalid <= Conn2_AWVALID;
  M_AXI_HP1_FPD_bready <= Conn2_BREADY;
  M_AXI_HP1_FPD_rready <= Conn2_RREADY;
  M_AXI_HP1_FPD_wdata(127 downto 0) <= Conn2_WDATA(127 downto 0);
  M_AXI_HP1_FPD_wlast <= Conn2_WLAST;
  M_AXI_HP1_FPD_wstrb(15 downto 0) <= Conn2_WSTRB(15 downto 0);
  M_AXI_HP1_FPD_wvalid <= Conn2_WVALID;
  M_AXI_LPD_araddr(39 downto 0) <= Conn3_ARADDR(39 downto 0);
  M_AXI_LPD_arburst(1 downto 0) <= Conn3_ARBURST(1 downto 0);
  M_AXI_LPD_arcache(3 downto 0) <= Conn3_ARCACHE(3 downto 0);
  M_AXI_LPD_arid(1 downto 0) <= Conn3_ARID(1 downto 0);
  M_AXI_LPD_arlen(7 downto 0) <= Conn3_ARLEN(7 downto 0);
  M_AXI_LPD_arlock <= Conn3_ARLOCK;
  M_AXI_LPD_arprot(2 downto 0) <= Conn3_ARPROT(2 downto 0);
  M_AXI_LPD_arqos(3 downto 0) <= Conn3_ARQOS(3 downto 0);
  M_AXI_LPD_arsize(2 downto 0) <= Conn3_ARSIZE(2 downto 0);
  M_AXI_LPD_aruser <= Conn3_ARUSER;
  M_AXI_LPD_arvalid <= Conn3_ARVALID;
  M_AXI_LPD_awaddr(39 downto 0) <= Conn3_AWADDR(39 downto 0);
  M_AXI_LPD_awburst(1 downto 0) <= Conn3_AWBURST(1 downto 0);
  M_AXI_LPD_awcache(3 downto 0) <= Conn3_AWCACHE(3 downto 0);
  M_AXI_LPD_awid(1 downto 0) <= Conn3_AWID(1 downto 0);
  M_AXI_LPD_awlen(7 downto 0) <= Conn3_AWLEN(7 downto 0);
  M_AXI_LPD_awlock <= Conn3_AWLOCK;
  M_AXI_LPD_awprot(2 downto 0) <= Conn3_AWPROT(2 downto 0);
  M_AXI_LPD_awqos(3 downto 0) <= Conn3_AWQOS(3 downto 0);
  M_AXI_LPD_awsize(2 downto 0) <= Conn3_AWSIZE(2 downto 0);
  M_AXI_LPD_awuser <= Conn3_AWUSER;
  M_AXI_LPD_awvalid <= Conn3_AWVALID;
  M_AXI_LPD_bready <= Conn3_BREADY;
  M_AXI_LPD_rready <= Conn3_RREADY;
  M_AXI_LPD_wdata(31 downto 0) <= Conn3_WDATA(31 downto 0);
  M_AXI_LPD_wlast <= Conn3_WLAST;
  M_AXI_LPD_wstrb(3 downto 0) <= Conn3_WSTRB(3 downto 0);
  M_AXI_LPD_wvalid <= Conn3_WVALID;
  RSTn_1 <= RSTn;
  S_AXI_1_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  S_AXI_1_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  S_AXI_1_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  S_AXI_1_ARID(15 downto 0) <= S_AXI_arid(15 downto 0);
  S_AXI_1_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  S_AXI_1_ARLOCK(0) <= S_AXI_arlock(0);
  S_AXI_1_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  S_AXI_1_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  S_AXI_1_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  S_AXI_1_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  S_AXI_1_ARUSER(15 downto 0) <= S_AXI_aruser(15 downto 0);
  S_AXI_1_ARVALID(0) <= S_AXI_arvalid(0);
  S_AXI_1_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  S_AXI_1_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  S_AXI_1_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  S_AXI_1_AWID(15 downto 0) <= S_AXI_awid(15 downto 0);
  S_AXI_1_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  S_AXI_1_AWLOCK(0) <= S_AXI_awlock(0);
  S_AXI_1_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  S_AXI_1_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  S_AXI_1_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  S_AXI_1_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  S_AXI_1_AWUSER(15 downto 0) <= S_AXI_awuser(15 downto 0);
  S_AXI_1_AWVALID(0) <= S_AXI_awvalid(0);
  S_AXI_1_BREADY(0) <= S_AXI_bready(0);
  S_AXI_1_RREADY(0) <= S_AXI_rready(0);
  S_AXI_1_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  S_AXI_1_WLAST(0) <= S_AXI_wlast(0);
  S_AXI_1_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  S_AXI_1_WVALID(0) <= S_AXI_wvalid(0);
  S_AXI_CLK_1 <= S_AXI_CLK;
  S_AXI_RSTn_1 <= S_AXI_RSTn;
  S_AXI_arready(0) <= S_AXI_1_ARREADY;
  S_AXI_awready(0) <= S_AXI_1_AWREADY;
  S_AXI_bid(15 downto 0) <= S_AXI_1_BID(15 downto 0);
  S_AXI_bresp(1 downto 0) <= S_AXI_1_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= S_AXI_1_BVALID;
  S_AXI_rdata(31 downto 0) <= S_AXI_1_RDATA(31 downto 0);
  S_AXI_rid(15 downto 0) <= S_AXI_1_RID(15 downto 0);
  S_AXI_rlast(0) <= S_AXI_1_RLAST;
  S_AXI_rresp(1 downto 0) <= S_AXI_1_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= S_AXI_1_RVALID;
  S_AXI_wready(0) <= S_AXI_1_WREADY;
DPUCZDX8G: component top_DPUCZDX8G_0
     port map (
      dpu0_interrupt => DPUCZDX8G_dpu0_interrupt,
      dpu0_m_axi_data0_araddr(39 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARADDR(39 downto 0),
      dpu0_m_axi_data0_arburst(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARBURST(1 downto 0),
      dpu0_m_axi_data0_arcache(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARCACHE(3 downto 0),
      dpu0_m_axi_data0_arid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARID(1 downto 0),
      dpu0_m_axi_data0_arlen(7 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARLEN(7 downto 0),
      dpu0_m_axi_data0_arlock(0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARLOCK(0),
      dpu0_m_axi_data0_arprot(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARPROT(2 downto 0),
      dpu0_m_axi_data0_arqos(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARQOS(3 downto 0),
      dpu0_m_axi_data0_arready => DPUCZDX8G_DPU0_M_AXI_DATA0_ARREADY,
      dpu0_m_axi_data0_arsize(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARSIZE(2 downto 0),
      dpu0_m_axi_data0_aruser(0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARUSER(0),
      dpu0_m_axi_data0_arvalid => DPUCZDX8G_DPU0_M_AXI_DATA0_ARVALID,
      dpu0_m_axi_data0_awaddr(39 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWADDR(39 downto 0),
      dpu0_m_axi_data0_awburst(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWBURST(1 downto 0),
      dpu0_m_axi_data0_awcache(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWCACHE(3 downto 0),
      dpu0_m_axi_data0_awid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWID(1 downto 0),
      dpu0_m_axi_data0_awlen(7 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWLEN(7 downto 0),
      dpu0_m_axi_data0_awlock(0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWLOCK(0),
      dpu0_m_axi_data0_awprot(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWPROT(2 downto 0),
      dpu0_m_axi_data0_awqos(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWQOS(3 downto 0),
      dpu0_m_axi_data0_awready => DPUCZDX8G_DPU0_M_AXI_DATA0_AWREADY,
      dpu0_m_axi_data0_awsize(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWSIZE(2 downto 0),
      dpu0_m_axi_data0_awuser(0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWUSER(0),
      dpu0_m_axi_data0_awvalid => DPUCZDX8G_DPU0_M_AXI_DATA0_AWVALID,
      dpu0_m_axi_data0_bid(5 downto 2) => B"0000",
      dpu0_m_axi_data0_bid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_BID(1 downto 0),
      dpu0_m_axi_data0_bready => DPUCZDX8G_DPU0_M_AXI_DATA0_BREADY,
      dpu0_m_axi_data0_bresp(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_BRESP(1 downto 0),
      dpu0_m_axi_data0_bvalid => DPUCZDX8G_DPU0_M_AXI_DATA0_BVALID,
      dpu0_m_axi_data0_rdata(127 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_RDATA(127 downto 0),
      dpu0_m_axi_data0_rid(5 downto 2) => B"0000",
      dpu0_m_axi_data0_rid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_RID(1 downto 0),
      dpu0_m_axi_data0_rlast => DPUCZDX8G_DPU0_M_AXI_DATA0_RLAST,
      dpu0_m_axi_data0_rready => DPUCZDX8G_DPU0_M_AXI_DATA0_RREADY,
      dpu0_m_axi_data0_rresp(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_RRESP(1 downto 0),
      dpu0_m_axi_data0_rvalid => DPUCZDX8G_DPU0_M_AXI_DATA0_RVALID,
      dpu0_m_axi_data0_wdata(127 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_WDATA(127 downto 0),
      dpu0_m_axi_data0_wid(5 downto 0) => NLW_DPUCZDX8G_dpu0_m_axi_data0_wid_UNCONNECTED(5 downto 0),
      dpu0_m_axi_data0_wlast => DPUCZDX8G_DPU0_M_AXI_DATA0_WLAST,
      dpu0_m_axi_data0_wready => DPUCZDX8G_DPU0_M_AXI_DATA0_WREADY,
      dpu0_m_axi_data0_wstrb(15 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_WSTRB(15 downto 0),
      dpu0_m_axi_data0_wvalid => DPUCZDX8G_DPU0_M_AXI_DATA0_WVALID,
      dpu0_m_axi_data1_araddr(39 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARADDR(39 downto 0),
      dpu0_m_axi_data1_arburst(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARBURST(1 downto 0),
      dpu0_m_axi_data1_arcache(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARCACHE(3 downto 0),
      dpu0_m_axi_data1_arid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARID(1 downto 0),
      dpu0_m_axi_data1_arlen(7 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARLEN(7 downto 0),
      dpu0_m_axi_data1_arlock(0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARLOCK(0),
      dpu0_m_axi_data1_arprot(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARPROT(2 downto 0),
      dpu0_m_axi_data1_arqos(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARQOS(3 downto 0),
      dpu0_m_axi_data1_arready => DPUCZDX8G_DPU0_M_AXI_DATA1_ARREADY,
      dpu0_m_axi_data1_arsize(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARSIZE(2 downto 0),
      dpu0_m_axi_data1_aruser(0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARUSER(0),
      dpu0_m_axi_data1_arvalid => DPUCZDX8G_DPU0_M_AXI_DATA1_ARVALID,
      dpu0_m_axi_data1_awaddr(39 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWADDR(39 downto 0),
      dpu0_m_axi_data1_awburst(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWBURST(1 downto 0),
      dpu0_m_axi_data1_awcache(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWCACHE(3 downto 0),
      dpu0_m_axi_data1_awid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWID(1 downto 0),
      dpu0_m_axi_data1_awlen(7 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWLEN(7 downto 0),
      dpu0_m_axi_data1_awlock(0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWLOCK(0),
      dpu0_m_axi_data1_awprot(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWPROT(2 downto 0),
      dpu0_m_axi_data1_awqos(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWQOS(3 downto 0),
      dpu0_m_axi_data1_awready => DPUCZDX8G_DPU0_M_AXI_DATA1_AWREADY,
      dpu0_m_axi_data1_awsize(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWSIZE(2 downto 0),
      dpu0_m_axi_data1_awuser(0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWUSER(0),
      dpu0_m_axi_data1_awvalid => DPUCZDX8G_DPU0_M_AXI_DATA1_AWVALID,
      dpu0_m_axi_data1_bid(5 downto 2) => B"0000",
      dpu0_m_axi_data1_bid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_BID(1 downto 0),
      dpu0_m_axi_data1_bready => DPUCZDX8G_DPU0_M_AXI_DATA1_BREADY,
      dpu0_m_axi_data1_bresp(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_BRESP(1 downto 0),
      dpu0_m_axi_data1_bvalid => DPUCZDX8G_DPU0_M_AXI_DATA1_BVALID,
      dpu0_m_axi_data1_rdata(127 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_RDATA(127 downto 0),
      dpu0_m_axi_data1_rid(5 downto 2) => B"0000",
      dpu0_m_axi_data1_rid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_RID(1 downto 0),
      dpu0_m_axi_data1_rlast => DPUCZDX8G_DPU0_M_AXI_DATA1_RLAST,
      dpu0_m_axi_data1_rready => DPUCZDX8G_DPU0_M_AXI_DATA1_RREADY,
      dpu0_m_axi_data1_rresp(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_RRESP(1 downto 0),
      dpu0_m_axi_data1_rvalid => DPUCZDX8G_DPU0_M_AXI_DATA1_RVALID,
      dpu0_m_axi_data1_wdata(127 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_WDATA(127 downto 0),
      dpu0_m_axi_data1_wid(5 downto 0) => NLW_DPUCZDX8G_dpu0_m_axi_data1_wid_UNCONNECTED(5 downto 0),
      dpu0_m_axi_data1_wlast => DPUCZDX8G_DPU0_M_AXI_DATA1_WLAST,
      dpu0_m_axi_data1_wready => DPUCZDX8G_DPU0_M_AXI_DATA1_WREADY,
      dpu0_m_axi_data1_wstrb(15 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_WSTRB(15 downto 0),
      dpu0_m_axi_data1_wvalid => DPUCZDX8G_DPU0_M_AXI_DATA1_WVALID,
      dpu0_m_axi_instr_araddr(39 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARADDR(39 downto 0),
      dpu0_m_axi_instr_arburst(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARBURST(1 downto 0),
      dpu0_m_axi_instr_arcache(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARCACHE(3 downto 0),
      dpu0_m_axi_instr_arid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARID(1 downto 0),
      dpu0_m_axi_instr_arlen(7 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARLEN(7 downto 0),
      dpu0_m_axi_instr_arlock(0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARLOCK(0),
      dpu0_m_axi_instr_arprot(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARPROT(2 downto 0),
      dpu0_m_axi_instr_arqos(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARQOS(3 downto 0),
      dpu0_m_axi_instr_arready => DPUCZDX8G_DPU0_M_AXI_INSTR_ARREADY,
      dpu0_m_axi_instr_arsize(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARSIZE(2 downto 0),
      dpu0_m_axi_instr_aruser(0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARUSER(0),
      dpu0_m_axi_instr_arvalid => DPUCZDX8G_DPU0_M_AXI_INSTR_ARVALID,
      dpu0_m_axi_instr_awaddr(39 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWADDR(39 downto 0),
      dpu0_m_axi_instr_awburst(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWBURST(1 downto 0),
      dpu0_m_axi_instr_awcache(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWCACHE(3 downto 0),
      dpu0_m_axi_instr_awid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWID(1 downto 0),
      dpu0_m_axi_instr_awlen(7 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWLEN(7 downto 0),
      dpu0_m_axi_instr_awlock(0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWLOCK(0),
      dpu0_m_axi_instr_awprot(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWPROT(2 downto 0),
      dpu0_m_axi_instr_awqos(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWQOS(3 downto 0),
      dpu0_m_axi_instr_awready => DPUCZDX8G_DPU0_M_AXI_INSTR_AWREADY,
      dpu0_m_axi_instr_awsize(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWSIZE(2 downto 0),
      dpu0_m_axi_instr_awuser(0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWUSER(0),
      dpu0_m_axi_instr_awvalid => DPUCZDX8G_DPU0_M_AXI_INSTR_AWVALID,
      dpu0_m_axi_instr_bid(5 downto 2) => B"0000",
      dpu0_m_axi_instr_bid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_BID(1 downto 0),
      dpu0_m_axi_instr_bready => DPUCZDX8G_DPU0_M_AXI_INSTR_BREADY,
      dpu0_m_axi_instr_bresp(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_BRESP(1 downto 0),
      dpu0_m_axi_instr_bvalid => DPUCZDX8G_DPU0_M_AXI_INSTR_BVALID,
      dpu0_m_axi_instr_rdata(31 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_RDATA(31 downto 0),
      dpu0_m_axi_instr_rid(5 downto 2) => B"0000",
      dpu0_m_axi_instr_rid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_RID(1 downto 0),
      dpu0_m_axi_instr_rlast => DPUCZDX8G_DPU0_M_AXI_INSTR_RLAST,
      dpu0_m_axi_instr_rready => DPUCZDX8G_DPU0_M_AXI_INSTR_RREADY,
      dpu0_m_axi_instr_rresp(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_RRESP(1 downto 0),
      dpu0_m_axi_instr_rvalid => DPUCZDX8G_DPU0_M_AXI_INSTR_RVALID,
      dpu0_m_axi_instr_wdata(31 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_WDATA(31 downto 0),
      dpu0_m_axi_instr_wid(5 downto 0) => NLW_DPUCZDX8G_dpu0_m_axi_instr_wid_UNCONNECTED(5 downto 0),
      dpu0_m_axi_instr_wlast => DPUCZDX8G_DPU0_M_AXI_INSTR_WLAST,
      dpu0_m_axi_instr_wready => DPUCZDX8G_DPU0_M_AXI_INSTR_WREADY,
      dpu0_m_axi_instr_wstrb(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_WSTRB(3 downto 0),
      dpu0_m_axi_instr_wvalid => DPUCZDX8G_DPU0_M_AXI_INSTR_WVALID,
      dpu_2x_clk => hier_dpu_clk_DSP_CLK,
      dpu_2x_clk_ce => DPUCZDX8G_dpu_2x_clk_ce,
      dpu_2x_resetn => hier_dpu_clk_RSTn_DSP(0),
      m_axi_dpu_aclk => hier_dpu_clk_DPU_CLK,
      m_axi_dpu_aresetn => hier_dpu_clk_RSTn_PERI(0),
      s_axi_aclk => S_AXI_CLK_1,
      s_axi_araddr(31 downto 0) => S_AXI_1_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => S_AXI_1_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => S_AXI_1_ARCACHE(3 downto 0),
      s_axi_aresetn => S_AXI_RSTn_1,
      s_axi_arid(15 downto 0) => S_AXI_1_ARID(15 downto 0),
      s_axi_arlen(7 downto 0) => S_AXI_1_ARLEN(7 downto 0),
      s_axi_arlock(1) => '0',
      s_axi_arlock(0) => S_AXI_1_ARLOCK(0),
      s_axi_arprot(2 downto 0) => S_AXI_1_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => S_AXI_1_ARQOS(3 downto 0),
      s_axi_arready => S_AXI_1_ARREADY,
      s_axi_arregion(3 downto 0) => S_AXI_1_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => S_AXI_1_ARSIZE(2 downto 0),
      s_axi_aruser(15 downto 0) => S_AXI_1_ARUSER(15 downto 0),
      s_axi_arvalid => S_AXI_1_ARVALID(0),
      s_axi_awaddr(31 downto 0) => S_AXI_1_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => S_AXI_1_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => S_AXI_1_AWCACHE(3 downto 0),
      s_axi_awid(15 downto 0) => S_AXI_1_AWID(15 downto 0),
      s_axi_awlen(7 downto 0) => S_AXI_1_AWLEN(7 downto 0),
      s_axi_awlock(1) => '0',
      s_axi_awlock(0) => S_AXI_1_AWLOCK(0),
      s_axi_awprot(2 downto 0) => S_AXI_1_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => S_AXI_1_AWQOS(3 downto 0),
      s_axi_awready => S_AXI_1_AWREADY,
      s_axi_awregion(3 downto 0) => S_AXI_1_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => S_AXI_1_AWSIZE(2 downto 0),
      s_axi_awuser(15 downto 0) => S_AXI_1_AWUSER(15 downto 0),
      s_axi_awvalid => S_AXI_1_AWVALID(0),
      s_axi_bid(15 downto 0) => S_AXI_1_BID(15 downto 0),
      s_axi_bready => S_AXI_1_BREADY(0),
      s_axi_bresp(1 downto 0) => S_AXI_1_BRESP(1 downto 0),
      s_axi_bvalid => S_AXI_1_BVALID,
      s_axi_rdata(31 downto 0) => S_AXI_1_RDATA(31 downto 0),
      s_axi_rid(15 downto 0) => S_AXI_1_RID(15 downto 0),
      s_axi_rlast => S_AXI_1_RLAST,
      s_axi_rready => S_AXI_1_RREADY(0),
      s_axi_rresp(1 downto 0) => S_AXI_1_RRESP(1 downto 0),
      s_axi_rvalid => S_AXI_1_RVALID,
      s_axi_wdata(31 downto 0) => S_AXI_1_WDATA(31 downto 0),
      s_axi_wid(15 downto 0) => B"0000000000000000",
      s_axi_wlast => S_AXI_1_WLAST(0),
      s_axi_wready => S_AXI_1_WREADY,
      s_axi_wstrb(3 downto 0) => S_AXI_1_WSTRB(3 downto 0),
      s_axi_wvalid => S_AXI_1_WVALID(0)
    );
hier_dpu_clk: entity work.hier_dpu_clk_imp_P5CT15
     port map (
      CLK => CLK_1,
      DPU_CLK => hier_dpu_clk_DPU_CLK,
      DSP_CLK => hier_dpu_clk_DSP_CLK,
      LOCKED => NLW_hier_dpu_clk_LOCKED_UNCONNECTED,
      RSTn => RSTn_1,
      RSTn_DSP(0) => hier_dpu_clk_RSTn_DSP(0),
      RSTn_INTC(0) => hier_dpu_clk_RSTn_INTC(0),
      RSTn_PERI(0) => hier_dpu_clk_RSTn_PERI(0),
      clk_dsp_ce => DPUCZDX8G_dpu_2x_clk_ce
    );
hier_dpu_ghp: entity work.hier_dpu_ghp_imp_1DUMQPD
     port map (
      CLK => hier_dpu_clk_DPU_CLK,
      DPU0_M_AXI_DATA0_araddr(39 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARADDR(39 downto 0),
      DPU0_M_AXI_DATA0_arburst(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARBURST(1 downto 0),
      DPU0_M_AXI_DATA0_arcache(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARCACHE(3 downto 0),
      DPU0_M_AXI_DATA0_arid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARID(1 downto 0),
      DPU0_M_AXI_DATA0_arlen(7 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARLEN(7 downto 0),
      DPU0_M_AXI_DATA0_arlock(0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARLOCK(0),
      DPU0_M_AXI_DATA0_arprot(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARPROT(2 downto 0),
      DPU0_M_AXI_DATA0_arqos(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARQOS(3 downto 0),
      DPU0_M_AXI_DATA0_arready => DPUCZDX8G_DPU0_M_AXI_DATA0_ARREADY,
      DPU0_M_AXI_DATA0_arsize(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARSIZE(2 downto 0),
      DPU0_M_AXI_DATA0_aruser(0) => DPUCZDX8G_DPU0_M_AXI_DATA0_ARUSER(0),
      DPU0_M_AXI_DATA0_arvalid => DPUCZDX8G_DPU0_M_AXI_DATA0_ARVALID,
      DPU0_M_AXI_DATA0_awaddr(39 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWADDR(39 downto 0),
      DPU0_M_AXI_DATA0_awburst(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWBURST(1 downto 0),
      DPU0_M_AXI_DATA0_awcache(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWCACHE(3 downto 0),
      DPU0_M_AXI_DATA0_awid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWID(1 downto 0),
      DPU0_M_AXI_DATA0_awlen(7 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWLEN(7 downto 0),
      DPU0_M_AXI_DATA0_awlock(0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWLOCK(0),
      DPU0_M_AXI_DATA0_awprot(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWPROT(2 downto 0),
      DPU0_M_AXI_DATA0_awqos(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWQOS(3 downto 0),
      DPU0_M_AXI_DATA0_awready => DPUCZDX8G_DPU0_M_AXI_DATA0_AWREADY,
      DPU0_M_AXI_DATA0_awsize(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWSIZE(2 downto 0),
      DPU0_M_AXI_DATA0_awuser(0) => DPUCZDX8G_DPU0_M_AXI_DATA0_AWUSER(0),
      DPU0_M_AXI_DATA0_awvalid => DPUCZDX8G_DPU0_M_AXI_DATA0_AWVALID,
      DPU0_M_AXI_DATA0_bid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_BID(1 downto 0),
      DPU0_M_AXI_DATA0_bready => DPUCZDX8G_DPU0_M_AXI_DATA0_BREADY,
      DPU0_M_AXI_DATA0_bresp(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_BRESP(1 downto 0),
      DPU0_M_AXI_DATA0_bvalid => DPUCZDX8G_DPU0_M_AXI_DATA0_BVALID,
      DPU0_M_AXI_DATA0_rdata(127 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_RDATA(127 downto 0),
      DPU0_M_AXI_DATA0_rid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_RID(1 downto 0),
      DPU0_M_AXI_DATA0_rlast => DPUCZDX8G_DPU0_M_AXI_DATA0_RLAST,
      DPU0_M_AXI_DATA0_rready => DPUCZDX8G_DPU0_M_AXI_DATA0_RREADY,
      DPU0_M_AXI_DATA0_rresp(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_RRESP(1 downto 0),
      DPU0_M_AXI_DATA0_rvalid => DPUCZDX8G_DPU0_M_AXI_DATA0_RVALID,
      DPU0_M_AXI_DATA0_wdata(127 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_WDATA(127 downto 0),
      DPU0_M_AXI_DATA0_wlast => DPUCZDX8G_DPU0_M_AXI_DATA0_WLAST,
      DPU0_M_AXI_DATA0_wready => DPUCZDX8G_DPU0_M_AXI_DATA0_WREADY,
      DPU0_M_AXI_DATA0_wstrb(15 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA0_WSTRB(15 downto 0),
      DPU0_M_AXI_DATA0_wvalid => DPUCZDX8G_DPU0_M_AXI_DATA0_WVALID,
      DPU0_M_AXI_DATA1_araddr(39 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARADDR(39 downto 0),
      DPU0_M_AXI_DATA1_arburst(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARBURST(1 downto 0),
      DPU0_M_AXI_DATA1_arcache(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARCACHE(3 downto 0),
      DPU0_M_AXI_DATA1_arid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARID(1 downto 0),
      DPU0_M_AXI_DATA1_arlen(7 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARLEN(7 downto 0),
      DPU0_M_AXI_DATA1_arlock(0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARLOCK(0),
      DPU0_M_AXI_DATA1_arprot(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARPROT(2 downto 0),
      DPU0_M_AXI_DATA1_arqos(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARQOS(3 downto 0),
      DPU0_M_AXI_DATA1_arready => DPUCZDX8G_DPU0_M_AXI_DATA1_ARREADY,
      DPU0_M_AXI_DATA1_arsize(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARSIZE(2 downto 0),
      DPU0_M_AXI_DATA1_aruser(0) => DPUCZDX8G_DPU0_M_AXI_DATA1_ARUSER(0),
      DPU0_M_AXI_DATA1_arvalid => DPUCZDX8G_DPU0_M_AXI_DATA1_ARVALID,
      DPU0_M_AXI_DATA1_awaddr(39 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWADDR(39 downto 0),
      DPU0_M_AXI_DATA1_awburst(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWBURST(1 downto 0),
      DPU0_M_AXI_DATA1_awcache(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWCACHE(3 downto 0),
      DPU0_M_AXI_DATA1_awid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWID(1 downto 0),
      DPU0_M_AXI_DATA1_awlen(7 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWLEN(7 downto 0),
      DPU0_M_AXI_DATA1_awlock(0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWLOCK(0),
      DPU0_M_AXI_DATA1_awprot(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWPROT(2 downto 0),
      DPU0_M_AXI_DATA1_awqos(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWQOS(3 downto 0),
      DPU0_M_AXI_DATA1_awready => DPUCZDX8G_DPU0_M_AXI_DATA1_AWREADY,
      DPU0_M_AXI_DATA1_awsize(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWSIZE(2 downto 0),
      DPU0_M_AXI_DATA1_awuser(0) => DPUCZDX8G_DPU0_M_AXI_DATA1_AWUSER(0),
      DPU0_M_AXI_DATA1_awvalid => DPUCZDX8G_DPU0_M_AXI_DATA1_AWVALID,
      DPU0_M_AXI_DATA1_bid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_BID(1 downto 0),
      DPU0_M_AXI_DATA1_bready => DPUCZDX8G_DPU0_M_AXI_DATA1_BREADY,
      DPU0_M_AXI_DATA1_bresp(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_BRESP(1 downto 0),
      DPU0_M_AXI_DATA1_bvalid => DPUCZDX8G_DPU0_M_AXI_DATA1_BVALID,
      DPU0_M_AXI_DATA1_rdata(127 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_RDATA(127 downto 0),
      DPU0_M_AXI_DATA1_rid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_RID(1 downto 0),
      DPU0_M_AXI_DATA1_rlast => DPUCZDX8G_DPU0_M_AXI_DATA1_RLAST,
      DPU0_M_AXI_DATA1_rready => DPUCZDX8G_DPU0_M_AXI_DATA1_RREADY,
      DPU0_M_AXI_DATA1_rresp(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_RRESP(1 downto 0),
      DPU0_M_AXI_DATA1_rvalid => DPUCZDX8G_DPU0_M_AXI_DATA1_RVALID,
      DPU0_M_AXI_DATA1_wdata(127 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_WDATA(127 downto 0),
      DPU0_M_AXI_DATA1_wlast => DPUCZDX8G_DPU0_M_AXI_DATA1_WLAST,
      DPU0_M_AXI_DATA1_wready => DPUCZDX8G_DPU0_M_AXI_DATA1_WREADY,
      DPU0_M_AXI_DATA1_wstrb(15 downto 0) => DPUCZDX8G_DPU0_M_AXI_DATA1_WSTRB(15 downto 0),
      DPU0_M_AXI_DATA1_wvalid => DPUCZDX8G_DPU0_M_AXI_DATA1_WVALID,
      DPU0_M_AXI_INSTR_araddr(39 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARADDR(39 downto 0),
      DPU0_M_AXI_INSTR_arburst(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARBURST(1 downto 0),
      DPU0_M_AXI_INSTR_arcache(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARCACHE(3 downto 0),
      DPU0_M_AXI_INSTR_arid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARID(1 downto 0),
      DPU0_M_AXI_INSTR_arlen(7 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARLEN(7 downto 0),
      DPU0_M_AXI_INSTR_arlock(0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARLOCK(0),
      DPU0_M_AXI_INSTR_arprot(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARPROT(2 downto 0),
      DPU0_M_AXI_INSTR_arqos(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARQOS(3 downto 0),
      DPU0_M_AXI_INSTR_arready => DPUCZDX8G_DPU0_M_AXI_INSTR_ARREADY,
      DPU0_M_AXI_INSTR_arsize(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARSIZE(2 downto 0),
      DPU0_M_AXI_INSTR_aruser(0) => DPUCZDX8G_DPU0_M_AXI_INSTR_ARUSER(0),
      DPU0_M_AXI_INSTR_arvalid => DPUCZDX8G_DPU0_M_AXI_INSTR_ARVALID,
      DPU0_M_AXI_INSTR_awaddr(39 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWADDR(39 downto 0),
      DPU0_M_AXI_INSTR_awburst(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWBURST(1 downto 0),
      DPU0_M_AXI_INSTR_awcache(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWCACHE(3 downto 0),
      DPU0_M_AXI_INSTR_awid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWID(1 downto 0),
      DPU0_M_AXI_INSTR_awlen(7 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWLEN(7 downto 0),
      DPU0_M_AXI_INSTR_awlock(0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWLOCK(0),
      DPU0_M_AXI_INSTR_awprot(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWPROT(2 downto 0),
      DPU0_M_AXI_INSTR_awqos(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWQOS(3 downto 0),
      DPU0_M_AXI_INSTR_awready => DPUCZDX8G_DPU0_M_AXI_INSTR_AWREADY,
      DPU0_M_AXI_INSTR_awsize(2 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWSIZE(2 downto 0),
      DPU0_M_AXI_INSTR_awuser(0) => DPUCZDX8G_DPU0_M_AXI_INSTR_AWUSER(0),
      DPU0_M_AXI_INSTR_awvalid => DPUCZDX8G_DPU0_M_AXI_INSTR_AWVALID,
      DPU0_M_AXI_INSTR_bid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_BID(1 downto 0),
      DPU0_M_AXI_INSTR_bready => DPUCZDX8G_DPU0_M_AXI_INSTR_BREADY,
      DPU0_M_AXI_INSTR_bresp(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_BRESP(1 downto 0),
      DPU0_M_AXI_INSTR_bvalid => DPUCZDX8G_DPU0_M_AXI_INSTR_BVALID,
      DPU0_M_AXI_INSTR_rdata(31 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_RDATA(31 downto 0),
      DPU0_M_AXI_INSTR_rid(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_RID(1 downto 0),
      DPU0_M_AXI_INSTR_rlast => DPUCZDX8G_DPU0_M_AXI_INSTR_RLAST,
      DPU0_M_AXI_INSTR_rready => DPUCZDX8G_DPU0_M_AXI_INSTR_RREADY,
      DPU0_M_AXI_INSTR_rresp(1 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_RRESP(1 downto 0),
      DPU0_M_AXI_INSTR_rvalid => DPUCZDX8G_DPU0_M_AXI_INSTR_RVALID,
      DPU0_M_AXI_INSTR_wdata(31 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_WDATA(31 downto 0),
      DPU0_M_AXI_INSTR_wlast => DPUCZDX8G_DPU0_M_AXI_INSTR_WLAST,
      DPU0_M_AXI_INSTR_wready => DPUCZDX8G_DPU0_M_AXI_INSTR_WREADY,
      DPU0_M_AXI_INSTR_wstrb(3 downto 0) => DPUCZDX8G_DPU0_M_AXI_INSTR_WSTRB(3 downto 0),
      DPU0_M_AXI_INSTR_wvalid => DPUCZDX8G_DPU0_M_AXI_INSTR_WVALID,
      GHP_CLK_I => GHP_CLK_I_1,
      GHP_CLK_O => hier_dpu_ghp_GHP_CLK_O,
      GHP_RSTn => GHP_RSTn_1,
      M_AXI_HP0_FPD_araddr(39 downto 0) => Conn1_ARADDR(39 downto 0),
      M_AXI_HP0_FPD_arburst(1 downto 0) => Conn1_ARBURST(1 downto 0),
      M_AXI_HP0_FPD_arcache(3 downto 0) => Conn1_ARCACHE(3 downto 0),
      M_AXI_HP0_FPD_arid(1 downto 0) => Conn1_ARID(1 downto 0),
      M_AXI_HP0_FPD_arlen(7 downto 0) => Conn1_ARLEN(7 downto 0),
      M_AXI_HP0_FPD_arlock => Conn1_ARLOCK,
      M_AXI_HP0_FPD_arprot(2 downto 0) => Conn1_ARPROT(2 downto 0),
      M_AXI_HP0_FPD_arqos(3 downto 0) => Conn1_ARQOS(3 downto 0),
      M_AXI_HP0_FPD_arready => Conn1_ARREADY,
      M_AXI_HP0_FPD_arsize(2 downto 0) => Conn1_ARSIZE(2 downto 0),
      M_AXI_HP0_FPD_aruser => Conn1_ARUSER,
      M_AXI_HP0_FPD_arvalid => Conn1_ARVALID,
      M_AXI_HP0_FPD_awaddr(39 downto 0) => Conn1_AWADDR(39 downto 0),
      M_AXI_HP0_FPD_awburst(1 downto 0) => Conn1_AWBURST(1 downto 0),
      M_AXI_HP0_FPD_awcache(3 downto 0) => Conn1_AWCACHE(3 downto 0),
      M_AXI_HP0_FPD_awid(1 downto 0) => Conn1_AWID(1 downto 0),
      M_AXI_HP0_FPD_awlen(7 downto 0) => Conn1_AWLEN(7 downto 0),
      M_AXI_HP0_FPD_awlock => Conn1_AWLOCK,
      M_AXI_HP0_FPD_awprot(2 downto 0) => Conn1_AWPROT(2 downto 0),
      M_AXI_HP0_FPD_awqos(3 downto 0) => Conn1_AWQOS(3 downto 0),
      M_AXI_HP0_FPD_awready => Conn1_AWREADY,
      M_AXI_HP0_FPD_awsize(2 downto 0) => Conn1_AWSIZE(2 downto 0),
      M_AXI_HP0_FPD_awuser => Conn1_AWUSER,
      M_AXI_HP0_FPD_awvalid => Conn1_AWVALID,
      M_AXI_HP0_FPD_bid(5 downto 0) => Conn1_BID(5 downto 0),
      M_AXI_HP0_FPD_bready => Conn1_BREADY,
      M_AXI_HP0_FPD_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      M_AXI_HP0_FPD_bvalid => Conn1_BVALID,
      M_AXI_HP0_FPD_rdata(127 downto 0) => Conn1_RDATA(127 downto 0),
      M_AXI_HP0_FPD_rid(5 downto 0) => Conn1_RID(5 downto 0),
      M_AXI_HP0_FPD_rlast => Conn1_RLAST,
      M_AXI_HP0_FPD_rready => Conn1_RREADY,
      M_AXI_HP0_FPD_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      M_AXI_HP0_FPD_rvalid => Conn1_RVALID,
      M_AXI_HP0_FPD_wdata(127 downto 0) => Conn1_WDATA(127 downto 0),
      M_AXI_HP0_FPD_wlast => Conn1_WLAST,
      M_AXI_HP0_FPD_wready => Conn1_WREADY,
      M_AXI_HP0_FPD_wstrb(15 downto 0) => Conn1_WSTRB(15 downto 0),
      M_AXI_HP0_FPD_wvalid => Conn1_WVALID,
      M_AXI_HP1_FPD_araddr(39 downto 0) => Conn2_ARADDR(39 downto 0),
      M_AXI_HP1_FPD_arburst(1 downto 0) => Conn2_ARBURST(1 downto 0),
      M_AXI_HP1_FPD_arcache(3 downto 0) => Conn2_ARCACHE(3 downto 0),
      M_AXI_HP1_FPD_arid(1 downto 0) => Conn2_ARID(1 downto 0),
      M_AXI_HP1_FPD_arlen(7 downto 0) => Conn2_ARLEN(7 downto 0),
      M_AXI_HP1_FPD_arlock => Conn2_ARLOCK,
      M_AXI_HP1_FPD_arprot(2 downto 0) => Conn2_ARPROT(2 downto 0),
      M_AXI_HP1_FPD_arqos(3 downto 0) => Conn2_ARQOS(3 downto 0),
      M_AXI_HP1_FPD_arready => Conn2_ARREADY,
      M_AXI_HP1_FPD_arsize(2 downto 0) => Conn2_ARSIZE(2 downto 0),
      M_AXI_HP1_FPD_aruser => Conn2_ARUSER,
      M_AXI_HP1_FPD_arvalid => Conn2_ARVALID,
      M_AXI_HP1_FPD_awaddr(39 downto 0) => Conn2_AWADDR(39 downto 0),
      M_AXI_HP1_FPD_awburst(1 downto 0) => Conn2_AWBURST(1 downto 0),
      M_AXI_HP1_FPD_awcache(3 downto 0) => Conn2_AWCACHE(3 downto 0),
      M_AXI_HP1_FPD_awid(1 downto 0) => Conn2_AWID(1 downto 0),
      M_AXI_HP1_FPD_awlen(7 downto 0) => Conn2_AWLEN(7 downto 0),
      M_AXI_HP1_FPD_awlock => Conn2_AWLOCK,
      M_AXI_HP1_FPD_awprot(2 downto 0) => Conn2_AWPROT(2 downto 0),
      M_AXI_HP1_FPD_awqos(3 downto 0) => Conn2_AWQOS(3 downto 0),
      M_AXI_HP1_FPD_awready => Conn2_AWREADY,
      M_AXI_HP1_FPD_awsize(2 downto 0) => Conn2_AWSIZE(2 downto 0),
      M_AXI_HP1_FPD_awuser => Conn2_AWUSER,
      M_AXI_HP1_FPD_awvalid => Conn2_AWVALID,
      M_AXI_HP1_FPD_bid(5 downto 0) => Conn2_BID(5 downto 0),
      M_AXI_HP1_FPD_bready => Conn2_BREADY,
      M_AXI_HP1_FPD_bresp(1 downto 0) => Conn2_BRESP(1 downto 0),
      M_AXI_HP1_FPD_bvalid => Conn2_BVALID,
      M_AXI_HP1_FPD_rdata(127 downto 0) => Conn2_RDATA(127 downto 0),
      M_AXI_HP1_FPD_rid(5 downto 0) => Conn2_RID(5 downto 0),
      M_AXI_HP1_FPD_rlast => Conn2_RLAST,
      M_AXI_HP1_FPD_rready => Conn2_RREADY,
      M_AXI_HP1_FPD_rresp(1 downto 0) => Conn2_RRESP(1 downto 0),
      M_AXI_HP1_FPD_rvalid => Conn2_RVALID,
      M_AXI_HP1_FPD_wdata(127 downto 0) => Conn2_WDATA(127 downto 0),
      M_AXI_HP1_FPD_wlast => Conn2_WLAST,
      M_AXI_HP1_FPD_wready => Conn2_WREADY,
      M_AXI_HP1_FPD_wstrb(15 downto 0) => Conn2_WSTRB(15 downto 0),
      M_AXI_HP1_FPD_wvalid => Conn2_WVALID,
      M_AXI_LPD_araddr(39 downto 0) => Conn3_ARADDR(39 downto 0),
      M_AXI_LPD_arburst(1 downto 0) => Conn3_ARBURST(1 downto 0),
      M_AXI_LPD_arcache(3 downto 0) => Conn3_ARCACHE(3 downto 0),
      M_AXI_LPD_arid(1 downto 0) => Conn3_ARID(1 downto 0),
      M_AXI_LPD_arlen(7 downto 0) => Conn3_ARLEN(7 downto 0),
      M_AXI_LPD_arlock => Conn3_ARLOCK,
      M_AXI_LPD_arprot(2 downto 0) => Conn3_ARPROT(2 downto 0),
      M_AXI_LPD_arqos(3 downto 0) => Conn3_ARQOS(3 downto 0),
      M_AXI_LPD_arready => Conn3_ARREADY,
      M_AXI_LPD_arsize(2 downto 0) => Conn3_ARSIZE(2 downto 0),
      M_AXI_LPD_aruser => Conn3_ARUSER,
      M_AXI_LPD_arvalid => Conn3_ARVALID,
      M_AXI_LPD_awaddr(39 downto 0) => Conn3_AWADDR(39 downto 0),
      M_AXI_LPD_awburst(1 downto 0) => Conn3_AWBURST(1 downto 0),
      M_AXI_LPD_awcache(3 downto 0) => Conn3_AWCACHE(3 downto 0),
      M_AXI_LPD_awid(1 downto 0) => Conn3_AWID(1 downto 0),
      M_AXI_LPD_awlen(7 downto 0) => Conn3_AWLEN(7 downto 0),
      M_AXI_LPD_awlock => Conn3_AWLOCK,
      M_AXI_LPD_awprot(2 downto 0) => Conn3_AWPROT(2 downto 0),
      M_AXI_LPD_awqos(3 downto 0) => Conn3_AWQOS(3 downto 0),
      M_AXI_LPD_awready => Conn3_AWREADY,
      M_AXI_LPD_awsize(2 downto 0) => Conn3_AWSIZE(2 downto 0),
      M_AXI_LPD_awuser => Conn3_AWUSER,
      M_AXI_LPD_awvalid => Conn3_AWVALID,
      M_AXI_LPD_bid(5 downto 0) => Conn3_BID(5 downto 0),
      M_AXI_LPD_bready => Conn3_BREADY,
      M_AXI_LPD_bresp(1 downto 0) => Conn3_BRESP(1 downto 0),
      M_AXI_LPD_bvalid => Conn3_BVALID,
      M_AXI_LPD_rdata(31 downto 0) => Conn3_RDATA(31 downto 0),
      M_AXI_LPD_rid(5 downto 0) => Conn3_RID(5 downto 0),
      M_AXI_LPD_rlast => Conn3_RLAST,
      M_AXI_LPD_rready => Conn3_RREADY,
      M_AXI_LPD_rresp(1 downto 0) => Conn3_RRESP(1 downto 0),
      M_AXI_LPD_rvalid => Conn3_RVALID,
      M_AXI_LPD_wdata(31 downto 0) => Conn3_WDATA(31 downto 0),
      M_AXI_LPD_wlast => Conn3_WLAST,
      M_AXI_LPD_wready => Conn3_WREADY,
      M_AXI_LPD_wstrb(3 downto 0) => Conn3_WSTRB(3 downto 0),
      M_AXI_LPD_wvalid => Conn3_WVALID,
      RSTn_INTC => hier_dpu_clk_RSTn_INTC(0),
      RSTn_PERI => hier_dpu_clk_RSTn_PERI(0)
    );
hier_dpu_irq: entity work.hier_dpu_irq_imp_7KP66F
     port map (
      INTR(0) => hier_dpu_irq_INTR(0),
      In0(0) => DPUCZDX8G_dpu0_interrupt
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top is
  port (
    M00_AXI_0_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_0_arready : in STD_LOGIC;
    M00_AXI_0_arvalid : out STD_LOGIC;
    M00_AXI_0_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_0_awready : in STD_LOGIC;
    M00_AXI_0_awvalid : out STD_LOGIC;
    M00_AXI_0_bready : out STD_LOGIC;
    M00_AXI_0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_0_bvalid : in STD_LOGIC;
    M00_AXI_0_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_0_rready : out STD_LOGIC;
    M00_AXI_0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_0_rvalid : in STD_LOGIC;
    M00_AXI_0_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_0_wready : in STD_LOGIC;
    M00_AXI_0_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_0_wvalid : out STD_LOGIC;
    S_AXIS_S2MM_1_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXIS_S2MM_1_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXIS_S2MM_1_tlast : in STD_LOGIC;
    S_AXIS_S2MM_1_tready : out STD_LOGIC;
    S_AXIS_S2MM_1_tvalid : in STD_LOGIC;
    clk_sys_o : out STD_LOGIC;
    peripheral_reset_0 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of top : entity is "top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=31,numReposBlks=16,numNonXlnxBlks=0,numHierBlks=15,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of top : entity is "top.hwdef";
end top;

architecture STRUCTURE of top is
  component top_dpu_concat_irq_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component top_dpu_concat_irq_0;
  component top_rst_gen_ghp_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component top_rst_gen_ghp_0;
  component top_rst_gen_reg_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component top_rst_gen_reg_0;
  component top_zynq_ultra_ps_e_0 is
  port (
    maxihpm0_lpd_aclk : in STD_LOGIC;
    maxigp2_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_awlock : out STD_LOGIC;
    maxigp2_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awvalid : out STD_LOGIC;
    maxigp2_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awready : in STD_LOGIC;
    maxigp2_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    maxigp2_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_wlast : out STD_LOGIC;
    maxigp2_wvalid : out STD_LOGIC;
    maxigp2_wready : in STD_LOGIC;
    maxigp2_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_bvalid : in STD_LOGIC;
    maxigp2_bready : out STD_LOGIC;
    maxigp2_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_arlock : out STD_LOGIC;
    maxigp2_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arvalid : out STD_LOGIC;
    maxigp2_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_arready : in STD_LOGIC;
    maxigp2_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    maxigp2_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_rlast : in STD_LOGIC;
    maxigp2_rvalid : in STD_LOGIC;
    maxigp2_rready : out STD_LOGIC;
    maxigp2_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    saxihp0_fpd_aclk : in STD_LOGIC;
    saxigp2_aruser : in STD_LOGIC;
    saxigp2_awuser : in STD_LOGIC;
    saxigp2_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_awaddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp2_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp2_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_awlock : in STD_LOGIC;
    saxigp2_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp2_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_awvalid : in STD_LOGIC;
    saxigp2_awready : out STD_LOGIC;
    saxigp2_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    saxigp2_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    saxigp2_wlast : in STD_LOGIC;
    saxigp2_wvalid : in STD_LOGIC;
    saxigp2_wready : out STD_LOGIC;
    saxigp2_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_bvalid : out STD_LOGIC;
    saxigp2_bready : in STD_LOGIC;
    saxigp2_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_araddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp2_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp2_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_arlock : in STD_LOGIC;
    saxigp2_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp2_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_arvalid : in STD_LOGIC;
    saxigp2_arready : out STD_LOGIC;
    saxigp2_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    saxigp2_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_rlast : out STD_LOGIC;
    saxigp2_rvalid : out STD_LOGIC;
    saxigp2_rready : in STD_LOGIC;
    saxigp2_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp2_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxihp1_fpd_aclk : in STD_LOGIC;
    saxigp3_aruser : in STD_LOGIC;
    saxigp3_awuser : in STD_LOGIC;
    saxigp3_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp3_awaddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp3_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp3_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp3_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp3_awlock : in STD_LOGIC;
    saxigp3_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp3_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp3_awvalid : in STD_LOGIC;
    saxigp3_awready : out STD_LOGIC;
    saxigp3_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    saxigp3_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    saxigp3_wlast : in STD_LOGIC;
    saxigp3_wvalid : in STD_LOGIC;
    saxigp3_wready : out STD_LOGIC;
    saxigp3_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp3_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp3_bvalid : out STD_LOGIC;
    saxigp3_bready : in STD_LOGIC;
    saxigp3_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp3_araddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp3_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp3_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp3_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp3_arlock : in STD_LOGIC;
    saxigp3_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp3_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp3_arvalid : in STD_LOGIC;
    saxigp3_arready : out STD_LOGIC;
    saxigp3_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp3_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    saxigp3_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp3_rlast : out STD_LOGIC;
    saxigp3_rvalid : out STD_LOGIC;
    saxigp3_rready : in STD_LOGIC;
    saxigp3_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp3_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxihp2_fpd_aclk : in STD_LOGIC;
    saxigp4_aruser : in STD_LOGIC;
    saxigp4_awuser : in STD_LOGIC;
    saxigp4_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp4_awaddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp4_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp4_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp4_awlock : in STD_LOGIC;
    saxigp4_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp4_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp4_awvalid : in STD_LOGIC;
    saxigp4_awready : out STD_LOGIC;
    saxigp4_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    saxigp4_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    saxigp4_wlast : in STD_LOGIC;
    saxigp4_wvalid : in STD_LOGIC;
    saxigp4_wready : out STD_LOGIC;
    saxigp4_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp4_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp4_bvalid : out STD_LOGIC;
    saxigp4_bready : in STD_LOGIC;
    saxigp4_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp4_araddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp4_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp4_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp4_arlock : in STD_LOGIC;
    saxigp4_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp4_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp4_arvalid : in STD_LOGIC;
    saxigp4_arready : out STD_LOGIC;
    saxigp4_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp4_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    saxigp4_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp4_rlast : out STD_LOGIC;
    saxigp4_rvalid : out STD_LOGIC;
    saxigp4_rready : in STD_LOGIC;
    saxigp4_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp4_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxi_lpd_aclk : in STD_LOGIC;
    saxigp6_aruser : in STD_LOGIC;
    saxigp6_awuser : in STD_LOGIC;
    saxigp6_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp6_awaddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp6_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp6_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp6_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp6_awlock : in STD_LOGIC;
    saxigp6_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp6_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp6_awvalid : in STD_LOGIC;
    saxigp6_awready : out STD_LOGIC;
    saxigp6_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    saxigp6_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp6_wlast : in STD_LOGIC;
    saxigp6_wvalid : in STD_LOGIC;
    saxigp6_wready : out STD_LOGIC;
    saxigp6_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp6_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp6_bvalid : out STD_LOGIC;
    saxigp6_bready : in STD_LOGIC;
    saxigp6_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp6_araddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp6_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp6_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp6_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp6_arlock : in STD_LOGIC;
    saxigp6_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp6_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp6_arvalid : in STD_LOGIC;
    saxigp6_arready : out STD_LOGIC;
    saxigp6_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp6_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    saxigp6_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp6_rlast : out STD_LOGIC;
    saxigp6_rvalid : out STD_LOGIC;
    saxigp6_rready : in STD_LOGIC;
    saxigp6_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp6_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_ps_irq0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    pl_ps_irq1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    pl_resetn0 : out STD_LOGIC;
    pl_clk0 : out STD_LOGIC;
    pl_clk1 : out STD_LOGIC
  );
  end component top_zynq_ultra_ps_e_0;
  component top_axi_dma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component top_axi_dma_0_0;
  signal S_AXIS_S2MM_1_1_TDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal S_AXIS_S2MM_1_1_TKEEP : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S_AXIS_S2MM_1_1_TLAST : STD_LOGIC;
  signal S_AXIS_S2MM_1_1_TREADY : STD_LOGIC;
  signal S_AXIS_S2MM_1_1_TVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_dma_0_s2mm_introut : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_M01_AXI_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal axi_interconnect_0_M02_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal axi_interconnect_0_M02_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M02_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M02_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_WVALID : STD_LOGIC;
  signal dpu_concat_irq_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_dpu_GHP_CLK_O : STD_LOGIC;
  signal hier_dpu_INTR : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_dpu_M_AXI_HP0_FPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_ARLOCK : STD_LOGIC;
  signal hier_dpu_M_AXI_HP0_FPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_ARREADY : STD_LOGIC;
  signal hier_dpu_M_AXI_HP0_FPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_ARUSER : STD_LOGIC;
  signal hier_dpu_M_AXI_HP0_FPD_ARVALID : STD_LOGIC;
  signal hier_dpu_M_AXI_HP0_FPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_AWLOCK : STD_LOGIC;
  signal hier_dpu_M_AXI_HP0_FPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_AWREADY : STD_LOGIC;
  signal hier_dpu_M_AXI_HP0_FPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_AWUSER : STD_LOGIC;
  signal hier_dpu_M_AXI_HP0_FPD_AWVALID : STD_LOGIC;
  signal hier_dpu_M_AXI_HP0_FPD_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_BREADY : STD_LOGIC;
  signal hier_dpu_M_AXI_HP0_FPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_BVALID : STD_LOGIC;
  signal hier_dpu_M_AXI_HP0_FPD_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_RLAST : STD_LOGIC;
  signal hier_dpu_M_AXI_HP0_FPD_RREADY : STD_LOGIC;
  signal hier_dpu_M_AXI_HP0_FPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_RVALID : STD_LOGIC;
  signal hier_dpu_M_AXI_HP0_FPD_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_WLAST : STD_LOGIC;
  signal hier_dpu_M_AXI_HP0_FPD_WREADY : STD_LOGIC;
  signal hier_dpu_M_AXI_HP0_FPD_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal hier_dpu_M_AXI_HP0_FPD_WVALID : STD_LOGIC;
  signal hier_dpu_M_AXI_HP1_FPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_ARLOCK : STD_LOGIC;
  signal hier_dpu_M_AXI_HP1_FPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_ARREADY : STD_LOGIC;
  signal hier_dpu_M_AXI_HP1_FPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_ARUSER : STD_LOGIC;
  signal hier_dpu_M_AXI_HP1_FPD_ARVALID : STD_LOGIC;
  signal hier_dpu_M_AXI_HP1_FPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_AWLOCK : STD_LOGIC;
  signal hier_dpu_M_AXI_HP1_FPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_AWREADY : STD_LOGIC;
  signal hier_dpu_M_AXI_HP1_FPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_AWUSER : STD_LOGIC;
  signal hier_dpu_M_AXI_HP1_FPD_AWVALID : STD_LOGIC;
  signal hier_dpu_M_AXI_HP1_FPD_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_BREADY : STD_LOGIC;
  signal hier_dpu_M_AXI_HP1_FPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_BVALID : STD_LOGIC;
  signal hier_dpu_M_AXI_HP1_FPD_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_RLAST : STD_LOGIC;
  signal hier_dpu_M_AXI_HP1_FPD_RREADY : STD_LOGIC;
  signal hier_dpu_M_AXI_HP1_FPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_RVALID : STD_LOGIC;
  signal hier_dpu_M_AXI_HP1_FPD_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_WLAST : STD_LOGIC;
  signal hier_dpu_M_AXI_HP1_FPD_WREADY : STD_LOGIC;
  signal hier_dpu_M_AXI_HP1_FPD_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal hier_dpu_M_AXI_HP1_FPD_WVALID : STD_LOGIC;
  signal hier_dpu_M_AXI_LPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal hier_dpu_M_AXI_LPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_M_AXI_LPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_M_AXI_LPD_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_M_AXI_LPD_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_dpu_M_AXI_LPD_ARLOCK : STD_LOGIC;
  signal hier_dpu_M_AXI_LPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_M_AXI_LPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_M_AXI_LPD_ARREADY : STD_LOGIC;
  signal hier_dpu_M_AXI_LPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_M_AXI_LPD_ARUSER : STD_LOGIC;
  signal hier_dpu_M_AXI_LPD_ARVALID : STD_LOGIC;
  signal hier_dpu_M_AXI_LPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal hier_dpu_M_AXI_LPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_M_AXI_LPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_M_AXI_LPD_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_M_AXI_LPD_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_dpu_M_AXI_LPD_AWLOCK : STD_LOGIC;
  signal hier_dpu_M_AXI_LPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_M_AXI_LPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_M_AXI_LPD_AWREADY : STD_LOGIC;
  signal hier_dpu_M_AXI_LPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_M_AXI_LPD_AWUSER : STD_LOGIC;
  signal hier_dpu_M_AXI_LPD_AWVALID : STD_LOGIC;
  signal hier_dpu_M_AXI_LPD_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal hier_dpu_M_AXI_LPD_BREADY : STD_LOGIC;
  signal hier_dpu_M_AXI_LPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_M_AXI_LPD_BVALID : STD_LOGIC;
  signal hier_dpu_M_AXI_LPD_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_dpu_M_AXI_LPD_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal hier_dpu_M_AXI_LPD_RLAST : STD_LOGIC;
  signal hier_dpu_M_AXI_LPD_RREADY : STD_LOGIC;
  signal hier_dpu_M_AXI_LPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_M_AXI_LPD_RVALID : STD_LOGIC;
  signal hier_dpu_M_AXI_LPD_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hier_dpu_M_AXI_LPD_WLAST : STD_LOGIC;
  signal hier_dpu_M_AXI_LPD_WREADY : STD_LOGIC;
  signal hier_dpu_M_AXI_LPD_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_M_AXI_LPD_WVALID : STD_LOGIC;
  signal rst_gen_ghp_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_gen_reg_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_gen_reg_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_gen_reg_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_BREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_RREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_WLAST : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_WVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_pl_clk0 : STD_LOGIC;
  signal zynq_ultra_ps_e_pl_clk1 : STD_LOGIC;
  signal zynq_ultra_ps_e_pl_resetn0 : STD_LOGIC;
  signal NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_gen_ghp_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_gen_ghp_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_gen_ghp_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_gen_ghp_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_gen_reg_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_gen_reg_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_zynq_ultra_ps_e_saxigp4_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_saxigp4_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_saxigp4_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_saxigp4_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_zynq_ultra_ps_e_saxigp4_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_zynq_ultra_ps_e_saxigp4_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_zynq_ultra_ps_e_saxigp4_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M00_AXI_0_arready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI_0 ARREADY";
  attribute X_INTERFACE_INFO of M00_AXI_0_arvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI_0 ARVALID";
  attribute X_INTERFACE_INFO of M00_AXI_0_awready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWREADY";
  attribute X_INTERFACE_INFO of M00_AXI_0_awvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWVALID";
  attribute X_INTERFACE_INFO of M00_AXI_0_bready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI_0 BREADY";
  attribute X_INTERFACE_INFO of M00_AXI_0_bvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI_0 BVALID";
  attribute X_INTERFACE_INFO of M00_AXI_0_rready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI_0 RREADY";
  attribute X_INTERFACE_INFO of M00_AXI_0_rvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI_0 RVALID";
  attribute X_INTERFACE_INFO of M00_AXI_0_wready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI_0 WREADY";
  attribute X_INTERFACE_INFO of M00_AXI_0_wvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI_0 WVALID";
  attribute X_INTERFACE_INFO of S_AXIS_S2MM_1_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_1 TLAST";
  attribute X_INTERFACE_INFO of S_AXIS_S2MM_1_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_1 TREADY";
  attribute X_INTERFACE_INFO of S_AXIS_S2MM_1_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_1 TVALID";
  attribute X_INTERFACE_INFO of M00_AXI_0_araddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI_0 ARADDR";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of M00_AXI_0_araddr : signal is "XIL_INTERFACENAME M00_AXI_0, ADDR_WIDTH 40, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, FREQ_HZ 99990005, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of M00_AXI_0_arprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI_0 ARPROT";
  attribute X_INTERFACE_INFO of M00_AXI_0_awaddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWADDR";
  attribute X_INTERFACE_INFO of M00_AXI_0_awprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWPROT";
  attribute X_INTERFACE_INFO of M00_AXI_0_bresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI_0 BRESP";
  attribute X_INTERFACE_INFO of M00_AXI_0_rdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI_0 RDATA";
  attribute X_INTERFACE_INFO of M00_AXI_0_rresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI_0 RRESP";
  attribute X_INTERFACE_INFO of M00_AXI_0_wdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI_0 WDATA";
  attribute X_INTERFACE_INFO of M00_AXI_0_wstrb : signal is "xilinx.com:interface:aximm:1.0 M00_AXI_0 WSTRB";
  attribute X_INTERFACE_INFO of S_AXIS_S2MM_1_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_1 TDATA";
  attribute X_INTERFACE_PARAMETER of S_AXIS_S2MM_1_tdata : signal is "XIL_INTERFACENAME S_AXIS_S2MM_1, FREQ_HZ 99990005, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXIS_S2MM_1_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_1 TKEEP";
  attribute X_INTERFACE_INFO of peripheral_reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.PERIPHERAL_RESET_0 RST";
  attribute X_INTERFACE_PARAMETER of peripheral_reset_0 : signal is "XIL_INTERFACENAME RST.PERIPHERAL_RESET_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
  M00_AXI_0_araddr(39 downto 0) <= axi_interconnect_0_M00_AXI_ARADDR(39 downto 0);
  M00_AXI_0_arprot(2 downto 0) <= axi_interconnect_0_M00_AXI_ARPROT(2 downto 0);
  M00_AXI_0_arvalid <= axi_interconnect_0_M00_AXI_ARVALID;
  M00_AXI_0_awaddr(39 downto 0) <= axi_interconnect_0_M00_AXI_AWADDR(39 downto 0);
  M00_AXI_0_awprot(2 downto 0) <= axi_interconnect_0_M00_AXI_AWPROT(2 downto 0);
  M00_AXI_0_awvalid <= axi_interconnect_0_M00_AXI_AWVALID;
  M00_AXI_0_bready <= axi_interconnect_0_M00_AXI_BREADY;
  M00_AXI_0_rready <= axi_interconnect_0_M00_AXI_RREADY;
  M00_AXI_0_wdata(31 downto 0) <= axi_interconnect_0_M00_AXI_WDATA(31 downto 0);
  M00_AXI_0_wstrb(3 downto 0) <= axi_interconnect_0_M00_AXI_WSTRB(3 downto 0);
  M00_AXI_0_wvalid <= axi_interconnect_0_M00_AXI_WVALID;
  S_AXIS_S2MM_1_1_TDATA(127 downto 0) <= S_AXIS_S2MM_1_tdata(127 downto 0);
  S_AXIS_S2MM_1_1_TKEEP(15 downto 0) <= S_AXIS_S2MM_1_tkeep(15 downto 0);
  S_AXIS_S2MM_1_1_TLAST <= S_AXIS_S2MM_1_tlast;
  S_AXIS_S2MM_1_1_TVALID <= S_AXIS_S2MM_1_tvalid;
  S_AXIS_S2MM_1_tready <= S_AXIS_S2MM_1_1_TREADY;
  axi_interconnect_0_M00_AXI_ARREADY <= M00_AXI_0_arready;
  axi_interconnect_0_M00_AXI_AWREADY <= M00_AXI_0_awready;
  axi_interconnect_0_M00_AXI_BRESP(1 downto 0) <= M00_AXI_0_bresp(1 downto 0);
  axi_interconnect_0_M00_AXI_BVALID <= M00_AXI_0_bvalid;
  axi_interconnect_0_M00_AXI_RDATA(31 downto 0) <= M00_AXI_0_rdata(31 downto 0);
  axi_interconnect_0_M00_AXI_RRESP(1 downto 0) <= M00_AXI_0_rresp(1 downto 0);
  axi_interconnect_0_M00_AXI_RVALID <= M00_AXI_0_rvalid;
  axi_interconnect_0_M00_AXI_WREADY <= M00_AXI_0_wready;
  clk_sys_o <= zynq_ultra_ps_e_pl_clk0;
  peripheral_reset_0(0) <= rst_gen_reg_peripheral_reset(0);
axi_dma_0: component top_axi_dma_0_0
     port map (
      axi_resetn => rst_gen_reg_interconnect_aresetn(0),
      m_axi_s2mm_aclk => zynq_ultra_ps_e_pl_clk0,
      m_axi_s2mm_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_dma_0_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_dma_0_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(127 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(127 downto 0),
      m_axi_s2mm_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_dma_0_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(15 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(15 downto 0),
      m_axi_s2mm_wvalid => axi_dma_0_M_AXI_S2MM_WVALID,
      s2mm_introut => axi_dma_0_s2mm_introut,
      s2mm_prmry_reset_out_n => NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => zynq_ultra_ps_e_pl_clk0,
      s_axi_lite_araddr(9 downto 0) => axi_interconnect_0_M02_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => axi_interconnect_0_M02_AXI_ARREADY,
      s_axi_lite_arvalid => axi_interconnect_0_M02_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => axi_interconnect_0_M02_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => axi_interconnect_0_M02_AXI_AWREADY,
      s_axi_lite_awvalid => axi_interconnect_0_M02_AXI_AWVALID,
      s_axi_lite_bready => axi_interconnect_0_M02_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => axi_interconnect_0_M02_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => axi_interconnect_0_M02_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => axi_interconnect_0_M02_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => axi_interconnect_0_M02_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => axi_interconnect_0_M02_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => axi_interconnect_0_M02_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => axi_interconnect_0_M02_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => axi_interconnect_0_M02_AXI_WREADY,
      s_axi_lite_wvalid => axi_interconnect_0_M02_AXI_WVALID,
      s_axis_s2mm_tdata(127 downto 0) => S_AXIS_S2MM_1_1_TDATA(127 downto 0),
      s_axis_s2mm_tkeep(15 downto 0) => S_AXIS_S2MM_1_1_TKEEP(15 downto 0),
      s_axis_s2mm_tlast => S_AXIS_S2MM_1_1_TLAST,
      s_axis_s2mm_tready => S_AXIS_S2MM_1_1_TREADY,
      s_axis_s2mm_tvalid => S_AXIS_S2MM_1_1_TVALID
    );
axi_interconnect_0: entity work.top_axi_interconnect_0_1
     port map (
      ACLK => zynq_ultra_ps_e_pl_clk0,
      ARESETN => rst_gen_reg_interconnect_aresetn(0),
      M00_ACLK => zynq_ultra_ps_e_pl_clk0,
      M00_ARESETN => rst_gen_reg_interconnect_aresetn(0),
      M00_AXI_araddr(39 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(39 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(39 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(39 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      M01_ACLK => zynq_ultra_ps_e_pl_clk0,
      M01_ARESETN => rst_gen_reg_interconnect_aresetn(0),
      M01_AXI_araddr(39 downto 0) => axi_interconnect_0_M01_AXI_ARADDR(39 downto 0),
      M01_AXI_arburst(1 downto 0) => axi_interconnect_0_M01_AXI_ARBURST(1 downto 0),
      M01_AXI_arcache(3 downto 0) => axi_interconnect_0_M01_AXI_ARCACHE(3 downto 0),
      M01_AXI_arid(15 downto 0) => axi_interconnect_0_M01_AXI_ARID(15 downto 0),
      M01_AXI_arlen(7 downto 0) => axi_interconnect_0_M01_AXI_ARLEN(7 downto 0),
      M01_AXI_arlock(0) => axi_interconnect_0_M01_AXI_ARLOCK(0),
      M01_AXI_arprot(2 downto 0) => axi_interconnect_0_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arqos(3 downto 0) => axi_interconnect_0_M01_AXI_ARQOS(3 downto 0),
      M01_AXI_arready(0) => axi_interconnect_0_M01_AXI_ARREADY(0),
      M01_AXI_arregion(3 downto 0) => axi_interconnect_0_M01_AXI_ARREGION(3 downto 0),
      M01_AXI_arsize(2 downto 0) => axi_interconnect_0_M01_AXI_ARSIZE(2 downto 0),
      M01_AXI_aruser(15 downto 0) => axi_interconnect_0_M01_AXI_ARUSER(15 downto 0),
      M01_AXI_arvalid(0) => axi_interconnect_0_M01_AXI_ARVALID(0),
      M01_AXI_awaddr(39 downto 0) => axi_interconnect_0_M01_AXI_AWADDR(39 downto 0),
      M01_AXI_awburst(1 downto 0) => axi_interconnect_0_M01_AXI_AWBURST(1 downto 0),
      M01_AXI_awcache(3 downto 0) => axi_interconnect_0_M01_AXI_AWCACHE(3 downto 0),
      M01_AXI_awid(15 downto 0) => axi_interconnect_0_M01_AXI_AWID(15 downto 0),
      M01_AXI_awlen(7 downto 0) => axi_interconnect_0_M01_AXI_AWLEN(7 downto 0),
      M01_AXI_awlock(0) => axi_interconnect_0_M01_AXI_AWLOCK(0),
      M01_AXI_awprot(2 downto 0) => axi_interconnect_0_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awqos(3 downto 0) => axi_interconnect_0_M01_AXI_AWQOS(3 downto 0),
      M01_AXI_awready(0) => axi_interconnect_0_M01_AXI_AWREADY(0),
      M01_AXI_awregion(3 downto 0) => axi_interconnect_0_M01_AXI_AWREGION(3 downto 0),
      M01_AXI_awsize(2 downto 0) => axi_interconnect_0_M01_AXI_AWSIZE(2 downto 0),
      M01_AXI_awuser(15 downto 0) => axi_interconnect_0_M01_AXI_AWUSER(15 downto 0),
      M01_AXI_awvalid(0) => axi_interconnect_0_M01_AXI_AWVALID(0),
      M01_AXI_bid(15 downto 0) => axi_interconnect_0_M01_AXI_BID(15 downto 0),
      M01_AXI_bready(0) => axi_interconnect_0_M01_AXI_BREADY(0),
      M01_AXI_bresp(1 downto 0) => axi_interconnect_0_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => axi_interconnect_0_M01_AXI_BVALID(0),
      M01_AXI_rdata(31 downto 0) => axi_interconnect_0_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rid(15 downto 0) => axi_interconnect_0_M01_AXI_RID(15 downto 0),
      M01_AXI_rlast(0) => axi_interconnect_0_M01_AXI_RLAST(0),
      M01_AXI_rready(0) => axi_interconnect_0_M01_AXI_RREADY(0),
      M01_AXI_rresp(1 downto 0) => axi_interconnect_0_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => axi_interconnect_0_M01_AXI_RVALID(0),
      M01_AXI_wdata(31 downto 0) => axi_interconnect_0_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wlast(0) => axi_interconnect_0_M01_AXI_WLAST(0),
      M01_AXI_wready(0) => axi_interconnect_0_M01_AXI_WREADY(0),
      M01_AXI_wstrb(3 downto 0) => axi_interconnect_0_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => axi_interconnect_0_M01_AXI_WVALID(0),
      M02_ACLK => zynq_ultra_ps_e_pl_clk0,
      M02_ARESETN => rst_gen_reg_interconnect_aresetn(0),
      M02_AXI_araddr(39 downto 0) => axi_interconnect_0_M02_AXI_ARADDR(39 downto 0),
      M02_AXI_arready => axi_interconnect_0_M02_AXI_ARREADY,
      M02_AXI_arvalid => axi_interconnect_0_M02_AXI_ARVALID,
      M02_AXI_awaddr(39 downto 0) => axi_interconnect_0_M02_AXI_AWADDR(39 downto 0),
      M02_AXI_awready => axi_interconnect_0_M02_AXI_AWREADY,
      M02_AXI_awvalid => axi_interconnect_0_M02_AXI_AWVALID,
      M02_AXI_bready => axi_interconnect_0_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => axi_interconnect_0_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => axi_interconnect_0_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => axi_interconnect_0_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => axi_interconnect_0_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => axi_interconnect_0_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => axi_interconnect_0_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => axi_interconnect_0_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => axi_interconnect_0_M02_AXI_WREADY,
      M02_AXI_wvalid => axi_interconnect_0_M02_AXI_WVALID,
      S00_ACLK => zynq_ultra_ps_e_pl_clk0,
      S00_ARESETN => rst_gen_reg_interconnect_aresetn(0),
      S00_AXI_araddr(39 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARADDR(39 downto 0),
      S00_AXI_arburst(1 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARCACHE(3 downto 0),
      S00_AXI_arid(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARID(15 downto 0),
      S00_AXI_arlen(7 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLOCK,
      S00_AXI_arprot(2 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARQOS(3 downto 0),
      S00_AXI_arready(0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARREADY(0),
      S00_AXI_arsize(2 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARSIZE(2 downto 0),
      S00_AXI_aruser(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARUSER(15 downto 0),
      S00_AXI_arvalid(0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARVALID,
      S00_AXI_awaddr(39 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWADDR(39 downto 0),
      S00_AXI_awburst(1 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWCACHE(3 downto 0),
      S00_AXI_awid(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWID(15 downto 0),
      S00_AXI_awlen(7 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLOCK,
      S00_AXI_awprot(2 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWQOS(3 downto 0),
      S00_AXI_awready(0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWREADY(0),
      S00_AXI_awsize(2 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWSIZE(2 downto 0),
      S00_AXI_awuser(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWUSER(15 downto 0),
      S00_AXI_awvalid(0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWVALID,
      S00_AXI_bid(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_BID(15 downto 0),
      S00_AXI_bready(0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_BREADY,
      S00_AXI_bresp(1 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_BVALID(0),
      S00_AXI_rdata(31 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RDATA(31 downto 0),
      S00_AXI_rid(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RID(15 downto 0),
      S00_AXI_rlast(0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RLAST(0),
      S00_AXI_rready(0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RREADY,
      S00_AXI_rresp(1 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RVALID(0),
      S00_AXI_wdata(31 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WDATA(31 downto 0),
      S00_AXI_wlast(0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WLAST,
      S00_AXI_wready(0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WVALID
    );
dpu_concat_irq: component top_dpu_concat_irq_0
     port map (
      In0(0) => hier_dpu_INTR(0),
      dout(0) => dpu_concat_irq_dout(0)
    );
hier_dpu: entity work.hier_dpu_imp_CAA3KC
     port map (
      CLK => zynq_ultra_ps_e_pl_clk0,
      GHP_CLK_I => zynq_ultra_ps_e_pl_clk1,
      GHP_CLK_O => hier_dpu_GHP_CLK_O,
      GHP_RSTn => rst_gen_ghp_peripheral_aresetn(0),
      INTR(0) => hier_dpu_INTR(0),
      M_AXI_HP0_FPD_araddr(39 downto 0) => hier_dpu_M_AXI_HP0_FPD_ARADDR(39 downto 0),
      M_AXI_HP0_FPD_arburst(1 downto 0) => hier_dpu_M_AXI_HP0_FPD_ARBURST(1 downto 0),
      M_AXI_HP0_FPD_arcache(3 downto 0) => hier_dpu_M_AXI_HP0_FPD_ARCACHE(3 downto 0),
      M_AXI_HP0_FPD_arid(1 downto 0) => hier_dpu_M_AXI_HP0_FPD_ARID(1 downto 0),
      M_AXI_HP0_FPD_arlen(7 downto 0) => hier_dpu_M_AXI_HP0_FPD_ARLEN(7 downto 0),
      M_AXI_HP0_FPD_arlock => hier_dpu_M_AXI_HP0_FPD_ARLOCK,
      M_AXI_HP0_FPD_arprot(2 downto 0) => hier_dpu_M_AXI_HP0_FPD_ARPROT(2 downto 0),
      M_AXI_HP0_FPD_arqos(3 downto 0) => hier_dpu_M_AXI_HP0_FPD_ARQOS(3 downto 0),
      M_AXI_HP0_FPD_arready => hier_dpu_M_AXI_HP0_FPD_ARREADY,
      M_AXI_HP0_FPD_arsize(2 downto 0) => hier_dpu_M_AXI_HP0_FPD_ARSIZE(2 downto 0),
      M_AXI_HP0_FPD_aruser => hier_dpu_M_AXI_HP0_FPD_ARUSER,
      M_AXI_HP0_FPD_arvalid => hier_dpu_M_AXI_HP0_FPD_ARVALID,
      M_AXI_HP0_FPD_awaddr(39 downto 0) => hier_dpu_M_AXI_HP0_FPD_AWADDR(39 downto 0),
      M_AXI_HP0_FPD_awburst(1 downto 0) => hier_dpu_M_AXI_HP0_FPD_AWBURST(1 downto 0),
      M_AXI_HP0_FPD_awcache(3 downto 0) => hier_dpu_M_AXI_HP0_FPD_AWCACHE(3 downto 0),
      M_AXI_HP0_FPD_awid(1 downto 0) => hier_dpu_M_AXI_HP0_FPD_AWID(1 downto 0),
      M_AXI_HP0_FPD_awlen(7 downto 0) => hier_dpu_M_AXI_HP0_FPD_AWLEN(7 downto 0),
      M_AXI_HP0_FPD_awlock => hier_dpu_M_AXI_HP0_FPD_AWLOCK,
      M_AXI_HP0_FPD_awprot(2 downto 0) => hier_dpu_M_AXI_HP0_FPD_AWPROT(2 downto 0),
      M_AXI_HP0_FPD_awqos(3 downto 0) => hier_dpu_M_AXI_HP0_FPD_AWQOS(3 downto 0),
      M_AXI_HP0_FPD_awready => hier_dpu_M_AXI_HP0_FPD_AWREADY,
      M_AXI_HP0_FPD_awsize(2 downto 0) => hier_dpu_M_AXI_HP0_FPD_AWSIZE(2 downto 0),
      M_AXI_HP0_FPD_awuser => hier_dpu_M_AXI_HP0_FPD_AWUSER,
      M_AXI_HP0_FPD_awvalid => hier_dpu_M_AXI_HP0_FPD_AWVALID,
      M_AXI_HP0_FPD_bid(5 downto 0) => hier_dpu_M_AXI_HP0_FPD_BID(5 downto 0),
      M_AXI_HP0_FPD_bready => hier_dpu_M_AXI_HP0_FPD_BREADY,
      M_AXI_HP0_FPD_bresp(1 downto 0) => hier_dpu_M_AXI_HP0_FPD_BRESP(1 downto 0),
      M_AXI_HP0_FPD_bvalid => hier_dpu_M_AXI_HP0_FPD_BVALID,
      M_AXI_HP0_FPD_rdata(127 downto 0) => hier_dpu_M_AXI_HP0_FPD_RDATA(127 downto 0),
      M_AXI_HP0_FPD_rid(5 downto 0) => hier_dpu_M_AXI_HP0_FPD_RID(5 downto 0),
      M_AXI_HP0_FPD_rlast => hier_dpu_M_AXI_HP0_FPD_RLAST,
      M_AXI_HP0_FPD_rready => hier_dpu_M_AXI_HP0_FPD_RREADY,
      M_AXI_HP0_FPD_rresp(1 downto 0) => hier_dpu_M_AXI_HP0_FPD_RRESP(1 downto 0),
      M_AXI_HP0_FPD_rvalid => hier_dpu_M_AXI_HP0_FPD_RVALID,
      M_AXI_HP0_FPD_wdata(127 downto 0) => hier_dpu_M_AXI_HP0_FPD_WDATA(127 downto 0),
      M_AXI_HP0_FPD_wlast => hier_dpu_M_AXI_HP0_FPD_WLAST,
      M_AXI_HP0_FPD_wready => hier_dpu_M_AXI_HP0_FPD_WREADY,
      M_AXI_HP0_FPD_wstrb(15 downto 0) => hier_dpu_M_AXI_HP0_FPD_WSTRB(15 downto 0),
      M_AXI_HP0_FPD_wvalid => hier_dpu_M_AXI_HP0_FPD_WVALID,
      M_AXI_HP1_FPD_araddr(39 downto 0) => hier_dpu_M_AXI_HP1_FPD_ARADDR(39 downto 0),
      M_AXI_HP1_FPD_arburst(1 downto 0) => hier_dpu_M_AXI_HP1_FPD_ARBURST(1 downto 0),
      M_AXI_HP1_FPD_arcache(3 downto 0) => hier_dpu_M_AXI_HP1_FPD_ARCACHE(3 downto 0),
      M_AXI_HP1_FPD_arid(1 downto 0) => hier_dpu_M_AXI_HP1_FPD_ARID(1 downto 0),
      M_AXI_HP1_FPD_arlen(7 downto 0) => hier_dpu_M_AXI_HP1_FPD_ARLEN(7 downto 0),
      M_AXI_HP1_FPD_arlock => hier_dpu_M_AXI_HP1_FPD_ARLOCK,
      M_AXI_HP1_FPD_arprot(2 downto 0) => hier_dpu_M_AXI_HP1_FPD_ARPROT(2 downto 0),
      M_AXI_HP1_FPD_arqos(3 downto 0) => hier_dpu_M_AXI_HP1_FPD_ARQOS(3 downto 0),
      M_AXI_HP1_FPD_arready => hier_dpu_M_AXI_HP1_FPD_ARREADY,
      M_AXI_HP1_FPD_arsize(2 downto 0) => hier_dpu_M_AXI_HP1_FPD_ARSIZE(2 downto 0),
      M_AXI_HP1_FPD_aruser => hier_dpu_M_AXI_HP1_FPD_ARUSER,
      M_AXI_HP1_FPD_arvalid => hier_dpu_M_AXI_HP1_FPD_ARVALID,
      M_AXI_HP1_FPD_awaddr(39 downto 0) => hier_dpu_M_AXI_HP1_FPD_AWADDR(39 downto 0),
      M_AXI_HP1_FPD_awburst(1 downto 0) => hier_dpu_M_AXI_HP1_FPD_AWBURST(1 downto 0),
      M_AXI_HP1_FPD_awcache(3 downto 0) => hier_dpu_M_AXI_HP1_FPD_AWCACHE(3 downto 0),
      M_AXI_HP1_FPD_awid(1 downto 0) => hier_dpu_M_AXI_HP1_FPD_AWID(1 downto 0),
      M_AXI_HP1_FPD_awlen(7 downto 0) => hier_dpu_M_AXI_HP1_FPD_AWLEN(7 downto 0),
      M_AXI_HP1_FPD_awlock => hier_dpu_M_AXI_HP1_FPD_AWLOCK,
      M_AXI_HP1_FPD_awprot(2 downto 0) => hier_dpu_M_AXI_HP1_FPD_AWPROT(2 downto 0),
      M_AXI_HP1_FPD_awqos(3 downto 0) => hier_dpu_M_AXI_HP1_FPD_AWQOS(3 downto 0),
      M_AXI_HP1_FPD_awready => hier_dpu_M_AXI_HP1_FPD_AWREADY,
      M_AXI_HP1_FPD_awsize(2 downto 0) => hier_dpu_M_AXI_HP1_FPD_AWSIZE(2 downto 0),
      M_AXI_HP1_FPD_awuser => hier_dpu_M_AXI_HP1_FPD_AWUSER,
      M_AXI_HP1_FPD_awvalid => hier_dpu_M_AXI_HP1_FPD_AWVALID,
      M_AXI_HP1_FPD_bid(5 downto 0) => hier_dpu_M_AXI_HP1_FPD_BID(5 downto 0),
      M_AXI_HP1_FPD_bready => hier_dpu_M_AXI_HP1_FPD_BREADY,
      M_AXI_HP1_FPD_bresp(1 downto 0) => hier_dpu_M_AXI_HP1_FPD_BRESP(1 downto 0),
      M_AXI_HP1_FPD_bvalid => hier_dpu_M_AXI_HP1_FPD_BVALID,
      M_AXI_HP1_FPD_rdata(127 downto 0) => hier_dpu_M_AXI_HP1_FPD_RDATA(127 downto 0),
      M_AXI_HP1_FPD_rid(5 downto 0) => hier_dpu_M_AXI_HP1_FPD_RID(5 downto 0),
      M_AXI_HP1_FPD_rlast => hier_dpu_M_AXI_HP1_FPD_RLAST,
      M_AXI_HP1_FPD_rready => hier_dpu_M_AXI_HP1_FPD_RREADY,
      M_AXI_HP1_FPD_rresp(1 downto 0) => hier_dpu_M_AXI_HP1_FPD_RRESP(1 downto 0),
      M_AXI_HP1_FPD_rvalid => hier_dpu_M_AXI_HP1_FPD_RVALID,
      M_AXI_HP1_FPD_wdata(127 downto 0) => hier_dpu_M_AXI_HP1_FPD_WDATA(127 downto 0),
      M_AXI_HP1_FPD_wlast => hier_dpu_M_AXI_HP1_FPD_WLAST,
      M_AXI_HP1_FPD_wready => hier_dpu_M_AXI_HP1_FPD_WREADY,
      M_AXI_HP1_FPD_wstrb(15 downto 0) => hier_dpu_M_AXI_HP1_FPD_WSTRB(15 downto 0),
      M_AXI_HP1_FPD_wvalid => hier_dpu_M_AXI_HP1_FPD_WVALID,
      M_AXI_LPD_araddr(39 downto 0) => hier_dpu_M_AXI_LPD_ARADDR(39 downto 0),
      M_AXI_LPD_arburst(1 downto 0) => hier_dpu_M_AXI_LPD_ARBURST(1 downto 0),
      M_AXI_LPD_arcache(3 downto 0) => hier_dpu_M_AXI_LPD_ARCACHE(3 downto 0),
      M_AXI_LPD_arid(1 downto 0) => hier_dpu_M_AXI_LPD_ARID(1 downto 0),
      M_AXI_LPD_arlen(7 downto 0) => hier_dpu_M_AXI_LPD_ARLEN(7 downto 0),
      M_AXI_LPD_arlock => hier_dpu_M_AXI_LPD_ARLOCK,
      M_AXI_LPD_arprot(2 downto 0) => hier_dpu_M_AXI_LPD_ARPROT(2 downto 0),
      M_AXI_LPD_arqos(3 downto 0) => hier_dpu_M_AXI_LPD_ARQOS(3 downto 0),
      M_AXI_LPD_arready => hier_dpu_M_AXI_LPD_ARREADY,
      M_AXI_LPD_arsize(2 downto 0) => hier_dpu_M_AXI_LPD_ARSIZE(2 downto 0),
      M_AXI_LPD_aruser => hier_dpu_M_AXI_LPD_ARUSER,
      M_AXI_LPD_arvalid => hier_dpu_M_AXI_LPD_ARVALID,
      M_AXI_LPD_awaddr(39 downto 0) => hier_dpu_M_AXI_LPD_AWADDR(39 downto 0),
      M_AXI_LPD_awburst(1 downto 0) => hier_dpu_M_AXI_LPD_AWBURST(1 downto 0),
      M_AXI_LPD_awcache(3 downto 0) => hier_dpu_M_AXI_LPD_AWCACHE(3 downto 0),
      M_AXI_LPD_awid(1 downto 0) => hier_dpu_M_AXI_LPD_AWID(1 downto 0),
      M_AXI_LPD_awlen(7 downto 0) => hier_dpu_M_AXI_LPD_AWLEN(7 downto 0),
      M_AXI_LPD_awlock => hier_dpu_M_AXI_LPD_AWLOCK,
      M_AXI_LPD_awprot(2 downto 0) => hier_dpu_M_AXI_LPD_AWPROT(2 downto 0),
      M_AXI_LPD_awqos(3 downto 0) => hier_dpu_M_AXI_LPD_AWQOS(3 downto 0),
      M_AXI_LPD_awready => hier_dpu_M_AXI_LPD_AWREADY,
      M_AXI_LPD_awsize(2 downto 0) => hier_dpu_M_AXI_LPD_AWSIZE(2 downto 0),
      M_AXI_LPD_awuser => hier_dpu_M_AXI_LPD_AWUSER,
      M_AXI_LPD_awvalid => hier_dpu_M_AXI_LPD_AWVALID,
      M_AXI_LPD_bid(5 downto 0) => hier_dpu_M_AXI_LPD_BID(5 downto 0),
      M_AXI_LPD_bready => hier_dpu_M_AXI_LPD_BREADY,
      M_AXI_LPD_bresp(1 downto 0) => hier_dpu_M_AXI_LPD_BRESP(1 downto 0),
      M_AXI_LPD_bvalid => hier_dpu_M_AXI_LPD_BVALID,
      M_AXI_LPD_rdata(31 downto 0) => hier_dpu_M_AXI_LPD_RDATA(31 downto 0),
      M_AXI_LPD_rid(5 downto 0) => hier_dpu_M_AXI_LPD_RID(5 downto 0),
      M_AXI_LPD_rlast => hier_dpu_M_AXI_LPD_RLAST,
      M_AXI_LPD_rready => hier_dpu_M_AXI_LPD_RREADY,
      M_AXI_LPD_rresp(1 downto 0) => hier_dpu_M_AXI_LPD_RRESP(1 downto 0),
      M_AXI_LPD_rvalid => hier_dpu_M_AXI_LPD_RVALID,
      M_AXI_LPD_wdata(31 downto 0) => hier_dpu_M_AXI_LPD_WDATA(31 downto 0),
      M_AXI_LPD_wlast => hier_dpu_M_AXI_LPD_WLAST,
      M_AXI_LPD_wready => hier_dpu_M_AXI_LPD_WREADY,
      M_AXI_LPD_wstrb(3 downto 0) => hier_dpu_M_AXI_LPD_WSTRB(3 downto 0),
      M_AXI_LPD_wvalid => hier_dpu_M_AXI_LPD_WVALID,
      RSTn => rst_gen_reg_peripheral_aresetn(0),
      S_AXI_CLK => zynq_ultra_ps_e_pl_clk0,
      S_AXI_RSTn => rst_gen_reg_peripheral_aresetn(0),
      S_AXI_araddr(39 downto 0) => axi_interconnect_0_M01_AXI_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_0_M01_AXI_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_0_M01_AXI_ARCACHE(3 downto 0),
      S_AXI_arid(15 downto 0) => axi_interconnect_0_M01_AXI_ARID(15 downto 0),
      S_AXI_arlen(7 downto 0) => axi_interconnect_0_M01_AXI_ARLEN(7 downto 0),
      S_AXI_arlock(0) => axi_interconnect_0_M01_AXI_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_0_M01_AXI_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_interconnect_0_M01_AXI_ARQOS(3 downto 0),
      S_AXI_arready(0) => axi_interconnect_0_M01_AXI_ARREADY(0),
      S_AXI_arregion(3 downto 0) => axi_interconnect_0_M01_AXI_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => axi_interconnect_0_M01_AXI_ARSIZE(2 downto 0),
      S_AXI_aruser(15 downto 0) => axi_interconnect_0_M01_AXI_ARUSER(15 downto 0),
      S_AXI_arvalid(0) => axi_interconnect_0_M01_AXI_ARVALID(0),
      S_AXI_awaddr(39 downto 0) => axi_interconnect_0_M01_AXI_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_0_M01_AXI_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_0_M01_AXI_AWCACHE(3 downto 0),
      S_AXI_awid(15 downto 0) => axi_interconnect_0_M01_AXI_AWID(15 downto 0),
      S_AXI_awlen(7 downto 0) => axi_interconnect_0_M01_AXI_AWLEN(7 downto 0),
      S_AXI_awlock(0) => axi_interconnect_0_M01_AXI_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_0_M01_AXI_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_interconnect_0_M01_AXI_AWQOS(3 downto 0),
      S_AXI_awready(0) => axi_interconnect_0_M01_AXI_AWREADY(0),
      S_AXI_awregion(3 downto 0) => axi_interconnect_0_M01_AXI_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => axi_interconnect_0_M01_AXI_AWSIZE(2 downto 0),
      S_AXI_awuser(15 downto 0) => axi_interconnect_0_M01_AXI_AWUSER(15 downto 0),
      S_AXI_awvalid(0) => axi_interconnect_0_M01_AXI_AWVALID(0),
      S_AXI_bid(15 downto 0) => axi_interconnect_0_M01_AXI_BID(15 downto 0),
      S_AXI_bready(0) => axi_interconnect_0_M01_AXI_BREADY(0),
      S_AXI_bresp(1 downto 0) => axi_interconnect_0_M01_AXI_BRESP(1 downto 0),
      S_AXI_bvalid(0) => axi_interconnect_0_M01_AXI_BVALID(0),
      S_AXI_rdata(31 downto 0) => axi_interconnect_0_M01_AXI_RDATA(31 downto 0),
      S_AXI_rid(15 downto 0) => axi_interconnect_0_M01_AXI_RID(15 downto 0),
      S_AXI_rlast(0) => axi_interconnect_0_M01_AXI_RLAST(0),
      S_AXI_rready(0) => axi_interconnect_0_M01_AXI_RREADY(0),
      S_AXI_rresp(1 downto 0) => axi_interconnect_0_M01_AXI_RRESP(1 downto 0),
      S_AXI_rvalid(0) => axi_interconnect_0_M01_AXI_RVALID(0),
      S_AXI_wdata(31 downto 0) => axi_interconnect_0_M01_AXI_WDATA(31 downto 0),
      S_AXI_wlast(0) => axi_interconnect_0_M01_AXI_WLAST(0),
      S_AXI_wready(0) => axi_interconnect_0_M01_AXI_WREADY(0),
      S_AXI_wstrb(3 downto 0) => axi_interconnect_0_M01_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => axi_interconnect_0_M01_AXI_WVALID(0)
    );
rst_gen_ghp: component top_rst_gen_ghp_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_gen_ghp_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => zynq_ultra_ps_e_pl_resetn0,
      interconnect_aresetn(0) => NLW_rst_gen_ghp_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_gen_ghp_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_gen_ghp_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_gen_ghp_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => zynq_ultra_ps_e_pl_clk1
    );
rst_gen_reg: component top_rst_gen_reg_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_gen_reg_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => zynq_ultra_ps_e_pl_resetn0,
      interconnect_aresetn(0) => rst_gen_reg_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_gen_reg_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_gen_reg_peripheral_aresetn(0),
      peripheral_reset(0) => rst_gen_reg_peripheral_reset(0),
      slowest_sync_clk => zynq_ultra_ps_e_pl_clk0
    );
zynq_ultra_ps_e: component top_zynq_ultra_ps_e_0
     port map (
      maxigp2_araddr(39 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARADDR(39 downto 0),
      maxigp2_arburst(1 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARBURST(1 downto 0),
      maxigp2_arcache(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARCACHE(3 downto 0),
      maxigp2_arid(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARID(15 downto 0),
      maxigp2_arlen(7 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLEN(7 downto 0),
      maxigp2_arlock => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLOCK,
      maxigp2_arprot(2 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARPROT(2 downto 0),
      maxigp2_arqos(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARQOS(3 downto 0),
      maxigp2_arready => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARREADY(0),
      maxigp2_arsize(2 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARSIZE(2 downto 0),
      maxigp2_aruser(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARUSER(15 downto 0),
      maxigp2_arvalid => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARVALID,
      maxigp2_awaddr(39 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWADDR(39 downto 0),
      maxigp2_awburst(1 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWBURST(1 downto 0),
      maxigp2_awcache(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWCACHE(3 downto 0),
      maxigp2_awid(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWID(15 downto 0),
      maxigp2_awlen(7 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLEN(7 downto 0),
      maxigp2_awlock => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLOCK,
      maxigp2_awprot(2 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWPROT(2 downto 0),
      maxigp2_awqos(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWQOS(3 downto 0),
      maxigp2_awready => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWREADY(0),
      maxigp2_awsize(2 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWSIZE(2 downto 0),
      maxigp2_awuser(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWUSER(15 downto 0),
      maxigp2_awvalid => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWVALID,
      maxigp2_bid(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_BID(15 downto 0),
      maxigp2_bready => zynq_ultra_ps_e_M_AXI_HPM0_LPD_BREADY,
      maxigp2_bresp(1 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_BRESP(1 downto 0),
      maxigp2_bvalid => zynq_ultra_ps_e_M_AXI_HPM0_LPD_BVALID(0),
      maxigp2_rdata(31 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RDATA(31 downto 0),
      maxigp2_rid(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RID(15 downto 0),
      maxigp2_rlast => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RLAST(0),
      maxigp2_rready => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RREADY,
      maxigp2_rresp(1 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RRESP(1 downto 0),
      maxigp2_rvalid => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RVALID(0),
      maxigp2_wdata(31 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WDATA(31 downto 0),
      maxigp2_wlast => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WLAST,
      maxigp2_wready => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WREADY(0),
      maxigp2_wstrb(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WSTRB(3 downto 0),
      maxigp2_wvalid => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WVALID,
      maxihpm0_lpd_aclk => zynq_ultra_ps_e_pl_clk0,
      pl_clk0 => zynq_ultra_ps_e_pl_clk0,
      pl_clk1 => zynq_ultra_ps_e_pl_clk1,
      pl_ps_irq0(0) => dpu_concat_irq_dout(0),
      pl_ps_irq1(0) => axi_dma_0_s2mm_introut,
      pl_resetn0 => zynq_ultra_ps_e_pl_resetn0,
      saxi_lpd_aclk => hier_dpu_GHP_CLK_O,
      saxigp2_araddr(48 downto 40) => B"000000000",
      saxigp2_araddr(39 downto 0) => hier_dpu_M_AXI_HP0_FPD_ARADDR(39 downto 0),
      saxigp2_arburst(1 downto 0) => hier_dpu_M_AXI_HP0_FPD_ARBURST(1 downto 0),
      saxigp2_arcache(3 downto 0) => hier_dpu_M_AXI_HP0_FPD_ARCACHE(3 downto 0),
      saxigp2_arid(5 downto 2) => B"0000",
      saxigp2_arid(1 downto 0) => hier_dpu_M_AXI_HP0_FPD_ARID(1 downto 0),
      saxigp2_arlen(7 downto 0) => hier_dpu_M_AXI_HP0_FPD_ARLEN(7 downto 0),
      saxigp2_arlock => hier_dpu_M_AXI_HP0_FPD_ARLOCK,
      saxigp2_arprot(2 downto 0) => hier_dpu_M_AXI_HP0_FPD_ARPROT(2 downto 0),
      saxigp2_arqos(3 downto 0) => hier_dpu_M_AXI_HP0_FPD_ARQOS(3 downto 0),
      saxigp2_arready => hier_dpu_M_AXI_HP0_FPD_ARREADY,
      saxigp2_arsize(2 downto 0) => hier_dpu_M_AXI_HP0_FPD_ARSIZE(2 downto 0),
      saxigp2_aruser => hier_dpu_M_AXI_HP0_FPD_ARUSER,
      saxigp2_arvalid => hier_dpu_M_AXI_HP0_FPD_ARVALID,
      saxigp2_awaddr(48 downto 40) => B"000000000",
      saxigp2_awaddr(39 downto 0) => hier_dpu_M_AXI_HP0_FPD_AWADDR(39 downto 0),
      saxigp2_awburst(1 downto 0) => hier_dpu_M_AXI_HP0_FPD_AWBURST(1 downto 0),
      saxigp2_awcache(3 downto 0) => hier_dpu_M_AXI_HP0_FPD_AWCACHE(3 downto 0),
      saxigp2_awid(5 downto 2) => B"0000",
      saxigp2_awid(1 downto 0) => hier_dpu_M_AXI_HP0_FPD_AWID(1 downto 0),
      saxigp2_awlen(7 downto 0) => hier_dpu_M_AXI_HP0_FPD_AWLEN(7 downto 0),
      saxigp2_awlock => hier_dpu_M_AXI_HP0_FPD_AWLOCK,
      saxigp2_awprot(2 downto 0) => hier_dpu_M_AXI_HP0_FPD_AWPROT(2 downto 0),
      saxigp2_awqos(3 downto 0) => hier_dpu_M_AXI_HP0_FPD_AWQOS(3 downto 0),
      saxigp2_awready => hier_dpu_M_AXI_HP0_FPD_AWREADY,
      saxigp2_awsize(2 downto 0) => hier_dpu_M_AXI_HP0_FPD_AWSIZE(2 downto 0),
      saxigp2_awuser => hier_dpu_M_AXI_HP0_FPD_AWUSER,
      saxigp2_awvalid => hier_dpu_M_AXI_HP0_FPD_AWVALID,
      saxigp2_bid(5 downto 0) => hier_dpu_M_AXI_HP0_FPD_BID(5 downto 0),
      saxigp2_bready => hier_dpu_M_AXI_HP0_FPD_BREADY,
      saxigp2_bresp(1 downto 0) => hier_dpu_M_AXI_HP0_FPD_BRESP(1 downto 0),
      saxigp2_bvalid => hier_dpu_M_AXI_HP0_FPD_BVALID,
      saxigp2_rdata(127 downto 0) => hier_dpu_M_AXI_HP0_FPD_RDATA(127 downto 0),
      saxigp2_rid(5 downto 0) => hier_dpu_M_AXI_HP0_FPD_RID(5 downto 0),
      saxigp2_rlast => hier_dpu_M_AXI_HP0_FPD_RLAST,
      saxigp2_rready => hier_dpu_M_AXI_HP0_FPD_RREADY,
      saxigp2_rresp(1 downto 0) => hier_dpu_M_AXI_HP0_FPD_RRESP(1 downto 0),
      saxigp2_rvalid => hier_dpu_M_AXI_HP0_FPD_RVALID,
      saxigp2_wdata(127 downto 0) => hier_dpu_M_AXI_HP0_FPD_WDATA(127 downto 0),
      saxigp2_wlast => hier_dpu_M_AXI_HP0_FPD_WLAST,
      saxigp2_wready => hier_dpu_M_AXI_HP0_FPD_WREADY,
      saxigp2_wstrb(15 downto 0) => hier_dpu_M_AXI_HP0_FPD_WSTRB(15 downto 0),
      saxigp2_wvalid => hier_dpu_M_AXI_HP0_FPD_WVALID,
      saxigp3_araddr(48 downto 40) => B"000000000",
      saxigp3_araddr(39 downto 0) => hier_dpu_M_AXI_HP1_FPD_ARADDR(39 downto 0),
      saxigp3_arburst(1 downto 0) => hier_dpu_M_AXI_HP1_FPD_ARBURST(1 downto 0),
      saxigp3_arcache(3 downto 0) => hier_dpu_M_AXI_HP1_FPD_ARCACHE(3 downto 0),
      saxigp3_arid(5 downto 2) => B"0000",
      saxigp3_arid(1 downto 0) => hier_dpu_M_AXI_HP1_FPD_ARID(1 downto 0),
      saxigp3_arlen(7 downto 0) => hier_dpu_M_AXI_HP1_FPD_ARLEN(7 downto 0),
      saxigp3_arlock => hier_dpu_M_AXI_HP1_FPD_ARLOCK,
      saxigp3_arprot(2 downto 0) => hier_dpu_M_AXI_HP1_FPD_ARPROT(2 downto 0),
      saxigp3_arqos(3 downto 0) => hier_dpu_M_AXI_HP1_FPD_ARQOS(3 downto 0),
      saxigp3_arready => hier_dpu_M_AXI_HP1_FPD_ARREADY,
      saxigp3_arsize(2 downto 0) => hier_dpu_M_AXI_HP1_FPD_ARSIZE(2 downto 0),
      saxigp3_aruser => hier_dpu_M_AXI_HP1_FPD_ARUSER,
      saxigp3_arvalid => hier_dpu_M_AXI_HP1_FPD_ARVALID,
      saxigp3_awaddr(48 downto 40) => B"000000000",
      saxigp3_awaddr(39 downto 0) => hier_dpu_M_AXI_HP1_FPD_AWADDR(39 downto 0),
      saxigp3_awburst(1 downto 0) => hier_dpu_M_AXI_HP1_FPD_AWBURST(1 downto 0),
      saxigp3_awcache(3 downto 0) => hier_dpu_M_AXI_HP1_FPD_AWCACHE(3 downto 0),
      saxigp3_awid(5 downto 2) => B"0000",
      saxigp3_awid(1 downto 0) => hier_dpu_M_AXI_HP1_FPD_AWID(1 downto 0),
      saxigp3_awlen(7 downto 0) => hier_dpu_M_AXI_HP1_FPD_AWLEN(7 downto 0),
      saxigp3_awlock => hier_dpu_M_AXI_HP1_FPD_AWLOCK,
      saxigp3_awprot(2 downto 0) => hier_dpu_M_AXI_HP1_FPD_AWPROT(2 downto 0),
      saxigp3_awqos(3 downto 0) => hier_dpu_M_AXI_HP1_FPD_AWQOS(3 downto 0),
      saxigp3_awready => hier_dpu_M_AXI_HP1_FPD_AWREADY,
      saxigp3_awsize(2 downto 0) => hier_dpu_M_AXI_HP1_FPD_AWSIZE(2 downto 0),
      saxigp3_awuser => hier_dpu_M_AXI_HP1_FPD_AWUSER,
      saxigp3_awvalid => hier_dpu_M_AXI_HP1_FPD_AWVALID,
      saxigp3_bid(5 downto 0) => hier_dpu_M_AXI_HP1_FPD_BID(5 downto 0),
      saxigp3_bready => hier_dpu_M_AXI_HP1_FPD_BREADY,
      saxigp3_bresp(1 downto 0) => hier_dpu_M_AXI_HP1_FPD_BRESP(1 downto 0),
      saxigp3_bvalid => hier_dpu_M_AXI_HP1_FPD_BVALID,
      saxigp3_rdata(127 downto 0) => hier_dpu_M_AXI_HP1_FPD_RDATA(127 downto 0),
      saxigp3_rid(5 downto 0) => hier_dpu_M_AXI_HP1_FPD_RID(5 downto 0),
      saxigp3_rlast => hier_dpu_M_AXI_HP1_FPD_RLAST,
      saxigp3_rready => hier_dpu_M_AXI_HP1_FPD_RREADY,
      saxigp3_rresp(1 downto 0) => hier_dpu_M_AXI_HP1_FPD_RRESP(1 downto 0),
      saxigp3_rvalid => hier_dpu_M_AXI_HP1_FPD_RVALID,
      saxigp3_wdata(127 downto 0) => hier_dpu_M_AXI_HP1_FPD_WDATA(127 downto 0),
      saxigp3_wlast => hier_dpu_M_AXI_HP1_FPD_WLAST,
      saxigp3_wready => hier_dpu_M_AXI_HP1_FPD_WREADY,
      saxigp3_wstrb(15 downto 0) => hier_dpu_M_AXI_HP1_FPD_WSTRB(15 downto 0),
      saxigp3_wvalid => hier_dpu_M_AXI_HP1_FPD_WVALID,
      saxigp4_araddr(48 downto 0) => B"0000000000000000000000000000000000000000000000000",
      saxigp4_arburst(1 downto 0) => B"01",
      saxigp4_arcache(3 downto 0) => B"0011",
      saxigp4_arid(5 downto 0) => B"000000",
      saxigp4_arlen(7 downto 0) => B"00000000",
      saxigp4_arlock => '0',
      saxigp4_arprot(2 downto 0) => B"000",
      saxigp4_arqos(3 downto 0) => B"0000",
      saxigp4_arready => NLW_zynq_ultra_ps_e_saxigp4_arready_UNCONNECTED,
      saxigp4_arsize(2 downto 0) => B"100",
      saxigp4_aruser => '0',
      saxigp4_arvalid => '0',
      saxigp4_awaddr(48 downto 32) => B"00000000000000000",
      saxigp4_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      saxigp4_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      saxigp4_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      saxigp4_awid(5 downto 0) => B"000000",
      saxigp4_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      saxigp4_awlock => '0',
      saxigp4_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      saxigp4_awqos(3 downto 0) => B"0000",
      saxigp4_awready => axi_dma_0_M_AXI_S2MM_AWREADY,
      saxigp4_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      saxigp4_awuser => '0',
      saxigp4_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      saxigp4_bid(5 downto 0) => NLW_zynq_ultra_ps_e_saxigp4_bid_UNCONNECTED(5 downto 0),
      saxigp4_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      saxigp4_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      saxigp4_bvalid => axi_dma_0_M_AXI_S2MM_BVALID,
      saxigp4_rdata(127 downto 0) => NLW_zynq_ultra_ps_e_saxigp4_rdata_UNCONNECTED(127 downto 0),
      saxigp4_rid(5 downto 0) => NLW_zynq_ultra_ps_e_saxigp4_rid_UNCONNECTED(5 downto 0),
      saxigp4_rlast => NLW_zynq_ultra_ps_e_saxigp4_rlast_UNCONNECTED,
      saxigp4_rready => '0',
      saxigp4_rresp(1 downto 0) => NLW_zynq_ultra_ps_e_saxigp4_rresp_UNCONNECTED(1 downto 0),
      saxigp4_rvalid => NLW_zynq_ultra_ps_e_saxigp4_rvalid_UNCONNECTED,
      saxigp4_wdata(127 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(127 downto 0),
      saxigp4_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      saxigp4_wready => axi_dma_0_M_AXI_S2MM_WREADY,
      saxigp4_wstrb(15 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(15 downto 0),
      saxigp4_wvalid => axi_dma_0_M_AXI_S2MM_WVALID,
      saxigp6_araddr(48 downto 40) => B"000000000",
      saxigp6_araddr(39 downto 0) => hier_dpu_M_AXI_LPD_ARADDR(39 downto 0),
      saxigp6_arburst(1 downto 0) => hier_dpu_M_AXI_LPD_ARBURST(1 downto 0),
      saxigp6_arcache(3 downto 0) => hier_dpu_M_AXI_LPD_ARCACHE(3 downto 0),
      saxigp6_arid(5 downto 2) => B"0000",
      saxigp6_arid(1 downto 0) => hier_dpu_M_AXI_LPD_ARID(1 downto 0),
      saxigp6_arlen(7 downto 0) => hier_dpu_M_AXI_LPD_ARLEN(7 downto 0),
      saxigp6_arlock => hier_dpu_M_AXI_LPD_ARLOCK,
      saxigp6_arprot(2 downto 0) => hier_dpu_M_AXI_LPD_ARPROT(2 downto 0),
      saxigp6_arqos(3 downto 0) => hier_dpu_M_AXI_LPD_ARQOS(3 downto 0),
      saxigp6_arready => hier_dpu_M_AXI_LPD_ARREADY,
      saxigp6_arsize(2 downto 0) => hier_dpu_M_AXI_LPD_ARSIZE(2 downto 0),
      saxigp6_aruser => hier_dpu_M_AXI_LPD_ARUSER,
      saxigp6_arvalid => hier_dpu_M_AXI_LPD_ARVALID,
      saxigp6_awaddr(48 downto 40) => B"000000000",
      saxigp6_awaddr(39 downto 0) => hier_dpu_M_AXI_LPD_AWADDR(39 downto 0),
      saxigp6_awburst(1 downto 0) => hier_dpu_M_AXI_LPD_AWBURST(1 downto 0),
      saxigp6_awcache(3 downto 0) => hier_dpu_M_AXI_LPD_AWCACHE(3 downto 0),
      saxigp6_awid(5 downto 2) => B"0000",
      saxigp6_awid(1 downto 0) => hier_dpu_M_AXI_LPD_AWID(1 downto 0),
      saxigp6_awlen(7 downto 0) => hier_dpu_M_AXI_LPD_AWLEN(7 downto 0),
      saxigp6_awlock => hier_dpu_M_AXI_LPD_AWLOCK,
      saxigp6_awprot(2 downto 0) => hier_dpu_M_AXI_LPD_AWPROT(2 downto 0),
      saxigp6_awqos(3 downto 0) => hier_dpu_M_AXI_LPD_AWQOS(3 downto 0),
      saxigp6_awready => hier_dpu_M_AXI_LPD_AWREADY,
      saxigp6_awsize(2 downto 0) => hier_dpu_M_AXI_LPD_AWSIZE(2 downto 0),
      saxigp6_awuser => hier_dpu_M_AXI_LPD_AWUSER,
      saxigp6_awvalid => hier_dpu_M_AXI_LPD_AWVALID,
      saxigp6_bid(5 downto 0) => hier_dpu_M_AXI_LPD_BID(5 downto 0),
      saxigp6_bready => hier_dpu_M_AXI_LPD_BREADY,
      saxigp6_bresp(1 downto 0) => hier_dpu_M_AXI_LPD_BRESP(1 downto 0),
      saxigp6_bvalid => hier_dpu_M_AXI_LPD_BVALID,
      saxigp6_rdata(31 downto 0) => hier_dpu_M_AXI_LPD_RDATA(31 downto 0),
      saxigp6_rid(5 downto 0) => hier_dpu_M_AXI_LPD_RID(5 downto 0),
      saxigp6_rlast => hier_dpu_M_AXI_LPD_RLAST,
      saxigp6_rready => hier_dpu_M_AXI_LPD_RREADY,
      saxigp6_rresp(1 downto 0) => hier_dpu_M_AXI_LPD_RRESP(1 downto 0),
      saxigp6_rvalid => hier_dpu_M_AXI_LPD_RVALID,
      saxigp6_wdata(31 downto 0) => hier_dpu_M_AXI_LPD_WDATA(31 downto 0),
      saxigp6_wlast => hier_dpu_M_AXI_LPD_WLAST,
      saxigp6_wready => hier_dpu_M_AXI_LPD_WREADY,
      saxigp6_wstrb(3 downto 0) => hier_dpu_M_AXI_LPD_WSTRB(3 downto 0),
      saxigp6_wvalid => hier_dpu_M_AXI_LPD_WVALID,
      saxihp0_fpd_aclk => hier_dpu_GHP_CLK_O,
      saxihp1_fpd_aclk => hier_dpu_GHP_CLK_O,
      saxihp2_fpd_aclk => zynq_ultra_ps_e_pl_clk0
    );
end STRUCTURE;

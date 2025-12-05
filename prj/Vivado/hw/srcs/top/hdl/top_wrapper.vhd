--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Fri Dec  5 17:18:29 2025
--Host        : DESKTOP-S4UD1KI running 64-bit major release  (build 9200)
--Command     : generate_target top_wrapper.bd
--Design      : top_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_wrapper is
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
end top_wrapper;

architecture STRUCTURE of top_wrapper is
  component top is
  port (
    M00_AXI_0_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_0_awvalid : out STD_LOGIC;
    M00_AXI_0_awready : in STD_LOGIC;
    M00_AXI_0_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_0_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_0_wvalid : out STD_LOGIC;
    M00_AXI_0_wready : in STD_LOGIC;
    M00_AXI_0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_0_bvalid : in STD_LOGIC;
    M00_AXI_0_bready : out STD_LOGIC;
    M00_AXI_0_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_0_arvalid : out STD_LOGIC;
    M00_AXI_0_arready : in STD_LOGIC;
    M00_AXI_0_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_0_rvalid : in STD_LOGIC;
    M00_AXI_0_rready : out STD_LOGIC;
    clk_sys_o : out STD_LOGIC;
    peripheral_reset_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_S2MM_1_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXIS_S2MM_1_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXIS_S2MM_1_tlast : in STD_LOGIC;
    S_AXIS_S2MM_1_tready : out STD_LOGIC;
    S_AXIS_S2MM_1_tvalid : in STD_LOGIC
  );
  end component top;
begin
top_i: component top
     port map (
      M00_AXI_0_araddr(39 downto 0) => M00_AXI_0_araddr(39 downto 0),
      M00_AXI_0_arprot(2 downto 0) => M00_AXI_0_arprot(2 downto 0),
      M00_AXI_0_arready => M00_AXI_0_arready,
      M00_AXI_0_arvalid => M00_AXI_0_arvalid,
      M00_AXI_0_awaddr(39 downto 0) => M00_AXI_0_awaddr(39 downto 0),
      M00_AXI_0_awprot(2 downto 0) => M00_AXI_0_awprot(2 downto 0),
      M00_AXI_0_awready => M00_AXI_0_awready,
      M00_AXI_0_awvalid => M00_AXI_0_awvalid,
      M00_AXI_0_bready => M00_AXI_0_bready,
      M00_AXI_0_bresp(1 downto 0) => M00_AXI_0_bresp(1 downto 0),
      M00_AXI_0_bvalid => M00_AXI_0_bvalid,
      M00_AXI_0_rdata(31 downto 0) => M00_AXI_0_rdata(31 downto 0),
      M00_AXI_0_rready => M00_AXI_0_rready,
      M00_AXI_0_rresp(1 downto 0) => M00_AXI_0_rresp(1 downto 0),
      M00_AXI_0_rvalid => M00_AXI_0_rvalid,
      M00_AXI_0_wdata(31 downto 0) => M00_AXI_0_wdata(31 downto 0),
      M00_AXI_0_wready => M00_AXI_0_wready,
      M00_AXI_0_wstrb(3 downto 0) => M00_AXI_0_wstrb(3 downto 0),
      M00_AXI_0_wvalid => M00_AXI_0_wvalid,
      S_AXIS_S2MM_1_tdata(127 downto 0) => S_AXIS_S2MM_1_tdata(127 downto 0),
      S_AXIS_S2MM_1_tkeep(15 downto 0) => S_AXIS_S2MM_1_tkeep(15 downto 0),
      S_AXIS_S2MM_1_tlast => S_AXIS_S2MM_1_tlast,
      S_AXIS_S2MM_1_tready => S_AXIS_S2MM_1_tready,
      S_AXIS_S2MM_1_tvalid => S_AXIS_S2MM_1_tvalid,
      clk_sys_o => clk_sys_o,
      peripheral_reset_0(0) => peripheral_reset_0(0)
    );
end STRUCTURE;

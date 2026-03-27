//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Fri Mar  6 02:13:04 2026
//Host        : ubuntu running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target kv260_ispMipiRx_vcu_DP_wrapper.bd
//Design      : kv260_ispMipiRx_vcu_DP_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module kv260_ispMipiRx_vcu_DP_wrapper
   (ap1302_rst_b,
    ap1302_standby,
    fan_en_b,
    iic_scl_io,
    iic_sda_io,
    mipi_phy_if_clk_n,
    mipi_phy_if_clk_p,
    mipi_phy_if_data_n,
    mipi_phy_if_data_p,
    raspi_enable);
  output [0:0]ap1302_rst_b;
  output [0:0]ap1302_standby;
  output [0:0]fan_en_b;
  inout iic_scl_io;
  inout iic_sda_io;
  input mipi_phy_if_clk_n;
  input mipi_phy_if_clk_p;
  input [1:0]mipi_phy_if_data_n;
  input [1:0]mipi_phy_if_data_p;
  output [0:0]raspi_enable;

  wire [0:0]ap1302_rst_b;
  wire [0:0]ap1302_standby;
  wire [0:0]fan_en_b;
  wire iic_scl_i;
  wire iic_scl_io;
  wire iic_scl_o;
  wire iic_scl_t;
  wire iic_sda_i;
  wire iic_sda_io;
  wire iic_sda_o;
  wire iic_sda_t;
  wire mipi_phy_if_clk_n;
  wire mipi_phy_if_clk_p;
  wire [1:0]mipi_phy_if_data_n;
  wire [1:0]mipi_phy_if_data_p;
  wire [0:0]raspi_enable;

  IOBUF iic_scl_iobuf
       (.I(iic_scl_o),
        .IO(iic_scl_io),
        .O(iic_scl_i),
        .T(iic_scl_t));
  IOBUF iic_sda_iobuf
       (.I(iic_sda_o),
        .IO(iic_sda_io),
        .O(iic_sda_i),
        .T(iic_sda_t));
  kv260_ispMipiRx_vcu_DP kv260_ispMipiRx_vcu_DP_i
       (.ap1302_rst_b(ap1302_rst_b),
        .ap1302_standby(ap1302_standby),
        .fan_en_b(fan_en_b),
        .iic_scl_i(iic_scl_i),
        .iic_scl_o(iic_scl_o),
        .iic_scl_t(iic_scl_t),
        .iic_sda_i(iic_sda_i),
        .iic_sda_o(iic_sda_o),
        .iic_sda_t(iic_sda_t),
        .mipi_phy_if_clk_n(mipi_phy_if_clk_n),
        .mipi_phy_if_clk_p(mipi_phy_if_clk_p),
        .mipi_phy_if_data_n(mipi_phy_if_data_n),
        .mipi_phy_if_data_p(mipi_phy_if_data_p),
        .raspi_enable(raspi_enable));
endmodule

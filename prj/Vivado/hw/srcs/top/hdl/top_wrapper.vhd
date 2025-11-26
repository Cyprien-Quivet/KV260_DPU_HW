--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
--Date        : Wed Nov 26 11:00:05 2025
--Host        : Petalinux running 64-bit Ubuntu 20.04.6 LTS
--Command     : generate_target top_wrapper.bd
--Design      : top_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_wrapper is
end top_wrapper;

architecture STRUCTURE of top_wrapper is
  component top is
  end component top;
begin
top_i: component top
 ;
end STRUCTURE;

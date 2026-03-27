#--------------------Physical Constraints-----------------

set_property BOARD_PIN {som240_1_c12} [get_ports mipi_phy_if_clk_p]
set_property BOARD_PIN {som240_1_c13} [get_ports mipi_phy_if_clk_n]
set_property BOARD_PIN {som240_1_b10} [get_ports mipi_phy_if_data_p[0]]

set_property BOARD_PIN {som240_1_a9} [get_ports mipi_phy_if_data_p[1]]

set_property BOARD_PIN {som240_1_b11} [get_ports mipi_phy_if_data_n[0]]

set_property BOARD_PIN {som240_1_a10} [get_ports mipi_phy_if_data_n[1]]


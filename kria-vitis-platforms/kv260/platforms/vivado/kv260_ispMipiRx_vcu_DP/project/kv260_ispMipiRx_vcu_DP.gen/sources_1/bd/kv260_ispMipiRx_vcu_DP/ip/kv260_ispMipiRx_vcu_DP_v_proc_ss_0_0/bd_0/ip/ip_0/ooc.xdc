# aclk {FREQ_HZ 199998000 CLK_DOMAIN kv260_ispMipiRx_vcu_DP_clk_wiz_0_0_clk_200M PHASE 0.0} aclk1 {FREQ_HZ 199998000 CLK_DOMAIN kv260_ispMipiRx_vcu_DP_clk_wiz_0_0_clk_200M PHASE 0.0}
# Clock Domain: kv260_ispMipiRx_vcu_DP_clk_wiz_0_0_clk_200M
create_clock -name aclk -period 5.000 [get_ports aclk]
# Generated clocks
create_generated_clock -name aclk1 -source [get_ports aclk] -divide_by 1 [get_ports aclk1]

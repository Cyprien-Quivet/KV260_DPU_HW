set_property SRC_FILE_INFO {cfile:s:/prj/Vivado/hw/srcs/top/ip/top_dpu_clk_wiz_0_1/top_dpu_clk_wiz_0.xdc rfile:../../../../srcs/top/ip/top_dpu_clk_wiz_0_1/top_dpu_clk_wiz_0.xdc id:1 order:EARLY scoped_inst:top_i/hier_dpu/hier_dpu_clk/dpu_clk_wiz/inst} [current_design]
set_property SRC_FILE_INFO {cfile:s:/prj/Vivado/hw/srcs/top/ip/top_rst_gen_clk_0_1/top_rst_gen_clk_0.xdc rfile:../../../../srcs/top/ip/top_rst_gen_clk_0_1/top_rst_gen_clk_0.xdc id:2 order:EARLY scoped_inst:top_i/hier_dpu/hier_dpu_clk/rst_gen_clk/U0} [current_design]
set_property SRC_FILE_INFO {cfile:s:/prj/Vivado/hw/srcs/top/ip/top_rst_gen_clk_dsp_0_1/top_rst_gen_clk_dsp_0.xdc rfile:../../../../srcs/top/ip/top_rst_gen_clk_dsp_0_1/top_rst_gen_clk_dsp_0.xdc id:3 order:EARLY scoped_inst:top_i/hier_dpu/hier_dpu_clk/rst_gen_clk_dsp/U0} [current_design]
set_property SRC_FILE_INFO {cfile:s:/prj/Vivado/hw/srcs/top/ip/top_rst_gen_reg_0_1/top_rst_gen_reg_0.xdc rfile:../../../../srcs/top/ip/top_rst_gen_reg_0_1/top_rst_gen_reg_0.xdc id:4 order:EARLY scoped_inst:top_i/rst_gen_reg/U0} [current_design]
current_instance top_i/hier_dpu/hier_dpu_clk/dpu_clk_wiz/inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
current_instance
current_instance top_i/hier_dpu/hier_dpu_clk/rst_gen_clk/U0
set_property src_info {type:SCOPED_XDC file:2 line:50 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type CDC -id {CDC-11} -user "proc_sys_reset" -desc "Timing uncritical paths" -tags "1171415" -scope -internal -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to}]]
current_instance
current_instance top_i/hier_dpu/hier_dpu_clk/rst_gen_clk_dsp/U0
set_property src_info {type:SCOPED_XDC file:3 line:50 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type CDC -id {CDC-11} -user "proc_sys_reset" -desc "Timing uncritical paths" -tags "1171415" -scope -internal -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to}]]
current_instance
current_instance top_i/rst_gen_reg/U0
set_property src_info {type:SCOPED_XDC file:4 line:50 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type CDC -id {CDC-11} -user "proc_sys_reset" -desc "Timing uncritical paths" -tags "1171415" -scope -internal -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to}]]

onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+kv260_ispMipiRx_vcu_DP  -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_13 -L zynq_ultra_ps_e_vip_v1_0_13 -L xil_defaultlib -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_27 -L fifo_generator_v13_2_7 -L axi_data_fifo_v2_1_26 -L axi_crossbar_v2_1_28 -L lib_pkg_v1_0_2 -L lib_cdc_v1_0_2 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_4 -L axi_iic_v2_1_3 -L proc_sys_reset_v5_0_13 -L xlslice_v1_0_2 -L xlconcat_v2_1_4 -L xlconstant_v1_1_7 -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_18 -L floating_point_v7_1_15 -L mipi_csi2_rx_ctrl_v1_0_8 -L high_speed_selectio_wiz_v3_6_4 -L mipi_dphy_v4_3_5 -L axis_infrastructure_v1_1_0 -L axis_register_slice_v1_1_27 -L axis_dwidth_converter_v1_1_26 -L axis_switch_v1_1_27 -L vfb_v1_0_21 -L floating_point_v7_0_20 -L xbip_dsp48_mult_v3_0_6 -L div_gen_v5_1_19 -L v_frmbuf_wr_v2_4_0 -L smartconnect_v1_0 -L v_vscaler_v1_1_6 -L v_hscaler_v1_1_6 -L axis_subset_converter_v1_1_27 -L axi_gpio_v2_0_29 -L axis_data_fifo_v2_0_9 -L axi_protocol_converter_v2_1_27 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.kv260_ispMipiRx_vcu_DP xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {kv260_ispMipiRx_vcu_DP.udo}

run

endsim

quit -force

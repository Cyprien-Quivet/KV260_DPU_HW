-makelib xcelium_lib/xilinx_vip -sv \
  "/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/ip/top_dpu_clk_wiz_0/top_dpu_clk_wiz_0_clk_wiz.v" \
  "../../../bd/top/ip/top_dpu_clk_wiz_0/top_dpu_clk_wiz_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../../srcs/top/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../../srcs/top/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/ip/top_rst_gen_clk_0/sim/top_rst_gen_clk_0.vhd" \
  "../../../bd/top/ip/top_rst_gen_clk_dsp_0/sim/top_rst_gen_clk_dsp_0.vhd" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_4 \
  "../../../../../srcs/top/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/ip/top_dpu_concat_irq_inner_0/sim/top_dpu_concat_irq_inner_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/top/ipshared/53f7/hdl/DPUCZDX8G_v4_1_0_vl_dpu.sv" \
  "../../../bd/top/ipshared/53f7/hdl/DPUCZDX8G_v4_1_0_vl_sfm.sv" \
  "../../../bd/top/ipshared/53f7/hdl/DPUCZDX8G_v4_1_0_vl_top.sv" \
  "../../../bd/top/ip/top_DPUCZDX8G_0/sim/top_DPUCZDX8G_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/ip/top_dpu_concat_irq_0/sim/top_dpu_concat_irq_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/ip/top_rst_gen_ghp_0/sim/top_rst_gen_ghp_0.vhd" \
  "../../../bd/top/ip/top_rst_gen_reg_0/sim/top_rst_gen_reg_0.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../../srcs/top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_13 -sv \
  "../../../../../srcs/top/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/zynq_ultra_ps_e_vip_v1_0_13 -sv \
  "../../../../../srcs/top/ipshared/abef/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/ip/top_zynq_ultra_ps_e_0/sim/top_zynq_ultra_ps_e_0_vip_wrapper.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../../srcs/top/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_27 \
  "../../../../../srcs/top/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../../srcs/top/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../../srcs/top/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../../srcs/top/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_26 \
  "../../../../../srcs/top/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_28 \
  "../../../../../srcs/top/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/ip/top_xbar_1/sim/top_xbar_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/ip/top_axi_lite_led_simu_wr_0_0/Projet_led.srcs/sources_1/bd/axi_lite_led_simu/ipshared/7a7e/hdl/axi_lite_led_v1_0_S00_AXI.vhd" \
  "../../../bd/top/ip/top_axi_lite_led_simu_wr_0_0/Projet_led.srcs/sources_1/bd/axi_lite_led_simu/ipshared/7a7e/hdl/axi_lite_led_v1_0.vhd" \
  "../../../bd/top/ip/top_axi_lite_led_simu_wr_0_0/Projet_led.srcs/sources_1/bd/axi_lite_led_simu/ip/axi_lite_led_simu_axi_lite_led_0_0/sim/axi_lite_led_simu_axi_lite_led_0_0.vhd" \
  "../../../bd/top/ipshared/5345/Projet_led.gen/sources_1/bd/axi_lite_led_simu/sim/axi_lite_led_simu.vhd" \
  "../../../bd/top/ipshared/5345/Projet_led.srcs/sources_1/bloc_led.vhd" \
  "../../../bd/top/ipshared/5345/Projet_led.gen/sources_1/bd/axi_lite_led_simu/hdl/axi_lite_led_simu_wrapper.vhd" \
  "../../../bd/top/ip/top_axi_lite_led_simu_wr_0_0/sim/top_axi_lite_led_simu_wr_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_26 \
  "../../../../../srcs/top/ipshared/b8be/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/ip/top_auto_cc_0/sim/top_auto_cc_0.v" \
  "../../../bd/top/ip/top_auto_cc_1/sim/top_auto_cc_1.v" \
  "../../../bd/top/ip/top_auto_cc_2/sim/top_auto_cc_2.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_27 \
  "../../../../../srcs/top/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/ip/top_auto_pc_0/sim/top_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/top/sim/top.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib


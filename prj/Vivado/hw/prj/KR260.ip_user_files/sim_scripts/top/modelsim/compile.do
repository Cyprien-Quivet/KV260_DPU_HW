vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/xlconcat_v2_1_4
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_13
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_13
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_27
vlib modelsim_lib/msim/fifo_generator_v13_2_7
vlib modelsim_lib/msim/axi_data_fifo_v2_1_26
vlib modelsim_lib/msim/axi_crossbar_v2_1_28
vlib modelsim_lib/msim/axi_clock_converter_v2_1_26
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_27

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap xlconcat_v2_1_4 modelsim_lib/msim/xlconcat_v2_1_4
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 modelsim_lib/msim/axi_vip_v1_1_13
vmap zynq_ultra_ps_e_vip_v1_0_13 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_13
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_27 modelsim_lib/msim/axi_register_slice_v2_1_27
vmap fifo_generator_v13_2_7 modelsim_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 modelsim_lib/msim/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 modelsim_lib/msim/axi_crossbar_v2_1_28
vmap axi_clock_converter_v2_1_26 modelsim_lib/msim/axi_clock_converter_v2_1_26
vmap axi_protocol_converter_v2_1_27 modelsim_lib/msim/axi_protocol_converter_v2_1_27

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L zynq_ultra_ps_e_vip_v1_0_13 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L zynq_ultra_ps_e_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/top/ip/top_dpu_clk_wiz_0/top_dpu_clk_wiz_0_clk_wiz.v" \
"../../../bd/top/ip/top_dpu_clk_wiz_0/top_dpu_clk_wiz_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93  \
"../../../../../srcs/top/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93  \
"../../../../../srcs/top/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/top/ip/top_rst_gen_clk_0/sim/top_rst_gen_clk_0.vhd" \
"../../../bd/top/ip/top_rst_gen_clk_dsp_0/sim/top_rst_gen_clk_dsp_0.vhd" \

vlog -work xlconcat_v2_1_4 -64 -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/top/ip/top_dpu_concat_irq_inner_0/sim/top_dpu_concat_irq_inner_0.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L zynq_ultra_ps_e_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/top/ipshared/53f7/hdl/DPUCZDX8G_v4_1_0_vl_dpu.sv" \
"../../../bd/top/ipshared/53f7/hdl/DPUCZDX8G_v4_1_0_vl_sfm.sv" \
"../../../bd/top/ipshared/53f7/hdl/DPUCZDX8G_v4_1_0_vl_top.sv" \
"../../../bd/top/ip/top_DPUCZDX8G_0/sim/top_DPUCZDX8G_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/top/ip/top_dpu_concat_irq_0/sim/top_dpu_concat_irq_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/top/ip/top_rst_gen_ghp_0/sim/top_rst_gen_ghp_0.vhd" \
"../../../bd/top/ip/top_rst_gen_reg_0/sim/top_rst_gen_reg_0.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L zynq_ultra_ps_e_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_13 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L zynq_ultra_ps_e_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/abef/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/top/ip/top_zynq_ultra_ps_e_0/sim/top_zynq_ultra_ps_e_0_vip_wrapper.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27 -64 -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -64 -93  \
"../../../../../srcs/top/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26 -64 -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28 -64 -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/top/ip/top_xbar_1/sim/top_xbar_1.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/top/ip/top_axi_lite_led_simu_wr_0_0/Projet_led.srcs/sources_1/bd/axi_lite_led_simu/ipshared/7a7e/hdl/axi_lite_led_v1_0_S00_AXI.vhd" \
"../../../bd/top/ip/top_axi_lite_led_simu_wr_0_0/Projet_led.srcs/sources_1/bd/axi_lite_led_simu/ipshared/7a7e/hdl/axi_lite_led_v1_0.vhd" \
"../../../bd/top/ip/top_axi_lite_led_simu_wr_0_0/Projet_led.srcs/sources_1/bd/axi_lite_led_simu/ip/axi_lite_led_simu_axi_lite_led_0_0/sim/axi_lite_led_simu_axi_lite_led_0_0.vhd" \
"../../../bd/top/ipshared/5345/Projet_led.gen/sources_1/bd/axi_lite_led_simu/sim/axi_lite_led_simu.vhd" \
"../../../bd/top/ipshared/5345/Projet_led.srcs/sources_1/bloc_led.vhd" \
"../../../bd/top/ipshared/5345/Projet_led.gen/sources_1/bd/axi_lite_led_simu/hdl/axi_lite_led_simu_wrapper.vhd" \
"../../../bd/top/ip/top_axi_lite_led_simu_wr_0_0/sim/top_axi_lite_led_simu_wr_0_0.vhd" \

vlog -work axi_clock_converter_v2_1_26 -64 -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/b8be/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/top/ip/top_auto_cc_0/sim/top_auto_cc_0.v" \
"../../../bd/top/ip/top_auto_cc_1/sim/top_auto_cc_1.v" \
"../../../bd/top/ip/top_auto_cc_2/sim/top_auto_cc_2.v" \

vlog -work axi_protocol_converter_v2_1_27 -64 -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+/tools/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/top/ip/top_auto_pc_0/sim/top_auto_pc_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/top/sim/top.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


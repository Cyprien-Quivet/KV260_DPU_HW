vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/xlconcat_v2_1_4
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_13
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_13
vlib questa_lib/msim/fifo_generator_v13_2_7
vlib questa_lib/msim/axi_clock_converter_v2_1_26

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap xlconcat_v2_1_4 questa_lib/msim/xlconcat_v2_1_4
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 questa_lib/msim/axi_vip_v1_1_13
vmap zynq_ultra_ps_e_vip_v1_0_13 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_13
vmap fifo_generator_v13_2_7 questa_lib/msim/fifo_generator_v13_2_7
vmap axi_clock_converter_v2_1_26 questa_lib/msim/axi_clock_converter_v2_1_26

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L zynq_ultra_ps_e_vip_v1_0_13 -L xilinx_vip "+incdir+D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L zynq_ultra_ps_e_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xinlinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xinlinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/Xinlinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/top/ip/top_dpu_clk_wiz_0/top_dpu_clk_wiz_0_clk_wiz.v" \
"../../../bd/top/ip/top_dpu_clk_wiz_0/top_dpu_clk_wiz_0.v" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../../srcs/top/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../../srcs/top/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/top/ip/top_rst_gen_clk_0/sim/top_rst_gen_clk_0.vhd" \
"../../../bd/top/ip/top_rst_gen_clk_dsp_0/sim/top_rst_gen_clk_dsp_0.vhd" \

vlog -work xlconcat_v2_1_4  -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/top/ip/top_dpu_concat_irq_inner_0/sim/top_dpu_concat_irq_inner_0.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L zynq_ultra_ps_e_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/top/ipshared/53f7/hdl/DPUCZDX8G_v4_1_0_vl_dpu.sv" \
"../../../bd/top/ipshared/53f7/hdl/DPUCZDX8G_v4_1_0_vl_sfm.sv" \
"../../../bd/top/ipshared/53f7/hdl/DPUCZDX8G_v4_1_0_vl_top.sv" \
"../../../bd/top/ip/top_DPUCZDX8G_0/sim/top_DPUCZDX8G_0.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L zynq_ultra_ps_e_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_13  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L zynq_ultra_ps_e_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/abef/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/top/ip/top_zynq_ultra_ps_e_0/sim/top_zynq_ultra_ps_e_0_vip_wrapper.v" \
"../../../bd/top/ip/top_dpu_concat_irq_0/sim/top_dpu_concat_irq_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/top/ip/top_rst_gen_reg_0/sim/top_rst_gen_reg_0.vhd" \
"../../../bd/top/ip/top_rst_gen_ghp_0/sim/top_rst_gen_ghp_0.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7  -93  \
"../../../../../srcs/top/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_clock_converter_v2_1_26  -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/b8be/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/7698" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/abef/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+D:/Xinlinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/top/ip/top_auto_cc_0/sim/top_auto_cc_0.v" \
"../../../bd/top/ip/top_auto_cc_1/sim/top_auto_cc_1.v" \
"../../../bd/top/ip/top_auto_cc_2/sim/top_auto_cc_2.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/top/sim/top.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


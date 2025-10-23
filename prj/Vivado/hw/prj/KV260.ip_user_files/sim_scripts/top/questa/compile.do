vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_3
vlib questa_lib/msim/proc_sys_reset_v5_0_16
vlib questa_lib/msim/xlconcat_v2_1_6
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_19
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_19

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_3 questa_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 questa_lib/msim/proc_sys_reset_v5_0_16
vmap xlconcat_v2_1_6 questa_lib/msim/xlconcat_v2_1_6
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 questa_lib/msim/axi_vip_v1_1_19
vmap zynq_ultra_ps_e_vip_v1_0_19 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_19

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/top/ip/top_dpu_clk_wiz_0_1/top_dpu_clk_wiz_0_clk_wiz.v" \
"../../../bd/top/ip/top_dpu_clk_wiz_0_1/top_dpu_clk_wiz_0.v" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../../srcs/top/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16  -93  \
"../../../../../srcs/top/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/top/ip/top_rst_gen_clk_0_1/sim/top_rst_gen_clk_0.vhd" \
"../../../bd/top/ip/top_rst_gen_clk_dsp_0_1/sim/top_rst_gen_clk_dsp_0.vhd" \

vlog -work xlconcat_v2_1_6  -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/top/ip/top_dpu_concat_irq_inner_0_1/sim/top_dpu_concat_irq_inner_0.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/top/ipshared/53f7/hdl/DPUCZDX8G_v4_1_0_vl_dpu.sv" \
"../../../bd/top/ipshared/53f7/hdl/DPUCZDX8G_v4_1_0_vl_sfm.sv" \
"../../../bd/top/ipshared/53f7/hdl/DPUCZDX8G_v4_1_0_vl_top.sv" \
"../../../bd/top/ip/top_DPUCZDX8G_0_1/sim/top_DPUCZDX8G_0.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_19  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../../srcs/top/ipshared/6f8f/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/top/ip/top_zynq_ultra_ps_e_0_1/sim/top_zynq_ultra_ps_e_0_vip_wrapper.v" \
"../../../bd/top/ip/top_dpu_concat_irq_0_1/sim/top_dpu_concat_irq_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/top/ip/top_rst_gen_reg_0_1/sim/top_rst_gen_reg_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/top/sim/top.v" \

vlog -work xil_defaultlib \
"glbl.v"


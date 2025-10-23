transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/proc_sys_reset_v5_0_16
vlib activehdl/xlconcat_v2_1_6
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_19
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_19

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 activehdl/proc_sys_reset_v5_0_16
vmap xlconcat_v2_1_6 activehdl/xlconcat_v2_1_6
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 activehdl/axi_vip_v1_1_19
vmap zynq_ultra_ps_e_vip_v1_0_19 activehdl/zynq_ultra_ps_e_vip_v1_0_19

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconcat_v2_1_6 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconcat_v2_1_6 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconcat_v2_1_6 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
"../../../bd/top/ip/top_dpu_clk_wiz_0_1/top_dpu_clk_wiz_0_clk_wiz.v" \
"../../../bd/top/ip/top_dpu_clk_wiz_0_1/top_dpu_clk_wiz_0.v" \

vcom -work lib_cdc_v1_0_3 -93  \
"../../../../../srcs/top/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  \
"../../../../../srcs/top/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/top/ip/top_rst_gen_clk_0_1/sim/top_rst_gen_clk_0.vhd" \
"../../../bd/top/ip/top_rst_gen_clk_dsp_0_1/sim/top_rst_gen_clk_dsp_0.vhd" \

vlog -work xlconcat_v2_1_6  -v2k5 "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconcat_v2_1_6 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
"../../../../../srcs/top/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconcat_v2_1_6 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
"../../../bd/top/ip/top_dpu_concat_irq_inner_0_1/sim/top_dpu_concat_irq_inner_0.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconcat_v2_1_6 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
"../../../bd/top/ipshared/53f7/hdl/DPUCZDX8G_v4_1_0_vl_dpu.sv" \
"../../../bd/top/ipshared/53f7/hdl/DPUCZDX8G_v4_1_0_vl_sfm.sv" \
"../../../bd/top/ipshared/53f7/hdl/DPUCZDX8G_v4_1_0_vl_top.sv" \
"../../../bd/top/ip/top_DPUCZDX8G_0_1/sim/top_DPUCZDX8G_0.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconcat_v2_1_6 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
"../../../../../srcs/top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -sv2k12 "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconcat_v2_1_6 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
"../../../../../srcs/top/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_19  -sv2k12 "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconcat_v2_1_6 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
"../../../../../srcs/top/ipshared/6f8f/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconcat_v2_1_6 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
"../../../bd/top/ip/top_zynq_ultra_ps_e_0_1/sim/top_zynq_ultra_ps_e_0_vip_wrapper.v" \
"../../../bd/top/ip/top_dpu_concat_irq_0_1/sim/top_dpu_concat_irq_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/top/ip/top_rst_gen_reg_0_1/sim/top_rst_gen_reg_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../srcs/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/53f7/inc" "+incdir+../../../../../srcs/top/ipshared/ec67/hdl" "+incdir+../../../../../srcs/top/ipshared/6f8f/hdl" "+incdir+../../../../../srcs/top/ipshared/53f7/inc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconcat_v2_1_6 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
"../../../bd/top/sim/top.v" \

vlog -work xil_defaultlib \
"glbl.v"


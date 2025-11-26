vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93  \
"../../../bd/axi_lite_led_simu/ipshared/7a7e/hdl/axi_lite_led_v1_0_S00_AXI.vhd" \
"../../../bd/axi_lite_led_simu/ipshared/7a7e/hdl/axi_lite_led_v1_0.vhd" \
"../../../bd/axi_lite_led_simu/ip/axi_lite_led_simu_axi_lite_led_0_0/sim/axi_lite_led_simu_axi_lite_led_0_0.vhd" \
"../../../bd/axi_lite_led_simu/sim/axi_lite_led_simu.vhd" \



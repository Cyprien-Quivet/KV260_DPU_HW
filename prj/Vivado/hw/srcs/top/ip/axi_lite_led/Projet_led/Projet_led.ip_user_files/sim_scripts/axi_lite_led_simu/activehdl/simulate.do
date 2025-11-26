onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+axi_lite_led_simu  -L xil_defaultlib -L secureip -O5 xil_defaultlib.axi_lite_led_simu

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {axi_lite_led_simu.udo}

run

endsim

quit -force

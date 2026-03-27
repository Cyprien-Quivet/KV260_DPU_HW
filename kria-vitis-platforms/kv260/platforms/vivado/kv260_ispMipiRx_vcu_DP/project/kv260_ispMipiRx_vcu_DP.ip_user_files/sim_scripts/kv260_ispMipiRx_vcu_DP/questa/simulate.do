onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib kv260_ispMipiRx_vcu_DP_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {kv260_ispMipiRx_vcu_DP.udo}

run 1000ns

quit -force

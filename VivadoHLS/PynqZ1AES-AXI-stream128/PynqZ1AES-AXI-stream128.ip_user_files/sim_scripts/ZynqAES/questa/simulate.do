onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ZynqAES_opt

do {wave.do}

view wave
view structure
view signals

do {ZynqAES.udo}

run -all

quit -force

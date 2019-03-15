onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ZAES_opt

do {wave.do}

view wave
view structure
view signals

do {ZAES.udo}

run -all

quit -force

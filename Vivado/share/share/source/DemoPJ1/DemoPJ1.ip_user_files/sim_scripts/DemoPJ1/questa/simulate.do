onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib DemoPJ1_opt

do {wave.do}

view wave
view structure
view signals

do {DemoPJ1.udo}

run -all

quit -force

onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib dmm_design_opt

do {wave.do}

view wave
view structure
view signals

do {dmm_design.udo}

run -all

quit -force

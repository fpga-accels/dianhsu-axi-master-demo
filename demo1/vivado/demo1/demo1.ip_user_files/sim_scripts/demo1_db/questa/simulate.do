onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib demo1_db_opt

do {wave.do}

view wave
view structure
view signals

do {demo1_db.udo}

run -all

quit -force

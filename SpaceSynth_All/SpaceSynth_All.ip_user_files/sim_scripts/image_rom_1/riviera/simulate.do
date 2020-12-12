onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+image_rom_1 -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.image_rom_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {image_rom_1.udo}

run -all

endsim

quit -force

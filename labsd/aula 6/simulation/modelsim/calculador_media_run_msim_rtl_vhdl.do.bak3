transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Dell/Desktop/UFMG/labsd/aula 6/calculador_media.vhd}

vcom -93 -work work {C:/Users/Dell/Desktop/UFMG/labsd/aula 6/calculador_media_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  calculador_media_tb

add wave *
view structure
view signals
run -all

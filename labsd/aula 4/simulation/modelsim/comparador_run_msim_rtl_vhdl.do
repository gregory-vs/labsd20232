transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Dell/Desktop/UFMG/labsd/aula 4/comparador.vhd}

vcom -93 -work work {C:/Users/Dell/Desktop/UFMG/labsd/aula 4/comparador_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  comparador_tb

add wave *
view structure
view signals
run -all

transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {F:/Uppsala/VHDL/VHDL/VHDL/Lab7/Q1/mem.vhd}

vcom -93 -work work {F:/Uppsala/VHDL/VHDL/VHDL/Lab7/Q1/simulation/modelsim/mem.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  mem_vhd_tst

add wave *
view structure
view signals
run 1000 ns

transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {F:/Uppsala/VHDL/VHDL/VHDL/Lab8/Q1/fsm.vhd}

vcom -93 -work work {F:/Uppsala/VHDL/VHDL/VHDL/Lab8/Q1/simulation/modelsim/fsm.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  fsm_vhd_tst

add wave *
view structure
view signals
run 2000 ns

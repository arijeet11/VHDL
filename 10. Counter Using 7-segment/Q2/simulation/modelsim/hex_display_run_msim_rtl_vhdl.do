transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {F:/Uppsala/VHDL/VHDL/VHDL/Lab10_HW/Q1/count_display.vhd}
vcom -93 -work work {F:/Uppsala/VHDL/VHDL/VHDL/Lab10_SW/Q2/hex_display.vhd}

vcom -93 -work work {F:/Uppsala/VHDL/VHDL/VHDL/Lab10_SW/Q2/simulation/modelsim/hex_display.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  hex_display_vhd_tst

add wave *
view structure
view signals
run 5000 ns

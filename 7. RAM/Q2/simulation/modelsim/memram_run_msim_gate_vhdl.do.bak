transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {memram_fast.vho}

vcom -93 -work work {F:/Uppsala/VHDL/VHDL/VHDL/Lab7/Q2/simulation/modelsim/memram.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /i1=memram_vhd_fast.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  memram_vhd_tst

add wave *
view structure
view signals
run 1000 ns

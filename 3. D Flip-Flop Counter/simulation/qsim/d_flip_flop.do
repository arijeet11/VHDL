onerror {quit -f}
vlib work
vlog -work work d_flip_flop.vo
vlog -work work d_flip_flop.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.d_flip_flop_vlg_vec_tst
vcd file -direction d_flip_flop.msim.vcd
vcd add -internal d_flip_flop_vlg_vec_tst/*
vcd add -internal d_flip_flop_vlg_vec_tst/i1/*
add wave /*
run -all

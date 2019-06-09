onerror {quit -f}
vlib work
vlog -work work gates.vo
vlog -work work gates.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.gates_vlg_vec_tst
vcd file -direction gates.msim.vcd
vcd add -internal gates_vlg_vec_tst/*
vcd add -internal gates_vlg_vec_tst/i1/*
add wave /*
run -all

vlog -work work X:/VHDL/Lab1/Q1/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.gates_vlg_vec_tst
onerror {resume}
add wave {gates_vlg_vec_tst/i1/a}
add wave {gates_vlg_vec_tst/i1/b}
add wave {gates_vlg_vec_tst/i1/c}
run -all

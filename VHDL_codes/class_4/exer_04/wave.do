onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /parallel_sr_tb/clock
add wave -noupdate /parallel_sr_tb/reset
add wave -noupdate /parallel_sr_tb/estimulo_vector
add wave -noupdate /parallel_sr_tb/estimulo
add wave -noupdate -expand /parallel_sr_tb/outData_s
add wave -noupdate /parallel_sr_tb/en_s
add wave -noupdate /parallel_sr_tb/force_0_s
add wave -noupdate /parallel_sr_tb/force_1_s
add wave -noupdate /parallel_sr_tb/direction_s
add wave -noupdate /parallel_sr_tb/parallel_load_s
add wave -noupdate /parallel_sr_tb/shift_register_in_s
add wave -noupdate -expand /parallel_sr_tb/shift_register_out_s
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {2999050 ps} {3000050 ps}

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /exer_02_tb/clock
add wave -noupdate /exer_02_tb/reset
add wave -noupdate /exer_02_tb/estimulo_vector
add wave -noupdate /exer_02_tb/estimulo
add wave -noupdate /exer_02_tb/en_s
add wave -noupdate /exer_02_tb/d_s
add wave -noupdate /exer_02_tb/q_a_s
add wave -noupdate /exer_02_tb/q_b_s
add wave -noupdate /exer_02_tb/q_c_s
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
WaveRestoreZoom {0 ps} {1050 ns}

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /signal_generator_tb/a
add wave -noupdate -expand /signal_generator_tb/b
add wave -noupdate -expand /signal_generator_tb/c
add wave -noupdate /signal_generator_tb/d
add wave -noupdate /signal_generator_tb/gen
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
WaveRestoreZoom {176134 ps} {628133 ps}

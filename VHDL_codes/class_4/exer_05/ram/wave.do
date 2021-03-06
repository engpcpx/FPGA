onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ram_tb/ram_clk
add wave -noupdate /ram_tb/ram_rst
add wave -noupdate /ram_tb/ram_we
add wave -noupdate /ram_tb/ram_addr
add wave -noupdate /ram_tb/ram_data_in
add wave -noupdate /ram_tb/ram_data_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 232
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
WaveRestoreZoom {0 ps} {490202 ps}

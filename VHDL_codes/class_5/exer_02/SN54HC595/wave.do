onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /sn54hc595_tb/srclk_s
add wave -noupdate /sn54hc595_tb/srclr_s
add wave -noupdate /sn54hc595_tb/rclk_s
add wave -noupdate /sn54hc595_tb/ser_s
add wave -noupdate /sn54hc595_tb/oe_s
add wave -noupdate /sn54hc595_tb/q_s
add wave -noupdate /sn54hc595_tb/qs_s
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
WaveRestoreZoom {0 ps} {2100 ns}

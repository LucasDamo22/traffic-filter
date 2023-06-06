onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_lucas/clock
add wave -noupdate /tb_lucas/reset
add wave -noupdate -divider {fluxo IN e OUT}
add wave -noupdate /tb_lucas/din
add wave -noupdate /tb_lucas/dout
add wave -noupdate /tb_lucas/DUT/data
add wave -noupdate -divider PROGRAMACAO
add wave -noupdate /tb_lucas/DUT/prog
add wave -noupdate -divider ALARME
add wave -noupdate /tb_lucas/DUT/match(0)
add wave -noupdate /tb_lucas/DUT/match(1)
add wave -noupdate /tb_lucas/DUT/match(2)
add wave -noupdate /tb_lucas/DUT/match(3)
add wave -noupdate /tb_lucas/DUT/alarme
add wave -noupdate /tb_lucas/DUT/numero
add wave -noupdate /tb_lucas/DUT/EA
add wave -noupdate -divider PADROES
add wave -noupdate /tb_lucas/DUT/padrao
add wave -noupdate /tb_lucas/DUT/sel(0)
add wave -noupdate /tb_lucas/DUT/compara_dado_0/reg_padrao
add wave -noupdate /tb_lucas/DUT/sel(1)
add wave -noupdate /tb_lucas/DUT/compara_dado_1/reg_padrao
add wave -noupdate /tb_lucas/DUT/sel(2)
add wave -noupdate /tb_lucas/DUT/compara_dado_2/reg_padrao
add wave -noupdate /tb_lucas/DUT/sel(3)
add wave -noupdate /tb_lucas/DUT/compara_dado_3/reg_padrao
add wave -noupdate -divider {test bench}
add wave -noupdate /tb_lucas/conta_tempo
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {166 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 123
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 2
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 2000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {0 ns} {2858 ns}

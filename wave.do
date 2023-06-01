onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/clock
add wave -noupdate /tb/reset
add wave -noupdate -divider {fluxo IN e OUT}
add wave -noupdate /tb/din
add wave -noupdate /tb/dout
add wave -noupdate -divider PROGRAMACAO
add wave -noupdate -radix decimal /tb/prog
add wave -noupdate -divider ALARME
add wave -noupdate /tb/DUT/match(0)
add wave -noupdate /tb/DUT/match(1)
add wave -noupdate /tb/DUT/match(2)
add wave -noupdate /tb/DUT/match(3)
add wave -noupdate /tb/alarme
add wave -noupdate -radix unsigned /tb/numero
add wave -noupdate /tb/DUT/EA
add wave -noupdate -divider PADROES
add wave -noupdate -radix hexadecimal /tb/padrao
add wave -noupdate /tb/DUT/sel(0)
add wave -noupdate /tb/DUT/sel(1)
add wave -noupdate /tb/DUT/sel(2)
add wave -noupdate /tb/DUT/sel(3)
add wave -noupdate -divider {test bench}
add wave -noupdate -radix unsigned /tb/conta_tempo
add wave -noupdate -divider program
add wave -noupdate /tb/DUT/program
add wave -noupdate -divider compara_0
add wave -noupdate /tb/DUT/compara_dado_0/clock
add wave -noupdate /tb/DUT/compara_dado_0/reset
add wave -noupdate /tb/DUT/compara_dado_0/dado
add wave -noupdate /tb/DUT/compara_dado_0/pattern
add wave -noupdate /tb/DUT/compara_dado_0/prog
add wave -noupdate /tb/DUT/compara_dado_0/habilita
add wave -noupdate /tb/DUT/compara_dado_0/match
add wave -noupdate /tb/DUT/compara_dado_0/reg_padrao
add wave -noupdate /tb/DUT/compara_dado_0/en
add wave -noupdate /tb/DUT/compara_dado_0/comparador
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {253 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 243
configure wave -valuecolwidth 70
configure wave -justifyvalue left
configure wave -signalnamewidth 3
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
WaveRestoreZoom {116 ns} {1252 ns}

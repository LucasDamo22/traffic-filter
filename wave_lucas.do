onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_lucas/clock
add wave -noupdate /tb_lucas/reset
add wave -noupdate -divider {fluxo IN e OUT}
add wave -noupdate /tb_lucas/DUT/din
add wave -noupdate /tb_lucas/dout
add wave -noupdate -divider PROGRAMACAO
add wave -noupdate -radix unsigned /tb_lucas/prog
add wave -noupdate -divider ALARME
add wave -noupdate /tb_lucas/DUT/EA
add wave -noupdate -divider PADROES
add wave -noupdate -radix hexadecimal -childformat {{/tb_lucas/padrao(7) -radix hexadecimal} {/tb_lucas/padrao(6) -radix hexadecimal} {/tb_lucas/padrao(5) -radix hexadecimal} {/tb_lucas/padrao(4) -radix hexadecimal} {/tb_lucas/padrao(3) -radix hexadecimal} {/tb_lucas/padrao(2) -radix hexadecimal} {/tb_lucas/padrao(1) -radix hexadecimal} {/tb_lucas/padrao(0) -radix hexadecimal}} -subitemconfig {/tb_lucas/padrao(7) {-height 16 -radix hexadecimal} /tb_lucas/padrao(6) {-height 16 -radix hexadecimal} /tb_lucas/padrao(5) {-height 16 -radix hexadecimal} /tb_lucas/padrao(4) {-height 16 -radix hexadecimal} /tb_lucas/padrao(3) {-height 16 -radix hexadecimal} /tb_lucas/padrao(2) {-height 16 -radix hexadecimal} /tb_lucas/padrao(1) {-height 16 -radix hexadecimal} /tb_lucas/padrao(0) {-height 16 -radix hexadecimal}} /tb_lucas/padrao
add wave -noupdate -divider program
add wave -noupdate /tb_lucas/DUT/compara_dado_0/match
add wave -noupdate /tb_lucas/DUT/compara_dado_1/match
add wave -noupdate /tb_lucas/DUT/compara_dado_2/match
add wave -noupdate /tb_lucas/DUT/compara_dado_3/match
add wave -noupdate /tb_lucas/DUT/program
add wave -noupdate -radix hexadecimal /tb_lucas/DUT/data
add wave -noupdate -divider Found
add wave -noupdate /tb_lucas/DUT/found
add wave -noupdate /tb_lucas/DUT/alarme_int
add wave -noupdate /tb_lucas/DUT/alarme_en
add wave -noupdate -divider saidas
add wave -noupdate /tb_lucas/DUT/dout
add wave -noupdate /tb_lucas/DUT/alarme
add wave -noupdate /tb_lucas/DUT/numero
add wave -noupdate /tb_lucas/din
add wave -noupdate -group Compara_0 /tb_lucas/DUT/compara_dado_0/clock
add wave -noupdate -group Compara_0 /tb_lucas/DUT/compara_dado_0/reset
add wave -noupdate -group Compara_0 /tb_lucas/DUT/compara_dado_0/dado
add wave -noupdate -group Compara_0 /tb_lucas/DUT/compara_dado_0/pattern
add wave -noupdate -group Compara_0 /tb_lucas/DUT/compara_dado_0/prog
add wave -noupdate -group Compara_0 /tb_lucas/DUT/compara_dado_0/habilita
add wave -noupdate -group Compara_0 /tb_lucas/DUT/compara_dado_0/reg_padrao
add wave -noupdate -group Compara_0 /tb_lucas/DUT/compara_dado_0/comparador
add wave -noupdate -group Compara_1 /tb_lucas/DUT/compara_dado_1/clock
add wave -noupdate -group Compara_1 /tb_lucas/DUT/compara_dado_1/reset
add wave -noupdate -group Compara_1 /tb_lucas/DUT/compara_dado_1/dado
add wave -noupdate -group Compara_1 /tb_lucas/DUT/compara_dado_1/pattern
add wave -noupdate -group Compara_1 /tb_lucas/DUT/compara_dado_1/prog
add wave -noupdate -group Compara_1 /tb_lucas/DUT/compara_dado_1/habilita
add wave -noupdate -group Compara_1 /tb_lucas/DUT/compara_dado_1/reg_padrao
add wave -noupdate -group Compara_1 /tb_lucas/DUT/compara_dado_1/comparador
add wave -noupdate -group Compara_2 /tb_lucas/DUT/compara_dado_2/clock
add wave -noupdate -group Compara_2 /tb_lucas/DUT/compara_dado_2/reset
add wave -noupdate -group Compara_2 /tb_lucas/DUT/compara_dado_2/dado
add wave -noupdate -group Compara_2 /tb_lucas/DUT/compara_dado_2/pattern
add wave -noupdate -group Compara_2 /tb_lucas/DUT/compara_dado_2/prog
add wave -noupdate -group Compara_2 /tb_lucas/DUT/compara_dado_2/habilita
add wave -noupdate -group Compara_2 /tb_lucas/DUT/compara_dado_2/reg_padrao
add wave -noupdate -group Compara_2 /tb_lucas/DUT/compara_dado_2/comparador
add wave -noupdate -group Compara_3 /tb_lucas/DUT/compara_dado_3/clock
add wave -noupdate -group Compara_3 /tb_lucas/DUT/compara_dado_3/reset
add wave -noupdate -group Compara_3 /tb_lucas/DUT/compara_dado_3/dado
add wave -noupdate -group Compara_3 /tb_lucas/DUT/compara_dado_3/pattern
add wave -noupdate -group Compara_3 /tb_lucas/DUT/compara_dado_3/prog
add wave -noupdate -group Compara_3 /tb_lucas/DUT/compara_dado_3/habilita
add wave -noupdate -group Compara_3 /tb_lucas/DUT/compara_dado_3/reg_padrao
add wave -noupdate -group Compara_3 /tb_lucas/DUT/compara_dado_3/comparador
add wave -noupdate -divider data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {413 ns} 0}
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
WaveRestoreZoom {0 ns} {1571 ns}

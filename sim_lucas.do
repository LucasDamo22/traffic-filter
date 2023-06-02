if {[file isdirectory work]} { vdel -all -lib work }
vlib work
vmap work work

vcom -work work comp.vhd
vcom -work work tp3.vhd
vcom -work work tb_lucas.vhd

vsim -voptargs=+acc=lprn -t ns work.tb_lucas

set StdArithNoWarnings 1
set StdVitalGlitchNoWarnings 1

do wave_lucas.do 

run 1800 ns
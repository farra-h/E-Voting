SetActiveLib -work
#Compiling UUT module design files

comp -include "$DSN\src\TestBench\ClockGen_TB.v"
asim ClockGen_tb

wave
wave -noreg CLK

run

#End simulation macro

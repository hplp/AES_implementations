# Additionaly, a constraints file to specify the clock
# To get utilization values also set Synthesis settings to -mode out_of_context
# This part is writen by Sergiu Mosanu
#create_clock -add -name aes_clk -period 4 -waveform {0 2} [get_ports { clk }];
#create_clock -name aes_clk -period 4 [get_ports clk]
create_clock -period 4 -waveform {0 2} [get_ports clk]


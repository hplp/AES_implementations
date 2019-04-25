# Additionaly, a constraints file to specify the clock
# To get utilization values also set Synthesis settings to -mode out_of_context
# This part is writen by Sergiu Mosanu
create_clock -add -name aes_clk -period 10.00 -waveform {0 5} [get_ports { clk }];

from pyrtl import *

import io

# start with empty working block
reset_working_block()

# declare blocs and registers
memory = MemBlock(bitwidth=8, addrwidth=8, name='memory')

write_address = Input(bitwidth=8, name='write_address')
write_data = Input(bitwidth=8, name='write_data')
write_enable = Input(bitwidth=1, name='write_enable')

read_address = Input(bitwidth=8, name='read_address')
read_data = Output(bitwidth=8, name='read_data')

# connect them
memory[write_address] <<= MemBlock.EnabledWrite(write_data, write_enable)
read_data <<= memory[read_address]

simulation_values = {
    'write_enable':       "001111111111000000000000000",
    'write_address':      "000123456789000000000000000",
    'write_data':         "000123456789000000000000000",
    'read_address':       "000000000000000012345678900"
}

memory_init = {addr: 0 for addr in range(256)}
memory_values = {memory: memory_init}

sim_trace = SimulationTrace()
sim = Simulation(tracer=sim_trace, memory_value_map=memory_values)
for cycle in range(len(simulation_values['write_enable'])):
    sim.step({k: int(v[cycle]) for k, v in simulation_values.items()})
sim_trace.render_trace(segment_size=50)

#working_block()
#synthesize()
#optimize()

f = open("sim/RTL.v", "w")
with io.StringIO() as vfile:
    OutputToVerilog(vfile)
    f.write(vfile.getvalue())
f.close()

f = open("sim/Testbench.v", "w")
with io.StringIO() as tbfile:
    output_verilog_testbench(dest_file=tbfile, simulation_trace=sim_trace)
    f.write(tbfile.getvalue())
f.close()

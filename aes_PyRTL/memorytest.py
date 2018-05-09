import random
import io

import pyrtl
from pyrtl import *

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
read_data <<= memory[read_address]
memory[write_address] <<= MemBlock.EnabledWrite(write_data, write_enable)

# just a counter register
counter = Register(bitwidth=8, name='counter')
counter.next <<= select(write_enable, falsecase=counter, truecase=counter + 1)

simulation_values = {
    'write_enable':       "00111111111100000000000000",
    'write_address':      "00012345678900000000000000",
    'write_data':         "00012345678900000000000000",
    'read_address':       "00000000000000001234567890"
}

memory_init = {addr: 0 for addr in range(256)}
memory_values = {memory: memory_init}

sim_trace = pyrtl.SimulationTrace()
sim = pyrtl.Simulation(tracer=sim_trace, memory_value_map=memory_values)
for cycle in range(len(simulation_values['write_enable'])):
    sim.step({k: int(v[cycle]) for k, v in simulation_values.items()})
sim_trace.render_trace()

working_block()
synthesize()
optimize()

print("// Output Verilog RTL:")
with io.StringIO() as vfile:
    OutputToVerilog(vfile)
    print(vfile.getvalue())

print("// Output Verilog Testbench:")
with io.StringIO() as tbfile:
    pyrtl.output_verilog_testbench(dest_file=tbfile, simulation_trace=sim_trace)
    print(tbfile.getvalue())

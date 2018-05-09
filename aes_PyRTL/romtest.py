import random
import io

import pyrtl
from pyrtl import *

# start with empty working block
reset_working_block()


def rom_data_func(address):
    return address * address


rom_data_array = [rom_data_func(a) for a in range(8)]
print(rom_data_array)


rom1 = RomBlock(bitwidth=8, addrwidth=3, romdata=rom_data_array, name="rom1", max_read_ports=1)

rom1_address = Input(3, "rom1_address")
rom1_out = Output(8, "rom1_out")

temp1 = rom1[rom1_address]
rom1_out <<= temp1

random.seed(4839483)

simvals = {
    'rom1_address': [random.randrange(0, 7) for i in range(20)]
}

sim_trace = SimulationTrace()
sim = Simulation(tracer=sim_trace)
for cycle in range(len(simvals['rom1_address'])):
    sim.step({k: v[cycle] for k, v in simvals.items()})
sim_trace.render_trace()

#working_block()
#synthesize()
#optimize()

with io.StringIO() as vfile:
    OutputToVerilog(vfile)
    print(vfile.getvalue())

with io.StringIO() as tbfile:
    pyrtl.output_verilog_testbench(dest_file=tbfile, simulation_trace=sim_trace)
    print(tbfile.getvalue())

from pyrtl import *

import random
import io

# start with empty working block
reset_working_block()


# let values be a ^2 function
def rom_data_func(address):
    return address * address


# create initial values
rom_data_array = [rom_data_func(a) for a in range(8)]
print("initial values: ", ' '.join([hex(i) for i in rom_data_array]))


# declare a ROM block and ports
rom1 = RomBlock(bitwidth=8, addrwidth=3, romdata=rom_data_array, name="rom1", max_read_ports=1)

rom1_address = Input(bitwidth=3, name="rom1_address")
rom1_out = Output(bitwidth=8, name="rom1_out")


# here is now a ROM works
rom1_out <<= rom1[rom1_address]


# test with simulation
random.seed(4839483)

simulation_values = {
    'rom1_address': [random.randrange(0, 7) for i in range(20)]
}

sim_trace = SimulationTrace()
sim = Simulation(tracer=sim_trace)
for cycle in range(len(simulation_values['rom1_address'])):
    sim.step({k: v[cycle] for k, v in simulation_values.items()})
sim_trace.render_trace(segment_size=50)

working_block()
synthesize()
optimize()

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

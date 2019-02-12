# Ameen Ahmed
# 4/20/2018

from pyrtl import *
import io


# Open and store file contents in a list
filename = 'array_values.txt'
file_list = open(filename).readlines()


# Define constants
N = len(file_list)
DATA_WIDTH = 4
ADDRESS_WIDTH = 4


# Define sorter structure for Bubble Sort Accelerator
def sorter(in0, in1, pc):
    to_reg = WireVector(DATA_WIDTH, ' to_reg')
    to_mem = WireVector(DATA_WIDTH, ' to_mem')

    with conditional_assignment:
        with pc == N:  # Reached the end of the array in memory
            to_reg |= Const(0, DATA_WIDTH)  # Reset the store register to 0
            to_mem |= corecircuits.mux(in0.__lt__(in1), in0, in1)   # Write the greater value
            pc.next |= 0
        with otherwise:
            to_reg |= corecircuits.mux(in0.__lt__(in1), in0, in1)
            to_mem |= corecircuits.mux(in0.__gt__(in1), in0, in1)
            pc.next |= pc + 1
    return to_reg,  to_mem


# Instantiate memory to store input array
mem = MemBlock(bitwidth=DATA_WIDTH, addrwidth=ADDRESS_WIDTH, name='mem')


# Define ports to memory
write_address = Input(ADDRESS_WIDTH, 'waddr')
read_address = Input(ADDRESS_WIDTH, 'raddr')
write_data = WireVector(DATA_WIDTH, 'wdata')
write_enable = Input(1, 'we')
read_data = WireVector(DATA_WIDTH, 'rdata')


# Drive memory ports
read_data <<= mem[read_address]
WE = MemBlock.EnabledWrite
mem[write_address] <<= WE(write_data, write_enable)


# Define simulation values for memory
simvals = {
    'we':       ["1" for i in range(N*N)],
    'waddr':    [str(j) for i in range(N) for j in range(N)],  # [0, 1, 2, 3, ... N, 0, 1, 2, ... N, etc.]
    'raddr':    [str(j) for i in range(N) for j in range(N)],
}


# Initialize memory
mem_init = {address: int(value) for address, value in enumerate(file_list)}
memvals = {mem: mem_init}


# Instantiate inputs to sorter
store = Register(DATA_WIDTH, 'store')
program_counter = Register(ADDRESS_WIDTH, 'pc')


# Drive sorter ports
store_value, write_value = sorter(store, read_data, program_counter)
store.next <<= store_value
write_data <<= write_value


# Instantiate the Simulation trace
sim_trace = SimulationTrace()
sim = Simulation(tracer=sim_trace, memory_value_map=memvals)


# Run simulation for N*N - 1 iterations
for cycle in range(1, N*N):
    sim.step(
        {key: int(value[cycle]) for key, value in simvals.items()}
    )


# Render the trace
sim_trace.render_trace()


# Output to a Verilog file named 'bubble_sort.v'
with open('bubble_sort.v', 'w') as v_file:
    OutputToVerilog(v_file)

f = open("Testbench.v", "w")
with io.StringIO() as tbfile:
    output_verilog_testbench(dest_file=tbfile, simulation_trace=sim_trace)
    f.write(tbfile.getvalue())
f.close()

exit(0)

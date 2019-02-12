"""
This file contains tests for each AES method
"""
# import AES class
from AES import *

import pyrtl
from pyrtl import *

# import random
import io


# start with empty working block
reset_working_block()


# create aes object instance and invoke describe
aes = AES()

# state in input
state_in = Input(bitwidth=128, name='state_in')
key_in = Input(bitwidth=128, name='key_in')

# state out outputs for each method
state_out_SB = Output(bitwidth=128, name='state_out_SB')
state_out_ISB = Output(bitwidth=128, name='state_out_ISB')
state_out_SR = Output(bitwidth=128, name='state_out_SR')
state_out_ISR = Output(bitwidth=128, name='state_out_ISR')
state_out_MC = Output(bitwidth=128, name='state_out_MC')
state_out_IMC = Output(bitwidth=128, name='state_out_IMC')
state_out_ARK = Output(bitwidth=128, name='state_out_ARK')

# invoke methods
state_out_SB <<= aes._sub_bytes(state_in)
state_out_ISB <<= aes._sub_bytes(state_in, True)  # inverse=True
state_out_SR <<= aes._shift_rows(state_in)
state_out_ISR <<= aes._inv_shift_rows(state_in)
state_out_MC <<= aes._mix_columns(state_in)
state_out_IMC <<= aes._mix_columns(state_in, True)  # inverse=True
state_out_ARK <<= aes._add_round_key(state_in, key_in)

sim_trace = pyrtl.SimulationTrace()
sim = pyrtl.Simulation(tracer=sim_trace)
sim.step({state_in: 0x3243f6a8885a308d313198a2e0370734, key_in: 0x000102030405060708090a0b0c0d0e0f})
sim_trace.render_trace(trace_list=['state_in',
                                   'state_out_SB', 'state_out_ISB',
                                   'state_out_SR', 'state_out_ISR',
                                   'state_out_MC', 'state_out_IMC', 'state_out_ARK'
                                   ], symbol_len=50)

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

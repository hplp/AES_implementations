import pyrtl
import io
from pyrtl import *
# import AES class
from AES import *

# start with empty working block
pyrtl.reset_working_block()

# create aes object instance and invoke describe
aes = AES()
aes.describe()

# declare cipher inputs
plaintext = pyrtl.Input(bitwidth=128, name='plaintext')
key = pyrtl.Input(bitwidth=128, name='key')
start = pyrtl.Input(bitwidth=1, name='start')

# declare cipher outputs
ciphertext = pyrtl.Output(bitwidth=128, name='ciphertext')
ready = pyrtl.Output(bitwidth=1, name='ready')

# invoke aes cipher_m and connect outputs
ready_out, ciphertext_out = aes.cipher_round(plaintext, key, start)
ready <<= ready_out
ciphertext <<= ciphertext_out

sim_trace = pyrtl.SimulationTrace()
sim = pyrtl.Simulation(tracer=sim_trace)
sim.step({
    plaintext: 0x000102030405060708090a0b0c0d0e0f,
    key: 0x000102030405060708090a0b0c0d0e0f,
    start: 1
})
for cycle in range(1, 15):
    sim.step({
        plaintext: 0x00000000000000000000000000000000,
        key: 0x00000000000000000000000000000000,
        start: 0
    })
sim_trace.render_trace(trace_list=['plaintext', 'key', 'start', 'counter', 'round', 'ciphertext', 'ready'],
                       symbol_len=35, segment_size=1)

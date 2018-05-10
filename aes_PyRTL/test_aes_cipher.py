import pyrtl
import io

# inport AES class
from AES import *

# start with empty working block
pyrtl.reset_working_block()

# create aes object instance and invoke describe
aes = AES()
aes.describe()

# declare cipher inputs
plaintext = pyrtl.Input(bitwidth=128, name='plaintext')
key = pyrtl.Input(bitwidth=128, name='key')
cipher_start = pyrtl.Input(bitwidth=1, name='cipher_start')

# declare cipher outputs
ciphertext = pyrtl.Output(bitwidth=128, name='ciphertext')
cipher_ready = pyrtl.Output(bitwidth=1, name='cipher_ready')

# invoke aes cipher_m
ciphertext_out, cipher_ready_out = aes.cipher_round(plaintext, key, cipher_start)

# connect outputs
ciphertext <<= ciphertext_out
cipher_ready <<= cipher_ready_out

# print(pyrtl.working_block())
# pyrtl.synthesize()
# pyrtl.optimize()
#f = open("aes_ec.v", "w")
# with io.StringIO() as vfile:
#    pyrtl.OutputToVerilog(vfile)
#    print(vfile.getvalue())
# f.close()

#sim_trace = pyrtl.SimulationTrace()
#sim = pyrtl.Simulation(tracer=sim_trace)
# sim.step({
#    aes_plaintext: 0x000102030405060708090a0b0c0d0e0f,
#    aes_key: 0x000102030405060708090a0b0c0d0e0f,  # 1011121314151617,
#    reset: 1
#})
# for cycle in range(1, 15):
#    sim.step({
#        aes_plaintext: 0x00000000000000000000000000000000,
#        aes_key: 0x00000000000000000000000000000000,
#        reset: 0
#    })
#sim_trace.render_trace(symbol_len=40, segment_size=1)

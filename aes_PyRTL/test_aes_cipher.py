import pyrtl
import io
from AES import *


pyrtl.reset_working_block()
aes = AES()
aes.describe()


aes_plaintext = pyrtl.Input(bitwidth=128, name='aes_plaintext')
aes_key = pyrtl.Input(bitwidth=128, name='aes_key')
aes_cipher_start = pyrtl.Input(1, name='aes_cipher_start')

aes_ciphertext = pyrtl.Output(bitwidth=128, name='aes_ciphertext')
aes_cipher_ready = pyrtl.Output(1, name='aes_cipher_ready')

aes_cipher_ready_out, aes_ciphertext_out = aes.cipher_m(aes_plaintext, aes_key, aes_cipher_start)

#aes_cipher_ready <<= aes_cipher_ready_out
#aes_ciphertext <<= aes_ciphertext_out

#print(pyrtl.working_block())
#pyrtl.synthesize()
#pyrtl.optimize()
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

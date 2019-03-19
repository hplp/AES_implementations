# AES implementation in Vivado HLS
This directory contains the necessary files to make use of our AES C++ HLS design.

We tested the AES Cipher, Inverse Cipher, and Full (wrapper over the previous two) in Vivado HLS C sim, C/RTL co-sim, and on a PYNQ-Z1 board. The design source files, testbench source files and the SDK test are provided. Additionally, Vivado HLS projects and reports are provided.

For help to run on hardware, generate the IP with Vivado HLS, then make a Vivado Project, then execute in the SDK. Detailed instructions are provided in the following tutorials:
- http://venividiwiki.ee.virginia.edu/mediawiki/index.php/ToolsXilinxLabsHelloZynq
- http://venividiwiki.ee.virginia.edu/mediawiki/index.php/ToolsXilinxLabsRTLHLSIP#Custom_IP_block_using_High-Level_Synthesis
- http://venividiwiki.ee.virginia.edu/mediawiki/index.php/ToolsXilinxLabsRTLHLSAES

## Branch info
Branch HLS-axis128 is a pipelined, unrolled, implementation of AES in Vivado HLS that features a 128-bit AXI Stream interface. This is a huge, fully unrolled and pipelined version, that can take 128-bit for encryption at each cycle.

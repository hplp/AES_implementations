connect -url tcp:127.0.0.1:3121
source D:/WS/AES_implementations/VivadoHLS/PynqZ1AES-AXI-stream/PynqZ1AES-AXI-stream.sdk/ZAES_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A6E31DA"} -index 0
loadhw -hw D:/WS/AES_implementations/VivadoHLS/PynqZ1AES-AXI-stream/PynqZ1AES-AXI-stream.sdk/ZAES_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A6E31DA"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A6E31DA"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A6E31DA"} -index 0
dow D:/WS/AES_implementations/VivadoHLS/PynqZ1AES-AXI-stream/PynqZ1AES-AXI-stream.sdk/ZAES_AXI_stream/Debug/ZAES_AXI_stream.elf
configparams force-mem-access 0
bpadd -addr &main

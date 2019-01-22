connect -url tcp:127.0.0.1:3121
source C:/SpaceInvaders/SpaceInvaders.sdk/hdmi_in_wrapper_hw_platform_0/ps7_init.tcl
targets -set -filter {jtag_cable_name =~ "Digilent Zybo 210279654856A" && level==0} -index 1
fpga -file C:/SpaceInvaders/SpaceInvaders.sdk/hdmi_in_wrapper_hw_platform_0/hdmi_in_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279654856A"} -index 0
loadhw -hw C:/SpaceInvaders/SpaceInvaders.sdk/hdmi_in_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279654856A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279654856A"} -index 0
dow C:/SpaceInvaders/SpaceInvaders.sdk/SpaceInvaders/Debug/SpaceInvaders.elf
targets -set -nocase -filter {name =~ "ARM*#1" && jtag_cable_name =~ "Digilent Zybo 210279654856A"} -index 0
dow C:/SpaceInvaders/SpaceInvaders.sdk/Sound/Debug/Sound.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279654856A"} -index 0
con
targets -set -nocase -filter {name =~ "ARM*#1" && jtag_cable_name =~ "Digilent Zybo 210279654856A"} -index 0
con

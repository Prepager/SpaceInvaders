vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_19
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/fifo_generator_v13_2_2
vlib modelsim_lib/msim/lib_fifo_v1_0_11
vlib modelsim_lib/msim/blk_mem_gen_v8_4_1
vlib modelsim_lib/msim/lib_bmg_v1_0_10
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/axi_datamover_v5_1_19
vlib modelsim_lib/msim/axi_vdma_v6_3_5
vlib modelsim_lib/msim/proc_sys_reset_v5_0_12
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_protocol_checker_v2_0_3
vlib modelsim_lib/msim/axi_vip_v1_1_3
vlib modelsim_lib/msim/processing_system7_vip_v1_0_5
vlib modelsim_lib/msim/v_tc_v6_1_12
vlib modelsim_lib/msim/v_vid_in_axi4s_v4_0_8
vlib modelsim_lib/msim/v_axi4s_vid_out_v4_0_9
vlib modelsim_lib/msim/xlconcat_v2_1_1
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_17
vlib modelsim_lib/msim/axi_data_fifo_v2_1_16
vlib modelsim_lib/msim/axi_crossbar_v2_1_18
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_17
vlib modelsim_lib/msim/axi_clock_converter_v2_1_16
vlib modelsim_lib/msim/axi_dwidth_converter_v2_1_17

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_19 modelsim_lib/msim/axi_gpio_v2_0_19
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_2 modelsim_lib/msim/fifo_generator_v13_2_2
vmap lib_fifo_v1_0_11 modelsim_lib/msim/lib_fifo_v1_0_11
vmap blk_mem_gen_v8_4_1 modelsim_lib/msim/blk_mem_gen_v8_4_1
vmap lib_bmg_v1_0_10 modelsim_lib/msim/lib_bmg_v1_0_10
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_19 modelsim_lib/msim/axi_datamover_v5_1_19
vmap axi_vdma_v6_3_5 modelsim_lib/msim/axi_vdma_v6_3_5
vmap proc_sys_reset_v5_0_12 modelsim_lib/msim/proc_sys_reset_v5_0_12
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 modelsim_lib/msim/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 modelsim_lib/msim/axi_vip_v1_1_3
vmap processing_system7_vip_v1_0_5 modelsim_lib/msim/processing_system7_vip_v1_0_5
vmap v_tc_v6_1_12 modelsim_lib/msim/v_tc_v6_1_12
vmap v_vid_in_axi4s_v4_0_8 modelsim_lib/msim/v_vid_in_axi4s_v4_0_8
vmap v_axi4s_vid_out_v4_0_9 modelsim_lib/msim/v_axi4s_vid_out_v4_0_9
vmap xlconcat_v2_1_1 modelsim_lib/msim/xlconcat_v2_1_1
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_17 modelsim_lib/msim/axi_register_slice_v2_1_17
vmap axi_data_fifo_v2_1_16 modelsim_lib/msim/axi_data_fifo_v2_1_16
vmap axi_crossbar_v2_1_18 modelsim_lib/msim/axi_crossbar_v2_1_18
vmap axi_protocol_converter_v2_1_17 modelsim_lib/msim/axi_protocol_converter_v2_1_17
vmap axi_clock_converter_v2_1_16 modelsim_lib/msim/axi_clock_converter_v2_1_16
vmap axi_dwidth_converter_v2_1_17 modelsim_lib/msim/axi_dwidth_converter_v2_1_17

vlog -work xilinx_vip -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"D:/Programmer/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Programmer/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Programmer/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Programmer/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/9097/src/mmcme2_drp.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/9097/src/axi_dynclk_S00_AXI.vhd" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/9097/src/axi_dynclk.vhd" \
"../../../bd/hdmi_in/ip/hdmi_in_axi_dynclk_0_0/sim/hdmi_in_axi_dynclk_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_19 -64 -93 \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/c193/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/hdmi_in/ip/hdmi_in_axi_gpio_btn_0/sim/hdmi_in_axi_gpio_btn_0.vhd" \
"../../../bd/hdmi_in/ip/hdmi_in_axi_gpio_led_0/sim/hdmi_in_axi_gpio_led_0.vhd" \
"../../../bd/hdmi_in/ip/hdmi_in_axi_gpio_sw_0/sim/hdmi_in_axi_gpio_sw_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_2 -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -64 -93 \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2 -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_11 -64 -93 \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/6078/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_1 -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_10 -64 -93 \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/9340/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_19 -64 -93 \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec8a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_5 -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_5 -64 -93 \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/hdmi_in/ip/hdmi_in_axi_vdma_0_0/sim/hdmi_in_axi_vdma_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/hdmi_in/ip/hdmi_in_proc_sys_reset_0_0/sim/hdmi_in_proc_sys_reset_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_5 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/hdmi_in/ip/hdmi_in_processing_system7_0_0/sim/hdmi_in_processing_system7_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/hdmi_in/ipshared/69dc/src/rgb2vga.vhd" \
"../../../bd/hdmi_in/ip/hdmi_in_rgb2vga_0_0/sim/hdmi_in_rgb2vga_0_0.vhd" \
"../../../bd/hdmi_in/ip/hdmi_in_rst_processing_system7_0_100M_0/sim/hdmi_in_rst_processing_system7_0_100M_0.vhd" \
"../../../bd/hdmi_in/ip/hdmi_in_rst_processing_system7_0_150M_0/sim/hdmi_in_rst_processing_system7_0_150M_0.vhd" \

vcom -work v_tc_v6_1_12 -64 -93 \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/6694/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_8 -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/d987/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_9 -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/9a07/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/hdmi_in/ip/hdmi_in_v_axi4s_vid_out_0_0/sim/hdmi_in_v_axi4s_vid_out_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/hdmi_in/ip/hdmi_in_v_tc_0_0/sim/hdmi_in_v_tc_0_0.vhd" \
"../../../bd/hdmi_in/ip/hdmi_in_v_tc_1_0/sim/hdmi_in_v_tc_1_0.vhd" \

vlog -work xlconcat_v2_1_1 -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/hdmi_in/ip/hdmi_in_xlconcat_0_0/sim/hdmi_in_xlconcat_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17 -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_16 -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_18 -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/hdmi_in/ip/hdmi_in_xbar_1/sim/hdmi_in_xbar_1.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/hdmi_in/sim/hdmi_in.vhd" \

vlog -work axi_protocol_converter_v2_1_17 -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/hdmi_in/ip/hdmi_in_auto_pc_1/sim/hdmi_in_auto_pc_1.v" \
"../../../bd/hdmi_in/ip/hdmi_in_s00_regslice_0/sim/hdmi_in_s00_regslice_0.v" \
"../../../bd/hdmi_in/ip/hdmi_in_auto_pc_0/sim/hdmi_in_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_16 -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/e9a5/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_17 -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/2839/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/b37e/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/ec67/hdl" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SpaceInvaders.srcs/sources_1/bd/hdmi_in/ipshared/70fd/hdl" "+incdir+D:/Programmer/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/hdmi_in/ip/hdmi_in_auto_us_df_0/sim/hdmi_in_auto_us_df_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


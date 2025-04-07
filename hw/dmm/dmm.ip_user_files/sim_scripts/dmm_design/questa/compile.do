vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_8
vlib questa_lib/msim/processing_system7_vip_v1_0_10
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_22
vlib questa_lib/msim/fifo_generator_v13_2_5
vlib questa_lib/msim/axi_data_fifo_v2_1_21
vlib questa_lib/msim/axi_crossbar_v2_1_23
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_24
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/axi_timer_v2_0_24
vlib questa_lib/msim/xlconcat_v2_1_4
vlib questa_lib/msim/axi_protocol_converter_v2_1_22
vlib questa_lib/msim/axi_clock_converter_v2_1_21

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 questa_lib/msim/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 questa_lib/msim/processing_system7_vip_v1_0_10
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_22 questa_lib/msim/axi_register_slice_v2_1_22
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_21 questa_lib/msim/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 questa_lib/msim/axi_crossbar_v2_1_23
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_24 questa_lib/msim/axi_gpio_v2_0_24
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap axi_timer_v2_0_24 questa_lib/msim/axi_timer_v2_0_24
vmap xlconcat_v2_1_4 questa_lib/msim/xlconcat_v2_1_4
vmap axi_protocol_converter_v2_1_22 questa_lib/msim/axi_protocol_converter_v2_1_22
vmap axi_clock_converter_v2_1_21 questa_lib/msim/axi_clock_converter_v2_1_21

vlog -work xilinx_vip  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/dmm_design/ipshared/7806/hdl/led_controller_v1_0_S00_AXI.vhd" \
"../../../bd/dmm_design/ipshared/7806/hdl/led_controller_v1_0.vhd" \
"../../../bd/dmm_design/ip/dmm_design_led_controller_0_0/sim/dmm_design_led_controller_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/dmm_design/ip/dmm_design_processing_system7_0_0/sim/dmm_design_processing_system7_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/dmm_design/ip/dmm_design_xbar_0/sim/dmm_design_xbar_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/dmm_design/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/family_support.vhd" \
"../../../bd/dmm_design/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/common_types.vhd" \
"../../../bd/dmm_design/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/pselect_f.vhd" \
"../../../bd/dmm_design/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/address_decoder.vhd" \
"../../../bd/dmm_design/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/slave_attachment.vhd" \
"../../../bd/dmm_design/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/iis_ser.vhd" \
"../../../bd/dmm_design/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/iis_deser.vhd" \
"../../../bd/dmm_design/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/user_logic.vhd" \
"../../../bd/dmm_design/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/axi_lite_ipif.vhd" \
"../../../bd/dmm_design/ipshared/1288/zed_audio_ctrl.srcs/sources_1/imports/i2s_audio/i2s_ctrl.vhd" \
"../../../bd/dmm_design/ip/dmm_design_zed_audio_ctrl_0_0/sim/dmm_design_zed_audio_ctrl_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4  -93 \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_24  -93 \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/dmm_design/ip/dmm_design_axi_gpio_0_0/sim/dmm_design_axi_gpio_0_0.vhd" \
"../../../bd/dmm_design/ip/dmm_design_axi_gpio_1_0/sim/dmm_design_axi_gpio_1_0.vhd" \
"../../../bd/dmm_design/sim/dmm_design.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/dmm_design/ip/fifo_generator_0/sim/fifo_generator_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/dmm_design/ipshared/3b78/vga_controller.vhd" \
"../../../bd/dmm_design/ip/dmm_design_vga_controller_0_0/sim/dmm_design_vga_controller_0_0.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/dmm_design/ip/dmm_design_clk_wiz_0_0/dmm_design_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/dmm_design/ip/dmm_design_clk_wiz_0_0/dmm_design_clk_wiz_0_0.v" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/dmm_design/ip/dmm_design_proc_sys_reset_0_0/sim/dmm_design_proc_sys_reset_0_0.vhd" \

vcom -work lib_pkg_v1_0_2  -93 \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_24  -93 \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/70d6/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/dmm_design/ip/dmm_design_axi_timer_0_0/sim/dmm_design_axi_timer_0_0.vhd" \

vlog -work xlconcat_v2_1_4  "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/dmm_design/ip/dmm_design_xlconcat_0_0/sim/dmm_design_xlconcat_0_0.v" \

vlog -work axi_protocol_converter_v2_1_22  "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/dmm_design/ip/dmm_design_auto_pc_0/sim/dmm_design_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_21  "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/1304/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl" "+incdir+../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/dmm_design/ip/dmm_design_auto_cc_0/sim/dmm_design_auto_cc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


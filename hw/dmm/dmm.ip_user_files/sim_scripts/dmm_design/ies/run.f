-makelib ies_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/dmm_design/ipshared/7806/hdl/led_controller_v1_0_S00_AXI.vhd" \
  "../../../bd/dmm_design/ipshared/7806/hdl/led_controller_v1_0.vhd" \
  "../../../bd/dmm_design/ip/dmm_design_led_controller_0_0/sim/dmm_design_led_controller_0_0.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_8 -sv \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_10 -sv \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/dmm_design/ip/dmm_design_processing_system7_0_0/sim/dmm_design_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_22 \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_21 \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_23 \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/dmm_design/ip/dmm_design_xbar_0/sim/dmm_design_xbar_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
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
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_gpio_v2_0_24 \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/dmm_design/ip/dmm_design_axi_gpio_0_0/sim/dmm_design_axi_gpio_0_0.vhd" \
  "../../../bd/dmm_design/ip/dmm_design_axi_gpio_1_0/sim/dmm_design_axi_gpio_1_0.vhd" \
  "../../../bd/dmm_design/sim/dmm_design.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/dmm_design/ip/fifo_generator_0/sim/fifo_generator_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/dmm_design/ipshared/3b78/vga_controller.vhd" \
  "../../../bd/dmm_design/ip/dmm_design_vga_controller_0_0/sim/dmm_design_vga_controller_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/dmm_design/ip/dmm_design_clk_wiz_0_0/dmm_design_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/dmm_design/ip/dmm_design_clk_wiz_0_0/dmm_design_clk_wiz_0_0.v" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/dmm_design/ip/dmm_design_proc_sys_reset_0_0/sim/dmm_design_proc_sys_reset_0_0.vhd" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_timer_v2_0_24 \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/70d6/hdl/axi_timer_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/dmm_design/ip/dmm_design_axi_timer_0_0/sim/dmm_design_axi_timer_0_0.vhd" \
-endlib
-makelib ies_lib/xlconcat_v2_1_4 \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/dmm_design/ip/dmm_design_xlconcat_0_0/sim/dmm_design_xlconcat_0_0.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_22 \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/dmm_design/ip/dmm_design_auto_pc_0/sim/dmm_design_auto_pc_0.v" \
-endlib
-makelib ies_lib/axi_clock_converter_v2_1_21 \
  "../../../../dmm.gen/sources_1/bd/dmm_design/ipshared/1304/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/dmm_design/ip/dmm_design_auto_cc_0/sim/dmm_design_auto_cc_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib


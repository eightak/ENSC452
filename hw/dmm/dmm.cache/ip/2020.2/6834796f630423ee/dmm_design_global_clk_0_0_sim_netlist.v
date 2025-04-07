// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr  1 14:47:53 2025
// Host        : ensc-pit-w34 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dmm_design_global_clk_0_0_sim_netlist.v
// Design      : dmm_design_global_clk_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dmm_design_global_clk_0_0,global_clk_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "global_clk_v1_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN dmm_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN dmm_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_global_clk_v1_0 U0
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_global_clk_v1_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_global_clk_v1_0_S00_AXI global_clk_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_global_clk_v1_0_S00_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire \hours[0]_i_1_n_0 ;
  wire \hours[1]_i_1_n_0 ;
  wire \hours[2]_i_1_n_0 ;
  wire \hours[3]_i_1_n_0 ;
  wire \hours[4]_i_1_n_0 ;
  wire \hours[4]_i_2_n_0 ;
  wire \hours[4]_i_3_n_0 ;
  wire \hours[4]_i_4_n_0 ;
  wire \hours_reg_n_0_[0] ;
  wire \hours_reg_n_0_[1] ;
  wire \hours_reg_n_0_[2] ;
  wire \hours_reg_n_0_[3] ;
  wire \hours_reg_n_0_[4] ;
  wire \minutes[0]_i_1_n_0 ;
  wire \minutes[1]_i_1_n_0 ;
  wire \minutes[2]_i_1_n_0 ;
  wire \minutes[3]_i_1_n_0 ;
  wire \minutes[3]_i_2_n_0 ;
  wire \minutes[4]_i_1_n_0 ;
  wire \minutes[5]_i_1_n_0 ;
  wire \minutes[5]_i_2_n_0 ;
  wire \minutes[5]_i_3_n_0 ;
  wire \minutes[5]_i_4_n_0 ;
  wire \minutes_reg_n_0_[0] ;
  wire \minutes_reg_n_0_[1] ;
  wire \minutes_reg_n_0_[2] ;
  wire \minutes_reg_n_0_[3] ;
  wire \minutes_reg_n_0_[4] ;
  wire \minutes_reg_n_0_[5] ;
  wire p_0_in;
  wire [1:0]p_0_in_0;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \sec_counter[0]_i_1_n_0 ;
  wire \sec_counter[0]_i_3_n_0 ;
  wire \sec_counter[0]_i_4_n_0 ;
  wire \sec_counter[0]_i_5_n_0 ;
  wire \sec_counter[0]_i_6_n_0 ;
  wire \sec_counter[0]_i_7_n_0 ;
  wire \sec_counter[12]_i_2_n_0 ;
  wire \sec_counter[12]_i_3_n_0 ;
  wire \sec_counter[12]_i_4_n_0 ;
  wire \sec_counter[12]_i_5_n_0 ;
  wire \sec_counter[16]_i_2_n_0 ;
  wire \sec_counter[16]_i_3_n_0 ;
  wire \sec_counter[16]_i_4_n_0 ;
  wire \sec_counter[16]_i_5_n_0 ;
  wire \sec_counter[20]_i_2_n_0 ;
  wire \sec_counter[20]_i_3_n_0 ;
  wire \sec_counter[20]_i_4_n_0 ;
  wire \sec_counter[20]_i_5_n_0 ;
  wire \sec_counter[24]_i_2_n_0 ;
  wire \sec_counter[24]_i_3_n_0 ;
  wire \sec_counter[24]_i_4_n_0 ;
  wire \sec_counter[24]_i_5_n_0 ;
  wire \sec_counter[28]_i_2_n_0 ;
  wire \sec_counter[28]_i_3_n_0 ;
  wire \sec_counter[28]_i_4_n_0 ;
  wire \sec_counter[28]_i_5_n_0 ;
  wire \sec_counter[4]_i_2_n_0 ;
  wire \sec_counter[4]_i_3_n_0 ;
  wire \sec_counter[4]_i_4_n_0 ;
  wire \sec_counter[4]_i_5_n_0 ;
  wire \sec_counter[8]_i_2_n_0 ;
  wire \sec_counter[8]_i_3_n_0 ;
  wire \sec_counter[8]_i_4_n_0 ;
  wire \sec_counter[8]_i_5_n_0 ;
  wire [31:0]sec_counter_reg;
  wire \sec_counter_reg[0]_i_2_n_0 ;
  wire \sec_counter_reg[0]_i_2_n_1 ;
  wire \sec_counter_reg[0]_i_2_n_2 ;
  wire \sec_counter_reg[0]_i_2_n_3 ;
  wire \sec_counter_reg[0]_i_2_n_4 ;
  wire \sec_counter_reg[0]_i_2_n_5 ;
  wire \sec_counter_reg[0]_i_2_n_6 ;
  wire \sec_counter_reg[0]_i_2_n_7 ;
  wire \sec_counter_reg[12]_i_1_n_0 ;
  wire \sec_counter_reg[12]_i_1_n_1 ;
  wire \sec_counter_reg[12]_i_1_n_2 ;
  wire \sec_counter_reg[12]_i_1_n_3 ;
  wire \sec_counter_reg[12]_i_1_n_4 ;
  wire \sec_counter_reg[12]_i_1_n_5 ;
  wire \sec_counter_reg[12]_i_1_n_6 ;
  wire \sec_counter_reg[12]_i_1_n_7 ;
  wire \sec_counter_reg[16]_i_1_n_0 ;
  wire \sec_counter_reg[16]_i_1_n_1 ;
  wire \sec_counter_reg[16]_i_1_n_2 ;
  wire \sec_counter_reg[16]_i_1_n_3 ;
  wire \sec_counter_reg[16]_i_1_n_4 ;
  wire \sec_counter_reg[16]_i_1_n_5 ;
  wire \sec_counter_reg[16]_i_1_n_6 ;
  wire \sec_counter_reg[16]_i_1_n_7 ;
  wire \sec_counter_reg[20]_i_1_n_0 ;
  wire \sec_counter_reg[20]_i_1_n_1 ;
  wire \sec_counter_reg[20]_i_1_n_2 ;
  wire \sec_counter_reg[20]_i_1_n_3 ;
  wire \sec_counter_reg[20]_i_1_n_4 ;
  wire \sec_counter_reg[20]_i_1_n_5 ;
  wire \sec_counter_reg[20]_i_1_n_6 ;
  wire \sec_counter_reg[20]_i_1_n_7 ;
  wire \sec_counter_reg[24]_i_1_n_0 ;
  wire \sec_counter_reg[24]_i_1_n_1 ;
  wire \sec_counter_reg[24]_i_1_n_2 ;
  wire \sec_counter_reg[24]_i_1_n_3 ;
  wire \sec_counter_reg[24]_i_1_n_4 ;
  wire \sec_counter_reg[24]_i_1_n_5 ;
  wire \sec_counter_reg[24]_i_1_n_6 ;
  wire \sec_counter_reg[24]_i_1_n_7 ;
  wire \sec_counter_reg[28]_i_1_n_1 ;
  wire \sec_counter_reg[28]_i_1_n_2 ;
  wire \sec_counter_reg[28]_i_1_n_3 ;
  wire \sec_counter_reg[28]_i_1_n_4 ;
  wire \sec_counter_reg[28]_i_1_n_5 ;
  wire \sec_counter_reg[28]_i_1_n_6 ;
  wire \sec_counter_reg[28]_i_1_n_7 ;
  wire \sec_counter_reg[4]_i_1_n_0 ;
  wire \sec_counter_reg[4]_i_1_n_1 ;
  wire \sec_counter_reg[4]_i_1_n_2 ;
  wire \sec_counter_reg[4]_i_1_n_3 ;
  wire \sec_counter_reg[4]_i_1_n_4 ;
  wire \sec_counter_reg[4]_i_1_n_5 ;
  wire \sec_counter_reg[4]_i_1_n_6 ;
  wire \sec_counter_reg[4]_i_1_n_7 ;
  wire \sec_counter_reg[8]_i_1_n_0 ;
  wire \sec_counter_reg[8]_i_1_n_1 ;
  wire \sec_counter_reg[8]_i_1_n_2 ;
  wire \sec_counter_reg[8]_i_1_n_3 ;
  wire \sec_counter_reg[8]_i_1_n_4 ;
  wire \sec_counter_reg[8]_i_1_n_5 ;
  wire \sec_counter_reg[8]_i_1_n_6 ;
  wire \sec_counter_reg[8]_i_1_n_7 ;
  wire \seconds[0]_i_1_n_0 ;
  wire \seconds[1]_i_1_n_0 ;
  wire \seconds[2]_i_1_n_0 ;
  wire \seconds[3]_i_1_n_0 ;
  wire \seconds[3]_i_2_n_0 ;
  wire \seconds[4]_i_1_n_0 ;
  wire \seconds[5]_i_10_n_0 ;
  wire \seconds[5]_i_11_n_0 ;
  wire \seconds[5]_i_1_n_0 ;
  wire \seconds[5]_i_2_n_0 ;
  wire \seconds[5]_i_3_n_0 ;
  wire \seconds[5]_i_4_n_0 ;
  wire \seconds[5]_i_5_n_0 ;
  wire \seconds[5]_i_6_n_0 ;
  wire \seconds[5]_i_7_n_0 ;
  wire \seconds[5]_i_8_n_0 ;
  wire \seconds[5]_i_9_n_0 ;
  wire \seconds_reg_n_0_[0] ;
  wire \seconds_reg_n_0_[1] ;
  wire \seconds_reg_n_0_[2] ;
  wire \seconds_reg_n_0_[3] ;
  wire \seconds_reg_n_0_[4] ;
  wire \seconds_reg_n_0_[5] ;
  wire \slv_reg0[5]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg1[5]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg2[4]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[0] ;
  wire \slv_reg2_reg_n_0_[1] ;
  wire \slv_reg2_reg_n_0_[2] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire \slv_reg2_reg_n_0_[4] ;
  wire [31:0]slv_reg3;
  wire slv_reg_rden;
  wire slv_reg_wren__2;
  wire [3:3]\NLW_sec_counter_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hBFFF8CCC8CCC8CCC)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(p_0_in));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in_0[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in_0[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in_0[0]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg3[0]),
        .I1(\minutes_reg_n_0_[0] ),
        .I2(axi_araddr[2]),
        .I3(\hours_reg_n_0_[0] ),
        .I4(axi_araddr[3]),
        .I5(\seconds_reg_n_0_[0] ),
        .O(reg_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[10]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[10]),
        .O(reg_data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[11]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[11]),
        .O(reg_data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[12]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[12]),
        .O(reg_data_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[13]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[13]),
        .O(reg_data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[14]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[14]),
        .O(reg_data_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[15]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[15]),
        .O(reg_data_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[16]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[16]),
        .O(reg_data_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[17]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[17]),
        .O(reg_data_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[18]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[18]),
        .O(reg_data_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[19]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg3[1]),
        .I1(\minutes_reg_n_0_[1] ),
        .I2(axi_araddr[2]),
        .I3(\hours_reg_n_0_[1] ),
        .I4(axi_araddr[3]),
        .I5(\seconds_reg_n_0_[1] ),
        .O(reg_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[20]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[20]),
        .O(reg_data_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[21]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[21]),
        .O(reg_data_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[22]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[22]),
        .O(reg_data_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[23]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[23]),
        .O(reg_data_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[24]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[24]),
        .O(reg_data_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[25]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[25]),
        .O(reg_data_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[26]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[26]),
        .O(reg_data_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[27]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[27]),
        .O(reg_data_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[28]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[28]),
        .O(reg_data_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[29]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg3[2]),
        .I1(\minutes_reg_n_0_[2] ),
        .I2(axi_araddr[2]),
        .I3(\hours_reg_n_0_[2] ),
        .I4(axi_araddr[3]),
        .I5(\seconds_reg_n_0_[2] ),
        .O(reg_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[30]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[30]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[31]_i_2 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg3[3]),
        .I1(\minutes_reg_n_0_[3] ),
        .I2(axi_araddr[2]),
        .I3(\hours_reg_n_0_[3] ),
        .I4(axi_araddr[3]),
        .I5(\seconds_reg_n_0_[3] ),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg3[4]),
        .I1(\minutes_reg_n_0_[4] ),
        .I2(axi_araddr[2]),
        .I3(\hours_reg_n_0_[4] ),
        .I4(axi_araddr[3]),
        .I5(\seconds_reg_n_0_[4] ),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg3[5]),
        .I1(\minutes_reg_n_0_[5] ),
        .I2(axi_araddr[2]),
        .I3(\seconds_reg_n_0_[5] ),
        .I4(axi_araddr[3]),
        .O(reg_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[6]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[6]),
        .O(reg_data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[7]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[7]),
        .O(reg_data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[8]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[8]),
        .O(reg_data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[9]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg3[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h88B8)) 
    \hours[0]_i_1 
       (.I0(\slv_reg2_reg_n_0_[0] ),
        .I1(\sec_counter[0]_i_1_n_0 ),
        .I2(\hours[4]_i_4_n_0 ),
        .I3(\hours_reg_n_0_[0] ),
        .O(\hours[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8BB88888)) 
    \hours[1]_i_1 
       (.I0(\slv_reg2_reg_n_0_[1] ),
        .I1(\sec_counter[0]_i_1_n_0 ),
        .I2(\hours_reg_n_0_[1] ),
        .I3(\hours_reg_n_0_[0] ),
        .I4(\hours[4]_i_4_n_0 ),
        .O(\hours[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B8B888888888)) 
    \hours[2]_i_1 
       (.I0(\slv_reg2_reg_n_0_[2] ),
        .I1(\sec_counter[0]_i_1_n_0 ),
        .I2(\hours_reg_n_0_[2] ),
        .I3(\hours_reg_n_0_[1] ),
        .I4(\hours_reg_n_0_[0] ),
        .I5(\hours[4]_i_4_n_0 ),
        .O(\hours[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8BB88888)) 
    \hours[3]_i_1 
       (.I0(\slv_reg2_reg_n_0_[3] ),
        .I1(\sec_counter[0]_i_1_n_0 ),
        .I2(\hours_reg_n_0_[3] ),
        .I3(\hours[4]_i_3_n_0 ),
        .I4(\hours[4]_i_4_n_0 ),
        .O(\hours[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \hours[4]_i_1 
       (.I0(\sec_counter[0]_i_1_n_0 ),
        .I1(\seconds[5]_i_5_n_0 ),
        .I2(\minutes[5]_i_4_n_0 ),
        .I3(\seconds[5]_i_3_n_0 ),
        .O(\hours[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B8B888888888)) 
    \hours[4]_i_2 
       (.I0(\slv_reg2_reg_n_0_[4] ),
        .I1(\sec_counter[0]_i_1_n_0 ),
        .I2(\hours_reg_n_0_[4] ),
        .I3(\hours_reg_n_0_[3] ),
        .I4(\hours[4]_i_3_n_0 ),
        .I5(\hours[4]_i_4_n_0 ),
        .O(\hours[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \hours[4]_i_3 
       (.I0(\hours_reg_n_0_[2] ),
        .I1(\hours_reg_n_0_[0] ),
        .I2(\hours_reg_n_0_[1] ),
        .O(\hours[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \hours[4]_i_4 
       (.I0(\hours_reg_n_0_[3] ),
        .I1(\hours_reg_n_0_[2] ),
        .I2(\hours_reg_n_0_[1] ),
        .I3(\hours_reg_n_0_[0] ),
        .I4(\hours_reg_n_0_[4] ),
        .O(\hours[4]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hours_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\hours[4]_i_1_n_0 ),
        .D(\hours[0]_i_1_n_0 ),
        .Q(\hours_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hours_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\hours[4]_i_1_n_0 ),
        .D(\hours[1]_i_1_n_0 ),
        .Q(\hours_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hours_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\hours[4]_i_1_n_0 ),
        .D(\hours[2]_i_1_n_0 ),
        .Q(\hours_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hours_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\hours[4]_i_1_n_0 ),
        .D(\hours[3]_i_1_n_0 ),
        .Q(\hours_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hours_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\hours[4]_i_1_n_0 ),
        .D(\hours[4]_i_2_n_0 ),
        .Q(\hours_reg_n_0_[4] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h888B)) 
    \minutes[0]_i_1 
       (.I0(\slv_reg1_reg_n_0_[0] ),
        .I1(\sec_counter[0]_i_1_n_0 ),
        .I2(\minutes[5]_i_4_n_0 ),
        .I3(\minutes_reg_n_0_[0] ),
        .O(\minutes[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \minutes[1]_i_1 
       (.I0(\slv_reg1_reg_n_0_[1] ),
        .I1(\sec_counter[0]_i_1_n_0 ),
        .I2(\minutes_reg_n_0_[1] ),
        .I3(\minutes_reg_n_0_[0] ),
        .I4(\minutes[5]_i_4_n_0 ),
        .O(\minutes[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888BB8B8B8)) 
    \minutes[2]_i_1 
       (.I0(\slv_reg1_reg_n_0_[2] ),
        .I1(\sec_counter[0]_i_1_n_0 ),
        .I2(\minutes_reg_n_0_[2] ),
        .I3(\minutes_reg_n_0_[0] ),
        .I4(\minutes_reg_n_0_[1] ),
        .I5(\minutes[5]_i_4_n_0 ),
        .O(\minutes[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8B88BB8)) 
    \minutes[3]_i_1 
       (.I0(\slv_reg1_reg_n_0_[3] ),
        .I1(\sec_counter[0]_i_1_n_0 ),
        .I2(\minutes_reg_n_0_[3] ),
        .I3(\minutes_reg_n_0_[2] ),
        .I4(\minutes[3]_i_2_n_0 ),
        .I5(\minutes[5]_i_4_n_0 ),
        .O(\minutes[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \minutes[3]_i_2 
       (.I0(\minutes_reg_n_0_[0] ),
        .I1(\minutes_reg_n_0_[1] ),
        .O(\minutes[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \minutes[4]_i_1 
       (.I0(\slv_reg1_reg_n_0_[4] ),
        .I1(\sec_counter[0]_i_1_n_0 ),
        .I2(\minutes_reg_n_0_[4] ),
        .I3(\minutes[5]_i_3_n_0 ),
        .I4(\minutes[5]_i_4_n_0 ),
        .O(\minutes[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \minutes[5]_i_1 
       (.I0(\sec_counter[0]_i_1_n_0 ),
        .I1(\seconds[5]_i_5_n_0 ),
        .I2(\seconds[5]_i_3_n_0 ),
        .O(\minutes[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888BB8B8B8)) 
    \minutes[5]_i_2 
       (.I0(\slv_reg1_reg_n_0_[5] ),
        .I1(\sec_counter[0]_i_1_n_0 ),
        .I2(\minutes_reg_n_0_[5] ),
        .I3(\minutes_reg_n_0_[4] ),
        .I4(\minutes[5]_i_3_n_0 ),
        .I5(\minutes[5]_i_4_n_0 ),
        .O(\minutes[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \minutes[5]_i_3 
       (.I0(\minutes_reg_n_0_[3] ),
        .I1(\minutes_reg_n_0_[0] ),
        .I2(\minutes_reg_n_0_[1] ),
        .I3(\minutes_reg_n_0_[2] ),
        .O(\minutes[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \minutes[5]_i_4 
       (.I0(\minutes_reg_n_0_[2] ),
        .I1(\minutes_reg_n_0_[5] ),
        .I2(\minutes_reg_n_0_[4] ),
        .I3(\minutes_reg_n_0_[3] ),
        .I4(\minutes_reg_n_0_[0] ),
        .I5(\minutes_reg_n_0_[1] ),
        .O(\minutes[5]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minutes_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\minutes[5]_i_1_n_0 ),
        .D(\minutes[0]_i_1_n_0 ),
        .Q(\minutes_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minutes_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\minutes[5]_i_1_n_0 ),
        .D(\minutes[1]_i_1_n_0 ),
        .Q(\minutes_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minutes_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\minutes[5]_i_1_n_0 ),
        .D(\minutes[2]_i_1_n_0 ),
        .Q(\minutes_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minutes_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\minutes[5]_i_1_n_0 ),
        .D(\minutes[3]_i_1_n_0 ),
        .Q(\minutes_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minutes_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\minutes[5]_i_1_n_0 ),
        .D(\minutes[4]_i_1_n_0 ),
        .Q(\minutes_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minutes_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\minutes[5]_i_1_n_0 ),
        .D(\minutes[5]_i_2_n_0 ),
        .Q(\minutes_reg_n_0_[5] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h02FF)) 
    \sec_counter[0]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(s00_axi_aresetn),
        .O(\sec_counter[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[0]_i_3 
       (.I0(sec_counter_reg[0]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[0]_i_4 
       (.I0(sec_counter_reg[3]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[0]_i_5 
       (.I0(sec_counter_reg[2]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[0]_i_6 
       (.I0(sec_counter_reg[1]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sec_counter[0]_i_7 
       (.I0(sec_counter_reg[0]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[12]_i_2 
       (.I0(sec_counter_reg[15]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[12]_i_3 
       (.I0(sec_counter_reg[14]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[12]_i_4 
       (.I0(sec_counter_reg[13]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[12]_i_5 
       (.I0(sec_counter_reg[12]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[16]_i_2 
       (.I0(sec_counter_reg[19]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[16]_i_3 
       (.I0(sec_counter_reg[18]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[16]_i_4 
       (.I0(sec_counter_reg[17]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[16]_i_5 
       (.I0(sec_counter_reg[16]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[20]_i_2 
       (.I0(sec_counter_reg[23]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[20]_i_3 
       (.I0(sec_counter_reg[22]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[20]_i_4 
       (.I0(sec_counter_reg[21]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[20]_i_5 
       (.I0(sec_counter_reg[20]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[24]_i_2 
       (.I0(sec_counter_reg[27]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[24]_i_3 
       (.I0(sec_counter_reg[26]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[24]_i_4 
       (.I0(sec_counter_reg[25]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[24]_i_5 
       (.I0(sec_counter_reg[24]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[28]_i_2 
       (.I0(sec_counter_reg[31]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[28]_i_3 
       (.I0(sec_counter_reg[30]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[28]_i_4 
       (.I0(sec_counter_reg[29]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[28]_i_5 
       (.I0(sec_counter_reg[28]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[4]_i_2 
       (.I0(sec_counter_reg[7]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[4]_i_3 
       (.I0(sec_counter_reg[6]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[4]_i_4 
       (.I0(sec_counter_reg[5]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[4]_i_5 
       (.I0(sec_counter_reg[4]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[8]_i_2 
       (.I0(sec_counter_reg[11]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[8]_i_3 
       (.I0(sec_counter_reg[10]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[8]_i_4 
       (.I0(sec_counter_reg[9]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_counter[8]_i_5 
       (.I0(sec_counter_reg[8]),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\sec_counter[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[0]_i_2_n_7 ),
        .Q(sec_counter_reg[0]),
        .R(\sec_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sec_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\sec_counter_reg[0]_i_2_n_0 ,\sec_counter_reg[0]_i_2_n_1 ,\sec_counter_reg[0]_i_2_n_2 ,\sec_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\sec_counter[0]_i_3_n_0 }),
        .O({\sec_counter_reg[0]_i_2_n_4 ,\sec_counter_reg[0]_i_2_n_5 ,\sec_counter_reg[0]_i_2_n_6 ,\sec_counter_reg[0]_i_2_n_7 }),
        .S({\sec_counter[0]_i_4_n_0 ,\sec_counter[0]_i_5_n_0 ,\sec_counter[0]_i_6_n_0 ,\sec_counter[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[8]_i_1_n_5 ),
        .Q(sec_counter_reg[10]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[8]_i_1_n_4 ),
        .Q(sec_counter_reg[11]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[12]_i_1_n_7 ),
        .Q(sec_counter_reg[12]),
        .R(\sec_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sec_counter_reg[12]_i_1 
       (.CI(\sec_counter_reg[8]_i_1_n_0 ),
        .CO({\sec_counter_reg[12]_i_1_n_0 ,\sec_counter_reg[12]_i_1_n_1 ,\sec_counter_reg[12]_i_1_n_2 ,\sec_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sec_counter_reg[12]_i_1_n_4 ,\sec_counter_reg[12]_i_1_n_5 ,\sec_counter_reg[12]_i_1_n_6 ,\sec_counter_reg[12]_i_1_n_7 }),
        .S({\sec_counter[12]_i_2_n_0 ,\sec_counter[12]_i_3_n_0 ,\sec_counter[12]_i_4_n_0 ,\sec_counter[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[12]_i_1_n_6 ),
        .Q(sec_counter_reg[13]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[12]_i_1_n_5 ),
        .Q(sec_counter_reg[14]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[12]_i_1_n_4 ),
        .Q(sec_counter_reg[15]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[16]_i_1_n_7 ),
        .Q(sec_counter_reg[16]),
        .R(\sec_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sec_counter_reg[16]_i_1 
       (.CI(\sec_counter_reg[12]_i_1_n_0 ),
        .CO({\sec_counter_reg[16]_i_1_n_0 ,\sec_counter_reg[16]_i_1_n_1 ,\sec_counter_reg[16]_i_1_n_2 ,\sec_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sec_counter_reg[16]_i_1_n_4 ,\sec_counter_reg[16]_i_1_n_5 ,\sec_counter_reg[16]_i_1_n_6 ,\sec_counter_reg[16]_i_1_n_7 }),
        .S({\sec_counter[16]_i_2_n_0 ,\sec_counter[16]_i_3_n_0 ,\sec_counter[16]_i_4_n_0 ,\sec_counter[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[16]_i_1_n_6 ),
        .Q(sec_counter_reg[17]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[16]_i_1_n_5 ),
        .Q(sec_counter_reg[18]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[16]_i_1_n_4 ),
        .Q(sec_counter_reg[19]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[0]_i_2_n_6 ),
        .Q(sec_counter_reg[1]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[20]_i_1_n_7 ),
        .Q(sec_counter_reg[20]),
        .R(\sec_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sec_counter_reg[20]_i_1 
       (.CI(\sec_counter_reg[16]_i_1_n_0 ),
        .CO({\sec_counter_reg[20]_i_1_n_0 ,\sec_counter_reg[20]_i_1_n_1 ,\sec_counter_reg[20]_i_1_n_2 ,\sec_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sec_counter_reg[20]_i_1_n_4 ,\sec_counter_reg[20]_i_1_n_5 ,\sec_counter_reg[20]_i_1_n_6 ,\sec_counter_reg[20]_i_1_n_7 }),
        .S({\sec_counter[20]_i_2_n_0 ,\sec_counter[20]_i_3_n_0 ,\sec_counter[20]_i_4_n_0 ,\sec_counter[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[20]_i_1_n_6 ),
        .Q(sec_counter_reg[21]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[20]_i_1_n_5 ),
        .Q(sec_counter_reg[22]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[20]_i_1_n_4 ),
        .Q(sec_counter_reg[23]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[24]_i_1_n_7 ),
        .Q(sec_counter_reg[24]),
        .R(\sec_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sec_counter_reg[24]_i_1 
       (.CI(\sec_counter_reg[20]_i_1_n_0 ),
        .CO({\sec_counter_reg[24]_i_1_n_0 ,\sec_counter_reg[24]_i_1_n_1 ,\sec_counter_reg[24]_i_1_n_2 ,\sec_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sec_counter_reg[24]_i_1_n_4 ,\sec_counter_reg[24]_i_1_n_5 ,\sec_counter_reg[24]_i_1_n_6 ,\sec_counter_reg[24]_i_1_n_7 }),
        .S({\sec_counter[24]_i_2_n_0 ,\sec_counter[24]_i_3_n_0 ,\sec_counter[24]_i_4_n_0 ,\sec_counter[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[24]_i_1_n_6 ),
        .Q(sec_counter_reg[25]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[24]_i_1_n_5 ),
        .Q(sec_counter_reg[26]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[24]_i_1_n_4 ),
        .Q(sec_counter_reg[27]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[28]_i_1_n_7 ),
        .Q(sec_counter_reg[28]),
        .R(\sec_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sec_counter_reg[28]_i_1 
       (.CI(\sec_counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_sec_counter_reg[28]_i_1_CO_UNCONNECTED [3],\sec_counter_reg[28]_i_1_n_1 ,\sec_counter_reg[28]_i_1_n_2 ,\sec_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sec_counter_reg[28]_i_1_n_4 ,\sec_counter_reg[28]_i_1_n_5 ,\sec_counter_reg[28]_i_1_n_6 ,\sec_counter_reg[28]_i_1_n_7 }),
        .S({\sec_counter[28]_i_2_n_0 ,\sec_counter[28]_i_3_n_0 ,\sec_counter[28]_i_4_n_0 ,\sec_counter[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[28]_i_1_n_6 ),
        .Q(sec_counter_reg[29]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[0]_i_2_n_5 ),
        .Q(sec_counter_reg[2]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[28]_i_1_n_5 ),
        .Q(sec_counter_reg[30]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[28]_i_1_n_4 ),
        .Q(sec_counter_reg[31]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[0]_i_2_n_4 ),
        .Q(sec_counter_reg[3]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[4]_i_1_n_7 ),
        .Q(sec_counter_reg[4]),
        .R(\sec_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sec_counter_reg[4]_i_1 
       (.CI(\sec_counter_reg[0]_i_2_n_0 ),
        .CO({\sec_counter_reg[4]_i_1_n_0 ,\sec_counter_reg[4]_i_1_n_1 ,\sec_counter_reg[4]_i_1_n_2 ,\sec_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sec_counter_reg[4]_i_1_n_4 ,\sec_counter_reg[4]_i_1_n_5 ,\sec_counter_reg[4]_i_1_n_6 ,\sec_counter_reg[4]_i_1_n_7 }),
        .S({\sec_counter[4]_i_2_n_0 ,\sec_counter[4]_i_3_n_0 ,\sec_counter[4]_i_4_n_0 ,\sec_counter[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[4]_i_1_n_6 ),
        .Q(sec_counter_reg[5]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[4]_i_1_n_5 ),
        .Q(sec_counter_reg[6]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[4]_i_1_n_4 ),
        .Q(sec_counter_reg[7]),
        .R(\sec_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[8]_i_1_n_7 ),
        .Q(sec_counter_reg[8]),
        .R(\sec_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sec_counter_reg[8]_i_1 
       (.CI(\sec_counter_reg[4]_i_1_n_0 ),
        .CO({\sec_counter_reg[8]_i_1_n_0 ,\sec_counter_reg[8]_i_1_n_1 ,\sec_counter_reg[8]_i_1_n_2 ,\sec_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sec_counter_reg[8]_i_1_n_4 ,\sec_counter_reg[8]_i_1_n_5 ,\sec_counter_reg[8]_i_1_n_6 ,\sec_counter_reg[8]_i_1_n_7 }),
        .S({\sec_counter[8]_i_2_n_0 ,\sec_counter[8]_i_3_n_0 ,\sec_counter[8]_i_4_n_0 ,\sec_counter[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sec_counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sec_counter_reg[8]_i_1_n_6 ),
        .Q(sec_counter_reg[9]),
        .R(\sec_counter[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h888B)) 
    \seconds[0]_i_1 
       (.I0(\slv_reg0_reg_n_0_[0] ),
        .I1(\sec_counter[0]_i_1_n_0 ),
        .I2(\seconds[5]_i_5_n_0 ),
        .I3(\seconds_reg_n_0_[0] ),
        .O(\seconds[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \seconds[1]_i_1 
       (.I0(\slv_reg0_reg_n_0_[1] ),
        .I1(\sec_counter[0]_i_1_n_0 ),
        .I2(\seconds_reg_n_0_[1] ),
        .I3(\seconds_reg_n_0_[0] ),
        .I4(\seconds[5]_i_5_n_0 ),
        .O(\seconds[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888BB8B8B8)) 
    \seconds[2]_i_1 
       (.I0(\slv_reg0_reg_n_0_[2] ),
        .I1(\sec_counter[0]_i_1_n_0 ),
        .I2(\seconds_reg_n_0_[2] ),
        .I3(\seconds_reg_n_0_[0] ),
        .I4(\seconds_reg_n_0_[1] ),
        .I5(\seconds[5]_i_5_n_0 ),
        .O(\seconds[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8B88BB8)) 
    \seconds[3]_i_1 
       (.I0(\slv_reg0_reg_n_0_[3] ),
        .I1(\sec_counter[0]_i_1_n_0 ),
        .I2(\seconds_reg_n_0_[3] ),
        .I3(\seconds_reg_n_0_[2] ),
        .I4(\seconds[3]_i_2_n_0 ),
        .I5(\seconds[5]_i_5_n_0 ),
        .O(\seconds[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \seconds[3]_i_2 
       (.I0(\seconds_reg_n_0_[0] ),
        .I1(\seconds_reg_n_0_[1] ),
        .O(\seconds[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888BB8)) 
    \seconds[4]_i_1 
       (.I0(\slv_reg0_reg_n_0_[4] ),
        .I1(\sec_counter[0]_i_1_n_0 ),
        .I2(\seconds_reg_n_0_[4] ),
        .I3(\seconds[5]_i_4_n_0 ),
        .I4(\seconds[5]_i_5_n_0 ),
        .O(\seconds[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \seconds[5]_i_1 
       (.I0(\sec_counter[0]_i_1_n_0 ),
        .I1(\seconds[5]_i_3_n_0 ),
        .O(\seconds[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \seconds[5]_i_10 
       (.I0(sec_counter_reg[30]),
        .I1(sec_counter_reg[31]),
        .O(\seconds[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \seconds[5]_i_11 
       (.I0(sec_counter_reg[1]),
        .I1(sec_counter_reg[2]),
        .I2(sec_counter_reg[0]),
        .I3(sec_counter_reg[4]),
        .I4(sec_counter_reg[5]),
        .I5(sec_counter_reg[3]),
        .O(\seconds[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h888888888BB8B8B8)) 
    \seconds[5]_i_2 
       (.I0(\slv_reg0_reg_n_0_[5] ),
        .I1(\sec_counter[0]_i_1_n_0 ),
        .I2(\seconds_reg_n_0_[5] ),
        .I3(\seconds_reg_n_0_[4] ),
        .I4(\seconds[5]_i_4_n_0 ),
        .I5(\seconds[5]_i_5_n_0 ),
        .O(\seconds[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \seconds[5]_i_3 
       (.I0(\seconds[5]_i_6_n_0 ),
        .I1(\seconds[5]_i_7_n_0 ),
        .I2(\seconds[5]_i_8_n_0 ),
        .I3(\seconds[5]_i_9_n_0 ),
        .I4(\seconds[5]_i_10_n_0 ),
        .I5(\seconds[5]_i_11_n_0 ),
        .O(\seconds[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \seconds[5]_i_4 
       (.I0(\seconds_reg_n_0_[3] ),
        .I1(\seconds_reg_n_0_[0] ),
        .I2(\seconds_reg_n_0_[1] ),
        .I3(\seconds_reg_n_0_[2] ),
        .O(\seconds[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \seconds[5]_i_5 
       (.I0(\seconds_reg_n_0_[2] ),
        .I1(\seconds_reg_n_0_[5] ),
        .I2(\seconds_reg_n_0_[4] ),
        .I3(\seconds_reg_n_0_[3] ),
        .I4(\seconds_reg_n_0_[0] ),
        .I5(\seconds_reg_n_0_[1] ),
        .O(\seconds[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \seconds[5]_i_6 
       (.I0(sec_counter_reg[26]),
        .I1(sec_counter_reg[25]),
        .I2(sec_counter_reg[24]),
        .I3(sec_counter_reg[27]),
        .I4(sec_counter_reg[28]),
        .I5(sec_counter_reg[29]),
        .O(\seconds[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \seconds[5]_i_7 
       (.I0(sec_counter_reg[7]),
        .I1(sec_counter_reg[8]),
        .I2(sec_counter_reg[6]),
        .I3(sec_counter_reg[9]),
        .I4(sec_counter_reg[10]),
        .I5(sec_counter_reg[11]),
        .O(\seconds[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \seconds[5]_i_8 
       (.I0(sec_counter_reg[20]),
        .I1(sec_counter_reg[19]),
        .I2(sec_counter_reg[18]),
        .I3(sec_counter_reg[22]),
        .I4(sec_counter_reg[23]),
        .I5(sec_counter_reg[21]),
        .O(\seconds[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFFFFFFFFFF)) 
    \seconds[5]_i_9 
       (.I0(sec_counter_reg[12]),
        .I1(sec_counter_reg[13]),
        .I2(sec_counter_reg[14]),
        .I3(sec_counter_reg[16]),
        .I4(sec_counter_reg[17]),
        .I5(sec_counter_reg[15]),
        .O(\seconds[5]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seconds_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\seconds[5]_i_1_n_0 ),
        .D(\seconds[0]_i_1_n_0 ),
        .Q(\seconds_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seconds_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\seconds[5]_i_1_n_0 ),
        .D(\seconds[1]_i_1_n_0 ),
        .Q(\seconds_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seconds_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\seconds[5]_i_1_n_0 ),
        .D(\seconds[2]_i_1_n_0 ),
        .Q(\seconds_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seconds_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\seconds[5]_i_1_n_0 ),
        .D(\seconds[3]_i_1_n_0 ),
        .Q(\seconds_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seconds_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\seconds[5]_i_1_n_0 ),
        .D(\seconds[4]_i_1_n_0 ),
        .Q(\seconds_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seconds_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\seconds[5]_i_1_n_0 ),
        .D(\seconds[5]_i_2_n_0 ),
        .Q(\seconds_reg_n_0_[5] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[5]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[5]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[5]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[5]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[5]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[5]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[5]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[5]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[5]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in_0[0]),
        .O(\slv_reg1[5]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[5]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[5]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[5]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[5]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[5]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[5]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[4]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in_0[0]),
        .O(\slv_reg2[4]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[4]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg2_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[4]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg2_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[4]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg2_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[4]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[4]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg2_reg_n_0_[4] ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(p_0_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

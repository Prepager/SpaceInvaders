-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: digilentinc.com:IP:axi_ps2:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY hdmi_in_axi_ps2_0_0 IS
  PORT (
    PS2_Data_I : IN STD_LOGIC;
    PS2_Data_O : OUT STD_LOGIC;
    PS2_Data_T : OUT STD_LOGIC;
    PS2_Clk_I : IN STD_LOGIC;
    PS2_Clk_O : OUT STD_LOGIC;
    PS2_Clk_T : OUT STD_LOGIC;
    PS2_interrupt : OUT STD_LOGIC;
    S_AXI_awaddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    S_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S_AXI_awvalid : IN STD_LOGIC;
    S_AXI_awready : OUT STD_LOGIC;
    S_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S_AXI_wvalid : IN STD_LOGIC;
    S_AXI_wready : OUT STD_LOGIC;
    S_AXI_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_bvalid : OUT STD_LOGIC;
    S_AXI_bready : IN STD_LOGIC;
    S_AXI_araddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    S_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S_AXI_arvalid : IN STD_LOGIC;
    S_AXI_arready : OUT STD_LOGIC;
    S_AXI_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_rvalid : OUT STD_LOGIC;
    S_AXI_rready : IN STD_LOGIC;
    S_AXI_aclk : IN STD_LOGIC;
    S_AXI_aresetn : IN STD_LOGIC
  );
END hdmi_in_axi_ps2_0_0;

ARCHITECTURE hdmi_in_axi_ps2_0_0_arch OF hdmi_in_axi_ps2_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF hdmi_in_axi_ps2_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT axi_ps2_v1_0 IS
    GENERIC (
      C_S_AXI_DATA_WIDTH : INTEGER; -- Width of S_AXI data bus
      C_S_AXI_ADDR_WIDTH : INTEGER -- Width of S_AXI address bus
    );
    PORT (
      PS2_Data_I : IN STD_LOGIC;
      PS2_Data_O : OUT STD_LOGIC;
      PS2_Data_T : OUT STD_LOGIC;
      PS2_Clk_I : IN STD_LOGIC;
      PS2_Clk_O : OUT STD_LOGIC;
      PS2_Clk_T : OUT STD_LOGIC;
      PS2_interrupt : OUT STD_LOGIC;
      S_AXI_awaddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      S_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S_AXI_awvalid : IN STD_LOGIC;
      S_AXI_awready : OUT STD_LOGIC;
      S_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S_AXI_wvalid : IN STD_LOGIC;
      S_AXI_wready : OUT STD_LOGIC;
      S_AXI_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S_AXI_bvalid : OUT STD_LOGIC;
      S_AXI_bready : IN STD_LOGIC;
      S_AXI_araddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      S_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S_AXI_arvalid : IN STD_LOGIC;
      S_AXI_arready : OUT STD_LOGIC;
      S_AXI_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXI_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S_AXI_rvalid : OUT STD_LOGIC;
      S_AXI_rready : IN STD_LOGIC;
      S_AXI_aclk : IN STD_LOGIC;
      S_AXI_aresetn : IN STD_LOGIC
    );
  END COMPONENT axi_ps2_v1_0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF hdmi_in_axi_ps2_0_0_arch: ARCHITECTURE IS "axi_ps2_v1_0,Vivado 2018.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF hdmi_in_axi_ps2_0_0_arch : ARCHITECTURE IS "hdmi_in_axi_ps2_0_0,axi_ps2_v1_0,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF S_AXI_aresetn: SIGNAL IS "XIL_INTERFACENAME S_AXI_aresetn, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S_AXI_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF S_AXI_aclk: SIGNAL IS "XIL_INTERFACENAME S_AXI_aclk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN hdmi_in_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S_AXI_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF S_AXI_awaddr: SIGNAL IS "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN hdmi_in_processing_system7_0_" & 
"0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF PS2_interrupt: SIGNAL IS "XIL_INTERFACENAME PS2_interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF PS2_interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 PS2_interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF PS2_Clk_T: SIGNAL IS "xilinx.com:interface:gpio:1.0 PS2_Clk TRI_T";
  ATTRIBUTE X_INTERFACE_INFO OF PS2_Clk_O: SIGNAL IS "xilinx.com:interface:gpio:1.0 PS2_Clk TRI_O";
  ATTRIBUTE X_INTERFACE_INFO OF PS2_Clk_I: SIGNAL IS "xilinx.com:interface:gpio:1.0 PS2_Clk TRI_I";
  ATTRIBUTE X_INTERFACE_INFO OF PS2_Data_T: SIGNAL IS "xilinx.com:interface:gpio:1.0 PS2_Data TRI_T";
  ATTRIBUTE X_INTERFACE_INFO OF PS2_Data_O: SIGNAL IS "xilinx.com:interface:gpio:1.0 PS2_Data TRI_O";
  ATTRIBUTE X_INTERFACE_INFO OF PS2_Data_I: SIGNAL IS "xilinx.com:interface:gpio:1.0 PS2_Data TRI_I";
BEGIN
  U0 : axi_ps2_v1_0
    GENERIC MAP (
      C_S_AXI_DATA_WIDTH => 32,
      C_S_AXI_ADDR_WIDTH => 5
    )
    PORT MAP (
      PS2_Data_I => PS2_Data_I,
      PS2_Data_O => PS2_Data_O,
      PS2_Data_T => PS2_Data_T,
      PS2_Clk_I => PS2_Clk_I,
      PS2_Clk_O => PS2_Clk_O,
      PS2_Clk_T => PS2_Clk_T,
      PS2_interrupt => PS2_interrupt,
      S_AXI_awaddr => S_AXI_awaddr,
      S_AXI_awprot => S_AXI_awprot,
      S_AXI_awvalid => S_AXI_awvalid,
      S_AXI_awready => S_AXI_awready,
      S_AXI_wdata => S_AXI_wdata,
      S_AXI_wstrb => S_AXI_wstrb,
      S_AXI_wvalid => S_AXI_wvalid,
      S_AXI_wready => S_AXI_wready,
      S_AXI_bresp => S_AXI_bresp,
      S_AXI_bvalid => S_AXI_bvalid,
      S_AXI_bready => S_AXI_bready,
      S_AXI_araddr => S_AXI_araddr,
      S_AXI_arprot => S_AXI_arprot,
      S_AXI_arvalid => S_AXI_arvalid,
      S_AXI_arready => S_AXI_arready,
      S_AXI_rdata => S_AXI_rdata,
      S_AXI_rresp => S_AXI_rresp,
      S_AXI_rvalid => S_AXI_rvalid,
      S_AXI_rready => S_AXI_rready,
      S_AXI_aclk => S_AXI_aclk,
      S_AXI_aresetn => S_AXI_aresetn
    );
END hdmi_in_axi_ps2_0_0_arch;

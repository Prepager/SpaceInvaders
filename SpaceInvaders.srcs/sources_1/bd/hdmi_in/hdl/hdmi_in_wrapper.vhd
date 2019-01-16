--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Wed Jan 16 11:02:20 2019
--Host        : DESKTOP-ND2U3FO running 64-bit major release  (build 9200)
--Command     : generate_target hdmi_in_wrapper.bd
--Design      : hdmi_in_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_in_wrapper is
  port (
    BCLK : out STD_LOGIC;
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FCLK_CLK2 : out STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    IIC_0_scl_io : inout STD_LOGIC;
    IIC_0_sda_io : inout STD_LOGIC;
    Mute_tri_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    PBDATA : out STD_LOGIC;
    PBLRCLK : out STD_LOGIC;
    RECDAT_0 : in STD_LOGIC;
    RECLRCLK : out STD_LOGIC;
    btns_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_tri_io : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    sws_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    vga_hs : out STD_LOGIC;
    vga_r : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_vs : out STD_LOGIC
  );
end hdmi_in_wrapper;

architecture STRUCTURE of hdmi_in_wrapper is
  component hdmi_in is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    btns_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_tri_t : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sws_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IIC_0_sda_i : in STD_LOGIC;
    IIC_0_sda_o : out STD_LOGIC;
    IIC_0_sda_t : out STD_LOGIC;
    IIC_0_scl_i : in STD_LOGIC;
    IIC_0_scl_o : out STD_LOGIC;
    IIC_0_scl_t : out STD_LOGIC;
    Mute_tri_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mute_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    Mute_tri_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    vga_b : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    vga_hs : out STD_LOGIC;
    vga_r : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_vs : out STD_LOGIC;
    RECDAT_0 : in STD_LOGIC;
    BCLK : out STD_LOGIC;
    PBLRCLK : out STD_LOGIC;
    RECLRCLK : out STD_LOGIC;
    PBDATA : out STD_LOGIC;
    FCLK_CLK2 : out STD_LOGIC
  );
  end component hdmi_in;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal IIC_0_scl_i : STD_LOGIC;
  signal IIC_0_scl_o : STD_LOGIC;
  signal IIC_0_scl_t : STD_LOGIC;
  signal IIC_0_sda_i : STD_LOGIC;
  signal IIC_0_sda_o : STD_LOGIC;
  signal IIC_0_sda_t : STD_LOGIC;
  signal Mute_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Mute_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Mute_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Mute_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal leds_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal leds_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal leds_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal leds_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal leds_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal leds_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal leds_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal leds_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal leds_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal leds_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal leds_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal leds_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal leds_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal leds_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal leds_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal leds_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
begin
IIC_0_scl_iobuf: component IOBUF
     port map (
      I => IIC_0_scl_o,
      IO => IIC_0_scl_io,
      O => IIC_0_scl_i,
      T => IIC_0_scl_t
    );
IIC_0_sda_iobuf: component IOBUF
     port map (
      I => IIC_0_sda_o,
      IO => IIC_0_sda_io,
      O => IIC_0_sda_i,
      T => IIC_0_sda_t
    );
Mute_tri_iobuf_0: component IOBUF
     port map (
      I => Mute_tri_o_0(0),
      IO => Mute_tri_io(0),
      O => Mute_tri_i_0(0),
      T => Mute_tri_t_0(0)
    );
hdmi_in_i: component hdmi_in
     port map (
      BCLK => BCLK,
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FCLK_CLK2 => FCLK_CLK2,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      IIC_0_scl_i => IIC_0_scl_i,
      IIC_0_scl_o => IIC_0_scl_o,
      IIC_0_scl_t => IIC_0_scl_t,
      IIC_0_sda_i => IIC_0_sda_i,
      IIC_0_sda_o => IIC_0_sda_o,
      IIC_0_sda_t => IIC_0_sda_t,
      Mute_tri_i(0) => Mute_tri_i_0(0),
      Mute_tri_o(0) => Mute_tri_o_0(0),
      Mute_tri_t(0) => Mute_tri_t_0(0),
      PBDATA => PBDATA,
      PBLRCLK => PBLRCLK,
      RECDAT_0 => RECDAT_0,
      RECLRCLK => RECLRCLK,
      btns_tri_i(3 downto 0) => btns_tri_i(3 downto 0),
      leds_tri_i(3) => leds_tri_i_3(3),
      leds_tri_i(2) => leds_tri_i_2(2),
      leds_tri_i(1) => leds_tri_i_1(1),
      leds_tri_i(0) => leds_tri_i_0(0),
      leds_tri_o(3) => leds_tri_o_3(3),
      leds_tri_o(2) => leds_tri_o_2(2),
      leds_tri_o(1) => leds_tri_o_1(1),
      leds_tri_o(0) => leds_tri_o_0(0),
      leds_tri_t(3) => leds_tri_t_3(3),
      leds_tri_t(2) => leds_tri_t_2(2),
      leds_tri_t(1) => leds_tri_t_1(1),
      leds_tri_t(0) => leds_tri_t_0(0),
      sws_tri_i(3 downto 0) => sws_tri_i(3 downto 0),
      vga_b(4 downto 0) => vga_b(4 downto 0),
      vga_g(5 downto 0) => vga_g(5 downto 0),
      vga_hs => vga_hs,
      vga_r(4 downto 0) => vga_r(4 downto 0),
      vga_vs => vga_vs
    );
leds_tri_iobuf_0: component IOBUF
     port map (
      I => leds_tri_o_0(0),
      IO => leds_tri_io(0),
      O => leds_tri_i_0(0),
      T => leds_tri_t_0(0)
    );
leds_tri_iobuf_1: component IOBUF
     port map (
      I => leds_tri_o_1(1),
      IO => leds_tri_io(1),
      O => leds_tri_i_1(1),
      T => leds_tri_t_1(1)
    );
leds_tri_iobuf_2: component IOBUF
     port map (
      I => leds_tri_o_2(2),
      IO => leds_tri_io(2),
      O => leds_tri_i_2(2),
      T => leds_tri_t_2(2)
    );
leds_tri_iobuf_3: component IOBUF
     port map (
      I => leds_tri_o_3(3),
      IO => leds_tri_io(3),
      O => leds_tri_i_3(3),
      T => leds_tri_t_3(3)
    );
end STRUCTURE;

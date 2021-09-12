-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "08/26/2021 14:44:20"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ram IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	we : IN std_logic;
	addr : IN std_logic_vector(15 DOWNTO 0);
	data_in : IN std_logic_vector(15 DOWNTO 0);
	data_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END ram;

-- Design Ports Information
-- addr[4]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[5]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[7]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[8]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[10]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[11]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[12]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[13]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[14]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[15]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[0]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[8]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[9]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[10]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[11]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[12]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[13]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[14]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[15]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ram IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_we : std_logic;
SIGNAL ww_addr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \addr[4]~input_o\ : std_logic;
SIGNAL \addr[5]~input_o\ : std_logic;
SIGNAL \addr[6]~input_o\ : std_logic;
SIGNAL \addr[7]~input_o\ : std_logic;
SIGNAL \addr[8]~input_o\ : std_logic;
SIGNAL \addr[9]~input_o\ : std_logic;
SIGNAL \addr[10]~input_o\ : std_logic;
SIGNAL \addr[11]~input_o\ : std_logic;
SIGNAL \addr[12]~input_o\ : std_logic;
SIGNAL \addr[13]~input_o\ : std_logic;
SIGNAL \addr[14]~input_o\ : std_logic;
SIGNAL \addr[15]~input_o\ : std_logic;
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \data_out[8]~output_o\ : std_logic;
SIGNAL \data_out[9]~output_o\ : std_logic;
SIGNAL \data_out[10]~output_o\ : std_logic;
SIGNAL \data_out[11]~output_o\ : std_logic;
SIGNAL \data_out[12]~output_o\ : std_logic;
SIGNAL \data_out[13]~output_o\ : std_logic;
SIGNAL \data_out[14]~output_o\ : std_logic;
SIGNAL \data_out[15]~output_o\ : std_logic;
SIGNAL \we~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \ram~21_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \ram~22_combout\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \addr[3]~input_o\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \ram~23_combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \ram~24_combout\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \ram~25_combout\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \ram~26_combout\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \ram~27_combout\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \ram~28_combout\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \ram~29_combout\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \ram~30_combout\ : std_logic;
SIGNAL \data_in[9]~input_o\ : std_logic;
SIGNAL \ram~31_combout\ : std_logic;
SIGNAL \data_in[10]~input_o\ : std_logic;
SIGNAL \ram~32_combout\ : std_logic;
SIGNAL \data_in[11]~input_o\ : std_logic;
SIGNAL \ram~33_combout\ : std_logic;
SIGNAL \data_in[12]~input_o\ : std_logic;
SIGNAL \ram~34_combout\ : std_logic;
SIGNAL \data_in[13]~input_o\ : std_logic;
SIGNAL \ram~35_combout\ : std_logic;
SIGNAL \data_in[14]~input_o\ : std_logic;
SIGNAL \ram~36_combout\ : std_logic;
SIGNAL \data_in[15]~input_o\ : std_logic;
SIGNAL \ram~37_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_we <= we;
ww_addr <= addr;
ww_data_in <= data_in;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \ram~37_combout\ & \ram~36_combout\ & \ram~35_combout\ & \ram~34_combout\ & \ram~33_combout\ & \ram~32_combout\ & \ram~31_combout\ & \ram~30_combout\ & \ram~29_combout\ & 
\ram~28_combout\ & \ram~27_combout\ & \ram~26_combout\ & \ram~25_combout\ & \ram~24_combout\ & \ram~23_combout\ & \ram~22_combout\);

\ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\ram_rtl_0|auto_generated|ram_block1a1\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\ram_rtl_0|auto_generated|ram_block1a2\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\ram_rtl_0|auto_generated|ram_block1a3\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\ram_rtl_0|auto_generated|ram_block1a4\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\ram_rtl_0|auto_generated|ram_block1a5\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\ram_rtl_0|auto_generated|ram_block1a6\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\ram_rtl_0|auto_generated|ram_block1a7\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\ram_rtl_0|auto_generated|ram_block1a8\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\ram_rtl_0|auto_generated|ram_block1a9\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\ram_rtl_0|auto_generated|ram_block1a10\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\ram_rtl_0|auto_generated|ram_block1a11\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\ram_rtl_0|auto_generated|ram_block1a12\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\ram_rtl_0|auto_generated|ram_block1a13\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\ram_rtl_0|auto_generated|ram_block1a14\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\ram_rtl_0|auto_generated|ram_block1a15\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X38_Y0_N2
\data_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X52_Y10_N2
\data_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\data_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X46_Y0_N16
\data_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X52_Y13_N2
\data_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\data_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\data_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\data_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOOBUF_X52_Y9_N2
\data_out[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => \data_out[8]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\data_out[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => \data_out[9]~output_o\);

-- Location: IOOBUF_X38_Y41_N2
\data_out[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => \data_out[10]~output_o\);

-- Location: IOOBUF_X52_Y15_N9
\data_out[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => \data_out[11]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\data_out[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => \data_out[12]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\data_out[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => \data_out[13]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\data_out[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => \data_out[14]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\data_out[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => \data_out[15]~output_o\);

-- Location: IOIBUF_X46_Y0_N8
\we~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_we,
	o => \we~input_o\);

-- Location: IOIBUF_X52_Y12_N1
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X41_Y9_N8
\ram~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~21_combout\ = (\we~input_o\) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datad => \rst~input_o\,
	combout => \ram~21_combout\);

-- Location: IOIBUF_X27_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X43_Y0_N1
\data_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X41_Y9_N10
\ram~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~22_combout\ = (\data_in[0]~input_o\ & \we~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[0]~input_o\,
	datad => \we~input_o\,
	combout => \ram~22_combout\);

-- Location: IOIBUF_X52_Y11_N1
\addr[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: IOIBUF_X41_Y0_N22
\addr[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: IOIBUF_X52_Y11_N8
\addr[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(2),
	o => \addr[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\addr[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(3),
	o => \addr[3]~input_o\);

-- Location: IOIBUF_X41_Y0_N15
\data_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X41_Y9_N12
\ram~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~23_combout\ = (\data_in[1]~input_o\ & \we~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[1]~input_o\,
	datad => \we~input_o\,
	combout => \ram~23_combout\);

-- Location: IOIBUF_X52_Y13_N8
\data_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LCCOMB_X41_Y9_N14
\ram~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~24_combout\ = (\data_in[2]~input_o\ & \we~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	datad => \we~input_o\,
	combout => \ram~24_combout\);

-- Location: IOIBUF_X41_Y0_N8
\data_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X41_Y9_N24
\ram~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~25_combout\ = (\data_in[3]~input_o\ & \we~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	datad => \we~input_o\,
	combout => \ram~25_combout\);

-- Location: IOIBUF_X46_Y0_N1
\data_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: LCCOMB_X42_Y1_N24
\ram~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~26_combout\ = (\we~input_o\ & \data_in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datac => \data_in[4]~input_o\,
	combout => \ram~26_combout\);

-- Location: IOIBUF_X52_Y12_N8
\data_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: LCCOMB_X41_Y9_N18
\ram~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~27_combout\ = (\we~input_o\ & \data_in[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datad => \data_in[5]~input_o\,
	combout => \ram~27_combout\);

-- Location: IOIBUF_X52_Y16_N1
\data_in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: LCCOMB_X41_Y9_N20
\ram~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~28_combout\ = (\we~input_o\ & \data_in[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datad => \data_in[6]~input_o\,
	combout => \ram~28_combout\);

-- Location: IOIBUF_X52_Y18_N8
\data_in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: LCCOMB_X41_Y9_N30
\ram~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~29_combout\ = (\we~input_o\ & \data_in[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datad => \data_in[7]~input_o\,
	combout => \ram~29_combout\);

-- Location: IOIBUF_X48_Y0_N8
\data_in[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: LCCOMB_X41_Y9_N0
\ram~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~30_combout\ = (\we~input_o\ & \data_in[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datad => \data_in[8]~input_o\,
	combout => \ram~30_combout\);

-- Location: IOIBUF_X52_Y19_N8
\data_in[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: LCCOMB_X41_Y9_N26
\ram~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~31_combout\ = (\we~input_o\ & \data_in[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datad => \data_in[9]~input_o\,
	combout => \ram~31_combout\);

-- Location: IOIBUF_X41_Y0_N1
\data_in[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

-- Location: LCCOMB_X41_Y9_N28
\ram~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~32_combout\ = (\data_in[10]~input_o\ & \we~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[10]~input_o\,
	datad => \we~input_o\,
	combout => \ram~32_combout\);

-- Location: IOIBUF_X52_Y18_N1
\data_in[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(11),
	o => \data_in[11]~input_o\);

-- Location: LCCOMB_X41_Y9_N22
\ram~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~33_combout\ = (\we~input_o\ & \data_in[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datac => \data_in[11]~input_o\,
	combout => \ram~33_combout\);

-- Location: IOIBUF_X52_Y15_N1
\data_in[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(12),
	o => \data_in[12]~input_o\);

-- Location: LCCOMB_X41_Y9_N16
\ram~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~34_combout\ = (\we~input_o\ & \data_in[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datad => \data_in[12]~input_o\,
	combout => \ram~34_combout\);

-- Location: IOIBUF_X52_Y9_N8
\data_in[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(13),
	o => \data_in[13]~input_o\);

-- Location: LCCOMB_X41_Y9_N2
\ram~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~35_combout\ = (\we~input_o\ & \data_in[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datad => \data_in[13]~input_o\,
	combout => \ram~35_combout\);

-- Location: IOIBUF_X52_Y10_N8
\data_in[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(14),
	o => \data_in[14]~input_o\);

-- Location: LCCOMB_X41_Y9_N4
\ram~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~36_combout\ = (\data_in[14]~input_o\ & \we~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[14]~input_o\,
	datad => \we~input_o\,
	combout => \ram~36_combout\);

-- Location: IOIBUF_X52_Y16_N8
\data_in[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(15),
	o => \data_in[15]~input_o\);

-- Location: LCCOMB_X41_Y9_N6
\ram~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~37_combout\ = (\we~input_o\ & \data_in[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datad => \data_in[15]~input_o\,
	combout => \ram~37_combout\);

-- Location: M9K_X40_Y9_N0
\ram_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_tf81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram~21_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X27_Y0_N8
\addr[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(4),
	o => \addr[4]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\addr[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(5),
	o => \addr[5]~input_o\);

-- Location: IOIBUF_X41_Y41_N22
\addr[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(6),
	o => \addr[6]~input_o\);

-- Location: IOIBUF_X16_Y41_N1
\addr[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(7),
	o => \addr[7]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\addr[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(8),
	o => \addr[8]~input_o\);

-- Location: IOIBUF_X52_Y27_N8
\addr[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(9),
	o => \addr[9]~input_o\);

-- Location: IOIBUF_X52_Y28_N8
\addr[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(10),
	o => \addr[10]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\addr[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(11),
	o => \addr[11]~input_o\);

-- Location: IOIBUF_X52_Y32_N8
\addr[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(12),
	o => \addr[12]~input_o\);

-- Location: IOIBUF_X31_Y41_N15
\addr[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(13),
	o => \addr[13]~input_o\);

-- Location: IOIBUF_X5_Y41_N1
\addr[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(14),
	o => \addr[14]~input_o\);

-- Location: IOIBUF_X48_Y0_N1
\addr[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(15),
	o => \addr[15]~input_o\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;

ww_data_out(8) <= \data_out[8]~output_o\;

ww_data_out(9) <= \data_out[9]~output_o\;

ww_data_out(10) <= \data_out[10]~output_o\;

ww_data_out(11) <= \data_out[11]~output_o\;

ww_data_out(12) <= \data_out[12]~output_o\;

ww_data_out(13) <= \data_out[13]~output_o\;

ww_data_out(14) <= \data_out[14]~output_o\;

ww_data_out(15) <= \data_out[15]~output_o\;
END structure;



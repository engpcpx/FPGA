-- Copyright (C) 1991-2010 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 10.0 Build 218 06/27/2010 SJ Web Edition"

-- DATE "09/05/2021 21:42:32"

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
-- addr[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[8]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[10]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[11]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[12]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[13]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[14]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[15]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[8]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[9]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[10]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[11]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[12]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[13]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[14]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[15]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
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
SIGNAL \data_in[10]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \we~input_o\ : std_logic;
SIGNAL \ram~22_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \ram~23_combout\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \addr[3]~input_o\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \ram~24_combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \ram~25_combout\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \ram~26_combout\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \ram~27_combout\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \ram~28_combout\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \ram~29_combout\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \ram~30_combout\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \ram~31_combout\ : std_logic;
SIGNAL \data_in[9]~input_o\ : std_logic;
SIGNAL \ram~32_combout\ : std_logic;
SIGNAL \ram~33_combout\ : std_logic;
SIGNAL \data_in[11]~input_o\ : std_logic;
SIGNAL \ram~34_combout\ : std_logic;
SIGNAL \data_in[12]~input_o\ : std_logic;
SIGNAL \ram~35_combout\ : std_logic;
SIGNAL \data_in[13]~input_o\ : std_logic;
SIGNAL \ram~36_combout\ : std_logic;
SIGNAL \data_in[14]~input_o\ : std_logic;
SIGNAL \ram~37_combout\ : std_logic;
SIGNAL \data_in[15]~input_o\ : std_logic;
SIGNAL \ram~38_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
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

\ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \ram~38_combout\ & \ram~37_combout\ & \ram~36_combout\ & \ram~35_combout\
& \ram~34_combout\ & \ram~33_combout\ & \ram~32_combout\ & \ram~31_combout\ & \ram~30_combout\ & \ram~29_combout\ & \ram~28_combout\ & \ram~27_combout\ & \ram~26_combout\ & \ram~25_combout\ & \ram~24_combout\ & \ram~23_combout\);

\ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\addr[3]~input_o\ & \addr[2]~input_o\ & \addr[1]~input_o\ & \addr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\ram_rtl_0|auto_generated|ram_block1a1\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\ram_rtl_0|auto_generated|ram_block1a2\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\ram_rtl_0|auto_generated|ram_block1a3\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\ram_rtl_0|auto_generated|ram_block1a4\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\ram_rtl_0|auto_generated|ram_block1a5\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\ram_rtl_0|auto_generated|ram_block1a6\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\ram_rtl_0|auto_generated|ram_block1a7\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\ram_rtl_0|auto_generated|ram_block1a8\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\ram_rtl_0|auto_generated|ram_block1a9\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\ram_rtl_0|auto_generated|ram_block1a10\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\ram_rtl_0|auto_generated|ram_block1a11\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\ram_rtl_0|auto_generated|ram_block1a12\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\ram_rtl_0|auto_generated|ram_block1a13\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\ram_rtl_0|auto_generated|ram_block1a14\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\ram_rtl_0|auto_generated|ram_block1a15\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOIBUF_X38_Y41_N8
\data_in[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

-- Location: IOOBUF_X36_Y41_N2
\data_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => ww_data_out(0));

-- Location: IOOBUF_X38_Y0_N2
\data_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => ww_data_out(1));

-- Location: IOOBUF_X52_Y31_N9
\data_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => ww_data_out(2));

-- Location: IOOBUF_X52_Y30_N2
\data_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => ww_data_out(3));

-- Location: IOOBUF_X52_Y27_N9
\data_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => ww_data_out(4));

-- Location: IOOBUF_X52_Y28_N2
\data_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => ww_data_out(5));

-- Location: IOOBUF_X52_Y23_N2
\data_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => ww_data_out(6));

-- Location: IOOBUF_X52_Y28_N9
\data_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => ww_data_out(7));

-- Location: IOOBUF_X52_Y11_N9
\data_out[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => ww_data_out(8));

-- Location: IOOBUF_X41_Y0_N2
\data_out[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => ww_data_out(9));

-- Location: IOOBUF_X52_Y25_N2
\data_out[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => ww_data_out(10));

-- Location: IOOBUF_X41_Y41_N23
\data_out[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => ww_data_out(11));

-- Location: IOOBUF_X36_Y41_N9
\data_out[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => ww_data_out(12));

-- Location: IOOBUF_X52_Y32_N9
\data_out[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => ww_data_out(13));

-- Location: IOOBUF_X52_Y31_N2
\data_out[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => ww_data_out(14));

-- Location: IOOBUF_X52_Y27_N2
\data_out[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => ww_data_out(15));

-- Location: IOIBUF_X36_Y0_N8
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X52_Y18_N1
\we~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_we,
	o => \we~input_o\);

-- Location: LCCOMB_X39_Y30_N24
\ram~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~22_combout\ = (\rst~input_o\) # (\we~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \we~input_o\,
	combout => \ram~22_combout\);

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

-- Location: IOIBUF_X36_Y0_N1
\data_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X39_Y30_N26
\ram~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~23_combout\ = (\we~input_o\ & \data_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datac => \data_in[0]~input_o\,
	combout => \ram~23_combout\);

-- Location: IOIBUF_X41_Y41_N15
\addr[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: IOIBUF_X41_Y0_N8
\addr[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\addr[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(2),
	o => \addr[2]~input_o\);

-- Location: IOIBUF_X52_Y30_N8
\addr[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(3),
	o => \addr[3]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\data_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X39_Y30_N20
\ram~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~24_combout\ = (\data_in[1]~input_o\ & \we~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[1]~input_o\,
	datac => \we~input_o\,
	combout => \ram~24_combout\);

-- Location: IOIBUF_X18_Y0_N8
\data_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LCCOMB_X39_Y30_N30
\ram~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~25_combout\ = (\we~input_o\ & \data_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datac => \data_in[2]~input_o\,
	combout => \ram~25_combout\);

-- Location: IOIBUF_X16_Y0_N1
\data_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X39_Y30_N8
\ram~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~26_combout\ = (\data_in[3]~input_o\ & \we~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[3]~input_o\,
	datac => \we~input_o\,
	combout => \ram~26_combout\);

-- Location: IOIBUF_X31_Y0_N8
\data_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: LCCOMB_X39_Y30_N18
\ram~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~27_combout\ = (\we~input_o\ & \data_in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datac => \data_in[4]~input_o\,
	combout => \ram~27_combout\);

-- Location: IOIBUF_X16_Y41_N8
\data_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: LCCOMB_X39_Y30_N4
\ram~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~28_combout\ = (\we~input_o\ & \data_in[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datac => \data_in[5]~input_o\,
	combout => \ram~28_combout\);

-- Location: IOIBUF_X34_Y0_N8
\data_in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: LCCOMB_X39_Y30_N6
\ram~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~29_combout\ = (\we~input_o\ & \data_in[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datac => \data_in[6]~input_o\,
	combout => \ram~29_combout\);

-- Location: IOIBUF_X31_Y0_N1
\data_in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: LCCOMB_X39_Y30_N0
\ram~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~30_combout\ = (\we~input_o\ & \data_in[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datac => \data_in[7]~input_o\,
	combout => \ram~30_combout\);

-- Location: IOIBUF_X43_Y41_N1
\data_in[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: LCCOMB_X39_Y30_N10
\ram~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~31_combout\ = (\we~input_o\ & \data_in[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datac => \data_in[8]~input_o\,
	combout => \ram~31_combout\);

-- Location: IOIBUF_X38_Y41_N1
\data_in[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: LCCOMB_X39_Y30_N12
\ram~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~32_combout\ = (\we~input_o\ & \data_in[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datac => \data_in[9]~input_o\,
	combout => \ram~32_combout\);

-- Location: LCCOMB_X39_Y30_N14
\ram~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~33_combout\ = (\data_in[10]~input_o\ & \we~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[10]~input_o\,
	datac => \we~input_o\,
	combout => \ram~33_combout\);

-- Location: IOIBUF_X34_Y0_N1
\data_in[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(11),
	o => \data_in[11]~input_o\);

-- Location: LCCOMB_X39_Y30_N16
\ram~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~34_combout\ = (\we~input_o\ & \data_in[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datac => \data_in[11]~input_o\,
	combout => \ram~34_combout\);

-- Location: IOIBUF_X29_Y41_N1
\data_in[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(12),
	o => \data_in[12]~input_o\);

-- Location: LCCOMB_X39_Y30_N2
\ram~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~35_combout\ = (\data_in[12]~input_o\ & \we~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[12]~input_o\,
	datac => \we~input_o\,
	combout => \ram~35_combout\);

-- Location: IOIBUF_X41_Y0_N15
\data_in[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(13),
	o => \data_in[13]~input_o\);

-- Location: LCCOMB_X39_Y30_N28
\ram~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~36_combout\ = (\data_in[13]~input_o\ & \we~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[13]~input_o\,
	datac => \we~input_o\,
	combout => \ram~36_combout\);

-- Location: IOIBUF_X52_Y32_N1
\data_in[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(14),
	o => \data_in[14]~input_o\);

-- Location: LCCOMB_X39_Y30_N22
\ram~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~37_combout\ = (\we~input_o\ & \data_in[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \we~input_o\,
	datad => \data_in[14]~input_o\,
	combout => \ram~37_combout\);

-- Location: IOIBUF_X52_Y18_N8
\data_in[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(15),
	o => \data_in[15]~input_o\);

-- Location: LCCOMB_X42_Y23_N16
\ram~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~38_combout\ = (\we~input_o\ & \data_in[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \we~input_o\,
	datad => \data_in[15]~input_o\,
	combout => \ram~38_combout\);

-- Location: M9K_X40_Y30_N0
\ram_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_e0h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram~22_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

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

-- Location: IOIBUF_X12_Y41_N8
\addr[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(6),
	o => \addr[6]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\addr[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(7),
	o => \addr[7]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\addr[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(8),
	o => \addr[8]~input_o\);

-- Location: IOIBUF_X23_Y41_N1
\addr[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(9),
	o => \addr[9]~input_o\);

-- Location: IOIBUF_X12_Y41_N1
\addr[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(10),
	o => \addr[10]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\addr[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(11),
	o => \addr[11]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\addr[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(12),
	o => \addr[12]~input_o\);

-- Location: IOIBUF_X3_Y41_N1
\addr[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(13),
	o => \addr[13]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\addr[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(14),
	o => \addr[14]~input_o\);

-- Location: IOIBUF_X52_Y16_N1
\addr[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(15),
	o => \addr[15]~input_o\);
END structure;



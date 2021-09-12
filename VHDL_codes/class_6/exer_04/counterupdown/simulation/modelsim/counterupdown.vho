-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "09/12/2021 00:52:49"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counterupdown IS
    PORT (
	i_clk : IN std_logic;
	i_counter_buttom : IN std_logic;
	i_load_key : IN std_logic;
	i_data_key : IN std_logic_vector(3 DOWNTO 0);
	i_sel_ud_down : IN std_logic;
	o_leds : OUT std_logic_vector(3 DOWNTO 0)
	);
END counterupdown;

-- Design Ports Information
-- o_leds[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_leds[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_leds[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_leds[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_key[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_load_key	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_counter_buttom	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_key[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_key[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data_key[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_sel_ud_down	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counterupdown IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_counter_buttom : std_logic;
SIGNAL ww_i_load_key : std_logic;
SIGNAL ww_i_data_key : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_sel_ud_down : std_logic;
SIGNAL ww_o_leds : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_leds[0]~output_o\ : std_logic;
SIGNAL \o_leds[1]~output_o\ : std_logic;
SIGNAL \o_leds[2]~output_o\ : std_logic;
SIGNAL \o_leds[3]~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_counter_buttom~input_o\ : std_logic;
SIGNAL \i_sel_ud_down~input_o\ : std_logic;
SIGNAL \p_counter~0_combout\ : std_logic;
SIGNAL \s_counter[0]~29_combout\ : std_logic;
SIGNAL \i_load_key~input_o\ : std_logic;
SIGNAL \s_counter[25]~81_combout\ : std_logic;
SIGNAL \s_counter[0]~30\ : std_logic;
SIGNAL \s_counter[1]~31_combout\ : std_logic;
SIGNAL \s_counter[1]~32\ : std_logic;
SIGNAL \s_counter[2]~33_combout\ : std_logic;
SIGNAL \s_counter[2]~34\ : std_logic;
SIGNAL \s_counter[3]~35_combout\ : std_logic;
SIGNAL \s_counter[3]~36\ : std_logic;
SIGNAL \s_counter[4]~37_combout\ : std_logic;
SIGNAL \s_counter[4]~38\ : std_logic;
SIGNAL \s_counter[5]~39_combout\ : std_logic;
SIGNAL \s_counter[5]~40\ : std_logic;
SIGNAL \s_counter[6]~41_combout\ : std_logic;
SIGNAL \s_counter[6]~42\ : std_logic;
SIGNAL \s_counter[7]~43_combout\ : std_logic;
SIGNAL \s_counter[7]~44\ : std_logic;
SIGNAL \s_counter[8]~45_combout\ : std_logic;
SIGNAL \s_counter[8]~46\ : std_logic;
SIGNAL \s_counter[9]~47_combout\ : std_logic;
SIGNAL \s_counter[9]~48\ : std_logic;
SIGNAL \s_counter[10]~49_combout\ : std_logic;
SIGNAL \s_counter[10]~50\ : std_logic;
SIGNAL \s_counter[11]~51_combout\ : std_logic;
SIGNAL \s_counter[11]~52\ : std_logic;
SIGNAL \s_counter[12]~53_combout\ : std_logic;
SIGNAL \s_counter[12]~54\ : std_logic;
SIGNAL \s_counter[13]~55_combout\ : std_logic;
SIGNAL \s_counter[13]~56\ : std_logic;
SIGNAL \s_counter[14]~57_combout\ : std_logic;
SIGNAL \s_counter[14]~58\ : std_logic;
SIGNAL \s_counter[15]~59_combout\ : std_logic;
SIGNAL \s_counter[15]~60\ : std_logic;
SIGNAL \s_counter[16]~61_combout\ : std_logic;
SIGNAL \s_counter[16]~62\ : std_logic;
SIGNAL \s_counter[17]~63_combout\ : std_logic;
SIGNAL \s_counter[17]~64\ : std_logic;
SIGNAL \s_counter[18]~65_combout\ : std_logic;
SIGNAL \s_counter[18]~66\ : std_logic;
SIGNAL \s_counter[19]~67_combout\ : std_logic;
SIGNAL \s_counter[19]~68\ : std_logic;
SIGNAL \s_counter[20]~69_combout\ : std_logic;
SIGNAL \s_counter[20]~70\ : std_logic;
SIGNAL \s_counter[21]~71_combout\ : std_logic;
SIGNAL \s_counter[21]~72\ : std_logic;
SIGNAL \s_counter[22]~73_combout\ : std_logic;
SIGNAL \s_counter[22]~74\ : std_logic;
SIGNAL \s_counter[23]~75_combout\ : std_logic;
SIGNAL \s_counter[23]~76\ : std_logic;
SIGNAL \s_counter[24]~77_combout\ : std_logic;
SIGNAL \s_counter[24]~78\ : std_logic;
SIGNAL \s_counter[25]~79_combout\ : std_logic;
SIGNAL \i_data_key[0]~input_o\ : std_logic;
SIGNAL \o_leds~0_combout\ : std_logic;
SIGNAL \o_leds[1]~1_combout\ : std_logic;
SIGNAL \o_leds[0]~reg0_q\ : std_logic;
SIGNAL \s_counter[25]~80\ : std_logic;
SIGNAL \s_counter[26]~82_combout\ : std_logic;
SIGNAL \i_data_key[1]~input_o\ : std_logic;
SIGNAL \o_leds~2_combout\ : std_logic;
SIGNAL \o_leds[1]~reg0_q\ : std_logic;
SIGNAL \i_data_key[2]~input_o\ : std_logic;
SIGNAL \s_counter[26]~83\ : std_logic;
SIGNAL \s_counter[27]~84_combout\ : std_logic;
SIGNAL \o_leds~3_combout\ : std_logic;
SIGNAL \o_leds[2]~reg0_q\ : std_logic;
SIGNAL \s_counter[27]~85\ : std_logic;
SIGNAL \s_counter[28]~86_combout\ : std_logic;
SIGNAL \i_data_key[3]~input_o\ : std_logic;
SIGNAL \o_leds~4_combout\ : std_logic;
SIGNAL \o_leds[3]~reg0_q\ : std_logic;
SIGNAL s_counter : std_logic_vector(28 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_clk <= i_clk;
ww_i_counter_buttom <= i_counter_buttom;
ww_i_load_key <= i_load_key;
ww_i_data_key <= i_data_key;
ww_i_sel_ud_down <= i_sel_ud_down;
o_leds <= ww_o_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\o_leds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_leds[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_leds[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\o_leds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_leds[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_leds[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\o_leds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_leds[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_leds[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\o_leds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_leds[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_leds[3]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\i_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G4
\i_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\i_counter_buttom~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_counter_buttom,
	o => \i_counter_buttom~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\i_sel_ud_down~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sel_ud_down,
	o => \i_sel_ud_down~input_o\);

-- Location: LCCOMB_X114_Y22_N18
\p_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_counter~0_combout\ = (\i_counter_buttom~input_o\ & \i_sel_ud_down~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_counter_buttom~input_o\,
	datad => \i_sel_ud_down~input_o\,
	combout => \p_counter~0_combout\);

-- Location: LCCOMB_X113_Y23_N4
\s_counter[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[0]~29_combout\ = s_counter(0) $ (VCC)
-- \s_counter[0]~30\ = CARRY(s_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_counter(0),
	datad => VCC,
	combout => \s_counter[0]~29_combout\,
	cout => \s_counter[0]~30\);

-- Location: IOIBUF_X115_Y18_N8
\i_load_key~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_load_key,
	o => \i_load_key~input_o\);

-- Location: LCCOMB_X114_Y22_N0
\s_counter[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[25]~81_combout\ = (\i_counter_buttom~input_o\ & !\i_load_key~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_counter_buttom~input_o\,
	datad => \i_load_key~input_o\,
	combout => \s_counter[25]~81_combout\);

-- Location: FF_X113_Y23_N5
\s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[0]~29_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(0));

-- Location: LCCOMB_X113_Y23_N6
\s_counter[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[1]~31_combout\ = (s_counter(1) & ((\p_counter~0_combout\ & (!\s_counter[0]~30\)) # (!\p_counter~0_combout\ & (\s_counter[0]~30\ & VCC)))) # (!s_counter(1) & ((\p_counter~0_combout\ & ((\s_counter[0]~30\) # (GND))) # (!\p_counter~0_combout\ & 
-- (!\s_counter[0]~30\))))
-- \s_counter[1]~32\ = CARRY((s_counter(1) & (\p_counter~0_combout\ & !\s_counter[0]~30\)) # (!s_counter(1) & ((\p_counter~0_combout\) # (!\s_counter[0]~30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(1),
	datab => \p_counter~0_combout\,
	datad => VCC,
	cin => \s_counter[0]~30\,
	combout => \s_counter[1]~31_combout\,
	cout => \s_counter[1]~32\);

-- Location: FF_X113_Y23_N7
\s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[1]~31_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(1));

-- Location: LCCOMB_X113_Y23_N8
\s_counter[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[2]~33_combout\ = ((\p_counter~0_combout\ $ (s_counter(2) $ (\s_counter[1]~32\)))) # (GND)
-- \s_counter[2]~34\ = CARRY((\p_counter~0_combout\ & (s_counter(2) & !\s_counter[1]~32\)) # (!\p_counter~0_combout\ & ((s_counter(2)) # (!\s_counter[1]~32\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter~0_combout\,
	datab => s_counter(2),
	datad => VCC,
	cin => \s_counter[1]~32\,
	combout => \s_counter[2]~33_combout\,
	cout => \s_counter[2]~34\);

-- Location: FF_X113_Y23_N9
\s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[2]~33_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(2));

-- Location: LCCOMB_X113_Y23_N10
\s_counter[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[3]~35_combout\ = (s_counter(3) & ((\p_counter~0_combout\ & (!\s_counter[2]~34\)) # (!\p_counter~0_combout\ & (\s_counter[2]~34\ & VCC)))) # (!s_counter(3) & ((\p_counter~0_combout\ & ((\s_counter[2]~34\) # (GND))) # (!\p_counter~0_combout\ & 
-- (!\s_counter[2]~34\))))
-- \s_counter[3]~36\ = CARRY((s_counter(3) & (\p_counter~0_combout\ & !\s_counter[2]~34\)) # (!s_counter(3) & ((\p_counter~0_combout\) # (!\s_counter[2]~34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(3),
	datab => \p_counter~0_combout\,
	datad => VCC,
	cin => \s_counter[2]~34\,
	combout => \s_counter[3]~35_combout\,
	cout => \s_counter[3]~36\);

-- Location: FF_X113_Y23_N11
\s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[3]~35_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(3));

-- Location: LCCOMB_X113_Y23_N12
\s_counter[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[4]~37_combout\ = ((s_counter(4) $ (\p_counter~0_combout\ $ (\s_counter[3]~36\)))) # (GND)
-- \s_counter[4]~38\ = CARRY((s_counter(4) & ((!\s_counter[3]~36\) # (!\p_counter~0_combout\))) # (!s_counter(4) & (!\p_counter~0_combout\ & !\s_counter[3]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(4),
	datab => \p_counter~0_combout\,
	datad => VCC,
	cin => \s_counter[3]~36\,
	combout => \s_counter[4]~37_combout\,
	cout => \s_counter[4]~38\);

-- Location: FF_X113_Y23_N13
\s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[4]~37_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(4));

-- Location: LCCOMB_X113_Y23_N14
\s_counter[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[5]~39_combout\ = (\p_counter~0_combout\ & ((s_counter(5) & (!\s_counter[4]~38\)) # (!s_counter(5) & ((\s_counter[4]~38\) # (GND))))) # (!\p_counter~0_combout\ & ((s_counter(5) & (\s_counter[4]~38\ & VCC)) # (!s_counter(5) & 
-- (!\s_counter[4]~38\))))
-- \s_counter[5]~40\ = CARRY((\p_counter~0_combout\ & ((!\s_counter[4]~38\) # (!s_counter(5)))) # (!\p_counter~0_combout\ & (!s_counter(5) & !\s_counter[4]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter~0_combout\,
	datab => s_counter(5),
	datad => VCC,
	cin => \s_counter[4]~38\,
	combout => \s_counter[5]~39_combout\,
	cout => \s_counter[5]~40\);

-- Location: FF_X113_Y23_N15
\s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[5]~39_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(5));

-- Location: LCCOMB_X113_Y23_N16
\s_counter[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[6]~41_combout\ = ((\p_counter~0_combout\ $ (s_counter(6) $ (\s_counter[5]~40\)))) # (GND)
-- \s_counter[6]~42\ = CARRY((\p_counter~0_combout\ & (s_counter(6) & !\s_counter[5]~40\)) # (!\p_counter~0_combout\ & ((s_counter(6)) # (!\s_counter[5]~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter~0_combout\,
	datab => s_counter(6),
	datad => VCC,
	cin => \s_counter[5]~40\,
	combout => \s_counter[6]~41_combout\,
	cout => \s_counter[6]~42\);

-- Location: FF_X113_Y23_N17
\s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[6]~41_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(6));

-- Location: LCCOMB_X113_Y23_N18
\s_counter[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[7]~43_combout\ = (\p_counter~0_combout\ & ((s_counter(7) & (!\s_counter[6]~42\)) # (!s_counter(7) & ((\s_counter[6]~42\) # (GND))))) # (!\p_counter~0_combout\ & ((s_counter(7) & (\s_counter[6]~42\ & VCC)) # (!s_counter(7) & 
-- (!\s_counter[6]~42\))))
-- \s_counter[7]~44\ = CARRY((\p_counter~0_combout\ & ((!\s_counter[6]~42\) # (!s_counter(7)))) # (!\p_counter~0_combout\ & (!s_counter(7) & !\s_counter[6]~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter~0_combout\,
	datab => s_counter(7),
	datad => VCC,
	cin => \s_counter[6]~42\,
	combout => \s_counter[7]~43_combout\,
	cout => \s_counter[7]~44\);

-- Location: FF_X113_Y23_N19
\s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[7]~43_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(7));

-- Location: LCCOMB_X113_Y23_N20
\s_counter[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[8]~45_combout\ = ((\p_counter~0_combout\ $ (s_counter(8) $ (\s_counter[7]~44\)))) # (GND)
-- \s_counter[8]~46\ = CARRY((\p_counter~0_combout\ & (s_counter(8) & !\s_counter[7]~44\)) # (!\p_counter~0_combout\ & ((s_counter(8)) # (!\s_counter[7]~44\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter~0_combout\,
	datab => s_counter(8),
	datad => VCC,
	cin => \s_counter[7]~44\,
	combout => \s_counter[8]~45_combout\,
	cout => \s_counter[8]~46\);

-- Location: FF_X113_Y23_N21
\s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[8]~45_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(8));

-- Location: LCCOMB_X113_Y23_N22
\s_counter[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[9]~47_combout\ = (s_counter(9) & ((\p_counter~0_combout\ & (!\s_counter[8]~46\)) # (!\p_counter~0_combout\ & (\s_counter[8]~46\ & VCC)))) # (!s_counter(9) & ((\p_counter~0_combout\ & ((\s_counter[8]~46\) # (GND))) # (!\p_counter~0_combout\ & 
-- (!\s_counter[8]~46\))))
-- \s_counter[9]~48\ = CARRY((s_counter(9) & (\p_counter~0_combout\ & !\s_counter[8]~46\)) # (!s_counter(9) & ((\p_counter~0_combout\) # (!\s_counter[8]~46\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(9),
	datab => \p_counter~0_combout\,
	datad => VCC,
	cin => \s_counter[8]~46\,
	combout => \s_counter[9]~47_combout\,
	cout => \s_counter[9]~48\);

-- Location: FF_X113_Y23_N23
\s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[9]~47_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(9));

-- Location: LCCOMB_X113_Y23_N24
\s_counter[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[10]~49_combout\ = ((\p_counter~0_combout\ $ (s_counter(10) $ (\s_counter[9]~48\)))) # (GND)
-- \s_counter[10]~50\ = CARRY((\p_counter~0_combout\ & (s_counter(10) & !\s_counter[9]~48\)) # (!\p_counter~0_combout\ & ((s_counter(10)) # (!\s_counter[9]~48\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter~0_combout\,
	datab => s_counter(10),
	datad => VCC,
	cin => \s_counter[9]~48\,
	combout => \s_counter[10]~49_combout\,
	cout => \s_counter[10]~50\);

-- Location: FF_X113_Y23_N25
\s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[10]~49_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(10));

-- Location: LCCOMB_X113_Y23_N26
\s_counter[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[11]~51_combout\ = (s_counter(11) & ((\p_counter~0_combout\ & (!\s_counter[10]~50\)) # (!\p_counter~0_combout\ & (\s_counter[10]~50\ & VCC)))) # (!s_counter(11) & ((\p_counter~0_combout\ & ((\s_counter[10]~50\) # (GND))) # 
-- (!\p_counter~0_combout\ & (!\s_counter[10]~50\))))
-- \s_counter[11]~52\ = CARRY((s_counter(11) & (\p_counter~0_combout\ & !\s_counter[10]~50\)) # (!s_counter(11) & ((\p_counter~0_combout\) # (!\s_counter[10]~50\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(11),
	datab => \p_counter~0_combout\,
	datad => VCC,
	cin => \s_counter[10]~50\,
	combout => \s_counter[11]~51_combout\,
	cout => \s_counter[11]~52\);

-- Location: FF_X113_Y23_N27
\s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[11]~51_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(11));

-- Location: LCCOMB_X113_Y23_N28
\s_counter[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[12]~53_combout\ = ((\p_counter~0_combout\ $ (s_counter(12) $ (\s_counter[11]~52\)))) # (GND)
-- \s_counter[12]~54\ = CARRY((\p_counter~0_combout\ & (s_counter(12) & !\s_counter[11]~52\)) # (!\p_counter~0_combout\ & ((s_counter(12)) # (!\s_counter[11]~52\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter~0_combout\,
	datab => s_counter(12),
	datad => VCC,
	cin => \s_counter[11]~52\,
	combout => \s_counter[12]~53_combout\,
	cout => \s_counter[12]~54\);

-- Location: FF_X113_Y23_N29
\s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[12]~53_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(12));

-- Location: LCCOMB_X113_Y23_N30
\s_counter[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[13]~55_combout\ = (s_counter(13) & ((\p_counter~0_combout\ & (!\s_counter[12]~54\)) # (!\p_counter~0_combout\ & (\s_counter[12]~54\ & VCC)))) # (!s_counter(13) & ((\p_counter~0_combout\ & ((\s_counter[12]~54\) # (GND))) # 
-- (!\p_counter~0_combout\ & (!\s_counter[12]~54\))))
-- \s_counter[13]~56\ = CARRY((s_counter(13) & (\p_counter~0_combout\ & !\s_counter[12]~54\)) # (!s_counter(13) & ((\p_counter~0_combout\) # (!\s_counter[12]~54\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(13),
	datab => \p_counter~0_combout\,
	datad => VCC,
	cin => \s_counter[12]~54\,
	combout => \s_counter[13]~55_combout\,
	cout => \s_counter[13]~56\);

-- Location: FF_X113_Y23_N31
\s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[13]~55_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(13));

-- Location: LCCOMB_X113_Y22_N0
\s_counter[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[14]~57_combout\ = ((\p_counter~0_combout\ $ (s_counter(14) $ (\s_counter[13]~56\)))) # (GND)
-- \s_counter[14]~58\ = CARRY((\p_counter~0_combout\ & (s_counter(14) & !\s_counter[13]~56\)) # (!\p_counter~0_combout\ & ((s_counter(14)) # (!\s_counter[13]~56\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter~0_combout\,
	datab => s_counter(14),
	datad => VCC,
	cin => \s_counter[13]~56\,
	combout => \s_counter[14]~57_combout\,
	cout => \s_counter[14]~58\);

-- Location: FF_X113_Y22_N1
\s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[14]~57_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(14));

-- Location: LCCOMB_X113_Y22_N2
\s_counter[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[15]~59_combout\ = (\p_counter~0_combout\ & ((s_counter(15) & (!\s_counter[14]~58\)) # (!s_counter(15) & ((\s_counter[14]~58\) # (GND))))) # (!\p_counter~0_combout\ & ((s_counter(15) & (\s_counter[14]~58\ & VCC)) # (!s_counter(15) & 
-- (!\s_counter[14]~58\))))
-- \s_counter[15]~60\ = CARRY((\p_counter~0_combout\ & ((!\s_counter[14]~58\) # (!s_counter(15)))) # (!\p_counter~0_combout\ & (!s_counter(15) & !\s_counter[14]~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter~0_combout\,
	datab => s_counter(15),
	datad => VCC,
	cin => \s_counter[14]~58\,
	combout => \s_counter[15]~59_combout\,
	cout => \s_counter[15]~60\);

-- Location: FF_X113_Y22_N3
\s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[15]~59_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(15));

-- Location: LCCOMB_X113_Y22_N4
\s_counter[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[16]~61_combout\ = ((s_counter(16) $ (\p_counter~0_combout\ $ (\s_counter[15]~60\)))) # (GND)
-- \s_counter[16]~62\ = CARRY((s_counter(16) & ((!\s_counter[15]~60\) # (!\p_counter~0_combout\))) # (!s_counter(16) & (!\p_counter~0_combout\ & !\s_counter[15]~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(16),
	datab => \p_counter~0_combout\,
	datad => VCC,
	cin => \s_counter[15]~60\,
	combout => \s_counter[16]~61_combout\,
	cout => \s_counter[16]~62\);

-- Location: FF_X113_Y22_N5
\s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[16]~61_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(16));

-- Location: LCCOMB_X113_Y22_N6
\s_counter[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[17]~63_combout\ = (\p_counter~0_combout\ & ((s_counter(17) & (!\s_counter[16]~62\)) # (!s_counter(17) & ((\s_counter[16]~62\) # (GND))))) # (!\p_counter~0_combout\ & ((s_counter(17) & (\s_counter[16]~62\ & VCC)) # (!s_counter(17) & 
-- (!\s_counter[16]~62\))))
-- \s_counter[17]~64\ = CARRY((\p_counter~0_combout\ & ((!\s_counter[16]~62\) # (!s_counter(17)))) # (!\p_counter~0_combout\ & (!s_counter(17) & !\s_counter[16]~62\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter~0_combout\,
	datab => s_counter(17),
	datad => VCC,
	cin => \s_counter[16]~62\,
	combout => \s_counter[17]~63_combout\,
	cout => \s_counter[17]~64\);

-- Location: FF_X113_Y22_N7
\s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[17]~63_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(17));

-- Location: LCCOMB_X113_Y22_N8
\s_counter[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[18]~65_combout\ = ((\p_counter~0_combout\ $ (s_counter(18) $ (\s_counter[17]~64\)))) # (GND)
-- \s_counter[18]~66\ = CARRY((\p_counter~0_combout\ & (s_counter(18) & !\s_counter[17]~64\)) # (!\p_counter~0_combout\ & ((s_counter(18)) # (!\s_counter[17]~64\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter~0_combout\,
	datab => s_counter(18),
	datad => VCC,
	cin => \s_counter[17]~64\,
	combout => \s_counter[18]~65_combout\,
	cout => \s_counter[18]~66\);

-- Location: FF_X113_Y22_N9
\s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[18]~65_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(18));

-- Location: LCCOMB_X113_Y22_N10
\s_counter[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[19]~67_combout\ = (s_counter(19) & ((\p_counter~0_combout\ & (!\s_counter[18]~66\)) # (!\p_counter~0_combout\ & (\s_counter[18]~66\ & VCC)))) # (!s_counter(19) & ((\p_counter~0_combout\ & ((\s_counter[18]~66\) # (GND))) # 
-- (!\p_counter~0_combout\ & (!\s_counter[18]~66\))))
-- \s_counter[19]~68\ = CARRY((s_counter(19) & (\p_counter~0_combout\ & !\s_counter[18]~66\)) # (!s_counter(19) & ((\p_counter~0_combout\) # (!\s_counter[18]~66\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(19),
	datab => \p_counter~0_combout\,
	datad => VCC,
	cin => \s_counter[18]~66\,
	combout => \s_counter[19]~67_combout\,
	cout => \s_counter[19]~68\);

-- Location: FF_X113_Y22_N11
\s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[19]~67_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(19));

-- Location: LCCOMB_X113_Y22_N12
\s_counter[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[20]~69_combout\ = ((s_counter(20) $ (\p_counter~0_combout\ $ (\s_counter[19]~68\)))) # (GND)
-- \s_counter[20]~70\ = CARRY((s_counter(20) & ((!\s_counter[19]~68\) # (!\p_counter~0_combout\))) # (!s_counter(20) & (!\p_counter~0_combout\ & !\s_counter[19]~68\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(20),
	datab => \p_counter~0_combout\,
	datad => VCC,
	cin => \s_counter[19]~68\,
	combout => \s_counter[20]~69_combout\,
	cout => \s_counter[20]~70\);

-- Location: FF_X113_Y22_N13
\s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[20]~69_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(20));

-- Location: LCCOMB_X113_Y22_N14
\s_counter[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[21]~71_combout\ = (\p_counter~0_combout\ & ((s_counter(21) & (!\s_counter[20]~70\)) # (!s_counter(21) & ((\s_counter[20]~70\) # (GND))))) # (!\p_counter~0_combout\ & ((s_counter(21) & (\s_counter[20]~70\ & VCC)) # (!s_counter(21) & 
-- (!\s_counter[20]~70\))))
-- \s_counter[21]~72\ = CARRY((\p_counter~0_combout\ & ((!\s_counter[20]~70\) # (!s_counter(21)))) # (!\p_counter~0_combout\ & (!s_counter(21) & !\s_counter[20]~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter~0_combout\,
	datab => s_counter(21),
	datad => VCC,
	cin => \s_counter[20]~70\,
	combout => \s_counter[21]~71_combout\,
	cout => \s_counter[21]~72\);

-- Location: FF_X113_Y22_N15
\s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[21]~71_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(21));

-- Location: LCCOMB_X113_Y22_N16
\s_counter[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[22]~73_combout\ = ((\p_counter~0_combout\ $ (s_counter(22) $ (\s_counter[21]~72\)))) # (GND)
-- \s_counter[22]~74\ = CARRY((\p_counter~0_combout\ & (s_counter(22) & !\s_counter[21]~72\)) # (!\p_counter~0_combout\ & ((s_counter(22)) # (!\s_counter[21]~72\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter~0_combout\,
	datab => s_counter(22),
	datad => VCC,
	cin => \s_counter[21]~72\,
	combout => \s_counter[22]~73_combout\,
	cout => \s_counter[22]~74\);

-- Location: FF_X113_Y22_N17
\s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[22]~73_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(22));

-- Location: LCCOMB_X113_Y22_N18
\s_counter[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[23]~75_combout\ = (\p_counter~0_combout\ & ((s_counter(23) & (!\s_counter[22]~74\)) # (!s_counter(23) & ((\s_counter[22]~74\) # (GND))))) # (!\p_counter~0_combout\ & ((s_counter(23) & (\s_counter[22]~74\ & VCC)) # (!s_counter(23) & 
-- (!\s_counter[22]~74\))))
-- \s_counter[23]~76\ = CARRY((\p_counter~0_combout\ & ((!\s_counter[22]~74\) # (!s_counter(23)))) # (!\p_counter~0_combout\ & (!s_counter(23) & !\s_counter[22]~74\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p_counter~0_combout\,
	datab => s_counter(23),
	datad => VCC,
	cin => \s_counter[22]~74\,
	combout => \s_counter[23]~75_combout\,
	cout => \s_counter[23]~76\);

-- Location: FF_X113_Y22_N19
\s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[23]~75_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(23));

-- Location: LCCOMB_X113_Y22_N20
\s_counter[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[24]~77_combout\ = ((s_counter(24) $ (\p_counter~0_combout\ $ (\s_counter[23]~76\)))) # (GND)
-- \s_counter[24]~78\ = CARRY((s_counter(24) & ((!\s_counter[23]~76\) # (!\p_counter~0_combout\))) # (!s_counter(24) & (!\p_counter~0_combout\ & !\s_counter[23]~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(24),
	datab => \p_counter~0_combout\,
	datad => VCC,
	cin => \s_counter[23]~76\,
	combout => \s_counter[24]~77_combout\,
	cout => \s_counter[24]~78\);

-- Location: FF_X113_Y22_N21
\s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[24]~77_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(24));

-- Location: LCCOMB_X113_Y22_N22
\s_counter[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[25]~79_combout\ = (s_counter(25) & ((\p_counter~0_combout\ & (!\s_counter[24]~78\)) # (!\p_counter~0_combout\ & (\s_counter[24]~78\ & VCC)))) # (!s_counter(25) & ((\p_counter~0_combout\ & ((\s_counter[24]~78\) # (GND))) # 
-- (!\p_counter~0_combout\ & (!\s_counter[24]~78\))))
-- \s_counter[25]~80\ = CARRY((s_counter(25) & (\p_counter~0_combout\ & !\s_counter[24]~78\)) # (!s_counter(25) & ((\p_counter~0_combout\) # (!\s_counter[24]~78\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(25),
	datab => \p_counter~0_combout\,
	datad => VCC,
	cin => \s_counter[24]~78\,
	combout => \s_counter[25]~79_combout\,
	cout => \s_counter[25]~80\);

-- Location: FF_X113_Y22_N23
\s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[25]~79_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(25));

-- Location: IOIBUF_X115_Y17_N1
\i_data_key[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_key(0),
	o => \i_data_key[0]~input_o\);

-- Location: LCCOMB_X114_Y22_N16
\o_leds~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_leds~0_combout\ = (\i_load_key~input_o\ & ((\i_data_key[0]~input_o\))) # (!\i_load_key~input_o\ & (s_counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_counter(25),
	datac => \i_data_key[0]~input_o\,
	datad => \i_load_key~input_o\,
	combout => \o_leds~0_combout\);

-- Location: LCCOMB_X114_Y22_N12
\o_leds[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_leds[1]~1_combout\ = (\i_counter_buttom~input_o\) # (\i_load_key~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_counter_buttom~input_o\,
	datad => \i_load_key~input_o\,
	combout => \o_leds[1]~1_combout\);

-- Location: FF_X114_Y22_N17
\o_leds[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_leds~0_combout\,
	ena => \o_leds[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_leds[0]~reg0_q\);

-- Location: LCCOMB_X113_Y22_N24
\s_counter[26]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[26]~82_combout\ = ((s_counter(26) $ (\p_counter~0_combout\ $ (\s_counter[25]~80\)))) # (GND)
-- \s_counter[26]~83\ = CARRY((s_counter(26) & ((!\s_counter[25]~80\) # (!\p_counter~0_combout\))) # (!s_counter(26) & (!\p_counter~0_combout\ & !\s_counter[25]~80\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(26),
	datab => \p_counter~0_combout\,
	datad => VCC,
	cin => \s_counter[25]~80\,
	combout => \s_counter[26]~82_combout\,
	cout => \s_counter[26]~83\);

-- Location: FF_X113_Y22_N25
\s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[26]~82_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(26));

-- Location: IOIBUF_X115_Y14_N1
\i_data_key[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_key(1),
	o => \i_data_key[1]~input_o\);

-- Location: LCCOMB_X114_Y22_N26
\o_leds~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_leds~2_combout\ = (\i_load_key~input_o\ & ((\i_data_key[1]~input_o\))) # (!\i_load_key~input_o\ & (s_counter(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_counter(26),
	datac => \i_data_key[1]~input_o\,
	datad => \i_load_key~input_o\,
	combout => \o_leds~2_combout\);

-- Location: FF_X114_Y22_N27
\o_leds[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_leds~2_combout\,
	ena => \o_leds[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_leds[1]~reg0_q\);

-- Location: IOIBUF_X115_Y15_N8
\i_data_key[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_key(2),
	o => \i_data_key[2]~input_o\);

-- Location: LCCOMB_X113_Y22_N26
\s_counter[27]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[27]~84_combout\ = (s_counter(27) & ((\p_counter~0_combout\ & (!\s_counter[26]~83\)) # (!\p_counter~0_combout\ & (\s_counter[26]~83\ & VCC)))) # (!s_counter(27) & ((\p_counter~0_combout\ & ((\s_counter[26]~83\) # (GND))) # 
-- (!\p_counter~0_combout\ & (!\s_counter[26]~83\))))
-- \s_counter[27]~85\ = CARRY((s_counter(27) & (\p_counter~0_combout\ & !\s_counter[26]~83\)) # (!s_counter(27) & ((\p_counter~0_combout\) # (!\s_counter[26]~83\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(27),
	datab => \p_counter~0_combout\,
	datad => VCC,
	cin => \s_counter[26]~83\,
	combout => \s_counter[27]~84_combout\,
	cout => \s_counter[27]~85\);

-- Location: FF_X113_Y22_N27
\s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[27]~84_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(27));

-- Location: LCCOMB_X114_Y22_N4
\o_leds~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_leds~3_combout\ = (\i_load_key~input_o\ & (\i_data_key[2]~input_o\)) # (!\i_load_key~input_o\ & ((s_counter(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_data_key[2]~input_o\,
	datac => s_counter(27),
	datad => \i_load_key~input_o\,
	combout => \o_leds~3_combout\);

-- Location: FF_X114_Y22_N5
\o_leds[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_leds~3_combout\,
	ena => \o_leds[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_leds[2]~reg0_q\);

-- Location: LCCOMB_X113_Y22_N28
\s_counter[28]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[28]~86_combout\ = s_counter(28) $ (\s_counter[27]~85\ $ (\p_counter~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(28),
	datad => \p_counter~0_combout\,
	cin => \s_counter[27]~85\,
	combout => \s_counter[28]~86_combout\);

-- Location: FF_X113_Y22_N29
\s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \s_counter[28]~86_combout\,
	ena => \s_counter[25]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(28));

-- Location: IOIBUF_X115_Y13_N8
\i_data_key[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_key(3),
	o => \i_data_key[3]~input_o\);

-- Location: LCCOMB_X114_Y22_N10
\o_leds~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_leds~4_combout\ = (\i_load_key~input_o\ & ((\i_data_key[3]~input_o\))) # (!\i_load_key~input_o\ & (s_counter(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_counter(28),
	datac => \i_data_key[3]~input_o\,
	datad => \i_load_key~input_o\,
	combout => \o_leds~4_combout\);

-- Location: FF_X114_Y22_N11
\o_leds[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_leds~4_combout\,
	ena => \o_leds[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_leds[3]~reg0_q\);

ww_o_leds(0) <= \o_leds[0]~output_o\;

ww_o_leds(1) <= \o_leds[1]~output_o\;

ww_o_leds(2) <= \o_leds[2]~output_o\;

ww_o_leds(3) <= \o_leds[3]~output_o\;
END structure;



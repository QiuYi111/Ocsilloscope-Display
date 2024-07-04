-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "07/03/2024 15:58:00"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Bonus IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	d : IN std_logic;
	start_x : IN std_logic;
	start_y : IN std_logic;
	ACKSDA_x : IN std_logic;
	ACKSDA_y : IN std_logic;
	burstmode : IN std_logic;
	loaddata : IN std_logic;
	ASDA_x : BUFFER std_logic;
	ASDA_y : BUFFER std_logic;
	EXDATACLK_x : BUFFER std_logic;
	EXDATACLK_y : BUFFER std_logic;
	pend_x : BUFFER std_logic;
	pend_y : BUFFER std_logic;
	SCL_x : BUFFER std_logic;
	SCL_y : BUFFER std_logic;
	SDA_x : BUFFER std_logic;
	SDA_y : BUFFER std_logic
	);
END Bonus;

-- Design Ports Information
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_x	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_y	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACKSDA_x	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACKSDA_y	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- burstmode	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- loaddata	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASDA_x	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASDA_y	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXDATACLK_x	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXDATACLK_y	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pend_x	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pend_y	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCL_x	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCL_y	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA_x	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA_y	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Bonus IS
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
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_start_x : std_logic;
SIGNAL ww_start_y : std_logic;
SIGNAL ww_ACKSDA_x : std_logic;
SIGNAL ww_ACKSDA_y : std_logic;
SIGNAL ww_burstmode : std_logic;
SIGNAL ww_loaddata : std_logic;
SIGNAL ww_ASDA_x : std_logic;
SIGNAL ww_ASDA_y : std_logic;
SIGNAL ww_EXDATACLK_x : std_logic;
SIGNAL ww_EXDATACLK_y : std_logic;
SIGNAL ww_pend_x : std_logic;
SIGNAL ww_pend_y : std_logic;
SIGNAL ww_SCL_x : std_logic;
SIGNAL ww_SCL_y : std_logic;
SIGNAL ww_SDA_x : std_logic;
SIGNAL ww_SDA_y : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \start_x~input_o\ : std_logic;
SIGNAL \start_y~input_o\ : std_logic;
SIGNAL \ACKSDA_x~input_o\ : std_logic;
SIGNAL \ACKSDA_y~input_o\ : std_logic;
SIGNAL \burstmode~input_o\ : std_logic;
SIGNAL \loaddata~input_o\ : std_logic;
SIGNAL \SDA_x~input_o\ : std_logic;
SIGNAL \SDA_y~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \SDA_x~output_o\ : std_logic;
SIGNAL \SDA_y~output_o\ : std_logic;
SIGNAL \ASDA_x~output_o\ : std_logic;
SIGNAL \ASDA_y~output_o\ : std_logic;
SIGNAL \EXDATACLK_x~output_o\ : std_logic;
SIGNAL \EXDATACLK_y~output_o\ : std_logic;
SIGNAL \pend_x~output_o\ : std_logic;
SIGNAL \pend_y~output_o\ : std_logic;
SIGNAL \SCL_x~output_o\ : std_logic;
SIGNAL \SCL_y~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
ww_start_x <= start_x;
ww_start_y <= start_y;
ww_ACKSDA_x <= ACKSDA_x;
ww_ACKSDA_y <= ACKSDA_y;
ww_burstmode <= burstmode;
ww_loaddata <= loaddata;
ASDA_x <= ww_ASDA_x;
ASDA_y <= ww_ASDA_y;
EXDATACLK_x <= ww_EXDATACLK_x;
EXDATACLK_y <= ww_EXDATACLK_y;
pend_x <= ww_pend_x;
pend_y <= ww_pend_y;
SCL_x <= ww_SCL_x;
SCL_y <= ww_SCL_y;
SDA_x <= ww_SDA_x;
SDA_y <= ww_SDA_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X24_Y0_N30
\SDA_x~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SDA_x~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\SDA_y~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SDA_y~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\ASDA_x~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ASDA_x~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\ASDA_y~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ASDA_y~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\EXDATACLK_x~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \EXDATACLK_x~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\EXDATACLK_y~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \EXDATACLK_y~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\pend_x~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pend_x~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\pend_y~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pend_y~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\SCL_x~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SCL_x~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\SCL_y~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SCL_y~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X78_Y3_N15
\a~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\b~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X26_Y39_N29
\c~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\d~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\start_x~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_x,
	o => \start_x~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\start_y~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_y,
	o => \start_y~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\ACKSDA_x~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ACKSDA_x,
	o => \ACKSDA_x~input_o\);

-- Location: IOIBUF_X31_Y0_N29
\ACKSDA_y~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ACKSDA_y,
	o => \ACKSDA_y~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\burstmode~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_burstmode,
	o => \burstmode~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\loaddata~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_loaddata,
	o => \loaddata~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\SDA_x~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDA_x,
	o => \SDA_x~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\SDA_y~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDA_y,
	o => \SDA_y~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_ASDA_x <= \ASDA_x~output_o\;

ww_ASDA_y <= \ASDA_y~output_o\;

ww_EXDATACLK_x <= \EXDATACLK_x~output_o\;

ww_EXDATACLK_y <= \EXDATACLK_y~output_o\;

ww_pend_x <= \pend_x~output_o\;

ww_pend_y <= \pend_y~output_o\;

ww_SCL_x <= \SCL_x~output_o\;

ww_SCL_y <= \SCL_y~output_o\;

ww_SDA_x <= \SDA_x~output_o\;

ww_SDA_y <= \SDA_y~output_o\;
END structure;



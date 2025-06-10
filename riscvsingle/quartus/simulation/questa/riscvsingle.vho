-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "06/09/2025 14:32:25"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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

ENTITY 	extend IS
    PORT (
	immsrc : IN std_logic_vector(1 DOWNTO 0);
	instr : IN std_logic_vector(31 DOWNTO 0);
	immext : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END extend;

-- Design Ports Information
-- instr[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[1]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[4]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[5]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[1]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[2]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[3]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[4]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[5]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[8]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[10]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[11]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[12]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[13]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[14]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[15]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[16]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[17]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[18]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[19]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[20]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[21]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[22]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[23]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[24]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[25]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[26]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[27]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[28]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[29]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[30]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immext[31]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[7]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[20]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immsrc[0]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immsrc[1]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[21]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[8]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[22]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[9]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[23]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[10]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[24]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[11]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[25]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[26]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[27]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[28]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[29]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[30]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[31]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[12]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[13]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[14]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[15]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[16]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[17]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[18]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[19]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF extend IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_immsrc : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_instr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_immext : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \instr[0]~input_o\ : std_logic;
SIGNAL \instr[1]~input_o\ : std_logic;
SIGNAL \instr[2]~input_o\ : std_logic;
SIGNAL \instr[3]~input_o\ : std_logic;
SIGNAL \instr[4]~input_o\ : std_logic;
SIGNAL \instr[5]~input_o\ : std_logic;
SIGNAL \instr[6]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \immext[0]~output_o\ : std_logic;
SIGNAL \immext[1]~output_o\ : std_logic;
SIGNAL \immext[2]~output_o\ : std_logic;
SIGNAL \immext[3]~output_o\ : std_logic;
SIGNAL \immext[4]~output_o\ : std_logic;
SIGNAL \immext[5]~output_o\ : std_logic;
SIGNAL \immext[6]~output_o\ : std_logic;
SIGNAL \immext[7]~output_o\ : std_logic;
SIGNAL \immext[8]~output_o\ : std_logic;
SIGNAL \immext[9]~output_o\ : std_logic;
SIGNAL \immext[10]~output_o\ : std_logic;
SIGNAL \immext[11]~output_o\ : std_logic;
SIGNAL \immext[12]~output_o\ : std_logic;
SIGNAL \immext[13]~output_o\ : std_logic;
SIGNAL \immext[14]~output_o\ : std_logic;
SIGNAL \immext[15]~output_o\ : std_logic;
SIGNAL \immext[16]~output_o\ : std_logic;
SIGNAL \immext[17]~output_o\ : std_logic;
SIGNAL \immext[18]~output_o\ : std_logic;
SIGNAL \immext[19]~output_o\ : std_logic;
SIGNAL \immext[20]~output_o\ : std_logic;
SIGNAL \immext[21]~output_o\ : std_logic;
SIGNAL \immext[22]~output_o\ : std_logic;
SIGNAL \immext[23]~output_o\ : std_logic;
SIGNAL \immext[24]~output_o\ : std_logic;
SIGNAL \immext[25]~output_o\ : std_logic;
SIGNAL \immext[26]~output_o\ : std_logic;
SIGNAL \immext[27]~output_o\ : std_logic;
SIGNAL \immext[28]~output_o\ : std_logic;
SIGNAL \immext[29]~output_o\ : std_logic;
SIGNAL \immext[30]~output_o\ : std_logic;
SIGNAL \immext[31]~output_o\ : std_logic;
SIGNAL \immsrc[0]~input_o\ : std_logic;
SIGNAL \immsrc[1]~input_o\ : std_logic;
SIGNAL \instr[7]~input_o\ : std_logic;
SIGNAL \instr[20]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \instr[21]~input_o\ : std_logic;
SIGNAL \instr[8]~input_o\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \instr[9]~input_o\ : std_logic;
SIGNAL \instr[22]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \instr[23]~input_o\ : std_logic;
SIGNAL \instr[10]~input_o\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \instr[24]~input_o\ : std_logic;
SIGNAL \instr[11]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \instr[25]~input_o\ : std_logic;
SIGNAL \instr[26]~input_o\ : std_logic;
SIGNAL \instr[27]~input_o\ : std_logic;
SIGNAL \instr[28]~input_o\ : std_logic;
SIGNAL \instr[29]~input_o\ : std_logic;
SIGNAL \instr[30]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \instr[31]~input_o\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \instr[12]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \instr[13]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \instr[14]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \instr[15]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \instr[16]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \instr[17]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \instr[18]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \instr[19]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_immsrc <= immsrc;
ww_instr <= instr;
immext <= ww_immext;
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

-- Location: LCCOMB_X44_Y41_N8
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

-- Location: IOOBUF_X18_Y0_N23
\immext[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \immext[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\immext[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \immext[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\immext[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \immext[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\immext[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \immext[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\immext[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \immext[4]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\immext[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[25]~input_o\,
	devoe => ww_devoe,
	o => \immext[5]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\immext[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[26]~input_o\,
	devoe => ww_devoe,
	o => \immext[6]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\immext[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[27]~input_o\,
	devoe => ww_devoe,
	o => \immext[7]~output_o\);

-- Location: IOOBUF_X78_Y36_N24
\immext[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[28]~input_o\,
	devoe => ww_devoe,
	o => \immext[8]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\immext[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[29]~input_o\,
	devoe => ww_devoe,
	o => \immext[9]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\immext[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[30]~input_o\,
	devoe => ww_devoe,
	o => \immext[10]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\immext[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \immext[11]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\immext[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \immext[12]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\immext[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \immext[13]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\immext[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \immext[14]~output_o\);

-- Location: IOOBUF_X20_Y0_N30
\immext[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \immext[15]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\immext[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \immext[16]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\immext[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \immext[17]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\immext[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \immext[18]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\immext[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \immext[19]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\immext[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[31]~input_o\,
	devoe => ww_devoe,
	o => \immext[20]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\immext[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[31]~input_o\,
	devoe => ww_devoe,
	o => \immext[21]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\immext[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[31]~input_o\,
	devoe => ww_devoe,
	o => \immext[22]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\immext[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[31]~input_o\,
	devoe => ww_devoe,
	o => \immext[23]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\immext[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[31]~input_o\,
	devoe => ww_devoe,
	o => \immext[24]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\immext[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[31]~input_o\,
	devoe => ww_devoe,
	o => \immext[25]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\immext[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[31]~input_o\,
	devoe => ww_devoe,
	o => \immext[26]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\immext[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[31]~input_o\,
	devoe => ww_devoe,
	o => \immext[27]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\immext[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[31]~input_o\,
	devoe => ww_devoe,
	o => \immext[28]~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\immext[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[31]~input_o\,
	devoe => ww_devoe,
	o => \immext[29]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\immext[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[31]~input_o\,
	devoe => ww_devoe,
	o => \immext[30]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\immext[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[31]~input_o\,
	devoe => ww_devoe,
	o => \immext[31]~output_o\);

-- Location: IOIBUF_X24_Y0_N22
\immsrc[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immsrc(0),
	o => \immsrc[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\immsrc[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immsrc(1),
	o => \immsrc[1]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\instr[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(7),
	o => \instr[7]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\instr[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(20),
	o => \instr[20]~input_o\);

-- Location: LCCOMB_X25_Y1_N24
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!\immsrc[1]~input_o\ & ((\immsrc[0]~input_o\ & (\instr[7]~input_o\)) # (!\immsrc[0]~input_o\ & ((\instr[20]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immsrc[0]~input_o\,
	datab => \immsrc[1]~input_o\,
	datac => \instr[7]~input_o\,
	datad => \instr[20]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: IOIBUF_X22_Y0_N1
\instr[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(21),
	o => \instr[21]~input_o\);

-- Location: IOIBUF_X22_Y0_N29
\instr[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(8),
	o => \instr[8]~input_o\);

-- Location: LCCOMB_X25_Y1_N2
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\instr[21]~input_o\ & ((\instr[8]~input_o\) # (\immsrc[1]~input_o\ $ (!\immsrc[0]~input_o\)))) # (!\instr[21]~input_o\ & (\instr[8]~input_o\ & (\immsrc[1]~input_o\ $ (\immsrc[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[21]~input_o\,
	datab => \immsrc[1]~input_o\,
	datac => \instr[8]~input_o\,
	datad => \immsrc[0]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: IOIBUF_X26_Y0_N1
\instr[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(9),
	o => \instr[9]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\instr[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(22),
	o => \instr[22]~input_o\);

-- Location: LCCOMB_X25_Y1_N4
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\immsrc[0]~input_o\ & ((\immsrc[1]~input_o\ & ((\instr[22]~input_o\))) # (!\immsrc[1]~input_o\ & (\instr[9]~input_o\)))) # (!\immsrc[0]~input_o\ & ((\immsrc[1]~input_o\ & (\instr[9]~input_o\)) # (!\immsrc[1]~input_o\ & 
-- ((\instr[22]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immsrc[0]~input_o\,
	datab => \immsrc[1]~input_o\,
	datac => \instr[9]~input_o\,
	datad => \instr[22]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: IOIBUF_X26_Y0_N22
\instr[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(23),
	o => \instr[23]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\instr[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(10),
	o => \instr[10]~input_o\);

-- Location: LCCOMB_X25_Y1_N30
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\immsrc[0]~input_o\ & ((\immsrc[1]~input_o\ & (\instr[23]~input_o\)) # (!\immsrc[1]~input_o\ & ((\instr[10]~input_o\))))) # (!\immsrc[0]~input_o\ & ((\immsrc[1]~input_o\ & ((\instr[10]~input_o\))) # (!\immsrc[1]~input_o\ & 
-- (\instr[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immsrc[0]~input_o\,
	datab => \instr[23]~input_o\,
	datac => \immsrc[1]~input_o\,
	datad => \instr[10]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: IOIBUF_X20_Y0_N22
\instr[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(24),
	o => \instr[24]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\instr[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(11),
	o => \instr[11]~input_o\);

-- Location: LCCOMB_X25_Y1_N8
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\immsrc[0]~input_o\ & ((\immsrc[1]~input_o\ & (\instr[24]~input_o\)) # (!\immsrc[1]~input_o\ & ((\instr[11]~input_o\))))) # (!\immsrc[0]~input_o\ & ((\immsrc[1]~input_o\ & ((\instr[11]~input_o\))) # (!\immsrc[1]~input_o\ & 
-- (\instr[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immsrc[0]~input_o\,
	datab => \instr[24]~input_o\,
	datac => \immsrc[1]~input_o\,
	datad => \instr[11]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: IOIBUF_X26_Y39_N22
\instr[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(25),
	o => \instr[25]~input_o\);

-- Location: IOIBUF_X34_Y39_N1
\instr[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(26),
	o => \instr[26]~input_o\);

-- Location: IOIBUF_X49_Y54_N22
\instr[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(27),
	o => \instr[27]~input_o\);

-- Location: IOIBUF_X78_Y36_N8
\instr[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(28),
	o => \instr[28]~input_o\);

-- Location: IOIBUF_X51_Y54_N8
\instr[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(29),
	o => \instr[29]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\instr[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(30),
	o => \instr[30]~input_o\);

-- Location: LCCOMB_X25_Y1_N26
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\immsrc[1]~input_o\ & ((\immsrc[0]~input_o\ & ((\instr[20]~input_o\))) # (!\immsrc[0]~input_o\ & (\instr[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immsrc[0]~input_o\,
	datab => \immsrc[1]~input_o\,
	datac => \instr[7]~input_o\,
	datad => \instr[20]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
\instr[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(31),
	o => \instr[31]~input_o\);

-- Location: LCCOMB_X25_Y1_N20
\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\) # ((\instr[31]~input_o\ & !\immsrc[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \instr[31]~input_o\,
	datac => \immsrc[1]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: IOIBUF_X29_Y0_N15
\instr[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(12),
	o => \instr[12]~input_o\);

-- Location: LCCOMB_X25_Y1_N14
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\immsrc[0]~input_o\ & ((\immsrc[1]~input_o\ & ((\instr[12]~input_o\))) # (!\immsrc[1]~input_o\ & (\instr[31]~input_o\)))) # (!\immsrc[0]~input_o\ & (\instr[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immsrc[0]~input_o\,
	datab => \instr[31]~input_o\,
	datac => \immsrc[1]~input_o\,
	datad => \instr[12]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X31_Y0_N1
\instr[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(13),
	o => \instr[13]~input_o\);

-- Location: LCCOMB_X25_Y1_N0
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\immsrc[0]~input_o\ & ((\immsrc[1]~input_o\ & ((\instr[13]~input_o\))) # (!\immsrc[1]~input_o\ & (\instr[31]~input_o\)))) # (!\immsrc[0]~input_o\ & (\instr[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immsrc[0]~input_o\,
	datab => \instr[31]~input_o\,
	datac => \immsrc[1]~input_o\,
	datad => \instr[13]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X22_Y0_N15
\instr[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(14),
	o => \instr[14]~input_o\);

-- Location: LCCOMB_X25_Y1_N18
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\immsrc[1]~input_o\ & ((\immsrc[0]~input_o\ & (\instr[14]~input_o\)) # (!\immsrc[0]~input_o\ & ((\instr[31]~input_o\))))) # (!\immsrc[1]~input_o\ & (((\instr[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[14]~input_o\,
	datab => \instr[31]~input_o\,
	datac => \immsrc[1]~input_o\,
	datad => \immsrc[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: IOIBUF_X18_Y0_N1
\instr[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(15),
	o => \instr[15]~input_o\);

-- Location: LCCOMB_X25_Y1_N28
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\immsrc[1]~input_o\ & ((\immsrc[0]~input_o\ & (\instr[15]~input_o\)) # (!\immsrc[0]~input_o\ & ((\instr[31]~input_o\))))) # (!\immsrc[1]~input_o\ & (((\instr[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[15]~input_o\,
	datab => \immsrc[1]~input_o\,
	datac => \instr[31]~input_o\,
	datad => \immsrc[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X29_Y0_N1
\instr[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(16),
	o => \instr[16]~input_o\);

-- Location: LCCOMB_X25_Y1_N22
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\immsrc[0]~input_o\ & ((\immsrc[1]~input_o\ & ((\instr[16]~input_o\))) # (!\immsrc[1]~input_o\ & (\instr[31]~input_o\)))) # (!\immsrc[0]~input_o\ & (\instr[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immsrc[0]~input_o\,
	datab => \instr[31]~input_o\,
	datac => \immsrc[1]~input_o\,
	datad => \instr[16]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X22_Y0_N22
\instr[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(17),
	o => \instr[17]~input_o\);

-- Location: LCCOMB_X25_Y1_N16
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\immsrc[1]~input_o\ & ((\immsrc[0]~input_o\ & (\instr[17]~input_o\)) # (!\immsrc[0]~input_o\ & ((\instr[31]~input_o\))))) # (!\immsrc[1]~input_o\ & (((\instr[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[17]~input_o\,
	datab => \immsrc[1]~input_o\,
	datac => \instr[31]~input_o\,
	datad => \immsrc[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X26_Y0_N15
\instr[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(18),
	o => \instr[18]~input_o\);

-- Location: LCCOMB_X25_Y1_N10
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\immsrc[0]~input_o\ & ((\immsrc[1]~input_o\ & ((\instr[18]~input_o\))) # (!\immsrc[1]~input_o\ & (\instr[31]~input_o\)))) # (!\immsrc[0]~input_o\ & (\instr[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immsrc[0]~input_o\,
	datab => \instr[31]~input_o\,
	datac => \immsrc[1]~input_o\,
	datad => \instr[18]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X31_Y0_N15
\instr[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(19),
	o => \instr[19]~input_o\);

-- Location: LCCOMB_X25_Y1_N12
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\immsrc[0]~input_o\ & ((\immsrc[1]~input_o\ & ((\instr[19]~input_o\))) # (!\immsrc[1]~input_o\ & (\instr[31]~input_o\)))) # (!\immsrc[0]~input_o\ & (\instr[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immsrc[0]~input_o\,
	datab => \instr[31]~input_o\,
	datac => \immsrc[1]~input_o\,
	datad => \instr[19]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X31_Y39_N15
\instr[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(0),
	o => \instr[0]~input_o\);

-- Location: IOIBUF_X69_Y54_N22
\instr[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(1),
	o => \instr[1]~input_o\);

-- Location: IOIBUF_X64_Y54_N1
\instr[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(2),
	o => \instr[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\instr[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(3),
	o => \instr[3]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\instr[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(4),
	o => \instr[4]~input_o\);

-- Location: IOIBUF_X78_Y42_N8
\instr[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(5),
	o => \instr[5]~input_o\);

-- Location: IOIBUF_X29_Y39_N1
\instr[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(6),
	o => \instr[6]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
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

ww_immext(0) <= \immext[0]~output_o\;

ww_immext(1) <= \immext[1]~output_o\;

ww_immext(2) <= \immext[2]~output_o\;

ww_immext(3) <= \immext[3]~output_o\;

ww_immext(4) <= \immext[4]~output_o\;

ww_immext(5) <= \immext[5]~output_o\;

ww_immext(6) <= \immext[6]~output_o\;

ww_immext(7) <= \immext[7]~output_o\;

ww_immext(8) <= \immext[8]~output_o\;

ww_immext(9) <= \immext[9]~output_o\;

ww_immext(10) <= \immext[10]~output_o\;

ww_immext(11) <= \immext[11]~output_o\;

ww_immext(12) <= \immext[12]~output_o\;

ww_immext(13) <= \immext[13]~output_o\;

ww_immext(14) <= \immext[14]~output_o\;

ww_immext(15) <= \immext[15]~output_o\;

ww_immext(16) <= \immext[16]~output_o\;

ww_immext(17) <= \immext[17]~output_o\;

ww_immext(18) <= \immext[18]~output_o\;

ww_immext(19) <= \immext[19]~output_o\;

ww_immext(20) <= \immext[20]~output_o\;

ww_immext(21) <= \immext[21]~output_o\;

ww_immext(22) <= \immext[22]~output_o\;

ww_immext(23) <= \immext[23]~output_o\;

ww_immext(24) <= \immext[24]~output_o\;

ww_immext(25) <= \immext[25]~output_o\;

ww_immext(26) <= \immext[26]~output_o\;

ww_immext(27) <= \immext[27]~output_o\;

ww_immext(28) <= \immext[28]~output_o\;

ww_immext(29) <= \immext[29]~output_o\;

ww_immext(30) <= \immext[30]~output_o\;

ww_immext(31) <= \immext[31]~output_o\;
END structure;



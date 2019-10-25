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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/25/2019 09:43:44"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	FPGA_MIPD IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END FPGA_MIPD;

-- Design Ports Information
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FPGA_MIPD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \detectorSub0|saida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|saida~combout\ : std_logic;
SIGNAL \detectorSub0|saida~clkctrl_outclk\ : std_logic;
SIGNAL \mips_r|pc|REGISTRADOR|saida[2]~15_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \mips_r|pc|REGISTRADOR|saida[3]~5_combout\ : std_logic;
SIGNAL \mips_r|pc|REGISTRADOR|saida[3]~6\ : std_logic;
SIGNAL \mips_r|pc|REGISTRADOR|saida[4]~7_combout\ : std_logic;
SIGNAL \mips_r|pc|REGISTRADOR|saida[4]~8\ : std_logic;
SIGNAL \mips_r|pc|REGISTRADOR|saida[5]~9_combout\ : std_logic;
SIGNAL \mips_r|pc|REGISTRADOR|saida[5]~10\ : std_logic;
SIGNAL \mips_r|pc|REGISTRADOR|saida[6]~11_combout\ : std_logic;
SIGNAL \mips_r|pc|REGISTRADOR|saida[6]~12\ : std_logic;
SIGNAL \mips_r|pc|REGISTRADOR|saida[7]~13_combout\ : std_logic;
SIGNAL \mips_r|rom|memROM~2_combout\ : std_logic;
SIGNAL \mips_r|rom|memROM~3_combout\ : std_logic;
SIGNAL \mips_r|rom|memROM~4_combout\ : std_logic;
SIGNAL \mips_r|rom|memROM~10_combout\ : std_logic;
SIGNAL \mips_r|rom|memROM~6_combout\ : std_logic;
SIGNAL \mips_r|rom|memROM~7_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|Equal1~8_combout\ : std_logic;
SIGNAL \mips_r|rom|memROM~8_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~12feeder_combout\ : std_logic;
SIGNAL \mips_r|rom|memROM~5_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~172_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~12_q\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~173_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~17_q\ : std_logic;
SIGNAL \mips_r|ULA|Add0~29_combout\ : std_logic;
SIGNAL \mips_r|ULA|Add0~30_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~178_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~174_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~47_q\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~177_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~171_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~42_q\ : std_logic;
SIGNAL \mips_r|ULA|Add0~28_combout\ : std_logic;
SIGNAL \mips_r|ULA|Add0~31_combout\ : std_logic;
SIGNAL \mips_r|ULA|Add0~32_combout\ : std_logic;
SIGNAL \mips_r|rom|memROM~9_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|saidaA[1]~2_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~179_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~46_q\ : std_logic;
SIGNAL \mips_r|bancoReg|saidaA[2]~0_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|saidaA[0]~3_combout\ : std_logic;
SIGNAL \mips_r|ULA|Add0~37_cout\ : std_logic;
SIGNAL \mips_r|ULA|Add0~38_combout\ : std_logic;
SIGNAL \mips_r|ULA|Add0~46_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~41_q\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~11_q\ : std_logic;
SIGNAL \mips_r|ULA|Add0~33_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~180_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~16_q\ : std_logic;
SIGNAL \mips_r|ULA|Add0~34_combout\ : std_logic;
SIGNAL \mips_r|ULA|Add0~35_combout\ : std_logic;
SIGNAL \mips_r|ULA|Add0~39\ : std_logic;
SIGNAL \mips_r|ULA|Add0~40_combout\ : std_logic;
SIGNAL \mips_r|ULA|Add0~45_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~49_q\ : std_logic;
SIGNAL \mips_r|bancoReg|saidaA[3]~4_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~19_q\ : std_logic;
SIGNAL \mips_r|ULA|Add0~19_combout\ : std_logic;
SIGNAL \mips_r|ULA|Add0~17_combout\ : std_logic;
SIGNAL \mips_r|ULA|Add0~50_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~18feeder_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~18_q\ : std_logic;
SIGNAL \mips_r|ULA|Add0~25_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~175_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~43_q\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~13_q\ : std_logic;
SIGNAL \mips_r|ULA|Add0~24_combout\ : std_logic;
SIGNAL \mips_r|ULA|Add0~26_combout\ : std_logic;
SIGNAL \mips_r|ULA|Add0~27_combout\ : std_logic;
SIGNAL \mips_r|ULA|Add0~41\ : std_logic;
SIGNAL \mips_r|ULA|Add0~42_combout\ : std_logic;
SIGNAL \mips_r|ULA|Add0~44_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~176_combout\ : std_logic;
SIGNAL \mips_r|bancoReg|memROM~48_q\ : std_logic;
SIGNAL \mips_r|bancoReg|saidaA[2]~1_combout\ : std_logic;
SIGNAL \mips_r|ULA|Add0~43\ : std_logic;
SIGNAL \mips_r|ULA|Add0~47_combout\ : std_logic;
SIGNAL \mips_r|ULA|Add0~49_combout\ : std_logic;
SIGNAL \conv7seg0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conv7seg0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conv7seg0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conv7seg0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conv7seg0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conv7seg0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conv7seg0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \mips_r|pc|REGISTRADOR|saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mips_r|rom|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \conv7seg0|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \mips_r|rom|ALT_INV_memROM~7_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\detectorSub0|saida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \detectorSub0|saida~combout\);
\mips_r|rom|ALT_INV_memROM~10_combout\ <= NOT \mips_r|rom|memROM~10_combout\;
\conv7seg0|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \conv7seg0|rascSaida7seg[2]~2_combout\;
\mips_r|rom|ALT_INV_memROM~7_combout\ <= NOT \mips_r|rom|memROM~7_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mips_r|rom|memROM~3_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mips_r|rom|memROM~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mips_r|rom|memROM~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mips_r|rom|ALT_INV_memROM~10_combout\,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mips_r|rom|ALT_INV_memROM~10_combout\,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mips_r|rom|ALT_INV_memROM~7_combout\,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mips_r|rom|memROM~3_combout\,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg0|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conv7seg0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X114_Y40_N24
\detectorSub0|saidaQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \detectorSub0|saidaQ~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	combout => \detectorSub0|saidaQ~0_combout\);

-- Location: FF_X114_Y40_N15
\detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \detectorSub0|saidaQ~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSub0|saidaQ~q\);

-- Location: LCCOMB_X114_Y40_N14
\detectorSub0|saida\ : cycloneive_lcell_comb
-- Equation(s):
-- \detectorSub0|saida~combout\ = LCELL((\detectorSub0|saidaQ~q\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \detectorSub0|saidaQ~q\,
	datad => \KEY[0]~input_o\,
	combout => \detectorSub0|saida~combout\);

-- Location: CLKCTRL_G8
\detectorSub0|saida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \detectorSub0|saida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \detectorSub0|saida~clkctrl_outclk\);

-- Location: LCCOMB_X98_Y69_N4
\mips_r|pc|REGISTRADOR|saida[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|pc|REGISTRADOR|saida[2]~15_combout\ = !\mips_r|pc|REGISTRADOR|saida\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_r|pc|REGISTRADOR|saida\(2),
	combout => \mips_r|pc|REGISTRADOR|saida[2]~15_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X98_Y69_N5
\mips_r|pc|REGISTRADOR|saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	d => \mips_r|pc|REGISTRADOR|saida[2]~15_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|pc|REGISTRADOR|saida\(2));

-- Location: LCCOMB_X98_Y69_N6
\mips_r|pc|REGISTRADOR|saida[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|pc|REGISTRADOR|saida[3]~5_combout\ = (\mips_r|pc|REGISTRADOR|saida\(3) & (\mips_r|pc|REGISTRADOR|saida\(2) $ (VCC))) # (!\mips_r|pc|REGISTRADOR|saida\(3) & (\mips_r|pc|REGISTRADOR|saida\(2) & VCC))
-- \mips_r|pc|REGISTRADOR|saida[3]~6\ = CARRY((\mips_r|pc|REGISTRADOR|saida\(3) & \mips_r|pc|REGISTRADOR|saida\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|pc|REGISTRADOR|saida\(3),
	datab => \mips_r|pc|REGISTRADOR|saida\(2),
	datad => VCC,
	combout => \mips_r|pc|REGISTRADOR|saida[3]~5_combout\,
	cout => \mips_r|pc|REGISTRADOR|saida[3]~6\);

-- Location: FF_X98_Y69_N7
\mips_r|pc|REGISTRADOR|saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	d => \mips_r|pc|REGISTRADOR|saida[3]~5_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|pc|REGISTRADOR|saida\(3));

-- Location: LCCOMB_X98_Y69_N8
\mips_r|pc|REGISTRADOR|saida[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|pc|REGISTRADOR|saida[4]~7_combout\ = (\mips_r|pc|REGISTRADOR|saida\(4) & (!\mips_r|pc|REGISTRADOR|saida[3]~6\)) # (!\mips_r|pc|REGISTRADOR|saida\(4) & ((\mips_r|pc|REGISTRADOR|saida[3]~6\) # (GND)))
-- \mips_r|pc|REGISTRADOR|saida[4]~8\ = CARRY((!\mips_r|pc|REGISTRADOR|saida[3]~6\) # (!\mips_r|pc|REGISTRADOR|saida\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|pc|REGISTRADOR|saida\(4),
	datad => VCC,
	cin => \mips_r|pc|REGISTRADOR|saida[3]~6\,
	combout => \mips_r|pc|REGISTRADOR|saida[4]~7_combout\,
	cout => \mips_r|pc|REGISTRADOR|saida[4]~8\);

-- Location: FF_X98_Y69_N9
\mips_r|pc|REGISTRADOR|saida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	d => \mips_r|pc|REGISTRADOR|saida[4]~7_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|pc|REGISTRADOR|saida\(4));

-- Location: LCCOMB_X98_Y69_N10
\mips_r|pc|REGISTRADOR|saida[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|pc|REGISTRADOR|saida[5]~9_combout\ = (\mips_r|pc|REGISTRADOR|saida\(5) & (\mips_r|pc|REGISTRADOR|saida[4]~8\ $ (GND))) # (!\mips_r|pc|REGISTRADOR|saida\(5) & (!\mips_r|pc|REGISTRADOR|saida[4]~8\ & VCC))
-- \mips_r|pc|REGISTRADOR|saida[5]~10\ = CARRY((\mips_r|pc|REGISTRADOR|saida\(5) & !\mips_r|pc|REGISTRADOR|saida[4]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mips_r|pc|REGISTRADOR|saida\(5),
	datad => VCC,
	cin => \mips_r|pc|REGISTRADOR|saida[4]~8\,
	combout => \mips_r|pc|REGISTRADOR|saida[5]~9_combout\,
	cout => \mips_r|pc|REGISTRADOR|saida[5]~10\);

-- Location: FF_X98_Y69_N11
\mips_r|pc|REGISTRADOR|saida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	d => \mips_r|pc|REGISTRADOR|saida[5]~9_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|pc|REGISTRADOR|saida\(5));

-- Location: LCCOMB_X98_Y69_N12
\mips_r|pc|REGISTRADOR|saida[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|pc|REGISTRADOR|saida[6]~11_combout\ = (\mips_r|pc|REGISTRADOR|saida\(6) & (!\mips_r|pc|REGISTRADOR|saida[5]~10\)) # (!\mips_r|pc|REGISTRADOR|saida\(6) & ((\mips_r|pc|REGISTRADOR|saida[5]~10\) # (GND)))
-- \mips_r|pc|REGISTRADOR|saida[6]~12\ = CARRY((!\mips_r|pc|REGISTRADOR|saida[5]~10\) # (!\mips_r|pc|REGISTRADOR|saida\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mips_r|pc|REGISTRADOR|saida\(6),
	datad => VCC,
	cin => \mips_r|pc|REGISTRADOR|saida[5]~10\,
	combout => \mips_r|pc|REGISTRADOR|saida[6]~11_combout\,
	cout => \mips_r|pc|REGISTRADOR|saida[6]~12\);

-- Location: FF_X98_Y69_N13
\mips_r|pc|REGISTRADOR|saida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	d => \mips_r|pc|REGISTRADOR|saida[6]~11_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|pc|REGISTRADOR|saida\(6));

-- Location: LCCOMB_X98_Y69_N14
\mips_r|pc|REGISTRADOR|saida[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|pc|REGISTRADOR|saida[7]~13_combout\ = \mips_r|pc|REGISTRADOR|saida[6]~12\ $ (!\mips_r|pc|REGISTRADOR|saida\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mips_r|pc|REGISTRADOR|saida\(7),
	cin => \mips_r|pc|REGISTRADOR|saida[6]~12\,
	combout => \mips_r|pc|REGISTRADOR|saida[7]~13_combout\);

-- Location: FF_X98_Y69_N15
\mips_r|pc|REGISTRADOR|saida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	d => \mips_r|pc|REGISTRADOR|saida[7]~13_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|pc|REGISTRADOR|saida\(7));

-- Location: LCCOMB_X98_Y69_N2
\mips_r|rom|memROM~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|rom|memROM~2_combout\ = (!\mips_r|pc|REGISTRADOR|saida\(5) & (!\mips_r|pc|REGISTRADOR|saida\(4) & (!\mips_r|pc|REGISTRADOR|saida\(7) & !\mips_r|pc|REGISTRADOR|saida\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|pc|REGISTRADOR|saida\(5),
	datab => \mips_r|pc|REGISTRADOR|saida\(4),
	datac => \mips_r|pc|REGISTRADOR|saida\(7),
	datad => \mips_r|pc|REGISTRADOR|saida\(6),
	combout => \mips_r|rom|memROM~2_combout\);

-- Location: LCCOMB_X97_Y69_N4
\mips_r|rom|memROM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|rom|memROM~3_combout\ = (\mips_r|pc|REGISTRADOR|saida\(2) & \mips_r|rom|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|pc|REGISTRADOR|saida\(2),
	datad => \mips_r|rom|memROM~2_combout\,
	combout => \mips_r|rom|memROM~3_combout\);

-- Location: LCCOMB_X95_Y69_N28
\mips_r|rom|memROM~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|rom|memROM~4_combout\ = (\mips_r|pc|REGISTRADOR|saida\(4)) # ((\mips_r|pc|REGISTRADOR|saida\(5)) # ((\mips_r|pc|REGISTRADOR|saida\(2) & \mips_r|pc|REGISTRADOR|saida\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|pc|REGISTRADOR|saida\(4),
	datab => \mips_r|pc|REGISTRADOR|saida\(2),
	datac => \mips_r|pc|REGISTRADOR|saida\(5),
	datad => \mips_r|pc|REGISTRADOR|saida\(3),
	combout => \mips_r|rom|memROM~4_combout\);

-- Location: LCCOMB_X95_Y69_N26
\mips_r|rom|memROM~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|rom|memROM~10_combout\ = (\mips_r|pc|REGISTRADOR|saida\(7)) # ((\mips_r|pc|REGISTRADOR|saida\(6)) # (\mips_r|rom|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|pc|REGISTRADOR|saida\(7),
	datac => \mips_r|pc|REGISTRADOR|saida\(6),
	datad => \mips_r|rom|memROM~4_combout\,
	combout => \mips_r|rom|memROM~10_combout\);

-- Location: LCCOMB_X98_Y69_N16
\mips_r|rom|memROM~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|rom|memROM~6_combout\ = (\mips_r|pc|REGISTRADOR|saida\(5)) # ((\mips_r|pc|REGISTRADOR|saida\(4)) # (\mips_r|pc|REGISTRADOR|saida\(2) $ (\mips_r|pc|REGISTRADOR|saida\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|pc|REGISTRADOR|saida\(5),
	datab => \mips_r|pc|REGISTRADOR|saida\(2),
	datac => \mips_r|pc|REGISTRADOR|saida\(4),
	datad => \mips_r|pc|REGISTRADOR|saida\(3),
	combout => \mips_r|rom|memROM~6_combout\);

-- Location: LCCOMB_X98_Y69_N18
\mips_r|rom|memROM~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|rom|memROM~7_combout\ = (\mips_r|pc|REGISTRADOR|saida\(6)) # ((\mips_r|pc|REGISTRADOR|saida\(7)) # (\mips_r|rom|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|pc|REGISTRADOR|saida\(6),
	datac => \mips_r|pc|REGISTRADOR|saida\(7),
	datad => \mips_r|rom|memROM~6_combout\,
	combout => \mips_r|rom|memROM~7_combout\);

-- Location: LCCOMB_X98_Y69_N30
\mips_r|bancoReg|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|bancoReg|Equal1~8_combout\ = (\mips_r|rom|memROM~7_combout\ & (((!\mips_r|pc|REGISTRADOR|saida\(3) & !\mips_r|pc|REGISTRADOR|saida\(2))) # (!\mips_r|rom|memROM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|pc|REGISTRADOR|saida\(3),
	datab => \mips_r|rom|memROM~2_combout\,
	datac => \mips_r|pc|REGISTRADOR|saida\(2),
	datad => \mips_r|rom|memROM~7_combout\,
	combout => \mips_r|bancoReg|Equal1~8_combout\);

-- Location: LCCOMB_X98_Y69_N22
\mips_r|rom|memROM~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|rom|memROM~8_combout\ = (\mips_r|pc|REGISTRADOR|saida\(3) & \mips_r|rom|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_r|pc|REGISTRADOR|saida\(3),
	datad => \mips_r|rom|memROM~2_combout\,
	combout => \mips_r|rom|memROM~8_combout\);

-- Location: LCCOMB_X99_Y69_N4
\mips_r|bancoReg|memROM~12feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|bancoReg|memROM~12feeder_combout\ = \mips_r|ULA|Add0~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_r|ULA|Add0~45_combout\,
	combout => \mips_r|bancoReg|memROM~12feeder_combout\);

-- Location: LCCOMB_X98_Y69_N20
\mips_r|rom|memROM~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|rom|memROM~5_combout\ = (!\mips_r|pc|REGISTRADOR|saida\(7) & !\mips_r|pc|REGISTRADOR|saida\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_r|pc|REGISTRADOR|saida\(7),
	datad => \mips_r|pc|REGISTRADOR|saida\(6),
	combout => \mips_r|rom|memROM~5_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X95_Y69_N16
\mips_r|bancoReg|memROM~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|bancoReg|memROM~172_combout\ = (!\mips_r|rom|memROM~2_combout\ & (\SW[1]~input_o\ & ((\mips_r|rom|memROM~4_combout\) # (!\mips_r|rom|memROM~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|rom|memROM~5_combout\,
	datab => \mips_r|rom|memROM~2_combout\,
	datac => \SW[1]~input_o\,
	datad => \mips_r|rom|memROM~4_combout\,
	combout => \mips_r|bancoReg|memROM~172_combout\);

-- Location: FF_X99_Y69_N5
\mips_r|bancoReg|memROM~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	d => \mips_r|bancoReg|memROM~12feeder_combout\,
	ena => \mips_r|bancoReg|memROM~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|bancoReg|memROM~12_q\);

-- Location: LCCOMB_X95_Y69_N6
\mips_r|bancoReg|memROM~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|bancoReg|memROM~173_combout\ = (\mips_r|rom|memROM~2_combout\ & (\SW[1]~input_o\ & ((\mips_r|rom|memROM~4_combout\) # (!\mips_r|rom|memROM~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|rom|memROM~5_combout\,
	datab => \mips_r|rom|memROM~2_combout\,
	datac => \SW[1]~input_o\,
	datad => \mips_r|rom|memROM~4_combout\,
	combout => \mips_r|bancoReg|memROM~173_combout\);

-- Location: FF_X97_Y69_N21
\mips_r|bancoReg|memROM~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	asdata => \mips_r|ULA|Add0~45_combout\,
	sload => VCC,
	ena => \mips_r|bancoReg|memROM~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|bancoReg|memROM~17_q\);

-- Location: LCCOMB_X99_Y69_N6
\mips_r|ULA|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~29_combout\ = (\mips_r|pc|REGISTRADOR|saida\(7) & (\mips_r|bancoReg|memROM~12_q\)) # (!\mips_r|pc|REGISTRADOR|saida\(7) & ((\mips_r|bancoReg|memROM~17_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_r|bancoReg|memROM~12_q\,
	datac => \mips_r|bancoReg|memROM~17_q\,
	datad => \mips_r|pc|REGISTRADOR|saida\(7),
	combout => \mips_r|ULA|Add0~29_combout\);

-- Location: LCCOMB_X99_Y69_N12
\mips_r|ULA|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~30_combout\ = (\mips_r|pc|REGISTRADOR|saida\(6) & (\mips_r|bancoReg|memROM~12_q\)) # (!\mips_r|pc|REGISTRADOR|saida\(6) & ((\mips_r|rom|memROM~6_combout\ & (\mips_r|bancoReg|memROM~12_q\)) # (!\mips_r|rom|memROM~6_combout\ & 
-- ((\mips_r|ULA|Add0~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|pc|REGISTRADOR|saida\(6),
	datab => \mips_r|bancoReg|memROM~12_q\,
	datac => \mips_r|rom|memROM~6_combout\,
	datad => \mips_r|ULA|Add0~29_combout\,
	combout => \mips_r|ULA|Add0~30_combout\);

-- Location: LCCOMB_X98_Y69_N28
\mips_r|bancoReg|memROM~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|bancoReg|memROM~178_combout\ = !\mips_r|ULA|Add0~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_r|ULA|Add0~45_combout\,
	combout => \mips_r|bancoReg|memROM~178_combout\);

-- Location: LCCOMB_X95_Y69_N4
\mips_r|bancoReg|memROM~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|bancoReg|memROM~174_combout\ = (\mips_r|rom|memROM~5_combout\ & (\mips_r|rom|memROM~2_combout\ & (\SW[1]~input_o\ & !\mips_r|rom|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|rom|memROM~5_combout\,
	datab => \mips_r|rom|memROM~2_combout\,
	datac => \SW[1]~input_o\,
	datad => \mips_r|rom|memROM~4_combout\,
	combout => \mips_r|bancoReg|memROM~174_combout\);

-- Location: FF_X98_Y69_N29
\mips_r|bancoReg|memROM~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	d => \mips_r|bancoReg|memROM~178_combout\,
	ena => \mips_r|bancoReg|memROM~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|bancoReg|memROM~47_q\);

-- Location: LCCOMB_X97_Y69_N8
\mips_r|bancoReg|memROM~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|bancoReg|memROM~177_combout\ = !\mips_r|ULA|Add0~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_r|ULA|Add0~45_combout\,
	combout => \mips_r|bancoReg|memROM~177_combout\);

-- Location: LCCOMB_X95_Y69_N22
\mips_r|bancoReg|memROM~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|bancoReg|memROM~171_combout\ = (\mips_r|rom|memROM~5_combout\ & (!\mips_r|rom|memROM~2_combout\ & (\SW[1]~input_o\ & !\mips_r|rom|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|rom|memROM~5_combout\,
	datab => \mips_r|rom|memROM~2_combout\,
	datac => \SW[1]~input_o\,
	datad => \mips_r|rom|memROM~4_combout\,
	combout => \mips_r|bancoReg|memROM~171_combout\);

-- Location: FF_X97_Y69_N9
\mips_r|bancoReg|memROM~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	d => \mips_r|bancoReg|memROM~177_combout\,
	ena => \mips_r|bancoReg|memROM~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|bancoReg|memROM~42_q\);

-- Location: LCCOMB_X97_Y69_N18
\mips_r|ULA|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~28_combout\ = (\mips_r|rom|memROM~7_combout\ & ((\mips_r|bancoReg|memROM~42_q\))) # (!\mips_r|rom|memROM~7_combout\ & (\mips_r|bancoReg|memROM~47_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_r|bancoReg|memROM~47_q\,
	datac => \mips_r|bancoReg|memROM~42_q\,
	datad => \mips_r|rom|memROM~7_combout\,
	combout => \mips_r|ULA|Add0~28_combout\);

-- Location: LCCOMB_X96_Y69_N10
\mips_r|ULA|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~31_combout\ = (\mips_r|rom|memROM~3_combout\ & (\mips_r|rom|memROM~8_combout\ & ((\mips_r|ULA|Add0~28_combout\)))) # (!\mips_r|rom|memROM~3_combout\ & (!\mips_r|rom|memROM~8_combout\ & (\mips_r|ULA|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|rom|memROM~3_combout\,
	datab => \mips_r|rom|memROM~8_combout\,
	datac => \mips_r|ULA|Add0~30_combout\,
	datad => \mips_r|ULA|Add0~28_combout\,
	combout => \mips_r|ULA|Add0~31_combout\);

-- Location: LCCOMB_X96_Y69_N12
\mips_r|ULA|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~32_combout\ = (!\mips_r|bancoReg|Equal1~8_combout\ & \mips_r|ULA|Add0~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_r|bancoReg|Equal1~8_combout\,
	datad => \mips_r|ULA|Add0~31_combout\,
	combout => \mips_r|ULA|Add0~32_combout\);

-- Location: LCCOMB_X98_Y69_N24
\mips_r|rom|memROM~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|rom|memROM~9_combout\ = (!\mips_r|pc|REGISTRADOR|saida\(5) & (!\mips_r|pc|REGISTRADOR|saida\(4) & ((\mips_r|pc|REGISTRADOR|saida\(3)) # (\mips_r|pc|REGISTRADOR|saida\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|pc|REGISTRADOR|saida\(3),
	datab => \mips_r|pc|REGISTRADOR|saida\(2),
	datac => \mips_r|pc|REGISTRADOR|saida\(5),
	datad => \mips_r|pc|REGISTRADOR|saida\(4),
	combout => \mips_r|rom|memROM~9_combout\);

-- Location: LCCOMB_X97_Y69_N10
\mips_r|bancoReg|saidaA[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|bancoReg|saidaA[1]~2_combout\ = (\mips_r|rom|memROM~2_combout\ & ((!\mips_r|rom|memROM~9_combout\) # (!\mips_r|bancoReg|memROM~47_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_r|bancoReg|memROM~47_q\,
	datac => \mips_r|rom|memROM~9_combout\,
	datad => \mips_r|rom|memROM~2_combout\,
	combout => \mips_r|bancoReg|saidaA[1]~2_combout\);

-- Location: LCCOMB_X95_Y69_N12
\mips_r|bancoReg|memROM~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|bancoReg|memROM~179_combout\ = !\mips_r|ULA|Add0~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_r|ULA|Add0~46_combout\,
	combout => \mips_r|bancoReg|memROM~179_combout\);

-- Location: FF_X95_Y69_N13
\mips_r|bancoReg|memROM~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	d => \mips_r|bancoReg|memROM~179_combout\,
	ena => \mips_r|bancoReg|memROM~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|bancoReg|memROM~46_q\);

-- Location: LCCOMB_X98_Y69_N26
\mips_r|bancoReg|saidaA[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|bancoReg|saidaA[2]~0_combout\ = (!\mips_r|pc|REGISTRADOR|saida\(5) & !\mips_r|pc|REGISTRADOR|saida\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_r|pc|REGISTRADOR|saida\(5),
	datad => \mips_r|pc|REGISTRADOR|saida\(4),
	combout => \mips_r|bancoReg|saidaA[2]~0_combout\);

-- Location: LCCOMB_X96_Y69_N8
\mips_r|bancoReg|saidaA[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|bancoReg|saidaA[0]~3_combout\ = (\mips_r|rom|memROM~5_combout\ & (\mips_r|rom|memROM~9_combout\ & ((!\mips_r|bancoReg|saidaA[2]~0_combout\) # (!\mips_r|bancoReg|memROM~46_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|bancoReg|memROM~46_q\,
	datab => \mips_r|rom|memROM~5_combout\,
	datac => \mips_r|rom|memROM~9_combout\,
	datad => \mips_r|bancoReg|saidaA[2]~0_combout\,
	combout => \mips_r|bancoReg|saidaA[0]~3_combout\);

-- Location: LCCOMB_X96_Y69_N16
\mips_r|ULA|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~37_cout\ = CARRY(\mips_r|rom|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|rom|memROM~3_combout\,
	datad => VCC,
	cout => \mips_r|ULA|Add0~37_cout\);

-- Location: LCCOMB_X96_Y69_N18
\mips_r|ULA|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~38_combout\ = (\mips_r|ULA|Add0~35_combout\ & ((\mips_r|bancoReg|saidaA[0]~3_combout\ & (\mips_r|ULA|Add0~37_cout\ & VCC)) # (!\mips_r|bancoReg|saidaA[0]~3_combout\ & (!\mips_r|ULA|Add0~37_cout\)))) # (!\mips_r|ULA|Add0~35_combout\ & 
-- ((\mips_r|bancoReg|saidaA[0]~3_combout\ & (!\mips_r|ULA|Add0~37_cout\)) # (!\mips_r|bancoReg|saidaA[0]~3_combout\ & ((\mips_r|ULA|Add0~37_cout\) # (GND)))))
-- \mips_r|ULA|Add0~39\ = CARRY((\mips_r|ULA|Add0~35_combout\ & (!\mips_r|bancoReg|saidaA[0]~3_combout\ & !\mips_r|ULA|Add0~37_cout\)) # (!\mips_r|ULA|Add0~35_combout\ & ((!\mips_r|ULA|Add0~37_cout\) # (!\mips_r|bancoReg|saidaA[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|ULA|Add0~35_combout\,
	datab => \mips_r|bancoReg|saidaA[0]~3_combout\,
	datad => VCC,
	cin => \mips_r|ULA|Add0~37_cout\,
	combout => \mips_r|ULA|Add0~38_combout\,
	cout => \mips_r|ULA|Add0~39\);

-- Location: LCCOMB_X96_Y69_N0
\mips_r|ULA|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~46_combout\ = (\mips_r|rom|memROM~2_combout\ & ((\mips_r|ULA|Add0~38_combout\))) # (!\mips_r|rom|memROM~2_combout\ & (\mips_r|bancoReg|saidaA[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_r|rom|memROM~2_combout\,
	datac => \mips_r|bancoReg|saidaA[0]~3_combout\,
	datad => \mips_r|ULA|Add0~38_combout\,
	combout => \mips_r|ULA|Add0~46_combout\);

-- Location: FF_X96_Y69_N1
\mips_r|bancoReg|memROM~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	d => \mips_r|ULA|Add0~46_combout\,
	ena => \mips_r|bancoReg|memROM~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|bancoReg|memROM~41_q\);

-- Location: FF_X96_Y69_N27
\mips_r|bancoReg|memROM~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	asdata => \mips_r|ULA|Add0~46_combout\,
	sload => VCC,
	ena => \mips_r|bancoReg|memROM~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|bancoReg|memROM~11_q\);

-- Location: LCCOMB_X96_Y69_N26
\mips_r|ULA|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~33_combout\ = (\mips_r|rom|memROM~8_combout\ & (!\mips_r|bancoReg|memROM~41_q\ & ((\mips_r|rom|memROM~3_combout\)))) # (!\mips_r|rom|memROM~8_combout\ & (((\mips_r|bancoReg|memROM~11_q\) # (\mips_r|rom|memROM~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|rom|memROM~8_combout\,
	datab => \mips_r|bancoReg|memROM~41_q\,
	datac => \mips_r|bancoReg|memROM~11_q\,
	datad => \mips_r|rom|memROM~3_combout\,
	combout => \mips_r|ULA|Add0~33_combout\);

-- Location: LCCOMB_X95_Y69_N18
\mips_r|bancoReg|memROM~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|bancoReg|memROM~180_combout\ = !\mips_r|ULA|Add0~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_r|ULA|Add0~46_combout\,
	combout => \mips_r|bancoReg|memROM~180_combout\);

-- Location: FF_X95_Y69_N19
\mips_r|bancoReg|memROM~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	d => \mips_r|bancoReg|memROM~180_combout\,
	ena => \mips_r|bancoReg|memROM~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|bancoReg|memROM~16_q\);

-- Location: LCCOMB_X96_Y69_N2
\mips_r|ULA|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~34_combout\ = (\mips_r|rom|memROM~8_combout\ & ((\mips_r|bancoReg|memROM~46_q\) # ((!\mips_r|rom|memROM~3_combout\)))) # (!\mips_r|rom|memROM~8_combout\ & (((!\mips_r|bancoReg|memROM~16_q\ & !\mips_r|rom|memROM~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|bancoReg|memROM~46_q\,
	datab => \mips_r|bancoReg|memROM~16_q\,
	datac => \mips_r|rom|memROM~8_combout\,
	datad => \mips_r|rom|memROM~3_combout\,
	combout => \mips_r|ULA|Add0~34_combout\);

-- Location: LCCOMB_X96_Y69_N30
\mips_r|ULA|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~35_combout\ = (!\mips_r|bancoReg|Equal1~8_combout\ & ((\mips_r|rom|memROM~7_combout\ & (\mips_r|ULA|Add0~33_combout\)) # (!\mips_r|rom|memROM~7_combout\ & ((\mips_r|ULA|Add0~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|bancoReg|Equal1~8_combout\,
	datab => \mips_r|rom|memROM~7_combout\,
	datac => \mips_r|ULA|Add0~33_combout\,
	datad => \mips_r|ULA|Add0~34_combout\,
	combout => \mips_r|ULA|Add0~35_combout\);

-- Location: LCCOMB_X96_Y69_N20
\mips_r|ULA|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~40_combout\ = ((\mips_r|ULA|Add0~32_combout\ $ (\mips_r|bancoReg|saidaA[1]~2_combout\ $ (!\mips_r|ULA|Add0~39\)))) # (GND)
-- \mips_r|ULA|Add0~41\ = CARRY((\mips_r|ULA|Add0~32_combout\ & ((\mips_r|bancoReg|saidaA[1]~2_combout\) # (!\mips_r|ULA|Add0~39\))) # (!\mips_r|ULA|Add0~32_combout\ & (\mips_r|bancoReg|saidaA[1]~2_combout\ & !\mips_r|ULA|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|ULA|Add0~32_combout\,
	datab => \mips_r|bancoReg|saidaA[1]~2_combout\,
	datad => VCC,
	cin => \mips_r|ULA|Add0~39\,
	combout => \mips_r|ULA|Add0~40_combout\,
	cout => \mips_r|ULA|Add0~41\);

-- Location: LCCOMB_X97_Y69_N28
\mips_r|ULA|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~45_combout\ = (\mips_r|rom|memROM~2_combout\ & \mips_r|ULA|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|rom|memROM~2_combout\,
	datad => \mips_r|ULA|Add0~40_combout\,
	combout => \mips_r|ULA|Add0~45_combout\);

-- Location: FF_X95_Y69_N11
\mips_r|bancoReg|memROM~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	asdata => \mips_r|ULA|Add0~49_combout\,
	sload => VCC,
	ena => \mips_r|bancoReg|memROM~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|bancoReg|memROM~49_q\);

-- Location: LCCOMB_X95_Y69_N20
\mips_r|bancoReg|saidaA[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|bancoReg|saidaA[3]~4_combout\ = (\mips_r|bancoReg|memROM~49_q\ & (\mips_r|rom|memROM~2_combout\ & \mips_r|rom|memROM~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|bancoReg|memROM~49_q\,
	datac => \mips_r|rom|memROM~2_combout\,
	datad => \mips_r|rom|memROM~9_combout\,
	combout => \mips_r|bancoReg|saidaA[3]~4_combout\);

-- Location: FF_X95_Y69_N1
\mips_r|bancoReg|memROM~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	asdata => \mips_r|ULA|Add0~49_combout\,
	sload => VCC,
	ena => \mips_r|bancoReg|memROM~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|bancoReg|memROM~19_q\);

-- Location: LCCOMB_X95_Y69_N0
\mips_r|ULA|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~19_combout\ = (\mips_r|pc|REGISTRADOR|saida\(3) & (\mips_r|pc|REGISTRADOR|saida\(2) & ((!\mips_r|bancoReg|memROM~49_q\)))) # (!\mips_r|pc|REGISTRADOR|saida\(3) & ((\mips_r|pc|REGISTRADOR|saida\(2)) # ((\mips_r|bancoReg|memROM~19_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|pc|REGISTRADOR|saida\(3),
	datab => \mips_r|pc|REGISTRADOR|saida\(2),
	datac => \mips_r|bancoReg|memROM~19_q\,
	datad => \mips_r|bancoReg|memROM~49_q\,
	combout => \mips_r|ULA|Add0~19_combout\);

-- Location: LCCOMB_X95_Y69_N24
\mips_r|ULA|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~17_combout\ = (!\mips_r|pc|REGISTRADOR|saida\(6) & \mips_r|ULA|Add0~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_r|pc|REGISTRADOR|saida\(6),
	datad => \mips_r|ULA|Add0~19_combout\,
	combout => \mips_r|ULA|Add0~17_combout\);

-- Location: LCCOMB_X95_Y69_N2
\mips_r|ULA|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~50_combout\ = (!\mips_r|pc|REGISTRADOR|saida\(7) & (!\mips_r|pc|REGISTRADOR|saida\(4) & (!\mips_r|pc|REGISTRADOR|saida\(5) & \mips_r|ULA|Add0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|pc|REGISTRADOR|saida\(7),
	datab => \mips_r|pc|REGISTRADOR|saida\(4),
	datac => \mips_r|pc|REGISTRADOR|saida\(5),
	datad => \mips_r|ULA|Add0~17_combout\,
	combout => \mips_r|ULA|Add0~50_combout\);

-- Location: LCCOMB_X97_Y69_N14
\mips_r|bancoReg|memROM~18feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|bancoReg|memROM~18feeder_combout\ = \mips_r|ULA|Add0~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_r|ULA|Add0~44_combout\,
	combout => \mips_r|bancoReg|memROM~18feeder_combout\);

-- Location: FF_X97_Y69_N15
\mips_r|bancoReg|memROM~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	d => \mips_r|bancoReg|memROM~18feeder_combout\,
	ena => \mips_r|bancoReg|memROM~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|bancoReg|memROM~18_q\);

-- Location: LCCOMB_X98_Y69_N0
\mips_r|ULA|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~25_combout\ = (\mips_r|bancoReg|memROM~18_q\ & (!\mips_r|rom|memROM~7_combout\ & ((!\mips_r|pc|REGISTRADOR|saida\(2)) # (!\mips_r|rom|memROM~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|bancoReg|memROM~18_q\,
	datab => \mips_r|rom|memROM~2_combout\,
	datac => \mips_r|pc|REGISTRADOR|saida\(2),
	datad => \mips_r|rom|memROM~7_combout\,
	combout => \mips_r|ULA|Add0~25_combout\);

-- Location: LCCOMB_X96_Y69_N28
\mips_r|bancoReg|memROM~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|bancoReg|memROM~175_combout\ = !\mips_r|ULA|Add0~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_r|ULA|Add0~44_combout\,
	combout => \mips_r|bancoReg|memROM~175_combout\);

-- Location: FF_X96_Y69_N29
\mips_r|bancoReg|memROM~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	d => \mips_r|bancoReg|memROM~175_combout\,
	ena => \mips_r|bancoReg|memROM~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|bancoReg|memROM~43_q\);

-- Location: FF_X96_Y69_N15
\mips_r|bancoReg|memROM~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	asdata => \mips_r|ULA|Add0~44_combout\,
	sload => VCC,
	ena => \mips_r|bancoReg|memROM~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|bancoReg|memROM~13_q\);

-- Location: LCCOMB_X96_Y69_N14
\mips_r|ULA|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~24_combout\ = (\mips_r|rom|memROM~7_combout\ & ((\mips_r|rom|memROM~3_combout\ & (\mips_r|bancoReg|memROM~43_q\)) # (!\mips_r|rom|memROM~3_combout\ & ((\mips_r|bancoReg|memROM~13_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|rom|memROM~7_combout\,
	datab => \mips_r|bancoReg|memROM~43_q\,
	datac => \mips_r|bancoReg|memROM~13_q\,
	datad => \mips_r|rom|memROM~3_combout\,
	combout => \mips_r|ULA|Add0~24_combout\);

-- Location: LCCOMB_X97_Y69_N24
\mips_r|ULA|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~26_combout\ = (\mips_r|rom|memROM~3_combout\ & (((\mips_r|bancoReg|memROM~48_q\ & !\mips_r|rom|memROM~7_combout\)) # (!\mips_r|rom|memROM~8_combout\))) # (!\mips_r|rom|memROM~3_combout\ & (((\mips_r|rom|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|bancoReg|memROM~48_q\,
	datab => \mips_r|rom|memROM~7_combout\,
	datac => \mips_r|rom|memROM~3_combout\,
	datad => \mips_r|rom|memROM~8_combout\,
	combout => \mips_r|ULA|Add0~26_combout\);

-- Location: LCCOMB_X96_Y69_N4
\mips_r|ULA|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~27_combout\ = (!\mips_r|bancoReg|Equal1~8_combout\ & ((\mips_r|ULA|Add0~25_combout\) # ((\mips_r|ULA|Add0~24_combout\) # (\mips_r|ULA|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|bancoReg|Equal1~8_combout\,
	datab => \mips_r|ULA|Add0~25_combout\,
	datac => \mips_r|ULA|Add0~24_combout\,
	datad => \mips_r|ULA|Add0~26_combout\,
	combout => \mips_r|ULA|Add0~27_combout\);

-- Location: LCCOMB_X96_Y69_N22
\mips_r|ULA|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~42_combout\ = (\mips_r|bancoReg|saidaA[2]~1_combout\ & ((\mips_r|ULA|Add0~27_combout\ & (\mips_r|ULA|Add0~41\ & VCC)) # (!\mips_r|ULA|Add0~27_combout\ & (!\mips_r|ULA|Add0~41\)))) # (!\mips_r|bancoReg|saidaA[2]~1_combout\ & 
-- ((\mips_r|ULA|Add0~27_combout\ & (!\mips_r|ULA|Add0~41\)) # (!\mips_r|ULA|Add0~27_combout\ & ((\mips_r|ULA|Add0~41\) # (GND)))))
-- \mips_r|ULA|Add0~43\ = CARRY((\mips_r|bancoReg|saidaA[2]~1_combout\ & (!\mips_r|ULA|Add0~27_combout\ & !\mips_r|ULA|Add0~41\)) # (!\mips_r|bancoReg|saidaA[2]~1_combout\ & ((!\mips_r|ULA|Add0~41\) # (!\mips_r|ULA|Add0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|bancoReg|saidaA[2]~1_combout\,
	datab => \mips_r|ULA|Add0~27_combout\,
	datad => VCC,
	cin => \mips_r|ULA|Add0~41\,
	combout => \mips_r|ULA|Add0~42_combout\,
	cout => \mips_r|ULA|Add0~43\);

-- Location: LCCOMB_X96_Y69_N6
\mips_r|ULA|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~44_combout\ = (\mips_r|rom|memROM~2_combout\ & (\mips_r|ULA|Add0~42_combout\)) # (!\mips_r|rom|memROM~2_combout\ & ((\mips_r|bancoReg|saidaA[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mips_r|rom|memROM~2_combout\,
	datac => \mips_r|ULA|Add0~42_combout\,
	datad => \mips_r|bancoReg|saidaA[2]~1_combout\,
	combout => \mips_r|ULA|Add0~44_combout\);

-- Location: LCCOMB_X95_Y69_N14
\mips_r|bancoReg|memROM~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|bancoReg|memROM~176_combout\ = !\mips_r|ULA|Add0~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mips_r|ULA|Add0~44_combout\,
	combout => \mips_r|bancoReg|memROM~176_combout\);

-- Location: FF_X95_Y69_N15
\mips_r|bancoReg|memROM~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~clkctrl_outclk\,
	d => \mips_r|bancoReg|memROM~176_combout\,
	ena => \mips_r|bancoReg|memROM~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mips_r|bancoReg|memROM~48_q\);

-- Location: LCCOMB_X97_Y69_N6
\mips_r|bancoReg|saidaA[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|bancoReg|saidaA[2]~1_combout\ = (\mips_r|rom|memROM~9_combout\ & (\mips_r|rom|memROM~5_combout\ & ((!\mips_r|bancoReg|saidaA[2]~0_combout\) # (!\mips_r|bancoReg|memROM~48_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|bancoReg|memROM~48_q\,
	datab => \mips_r|bancoReg|saidaA[2]~0_combout\,
	datac => \mips_r|rom|memROM~9_combout\,
	datad => \mips_r|rom|memROM~5_combout\,
	combout => \mips_r|bancoReg|saidaA[2]~1_combout\);

-- Location: LCCOMB_X96_Y69_N24
\mips_r|ULA|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~47_combout\ = \mips_r|bancoReg|saidaA[3]~4_combout\ $ (\mips_r|ULA|Add0~43\ $ (!\mips_r|ULA|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mips_r|bancoReg|saidaA[3]~4_combout\,
	datad => \mips_r|ULA|Add0~50_combout\,
	cin => \mips_r|ULA|Add0~43\,
	combout => \mips_r|ULA|Add0~47_combout\);

-- Location: LCCOMB_X95_Y69_N30
\mips_r|ULA|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \mips_r|ULA|Add0~49_combout\ = (\mips_r|rom|memROM~2_combout\ & \mips_r|ULA|Add0~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mips_r|rom|memROM~2_combout\,
	datad => \mips_r|ULA|Add0~47_combout\,
	combout => \mips_r|ULA|Add0~49_combout\);

-- Location: LCCOMB_X95_Y69_N10
\conv7seg0|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg0|rascSaida7seg[0]~0_combout\ = (\mips_r|ULA|Add0~49_combout\ & (\mips_r|ULA|Add0~46_combout\ & (\mips_r|ULA|Add0~45_combout\ $ (\mips_r|ULA|Add0~44_combout\)))) # (!\mips_r|ULA|Add0~49_combout\ & (!\mips_r|ULA|Add0~45_combout\ & 
-- (\mips_r|ULA|Add0~46_combout\ $ (\mips_r|ULA|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|ULA|Add0~45_combout\,
	datab => \mips_r|ULA|Add0~46_combout\,
	datac => \mips_r|ULA|Add0~49_combout\,
	datad => \mips_r|ULA|Add0~44_combout\,
	combout => \conv7seg0|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X97_Y69_N26
\conv7seg0|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg0|rascSaida7seg[1]~1_combout\ = (\mips_r|ULA|Add0~49_combout\ & ((\mips_r|ULA|Add0~46_combout\ & ((\mips_r|ULA|Add0~45_combout\))) # (!\mips_r|ULA|Add0~46_combout\ & (\mips_r|ULA|Add0~44_combout\)))) # (!\mips_r|ULA|Add0~49_combout\ & 
-- (\mips_r|ULA|Add0~44_combout\ & (\mips_r|ULA|Add0~46_combout\ $ (\mips_r|ULA|Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|ULA|Add0~44_combout\,
	datab => \mips_r|ULA|Add0~46_combout\,
	datac => \mips_r|ULA|Add0~49_combout\,
	datad => \mips_r|ULA|Add0~45_combout\,
	combout => \conv7seg0|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X95_Y69_N8
\conv7seg0|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg0|rascSaida7seg[2]~2_combout\ = (\mips_r|ULA|Add0~49_combout\ & (((!\mips_r|ULA|Add0~45_combout\ & \mips_r|ULA|Add0~46_combout\)) # (!\mips_r|ULA|Add0~44_combout\))) # (!\mips_r|ULA|Add0~49_combout\ & (((\mips_r|ULA|Add0~46_combout\) # 
-- (\mips_r|ULA|Add0~44_combout\)) # (!\mips_r|ULA|Add0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|ULA|Add0~45_combout\,
	datab => \mips_r|ULA|Add0~49_combout\,
	datac => \mips_r|ULA|Add0~46_combout\,
	datad => \mips_r|ULA|Add0~44_combout\,
	combout => \conv7seg0|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X97_Y69_N12
\conv7seg0|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg0|rascSaida7seg[3]~3_combout\ = (\mips_r|ULA|Add0~45_combout\ & ((\mips_r|ULA|Add0~44_combout\ & (\mips_r|ULA|Add0~46_combout\)) # (!\mips_r|ULA|Add0~44_combout\ & (!\mips_r|ULA|Add0~46_combout\ & \mips_r|ULA|Add0~49_combout\)))) # 
-- (!\mips_r|ULA|Add0~45_combout\ & (!\mips_r|ULA|Add0~49_combout\ & (\mips_r|ULA|Add0~44_combout\ $ (\mips_r|ULA|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|ULA|Add0~44_combout\,
	datab => \mips_r|ULA|Add0~46_combout\,
	datac => \mips_r|ULA|Add0~49_combout\,
	datad => \mips_r|ULA|Add0~45_combout\,
	combout => \conv7seg0|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X97_Y69_N2
\conv7seg0|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg0|rascSaida7seg[4]~4_combout\ = (\mips_r|ULA|Add0~45_combout\ & (((\mips_r|ULA|Add0~46_combout\ & !\mips_r|ULA|Add0~49_combout\)))) # (!\mips_r|ULA|Add0~45_combout\ & ((\mips_r|ULA|Add0~44_combout\ & ((!\mips_r|ULA|Add0~49_combout\))) # 
-- (!\mips_r|ULA|Add0~44_combout\ & (\mips_r|ULA|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|ULA|Add0~44_combout\,
	datab => \mips_r|ULA|Add0~46_combout\,
	datac => \mips_r|ULA|Add0~49_combout\,
	datad => \mips_r|ULA|Add0~45_combout\,
	combout => \conv7seg0|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X97_Y69_N20
\conv7seg0|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg0|rascSaida7seg[5]~5_combout\ = (\mips_r|ULA|Add0~46_combout\ & (\mips_r|ULA|Add0~49_combout\ $ (((\mips_r|ULA|Add0~45_combout\) # (!\mips_r|ULA|Add0~44_combout\))))) # (!\mips_r|ULA|Add0~46_combout\ & (!\mips_r|ULA|Add0~49_combout\ & 
-- (\mips_r|ULA|Add0~45_combout\ & !\mips_r|ULA|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|ULA|Add0~49_combout\,
	datab => \mips_r|ULA|Add0~46_combout\,
	datac => \mips_r|ULA|Add0~45_combout\,
	datad => \mips_r|ULA|Add0~44_combout\,
	combout => \conv7seg0|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X97_Y69_N16
\conv7seg0|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \conv7seg0|rascSaida7seg[6]~6_combout\ = (\mips_r|ULA|Add0~46_combout\ & (!\mips_r|ULA|Add0~49_combout\ & (\mips_r|ULA|Add0~44_combout\ $ (!\mips_r|ULA|Add0~45_combout\)))) # (!\mips_r|ULA|Add0~46_combout\ & (!\mips_r|ULA|Add0~45_combout\ & 
-- (\mips_r|ULA|Add0~44_combout\ $ (!\mips_r|ULA|Add0~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mips_r|ULA|Add0~44_combout\,
	datab => \mips_r|ULA|Add0~46_combout\,
	datac => \mips_r|ULA|Add0~49_combout\,
	datad => \mips_r|ULA|Add0~45_combout\,
	combout => \conv7seg0|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;
END structure;



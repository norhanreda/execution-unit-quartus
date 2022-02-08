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

-- DATE "10/31/2021 06:31:21"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Eu IS
    PORT (
	cout : OUT std_logic;
	destination : IN std_logic_vector(1 DOWNTO 0);
	D : IN std_logic_vector(3 DOWNTO 0);
	source : IN std_logic_vector(1 DOWNTO 0);
	operation : IN std_logic_vector(1 DOWNTO 0);
	A : OUT std_logic_vector(3 DOWNTO 0);
	B : OUT std_logic_vector(3 DOWNTO 0);
	C : OUT std_logic_vector(3 DOWNTO 0)
	);
END Eu;

-- Design Ports Information
-- cout	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operation[1]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destination[0]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destination[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operation[0]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- source[0]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- source[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Eu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_destination : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_source : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_operation : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \destination[1]~input_o\ : std_logic;
SIGNAL \destination[0]~input_o\ : std_logic;
SIGNAL \inst|and3~combout\ : std_logic;
SIGNAL \operation[0]~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \inst|and1~combout\ : std_logic;
SIGNAL \regA|inst|inst9~combout\ : std_logic;
SIGNAL \source[0]~input_o\ : std_logic;
SIGNAL \source[1]~input_o\ : std_logic;
SIGNAL \inst|and2~combout\ : std_logic;
SIGNAL \regB|inst|inst9~combout\ : std_logic;
SIGNAL \inst2|inst3|inst4~0_combout\ : std_logic;
SIGNAL \operation[1]~input_o\ : std_logic;
SIGNAL \alu1|inst|inst13|inst4~0_combout\ : std_logic;
SIGNAL \regC|inst|inst9~combout\ : std_logic;
SIGNAL \inst3|inst3|inst4~0_combout\ : std_logic;
SIGNAL \regA|inst|inst10~combout\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \regB|inst|inst10~combout\ : std_logic;
SIGNAL \inst2|inst2|inst4~0_combout\ : std_logic;
SIGNAL \alu1|inst|inst12|inst4~0_combout\ : std_logic;
SIGNAL \regC|inst|inst10~combout\ : std_logic;
SIGNAL \inst3|inst2|inst4~0_combout\ : std_logic;
SIGNAL \alu1|inst|inst|inst2|inst3~0_combout\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \regB|inst|inst11~combout\ : std_logic;
SIGNAL \regC|inst|inst11~combout\ : std_logic;
SIGNAL \inst2|inst1|inst4~0_combout\ : std_logic;
SIGNAL \alu1|inst|inst11|inst4~0_combout\ : std_logic;
SIGNAL \regA|inst|inst11~combout\ : std_logic;
SIGNAL \inst3|inst1|inst4~0_combout\ : std_logic;
SIGNAL \alu1|inst|inst|inst1|inst3~0_combout\ : std_logic;
SIGNAL \regA|inst|inst12~combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \regB|inst|inst12~combout\ : std_logic;
SIGNAL \inst2|inst|inst4~0_combout\ : std_logic;
SIGNAL \alu1|inst|inst9m|inst4~0_combout\ : std_logic;
SIGNAL \regC|inst|inst12~combout\ : std_logic;
SIGNAL \inst3|inst|inst4~0_combout\ : std_logic;
SIGNAL \alu1|inst|inst14|inst2~0_combout\ : std_logic;
SIGNAL \inst3|inst1|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst2|inst2|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst3|inst2|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst3|inst3|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst2|inst3|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst2|inst|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst3|inst|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst2|inst1|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \ALT_INV_D[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_source[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_source[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_operation[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_destination[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_destination[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_operation[1]~input_o\ : std_logic;
SIGNAL \regC|inst|ALT_INV_inst9~combout\ : std_logic;
SIGNAL \regB|inst|ALT_INV_inst9~combout\ : std_logic;
SIGNAL \regA|inst|ALT_INV_inst9~combout\ : std_logic;
SIGNAL \regC|inst|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \regB|inst|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \regA|inst|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \regC|inst|ALT_INV_inst11~combout\ : std_logic;
SIGNAL \regB|inst|ALT_INV_inst11~combout\ : std_logic;
SIGNAL \regA|inst|ALT_INV_inst11~combout\ : std_logic;
SIGNAL \regC|inst|ALT_INV_inst12~combout\ : std_logic;
SIGNAL \regB|inst|ALT_INV_inst12~combout\ : std_logic;
SIGNAL \regA|inst|ALT_INV_inst12~combout\ : std_logic;
SIGNAL \alu1|inst|inst13|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \alu1|inst|inst12|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \alu1|inst|inst11|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \alu1|inst|inst|inst2|ALT_INV_inst3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_and3~combout\ : std_logic;
SIGNAL \inst|ALT_INV_and2~combout\ : std_logic;
SIGNAL \inst|ALT_INV_and1~combout\ : std_logic;
SIGNAL \alu1|inst|inst9m|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \alu1|inst|inst|inst1|ALT_INV_inst3~0_combout\ : std_logic;

BEGIN

cout <= ww_cout;
ww_destination <= destination;
ww_D <= D;
ww_source <= source;
ww_operation <= operation;
A <= ww_A;
B <= ww_B;
C <= ww_C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst3|inst1|ALT_INV_inst4~0_combout\ <= NOT \inst3|inst1|inst4~0_combout\;
\inst2|inst2|ALT_INV_inst4~0_combout\ <= NOT \inst2|inst2|inst4~0_combout\;
\inst3|inst2|ALT_INV_inst4~0_combout\ <= NOT \inst3|inst2|inst4~0_combout\;
\inst3|inst3|ALT_INV_inst4~0_combout\ <= NOT \inst3|inst3|inst4~0_combout\;
\inst2|inst3|ALT_INV_inst4~0_combout\ <= NOT \inst2|inst3|inst4~0_combout\;
\inst2|inst|ALT_INV_inst4~0_combout\ <= NOT \inst2|inst|inst4~0_combout\;
\inst3|inst|ALT_INV_inst4~0_combout\ <= NOT \inst3|inst|inst4~0_combout\;
\inst2|inst1|ALT_INV_inst4~0_combout\ <= NOT \inst2|inst1|inst4~0_combout\;
\ALT_INV_D[0]~input_o\ <= NOT \D[0]~input_o\;
\ALT_INV_D[1]~input_o\ <= NOT \D[1]~input_o\;
\ALT_INV_D[2]~input_o\ <= NOT \D[2]~input_o\;
\ALT_INV_source[1]~input_o\ <= NOT \source[1]~input_o\;
\ALT_INV_source[0]~input_o\ <= NOT \source[0]~input_o\;
\ALT_INV_operation[0]~input_o\ <= NOT \operation[0]~input_o\;
\ALT_INV_destination[1]~input_o\ <= NOT \destination[1]~input_o\;
\ALT_INV_destination[0]~input_o\ <= NOT \destination[0]~input_o\;
\ALT_INV_D[3]~input_o\ <= NOT \D[3]~input_o\;
\ALT_INV_operation[1]~input_o\ <= NOT \operation[1]~input_o\;
\regC|inst|ALT_INV_inst9~combout\ <= NOT \regC|inst|inst9~combout\;
\regB|inst|ALT_INV_inst9~combout\ <= NOT \regB|inst|inst9~combout\;
\regA|inst|ALT_INV_inst9~combout\ <= NOT \regA|inst|inst9~combout\;
\regC|inst|ALT_INV_inst10~combout\ <= NOT \regC|inst|inst10~combout\;
\regB|inst|ALT_INV_inst10~combout\ <= NOT \regB|inst|inst10~combout\;
\regA|inst|ALT_INV_inst10~combout\ <= NOT \regA|inst|inst10~combout\;
\regC|inst|ALT_INV_inst11~combout\ <= NOT \regC|inst|inst11~combout\;
\regB|inst|ALT_INV_inst11~combout\ <= NOT \regB|inst|inst11~combout\;
\regA|inst|ALT_INV_inst11~combout\ <= NOT \regA|inst|inst11~combout\;
\regC|inst|ALT_INV_inst12~combout\ <= NOT \regC|inst|inst12~combout\;
\regB|inst|ALT_INV_inst12~combout\ <= NOT \regB|inst|inst12~combout\;
\regA|inst|ALT_INV_inst12~combout\ <= NOT \regA|inst|inst12~combout\;
\alu1|inst|inst13|ALT_INV_inst4~0_combout\ <= NOT \alu1|inst|inst13|inst4~0_combout\;
\alu1|inst|inst12|ALT_INV_inst4~0_combout\ <= NOT \alu1|inst|inst12|inst4~0_combout\;
\alu1|inst|inst11|ALT_INV_inst4~0_combout\ <= NOT \alu1|inst|inst11|inst4~0_combout\;
\alu1|inst|inst|inst2|ALT_INV_inst3~0_combout\ <= NOT \alu1|inst|inst|inst2|inst3~0_combout\;
\inst|ALT_INV_and3~combout\ <= NOT \inst|and3~combout\;
\inst|ALT_INV_and2~combout\ <= NOT \inst|and2~combout\;
\inst|ALT_INV_and1~combout\ <= NOT \inst|and1~combout\;
\alu1|inst|inst9m|ALT_INV_inst4~0_combout\ <= NOT \alu1|inst|inst9m|inst4~0_combout\;
\alu1|inst|inst|inst1|ALT_INV_inst3~0_combout\ <= NOT \alu1|inst|inst|inst1|inst3~0_combout\;

-- Location: IOOBUF_X89_Y21_N22
\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \alu1|inst|inst14|inst2~0_combout\,
	devoe => ww_devoe,
	o => ww_cout);

-- Location: IOOBUF_X89_Y15_N56
\A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|inst|inst12~combout\,
	devoe => ww_devoe,
	o => ww_A(3));

-- Location: IOOBUF_X89_Y15_N5
\A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|inst|inst11~combout\,
	devoe => ww_devoe,
	o => ww_A(2));

-- Location: IOOBUF_X89_Y15_N39
\A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|inst|inst10~combout\,
	devoe => ww_devoe,
	o => ww_A(1));

-- Location: IOOBUF_X89_Y13_N5
\A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|inst|inst9~combout\,
	devoe => ww_devoe,
	o => ww_A(0));

-- Location: IOOBUF_X89_Y20_N79
\B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regB|inst|inst12~combout\,
	devoe => ww_devoe,
	o => ww_B(3));

-- Location: IOOBUF_X89_Y16_N56
\B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regB|inst|inst11~combout\,
	devoe => ww_devoe,
	o => ww_B(2));

-- Location: IOOBUF_X89_Y16_N22
\B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regB|inst|inst10~combout\,
	devoe => ww_devoe,
	o => ww_B(1));

-- Location: IOOBUF_X89_Y16_N5
\B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regB|inst|inst9~combout\,
	devoe => ww_devoe,
	o => ww_B(0));

-- Location: IOOBUF_X89_Y23_N56
\C[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regC|inst|inst12~combout\,
	devoe => ww_devoe,
	o => ww_C(3));

-- Location: IOOBUF_X89_Y15_N22
\C[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regC|inst|inst11~combout\,
	devoe => ww_devoe,
	o => ww_C(2));

-- Location: IOOBUF_X89_Y20_N62
\C[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regC|inst|inst10~combout\,
	devoe => ww_devoe,
	o => ww_C(1));

-- Location: IOOBUF_X89_Y20_N96
\C[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regC|inst|inst9~combout\,
	devoe => ww_devoe,
	o => ww_C(0));

-- Location: IOIBUF_X89_Y23_N4
\destination[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_destination(1),
	o => \destination[1]~input_o\);

-- Location: IOIBUF_X89_Y16_N38
\destination[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_destination(0),
	o => \destination[0]~input_o\);

-- Location: LABCELL_X85_Y18_N6
\inst|and3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|and3~combout\ = ( !\destination[0]~input_o\ & ( \destination[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_destination[1]~input_o\,
	dataf => \ALT_INV_destination[0]~input_o\,
	combout => \inst|and3~combout\);

-- Location: IOIBUF_X89_Y20_N44
\operation[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operation(0),
	o => \operation[0]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\D[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: LABCELL_X85_Y18_N27
\inst|and1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|and1~combout\ = ( \destination[0]~input_o\ ) # ( !\destination[0]~input_o\ & ( \destination[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_destination[1]~input_o\,
	dataf => \ALT_INV_destination[0]~input_o\,
	combout => \inst|and1~combout\);

-- Location: LABCELL_X85_Y18_N45
\regA|inst|inst9\ : cyclonev_lcell_comb
-- Equation(s):
-- \regA|inst|inst9~combout\ = ( \regA|inst|inst9~combout\ & ( (\inst|and1~combout\) # (\alu1|inst|inst13|inst4~0_combout\) ) ) # ( !\regA|inst|inst9~combout\ & ( (\alu1|inst|inst13|inst4~0_combout\ & !\inst|and1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu1|inst|inst13|ALT_INV_inst4~0_combout\,
	datad => \inst|ALT_INV_and1~combout\,
	dataf => \regA|inst|ALT_INV_inst9~combout\,
	combout => \regA|inst|inst9~combout\);

-- Location: IOIBUF_X89_Y13_N55
\source[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_source(0),
	o => \source[0]~input_o\);

-- Location: IOIBUF_X89_Y23_N38
\source[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_source(1),
	o => \source[1]~input_o\);

-- Location: LABCELL_X85_Y18_N48
\inst|and2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|and2~combout\ = ( \destination[0]~input_o\ & ( !\destination[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_destination[1]~input_o\,
	dataf => \ALT_INV_destination[0]~input_o\,
	combout => \inst|and2~combout\);

-- Location: LABCELL_X85_Y18_N9
\regB|inst|inst9\ : cyclonev_lcell_comb
-- Equation(s):
-- \regB|inst|inst9~combout\ = ( \inst|and2~combout\ & ( \alu1|inst|inst13|inst4~0_combout\ ) ) # ( !\inst|and2~combout\ & ( \regB|inst|inst9~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu1|inst|inst13|ALT_INV_inst4~0_combout\,
	datac => \regB|inst|ALT_INV_inst9~combout\,
	dataf => \inst|ALT_INV_and2~combout\,
	combout => \regB|inst|inst9~combout\);

-- Location: LABCELL_X85_Y18_N21
\inst2|inst3|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst3|inst4~0_combout\ = ( \source[1]~input_o\ & ( \regB|inst|inst9~combout\ & ( (!\source[0]~input_o\ & ((\regC|inst|inst9~combout\))) # (\source[0]~input_o\ & (\D[0]~input_o\)) ) ) ) # ( !\source[1]~input_o\ & ( \regB|inst|inst9~combout\ & ( 
-- (\source[0]~input_o\) # (\regA|inst|inst9~combout\) ) ) ) # ( \source[1]~input_o\ & ( !\regB|inst|inst9~combout\ & ( (!\source[0]~input_o\ & ((\regC|inst|inst9~combout\))) # (\source[0]~input_o\ & (\D[0]~input_o\)) ) ) ) # ( !\source[1]~input_o\ & ( 
-- !\regB|inst|inst9~combout\ & ( (\regA|inst|inst9~combout\ & !\source[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D[0]~input_o\,
	datab => \regA|inst|ALT_INV_inst9~combout\,
	datac => \ALT_INV_source[0]~input_o\,
	datad => \regC|inst|ALT_INV_inst9~combout\,
	datae => \ALT_INV_source[1]~input_o\,
	dataf => \regB|inst|ALT_INV_inst9~combout\,
	combout => \inst2|inst3|inst4~0_combout\);

-- Location: IOIBUF_X89_Y23_N21
\operation[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operation(1),
	o => \operation[1]~input_o\);

-- Location: LABCELL_X85_Y18_N42
\alu1|inst|inst13|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu1|inst|inst13|inst4~0_combout\ = ( \inst3|inst3|inst4~0_combout\ & ( (!\operation[0]~input_o\ & (!\inst2|inst3|inst4~0_combout\ $ (!\operation[1]~input_o\))) # (\operation[0]~input_o\ & ((!\operation[1]~input_o\) # (\inst2|inst3|inst4~0_combout\))) ) 
-- ) # ( !\inst3|inst3|inst4~0_combout\ & ( (!\operation[0]~input_o\ & \inst2|inst3|inst4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111101001010101111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_operation[0]~input_o\,
	datac => \inst2|inst3|ALT_INV_inst4~0_combout\,
	datad => \ALT_INV_operation[1]~input_o\,
	dataf => \inst3|inst3|ALT_INV_inst4~0_combout\,
	combout => \alu1|inst|inst13|inst4~0_combout\);

-- Location: LABCELL_X85_Y18_N3
\regC|inst|inst9\ : cyclonev_lcell_comb
-- Equation(s):
-- \regC|inst|inst9~combout\ = ( \inst|and3~combout\ & ( \alu1|inst|inst13|inst4~0_combout\ ) ) # ( !\inst|and3~combout\ & ( \regC|inst|inst9~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \alu1|inst|inst13|ALT_INV_inst4~0_combout\,
	datad => \regC|inst|ALT_INV_inst9~combout\,
	dataf => \inst|ALT_INV_and3~combout\,
	combout => \regC|inst|inst9~combout\);

-- Location: LABCELL_X85_Y18_N54
\inst3|inst3|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|inst3|inst4~0_combout\ = ( \regA|inst|inst9~combout\ & ( \regB|inst|inst9~combout\ & ( (!\destination[1]~input_o\) # ((!\destination[0]~input_o\ & ((\regC|inst|inst9~combout\))) # (\destination[0]~input_o\ & (\D[0]~input_o\))) ) ) ) # ( 
-- !\regA|inst|inst9~combout\ & ( \regB|inst|inst9~combout\ & ( (!\destination[0]~input_o\ & (((\regC|inst|inst9~combout\ & \destination[1]~input_o\)))) # (\destination[0]~input_o\ & (((!\destination[1]~input_o\)) # (\D[0]~input_o\))) ) ) ) # ( 
-- \regA|inst|inst9~combout\ & ( !\regB|inst|inst9~combout\ & ( (!\destination[0]~input_o\ & (((!\destination[1]~input_o\) # (\regC|inst|inst9~combout\)))) # (\destination[0]~input_o\ & (\D[0]~input_o\ & ((\destination[1]~input_o\)))) ) ) ) # ( 
-- !\regA|inst|inst9~combout\ & ( !\regB|inst|inst9~combout\ & ( (\destination[1]~input_o\ & ((!\destination[0]~input_o\ & ((\regC|inst|inst9~combout\))) # (\destination[0]~input_o\ & (\D[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D[0]~input_o\,
	datab => \ALT_INV_destination[0]~input_o\,
	datac => \regC|inst|ALT_INV_inst9~combout\,
	datad => \ALT_INV_destination[1]~input_o\,
	datae => \regA|inst|ALT_INV_inst9~combout\,
	dataf => \regB|inst|ALT_INV_inst9~combout\,
	combout => \inst3|inst3|inst4~0_combout\);

-- Location: LABCELL_X85_Y18_N0
\regA|inst|inst10\ : cyclonev_lcell_comb
-- Equation(s):
-- \regA|inst|inst10~combout\ = (!\inst|and1~combout\ & (\alu1|inst|inst12|inst4~0_combout\)) # (\inst|and1~combout\ & ((\regA|inst|inst10~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu1|inst|inst12|ALT_INV_inst4~0_combout\,
	datac => \regA|inst|ALT_INV_inst10~combout\,
	datad => \inst|ALT_INV_and1~combout\,
	combout => \regA|inst|inst10~combout\);

-- Location: IOIBUF_X89_Y21_N4
\D[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LABCELL_X85_Y18_N24
\regB|inst|inst10\ : cyclonev_lcell_comb
-- Equation(s):
-- \regB|inst|inst10~combout\ = ( \inst|and2~combout\ & ( \alu1|inst|inst12|inst4~0_combout\ ) ) # ( !\inst|and2~combout\ & ( \regB|inst|inst10~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu1|inst|inst12|ALT_INV_inst4~0_combout\,
	datac => \regB|inst|ALT_INV_inst10~combout\,
	dataf => \inst|ALT_INV_and2~combout\,
	combout => \regB|inst|inst10~combout\);

-- Location: LABCELL_X85_Y18_N15
\inst2|inst2|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst4~0_combout\ = ( \regC|inst|inst10~combout\ & ( \regB|inst|inst10~combout\ & ( (!\source[0]~input_o\ & (((\source[1]~input_o\)) # (\regA|inst|inst10~combout\))) # (\source[0]~input_o\ & (((!\source[1]~input_o\) # (\D[1]~input_o\)))) ) ) ) 
-- # ( !\regC|inst|inst10~combout\ & ( \regB|inst|inst10~combout\ & ( (!\source[0]~input_o\ & (\regA|inst|inst10~combout\ & (!\source[1]~input_o\))) # (\source[0]~input_o\ & (((!\source[1]~input_o\) # (\D[1]~input_o\)))) ) ) ) # ( \regC|inst|inst10~combout\ 
-- & ( !\regB|inst|inst10~combout\ & ( (!\source[0]~input_o\ & (((\source[1]~input_o\)) # (\regA|inst|inst10~combout\))) # (\source[0]~input_o\ & (((\source[1]~input_o\ & \D[1]~input_o\)))) ) ) ) # ( !\regC|inst|inst10~combout\ & ( 
-- !\regB|inst|inst10~combout\ & ( (!\source[0]~input_o\ & (\regA|inst|inst10~combout\ & (!\source[1]~input_o\))) # (\source[0]~input_o\ & (((\source[1]~input_o\ & \D[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regA|inst|ALT_INV_inst10~combout\,
	datab => \ALT_INV_source[0]~input_o\,
	datac => \ALT_INV_source[1]~input_o\,
	datad => \ALT_INV_D[1]~input_o\,
	datae => \regC|inst|ALT_INV_inst10~combout\,
	dataf => \regB|inst|ALT_INV_inst10~combout\,
	combout => \inst2|inst2|inst4~0_combout\);

-- Location: LABCELL_X85_Y18_N30
\alu1|inst|inst12|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu1|inst|inst12|inst4~0_combout\ = ( \inst2|inst3|inst4~0_combout\ & ( \inst3|inst3|inst4~0_combout\ & ( (!\inst3|inst2|inst4~0_combout\ & (!\operation[0]~input_o\ & (!\inst2|inst2|inst4~0_combout\ $ (!\operation[1]~input_o\)))) # 
-- (\inst3|inst2|inst4~0_combout\ & (((\operation[0]~input_o\ & !\operation[1]~input_o\)) # (\inst2|inst2|inst4~0_combout\))) ) ) ) # ( !\inst2|inst3|inst4~0_combout\ & ( \inst3|inst3|inst4~0_combout\ & ( (!\operation[0]~input_o\ & 
-- (!\inst2|inst2|inst4~0_combout\ $ (((!\inst3|inst2|inst4~0_combout\) # (!\operation[1]~input_o\))))) # (\operation[0]~input_o\ & (\inst3|inst2|inst4~0_combout\ & ((!\operation[1]~input_o\) # (\inst2|inst2|inst4~0_combout\)))) ) ) ) # ( 
-- \inst2|inst3|inst4~0_combout\ & ( !\inst3|inst3|inst4~0_combout\ & ( (!\operation[0]~input_o\ & (!\inst2|inst2|inst4~0_combout\ $ (((!\inst3|inst2|inst4~0_combout\) # (!\operation[1]~input_o\))))) # (\operation[0]~input_o\ & (\inst3|inst2|inst4~0_combout\ 
-- & ((!\operation[1]~input_o\) # (\inst2|inst2|inst4~0_combout\)))) ) ) ) # ( !\inst2|inst3|inst4~0_combout\ & ( !\inst3|inst3|inst4~0_combout\ & ( (!\operation[0]~input_o\ & (!\inst2|inst2|inst4~0_combout\ $ (((!\inst3|inst2|inst4~0_combout\) # 
-- (!\operation[1]~input_o\))))) # (\operation[0]~input_o\ & (\inst3|inst2|inst4~0_combout\ & ((!\operation[1]~input_o\) # (\inst2|inst2|inst4~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010101100001001101010110000100110101011000010011010110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|ALT_INV_inst4~0_combout\,
	datab => \inst2|inst2|ALT_INV_inst4~0_combout\,
	datac => \ALT_INV_operation[0]~input_o\,
	datad => \ALT_INV_operation[1]~input_o\,
	datae => \inst2|inst3|ALT_INV_inst4~0_combout\,
	dataf => \inst3|inst3|ALT_INV_inst4~0_combout\,
	combout => \alu1|inst|inst12|inst4~0_combout\);

-- Location: LABCELL_X85_Y18_N51
\regC|inst|inst10\ : cyclonev_lcell_comb
-- Equation(s):
-- \regC|inst|inst10~combout\ = ( \inst|and3~combout\ & ( \alu1|inst|inst12|inst4~0_combout\ ) ) # ( !\inst|and3~combout\ & ( \regC|inst|inst10~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu1|inst|inst12|ALT_INV_inst4~0_combout\,
	datad => \regC|inst|ALT_INV_inst10~combout\,
	dataf => \inst|ALT_INV_and3~combout\,
	combout => \regC|inst|inst10~combout\);

-- Location: LABCELL_X85_Y18_N36
\inst3|inst2|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst4~0_combout\ = ( \regA|inst|inst10~combout\ & ( \regB|inst|inst10~combout\ & ( (!\destination[1]~input_o\) # ((!\destination[0]~input_o\ & (\regC|inst|inst10~combout\)) # (\destination[0]~input_o\ & ((\D[1]~input_o\)))) ) ) ) # ( 
-- !\regA|inst|inst10~combout\ & ( \regB|inst|inst10~combout\ & ( (!\destination[1]~input_o\ & (\destination[0]~input_o\)) # (\destination[1]~input_o\ & ((!\destination[0]~input_o\ & (\regC|inst|inst10~combout\)) # (\destination[0]~input_o\ & 
-- ((\D[1]~input_o\))))) ) ) ) # ( \regA|inst|inst10~combout\ & ( !\regB|inst|inst10~combout\ & ( (!\destination[1]~input_o\ & (!\destination[0]~input_o\)) # (\destination[1]~input_o\ & ((!\destination[0]~input_o\ & (\regC|inst|inst10~combout\)) # 
-- (\destination[0]~input_o\ & ((\D[1]~input_o\))))) ) ) ) # ( !\regA|inst|inst10~combout\ & ( !\regB|inst|inst10~combout\ & ( (\destination[1]~input_o\ & ((!\destination[0]~input_o\ & (\regC|inst|inst10~combout\)) # (\destination[0]~input_o\ & 
-- ((\D[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_destination[1]~input_o\,
	datab => \ALT_INV_destination[0]~input_o\,
	datac => \regC|inst|ALT_INV_inst10~combout\,
	datad => \ALT_INV_D[1]~input_o\,
	datae => \regA|inst|ALT_INV_inst10~combout\,
	dataf => \regB|inst|ALT_INV_inst10~combout\,
	combout => \inst3|inst2|inst4~0_combout\);

-- Location: MLABCELL_X84_Y18_N18
\alu1|inst|inst|inst2|inst3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu1|inst|inst|inst2|inst3~0_combout\ = ( \inst2|inst2|inst4~0_combout\ & ( ((\inst3|inst3|inst4~0_combout\ & \inst2|inst3|inst4~0_combout\)) # (\inst3|inst2|inst4~0_combout\) ) ) # ( !\inst2|inst2|inst4~0_combout\ & ( (\inst3|inst3|inst4~0_combout\ & 
-- (\inst3|inst2|inst4~0_combout\ & \inst2|inst3|inst4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst3|ALT_INV_inst4~0_combout\,
	datac => \inst3|inst2|ALT_INV_inst4~0_combout\,
	datad => \inst2|inst3|ALT_INV_inst4~0_combout\,
	dataf => \inst2|inst2|ALT_INV_inst4~0_combout\,
	combout => \alu1|inst|inst|inst2|inst3~0_combout\);

-- Location: IOIBUF_X89_Y21_N55
\D[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: MLABCELL_X84_Y18_N36
\regB|inst|inst11\ : cyclonev_lcell_comb
-- Equation(s):
-- \regB|inst|inst11~combout\ = ( \inst|and2~combout\ & ( \alu1|inst|inst11|inst4~0_combout\ ) ) # ( !\inst|and2~combout\ & ( \regB|inst|inst11~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \alu1|inst|inst11|ALT_INV_inst4~0_combout\,
	datad => \regB|inst|ALT_INV_inst11~combout\,
	dataf => \inst|ALT_INV_and2~combout\,
	combout => \regB|inst|inst11~combout\);

-- Location: MLABCELL_X84_Y18_N6
\regC|inst|inst11\ : cyclonev_lcell_comb
-- Equation(s):
-- \regC|inst|inst11~combout\ = ( \inst|and3~combout\ & ( \regC|inst|inst11~combout\ & ( \alu1|inst|inst11|inst4~0_combout\ ) ) ) # ( !\inst|and3~combout\ & ( \regC|inst|inst11~combout\ ) ) # ( \inst|and3~combout\ & ( !\regC|inst|inst11~combout\ & ( 
-- \alu1|inst|inst11|inst4~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu1|inst|inst11|ALT_INV_inst4~0_combout\,
	datae => \inst|ALT_INV_and3~combout\,
	dataf => \regC|inst|ALT_INV_inst11~combout\,
	combout => \regC|inst|inst11~combout\);

-- Location: MLABCELL_X84_Y18_N12
\inst2|inst1|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst4~0_combout\ = ( \regB|inst|inst11~combout\ & ( \regC|inst|inst11~combout\ & ( (!\source[1]~input_o\ & (((\source[0]~input_o\) # (\regA|inst|inst11~combout\)))) # (\source[1]~input_o\ & (((!\source[0]~input_o\)) # (\D[2]~input_o\))) ) ) ) 
-- # ( !\regB|inst|inst11~combout\ & ( \regC|inst|inst11~combout\ & ( (!\source[1]~input_o\ & (((\regA|inst|inst11~combout\ & !\source[0]~input_o\)))) # (\source[1]~input_o\ & (((!\source[0]~input_o\)) # (\D[2]~input_o\))) ) ) ) # ( 
-- \regB|inst|inst11~combout\ & ( !\regC|inst|inst11~combout\ & ( (!\source[1]~input_o\ & (((\source[0]~input_o\) # (\regA|inst|inst11~combout\)))) # (\source[1]~input_o\ & (\D[2]~input_o\ & ((\source[0]~input_o\)))) ) ) ) # ( !\regB|inst|inst11~combout\ & ( 
-- !\regC|inst|inst11~combout\ & ( (!\source[1]~input_o\ & (((\regA|inst|inst11~combout\ & !\source[0]~input_o\)))) # (\source[1]~input_o\ & (\D[2]~input_o\ & ((\source[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001100001111010100111111000001010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D[2]~input_o\,
	datab => \regA|inst|ALT_INV_inst11~combout\,
	datac => \ALT_INV_source[1]~input_o\,
	datad => \ALT_INV_source[0]~input_o\,
	datae => \regB|inst|ALT_INV_inst11~combout\,
	dataf => \regC|inst|ALT_INV_inst11~combout\,
	combout => \inst2|inst1|inst4~0_combout\);

-- Location: MLABCELL_X84_Y18_N51
\alu1|inst|inst11|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu1|inst|inst11|inst4~0_combout\ = ( \operation[1]~input_o\ & ( \inst3|inst1|inst4~0_combout\ & ( !\inst2|inst1|inst4~0_combout\ $ (((\operation[0]~input_o\) # (\alu1|inst|inst|inst2|inst3~0_combout\))) ) ) ) # ( !\operation[1]~input_o\ & ( 
-- \inst3|inst1|inst4~0_combout\ & ( (\operation[0]~input_o\) # (\inst2|inst1|inst4~0_combout\) ) ) ) # ( \operation[1]~input_o\ & ( !\inst3|inst1|inst4~0_combout\ & ( (!\operation[0]~input_o\ & (!\alu1|inst|inst|inst2|inst3~0_combout\ $ 
-- (!\inst2|inst1|inst4~0_combout\))) ) ) ) # ( !\operation[1]~input_o\ & ( !\inst3|inst1|inst4~0_combout\ & ( (\inst2|inst1|inst4~0_combout\ & !\operation[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000011001100000000000110011111111111001100100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|inst|inst|inst2|ALT_INV_inst3~0_combout\,
	datab => \inst2|inst1|ALT_INV_inst4~0_combout\,
	datad => \ALT_INV_operation[0]~input_o\,
	datae => \ALT_INV_operation[1]~input_o\,
	dataf => \inst3|inst1|ALT_INV_inst4~0_combout\,
	combout => \alu1|inst|inst11|inst4~0_combout\);

-- Location: MLABCELL_X84_Y18_N45
\regA|inst|inst11\ : cyclonev_lcell_comb
-- Equation(s):
-- \regA|inst|inst11~combout\ = ( \regA|inst|inst11~combout\ & ( (\inst|and1~combout\) # (\alu1|inst|inst11|inst4~0_combout\) ) ) # ( !\regA|inst|inst11~combout\ & ( (\alu1|inst|inst11|inst4~0_combout\ & !\inst|and1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|inst|inst11|ALT_INV_inst4~0_combout\,
	datad => \inst|ALT_INV_and1~combout\,
	dataf => \regA|inst|ALT_INV_inst11~combout\,
	combout => \regA|inst|inst11~combout\);

-- Location: MLABCELL_X84_Y18_N27
\inst3|inst1|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|inst1|inst4~0_combout\ = ( \regB|inst|inst11~combout\ & ( \regC|inst|inst11~combout\ & ( (!\destination[1]~input_o\ & (((\regA|inst|inst11~combout\)) # (\destination[0]~input_o\))) # (\destination[1]~input_o\ & ((!\destination[0]~input_o\) # 
-- ((\D[2]~input_o\)))) ) ) ) # ( !\regB|inst|inst11~combout\ & ( \regC|inst|inst11~combout\ & ( (!\destination[1]~input_o\ & (!\destination[0]~input_o\ & (\regA|inst|inst11~combout\))) # (\destination[1]~input_o\ & ((!\destination[0]~input_o\) # 
-- ((\D[2]~input_o\)))) ) ) ) # ( \regB|inst|inst11~combout\ & ( !\regC|inst|inst11~combout\ & ( (!\destination[1]~input_o\ & (((\regA|inst|inst11~combout\)) # (\destination[0]~input_o\))) # (\destination[1]~input_o\ & (\destination[0]~input_o\ & 
-- ((\D[2]~input_o\)))) ) ) ) # ( !\regB|inst|inst11~combout\ & ( !\regC|inst|inst11~combout\ & ( (!\destination[1]~input_o\ & (!\destination[0]~input_o\ & (\regA|inst|inst11~combout\))) # (\destination[1]~input_o\ & (\destination[0]~input_o\ & 
-- ((\D[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_destination[1]~input_o\,
	datab => \ALT_INV_destination[0]~input_o\,
	datac => \regA|inst|ALT_INV_inst11~combout\,
	datad => \ALT_INV_D[2]~input_o\,
	datae => \regB|inst|ALT_INV_inst11~combout\,
	dataf => \regC|inst|ALT_INV_inst11~combout\,
	combout => \inst3|inst1|inst4~0_combout\);

-- Location: MLABCELL_X84_Y18_N0
\alu1|inst|inst|inst1|inst3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu1|inst|inst|inst1|inst3~0_combout\ = ( \inst2|inst2|inst4~0_combout\ & ( \inst2|inst1|inst4~0_combout\ & ( (((\inst2|inst3|inst4~0_combout\ & \inst3|inst3|inst4~0_combout\)) # (\inst3|inst2|inst4~0_combout\)) # (\inst3|inst1|inst4~0_combout\) ) ) ) # 
-- ( !\inst2|inst2|inst4~0_combout\ & ( \inst2|inst1|inst4~0_combout\ & ( ((\inst3|inst2|inst4~0_combout\ & (\inst2|inst3|inst4~0_combout\ & \inst3|inst3|inst4~0_combout\))) # (\inst3|inst1|inst4~0_combout\) ) ) ) # ( \inst2|inst2|inst4~0_combout\ & ( 
-- !\inst2|inst1|inst4~0_combout\ & ( (\inst3|inst1|inst4~0_combout\ & (((\inst2|inst3|inst4~0_combout\ & \inst3|inst3|inst4~0_combout\)) # (\inst3|inst2|inst4~0_combout\))) ) ) ) # ( !\inst2|inst2|inst4~0_combout\ & ( !\inst2|inst1|inst4~0_combout\ & ( 
-- (\inst3|inst1|inst4~0_combout\ & (\inst3|inst2|inst4~0_combout\ & (\inst2|inst3|inst4~0_combout\ & \inst3|inst3|inst4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000100010001010101010101010101110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|ALT_INV_inst4~0_combout\,
	datab => \inst3|inst2|ALT_INV_inst4~0_combout\,
	datac => \inst2|inst3|ALT_INV_inst4~0_combout\,
	datad => \inst3|inst3|ALT_INV_inst4~0_combout\,
	datae => \inst2|inst2|ALT_INV_inst4~0_combout\,
	dataf => \inst2|inst1|ALT_INV_inst4~0_combout\,
	combout => \alu1|inst|inst|inst1|inst3~0_combout\);

-- Location: MLABCELL_X84_Y18_N42
\regA|inst|inst12\ : cyclonev_lcell_comb
-- Equation(s):
-- \regA|inst|inst12~combout\ = ( \alu1|inst|inst9m|inst4~0_combout\ & ( (!\inst|and1~combout\) # (\regA|inst|inst12~combout\) ) ) # ( !\alu1|inst|inst9m|inst4~0_combout\ & ( (\regA|inst|inst12~combout\ & \inst|and1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \regA|inst|ALT_INV_inst12~combout\,
	datac => \inst|ALT_INV_and1~combout\,
	dataf => \alu1|inst|inst9m|ALT_INV_inst4~0_combout\,
	combout => \regA|inst|inst12~combout\);

-- Location: IOIBUF_X40_Y81_N18
\D[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: MLABCELL_X84_Y18_N21
\regB|inst|inst12\ : cyclonev_lcell_comb
-- Equation(s):
-- \regB|inst|inst12~combout\ = ( \inst|and2~combout\ & ( \alu1|inst|inst9m|inst4~0_combout\ ) ) # ( !\inst|and2~combout\ & ( \regB|inst|inst12~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|inst|inst9m|ALT_INV_inst4~0_combout\,
	datad => \regB|inst|ALT_INV_inst12~combout\,
	dataf => \inst|ALT_INV_and2~combout\,
	combout => \regB|inst|inst12~combout\);

-- Location: MLABCELL_X84_Y18_N57
\inst2|inst|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst|inst4~0_combout\ = ( \source[0]~input_o\ & ( \source[1]~input_o\ & ( \D[3]~input_o\ ) ) ) # ( !\source[0]~input_o\ & ( \source[1]~input_o\ & ( \regC|inst|inst12~combout\ ) ) ) # ( \source[0]~input_o\ & ( !\source[1]~input_o\ & ( 
-- \regB|inst|inst12~combout\ ) ) ) # ( !\source[0]~input_o\ & ( !\source[1]~input_o\ & ( \regA|inst|inst12~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regC|inst|ALT_INV_inst12~combout\,
	datab => \regA|inst|ALT_INV_inst12~combout\,
	datac => \ALT_INV_D[3]~input_o\,
	datad => \regB|inst|ALT_INV_inst12~combout\,
	datae => \ALT_INV_source[0]~input_o\,
	dataf => \ALT_INV_source[1]~input_o\,
	combout => \inst2|inst|inst4~0_combout\);

-- Location: MLABCELL_X84_Y18_N30
\alu1|inst|inst9m|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu1|inst|inst9m|inst4~0_combout\ = ( \inst2|inst|inst4~0_combout\ & ( (!\operation[0]~input_o\ & ((!\operation[1]~input_o\) # (!\inst3|inst|inst4~0_combout\ $ (\alu1|inst|inst|inst1|inst3~0_combout\)))) # (\operation[0]~input_o\ & 
-- (\inst3|inst|inst4~0_combout\)) ) ) # ( !\inst2|inst|inst4~0_combout\ & ( (!\operation[0]~input_o\ & (\operation[1]~input_o\ & (!\inst3|inst|inst4~0_combout\ $ (!\alu1|inst|inst|inst1|inst3~0_combout\)))) # (\operation[0]~input_o\ & 
-- (\inst3|inst|inst4~0_combout\ & ((!\operation[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100101000000100010010100010111011100100111011101110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_operation[0]~input_o\,
	datab => \inst3|inst|ALT_INV_inst4~0_combout\,
	datac => \alu1|inst|inst|inst1|ALT_INV_inst3~0_combout\,
	datad => \ALT_INV_operation[1]~input_o\,
	dataf => \inst2|inst|ALT_INV_inst4~0_combout\,
	combout => \alu1|inst|inst9m|inst4~0_combout\);

-- Location: MLABCELL_X84_Y18_N33
\regC|inst|inst12\ : cyclonev_lcell_comb
-- Equation(s):
-- \regC|inst|inst12~combout\ = ( \alu1|inst|inst9m|inst4~0_combout\ & ( (\inst|and3~combout\) # (\regC|inst|inst12~combout\) ) ) # ( !\alu1|inst|inst9m|inst4~0_combout\ & ( (\regC|inst|inst12~combout\ & !\inst|and3~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \regC|inst|ALT_INV_inst12~combout\,
	datad => \inst|ALT_INV_and3~combout\,
	dataf => \alu1|inst|inst9m|ALT_INV_inst4~0_combout\,
	combout => \regC|inst|inst12~combout\);

-- Location: MLABCELL_X84_Y18_N54
\inst3|inst|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|inst|inst4~0_combout\ = ( \destination[0]~input_o\ & ( \destination[1]~input_o\ & ( \D[3]~input_o\ ) ) ) # ( !\destination[0]~input_o\ & ( \destination[1]~input_o\ & ( \regC|inst|inst12~combout\ ) ) ) # ( \destination[0]~input_o\ & ( 
-- !\destination[1]~input_o\ & ( \regB|inst|inst12~combout\ ) ) ) # ( !\destination[0]~input_o\ & ( !\destination[1]~input_o\ & ( \regA|inst|inst12~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regC|inst|ALT_INV_inst12~combout\,
	datab => \regA|inst|ALT_INV_inst12~combout\,
	datac => \regB|inst|ALT_INV_inst12~combout\,
	datad => \ALT_INV_D[3]~input_o\,
	datae => \ALT_INV_destination[0]~input_o\,
	dataf => \ALT_INV_destination[1]~input_o\,
	combout => \inst3|inst|inst4~0_combout\);

-- Location: MLABCELL_X84_Y18_N39
\alu1|inst|inst14|inst2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu1|inst|inst14|inst2~0_combout\ = ( !\operation[0]~input_o\ & ( (\operation[1]~input_o\ & ((!\inst3|inst|inst4~0_combout\ & (\inst2|inst|inst4~0_combout\ & \alu1|inst|inst|inst1|inst3~0_combout\)) # (\inst3|inst|inst4~0_combout\ & 
-- ((\alu1|inst|inst|inst1|inst3~0_combout\) # (\inst2|inst|inst4~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011000000010001001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|ALT_INV_inst4~0_combout\,
	datab => \ALT_INV_operation[1]~input_o\,
	datac => \inst2|inst|ALT_INV_inst4~0_combout\,
	datad => \alu1|inst|inst|inst1|ALT_INV_inst3~0_combout\,
	dataf => \ALT_INV_operation[0]~input_o\,
	combout => \alu1|inst|inst14|inst2~0_combout\);

-- Location: MLABCELL_X78_Y8_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;



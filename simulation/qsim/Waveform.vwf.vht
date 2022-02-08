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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/31/2021 06:31:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Eu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Eu_vhd_vec_tst IS
END Eu_vhd_vec_tst;
ARCHITECTURE Eu_arch OF Eu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL C : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL cout : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL destination : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL operation : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL source : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT Eu
	PORT (
	A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	B : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	C : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	cout : OUT STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	destination : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	source : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Eu
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	cout => cout,
	D => D,
	destination => destination,
	operation => operation,
	source => source
	);
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	D(3) <= '1';
	WAIT FOR 50000 ps;
	D(3) <= '0';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	D(2) <= '0';
	WAIT FOR 50000 ps;
	D(2) <= '1';
	WAIT FOR 130000 ps;
	D(2) <= '0';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	D(1) <= '1';
	WAIT FOR 180000 ps;
	D(1) <= '0';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	D(0) <= '0';
	WAIT FOR 50000 ps;
	D(0) <= '1';
	WAIT FOR 130000 ps;
	D(0) <= '0';
WAIT;
END PROCESS t_prcs_D_0;
-- operation[1]
t_prcs_operation_1: PROCESS
BEGIN
	operation(1) <= '0';
	WAIT FOR 120000 ps;
	operation(1) <= '1';
	WAIT FOR 250000 ps;
	operation(1) <= '0';
WAIT;
END PROCESS t_prcs_operation_1;
-- operation[0]
t_prcs_operation_0: PROCESS
BEGIN
	operation(0) <= '0';
	WAIT FOR 120000 ps;
	operation(0) <= '1';
	WAIT FOR 80000 ps;
	operation(0) <= '0';
	WAIT FOR 70000 ps;
	operation(0) <= '1';
	WAIT FOR 100000 ps;
	operation(0) <= '0';
WAIT;
END PROCESS t_prcs_operation_0;
-- source[1]
t_prcs_source_1: PROCESS
BEGIN
	source(1) <= '1';
	WAIT FOR 200000 ps;
	source(1) <= '0';
	WAIT FOR 70000 ps;
	source(1) <= '1';
	WAIT FOR 50000 ps;
	source(1) <= '0';
WAIT;
END PROCESS t_prcs_source_1;
-- source[0]
t_prcs_source_0: PROCESS
BEGIN
	source(0) <= '1';
	WAIT FOR 200000 ps;
	source(0) <= '0';
	WAIT FOR 170000 ps;
	source(0) <= '1';
	WAIT FOR 80000 ps;
	source(0) <= '0';
WAIT;
END PROCESS t_prcs_source_0;
-- destination[1]
t_prcs_destination_1: PROCESS
BEGIN
	destination(1) <= '0';
	WAIT FOR 200000 ps;
	destination(1) <= '1';
	WAIT FOR 70000 ps;
	destination(1) <= '0';
	WAIT FOR 100000 ps;
	destination(1) <= '1';
	WAIT FOR 70000 ps;
	destination(1) <= '0';
WAIT;
END PROCESS t_prcs_destination_1;
-- destination[0]
t_prcs_destination_0: PROCESS
BEGIN
	destination(0) <= '1';
	WAIT FOR 50000 ps;
	destination(0) <= '0';
	WAIT FOR 220000 ps;
	destination(0) <= '1';
	WAIT FOR 100000 ps;
	destination(0) <= '0';
	WAIT FOR 620000 ps;
	destination(0) <= '1';
WAIT;
END PROCESS t_prcs_destination_0;
END Eu_arch;

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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/03/2024 15:58:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Bonus
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Bonus_vhd_vec_tst IS
END Bonus_vhd_vec_tst;
ARCHITECTURE Bonus_arch OF Bonus_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL ACKSDA_x : STD_LOGIC;
SIGNAL ACKSDA_y : STD_LOGIC;
SIGNAL ASDA_x : STD_LOGIC;
SIGNAL ASDA_y : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL burstmode : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL EXDATACLK_x : STD_LOGIC;
SIGNAL EXDATACLK_y : STD_LOGIC;
SIGNAL loaddata : STD_LOGIC;
SIGNAL pend_x : STD_LOGIC;
SIGNAL pend_y : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL SCL_x : STD_LOGIC;
SIGNAL SCL_y : STD_LOGIC;
SIGNAL SDA_x : STD_LOGIC;
SIGNAL SDA_y : STD_LOGIC;
SIGNAL start_x : STD_LOGIC;
SIGNAL start_y : STD_LOGIC;
COMPONENT Bonus
	PORT (
	a : IN STD_LOGIC;
	ACKSDA_x : IN STD_LOGIC;
	ACKSDA_y : IN STD_LOGIC;
	ASDA_x : BUFFER STD_LOGIC;
	ASDA_y : BUFFER STD_LOGIC;
	b : IN STD_LOGIC;
	burstmode : IN STD_LOGIC;
	c : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	d : IN STD_LOGIC;
	EXDATACLK_x : BUFFER STD_LOGIC;
	EXDATACLK_y : BUFFER STD_LOGIC;
	loaddata : IN STD_LOGIC;
	pend_x : BUFFER STD_LOGIC;
	pend_y : BUFFER STD_LOGIC;
	rst : IN STD_LOGIC;
	SCL_x : BUFFER STD_LOGIC;
	SCL_y : BUFFER STD_LOGIC;
	SDA_x : BUFFER STD_LOGIC;
	SDA_y : BUFFER STD_LOGIC;
	start_x : IN STD_LOGIC;
	start_y : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Bonus
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	ACKSDA_x => ACKSDA_x,
	ACKSDA_y => ACKSDA_y,
	ASDA_x => ASDA_x,
	ASDA_y => ASDA_y,
	b => b,
	burstmode => burstmode,
	c => c,
	clk => clk,
	d => d,
	EXDATACLK_x => EXDATACLK_x,
	EXDATACLK_y => EXDATACLK_y,
	loaddata => loaddata,
	pend_x => pend_x,
	pend_y => pend_y,
	rst => rst,
	SCL_x => SCL_x,
	SCL_y => SCL_y,
	SDA_x => SDA_x,
	SDA_y => SDA_y,
	start_x => start_x,
	start_y => start_y
	);

-- a
t_prcs_a: PROCESS
BEGIN
	a <= '0';
WAIT;
END PROCESS t_prcs_a;

-- ACKSDA_x
t_prcs_ACKSDA_x: PROCESS
BEGIN
	ACKSDA_x <= '0';
WAIT;
END PROCESS t_prcs_ACKSDA_x;

-- ACKSDA_y
t_prcs_ACKSDA_y: PROCESS
BEGIN
	ACKSDA_y <= '0';
WAIT;
END PROCESS t_prcs_ACKSDA_y;

-- b
t_prcs_b: PROCESS
BEGIN
	b <= '0';
WAIT;
END PROCESS t_prcs_b;

-- burstmode
t_prcs_burstmode: PROCESS
BEGIN
	burstmode <= '0';
WAIT;
END PROCESS t_prcs_burstmode;

-- c
t_prcs_c: PROCESS
BEGIN
	c <= '0';
WAIT;
END PROCESS t_prcs_c;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- d
t_prcs_d: PROCESS
BEGIN
	d <= '0';
WAIT;
END PROCESS t_prcs_d;

-- loaddata
t_prcs_loaddata: PROCESS
BEGIN
	loaddata <= '0';
WAIT;
END PROCESS t_prcs_loaddata;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- SDA_x
t_prcs_SDA_x: PROCESS
BEGIN
	SDA_x <= 'Z';
WAIT;
END PROCESS t_prcs_SDA_x;

-- SDA_y
t_prcs_SDA_y: PROCESS
BEGIN
	SDA_y <= 'Z';
WAIT;
END PROCESS t_prcs_SDA_y;

-- start_x
t_prcs_start_x: PROCESS
BEGIN
	start_x <= '0';
	WAIT FOR 20000 ps;
	start_x <= '1';
	WAIT FOR 10000 ps;
	start_x <= '0';
WAIT;
END PROCESS t_prcs_start_x;

-- start_y
t_prcs_start_y: PROCESS
BEGIN
	start_y <= '0';
	WAIT FOR 20000 ps;
	start_y <= '1';
	WAIT FOR 10000 ps;
	start_y <= '0';
WAIT;
END PROCESS t_prcs_start_y;
END Bonus_arch;

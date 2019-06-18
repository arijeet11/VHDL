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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Fri Apr 12 19:40:37 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Block1 IS 
	PORT
	(
		upp_ner :  IN  STD_LOGIC;
		pressed :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		disp_out :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END Block1;

ARCHITECTURE bdf_type OF Block1 IS 

COMPONENT hex_display
	PORT(h_upp_ner : IN STD_LOGIC;
		 h_pressed : IN STD_LOGIC;
		 h_reset : IN STD_LOGIC;
		 display : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;



BEGIN 



b2v_inst : hex_display
PORT MAP(h_upp_ner => upp_ner,
		 h_pressed => pressed,
		 h_reset => reset,
		 display => disp_out);


END bdf_type;
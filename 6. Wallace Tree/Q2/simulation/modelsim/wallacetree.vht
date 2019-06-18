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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/03/2019 01:54:57"
                                                            
-- Vhdl Test Bench template for design  :  wallacetree
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY wallacetree_vhd_tst IS
END wallacetree_vhd_tst;
ARCHITECTURE wallacetree_arch OF wallacetree_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a1 : STD_LOGIC;
SIGNAL a2 : STD_LOGIC;
SIGNAL b1 : STD_LOGIC;
SIGNAL b2 : STD_LOGIC;
SIGNAL cin1 : STD_LOGIC;
SIGNAL cin2 : STD_LOGIC;
SIGNAL co : STD_LOGIC;
SIGNAL do1 : STD_LOGIC;
SIGNAL do2 : STD_LOGIC;
COMPONENT wallacetree
	PORT (
	a1 : IN STD_LOGIC;
	a2 : IN STD_LOGIC;
	b1 : IN STD_LOGIC;
	b2 : IN STD_LOGIC;
	cin1 : IN STD_LOGIC;
	cin2 : IN STD_LOGIC;
	co : OUT STD_LOGIC;
	do1 : OUT STD_LOGIC;
	do2 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : wallacetree
	PORT MAP (
-- list connections between master ports and signals
	a1 => a1,
	a2 => a2,
	b1 => b1,
	b2 => b2,
	cin1 => cin1,
	cin2 => cin2,
	co => co,
	do1 => do1,
	do2 => do2
	);
--init : PROCESS                                               
---- variable declarations                                     
--BEGIN                                                        
--        -- code that executes only once                      
--WAIT;                                                       
--END PROCESS init;                                           
--always : PROCESS                                              
---- optional sensitivity list                                  
---- (        )                                                 
---- variable declarations                                      
--BEGIN                                                         
--        -- code executes for every event on sensitivity list  
--WAIT;                                                        
--END PROCESS always;               

PROCESS

BEGIN
			a1 <= '0';
			b1 <= '0';
			cin1 <= '0';
			a2 <= '0';
			b2 <= '0';
			cin2 <= '0';
			wait for 100 ns;
			a1 <= '0';
			b1 <= '0';
			cin1 <= '1';
			a2 <= '0';
			b2 <= '0';
			cin2 <= '0';
			wait for 100 ns;
			a1 <= '0';
			b1 <= '1';
			cin1 <= '1';
			a2 <= '0';
			b2 <= '0';
			cin2 <= '0';
			wait for 100 ns;
			a1 <= '0';
			b1 <= '1';
			cin1 <= '1';
			a2 <= '1';
			b2 <= '0';
			cin2 <= '0';
			wait for 100 ns;
			a1 <= '1';
			b1 <= '0';
			cin1 <= '1';
			a2 <= '1';
			b2 <= '1';
			cin2 <= '0';
			wait for 100 ns;
			a1 <= '1';
			b1 <= '1';
			cin1 <= '1';
			a2 <= '1';
			b2 <= '0';
			cin2 <= '1';
			wait for 100 ns;
			a1 <= '1';
			b1 <= '1';
			cin1 <= '1';
			a2 <= '1';
			b2 <= '1';
			cin2 <= '1';
			wait for 100 ns;
END PROCESS;                           
END wallacetree_arch;

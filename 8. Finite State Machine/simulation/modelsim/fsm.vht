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
-- Generated on "03/26/2019 19:36:21"
                                                            
-- Vhdl Test Bench template for design  :  fsm
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;   
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;                             

ENTITY fsm_vhd_tst IS
END fsm_vhd_tst;
ARCHITECTURE fsm_arch OF fsm_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL beep : STD_LOGIC := '0';
SIGNAL sys_clk : STD_LOGIC := '0';
SIGNAL bit_str : STD_LOGIC := '0';
SIGNAL rst : STD_LOGIC := '1';
COMPONENT fsm
	PORT (
	beep : OUT STD_LOGIC;
	sys_clk : IN STD_LOGIC;
	bit_str : IN STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fsm
	PORT MAP (
-- list connections between master ports and signals
	beep => beep,
	sys_clk => sys_clk,
	bit_str => bit_str,
	rst => rst
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
	rst <= '1';
	
	sys_clk <= not(sys_clk);		--1
	wait for 20 ns;
	
	bit_str <= '1';
	
	sys_clk <= not(sys_clk);		--0
	wait for 20 ns;
	
	sys_clk <= not(sys_clk);		--1
	wait for 20 ns;
	
	bit_str <= '0';
	
	sys_clk <= not(sys_clk);		--0
	wait for 20 ns;
	
	sys_clk <= not(sys_clk);		--1
	wait for 20 ns;
	
	bit_str <= '1';
	
	sys_clk <= not(sys_clk);		--0
	wait for 20 ns;
	
	sys_clk <= not(sys_clk);		--1
	wait for 20 ns;
	
	bit_str <= '0';
	
	sys_clk <= not(sys_clk);		--0
	wait for 20 ns;
	
	sys_clk <= not(sys_clk);		--1
	wait for 20 ns;
	
	bit_str <= '1';
	
	sys_clk <= not(sys_clk);		--0
	wait for 20 ns;
	
	sys_clk <= not(sys_clk);		--1
	wait for 20 ns;
	
	bit_str <= '1';
	
	sys_clk <= not(sys_clk);		--0
	wait for 20 ns;
	
	sys_clk <= not(sys_clk);		--1
	wait for 20 ns;
	
	bit_str <= '0';
	
	sys_clk <= not(sys_clk);		--0
	wait for 20 ns;
	
	sys_clk <= not(sys_clk);		--1
	wait for 20 ns;
	
	bit_str <= '0';
	
	sys_clk <= not(sys_clk);		--0
	wait for 20 ns;
	
END PROCESS;
                                  
END fsm_arch;

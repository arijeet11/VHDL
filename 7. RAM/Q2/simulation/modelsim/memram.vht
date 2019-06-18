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
-- Generated on "03/16/2019 03:35:39"
                                                            
-- Vhdl Test Bench template for design  :  memram
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 
USE ieee.std_logic_unsigned.all;  
USE ieee.numeric_std.all;
USE work.my_ram.all;                             

ENTITY memram_vhd_tst IS
END memram_vhd_tst;
ARCHITECTURE memram_arch OF memram_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address11 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk11 : STD_LOGIC :='0';
SIGNAL data_io : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL oe : STD_LOGIC;
SIGNAL we11 : STD_LOGIC;
COMPONENT memram
	PORT (
	address11 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk11 : IN STD_LOGIC;
	data_io : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	oe : IN STD_LOGIC;
	we11 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : memram
	PORT MAP (
-- list connections between master ports and signals
	address11 => address11,
	clk11 => clk11,
	data_io => data_io,
	oe => oe,
	we11 => we11
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
--clk11 <= '0', '1' after 50 ns, '0' after 100 ns;
PROCESS

BEGIN

	clk11 <= not(clk11);
	oe <= '0';
	we11 <= '0';
	data_io <= "ZZZZZZZZ";
	address11 <= "00000001";
	wait for 50 ns;
	
	clk11 <= not(clk11);
	wait for 50 ns;
	
	clk11 <= not(clk11);
	oe <= '1';
	we11 <= '1';
	data_io <= "11110000";
	address11 <= "00000011";
	wait for 50 ns;
	
	clk11 <= not(clk11);
	wait for 50 ns;
	
	clk11 <= not(clk11);
	oe <= '0';
	we11 <= '1';
	--data_io <= "ZZZZZZZZ";
	wait for 50 ns;
	
	clk11 <= not(clk11);
	we11 <= '0';
	data_io <= "ZZZZZZZZ";
	wait for 50 ns;
	
	address11 <= "00000010";
	data_io <= "ZZZZZZZZ";
	wait for 10 ns;
	
	clk11 <= not(clk11);
	wait for 50 ns;
	
	clk11 <= not(clk11);
	wait for 50 ns;
	
	
END PROCESS;

END memram_arch;

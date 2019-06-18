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
-- Generated on "02/27/2019 16:37:06"
                                                            
-- Vhdl Test Bench template for design  :  SevenSegmentDecoding
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;                                

ENTITY SevenSegmentDecoding_vhd_tst IS
END SevenSegmentDecoding_vhd_tst;
ARCHITECTURE SevenSegmentDecoding_arch OF SevenSegmentDecoding_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC := '0';
SIGNAL io : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
SIGNAL rst : STD_LOGIC;
SIGNAL seg : STD_LOGIC_VECTOR(6 DOWNTO 0);
signal a : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
COMPONENT SevenSegmentDecoding
	PORT (
	clk : IN STD_LOGIC;
	io : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	rst : IN STD_LOGIC;
	seg : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SevenSegmentDecoding
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	io => io,
	rst => rst,
	seg => seg
	);
--init : PROCESS                                               
-- variable declarations                                     
--BEGIN                                                        
        -- code that executes only once                      
--WAIT;                                                       
--END PROCESS init;                                           
--always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
--BEGIN                                                         
        -- code executes for every event on sensitivity list  
--WAIT;                                                        
--END PROCESS always;

	process
	
	variable k : integer :=0;
	
	
	begin
--			rst <= '1';
--			clk <= '0';
--			wait for 10 ns;
--			clk <= '1';      
--			wait for 10 ns;
--			io <= "0000";
--			wait for 100 ns;
--			io <= "0001";
--			wait for 100 ns;
--			io <= "0010";
--			wait for 100 ns;
--			io <= "0011";
--			wait for 100 ns;
--			io <= "0100";
--			wait for 100 ns;
--			io <= "0101";
--			wait for 100 ns;
--			io <= "0110";
--			wait for 100 ns;
--			io <= "0111";
--			wait for 100 ns;
			
			rst <= '1';
			count : for k in 0 to 15 loop
			clk <= not(clk) after 10 ns;
			io <= a;
			a <= a + '1';
			wait for 100 ns;
			end loop count;
			
	end process;
END SevenSegmentDecoding_arch;

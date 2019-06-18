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
-- Generated on "05/10/2019 04:24:21"
                                                            
-- Vhdl Test Bench template for design  :  alu
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                 
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;               

ENTITY alu_vhd_tst IS
END alu_vhd_tst;
ARCHITECTURE alu_arch OF alu_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL alu_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL b_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL exp : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL exp1 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL exp2 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL op_code : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL overflow : STD_LOGIC;
SIGNAL zero : STD_LOGIC;
SIGNAL k : INTEGER RANGE -128 to 127;
COMPONENT alu
	PORT (
	a_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	alu_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	b_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	exp : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	exp1 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	exp2 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	op_code : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	overflow : OUT STD_LOGIC;
	zero : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : alu
	PORT MAP (
-- list connections between master ports and signals
	a_in => a_in,
	alu_out => alu_out,
	b_in => b_in,
	exp => exp,
	exp1 => exp1,
	exp2 => exp2,
	op_code => op_code,
	overflow => overflow,
	zero => zero
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
	k <= 20;
	a_in <= std_logic_vector(to_signed(20,8));
	b_in <= std_logic_vector(to_signed(20,8));
	op_code <= "00";
	wait for 100 ns;
	
	k <= -128;
	a_in <= std_logic_vector(to_signed(127,8));
	--k <= 1;
	b_in <= std_logic_vector(to_signed(1,8));
	op_code <= "00";
	wait for 100 ns;
	
	a_in <= std_logic_vector(to_signed(0,8));
	b_in <= std_logic_vector(to_signed(20,8));
	op_code <= "01";
	wait for 100 ns;
	
	a_in <= std_logic_vector(to_signed(20,8));
	b_in <= std_logic_vector(to_signed(20,8));
	op_code <= "00";
	wait for 100 ns;
	
	a_in <= std_logic_vector(to_signed(127,8));
	b_in <= std_logic_vector(to_signed(127,8));
	op_code <= "10";
	wait for 100 ns;
	
	a_in <= std_logic_vector(to_signed(127,8));
	b_in <= std_logic_vector(to_signed(127,8));
	op_code <= "11";
	wait for 100 ns;
	
END PROCESS;
                            
END alu_arch;

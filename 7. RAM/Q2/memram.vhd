LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;
USE work.my_ram.all;

ENTITY memram IS
	PORT
	(
		data_io : inout std_logic_vector(7 downto 0);
		we11 : in std_logic;
		clk11 : in std_logic;
		address11 : in std_logic_vector(7 downto 0);
		oe : in std_logic
	);
END memram;

ARCHITECTURE rtl OF memram IS

SIGNAL s1,s2 : std_logic_vector(7 downto 0);

BEGIN
	V1 : mem PORT MAP(s1,s2,we11,clk11,address11);
	data_io <= s2 when (oe = '0') else (others=>'Z');
	s1 <= data_io;
END rtl;
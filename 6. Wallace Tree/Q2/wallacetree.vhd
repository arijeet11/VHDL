LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.fa.all;

ENTITY wallacetree IS
	PORT
	(
		a1,a2 : in std_logic;
		b1,b2 : in std_logic;
		cin1,cin2 : in std_logic;
		do1,do2 : out std_logic;
		co : out std_logic
	);
END wallacetree;

ARCHITECTURE rtl OF wallacetree IS

	SIGNAL d1,d2,c1,c2,c4 : STD_LOGIC;
	SIGNAL c3 : STD_LOGIC := '0';

BEGIN

	block1 : wallace PORT MAP(a1,b1,cin1,d1,c1);
	block2 : wallace PORT MAP(a2,b2,cin2,d2,c2);
	block3 : wallace PORT MAP(d1,d2,c3,do1,c4);
	block4 : wallace PORT MAP(c4,c1,c2,do2,co);

END rtl;
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

PACKAGE fa IS
	COMPONENT wallace
		PORT
		(
			a : in std_logic;
			b : in std_logic;
			cin : in std_logic;
			d : out std_logic;
			co : out std_logic
		);
	END COMPONENT;
END fa;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY wallace IS
	PORT
	(
		a : in std_logic;
		b : in std_logic;
		cin : in std_logic;
		d : out std_logic;
		co : out std_logic
	);
END wallace;


ARCHITECTURE rt OF wallace IS 

BEGIN

	d <= a xor b xor cin;
	co <= (a and b) or ((a xor b) and cin);

END rt;
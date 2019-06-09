--- LOGIC GATES

library ieee;
use ieee.std_logic_1164.all;

entity gates is
	port
	(
		a,b : in std_logic;
		c,f,h,k : out std_logic
	);
end entity;

architecture rt1 of gates is	
begin

	c <= a and b;	-- AND operation
	f <= a or b; 	-- OR operation
	h <= not a;		-- NOT operation
	k <= (a or b) and (not(a and b));	-- XOR operation

end rt1;

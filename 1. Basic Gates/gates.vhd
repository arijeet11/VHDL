--- LOGIC GATES

library ieee;
use ieee.std_logic_1164.all;

entity gates is 				-- I/O declaration
	port
	(
		a,b : in std_logic; 		-- Input signals
		c,f,h,k : out std_logic 	-- Output signals
	);
end entity;

architecture rt1 of gates is			-- Describing the behaviour and structure of the design
begin

	c <= a and b;				-- AND operation
	f <= a or b; 				-- OR operation
	h <= not a;				-- NOT operation
	k <= (a or b) and (not(a and b));	-- XOR operation

end rt1;

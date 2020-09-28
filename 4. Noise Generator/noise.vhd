library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity noise is
	port
	(
		clk,rst : in std_logic;
		sreg : out std_logic_vector(15 downto 0)
	);
end entity;

architecture rt1 of noise is

	signal q : std_logic_vector(15 downto 0) := "1000000000000000";
	signal g : std_logic := '0';

begin

	g <= q(15) xor q(14) xor q(12) xor q(3); 		-- The unique data (binary) responsible for noise generation/encryption
	sreg <= q; 						-- Output data
	
	process(g,q,clk,rst)
	
	begin
	
		if (rst='0') then 			-- Asynchronous reset since we are not implementing separate precise reset function
			q <= "1000000000000000";
		elsif (clk'event and clk='1') then
			q(15) <= q(14); 		-- Shift registers for data circulation
			q(14) <= q(13);
			q(13) <= q(12);
			q(12) <= q(11);
			q(11) <= q(10);
			q(10) <= q(9);
			q(9) <= q(8);
			q(8) <= q(7);
			q(7) <= q(6);
			q(6) <= q(5);
			q(5) <= q(4);
			q(4) <= q(3);
			q(3) <= q(2);
			q(2) <= q(1);
			q(1) <= q(0);
			q(0) <= g;
		end if;

	end process;

end rt1;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity d_flip_flop is
	port
	(
		clk,nrst : in std_logic;
		clk_out : out std_logic_vector(2 downto 0)
	);
end entity;

architecture rt1 of d_flip_flop is	

signal q : std_logic_vector(2 downto 0) := "000";
signal d : std_logic_vector(2 downto 0) := "000";

begin
		process(d,q,clk,nrst)
		begin
		d <= q + '1';
		clk_out <= q;
		if(clk'event and clk='1') then
			if(nrst='0') then
				q <= "000";
			else
				q <= d;	
			end if;
		end if;
		end process;
end rt1;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR(1 downto 0);
           x : out  STD_LOGIC);
end mux;

architecture rtl of mux is
begin

with s select
x <= 	a when "00",
		b when "01",
		c when "10",
		d when others;

end rtl;

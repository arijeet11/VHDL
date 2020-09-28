library IEEE; 						-- Standard Library
use IEEE.STD_LOGIC_1164.ALL;


entity mux is 						-- I/O declaration
    Port ( a : in  STD_LOGIC; 				-- Note: Signals having same nature can be declared in a single line
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR(1 downto 0); 	-- This represents a 2 bit bus 
           x : out  STD_LOGIC);
end mux;

architecture rtl of mux is
begin

with s select 						-- Implementation of "with-select" conditional logic
x <= 	a when "00",
		b when "01",
		c when "10",
		d when others;

end rtl;

LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.std_logic_unsigned.all; 
USE ieee.numeric_std.all;
USE work.counter.all;

entity hex_display is 
	port
	( 
		h_upp_ner : in std_logic;
		h_pressed : in std_logic;
		h_reset : in std_logic;
		display : out std_logic_vector(6 downto 0) 
	); 
end entity; 

architecture rt of hex_display is 
	signal h_counts : std_logic_vector(3 downto 0) := "0000";
begin 
	B1 : count_display PORT MAP(h_upp_ner, h_pressed, h_reset, h_counts);
	
	with h_counts select
	display <= 	"0000001" when "0000",		-- Character "0"
					"1001111" when "0001",		-- Character "1"
					"0010010" when "0010",		-- Character "2"
					"0000110" when "0011",		-- Character "3"
					"1001100" when "0100",		-- Character "4"
					"0100100" when "0101",		-- Character "5"
					"0100000" when "0110",		-- Character "6"
					"0001111" when "0111",		-- Character "7"
					"0000000" when "1000",		-- Character "8"
					"0000100" when "1001",		-- Character "9"
					"0001000" when "1010",		-- Character "A"
					"1100000" when "1011",		-- Character "b"
					"0110001" when "1100",		-- Character "C"
					"1000010" when "1101",		-- Character "d"
					"0110000" when "1110",		-- Character "E"
					"0111000" when "1111",		-- Character "F"
					"ZZZZZZZ" when others;
	
end rt;
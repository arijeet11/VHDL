LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

PACKAGE sevenseg IS

	FUNCTION to_SevenSegment (i : in std_logic_vector(3 downto 0)) RETURN std_logic_vector;

END sevenseg;



PACKAGE BODY sevenseg IS

	FUNCTION to_SevenSegment (i : in std_logic_vector(3 downto 0)) RETURN std_logic_vector is
	VARIABLE temp:std_logic_vector (6 downto 0);
	begin
	
	CASE i IS
		WHEN  "0000" => temp :="1000000";			-- Character "0"
		WHEN  "0001" => temp :="1111100";			-- Character "1"
		WHEN  "0010" => temp :="0100100";			-- Character "2"
		WHEN  "0011" => temp :="0110000";			-- Character "3"
		WHEN  "0100" => temp :="0011001";			-- Character "4"
		WHEN  "0101" => temp :="0010010";			-- Character "5"
		WHEN  "0110" => temp :="0000010";			-- Character "6"
		WHEN  "0111" => temp :="1111000";			-- Character "7"
		WHEN  "1000" => temp :="0000000";			-- Character "8"
		WHEN  "1001" => temp :="0010000";			-- Character "9"
		WHEN  "1010" => temp :="0001000";			-- Character "A"
		WHEN  "1011" => temp :="0000011";			-- Character "b"
		WHEN  "1100" => temp :="1000110";			-- Character "C"
		WHEN  "1101" => temp :="0100001";			-- Character "d"
		WHEN  "1110" => temp :="0000110";			-- Character "E"
		WHEN  "1111" => temp :="0001110";			-- Character "F"
		WHEN OTHERS => NULL;
	END CASE;
	RETURN (temp);
	end to_SevenSegment;

end sevenseg;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use work.sevenseg.all;

entity SevenSegmentDecoding is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  io : in std_logic_vector(3 downto 0);
           seg : out  std_logic_vector(6 downto 0));
end SevenSegmentDecoding;

architecture rtl of SevenSegmentDecoding is

begin

process (clk,rst)
begin
	if (rst='0') then
		seg <= "0000000";
	elsif (clk'event and clk='1') then
		seg <= to_SevenSegment(io);
	end if;
end process;
end rtl;

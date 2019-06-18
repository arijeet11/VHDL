LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.std_logic_unsigned.all; 
USE ieee.numeric_std.all;

PACKAGE counter IS 
	COMPONENT count_display 
		PORT 
		( 
			upp_ner : in std_logic;
			pressed : in std_logic;
			reset : in std_logic;
			counts : out std_logic_vector(3 downto 0)
		); 
	END COMPONENT; 
END counter; 

LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.std_logic_unsigned.all; 
USE ieee.numeric_std.all;

entity count_display is 
	port
	( 
		upp_ner : in std_logic;
		pressed : in std_logic;
		reset : in std_logic;
		counts : out std_logic_vector(3 downto 0) 
	); 
end entity; 

architecture rt1 of count_display is 
	signal q : std_logic_vector(3 downto 0) := "0000"; 

begin 
	process(upp_ner,pressed,reset,q)
	begin
		if (reset = '0') then
			counts <= "0000";
			q <= "0000";
		elsif (pressed'event and pressed = '0') then
			if (upp_ner = '0') then
				q <= q + '1';
			elsif (upp_ner = '1') then
				q <= q - '1';
			end if;
		end if;
		counts <= q;
	end process;
	
end rt1;
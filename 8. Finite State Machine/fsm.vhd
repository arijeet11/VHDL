LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;


ENTITY fsm IS
	PORT
	(
		sys_clk,rst,bit_str : in std_logic;
		beep : out std_logic
	);
END fsm;

ARCHITECTURE rtl OF fsm IS

TYPE state_type IS (s0,s1,s2,s3,s4);
SIGNAL state : state_type;

BEGIN

	PROCESS(sys_clk,rst,bit_str)
	
	BEGIN
		IF (rst='0') THEN
			state <= s0;
		ELSIF (sys_clk'event and sys_clk='0') THEN
			CASE state IS
				WHEN s0=> IF (bit_str='1') THEN
					state <= s1;
				ELSE
					state <= s0;
				END IF;
				WHEN s1=> IF (bit_str='0') THEN
					state <= s2;
				ELSE
					state <= s1;
				END IF;
				WHEN s2=> IF (bit_str='1') THEN
					state <= s3;
				ELSE
					state <= s0;
				END IF;
				WHEN s3=> IF (bit_str='0') THEN
					state <= s4;
				ELSE
					state <= s1;
				END IF;
				WHEN s4=> IF (bit_str='0') THEN
					state <= s0;
				ELSE
					state <= s3;
				END IF;
			END CASE;
		END IF;
	END PROCESS;
	
	PROCESS(state)
	BEGIN
		CASE state IS 
			WHEN s0=> beep <= '0' ;
			WHEN s1=> beep <= '0' ;
			WHEN s2=> beep <= '0' ;
			WHEN s3=> beep <= '0' ;
			WHEN s4=> beep <= '1' ;
		END CASE;
	END PROCESS;

END rtl;
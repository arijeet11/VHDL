LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;
--USE ieee.std_logic_arith.all;


ENTITY alu IS
	PORT
	(
		a_in,b_in : in std_logic_vector(7 downto 0);
		op_code : in std_logic_vector(1 downto 0);
		alu_out : out std_logic_vector(7 downto 0);
		exp,exp1,exp2 : out std_logic_vector(8 downto 0);
		zero,overflow : out std_logic
	);
END alu;

ARCHITECTURE rtl OF alu IS
--SIGNAL s1 : integer range -128 to 127; 
SIGNAL s1,s2 : std_logic_vector(8 downto 0);
BEGIN

--PROCESS(a_in,b_in,op_code)
--BEGIN
--	if (op_code="00") then 						--Addition
--		s2 <= (a_in(7) & a_in) + (b_in(7) & b_in);
--		--s1 <= to_integer(signed(a_in)) + to_integer(signed(b_in));
--	elsif (op_code="01") then					--Subtraction
--		s2 <= (a_in(7) & a_in) - (b_in(7) & b_in);
--		--s1 <= to_integer(unsigned(a_in)) - to_integer(unsigned(b_in));
--	elsif (op_code="10") then					--AND
--		s2 <= (a_in(7) & a_in) and (b_in(7) & b_in);
--		--s1 <= to_integer(unsigned(a_in and b_in));
--	elsif (op_code="11") then					--OR
--		s2 <= (a_in(7) & a_in) or (b_in(7) & b_in);
--		--s1 <= to_integer(unsigned(a_in or b_in));
--	end if;
--END PROCESS;
	
	with op_code select
	s2 <= 	((a_in(7) & a_in) + (b_in(7) & b_in)) when "00",
				((a_in(7) & a_in) - (b_in(7) & b_in)) when "01",
				((a_in(7) & a_in) and (b_in(7) & b_in)) when "10",
				((a_in(7) & a_in) or (b_in(7) & b_in)) when others;

	alu_out <= s2(7 downto 0);
	exp <= s2;							--example for s2
	exp1 <= (a_in(7) & a_in);		--example for a_in
	exp2 <= (b_in(7) & b_in);		--example for b_in
	overflow <= '1' when s2(7)='1' else '0'; --(s2(8) & s2);
	zero <= '1' when s2="000000000" else '0';
	--alu_out <= std_logic_vector(to_unsigned(s1));
	
END rtl;
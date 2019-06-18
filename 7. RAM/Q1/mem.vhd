LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

PACKAGE my_ram IS
	COMPONENT mem
		PORT
		(
			data_in : in std_logic_vector(7 downto 0);
			data_out : out std_logic_vector(7 downto 0);
			we : in std_logic;
			clk : in std_logic;
			address : in std_logic_vector(7 downto 0)
		);
	END COMPONENT;
END my_ram;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY mem IS
	PORT
	(
		data_in : in std_logic_vector(7 downto 0);
		data_out : out std_logic_vector(7 downto 0);
		we : in std_logic;
		clk : in std_logic;
		address : in std_logic_vector(7 downto 0)
	);
END mem;

ARCHITECTURE rt OF mem IS 
type ram_array is array (0 to 255 ) of std_logic_vector (7 downto 0);
	-- initial values in the RAM
	signal ram: ram_array :=(
		x"11",x"22",x"33",x"44",-- 0x00: 1
		x"55",x"66",x"77",x"88",-- 0x04: 2
		x"99",x"10",x"20",x"30",-- 0x08: 3
		x"40",x"50",x"60",x"70",-- 0x0C: 4
		x"80",x"90",x"00",x"00",-- 0x10: 5
		x"00",x"00",x"00",x"00",-- 0x14: 6
		x"00",x"00",x"00",x"00",-- 0x18: 7
		x"00",x"00",x"00",x"00",-- 0x1C: 8
		x"00",x"00",x"00",x"00",-- 0x20: 9
		x"00",x"00",x"00",x"00",-- 0x24: 10
		x"00",x"00",x"00",x"00",-- 0x28: 11
		x"00",x"00",x"00",x"00",-- 0x2C: 12
		x"00",x"00",x"00",x"00",-- 0x30: 13
		x"00",x"00",x"00",x"00",-- 0x34: 14
		x"00",x"00",x"00",x"00",-- 0x38: 15
		x"00",x"00",x"00",x"00",-- 0x3C: 16
		x"00",x"00",x"00",x"00",-- 0x40: 17
		x"00",x"00",x"00",x"00",-- 0x44: 18
		x"00",x"00",x"00",x"00",-- 0x48: 19
		x"00",x"00",x"00",x"00",-- 0x4C: 20
		x"00",x"00",x"00",x"00",-- 0x50: 21
		x"00",x"00",x"00",x"00",-- 0x54: 22
		x"00",x"00",x"00",x"00",-- 0x58: 23
		x"00",x"00",x"00",x"00",-- 0x5C: 24
		x"00",x"00",x"00",x"00",-- 0x60: 25
		x"00",x"00",x"00",x"00",-- 0x64: 26
		x"00",x"00",x"00",x"00",-- 0x68: 27
		x"00",x"00",x"00",x"00",-- 0x6C: 28
		x"00",x"00",x"00",x"00",-- 0x70: 29
		x"00",x"00",x"00",x"00",-- 0x74: 30
		x"00",x"00",x"00",x"00",-- 0x78: 31
		x"00",x"00",x"00",x"00",-- 0x7C: 32
		x"00",x"00",x"00",x"00",-- 0x80: 33
		x"00",x"00",x"00",x"00",-- 0x84: 34
		x"00",x"00",x"00",x"00",-- 0x88: 35
		x"00",x"00",x"00",x"00",-- 0x8C: 36
		x"00",x"00",x"00",x"00",-- 0x90: 37
		x"00",x"00",x"00",x"00",-- 0x94: 38
		x"00",x"00",x"00",x"00",-- 0x98: 39
		x"00",x"00",x"00",x"00",-- 0x9C: 40
		x"00",x"00",x"00",x"00",-- 0xA0: 41
		x"00",x"00",x"00",x"00",-- 0xA4: 42
		x"00",x"00",x"00",x"00",-- 0xA8: 43
		x"00",x"00",x"00",x"00",-- 0xAC: 44
		x"00",x"00",x"00",x"00",-- 0xB0: 45
		x"00",x"00",x"00",x"00",-- 0xB4: 46
		x"00",x"00",x"00",x"00",-- 0xB8: 47
		x"00",x"00",x"00",x"00",-- 0xBC: 48
		x"00",x"00",x"00",x"00",-- 0xC0: 49
		x"00",x"00",x"00",x"00",-- 0xC4: 50
		x"00",x"00",x"00",x"00",-- 0xC8: 51
		x"00",x"00",x"00",x"00",-- 0xCC: 52
		x"00",x"00",x"00",x"00",-- 0xD0: 53
		x"00",x"00",x"00",x"00",-- 0xD4: 54
		x"00",x"00",x"00",x"00",-- 0xD8: 55
		x"00",x"00",x"00",x"00",-- 0xDC: 56
		x"00",x"00",x"00",x"00",-- 0xE0: 57
		x"00",x"00",x"00",x"00",-- 0xE4: 58
		x"00",x"00",x"00",x"00",-- 0xE8: 59
		x"00",x"00",x"00",x"00",-- 0xEC: 60
		x"00",x"00",x"00",x"00",-- 0xF0: 61
		x"00",x"00",x"00",x"00",-- 0xF4: 62
		x"00",x"00",x"00",x"00",-- 0xF8: 63
		x"00",x"00",x"00",x"00"
	); 
begin
	Process(clk,we,data_in,ram,address)
	begin
		if(clk'event and clk='1') then
			if(we='1') then 
				ram(to_integer(unsigned(address))) <= data_in;
			end if;
			data_out <= ram(to_integer(unsigned(address)));
		end if;
		
	end Process;
	
END rt;



--------------Main File----------------
--	V1: PORT MAP(data_io,we,clk,address);
--	V2: PORT MAP(s1,we,clk,address);
--	V3: PORT MAP(data_out,we,clk,address);
--	s1 <= data_in when oe ='0' else 'Z';
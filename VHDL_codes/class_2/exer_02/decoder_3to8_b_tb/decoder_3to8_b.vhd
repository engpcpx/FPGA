--------------------------------------------------------------------------
-- decoder 3to8 using using if/then/process 
-- author: Paulo Cezar da Paixao
--------------------------------------------------------------------------
--
-- a  b  c    s7 s6 S5 S4 S3 S2 S1 S0
-- 0  0  0    0  0  0  0  0  0  0  1
-- 0  0  1    0  0  0  0  0  0  1  0
-- 0  1  0    0  0  0  0  0  1  0  0
-- 0  1  1    0  0  0  0  1  0  0  0
-- 1  0  0    0  0  0  1  0  0  0  0
-- 1  0  1    0  0  1  0  0  0  0  0 
-- 1  1  0    0  1  0  0  0  0  0  0
-- 1  1  1    1  0  0  0  0  0  0  0
--
--------------------------------------------------------------------------
-- libraries and packages
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--------------------------------------------------------------------------
-- entity declaration
entity decoder_3to8_b is 

	port(
		abc :  in  std_logic_vector(2 downto 0);
		s   :  out std_logic_vector(7 downto 0)
	);
		
end decoder_3to8_b;

--------------------------------------------------------------------------
-- architecture declaration
architecture hardware of decoder_3to8_b is

	begin 
		proc : process(abc)
		begin
			if    (abc = "000") then s <= "00000000"; 
			elsif (abc = "000") then s <= "00000001"; 
			elsif (abc = "001") then s <= "00000010";  
			elsif (abc = "010") then s <= "00000100";  
			elsif (abc = "011") then s <= "00001000"; 
			elsif (abc = "100") then s <= "00010000"; 
			elsif (abc = "101") then s <= "00100000"; 
			elsif (abc = "110") then s <= "01000000"; 
			elsif (abc = "111") then s <= "10000000"; 
			end if;
		end process;
		
end architecture hardware ;
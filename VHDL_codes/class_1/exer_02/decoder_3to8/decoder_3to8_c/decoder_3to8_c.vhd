------------------------------------------------------------------
-- Decodder 3to8 bits
-- using when/else structure
-- authot: paulo cezar da paixao
------------------------------------------------------------------
--
-- a  b  c    s7 s6 S5 S4 S3 S2	S1 S0
-- 0  0  0    0  0  0  0  0  0  0  1
-- 0  0  1    0  0  0  0  0  0  1  0
-- 0  1  0    0  0  0  0  0  1  0  0
-- 0  1  1    0  0  0  0  1  0  0  0
-- 1  0  0    0  0  0  1  0  0  0  0
-- 1  0  1    0  0  1  0  0  0  0  0 
-- 1  1  0    0  1  0  0  0  0  0  0
-- 1  1  1    1  0  0  0  0  0  0  0
--
------------------------------------------------------------------
-- libraries and packages
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

------------------------------------------------------------------
-- entity declaration
entity decoder_3to8_c is 

	port(
		abc :  in  std_logic_vector(2 downto 0);
		s   :  out std_logic_vector(7 downto 0)
	);
		
end decoder_3to8_c;

------------------------------------------------------------------
-- architecture declaration
architecture hardware of decoder_3to8_c is

	begin 
	sel: process(abc)
		case sel is
			when abc = "000" => s <= "00000001";
			when abc = "001" => s <= "00000010";
			when abc = "010" => s <= "00000100";
			when abc = "011" => s <= "00001000";
			when abc = "100" => s <= "00010000";
			when abc = "101" => s <= "00100000";
			when abc = "110" => s <= "01000000";
			when abc = "111" => s <= "10000000";
		end case;
	end process sel;
end architecture hardware;
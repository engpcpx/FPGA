------------------------------------------------------------------
-- Decodder 3to8 bits
-- using when/else structure
-- authot: Paulo Cezar da Paixao
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
	mux_3to8_p : process(abc)
        begin
		case abc is
			when "000"  => s <= "00000001";
			when "001"  => s <= "00000010";
			when "010"  => s <= "00000100";
			when "011"  => s <= "00001000";
			when "100"  => s <= "00010000";
			when "101"  => s <= "00100000";
			when "110"  => s <= "01000000";
			when "111"  => s <= "10000000";
                        when others => s <= "00000000";
		end case;
	end process;
end architecture hardware;
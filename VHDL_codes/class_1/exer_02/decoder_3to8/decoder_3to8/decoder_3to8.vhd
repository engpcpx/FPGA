----------------------------------------------- 
-- decoder_3to8
-- author: Paulo Cezar da Paixao
--
-----------------------------------------------
-- libraries and packages
library ieee;
use ieee.std_logic_1164.all;
--
-----------------------------------------------
-- entity declaration
entity decoder_3to8 is

	port(
		a,b,c			: in	bit;
		s0,s1,s2,s3,s4,s5,s6,s7 : out	bit
	);
	
end decoder_3to8;	

-----------------------------------------------
-- architecture declaration
architecture hardware of decoder_3to8 is

begin
	
	s0 <= not a and not b and not c;
	s1 <= not a and not b and     c;
	s2 <= not a and     b and not c;
	s3 <= not a and     b and     c;
	s4 <=     a and not b and not c;
	s5 <=     a and not b and     c;
   	s6 <=     a and     b and not c;
   	s7 <=     a and     b and     c; 

end architecture hardware;	
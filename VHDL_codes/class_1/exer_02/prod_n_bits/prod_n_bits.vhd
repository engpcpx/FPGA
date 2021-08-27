-- prod n bits
-- product n bits
-- author: Paulo Cezar da Paixao

---------------------------------------------------------------------------------
-- libraries and packages
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

---------------------------------------------------------------------------------
-- entity declaration
entity prod_n_bits is

	generic (n : positive := 12);
	
	port(
		a, b : 	in 	std_logic_vector(n-1 downto 0);
		prod :	out	std_logic_vector(2*n-1 downto 0)	
	);
end prod_n_bits;

---------------------------------------------------------------------------------
-- architecture declaration
architecture product of prod_n_bits is 

	begin
		prod <=	std_logic_vector( signed(a) * signed(b) );

end architecture product;
	
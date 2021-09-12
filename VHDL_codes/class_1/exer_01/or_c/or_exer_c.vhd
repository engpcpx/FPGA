-- Exer_c
-- OR redutor  with/select
-- author: paulo cezar da paixao

library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;

-- entity declaration
entity or_c is
	port(
		input_port	:	in	bit_vector(3 downto 0);
		output_port	:	out	bit
	);
end or_c;

-- architecture declaration
architecture circuit of or_c is


begin

	with input_port select
		output_port <=  '0' when "0000", 
	     	'1' when others;
		  
end architecture circuit;
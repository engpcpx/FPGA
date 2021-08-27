----------------------------------------------------------------------------------------
-- or_a gate
-- OR - when/else structure
-- author: paulo cezar da paixao
----------------------------------------------------------------------------------------
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;
----------------------------------------------------------------------------------------
-- entity declaration
entity or_a is
 port(
		input_port	:	in	std_logic_vector(3 downto 0);	
		output_port	:	out	std_logic						
	);
end or_a;
----------------------------------------------------------------------------------------
-- architecture
architecture circuit of or_a is


begin

	output_port <= 	'0' when input_port = "0000" else
	               	'1' when input_port = "0001" else
			'1' when input_port = "0010" else
			'1' when input_port = "0011" else
			'1' when input_port = "0100" else
			'1' when input_port = "0101" else
			'1' when input_port = "0110" else
			'1' when input_port = "0111" else
			'1' when input_port = "1000" else
			'1' when input_port = "1001" else
			'1' when input_port = "1010" else
			'1' when input_port = "1011" else
			'1' when input_port = "1100" else
			'1' when input_port = "1101" else
			'1' when input_port = "1110" else
			'1' when input_port = "1111" ;

end architecture circuit;
-- Example
-- OR REDUTOR. take all inputs end make or operation

-- libraries and packages
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;

-- entity declaration
entity or_exemplo is

	port(
		input_port	: 	in	std_logic_vector(3 downto 0);
		output_port	:	out	std_logic
	);
end or_exemplo;

-- architecture declaretion 
architecture behavioral of or_exemplo is


begin

	output_port <=  input_port(0) or input_port(1) or input_port(2) or input_port(3);

end behavioral;
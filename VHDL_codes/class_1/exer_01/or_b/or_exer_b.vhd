------------------------------------------------------------------------------------------ Exer or_b
-- OR REDUTOR process/case
-- author: paulo cezar da paixao
----------------------------------------------------------------------------------------
-- librarie and package
library IEEE;
	use IEEE.std_logic_1164.all;
	--use IEEE.numeric_std.all;
	--use std.textio.all;
	--use ieee.numeric_std.all;
----------------------------------------------------------------------------------------
-- entiry declaration
entity or_b is
	port(
		input_port  : in  bit_vector(3 downto 0);
		output_port : out bit
	);
end or_b;
----------------------------------------------------------------------------------------
-- architecture declaration
architecture circuit of or_b is

begin
   states: process (input_port)
	begin
		case input_port is
			when "0000" => output_port <= '0';
	               	when "0001" => output_port <= '1';
			when "0010" => output_port <= '1';
			when "0011" => output_port <= '1';
			when "0100" => output_port <= '1';
			when "0101" => output_port <= '1';
			when "0110" => output_port <= '1';
			when "0111" => output_port <= '1';
			when "1000" => output_port <= '1';
			when "1001" => output_port <= '1';
			when "1010" => output_port <= '1';
			when "1011" => output_port <= '1';
			when "1100" => output_port <= '1';
			when "1101" => output_port <= '1';
			when "1110" => output_port <= '1';
			when "1111" => output_port <= '1';						
		 end case;
	end process states;

end architecture circuit;

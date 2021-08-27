--------------------------------------------------------
-- or_exemplo_tb
-- author: Paulo Cezar da Paixao

--------------------------------------------------------
-- testbench declaration
entity or_exemplo2_tb is end entity;

--------------------------------------------------------
-- libraries
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------------------------
-- architecture declaration
architecture testbench of or_exemplo2_tb is

	component or_exemplo
	   port(
		input_port  : 	in   std_logic_vector(3 downto 0);
		output_port :	out  std_logic
	);
	end component;

	-- signal to connection
	signal input_tb  : std_logic_vector(3 downto 0);
	signal output_tb : std_logic;

        -- 
	begin
            -- instance and mapping component
	    or_in : or_exemplo port map(input_port => input_tb, output_port => output_tb);
	
	or_p : process
	begin
		wait for 10 ns; input_tb <= "0000";
		wait for 10 ns; input_tb <= "0001";
		wait for 10 ns; input_tb <= "0010";
		wait for 10 ns; input_tb <= "0011";
		wait for 10 ns; input_tb <= "0100";
		wait for 10 ns; input_tb <= "0101";
		wait for 10 ns; input_tb <= "0110";
		wait for 10 ns; input_tb <= "0111";
		wait for 10 ns; input_tb <= "1000";
		wait for 10 ns; input_tb <= "1001";
		wait for 10 ns; input_tb <= "1010";
		wait for 10 ns; input_tb <= "1011";
		wait for 10 ns; input_tb <= "1100";
		wait for 10 ns; input_tb <= "1101";
		wait for 10 ns; input_tb <= "1110";
		wait for 10 ns; input_tb <= "1111";
	end process;

end architecture;
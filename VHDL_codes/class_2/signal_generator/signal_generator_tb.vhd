----------------------------------------------------------
-- asynchronous signal generator
-- author Paulo Cezar da Paixao
----------------------------------------------------------
-- libraries
library ieee;
use ieee.std_logic_1164.all;

----------------------------------------------------------
-- entity testbench
entity signal_generator_tb is
end signal_generator_tb;

----------------------------------------------------------
-- architecture
architecture circuit of signal_generator_tb is
 
  signal a   : std_logic_vector(7 downto 0) := "ZZZZZZZZ"; 
  signal b   : std_logic_vector(7 downto 0) := "00000000";
  signal c   : std_logic_vector(7 downto 0) := "10100100";
  signal d   : std_logic_vector(7 downto 0) := "ZZZZZZZZ"; 
  signal gen : std_logic_vector(7 downto 0) ;

begin
 
  process
  begin
    	wait for 10 ns;
      	gen <= a;
	wait for 30 ns;
	gen <= b;
	wait for 50 ns;
	gen <= c;
	wait for 90 ns;
	gen <= d;
  end process;

end architecture circuit;

---------------------------------------------------------------------
-- decoder 3to8_c testbench
-- author: Paulo Cezar da Paixao
--
---------------------------------------------------------------------
-- libraries and packages
library ieee;
use ieee.std_logic_1164.all;

---------------------------------------------------------------------
-- entity declaration
entity decoder_3to8_c_tb is end entity;
---------------------------------------------------------------------
-- architectures declaration
architecture testbench of decoder_3to8_c_tb is

   -- decoder 3to8 component
   component decoder_3to8_c
   port (
	abc :  in  std_logic_vector(2 downto 0);
        s   :  out std_logic_vector(7 downto 0)
   );
   end component;

   -- set signal to connection
   signal abc_tb : std_logic_vector(2 downto 0);
   signal s_tb   : std_logic_vector(7 downto 0);

   begin
	-- instance and mapping componnet
        dec_3to8 :  decoder_3to8_c port map(abc => abc_tb, s => s_tb);
	
	dec_3to8_p : process
	begin
		wait for 10 ns; abc_tb <= "000";
		wait for 10 ns; abc_tb <= "001";
		wait for 10 ns; abc_tb <= "010";
		wait for 10 ns; abc_tb <= "011";
		wait for 10 ns; abc_tb <= "100";
		wait for 10 ns; abc_tb <= "101";
		wait for 10 ns; abc_tb <= "110";
		wait for 10 ns; abc_tb <= "111";
	end process;
end architecture;

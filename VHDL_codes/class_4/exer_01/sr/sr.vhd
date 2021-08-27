-- exer_01 - shift register 
-- author: Paulo Cezar da Paixao
----------------------------------------------
library ieee;
use ieee.std_logic_1164.all; 

----------------------------------------------
-- entity declaration
entity sr is

port(
	clk   : in std_logic;
	rst   : in std_logic;
        d     : in std_logic;
        q     : out std_logic_vector(3 downto 0)
     );

end entity;
----------------------------------------------
-- architecture declaration
architecture circuit of sr is
 	
	-- signal declaration
	signal qs : std_logic_vector(3 downto 0);

begin
	sr_p : process(clk, rst)
	begin
              if (rising_edge(clk) and rst ='1') then
                  qs <= (others => '0');
              end if;

              if (rising_edge(clk)) then 
                  qs(0) <= d;
                  qs(1) <= qs(0);
                  qs(2) <= qs(1);
                  qs(3) <= qs(2);	
              end if;

               -- output 
               q <= qs;
    
 	end process; 

end architecture circuit;

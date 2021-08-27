----------------------------------------------------------------
-- fifo memory
-- author: Paulo Cezar da Paixao
--
--         	0  1  2  3  4        n
--		    +--+--+--+--+--+   +--+
--     	  0 |  |  |  |  |  |   |  | <== [write pointer]
--        	+--+--+--+--+--+   +--+
--	      1 |  |  |  |  |  |   |  |
--   FIFO	+--+--+--+--+--+   +--+
--		
--          +--+--+--+--+--+   +--+
--        m |  |  |  |  |  |   |  | <== [read pointer]
--		    +--+--+--+--+--+   +--+
--
--
--
----------------------------------------------------------------
-- libraries and packages
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

----------------------------------------------------------------
-- entity
entity fifo is
 
 generic(
           n: integer  := 6;     -- width memory size 
           m: positive := 15     -- deep memory size  
        );               
 port(
        clk_i  : in std_logic;                      -- clock pulse
        enb_i  : in std_logic;			            -- enable fifo memory
        rst_i  : in std_logic;			            -- reset fifo memory
        we_i   : in std_logic;			            -- write enable
        data_i : in std_logic_vector(n downto 0);   -- input data bus  
        data_o : out std_logic_vector(n downto 0);  -- output data bus
        wrn_o  : out std_logic                      -- warning state memory
     );
end entity;
----------------------------------------------------------------
-- architecture
architecture hardware of fifo is

-- write and read pointers
signal wrptr_s  : std_logic_vector(n downto 0);
signal rdptr_s  : std_logic_vector(n downto 0);

-- set memory fifo type
type fifo_t is array(m downto 0) of std_logic_vector(n downto 0);
signal mem_s : fifo_t;

-- 
begin
process(clk_i, rst_i)
begin
    if rst_i= '1' then   -- reset fifo
         wrptr_s <= "0000";
         rdptr_s <= "0000";
	    wrn_o <= '0';

        elsif (clk_i'event and clk_i = '1') then 
            if (enb_i='1') then
                if (we_i = '1') then  -- write enable
                    if (wrptr_s < "1111") then
                        mem_s(conv_integer(wrptr_s)) <= data_i;
                        wrptr_s <= wrptr_s + 1;              
		            else
     		            wrn_o <= '1'; -- full memory warning             
		        end if;
            else -- read memory
	            if(rdptr_s < wrptr_s) then
		            wrn_o <= '0';
                    data_o <= mem_s(conv_integer(rdptr_s));
                    rdptr_s <= rdptr_s + 1;
                else
                    wrn_o <= '1';     -- empty memory warning
                end if;
            end if;
        end if;
    end if;
end process;
end hardware;
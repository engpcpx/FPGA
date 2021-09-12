------------------------------------------------------------------------------
-- ram 1 (Random Access Mamory)
-- author: Paulo Cezar da Paixao
-- 
------------------------------------------------------------------------------
-- libraries and packages
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
------------------------------------------------------------------------------
-- entity
entity ram is
  
   generic(mwidth  : integer:= 16;      -- memory width
	   mdepth  : integer:= 16);     -- memory depth 

   port (
         clk	    : in  std_logic;			         -- clock pulse   
         rst        : in  std_logic;                             -- reset memory
         we         : in  std_logic;      		         -- wre: write read enable 
         addr       : in  std_logic_vector(mdepth-1 downto 0);   -- address memory	
	 data_in    : in  std_logic_vector(mwidth-1 downto 0);   -- input data
         data_out   : out std_logic_vector(mwidth-1 downto 0));  -- output data
end entity;
------------------------------------------------------------------------------
-- architecture
architecture hardware of ram is

  -- type declaration
  type ram_type is array (mwidth-1 downto 0) of std_logic_vector(mdepth-1 downto 0);

  -- signal declaration
  signal ram : ram_type;
  begin
     -- reset memory    
     ram_p : process(clk)
     begin     
            -- clock enable
           if (clk'event and clk='1') then 
         
               -- reset memory  
               if (rst= '1') then	   		 						
	           ram(to_integer(unsigned(addr))) <= (others=> '0');
               end if; 

               --write to memory
	       if (we = '1') then	 	
                   ram(to_integer(unsigned(addr))) <= data_in; 
               end if;
  		
               -- read memory
	       if (rising_edge(clk) and we = '0') then	
	           data_out <= ram(to_integer(unsigned(addr)));
               end if; 
		
	   end if;

     end process;
end hardware;

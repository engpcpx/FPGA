----------------------------------------------------------------------------------------
-- ram 2 (Random Access Mamory)
-- author: Paulo Cezar da Paixao 
----------------------------------------------------------------------------------------
-- libraries and packages
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
----------------------------------------------------------------------------------------
-- entity
entity ram_2 is


   generic(	width :	integer:=  8;                                   -- memory width
		      depth :  integer:=8;                                     -- memory depth 
		      addr  :	integer:=2);                                    -- address width

   port (
            clk	   : in  std_logic;				                     -- clock pulse    
            rst      : in  std_logic;                      	         -- reset memory
            wre      : in  std_logic;      			                  -- write read enable 
            address  : in  std_logic_vector(addr-1 downto 0); 	      -- address memory	
	         iodata   : inout  std_logic_vector(width-1 downto 0));	-- input data
end entity;
----------------------------------------------------------------------------------------
-- architecture
architecture hardware of ram_2 is

  -- type declaration
  type ram_type is array (0 to depth-1) of std_logic_vector(width-1 downto 0);

  -- signal declaration
  signal ram : ram_type;
 
  begin
     -- reset memory    
     process(clk,rst,wre)
     begin  
    
	if (clk'event and clk='1') then     
	   
	   -- reset memory
	   if (rst = '1') then							
	      ram(to_integer(unsigned(address))) <= (others=>'Z');		 

	   -- write to memory
	   elsif (wre = '1') then	 	
              ram(to_integer(unsigned(address))) <= iodata;   		
     
           -- read memory
	   elsif(wre = '0') then	
	       iodata <= ram(to_integer(unsigned(address))); 		
	   end if;

	end if;

     end process;

end hardware;

----------------------------------------------------------------------------------------
-- ram 3 (Random Access Mamory)
-- author: Paulo Cezar da Paixao
----------------------------------------------------------------------------------------
--   port control
--   crtl action
--   ---  -------
--   000  reset
--   001  address 
--   010  info 
--   011  write
--   100  read 
--   101    
--   110    
--   111    
  
----------------------------------------------------------------------------------------
-- libraries and packages
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
----------------------------------------------------------------------------------------
-- entity
entity ram_3 is

   generic(width : integer:= 4); 			                -- data width
   
   port (
            clk	    : in std_logic;			       	            -- clock pulse 
	        crtl	: in std_logic_vector(2 downto 0);          -- control word    
	        data    : inout std_logic_vector(width-1 downto 0)  -- data input
        );
end entity;

----------------------------------------------------------------------------------------
-- architecture
architecture hardware of ram_3 is

  -- types declaration
  type ram_type is array (0 to width-1) of std_logic_vector(width-1 downto 0);

  -- signals declaration
  signal ram     : ram_type;
  signal address : std_logic_vector(width-1 downto 0); 
  signal info    : std_logic_vector(width-1 downto 0); 

  -- concurrent actions
  begin
     -- reset memory    
     process(clk)
     begin

        -- pre-condition
        if (clk'event and clk = '1') then

        -- reset memory
        if (crtl = "000") then 
		    ram(to_integer(unsigned(address))) <= (others=>'Z');		 
	    end if;

	    -- set address memory
	    if (crtl = "001") then 
		    address <= data;  		
        end if;

            -- info data 
	    if (crtl = "010") then 
		    info <= data; 		
	    end if;

        -- write data memory
	    if (crtl = "011") then 
		    ram(to_integer(unsigned(address))) <= info; 	 		
	    end if;

            -- read data memory
	    if (crtl = "100") then 
		    data <= ram(to_integer(unsigned(address))); 		
	    end if;

	end if; 

     end process;

end hardware;

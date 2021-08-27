--------------------------------------------------------------------------------------
-- shift register using while/loop
-- author: Paulo Cezar da Paixao
--------------------------------------------------------------------------------------
-- libraries and packages
library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
--------------------------------------------------------------------------------------
-- entity declaration
entity shift_register_2 is

    -- set size register
	generic (n : integer := 16);	
        
   	port(
			clk 		: in std_logic;							-- clock
			rst 		: in std_logic;							-- reset
			inData		: in std_logic;							-- input data
			outData 	: out std_logic_vector(n-1 downto 0)	-- output data
      	);
end entity;
--------------------------------------------------------------------------------------
-- architecture declaration
architecture circuit of shift_register_2 is

	-- signals and vars
 	signal regData : std_logic_vector(n-1 downto 0);  	-- register data
begin
        			
        -- process
	sr_p : process(clk)				 					-- sensibility list
               
	       variable i : integer;	         			-- set index
	
	begin     
            if (clk'event and clk = '1') then   

                -- reset registers
                if (rst = '1') then
	            	outData <= (others => '0');                
                else  
                    -- load registers
                    i := 1;                             -- initialize index
	            	while (i < (n-1)) loop		 		-- start loop 
	    	          	regData(0) <= inData;		 	-- update first register
		          		regData(i) <= regData(i-1);	 	-- update other registers
                        outData(i) <= regData(i);	 	-- output update
                        i := i + 1;			 			-- index increment
	            end loop;				 				-- end loop                   
                    outData <= regData;                 -- output update
                end if;
            end if;          
 	end process; 
end architecture circuit;
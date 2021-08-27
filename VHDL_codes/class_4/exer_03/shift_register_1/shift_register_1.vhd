-- shift register using for/loop
-- author: Paulo Cezar da Paixao
----------------------------------------------
library ieee;
use ieee.std_logic_1164.all; 

--------------------------------------------------------------------------------------
-- entity declaration
entity shift_register_1 is
        -- set size register
	generic (n : integer:= 16);	                      -- shift register set size
port(
	clk 		: in std_logic;		              -- clock
	rst 		: in std_logic;		              -- reset
	inData		: in std_logic;		              -- input data
	outData 	: out std_logic_vector(n-1 downto 0)  -- output data
    );
end shift_register_1;
--------------------------------------------------------------------------------------
-- architecture declaration
architecture circuit of shift_register_1 is

	-- registers
 	signal regData : std_logic_vector(n-1 downto 0);

begin
	
	sr_p : process(clk,rst)				-- sensibility list
	begin

             if (clk'event and clk = '1') then
                -- reset registers
                if rst = '1' then
                   outData <= (others => '0'); 
                else
                   -- load registers
                   
	           for i in (n-1) downto 1 loop		-- start loop 
                      	regData(0) <= inData;           -- update first register
			regData(i) <= regData(i-1);	-- update other registers
                      	outData(i) <= regData(i);
	           end loop;
                end if;
	    end if;	

            -- update output
	    outData <= regData;

 	end process; 	

end architecture circuit;

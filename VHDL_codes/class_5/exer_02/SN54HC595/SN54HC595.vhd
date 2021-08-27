--------------------------------------------------------------------------------------------- 
-- SN54HC595 - shift register 
-- author: Paulo Cezar da Paixao
---------------------------------------------------------------------------------------------
--  SN54HC595 - INPUTS
--  SER SRCLK SRCLR RCLK OE	 FUNCTION
--  -----------------------      ------------------------------------------------------------
--   X    X    X    X    H       Outputs QA to QH are disabled.
--
--   X    X    X    X    L       Outputs QA to QH are enabled.
--
--   X    X    L    X    X       Shift register is cleared
--
--   L    ?    H    X    X       First stage of the shift register goes low.  
--                               Other stages store the data of previous stage, respectively.
--
--   H    ?    H    X    X       First stage of the shift register goes high.  
--                               Other stages store the data of previous stage, respectively.
--
--   X    X    X    ?    X       Shift-register data is stored in the storage register
--
---------------------------------------------------------------------------------------------
-- library and packages
library ieee;
    use ieee.std_logic_1164.all; 
    use ieee.numeric_std.all;
---------------------------------------------------------------------------------------------
-- entity declaration
entity SN54HC595_tb is

port(
        ser   : in std_logic;				-- serial input
	srclk : in std_logic;				-- storage register clock
        srclr : in std_logic;				-- storage register clear
        rclk  : in std_logic;				-- storage register clock
	oe    : in std_logic;				-- output enable
	q     : out std_logic_vector(7 downto 0);	-- parallel out shift register
        qs    : out std_logic			        -- serial output
     );

end entity;
---------------------------------------------------------------------------------------------
-- architecture declaration
architecture testbench of SN54HC595_tb is
 	
	-- signal declaration
	signal q_s       : std_logic_vector(7 downto 0);
	signal indata_s  : std_logic;


begin
	SN54HC595_p : process(srclk, srclr, rclk, oe)
	BEGIN
                      
              -- Shift register is cleared.
              if (srclr = '0') then
		 q <= (others => '0');
                 qs <= '0';
	      end if;

	      -- First stage of the shift register goes low
	      -- Other stages store the data of previous stage, respectively.
              if (ser = '0' and rising_edge(srclk) and srclr ='1') then
		  indata_s <= '0';
              end if;

	      -- First stage of the shift register goes high.
              -- Other stages store the data of previous stage, respectively.
              if (ser = '1' and rising_edge(srclk) and srclr ='1') then
		  indata_s <= '1';    
              end if;

              -- enable shiftting ioutput nput data
              if  (oe = '1') then 
              	  for i in 7 downto 1 loop	-- start loop 
                      	q_s(0) <= indata_s;     -- update first register
			q_s(i) <= q_s(i-1);	-- update other registers
                      	
                        -- Outputs Q0 ? Q7 are disabled.
                        q(i) <= q_s(i);         -- parallel output 
                        qs   <= q_s(7);         -- serial output                    
	         end loop;
              end if;            
 	end process; 

end architecture testbench;

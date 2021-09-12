--------------------------------------------------------------------------------------------- 
-- SN54HC595 - shift register 
-- author: Paulo Cezar da Paixao
---------------------------------------------------------------------------------------------
-- libraries and packages
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;
---------------------------------------------------------------------------------------------
-- entity declaration
entity SN54HC595_tb is end entity;

---------------------------------------------------------------------------------------------
--architecture declaration
architecture testbench of SN54HC595_tb is
	
	-- component declaration
	component SN54HC595_dut
  	port(
		ser   : in std_logic;				-- serial input
		srclk : in std_logic;	        		-- storage register clock
        	srclr : in std_logic;				-- storage register clear
        	rclk  : in std_logic;       			-- register clock
		oe    : in std_logic;				-- output enable
		q     : out std_logic_vector(7 downto 0);	-- parallel out shift register
        	qs    : out std_logic			        -- serial output
      	    );
        end component;

	-- signals to dut			
	signal srclk_s : std_logic := '0';				
        signal srclr_s : std_logic := '1';				
        signal rclk_s  : std_logic := '1';	
	signal ser_s   : std_logic := '1';		
	signal oe_s    : std_logic := '0';				
	signal q_s     : std_logic_vector(7 downto 0);	
        signal qs_s    : std_logic;		

	-- concurrent actions  
        begin
        	-- instance and mapping
        	dut_u : SN54HC595_dut port map( ser => ser_s,
				        	srclk => srclk_s,
				        	srclr => srclr_s,
				        	rclk => rclk_s,                   	
				        	oe => oe_s,
				        	q => q_s,
				        	qs => qs_s
				      	       );

		-- serial register stimulus
                ser_s <= not ser_s after 180 ns;	

		-- storage clock
                srclk_s <= not srclk_s after 10 ns;

                -- register clock
                rclk_s <= not rclk_s after 10 ns;

		-- output enable
		oe_s <= '0', '1' after 10 ns;
		
                -- process testbench-
                --dut_p : process
                --begin
                --end process

end architecture testbench;				
		
		
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

-- Counter
entity shiftregister is
    port (
        CLK_in      : in std_logic;
		stop		: in std_logic;
        led         : out std_logic_vector(15 downto 0)
    );
end shiftregister;

architecture rtl of shiftregister is

    signal iCounter : unsigned(24 downto 0);
    signal shiftregister : std_logic_vector(15 downto 0);
	
	signal clk      : std_logic;
	signal locked   : std_logic;
	signal rst      : std_logic;
	signal enable   : std_logic;
	
	component counterclk IS
	PORT
		(
			areset		: IN STD_LOGIC  := '0';
			inclk0		: IN STD_LOGIC  := '0';
			c0		    : OUT STD_LOGIC ;
			locked		: OUT STD_LOGIC 
		);
	END component counterclk;
	
begin

	u_ck : counterclk
	PORT map
		(
			areset		=> '0',
			inclk0		=> clk_in,
			c0		    => clk,
			locked		=> locked
		);
		
	RST <= not locked;
	
    -- Counter process
    COUNT_SHIFT: process (RST, CLK)
    begin
        if (RST = '1') then
            iCounter <= (others => '0');
			shiftregister <= x"0001";
			
        elsif (CLK'event and CLK='1') then   
        
            if stop = '0' then else
				iCounter <= iCounter + 1;
            end if;
			
			if iCounter = 0 then
				enable <= '1';
			else
				enable <= '0';
			end if;
			
			if enable = '1' then
				shiftregister <= shiftregister(0) & shiftregister(15 downto 1);
			end if;
			
        end if;
    end process;
	
	led <= shiftregister;

end rtl;


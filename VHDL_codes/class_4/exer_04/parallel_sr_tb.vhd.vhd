------------------------------------------------------------------------------
-- parallel_sr_tb (parallel shift register testbench)
-- author: Paulo Cezar da Paixao
------------------------------------------------------------------------------
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;
------------------------------------------------------------------------------
-- entity
entity parallel_sr_tb is 
	
        -- set size register
	generic (n : integer := 16);  

end entity;
------------------------------------------------------------------------------
-- architecture
architecture behavioral of parallel_sr_tb is

     -- component declaration
	component dut
  	port(
		clk 	: in std_logic;
                rst 	: in std_logic;
		en  	: in std_logic;
		force_0 : in std_logic;
                force_1 : in std_logic;
                direction : in std_logic;
		parallel_load : in std_logic;
		parallel_data      : in  std_logic_vector(n-1 downto 0);
		shift_register_in  : in  std_logic;
                shift_register_out : out std_logic_vector(n-1 downto 0)
      	    );
        end component;

	------------------------------------------------------------------------------
	signal clock             : std_logic := '0';
        signal reset         : std_logic := '0';
	signal estimulo_vector   : std_logic_vector(n-1 downto 0) := x"A4B2";
	signal estimulo          : std_logic;
	
	----------------------------------------------------------------
        -- signals declaration
        signal outData_s : std_logic_vector(n-1 downto 0);
		signal en_s  	 : std_logic;
		signal force_0_s : std_logic;
        signal force_1_s : std_logic;
        signal direction_s : std_logic;
		signal parallel_load_s : std_logic;
		signal shift_register_in_s  : std_logic;
        signal shift_register_out_s : std_logic_vector(n-1 downto 0);

		-- 
        begin
        	-- instance and mapping
        	dut_u : dut port map(	clk => clock,
				     				rst => reset,
			             			en  => en_s,
		                     		force_0 => force_0_s,
                	             	force_1 => force_1_s,
                	             	direction => direction_s,
				     				parallel_load => parallel_load_s,
				     				parallel_data => estimulo_vector,
			             			shift_register_in => shift_register_in_s,
				     				shift_register_out => shift_register_out_s);                   

	------------------------------------------------------------------------------
	-- stimulus
	estimulo_vector <= estimulo_vector(14 downto 0) & estimulo_vector(05) when rising_edge(clock);
	estimulo        <= estimulo_vector(15);

	------------------------------------------------------------------------------
	
	-- clock signal generator
	clock <= not clock after 10 ns;	

	-- reset 
	reset <= '1', '0' after 50 ns;

	--  
	en_s <= '1', '0' after 100 ns;
	force_0_s <= '1', '0' after 200 ns;
	force_1_s <= '1', '0' after 200 ns;
	direction_s <= '1', '0' after 200 ns;
	parallel_load_s <= '1', '0' after 200 ns;
        
end behavioral;				
		
		
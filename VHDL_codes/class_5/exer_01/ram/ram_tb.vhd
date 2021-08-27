-- ram testbench
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;

--declaramos a entidade
entity ram_tb is

      generic( 	mwidth  : integer:= 16;   	-- memory width
	       		mdepth  : integer:= 16);   	-- memory depth 

end entity;

--a arquitetura
architecture behavioral of ram_tb is

    --colocar o componente da RAM aqui.
    component ram_1 is
        port (
         		clk	 		: in  std_logic;			       				-- clock pulse   
         		rst       	: in  std_logic;                             	-- reset memory
         		we        	: in  std_logic;      		       				-- write read enable 
         		addr 	  	: in  std_logic_vector(mdepth-1 downto 0);   	-- address memory	
	 			data_in   	: in  std_logic_vector(mwidth-1 downto 0);   	-- input data
         		data_out  	: out std_logic_vector(mwidth-1 downto 0));  	-- output data
	 end component;

	
	-- declaracao de sinais 
        signal ram_clk       : std_logic := '0';			       
        signal ram_rst       : std_logic := '0';                            
        signal ram_we        : std_logic := '0';      		      
        signal ram_addr      : std_logic_vector(mdepth-1 downto 0);    
		signal ram_data_in   : std_logic_vector(mwidth-1 downto 0);   
        signal ram_data_out  : std_logic_vector(mwidth-1 downto 0); 

begin
	-- instanciação e conexao de componente
	ram_u : ram_1 port map(
			     			clk => ram_clk,			  
         		    		rst => ram_rst,                              
         		    		we  => ram_we,           		      
         		    		addr => ram_addr,	 
	 		     			data_in => ram_data_in, 
         		    		data_out => ram_data_out
						);

	--gerar sinal de relogio
    ram_clk <= not ram_clk after 10 ns;

    -- reset memoria
    ram_rst <= '1', '0' after 30 ns;

	-- process   
	process
	begin
        -- reset memory
        wait until rising_edge(ram_clk);
		ram_addr     <= (others=>'0');
		ram_data_in  <= (others=>'0');
        ram_we       <= '1', '0' after 10 ns;
 
        -- write memory (address: 0xADD0 data: 0xDAD0)
        wait until rising_edge(ram_clk);
		ram_addr     <= x"ADD0";
		ram_data_in  <= x"DAD0";
        wait until rising_edge(ram_clk);
        ram_we <= '1', '0' after 10 ns;
                
        -- write memory (address: 0xBB11 data: 0x125E)
        wait until rising_edge(ram_clk);
		ram_addr     <= x"BB11";
		ram_data_in  <= x"125E";
        wait until rising_edge(ram_clk);
        ram_we <= '1', '0' after 10 ns;

        -- write memory (address: 0xC40A data: 0xF12E)
        wait until rising_edge(ram_clk);
		ram_addr     <= x"C40A";
		ram_data_in  <= x"F12E";
        wait until rising_edge(ram_clk);
        ram_we <= '1', '0' after 10 ns;

    	-- read memory (address: 0xDAD0 )
        wait until rising_edge(ram_clk);
		ram_addr <= x"ADD0"; 
		wait for 10 ns;

		-- read memory (address: 0xBB11 )
        wait until rising_edge(ram_clk);
		ram_addr <= x"BB11";
		wait for 10 ns;

		-- read memory (address: 0xC40A )
        wait until rising_edge(ram_clk);
		ram_addr <= x"C40A";
		wait for 10 ns;

	end process;

end architecture behavioral;				
		
		
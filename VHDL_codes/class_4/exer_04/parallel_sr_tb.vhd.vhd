--Exemplo.
--Esse ser√° um OR REDUTOR. Ele pega todas as entradas e faz um OR entre todas.
--Exemplo que usar√° GENERIC e FOR.
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;

--declaramos a entidade
entity parallel_sr_tb is 
	
        -- set size register
	generic (n : integer := 16);  

end entity;

--a arquitetura
architecture behavioral of parallel_sr_tb is

	--colocar o componente do seu ShiftRegister aqui.
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

	------------------------N√O Mexer------------------------------
	signal clock             : std_logic := '0';
        signal reset             : std_logic := '0';
	signal estimulo_vector   : std_logic_vector(n-1 downto 0) := x"A4B2";
	signal estimulo          : std_logic;
	
	----------------------------Mexer-------------------------------

        -- sinal adicional
        signal outData_s : std_logic_vector(n-1 downto 0);
	signal en_s  	 : std_logic;
	signal force_0_s : std_logic;
        signal force_1_s : std_logic;
        signal direction_s : std_logic;
	signal parallel_load_s : std_logic;
	signal shift_register_in_s  : std_logic;
        signal shift_register_out_s : std_logic_vector(n-1 downto 0);

	--declarar sinais para ligar a entidade aqui 
        begin
        	-- instance and mapping
        	dut_u : dut port map(clk => clock,
				     rst => reset,
			             en  => en_s,
		                     force_0 => force_0_s,
                	             force_1 => force_1_s,
                	             direction => direction_s,
				     parallel_load => parallel_load_s,
				     parallel_data => estimulo_vector,
			             shift_register_in => shift_register_in_s,
				     shift_register_out => shift_register_out_s);                   


	------------------------N√O Mexer------------------------------
	--vamos criar um est√≠mulo. duas partes. uma, rodar o vetor e a outra gerar o sinal "estimulo"
	--que deve ser ligado ao shift register
	estimulo_vector <= estimulo_vector(14 downto 0) & estimulo_vector(05) when rising_edge(clock);
	estimulo        <= estimulo_vector(15);

	----------------------------Mexer------------------------------

	--gerar sinal de relogio chamado 'clock' aqui.
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
		
		
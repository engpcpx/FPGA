--Exemplo.
--Esse será um OR REDUTOR. Ele pega todas as entradas e faz um OR entre todas.
--Exemplo que usará GENERIC e FOR.
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;

--declaramos a entidade
entity shift_register_2_tb is 
	
        -- set size register
	generic (n : integer := 16);  

end shift_register_2_tb;

--a arquitetura
architecture behavioral of shift_register_2_tb is

	
	--colocar o componente do seu ShiftRegister aqui.
        -- component declaration
	component shift_register_2
  	port(
		clk 	 : in std_logic;			-- clock
		rst 	 : in std_logic;			-- reset
		inData	 : in std_logic;			-- input data
		outData  : out std_logic_vector(n-1 downto 0) 	-- output data
      	    );

        end component;

	------------------------Não Mexer------------------------------
	signal clock           : std_logic := '0';
        signal reset           : std_logic := '0';
	signal estimulo_vector : std_logic_vector(15 downto 0) := x"A4B2";
	signal estimulo        : std_logic;
	
	----------------------------Mexer-------------------------------

        -- sinal adicional
        signal outData_s : std_logic_vector(n-1 downto 0);

	--declarar sinais para ligar a entidade aqui 
        begin
        	-- instance and mapping
        	sr_u : shift_register_2 port map(clk => clock,
				   		 rst => reset,
				   		 inData => estimulo,
				   	  	 outData => outData_s);                   	

	------------------------Não Mexer------------------------------
	--vamos criar um estímulo. duas partes. uma, rodar o vetor e a outra gerar o sinal "estimulo"
	--que deve ser ligado ao shift register
	estimulo_vector <= estimulo_vector(14 downto 0) & estimulo_vector(15) when rising_edge(clock);
	estimulo        <= estimulo_vector(15);

	----------------------------Mexer------------------------------

	--gerar sinal de relogio chamado 'clock' aqui.
        clock <= not clock after 10 ns;	

        -- reset 
        reset <= '1', '0' after 10 ns;

end behavioral;				
		
		
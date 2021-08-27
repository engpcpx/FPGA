--Exemplo.
--Esse será um OR REDUTOR. Ele pega todas as entradas e faz um OR entre todas.
--Exemplo que usará GENERIC e FOR.
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;

--declaramos a entidade
entity sr_tb is end sr_tb;

--a arquitetura
architecture behavioral of sr_tb is

	
	--colocar o componente do seu ShiftRegister aqui.
        -- component declaration
	component sr
  	port(
		clk     : in std_logic;
		rst     : in std_logic;
        	d       : in std_logic;
        	q       : out std_logic_vector(3 downto 0)
      	    );

        end component;

	------------------------Não Mexer------------------------------
	signal clock           : std_logic := '0';
        signal reset           : std_logic := '0';
	signal estimulo_vector : std_logic_vector(15 downto 0) := x"A4B2";
	signal estimulo        : std_logic;
	
	----------------------------Mexer-------------------------------

        -- sinal adicional
	signal q_s : std_logic_vector(3 downto 0);

	--declarar sinais para ligar a entidade aqui 
        begin
        	-- instance and mapping
        	sr_u : sr port map(clk => clock,
				   rst => reset,
				   d => estimulo,
				   q => q_s);                   	

	------------------------Não Mexer------------------------------
	--vamos criar um estímulo. duas partes. uma, rodar o vetor e a outra gerar o sinal "estimulo"
	--que deve ser ligado ao shift register
	estimulo_vector <= estimulo_vector(14 downto 0) & estimulo_vector(15) when rising_edge(clock);
	estimulo        <= estimulo_vector(15);

	----------------------------Mexer------------------------------

	--gerar sinal de relogio chamado 'clock' aqui.
        clock <= not clock after 10 ns;	

        -- reset 
        reset <= '1', '0' after 40 ns;

end behavioral;				
		
		
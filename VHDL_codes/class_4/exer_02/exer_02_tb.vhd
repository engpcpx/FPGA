--Exemplo.
--Esse será um OR REDUTOR. Ele pega todas as entradas e faz um OR entre todas.
--Exemplo que usará GENERIC e FOR.
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.numeric_std.all;

--declaramos a entidade
entity exer_02_tb is end exer_02_tb;

--a arquitetura
architecture behavioral of exer_02_tb is

	
	--colocar o componente do seu ShiftRegister aqui.
        -- component declaration
	component u
  	port(
		clk  : in std_logic;
          	rst  : in std_logic;
          	en   : in std_logic;
          	d    : in std_logic;
          	q_a  : inout std_logic_vector(7 downto 0);
          	q_b  : inout std_logic_vector(7 downto 0);          
	  	q_c  : inout std_logic_vector(7 downto 0)
      	    );

        end component;

	------------------------Não Mexer------------------------------
	signal clock           : std_logic := '0';
        signal reset           : std_logic := '0';
	signal estimulo_vector : std_logic_vector(15 downto 0) := x"A4B2";
	signal estimulo        : std_logic;
	
	----------------------------Mexer-------------------------------
        -- sinais adicionais
        signal en_s   : std_logic := '0';
        signal d_s    : std_logic := '0';
        signal q_a_s  : std_logic_vector(7 downto 0);
        signal q_b_s  : std_logic_vector(7 downto 0);          
	signal q_c_s  : std_logic_vector(7 downto 0);

	--declarar sinais para ligar a entidade aqui 
        begin
        	-- instance and mapping
        	u_m :   u port map(clk => clock,
				   rst => reset,
				   d => d_s,
                                   en => en_s,
				   q_a => q_a_s,
				   q_b => q_b_s,
                                   q_c => q_c_s);                   	

	------------------------Não Mexer------------------------------
	--vamos criar um estímulo. duas partes. uma, rodar o vetor e a outra gerar o sinal "estimulo"
	--que deve ser ligado ao shift register
	estimulo_vector <= estimulo_vector(14 downto 0) & estimulo_vector(15) when rising_edge(clock);
	estimulo        <= estimulo_vector(15);

	----------------------------Mexer------------------------------

	--gerar sinal de relogio chamado 'clock' aqui.
        clock <= not clock after 10 ns;	

        -- sinal de comando  reset 
        reset <= '1', '0' after 10 ns;
  
        --
        p : process
        begin
        	wait until rising_edge(clock);
        	en_s <= '1';
        	d_s <= estimulo;


	end process;
end behavioral;				
		
		
LIBRARY IEEE;  
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

entity counterupdown is

    generic(n : integer := 29);
    port (
				i_clk				: in std_logic;
				i_counter_buttom	: in std_logic;
				i_load_key			: in std_logic;
				i_data_key			: in std_logic_vector(3 downto 0);
				i_sel_ud_down		: in std_logic;
				o_leds				: out std_logic_vector(3 downto 0)
			);
end entity;

architecture rtl of counterupdown is

	--o bloco de debounce está aqui porque ao apertar o botão, temos ruido.
	--avaliar o bloco de debounce.
	component debounce
		port(
				ck      : in  std_logic;
				deb_in  : in  std_logic;
				deb_out : out std_logic
			);
	end component;
	
	-- signals
	signal s_counter_buttom	: std_logic;
	signal s_counter  		: unsigned(28 downto 0);

begin

		deb_u : debounce
		port map(
					ck      => i_clk,
					deb_in  => i_counter_buttom,   --bloco de debounce, entrada
					deb_out => s_counter_buttom    --bloco de debounce, saída
				);
	
		-- counter process
		p_counter : process(i_clk)
		begin
			if i_clk'event and i_clk = '1' then
			
				if i_load_key= '0' then
				
					-- up counter
					if i_sel_ud_down= '1' and i_counter_buttom ='1' then
						s_counter <= s_counter+1;
						o_leds <= std_logic_vector(s_counter(s_counter'high downto s_counter'high-3));
					
					-- down counter
					elsif (i_sel_ud_down='0' and i_counter_buttom='1') then
						s_counter <= s_counter-1;
						o_leds <= std_logic_vector(s_counter(s_counter'high downto s_counter'high-3));
					end if;
												
				else
					-- load data
					o_leds <= i_data_key;
					
				end if;
				
			end if;
			
		end process;	

end rtl;
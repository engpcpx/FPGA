-- library and packages----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

----------------------------------------------------------------------------------
-- entiry declaration
entity exer_02 is
    port(       
          clk  : in std_logic;
          rst  : in std_logic;
          en   : in std_logic;
          d    : in std_logic;
          q_a  : inout std_logic_vector(7 downto 0);
          q_b  : inout std_logic_vector(7 downto 0);          
	  q_c  : inout std_logic_vector(7 downto 0)
     );
end entity;

-----------------------------------------------------------------------------------
-- archietcture declaration
architecture hardware of exer_02 is


begin

	p : process(clk, rst)
	begin
		if rst = '1' then
		   q_a <= x"0"; --x na frende do vetor é HEXA.
		   q_a <= (others=>'0'); --jeito de zerar algo sem saber tamanho.
		   q_c <= (others=>'0');
		elsif clk'event and clk = '1' then
		   if en = '1' then
		   --jeito 1
		      q_a(0) <= d;
		      q_a(7 downto 1) <= q_a(6 downto 0);
		      --jeito 2: apimentado. igual o jeito 1, mas com uma
		      --constante para o tamanho.
		      q_b(0) <= d;
		      q_b(q_b'high downto 1) <= q_b(q_a'high-1 downto 0);
		      --jeito 3
		      q_c <= q_c(q_c'high-2 downto 0) & d;
		   end if;
		end if;             
	end process;
end architecture;
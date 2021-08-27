----------------------------------------------------------------------------------------------------------- 
-- addSub_noSignal
-- full adder/subtractor  circuit
-- author: Paulo Cezar da Paixao
--
-----------------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

-----------------------------------------------------------------------------------------------------------
-- entity declaration
entity addsub_noSignal is

	-- set size adder/sub bus
	generic (n : positive:= 3);
		
port (   
	a, b	: in 	bit_vector(n-1 downto 0);	-- input values
	cin	: inout   bit_vector(n-1 downto 0);  	-- carry input 
	mode  	: in 	bit;				-- mode select (adder = 0, subtractor = 1)
	s	: out 	bit_vector(n-1 downto 0);	-- output values
	cout	: out	bit_vector(n-1 downto 0) 	-- carry out
);
	
end addsub_noSignal; 	

-----------------------------------------------------------------------------------------------------------
-- architecture declaration
architecture hardware of addsub_noSignal is

begin
 
	addsub	: process (a, b, mode)
		
		variable baux : bit_vector(n-1 downto 0);
		
		begin
			cin(0) <= '0';	

			for i in 0 to n-1 loop 	
								
				baux(i) := mode xor b(i);
				
				s(i) <= ( not a(i) and not baux(i) and cin(i) ) or 
					( not a(i) and baux(i) and not cin(i) ) or 
					( a(i) and not baux(i) and not cin(i) ) or
					( a(i) and baux(i) and cin(i)         );
				  
				cout(i) <= 	( not a(i) and baux(i) and cin(i) ) or 
						( a(i) and not baux(i) and cin(i) ) or 
						( a(i) and baux(i) and not cin(i) ) or		
						( a(i) and baux(i) and cin(i)     );
					
			end loop;
		
	end process addsub;
	
end hardware;


library ieee;
use ieee.std_logic_1164.all;

entity nor6 is 
    port(
		a: in std_logic_vector(5 downto 0); 
		nor6out: out std_logic
		);
end nor6;
architecture nor6 of nor6 is    
	
begin 
	nor6out <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5));
end nor6;
library ieee;
use ieee.std_logic_1164.all;

entity nor2 is 
    port(
		a: in std_logic_vector(1 downto 0); 
		nor2out: out std_logic
		);
end nor2;
architecture nor2 of nor2 is    
begin 
    nor2out<= not(a(0) or a(1));
end nor2;
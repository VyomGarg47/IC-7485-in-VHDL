library ieee;
use ieee.std_logic_1164.all;

entity and4 is 
    port(
		a: in std_logic_vector(3 downto 0); 
		and4out: out std_logic
		);
end and4;
architecture and4 of and4 is    
begin 
    and4out<= a(0) and a(1) and a(2) and a(3);
end and4;
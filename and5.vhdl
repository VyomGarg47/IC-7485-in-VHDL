library ieee;
use ieee.std_logic_1164.all;

entity and5 is 
    port(
		a: in std_logic_vector(4 downto 0); 
		and5out: out std_logic
		);
end and5;
architecture and5 of and5 is    
begin 
    and5out<= a(0) and a(1) and a(2) and a(3) and a(4);
end and5;
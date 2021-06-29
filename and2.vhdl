library ieee;
use ieee.std_logic_1164.all;

entity and2 is 
    port(
		a: in std_logic_vector(1 downto 0); 
		and2out: out std_logic
		);
end and2;
architecture and2 of and2 is    
begin 
    and2out<= a(0) and a(1);
end and2;
library ieee;
use ieee.std_logic_1164.all;

entity and3 is 
    port(
		a: in std_logic_vector(2 downto 0); 
		and3out: out std_logic
		);
end and3;
architecture and3 of and3 is    
begin 
    and3out<= a(0) and a(1) and a(2);
end and3;
library ieee;
use ieee.std_logic_1164.all;

entity nand2 is 
    port(
		a: in std_logic_vector(1 downto 0); 
		nand2out: out std_logic
		);
end nand2;
architecture nand2 of nand2 is    
begin 
    nand2out<= not(a(0) and a(1));
end nand2;
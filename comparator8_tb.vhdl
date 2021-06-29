library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity comparator8_tb is
end;

architecture comparator8_tb of comparator8_tb is
	component comparator8 is
		port
		(
			a,b: in std_logic_vector(7 downto 0);
			ogreater,oless,oequal: out std_logic
		);
		
	end component;
	signal a,b : std_logic_vector(7 downto 0);
	signal ogreater,oless,oequal : std_logic;
	
begin
	u: comparator8 port map
				(
				a => a,
				b => b,
				ogreater => ogreater,
				oless => oless,
				oequal => oequal
				);
	process begin
		a(0) <= '0';
		a(1) <= '0';
		a(2) <= '0';
		a(3) <= '0';
		a(4) <= '0';
		a(5) <= '0';
		a(6) <= '0';
		a(7) <= '0';
		
		b(0) <= '0';
		b(1) <= '0';
		b(2) <= '0';
		b(3) <= '0';
		b(4) <= '0';
		b(5) <= '0';
		b(6) <= '0';
		b(7) <= '0';
		wait for 1 ns;
		
		a(0) <= '1';
		a(1) <= '0';
		a(2) <= '0';
		a(3) <= '0';
		a(4) <= '0';
		a(5) <= '0';
		a(6) <= '0';
		a(7) <= '0';
		
		b(0) <= '0';
		b(1) <= '0';
		b(2) <= '0';
		b(3) <= '0';
		b(4) <= '0';
		b(5) <= '0';
		b(6) <= '0';
		b(7) <= '1';
		wait for 1 ns;
		
		a(0) <= '0';
		a(1) <= '0';
		a(2) <= '0';
		a(3) <= '0';
		a(4) <= '0';
		a(5) <= '0';
		a(6) <= '0';
		a(7) <= '1';
		
		b(0) <= '1';
		b(1) <= '0';
		b(2) <= '0';
		b(3) <= '0';
		b(4) <= '0';
		b(5) <= '0';
		b(6) <= '0';
		b(7) <= '0';
		wait for 1 ns;
		
		a(0) <= '1';
		a(1) <= '1';
		a(2) <= '1';
		a(3) <= '1';
		a(4) <= '1';
		a(5) <= '1';
		a(6) <= '1';
		a(7) <= '0';
		
		b(0) <= '0';
		b(1) <= '0';
		b(2) <= '0';
		b(3) <= '0';
		b(4) <= '0';
		b(5) <= '0';
		b(6) <= '0';
		b(7) <= '1';
		wait for 1 ns;
		
		assert false report "Reached end of test";
		wait;
	end process;
end comparator8_tb;
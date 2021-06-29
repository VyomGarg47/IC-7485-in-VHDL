library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity ic7485_tb is
end;

architecture ic7485_tb of ic7485_tb is
	component ic7485 is
		port
		(
			a,b: in std_logic_vector(3 downto 0);
			igreater,iless,iequal: in std_logic;
			ogreater,oless,oequal: out std_logic
		);
	end component;
	signal a,b: std_logic_vector(3 downto 0);
	signal igreater,iless,iequal: std_logic;
	signal ogreater,oless,oequal: std_logic;
	
begin
	u: ic7485 port map(
				a => a,
				b => b,
				igreater => igreater,
				iless => iless,
				iequal => iequal,
				ogreater => ogreater,
				oless => oless,
				oequal => oequal
					);
	process begin
		igreater <= '0';
		iequal <= '1';
		iless <= '0';
		
		a(0) <= '0';
		a(1) <= '0';
		a(2) <= '0';
		a(3) <= '0';
		
		b(0) <= '0';
		b(1) <= '0';
		b(2) <= '0';
		b(3) <= '0';
		wait for 1 ns;
		
		igreater <= '0';
		iequal <= '1';
		iless <= '0';
		
		a(0) <= '1';
		a(1) <= '1';
		a(2) <= '0';
		a(3) <= '0';
		
		b(0) <= '1';
		b(1) <= '0';
		b(2) <= '0';
		b(3) <= '0';
		wait for 1 ns;
		
		igreater <= '0';
		iequal <= '1';
		iless <= '0';
		
		a(0) <= '1';
		a(1) <= '0';
		a(2) <= '0';
		a(3) <= '0';
		
		b(0) <= '1';
		b(1) <= '1';
		b(2) <= '0';
		b(3) <= '0';
		wait for 1 ns;
		
		igreater <= '0';
		iequal <= '1';
		iless <= '0';
		
		a(0) <= '1';
		a(1) <= '0';
		a(2) <= '1';
		a(3) <= '1';
		
		b(0) <= '1';
		b(1) <= '0';
		b(2) <= '1';
		b(3) <= '1';
		wait for 1 ns;
		
		igreater <= '0';
		iequal <= '1';
		iless <= '0';
		
		a(0) <= '1';
		a(1) <= '0';
		a(2) <= '1';
		a(3) <= '1';
		
		b(0) <= '1';
		b(1) <= '1';
		b(2) <= '0';
		b(3) <= '0';
		wait for 1 ns;
		
		igreater <= '0';
		iequal <= '1';
		iless <= '0';
		
		a(0) <= '1';
		a(1) <= '1';
		a(2) <= '0';
		a(3) <= '0';
		
		b(0) <= '1';
		b(1) <= '0';
		b(2) <= '1';
		b(3) <= '1';
		wait for 1 ns;
		
		igreater <= '0';
		iequal <= '1';
		iless <= '0';
		
		a(0) <= '1';
		a(1) <= '0';
		a(2) <= '0';
		a(3) <= '0';
		
		b(0) <= '0';
		b(1) <= '0';
		b(2) <= '0';
		b(3) <= '1';
		wait for 1 ns;
		
		assert false report "Reached end of test";
		wait;
	end process;
end ic7485_tb;
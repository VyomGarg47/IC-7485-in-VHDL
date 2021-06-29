library ieee;
use ieee.std_logic_1164.all;

entity comparator8 is 
	port
	(
		a,b: in std_logic_vector(7 downto 0);
		ogreater,oless,oequal: out std_logic
	);

end comparator8;

architecture comparator8 of comparator8 is
	component ic7485 is
		port
		(
			a,b: in std_logic_vector(3 downto 0);
			igreater,iless,iequal: in std_logic;
			ogreater,oless,oequal: out std_logic
		);
	end component;
signal t1,t2,t3 : std_logic;
begin 
	u1: ic7485 port map 
				(
					a(0)=>a(0),
					a(1)=>a(1),
					a(2)=>a(2),
					a(3)=>a(3),
					b(0)=>b(0),
					b(1)=>b(1),
					b(2)=>b(2),
					b(3)=>b(3),
					igreater=>'0',
					iequal=>'1',
					iless=>'0',
					ogreater=>t1,
					oequal=>t2,
					oless=>t3
				);
				
	u2: ic7485 port map
				(
					a(0)=>a(4),
					a(1)=>a(5),
					a(2)=>a(6),
					a(3)=>a(7),
					b(0)=>b(4),
					b(1)=>b(5),
					b(2)=>b(6),
					b(3)=>b(7),
					igreater=>t1,
					iequal=>t2,
					iless=>t3,
					ogreater=>ogreater,
					oequal=>oequal,
					oless=>oless
				);
end comparator8;
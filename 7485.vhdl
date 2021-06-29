library ieee;
use ieee.std_logic_1164.all;

entity ic7485 is 
	port
	(
		a,b: in std_logic_vector(3 downto 0);
		igreater,iless,iequal: in std_logic;
		ogreater,oless,oequal: out std_logic
	);

end ic7485;

architecture behave of ic7485 is
	component nand2 is
		port
		(
			a: in std_logic_vector(1 downto 0);
			nand2out: out std_logic
		);
	end component;
	component and2 is
		port
		(
			a: in std_logic_vector(1 downto 0);
			and2out: out std_logic
		);
	end component;
	component nor2 is
		port
		(
			a: in std_logic_vector(1 downto 0);
			nor2out: out std_logic
		);
	end component;
	component and3 is
		port
		(
			a: in std_logic_vector(2 downto 0);
			and3out: out std_logic
		);
	end component;
	component and4 is
		port
		(
			a: in std_logic_vector(3 downto 0);
			and4out: out std_logic
		);
	end component;
	component and5 is
		port
		(
			a: in std_logic_vector(4 downto 0);
			and5out: out std_logic
		);
	end component;
	component nor6 is
		port
		(
			a: in std_logic_vector(5 downto 0);
			nor6out: out std_logic
		);
	end component;
signal t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23,t24,t25,t26,t27,t28: std_logic;
begin
	u1: nand2 port map (a(0)=>a(3),a(1)=>b(3),nand2out=>t1);
	u2: nand2 port map (a(0)=>a(2),a(1)=>b(2),nand2out=>t2);
	u3: nand2 port map (a(0)=>a(1),a(1)=>b(1),nand2out=>t3);
	u4: nand2 port map (a(0)=>a(0),a(1)=>b(0),nand2out=>t4);
	
	u5:  and2 port map (a(0)=>a(3),a(1)=>t1  , and2out=>t5);
	u6:  and2 port map (a(0)=>b(3),a(1)=>t1  , and2out=>t6);
	u7:  and2 port map (a(0)=>a(2),a(1)=>t2  , and2out=>t7);
	u8:  and2 port map (a(0)=>b(2),a(1)=>t2  , and2out=>t8);
	u9:  and2 port map (a(0)=>a(1),a(1)=>t3  , and2out=>t9);
	u10:  and2 port map (a(0)=>b(1),a(1)=>t3  , and2out=>t10);
	u11:  and2 port map (a(0)=>a(0),a(1)=>t4  , and2out=>t11);
	u12:  and2 port map (a(0)=>b(0),a(1)=>t4  , and2out=>t12);
	
	u13:  nor2 port map (a(0)=>t5,a(1)=>t6  , nor2out=>t13);
	u14:  nor2 port map (a(0)=>t7,a(1)=>t8  , nor2out=>t14);
	u15:  nor2 port map (a(0)=>t9,a(1)=>t10  , nor2out=>t15);
	u16:  nor2 port map (a(0)=>t11,a(1)=>t12  , nor2out=>t16);
	
	u17:  and2 port map (a(0)=>t1,a(1)=>b(3)  , and2out=>t17);
	u18:  and3 port map (a(0)=>b(2),a(1)=>t2,a(2)=>t13,and3out=>t18);
	u19:  and4 port map (a(0)=>b(1),a(1)=>t3,a(2)=>t13,a(3)=>t14,and4out=>t19);
	u20:  and5 port map (a(0)=>b(0),a(1)=>t4,a(2)=>t13,a(3)=>t14,a(4)=>t15,and5out=>t20);
	u21:  and5 port map (a(0)=>t13,a(1)=>t14,a(2)=>t15,a(3)=>t16,a(4)=>iless,and5out=>t21);
	u22:  and5 port map (a(0)=>t13,a(1)=>t14,a(2)=>t15,a(3)=>t16,a(4)=>iequal,and5out=>t22);
	u23:  and5 port map (a(0)=>t13,a(1)=>t14,a(2)=>t15,a(3)=>t16,a(4)=>iequal,and5out=>t23);
	u24:  and5 port map (a(0)=>t13,a(1)=>t14,a(2)=>t15,a(3)=>t16,a(4)=>igreater,and5out=>t24);
	u25:  and5 port map (a(0)=>t15,a(1)=>t14,a(2)=>t13,a(3)=>t4,a(4)=>a(0),and5out=>t25);
	u26:  and4 port map (a(0)=>a(1),a(1)=>t3,a(2)=>t13,a(3)=>t14,and4out=>t26);
	u27:  and3 port map (a(0)=>a(2),a(1)=>t2,a(2)=>t13,and3out=>t27);
	u28:  and2 port map (a(0)=>t1,a(1)=>a(3)  , and2out=>t28);
	
	u29:  nor6 port map (a(0)=>t17,a(1)=>t18,a(2)=>t19,a(3)=>t20,a(4)=>t21,a(5)=>t22,nor6out=>ogreater);
	u30:  and5 port map (a(0)=>t15,a(1)=>t14,a(2)=>t13,a(3)=>t16,a(4)=>iequal,and5out=>oequal);
	u31:  nor6 port map (a(0)=>t23,a(1)=>t24,a(2)=>t25,a(3)=>t26,a(4)=>t27,a(5)=>t28,nor6out=>oless);

end behave;
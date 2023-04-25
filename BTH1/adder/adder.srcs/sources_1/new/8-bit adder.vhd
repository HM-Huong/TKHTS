library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity a_8bit_adder is
	Port ( 
		a, b: in STD_LOGIC_VECTOR (7 downto 0);
		cin: in std_logic;
		s: out STD_LOGIC_VECTOR (7 downto 0);
		cout: out std_logic
	);
end a_8bit_adder;

architecture Behavioral of a_8bit_adder is
	signal tmp: std_logic;
	component adder_4bit is 
		port (
			cin: in std_logic;
		    a, b: in std_logic_vector(3 downto 0);
		    s: out std_logic_vector(3 downto 0);
		    cout: out std_logic
		);
	end component;
begin
	a4_1: adder_4bit port map(
	   cin => cin,
	   a => a(3 downto 0),
	   b => b(3 downto 0),
	   s => s(3 downto 0),
	   cout => tmp
	);
	a4_2: adder_4bit port map(
	   cin => tmp,
	   a => a(7 downto 4),
	   b => b(7 downto 4),
	   s => s(7 downto 4),
	   cout => cout
	);
	
end Behavioral;

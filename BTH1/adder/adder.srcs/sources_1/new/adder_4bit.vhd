library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_4bit is
	port (
		cin: in std_logic;
		a, b: in std_logic_vector(3 downto 0);
		s: out std_logic_vector(3 downto 0);
		cout: out std_logic
	);
end adder_4bit;

architecture Behavioral of adder_4bit is
    signal tmp: std_logic_vector(2 downto 0);
    component full_adder is 
    port (
        a, b, cin: in STD_LOGIC;
        s, cout: out STD_LOGIC
    );
    end component;
begin
    fa0: full_adder port map(
        a => a(0),
		b => b(0),
		cin => cin,
		s => s(0),
		cout => tmp(0)
    );
    
    fa1: full_adder port map (
		a => a(1),
		b => b(1),
		cin => tmp(0),
		s => s(1),
		cout => tmp(1)
	);

	fa2: full_adder port map (
		a => a(2),
		b => b(2),
		cin => tmp(1),
		s => s(2),
		cout => tmp(2)
	);

	fa3: full_adder port map (
		a => a(3),
		b => b(3),
		cin => tmp(2),
		s => s(3),
		cout => cout
	);
	
end Behavioral;

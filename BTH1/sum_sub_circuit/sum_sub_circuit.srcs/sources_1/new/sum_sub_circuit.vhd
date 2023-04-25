library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sum_sub_circuit is
	port (
		signal a, b, cin, sub: in std_logic;
		signal s, cout: out std_logic
	);
end sum_sub_circuit;

architecture Behavioral of sum_sub_circuit is
begin
	s <= a xor b xor cin;
	cout <= (a and b) or (cin and (a or b)) 			   when sub = '0' else
			(cin and ((not a) or b)) or ((not a) and b);
end Behavioral;

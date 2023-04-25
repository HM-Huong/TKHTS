library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_adder_4bit is
end tb_adder_4bit;

architecture Behavioral of tb_adder_4bit is
	signal a, b: std_logic_vector(3 downto 0);
	signal s: std_logic_vector(3 downto 0);
	signal cin, cout: std_logic;
begin
	uut: entity work.adder_4bit
		port map(a => a, b => b, cin => cin, s => s, cout => cout);
	process begin
		cin <= '0';

		a <= "0000";
		b <= "0000";
		wait for 100 ns;

		a <= "0001";
		b <= "0001";
		wait for 100 ns;

		a <= "0011";
		b <= "0011";
		wait for 100 ns;

		a <= "0101";
		b <= "0011";
		wait for 100 ns;

		a <= "1111";
		b <= "1111";
		wait for 100 ns;

		assert false
			report "Simulation completed!"
		severity failure;
	end process;
end Behavioral;
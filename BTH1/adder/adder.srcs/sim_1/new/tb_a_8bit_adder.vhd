library ieee;
use ieee.std_logic_1164.all;

entity tb_a_8bit_adder is
end tb_a_8bit_adder;

architecture Behavioral of tb_a_8bit_adder is
	signal a, b: std_logic_vector(7 downto 0);
	signal s: std_logic_vector(7 downto 0);
	signal cin, cout: std_logic;
begin
	uut: entity work.a_8bit_adder
		port map(a => a, b => b, cin => cin, s => s, cout => cout);
	process begin
		cin <= '0';

		a <= "00000000";
		b <= "00000000";
		wait for 100 ns;

		a <= "00000001";
		b <= "00000001";
		wait for 100 ns;

		a <= "00000011";
		b <= "00000011";
		wait for 100 ns;

		a <= "00000101";
		b <= "00000011";
		wait for 100 ns;

		a <= "11111111";
		b <= "11111111";
		wait for 100 ns;

		assert false
			report "Simulation completed!"
		severity failure;
	end process;
end Behavioral;
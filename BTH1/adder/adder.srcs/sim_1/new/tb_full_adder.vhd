library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_full_adder is
--  Port ( );
end tb_full_adder;

architecture Behavioral of tb_full_adder is
	signal input_signal: std_logic_vector(2 downto 0);
	signal s, cout: std_logic;
begin
	uut: entity work.full_adder
		port map(
			a => input_signal(2), 
			b => input_signal(1), 
			cin => input_signal(0), 
			s => s, 
			cout => cout
		);
	process 
	begin
		input_signal <= "000";
		wait for 100 ns;
		
		input_signal <= "001";
		wait for 100 ns;
		
		input_signal <= "010";
		wait for 100 ns;
		
		input_signal <= "011";
		wait for 100 ns;
		
		input_signal <= "100";
		wait for 100 ns;
		
		input_signal <= "101";
		wait for 100 ns;
		
		input_signal <= "110";
		wait for 100 ns;
		
		input_signal <= "111";
		wait for 100 ns;
		
		assert false
			report "Simulation completed!"
		severity failure;
	end process;
end Behavioral;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_sum_sub_circuit is
end tb_sum_sub_circuit;

architecture Behavioral of tb_sum_sub_circuit is
	signal input: std_logic_vector(3 downto 0) := "0000";
	signal output: std_logic_vector(1 downto 0);
	
	procedure p_increment(
		signal x_in: std_logic_vector(3 downto 0);
		signal x_out: std_logic_vector(3 downto 0)
	) is 
	begin
		x_out <= std_logic_vector(unsigned(x_in) + 1);
		wait for 10 ns;
	end p_increment;
	
begin
	uut: entity work.sum_sub_circuit
		port map (
			a => input(3),
			b => input(2),
			cin => input(1),
			sub => input(0),
			
			cout => output(1),
			s => output(0)
		);
	process
	begin
		p_increment(input, input);
		p_increment(input, input);
		p_increment(input, input);
		p_increment(input, input);
		p_increment(input, input);
		p_increment(input, input);
		p_increment(input, input);
		p_increment(input, input);
		p_increment(input, input);
		p_increment(input, input);
		p_increment(input, input);
		p_increment(input, input);
		p_increment(input, input);
		p_increment(input, input);
		p_increment(input, input);
		p_increment(input, input);
		
--		input <= "0000";
--		wait for 100 ns;
		
--		input <= "1100";
--		wait for 100 ns;
		
--		input <= "0010";
--		wait for 100 ns;
		
--		input <= "1110";
--		wait for 100 ns;
		
--		input <= "0001";
--		wait for 100 ns;
		
--		input <= "1101";
--		wait for 100 ns;
		
--		input <= "0011";
--		wait for 100 ns;
		
--		input <= "0111";
--		wait for 100 ns;
		
--		input <= "1111";
--		wait for 100 ns;
		
--		input <= "1001";
--		wait for 100 ns;
		assert false
			report "Simulation completed!"
		severity failure;
	end process;
end Behavioral;

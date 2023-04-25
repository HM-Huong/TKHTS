library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_NBCD_4bit is
end tb_NBCD_4bit;

architecture Behavioral of tb_NBCD_4bit is
	signal a, b: std_logic_vector(3 downto 0);
	signal nbcd: std_logic_vector(7 downto 0);
begin
	uut: entity work.NBCD_4bit
		port map (
			a => a,
			b => b,
			nbcd => nbcd
		);
	process
	begin
		a <= "0110";
		b <= "1001";
        wait for 100 ns;
        
        a <= "0001";
		b <= "0101";
        wait for 100 ns;
        
        a <= "1001";
		b <= "1001";
        wait for 100 ns;
        
		assert false
			report "Simulation completed!"
		severity failure;
	end process;
end Behavioral;

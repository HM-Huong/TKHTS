library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity tb_number_of_1_bits is
end tb_number_of_1_bits;

architecture Behavioral of tb_number_of_1_bits is
	SIGNAL bin : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL num_bits_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
begin
	uut: entity work.number_of_1_bits
		port map(bin => bin, num_bits_1 => num_bits_1);
	process
	begin
		bin <= "11011101";
        wait for 100 ns;
        
        bin <= "11111101";
        wait for 100 ns;
        
        bin <= "11111111";
        wait for 100 ns;
        
		assert false
			report "Simulation completed!"
		severity failure;
	end process;
end Behavioral;

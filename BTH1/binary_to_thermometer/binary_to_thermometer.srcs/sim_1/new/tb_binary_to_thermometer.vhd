library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_binary_to_thermometer is
end tb_binary_to_thermometer;

architecture Behavioral of tb_binary_to_thermometer is
    signal in_binary: std_logic_vector(2 downto 0);
    signal out_therm: std_logic_vector(7 downto 0);
begin
    uut: entity work.binary_to_thermometer
        port map(in_binary, out_therm);
    
    process
    begin
        in_binary <= "000";
        wait for 100 ns;

        in_binary <= "001";
        wait for 100 ns;
        
        in_binary <= "010";
        wait for 100 ns;
        
        in_binary <= "011";
        wait for 100 ns;
        
        in_binary <= "111";
        wait for 100 ns;

        assert false
			report "Simulation completed!"
		severity failure;
    end process;
end Behavioral;

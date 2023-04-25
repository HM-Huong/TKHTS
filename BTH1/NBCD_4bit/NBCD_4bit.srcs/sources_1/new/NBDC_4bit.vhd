library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity NBCD_4bit is
	port (
		signal a, b: in std_logic_vector(3 downto 0);
		signal nbcd: out std_logic_vector(7 downto 0)
	);
end NBCD_4bit;

architecture Behavioral of NBCD_4bit is
begin
	process (a, b)
		variable bcd: unsigned(7 downto 0);
	begin
		bcd := unsigned("0000"&a) + unsigned("0000"&b);
		if bcd > 9 then
			bcd := bcd + 6;
		end if;
		nbcd <= std_logic_vector(bcd);
	end process;
end Behavioral;

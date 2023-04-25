LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY number_of_1_bits IS
    --	generic	(
    --		N: integer := 8
    --	);
    PORT (
        SIGNAL bin : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        SIGNAL num_bits_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END number_of_1_bits;

ARCHITECTURE Behavioral OF number_of_1_bits IS
BEGIN
	process (bin)
		variable count: natural;
	begin
		count := 0;
		for i in 0 to 7 loop
			if bin(i) = '1' then
				count := count + 1;
			end if;
		end loop;
		num_bits_1 <= std_logic_vector(to_unsigned(count, num_bits_1'length));
	end process;
END Behavioral;
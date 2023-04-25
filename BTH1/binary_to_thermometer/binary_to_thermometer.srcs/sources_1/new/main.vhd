LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY binary_to_thermometer IS
    PORT (
        binary_input : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        therm_output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END binary_to_thermometer;

ARCHITECTURE Behavioral OF binary_to_thermometer IS
BEGIN
    WITH binary_input SELECT
        therm_output <= "00000000" WHEN "000",
        "00000001" WHEN "001",
        "00000011" WHEN "010",
        "00000111" WHEN "011",
        "00001111" WHEN "100",
        "00011111" WHEN "101",
        "00111111" WHEN "110",
        "01111111" WHEN "111",
        "XXXXXXXX" WHEN OTHERS;
END Behavioral;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity encode is
    port (
        a, b, c, d : in std_logic;
        romStart   : out integer
    );
end entity encode;

architecture Behavioral of encode is
signal combined_signal : std_logic_vector(3 downto 0);
begin
combined_signal <= a & b & c & d;
    process(a, b, c, d)
    begin
        case combined_signal is
            when "0000" => romStart <= 0;
            when "0001" => romStart <= 1;
            when "0010" => romStart <= 2;
            when "0011" => romStart <= 3;
            when "0100" => romStart <= 4;
            when "0101" => romStart <= 5;
            when "0110" => romStart <= 6;
            when "0111" => romStart <= 7;
            when "1000" => romStart <= 8;
            when "1001" => romStart <= 9;
				when "1010" => romStart <= 10;
				when "1011" => romStart <= 11;
				when "1100" => romStart <= 12;
				when others => romStart <= 0;
        end case;
    end process;
end architecture Behavioral;


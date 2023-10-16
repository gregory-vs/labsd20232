library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity myHardware is
	port (x: in std_logic_vector(3 downto 0);
			s: out std_logic_vector(11 downto 0)
	);
end myHardware;

architecture Behavioral of myHardware is
begin
    process(x)
    begin
        s <= x * "0010" * (not x); -- Multiplicação por 2 (0010 em binário) e pela negação de x
    end process;

end Behavioral;
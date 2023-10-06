library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflop is
    Port ( D, CLK : in  std_logic;
           Q : out std_logic);
end flipflop;

architecture behavioral of flipflop is
begin
    process (CLK)
    begin
        if rising_edge(CLK) then
            Q <= D;
        end if;
    end process;
end behavioral;

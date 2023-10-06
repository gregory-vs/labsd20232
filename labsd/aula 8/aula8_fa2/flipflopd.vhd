library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflopd is
    Port ( D, CLK : in  std_logic;
           Q : inout std_logic);
end flipflopd;

architecture behavioral of flipflopd is

	component fulladder is
		port(
			Cin: in std_logic;
			x: in std_logic;
			y: in std_logic;
			s: out std_logic;
			Cout: out std_logic
		);
	end component;
	
signal fa_cin, fa_x, fa_y, fa_s, fa_cout : std_logic;

begin

	u1: fulladder port map(Cin => fa_cin, Cout => fa_cout, x => fa_x, y => fa_y, s => fa_s);
    process (CLK)
    begin
        if rising_edge(CLK) then
            Q <= fa_cout;
				fa_cin <= Q;
        end if;
    end process;
end behavioral;

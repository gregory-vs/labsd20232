library ieee;
use ieee.std_logic_1164.all;

entity flipflop_tb is
end flipflop_tb;

architecture teste of flipflop_tb is

	component flipflop 
		port( clock: in std_logic;
				D: in std_logic;
				Q: out std_logic
	    );
	end component;
	
signal d, q, clk : std_logic;
	
begin
	instancia_flipflop: flipflop port map(clock=>clk,D=>d,Q=>q);
	d <= '0', '1' after 3 ns, '0' after 11 ns, '1' after 20 ns, '0' after 28 ns; 
	clk <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, '1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '0' after 40 ns, '1' after 45 ns, '0' after 50 ns;
end teste;
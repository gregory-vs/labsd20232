library ieee;
use ieee.std_logic_1164.all;

entity pseudo_mux_tb is
end pseudo_mux_tb;

architecture teste of pseudo_mux_tb is

	component pseudo_mux 
		port (
			A, B, C, D, S, RESET, CLOCK : in std_logic;
			Q : out std_logic
		);
	end component;
	
signal a, b, c, d, s, res, clk : std_logic;
signal q : std_logic;
	
begin
	instancia_pseudo_mux: pseudo_mux port map(A=>a,B=>b,C=>c,D=>d,S=>s,RESET=>res,CLOCK=>clk,Q=>q);
	a <= '1';
   b <= '0';
   c <= '1';
   d <= '0';
   res <= '0';
   clk <= '0','1' after 10 ns, '0' after 15 ns, '1' after 25 ns, '0' after 30 ns, '0' after 35 ns;
   s <= '0', '1' after 10 ns, '0' after 15 ns, '1' after 25 ns, '0' after 30 ns, '0' after 35 ns;  
    
end teste;
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_somador is
end tb_somador;

architecture teste of tb_somador is

component somador is
port (	x, y 	: in std_logic_vector(3 downto 0);
		s 		: out std_logic_vector(3 downto 0));
end component;

signal A, B, S: std_logic_vector(3 downto 0);
begin
instancia_somador: somador port map(x=>A,y=>B,s=>S);
A <= x"0", x"3" after 20 ns, x"2" after 40 ns, x"4" after 60 ns;
B <= x"0", x"4" after 10 ns, x"3" after 30 ns, x"1" after 50 ns;
end teste;
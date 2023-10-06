library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity tb_somador is
end tb_somador;

architecture teste of tb_somador is

component somador is
port (	x, y 	: in std_logic; 
		s 		: out std_logic);
end component;

signal A, B, S: std_logic;
begin
instancia_somador: somador port map(x=>A,y=>B,s=>S);
A <= '0', '1' after 20 ns, '1' after 40 ns, '0' after 60 ns;
B <= '0', '1' after 10 ns, '0' after 30 ns, '1' after 50 ns;
end teste;
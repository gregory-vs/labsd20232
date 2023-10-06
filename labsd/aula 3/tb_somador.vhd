library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity tb_somador is
end tb_somador;

architecture teste of tb_somador is

component somador is
port (	a, b 	: in unsigned(3 downto 0);
		result 		: out unsigned(3 downto 0));
end component;

signal A, B, S: unsigned(3 downto 0);
begin
instancia_somador: somador port map(a=>A,b=>B,result=>S);
A <= "0000", "0100" after 20 ns, "0110" after 40 ns, "0011" after 60 ns;
B <= "0000", "1000" after 10 ns, "0001" after 30 ns, "0001" after 50 ns;
end teste;
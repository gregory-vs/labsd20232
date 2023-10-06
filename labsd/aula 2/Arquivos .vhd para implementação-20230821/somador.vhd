library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity somador is
port (	x, y 	: in unsigned(1 downto 0);
		s 		: out unsigned(1 downto 0));
end somador;

architecture comportamental of somador is
begin
		s <= x + y ;
end comportamental;
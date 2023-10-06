-- Quartus II VHDL Template
-- Unsigned Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity somador is

	generic
	(
		DATA_WIDTH : natural := 4
	);

	port 
	(
		a	   : in unsigned  ((DATA_WIDTH-1) downto 0);
		b	   : in unsigned  ((DATA_WIDTH-1) downto 0);
		result : out unsigned ((DATA_WIDTH-1) downto 0)
	);

end entity;

architecture rtl of somador is
begin

	result <= a + b;

end rtl;

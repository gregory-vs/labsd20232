library IEEE;
use ieee.std_logic_1164.all;

entity flipflop is
	port(
		CLOCK: IN STD_LOGIC;
		D: IN STD_LOGIC;
		Q: inout STD_LOGIC;
		QB: INOUT STD_LOGIC
	);
end flipflop;

architecture structural of flipflop is
	signal A, B : STD_LOGIC;
begin
	A <= D NAND CLOCK;
	B <= (NOT D) NAND CLOCK;
	Q <= A NAND QB;
	QB <= B NAND Q;
	
end structural;
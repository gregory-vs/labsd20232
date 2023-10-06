LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity fulladder is
    port ( Cin : in std_logic;
           x   : in std_logic;
           y   : in std_logic;
           s   : out std_logic;
           Cout : out std_logic
        );
end fulladder;
architecture RTL OF fulladder is

component flipflop
	port(
		d, clk: in std_logic;
		q: out std_logic
	);
end component;

signal ff_d, ff_q : std_logic;
signal Clock: std_logic;

begin
	u1: flipflop port map(d => ff_d, clk => Clock, q => ff_q);
	
	process (Cin, x, y, ff_q)
	begin
	ff_d <= x XOR y XOR Cin; 
    s <= ff_d;
    Cout <= (x AND y) OR (Cin AND x) OR (Cin AND y);
	 end process;
end RTL ;
LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity flipflop is
	port( clock: in std_logic;
		  D: in std_logic;
	      Q: buffer std_logic
	    );
end flipflop;

architecture dataflow of flipflop is
begin
	Q <= D when rising_edge(clock);
end dataflow;
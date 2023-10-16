library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity myHardware_tb is
end myHardware_tb;

architecture sim of myHardware_tb is
    signal x : STD_LOGIC_VECTOR(3 downto 0);
    signal s : STD_LOGIC_VECTOR(11 downto 0);
    
    component myHardware
        Port ( x : in  STD_LOGIC_VECTOR(3 downto 0);
               s : out STD_LOGIC_VECTOR(11 downto 0));
    end component;

begin
   uut: myHardware port map (x => x, s => s);
	
	x <= "0000", "0001" after 10 ns, "0101" after 20 ns, "1000" after 30 ns, "1111" after 40 ns;
	
end sim;

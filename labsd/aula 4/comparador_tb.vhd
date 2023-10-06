library ieee;
use ieee.std_logic_1164.all;

entity comparador_tb is
end comparador_tb;

architecture teste of comparador_tb is

	component comparador 
		port (
			a : in std_logic_vector(3 downto 0);
			b : in std_logic_vector(3 downto 0);
			maiorQue : out std_logic;
			igual : out std_logic
		);
	end component;
	
signal A, B : std_logic_vector(3 downto 0);
signal maQ, igu : std_logic;
	
begin
	instancia_comparador: comparador port map(a=>A,b=>B,maiorQue=>maQ,igual=>igu);
	A <= "0000", "0100" after 10 ns, "0100" after 20 ns, "0110" after 30 ns;
	B <= "0000", "0010" after 10 ns, "1000" after 20 ns, "0001" after 30 ns;
end teste;
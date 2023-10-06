library ieee;
use ieee.std_logic_1164.all;

entity alu_tb is
end alu_tb;

architecture teste of alu_tb is

	component alu 
		port (
			CONTROL : in    std_logic_vector(3 downto 0);
			SRC1    : in    std_logic_vector(7 downto 0);
			SRC2    : in    std_logic_vector(7 downto 0);
			RESULT  : out   std_logic_vector(7 downto 0);
			ZERO    : out   std_logic
		);
	end component;
	
signal src1, src2, res : std_logic_vector(7 downto 0);
signal control: std_logic_vector(3 downto 0);
signal zer: std_logic;
	
begin
	instancia_alu: alu port map(SRC1=>src1,SRC2=>src2,CONTROL=>control, RESULT=>res, ZERO=>zer);
	src1 <= "00000000", "00000100" after 5 ns;
	src2 <= "00000000", "00000100" after 5 ns;
	control <= "0000", "0001" after 20 ns, "0010" after 30 ns, "0110" after 40 ns, "0111" after 50 ns, "1100" after 60 ns, "0000" after 70 ns;
end teste;
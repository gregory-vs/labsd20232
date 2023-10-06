library ieee;
use ieee.std_logic_1164.all;

entity calculador_media_tb is
		generic (
        W       :       integer := 4
		);
end calculador_media_tb;

architecture teste of calculador_media_tb is

	component calculador_media 
		generic (
        W       :       integer := 4
		);
		port (
			  CLK     : in    std_logic;
			  RESET   : in    std_logic;
			  INPUT   : in    std_logic_vector(W - 1 downto 0);
			  OUTPUT  : out   std_logic_vector(W - 1 downto 0)
		 );
	end component;
	
signal inp, outp : std_logic_vector(W - 1 downto 0);
signal clock, res : std_logic;
	
begin
	instancia_calculador_media: calculador_media port map(CLK=>clock,RESET=>res,INPUT=>inp,OUTPUT=>outp);
	inp <= "0000", "0001" after 5 ns, "0010" after 10 ns, "0100" after 15 ns, "0001" after 20 ns;
	res <= '0', '1' after 42 ns;
	clock <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, '1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '0' after 40 ns, '1' after 45 ns, '0' after 50 ns;
end teste;
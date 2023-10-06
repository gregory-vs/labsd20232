library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparador is

	port (
		a : in std_logic_vector(3 downto 0);
		b : in std_logic_vector(3 downto 0);
		maiorQue : out std_logic;
		igual : out std_logic
	);
end entity;

architecture behavioral of comparador is
	begin 
	process(a,b)
		begin
		if(a = b) then
			maiorQue <= '0';
			igual <= '1';
		elsif (a > b) then
			maiorQue <= '1';
			igual <= '0';
		else
			maiorQue <= '0';
			igual <= '0';
		end if;
	end process;
end architecture;
		
		
		
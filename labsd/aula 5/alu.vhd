library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity alu is
    port (
        CONTROL : in    std_logic_vector(3 downto 0);
        SRC1    : in    std_logic_vector(7 downto 0);
        SRC2    : in    std_logic_vector(7 downto 0);
        RESULT  : out   std_logic_vector(7 downto 0);
        ZERO    : out   std_logic
    );
end alu;


-- Define the architecture for this entity.
-- Consider the following operations to calculate the value or RESULT:
--      CONTROL             RESULT
--      0000                SRC1 and SRC2 
--      0001                SRC1 or SRC2
--      0010                SRC1 + SRC2
--      0110                SRC1 - SRC2
--      0111                SRC1 < SRC2 ? 1 : 0
--      1100                NOT( SRC1 or SRC2 )

-- Consider the following behavior for the ZERO output:
--  ZERO <= RESULT == 0 ? 1 : 0

architecture arch of alu is

	signal temp: std_logic_vector(7 downto 0);
begin

	process(SRC1, SRC2, CONTROL)
	begin
		case CONTROL is
			when "0000" =>
				Temp <= SRC1 and SRC2;
			when "0001" =>
				Temp <= SRC1 or SRC2;
			when "0010" =>
				Temp <=  unsigned(SRC1) + unsigned(SRC2);
			when "0110" =>
				Temp <= unsigned(SRC1) - unsigned(SRC2);
			when "0111" =>
				if(SRC1 >= SRC2) then
					Temp <= (others => '0');
				else
					Temp <= (others => '1');
				end if;
			when "1100" =>
				Temp <= not(SRC1 or SRC2);
			when others =>
				Temp <= (others => '0');
		end case;
	end process;
		
		process(Temp)
		begin
			if(Temp = "000000000") then
				ZERO <= '1';
			else
				ZERO <= '0';
			end if;
			RESULT <= Temp;
		end process;
end arch;

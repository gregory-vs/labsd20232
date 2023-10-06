library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity pseudo_mux is
    port (
        RESET   : in    std_logic; -- reset input
        CLOCK   : in    std_logic; -- clock input
        S       : in    std_logic; -- control input
        A,B,C,D : in    std_logic; -- data inputs
        Q       : out   std_logic  -- data output
    );
end pseudo_mux;

architecture arch of pseudo_mux is

type state_type is (S0, S1, S2, S3);
signal PS, NS : state_type := S0;

begin

	sync_proc: process(RESET, PS, CLOCK)
	begin
		if RESET = '1' then
			PS <= S0;
		elsif rising_edge(CLOCK) THEN
		PS <= NS;
		end if;
	end process sync_proc;
	

	process(S, PS)
	begin
		Q <= '0';
		case PS is
			when S0 =>
				Q <= A;
				if S = '1' then
					NS <= S1;
				end if;
			when S1 =>
				Q <= B;
				if S = '1' then
					NS <= S2;
				end if;
			when S2 =>
				Q <= C;
				if S = '1' then
					NS <= S3;
				end if;
			when S3 =>
				Q <= D;
				if S = '1' then
					NS <= S0;
				end if;
			when others =>
				Q <= '0';
				NS <= S0;
		end case;
	end process;
end arch;

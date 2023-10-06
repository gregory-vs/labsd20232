library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity calculador_media is
    generic (
        W       :       integer := 4
    );
    port (
        CLK     : in    std_logic;
        RESET   : in    std_logic;
        INPUT   : in    std_logic_vector(W - 1 downto 0);
        OUTPUT  : out   std_logic_vector(W - 1 downto 0)
    );
end calculador_media;

-- Implement the testbench and find the errors in this model.
-- Consider the following expected behavior:
--      Every rising edge of CLK input, the content of INPUT
--      is added to a register chain and used to calculate the
--      mean value over 4 clock periods

architecture arch of calculador_media is
begin
    process(CLK, RESET) is
        variable var1 : unsigned(W - 1 downto 0);
        variable var2 : unsigned(W - 1 downto 0);
        variable var3 : unsigned(W - 1 downto 0);
        variable var4 : unsigned(W - 1 downto 0);
    begin
        if (RESET = '1') then
            var1 := to_unsigned(0,W);
            var2 := to_unsigned(0,W);
            var3 := to_unsigned(0,W);
            var4 := to_unsigned(0,W);
        elsif (rising_edge(CLK)) then
            var1 := unsigned("00" & INPUT(W-1 downto 2));
            var2 := var1;
            var3 := var2;
            var4 := var3;
        end if;
        
        OUTPUT <= std_logic_vector(shift_left(unsigned(var1 + var2 + var3 + var4), 1));
    end process;
    
end arch;

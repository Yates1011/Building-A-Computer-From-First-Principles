-- Program counter block that uses:
-- 
--
-- 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity program_counter is
    port (
        clk   : in STD_LOGIC;                             -- Clock signal
        inc   : in STD_LOGIC;                              -- Write enable signal
        load  : in STD_LOGIC; 
        reset : in STD_LOGIC;  
        din : in STD_LOGIC_VECTOR(8-1 downto 0);   -- Data input
        dout : out STD_LOGIC_VECTOR(8-1 downto 0)  -- Data output
    );
end program_counter;

architecture Behavioral of program_counter is
    signal counter_value : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');  -- Counter value
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                counter_value <= (others => '0');  -- Reset counter to 0
            elsif load = '1' then
                counter_value <= din;  -- Load counter with input value
            elsif inc = '1' then
                counter_value <= std_logic_vector(unsigned(counter_value) + 1);  -- Increment counter
            end if;
        end if;
    end process;

    dout <= counter_value;  -- Output the data at the registered address
end Behavioral;

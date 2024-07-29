-- Fig 3.6 16-bit Register that stores and outputs a 16-bit value until instructed to load a new value. 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Register16Bit is
    generic (
        N : integer := 16  -- Default bit width is 16
    );
    Port (
        input  : in STD_LOGIC_VECTOR(N-1 downto 0);
        load   : in STD_LOGIC;
        clk    : in STD_LOGIC;
        output : out STD_LOGIC_VECTOR(N-1 downto 0)
    );
end Register16Bit;

architecture Behavioral of Register16Bit is
    signal output_val : std_logic_vector(N-1 downto 0) := (others => '0');
    
begin
    
    clkProcess : process(clk) is 
    begin
        if (rising_edge(clk)) then
            if (load = '1') then
                output_val <= input;
            else
                output_val <= output_val;
            end if;
        end if;
    end process clkProcess;

    output <= output_val; 

end Behavioral;

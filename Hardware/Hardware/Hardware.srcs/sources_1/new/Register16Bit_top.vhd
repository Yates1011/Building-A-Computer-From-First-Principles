library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TopLevelRegister is
    Port (
        inputA : in STD_LOGIC_VECTOR(15 downto 0);
        loadA  : in STD_LOGIC;
        clkA   : in STD_LOGIC;
        outputA : out STD_LOGIC_VECTOR(15 downto 0);
        
        inputD : in STD_LOGIC_VECTOR(15 downto 0);
        loadD  : in STD_LOGIC;
        clkD   : in STD_LOGIC;
        outputD : out STD_LOGIC_VECTOR(15 downto 0)
    );
end TopLevelRegister;

architecture Behavioral of TopLevelRegister is
    -- Component declaration
    component Register16Bit is
        generic (
            N : integer := 16
        );
        Port (
            input  : in STD_LOGIC_VECTOR(N-1 downto 0);
            load   : in STD_LOGIC;
            clk    : in STD_LOGIC;
            output : out STD_LOGIC_VECTOR(N-1 downto 0)
        );
    end component;
    
begin

    -- Instantiate Register16Bit for address register
    registerA: Register16Bit
        generic map (
            N => 16
        )
        port map (
            input => inputA,
            load => loadA,
            clk => clkA,
            output => outputA
        );

    -- Instantiate Register16Bit for data register
    registerD: Register16Bit
        generic map (
            N => 16
        )
        port map (
            input => inputD,
            load => loadD,
            clk => clkD,
            output => outputD
        );

end Behavioral;

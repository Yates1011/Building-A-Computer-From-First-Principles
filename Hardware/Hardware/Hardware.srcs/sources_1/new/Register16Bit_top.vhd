library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MemoryModule is
    Port ( a : in STD_LOGIC;
           d : in STD_LOGIC;
           b : in STD_LOGIC;
           input : in STD_LOGIC_VECTOR (15 downto 0);
           clk : in STD_LOGIC;
           a_out : out STD_LOGIC_VECTOR (15 downto 0);
           d_out : out STD_LOGIC_VECTOR (15 downto 0);
           b_out : out STD_LOGIC_VECTOR (15 downto 0));
end MemoryModule;

architecture Behavioral of MemoryModule is

    component RAM64K is
        Port ( input : in STD_LOGIC_VECTOR (15 downto 0);
               address : in STD_LOGIC_VECTOR (15 downto 0);
               clk : in STD_LOGIC;
               load : in STD_LOGIC;
               output : out STD_LOGIC_VECTOR (15 downto 0));
    end component;
    
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
    
    signal a_out_sig : std_logic_vector(15 downto 0);
    
begin

    -- Instantiate 64K RAM module
    RAM : RAM64K
    port map (
        input => input,
        address => a_out_sig,
        clk => clk,
        load => b,
        output => b_out
    );

    -- Instantiate Register16Bit for address register A
    RegisterA : Register16Bit
    port map (
        input => input,
        load => a,
        clk => clk,
        output => a_out_sig
    );
    a_out <= a_out_sig;
    
    -- Instantiate Register16Bit for address register D
    RegisterD : Register16Bit
    port map (
        input => input,
        load => d,
        clk => clk,
        output => d_out
    );

end Behavioral;

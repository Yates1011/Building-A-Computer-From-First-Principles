----------------------------------------------------------------------------------
-- Engineer: Will Yates 
-- 
-- Create Date: 06/17/2024 12:33:38 AM
-- Design Name: 
-- Module Name: ALU_Test - Test Bench
-- Description: Test Bench for ALU.
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU_Test is
end ALU_Test;

architecture Behavioral of ALU_Test is
    -- Component Declaration for the Unit Under Test (UUT)
    component ALU
        Port (
            x : in STD_LOGIC_VECTOR(15 downto 0);
            y : in STD_LOGIC_VECTOR(15 downto 0);
            zx : in STD_LOGIC;
            nx : in STD_LOGIC;
            zy : in STD_LOGIC;
            ny : in STD_LOGIC;
            f : in STD_LOGIC;
            no : in STD_LOGIC;
            output : out STD_LOGIC_VECTOR(15 downto 0);
            zr : out STD_LOGIC;
            ng : out STD_LOGIC
        );
    end component;

    -- Inputs
    signal x : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
    signal y : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
    signal zx : STD_LOGIC := '0';
    signal nx : STD_LOGIC := '0';
    signal zy : STD_LOGIC := '0';
    signal ny : STD_LOGIC := '0';
    signal f : STD_LOGIC := '0';
    signal no : STD_LOGIC := '0';

    -- Outputs
    signal output : STD_LOGIC_VECTOR(15 downto 0);
    signal zr : STD_LOGIC;
    signal ng : STD_LOGIC;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: ALU
        Port map (
            x => x,
            y => y,
            zx => zx,
            nx => nx,
            zy => zy,
            ny => ny,
            f => f,
            no => no,
            output => output,
            zr => zr,
            ng => ng
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test case 1: addition
        x <= "0000000000000010";  -- x = 2
        y <= "0000000000000011";  -- y = 3
        zx <= '0'; nx <= '0';
        zy <= '0'; ny <= '0';
        f <= '1';  -- f = 1 (addition)
        no <= '0';
        wait for 10 ns;

        -- Test case 2:  AND
        x <= "0000000000001100";  -- x = 12
        y <= "0000000000001010";  -- y = 10
        zx <= '0'; nx <= '0';
        zy <= '0'; ny <= '0';
        f <= '0';  -- f = 0 (AND)
        no <= '0';
        wait for 10 ns;

        -- Test case 3: Zeroing x and y
        zx <= '1';  -- Zero x
        zy <= '1';  -- Zero y
        nx <= '0'; ny <= '0';
        f <= '1';  -- f = 1 (addition)
        no <= '0';
        wait for 10 ns;

        -- Test case 4: Negating x and y
        zx <= '0'; nx <= '1';  -- Negate x
        zy <= '0'; ny <= '1';  -- Negate y
        x <= "0000000000000001";  -- x = 1
        y <= "0000000000000010";  -- y = 2
        f <= '1';  -- f = 1 (addition)
        no <= '0';
        wait for 10 ns;

        -- Test case 5: Combining all controls
        zx <= '1'; nx <= '1';  -- Zero x and negate
        zy <= '0'; ny <= '1';  -- Negate y
        x <= "0000000000001111";  -- x = 15
        y <= "0000000000000001";  -- y = 1
        f <= '1';  -- f = 1 (addition)
        no <= '1';  -- Negate output
        wait for 10 ns;
        
        -- Test case 6: subtraction -(x-y)
        x <= "0000000000001111";  -- x = 15
        y <= "0000000000010010";  -- y = 18
        zx <= '0'; nx <= '1';
        zy <= '0'; ny <= '0';
        f <= '1';  
        no <= '1';
        wait for 10 ns;


        wait;
    end process;
end Behavioral;

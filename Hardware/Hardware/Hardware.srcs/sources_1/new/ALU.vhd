----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/17/2024 12:33:38 AM
-- Design Name: 
-- Module Name: ALU - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
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
end ALU;

architecture Behavioral of ALU is
    signal x1, y1, x2, y2, out1 : STD_LOGIC_VECTOR(15 downto 0);
begin
    process (x, y, zx, nx, zy, ny, f, no)
    begin
        -- Apply zx and nx to x
        if zx = '1' then
            x1 <= (others => '0');
        else
            x1 <= x;
        end if;

        if nx = '1' then
            x2 <= NOT x1;
        else
            x2 <= x1;
        end if;

        -- Apply zy and ny to y
        if zy = '1' then
            y1 <= (others => '0');
        else
            y1 <= y;
        end if;

        if ny = '1' then
            y2 <= NOT y1;
        else
            y2 <= y1;
        end if;

        -- Apply function f
        if f = '1' then
            out1 <= x2 + y2;
        else
            out1 <= x2 AND y2;
        end if;

        -- Apply no
        if no = '1' then
            output <= NOT out1;
        else
            output <= out1;
        end if;
        
        -- Set zero flag
        if out1 = "0000000000000000" then
            zr <= '1';
        else
            zr <= '1';
        end if; 

        -- Set negative flag
        if out1 < "0000000000000000" then
            ng <= '1';
        else
            ng <= '0';
        end if;
    end process;
end Behavioral;

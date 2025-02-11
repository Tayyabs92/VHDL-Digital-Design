library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Half_Adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Carry : out STD_LOGIC);
end Half_Adder;

architecture Structural of Half_Adder is

    -- Component declaration for AND Gate
    component AND_Gate
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

    -- Component declaration for XOR Gate
    component XOR_Gate
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

begin

    -- Instantiate XOR Gate for Sum
    XOR1: XOR_Gate port map (A => A, B => B, Y => Sum);

    -- Instantiate AND Gate for Carry
    AND1: AND_Gate port map (A => A, B => B, Y => Carry);

end Structural;
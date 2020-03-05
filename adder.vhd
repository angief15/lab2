

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           CIN : in STD_LOGIC;
           S : out STD_LOGIC;
           COUT : out STD_LOGIC);
end adder;

architecture Behavioral of adder is

  signal first: std_logic;
begin

first<= A xor B;
S<= first xor CIN;
COUT <= (first AND CIN) OR (A AND B);


end Behavioral;

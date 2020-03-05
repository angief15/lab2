
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ripple_adder is
    Port ( A : in STD_LOGIC_vector(3 downto 0);
           B : in STD_LOGIC_vector(3 downto 0);
           S : out STD_LOGIC_vector(3 downto 0);
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC);
end ripple_adder;

architecture Behavioral of ripple_adder is

signal c: std_logic_vector (2 downto 0);


component adder is
Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           CIN : in STD_LOGIC;
           S : out STD_LOGIC;
           COUT : out STD_LOGIC);
end component;

begin


first: adder port map ( A => A(0),
                        B => B(0),
                        CIN => Cin,
                        S => S(0),
                        COUT => C(0)  );
                        
                        
second: adder port map ( A => A(1),
                        B => B(1),
                        CIN => C(0),
                        S => S(1),
                         COUT => c(1)  );
                         
THIRD: adder port map ( A => A(2),
                         B => B(2),
                         CIN => C(1),
                         S => S(2),
                          COUT => c(2)  );                        
                        
fourth : adder port map ( A => A(3),
                          B => B(3),
                          CIN => C(2),
                          S => S(3),
                          COUT => Cout  );


end Behavioral;

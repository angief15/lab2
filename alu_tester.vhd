library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity alu_tester is
    Port ( sw : in STD_LOGIC_VECTOR (3 downto 0);
           led : out STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC;
           btn : in STD_LOGIC_VECTOR (3 downto 0));
end alu_tester;

architecture Behavioral of alu_tester is

signal A1, B1,X1: STD_LOGIC_VECTOR (3 downto 0);

component my_alu is 
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
       B : in STD_LOGIC_VECTOR (3 downto 0);
       X : in STD_LOGIC_VECTOR (3 downto 0);
       O : out STD_LOGIC_VECTOR (3 downto 0));
end component;    



begin

alu: my_alu port map( A=> A1, B=> B1, X=> X1 , O => led);

process (clk)
begin
if rising_edge(clk) then  
if btn(2) = '1' then
x1<= sw;
END IF;
if btn(1) = '1' then
a1<= sw;
end if;
if btn(0) ='1' then
b1<=sw;
end if;
if btn(3) ='1' then
A1<= "0000";
B1<= "0000";
X1<= "0000";
end if;

end if;
end process;

end Behavioral;

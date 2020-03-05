
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

entity my_alu is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           X : in STD_LOGIC_VECTOR (3 downto 0);
           O : out STD_LOGIC_VECTOR (3 downto 0));
end my_alu;

architecture Behavioral of my_alu is



begin



process(x, A, b)
begin
case X is 
      when "0000" => O <= std_logic_vector(unsigned(A)+unsigned(B)); --0
      when "0001" => O <= std_logic_vector(unsigned(A)-unsigned(B)); --1
      when "0010" => O <= std_logic_vector(unsigned(A)+ 1); --2
      when "0011" => O <= std_logic_vector(unsigned(A)-1); --3 
     
      when "0100" => O <= std_logic_vector(0-unsigned(A)); --4
    
      when "0101" =>  --5
      if (A>B) then O <= "0001"; else O<= "0000";
      end if;
     
      when "0110" => O <= std_logic_vector(unsigned(A) sll 1);  --6 
      when "0111" => O <= std_logic_vector(unsigned(A) srl 1); --7
     
      when "1000" => O <= A(3) & A(3 downto 1);--8
     
      when "1001" => O <= not(A) ; --9
      when "1010" => O <= A and B ; --10
      when "1011" => O <= A OR B ; --11
      when "1100" => O <= A xor B ; --12
      when "1101" => O <= a XNOR b ; --13
      when "1110" => O <= A nand B ; --14
      when "1111" => O <= A nor B ; --15
     
    
    when others => O <= "0000";
end case;
end process;

end Behavioral;

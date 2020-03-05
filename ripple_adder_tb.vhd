
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity ripple_adder_tb is
end ripple_adder_tb;

architecture testbench of ripple_adder_tb is
 
    signal tb_A : std_logic_vector(3 downto 0) := "1000";
    signal tb_B : std_logic_vector(3 downto 0) := "1000";
    signal tb_S : std_logic_vector(3 downto 0);
    signal tb_Cin : std_logic := '0';
    signal tb_Cout : std_logic;
       
    component ripple_adder is
        Port ( A : in STD_LOGIC_vector(3 downto 0);
           B : in STD_LOGIC_vector(3 downto 0);
           S : out STD_LOGIC_vector(3 downto 0);
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC);
    end component;

begin
  
    dut : ripple_adder
    port map (
    
        A  => tb_A, B => tb_B,  S=> tb_S,  Cin => tb_Cin,  Cout => tb_Cout
    
    );

    
end testbench; 

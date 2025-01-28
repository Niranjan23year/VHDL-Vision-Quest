library ieee;
use ieee.std_logic_1164.all;

entity parity_checker is
  Port (
    data_in : in std_logic_vector(3 downto 0); -- 8-bit data input
    even_parity : out std_logic  
  );
end entity;

architecture Behavioral of parity_checker is

  signal parity_bit : std_logic := '0';

begin

  
  process(data_in)
  begin
    parity_bit <= '0'; 
    for i in 0 to 3 loop
      parity_bit <= parity_bit xor data_in(i); 
    end loop; 
  end process;


  even_parity <= not parity_bit; 

end architecture;
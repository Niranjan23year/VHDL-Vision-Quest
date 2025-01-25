library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Parity_Generator is
    port (
        data        : in std_logic_vector(3 downto 0); -- 4-bit input data
        even_parity : out std_logic;                  -- Even parity bit
        odd_parity  : out std_logic                   -- Odd parity bit
    );
end Parity_Generator;

architecture beh of Parity_Generator is
begin
    process(data)
    begin
        odd_parity <= data(0) xor data(1) xor data(2) xor data(3);
         even_parity<= not (data(0) xor data(1) xor data(2) xor data(3));
    end process;
end beh;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Priority_Encoder is
    Port (
        I : in  STD_LOGIC_VECTOR(3 downto 0); 
        Y : out STD_LOGIC_VECTOR(1 downto 0); 
        Valid : out STD_LOGIC               
    );
end Priority_Encoder;

architecture Behavioral of Priority_Encoder is
begin
    process(I)
    begin
        Y <= "00";
        Valid <= '0';

        if (I(3) = '1') then
            Y <= "11";
            Valid <= '1';
        elsif (I(2) = '1') then
            Y <= "10";
            Valid <= '1';
        elsif (I(1) = '1') then
            Y <= "01";
            Valid <= '1';
        elsif (I(0) = '1') then
            Y <= "00";
            Valid <= '1';
        end if;
    end process;
end Behavioral;

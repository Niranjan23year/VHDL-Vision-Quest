library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity comparator_8bit is
    port(a: in std_logic_vector(7 downto 0);
        b : in std_logic_vector(7 downto 0);
        a_g_b :out std_logic;
        a_l_b :out std_logic;
        a_e_b :out std_logic);
end comparator_8bit;
architecture beh of comparator_8bit is
    begin
        process (a,b)
            begin
                if a>b then
                    a_g_b <='1';
                    a_l_b <='0';
                    a_e_b <='0';
                elsif a<b then
                    a_g_b <='0';
                    a_l_b <='1';
                    a_e_b <='0';
                else
                   a_g_b <='0';
                   a_l_b <='0';
                   a_e_b <='1';
        end if;
    end process;
end beh;
                   
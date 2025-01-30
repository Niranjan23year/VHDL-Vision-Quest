library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_4bit is
    port (
        clk : in std_logic;
        rst : in std_logic;
        en  : in std_logic;  
        count : out std_logic_vector(3 downto 0));
end entity;

architecture beh of counter_4bit is
    signal count_int : unsigned(3 downto 0);

begin

    process (clk, rst)
    begin
        if rst = '1' then
            count_int <= (others => '0'); 
        elsif rising_edge(clk) then
            if en = '1' then  
                count_int <= count_int + 1;
            end if;
        end if;
    end process;

    count <= std_logic_vector(count_int);

end beh;

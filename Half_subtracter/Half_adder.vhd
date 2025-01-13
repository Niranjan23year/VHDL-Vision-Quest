library ieee;
    use ieee.std_logic_1164.all;
entity Half_adder is
    port(a,b : in std_logic;
        sum, carry : out std_logic);
end Half_adder;
architecture beh of Half_adder is 
begin 
    sum<= a xor b;
    carry<= a and b;
end  beh;

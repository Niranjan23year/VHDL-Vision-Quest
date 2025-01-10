library ieee;
    use ieee.std_logic_1164.all;
    entity Full_adder is
        port(a,b,c : in std_logic;
            sum, carry : out std_logic);
end Full_adder;
architecture beh of Full_adder is
    begin
        sum <= a xor b xor c ;
        carry <= (A AND B) OR (B AND C) OR (A AND C);
end beh;
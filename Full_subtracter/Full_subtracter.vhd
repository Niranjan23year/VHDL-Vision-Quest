library ieee;
    use ieee.std_logic_1164.all;
entity Full_subtracter is
    port(a,b,c : in std_logic;
        diff,barrow : out std_logic);
end Full_subtracter;
architecture beh of Full_subtracter is
    begin
     diff<= a xor b xor c;
     barrow<=(not a and b) or (not a and c) or (a and c);
end beh;

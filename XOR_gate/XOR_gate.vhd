library ieee;
    use ieee.std_logic_1164.all;
entity XOR_gate is 
port( a ,b : in std_logic;
    y :out std_logic);
end XOR_gate;
architecture beh of XOR_gate is 
begin
    y <= a xor b ;
end beh;
    

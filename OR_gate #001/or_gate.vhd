
library ieee;
use ieee.std_logic_1164.all;

entity or_gate is
    port(a,b :in std_logic;
        y : out std_logic);
end or_gate;

architecture beh of or_gate is 
 begin
      y<=a or b ;
end beh;
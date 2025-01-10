library ieee;
use ieee.std_logic_1164.all;
entity XNOR_gate is
    port (a,b : in std_logic;
        y : out std_logic);
end XNOR_gate;
architecture beh of XNOR_gate is
begin
     y <= a XNOR b;
end beh;
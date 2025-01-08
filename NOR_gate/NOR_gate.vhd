library ieee;
use ieee.std_logic_1164.all;
entity NOR_gate is
port(a,b : in std_logic;
y: out std_logic);
end NOR_gate;
architecture beh of NOR_gate is
begin 
y <= a NOR b;
end beh;

library ieee;
    use ieee.std_logic_1164.all;
entity NAND_gate is
    port( a,b : in std_logic;
        y :out std_logic);
end NAND_gate;
architecture beh of NAND_gate is
begin
    y <= a nand b ;
end beh;
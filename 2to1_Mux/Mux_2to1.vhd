library ieee;
    use ieee.std_logic_1164.all;
    entity Mux_2to1  is
        port(I0,I1,S :in std_logic;
            y : out std_logic);
        end Mux_2to1;
architecture beh of Mux_2to1 is
    begin
        process(I0,I1,S)
         begin
             if  s='0' then 
             y<=I0 ;
             else 
             y <=I1 ;
     end if;
 end process;
 end beh;
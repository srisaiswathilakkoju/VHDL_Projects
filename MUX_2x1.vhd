--Program for 2x1 mux

library ieee;
use ieee.std_logic_1164.all;
use work.EE638.all;

entity MUX_2x1 is
       port(I0,I1,S0 :in std_logic;
		      O0 :out std_logic);
end MUX_2x1;

architecture STRUCTURE of mux_2x1 is

        signal s01,a1,a2 : std_logic;

		  
begin 
    NG1 : NOT_1 port map(S0,s01);
	 AG1 : AND_2 port map(s01,I0,a1);
	 AG2 : AND_2 port map(S0,I1,a2);
	 OG1 : OR_2 port map(a1,a2,O0);
	 
end STRUCTURE;

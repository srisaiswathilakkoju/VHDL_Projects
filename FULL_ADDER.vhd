--PROGRAM FOR FULL ADDER

library ieee;
use ieee.std_logic_1164.all;
use work.EE638.all;

entity FULL_ADDER is

       port( I0, I1,CIN :in std_logic;    --inputs of FULL adder
		        SUM, COUT : out std_logic);  --sum and carry of FULL adder
				  
end FULL_ADDER;


architecture STRUCTURE of FULL_ADDER is     ---Architecture description of half Adder

       signal s0,c0,c1 : std_logic;

begin                          
      
		HA0 : HALF_ADDER port map(I0,I1,s0,c0);
		HA1 : HALF_ADDER port map(s0,CIN,SUM,c1);
		O2  : OR_2 port map(c0,c1,COUT);
		
end STRUCTURE;
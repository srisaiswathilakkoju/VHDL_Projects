--PROGRAM FOR HALF ADDER

library ieee;
use ieee.std_logic_1164.all;
use work.EE638.all;

entity HALF_ADDER is

       port( I0, I1 :in std_logic;    --inputs of half adder
		        S, C : out std_logic);  --sum and carry of half adder
				  
end HALF_ADDER;


architecture STRUCTURE of HALF_ADDER is     ---Architecture description of half Adder


begin                          
      
		U0 : XOR_2 port map(I0,I1,S);
		U1 : AND_2 port map(I0,I1,C);
		
end STRUCTURE;
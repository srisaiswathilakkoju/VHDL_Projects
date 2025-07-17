--PROGRAM FOR FOUR BIT ADDER

library ieee;
use ieee.std_logic_1164.all;
use work.EE638.all;

entity FOUR_BIT_ADDER is

       port( A: in std_logic_vector(3 downto 0);  --first operand
	          B: in std_logic_vector(3 downto 0);  --second operand
			    CIN: in std_logic;                   --carry into first Full adder
			    SUM: out std_logic_vector(4 downto 0)	); --output 5 bit
				  
end FOUR_BIT_ADDER;


architecture STRUCTURE of FOUR_BIT_ADDER is     ---Architecture description of half Adder

       signal c1,c2,c3 : std_logic;

begin                          
      
		FA0 : FULL_ADDER port map(A(0),B(0),CIN,SUM(0),c1);
		FA1 : FULL_ADDER port map(A(1),B(1),c1,SUM(1),c2);
		FA2 : FULL_ADDER port map(A(2),B(2),c2,SUM(2),c3);
		FA3 : FULL_ADDER port map(A(3),B(3),c3,SUM(3),Sum(4));
		
end STRUCTURE;
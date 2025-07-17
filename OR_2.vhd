--VHDL Program for 2 input OR gate

library ieee;                     --library declaration
use ieee.std_logic_1164.all;


entity OR_2 is
       port(I0, I1 : in std_logic;   --inputs of  OR gate
		      O0 : out std_logic);     --output of  OR gate
end OR_2;

architecture STRUCTURE of OR_2 is   --architecture description of OR gate

begin 
    
	 O0 <= I0 or I1;        
	 
	 
end STRUCTURE;
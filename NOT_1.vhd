library ieee;                     --library declaration
use ieee.std_logic_1164.all;


entity NOT_1 is
       port(I0 : in std_logic;   --inputs of  not gate
		      O0 : out std_logic );     --output of  not gate
end NOT_1;

architecture STRUCTURE of NOT_1 is
begin 
    
	 O0 <= not(I0);        
	 
	 
end STRUCTURE;
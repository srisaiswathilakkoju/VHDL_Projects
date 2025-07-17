
library ieee;
use ieee.std_logic_1164.all;
use work.EE638.all;

entity MULTIPLIER is

      port(A,B : in std_logic_vector(3 downto 0);
		      
           P : out std_logic_vector(7 downto 0));
end MULTIPLIER;


architecture STRUCTURE of MULTIPLIER is

       signal pp0,pp1,pp2,pp3,temp :std_logic_vector(3 downto 0); ---  partial products
		 signal s1,s2,s3 : std_logic_vector(4 downto 0);  ---output of each FBA is stored in these vectors
		 signal cin : std_logic:= '0'; 
		  
		 
begin
      
	   AG0 : AND_2 port map(A(0),B(0),pp0(0));
		AG1 : AND_2 port map(A(1),B(0),pp0(1));
		AG2 : AND_2 port map(A(2),B(0),pp0(2));
		AG3 : AND_2 port map(A(3),B(0),pp0(3));
		
		
		AG4 : AND_2 port map(A(0),B(1),pp1(0));
		AG5 : AND_2 port map(A(1),B(1),pp1(1));
		AG6 : AND_2 port map(A(2),B(1),pp1(2));
		AG7 : AND_2 port map(A(3),B(1),pp1(3));
		 
		AG8  : AND_2 port map(A(0),B(2),pp2(0));
		AG9  : AND_2 port map(A(1),B(2),pp2(1));
		AG10 : AND_2 port map(A(2),B(2),pp2(2));
		AG11 : AND_2 port map(A(3),B(2),pp2(3));
		
	
		AG12  : AND_2 port map(A(0),B(3),pp3(0));
		AG13  : AND_2 port map(A(1),B(3),pp3(1));
		AG14  : AND_2 port map(A(2),B(3),pp3(2));
		AG15  : AND_2 port map(A(3),B(3),pp3(3));
		
		
		
		
		temp <= '0'& pp0(3) & pp0(2) & pp0(1);

      FBA1: FOUR_BIT_ADDER port map (temp,pp1,cin,s1);
		FBA2: FOUR_BIT_ADDER port map (s1(4 downto 1),pp2,cin,s2);
		FBA3: FOUR_BIT_ADDER port map  (s2(4 downto 1),pp3,cin,s3);
		
		P(0) <= pp0(0);
	   P(1) <= s1(0);
		P(2) <= s2(0);
		P(3) <= s3(0);
		P(4) <= s3(1);
		P(5) <= s3(2);
		P(6) <= s3(3);
		P(7) <= s3(4);
		
end STRUCTURE;


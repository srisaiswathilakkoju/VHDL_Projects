---Implementation of Mux_8x2 using 4X1

library ieee;
use ieee.std_logic_1164.all;
use work.EE638.all;


entity MUX_8x2 is

     port(A : in std_logic_vector(1 downto 0);
	       B : in std_logic_vector(1 downto 0);
	       C : in std_logic_vector(1 downto 0);
	       D : in std_logic_vector(1 downto 0);
	       S : in std_logic_vector(1 downto 0);
          O : out std_logic_vector(1 downto 0));
	  
end MUX_8x2;


architecture STRUCTURE of MUX_8x2 is
       
	  signal x0,x1 : std_logic; --outputs of individual 4x1 mux
	  signal I0,I1 : std_logic_vector(3 downto 0);  ---considering vectors for mux inputs to match format of 4x1
begin 
     I0 <= D(0)&C(0)&B(0)&A(0);
	  I1 <= D(1)&C(1)&B(1)&A(1);

     MX1 : MUX_4x1 port map(I0,S,x0);
	  MX2 : MUX_4x1 port map(I1,S,x1);
	  O <= x1 & x0;
	  
end STRUCTURE;
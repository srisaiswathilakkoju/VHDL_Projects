---VHDL program for 1x4 Demux


library ieee;
use ieee.std_logic_1164.all;
use work.EE638.all;


entity DEMUX_1x4 is


    port(I0: in std_logic ;
	      S: in std_logic_vector(1 downto 0);
	      O: out std_logic_vector(3 downto 0));
			
end DEMUX_1x4;

architecture STRUCTURE of DEMUX_1x4 is

         signal x0,x1 : std_logic;
			
begin

     DMX1 :DEMUX_1x2 port map(I0,S(1),x0,x1);
	  DMX2 :DEMUX_1x2 port map(x0,S(0),O(0),O(1));
	  DMX3 :DEMUX_1x2 port map(x1,S(0),O(2),O(3));
	  
	  
end STRUCTURE;
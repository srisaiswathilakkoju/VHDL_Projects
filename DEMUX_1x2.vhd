---VHDL program for 1x2 Demux


library ieee;
use ieee.std_logic_1164.all;
use work.EE638.all;


entity DEMUX_1x2 is


    port(I0,S0: in std_logic ;
	      O0,O1 : out std_logic );
			
end DEMUX_1x2;


architecture STRUCTURE of DEMUX_1x2 is

     signal x: std_logic;
	  
begin
	  
	  NG1 : NOT_1 port map(S0,x);
	  AG1 : AND_2 port map(x,I0,O0);
	  AG2 : AND_2 port map(S0,I0,O1);
	  
end STRUCTURE;
	  
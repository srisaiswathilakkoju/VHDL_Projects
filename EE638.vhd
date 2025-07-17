library ieee;
use ieee.std_logic_1164.all;


package EE638 is

    
      component AND_2 is              --component declaration
	  
       port(I0, I1 : in std_logic;   --inputs of AND gate
		      O0 : out std_logic);     --output of AND gate
      end component;
	   component NOT_1 is
       port(I0 : in std_logic;   --inputs of  not gate
		      O0 : out std_logic );     --output of  not gate
       end component;
		
	   component XOR_2 is             --component declaration
		
       port(I0, I1 : in std_logic;   --inputs of  XOR gate
		      O0 : out std_logic);     --output of  XOR gate
      end component;
		
		component OR_2 is
       port(I0, I1 : in std_logic;   --inputs of  OR gate
		      O0 : out std_logic);     --output of  OR gate
      end component;
		
		component HALF_ADDER is
		port( I0, I1 :in std_logic;    --inputs of half adder
		        S, C : out std_logic);  --sum and carry of half adder
				  
      end component;
		
		component FULL_ADDER is

       port( I0, I1,CIN :in std_logic;    --inputs of FULL adder
		        SUM, COUT : out std_logic);  --sum and carry of FULL adder
				  
      end component;
		component FOUR_BIT_ADDER is

       port( A: in std_logic_vector(3 downto 0);  --first operand
	          B: in std_logic_vector(3 downto 0);  --second operand
			    CIN: in std_logic;                   --carry into first Full adder
			    SUM: out std_logic_vector(4 downto 0)	); --output 5 bit
				  
     end component;
	  component MUX_2x1 is
       port(I0,I1,S0 :in std_logic;
		      O0 :out std_logic);
     end component;
	   
     component MUX_4x1 is
 
        port(I : in std_logic_vector(3 downto 0);
		       S :in std_logic_vector(1 downto 0);
				 O0 :out std_logic);
				 
     end component;
	  component DEMUX_1x2 is


    port(I0,S0: in std_logic ;
	      O0,O1 : out std_logic );
			
    end component;

end package;
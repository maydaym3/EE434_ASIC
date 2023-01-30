
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ADD8 is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type VHDLOUT_TYPE is array (7 downto 0) of std_logic;

end CONV_PACK_ADD8;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ADD8.all;

entity ADD8_DW01_add_0 is

   port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (8 downto 0);  CO : out std_logic);

end ADD8_DW01_add_0;

architecture SYN_rpl of ADD8_DW01_add_0 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port, carry_1_port : std_logic;

begin
   
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           SUM(8), S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => carry_1_port, CO => 
                           carry_2_port, S => SUM(1));
   U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => CI, CO => carry_1_port, S
                           => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ADD8.all;

entity ADD8 is

   port( i_A, i_B : in VHDLOUT_TYPE;  i_C : in std_logic;  o_S : out 
         VHDLOUT_TYPE;  o_C : out std_logic);

end ADD8;

architecture SYN_verilog of ADD8 is

   component ADD8_DW01_add_0
      port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (8 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1003 : std_logic;

begin
   
   n1 <= '0';
   add_1_root_add_7_2 : ADD8_DW01_add_0 port map( A(8) => n1, A(7) => i_A(7), 
                           A(6) => i_A(6), A(5) => i_A(5), A(4) => i_A(4), A(3)
                           => i_A(3), A(2) => i_A(2), A(1) => i_A(1), A(0) => 
                           i_A(0), B(8) => n1, B(7) => i_B(7), B(6) => i_B(6), 
                           B(5) => i_B(5), B(4) => i_B(4), B(3) => i_B(3), B(2)
                           => i_B(2), B(1) => i_B(1), B(0) => i_B(0), CI => i_C
                           , SUM(8) => o_C, SUM(7) => o_S(7), SUM(6) => o_S(6),
                           SUM(5) => o_S(5), SUM(4) => o_S(4), SUM(3) => o_S(3)
                           , SUM(2) => o_S(2), SUM(1) => o_S(1), SUM(0) => 
                           o_S(0), CO => n_1003);

end SYN_verilog;

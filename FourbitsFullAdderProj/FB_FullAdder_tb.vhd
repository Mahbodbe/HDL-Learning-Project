--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:50:53 03/16/2050
-- Design Name:   
-- Module Name:   D:/FourbitsFullAdderProj/FB_FullAdder_tb.vhd
-- Project Name:  FourbitsFullAdderProj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FBFullAdder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY FB_FullAdder_tb IS
END FB_FullAdder_tb;
 
ARCHITECTURE behavior OF FB_FullAdder_tb IS 
    COMPONENT FBFullAdder
    PORT(
         a_in_four_full : IN  std_logic_vector(3 downto 0);
         b_in_four_full : IN  std_logic_vector(3 downto 0);
         c_in_four_full : IN  std_logic;
         c_out_four_full : OUT  std_logic;
         s_out_four_full : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   signal a_in_four_full : std_logic_vector(3 downto 0) := (others => '0');
   signal b_in_four_full : std_logic_vector(3 downto 0) := (others => '0');
   signal c_in_four_full : std_logic := '0';

   signal c_out_four_full : std_logic;
   signal s_out_four_full : std_logic_vector(3 downto 0);
BEGIN
 
   uut: FBFullAdder PORT MAP (
          a_in_four_full => a_in_four_full,
          b_in_four_full => b_in_four_full,
          c_in_four_full => c_in_four_full,
          c_out_four_full => c_out_four_full,
          s_out_four_full => s_out_four_full
        );
   stim_proc: process
   begin		
      wait for 10 ns;
		c_in_four_full <= '0';
		a_in_four_full <= "0000";
		b_in_four_full <= "0000";
		wait for 50 ns;	
		a_in_four_full <= "0001";
		b_in_four_full <= "0001";
		wait for 50 ns;
		a_in_four_full <= "0010";
		b_in_four_full <= "0010";
		wait for 50 ns;
		a_in_four_full <= "0011";
		b_in_four_full <= "0011";
		wait for 50 ns;
		a_in_four_full <= "0100";
		b_in_four_full <= "0100";
		wait for 50 ns;
		a_in_four_full <= "0101";
		b_in_four_full <= "0101";
		wait for 50 ns;
		a_in_four_full <= "0110";
		b_in_four_full <= "0110";
		wait for 50 ns;
		a_in_four_full <= "0111";
		b_in_four_full <= "0111";
		wait for 50 ns;
		a_in_four_full <= "1000";
		b_in_four_full <= "1000";
		wait for 50 ns;
		a_in_four_full <= "1001";
		b_in_four_full <= "1001";
		wait for 50 ns;
		a_in_four_full <= "1010";
		b_in_four_full <= "1010";
		wait for 50 ns;
		a_in_four_full <= "1011";
		b_in_four_full <= "1011";
		wait for 50 ns;
		a_in_four_full <= "1100";
		b_in_four_full <= "1100";
		wait for 50 ns;
		a_in_four_full <= "1101";
		b_in_four_full <= "1101";
		wait for 50 ns;
		a_in_four_full <= "1110";
		b_in_four_full <= "1110";
		wait for 50 ns;
		a_in_four_full <= "1111";
		b_in_four_full <= "1111";
		wait for 50 ns;
		a_in_four_full <= "0001";
		b_in_four_full <= "1111";
		wait for 50 ns;
		a_in_four_full <= "0101";
		b_in_four_full <= "1111";
		wait for 50 ns;
		a_in_four_full <= "1011";
		b_in_four_full <= "1101";
		wait for 50 ns;
		a_in_four_full <= "1111";
		b_in_four_full <= "1111";
		wait for 50 ns;
		a_in_four_full <= "0000";
		b_in_four_full <= "1111";
		wait for 50 ns;
		a_in_four_full <= "1001";
		b_in_four_full <= "0110";
		wait for 50 ns;
		a_in_four_full <= "1101";
		b_in_four_full <= "1001";
		wait for 50 ns;
		a_in_four_full <= "0011";
		b_in_four_full <= "1111";
		wait for 50 ns;
		a_in_four_full <= "1111";
		b_in_four_full <= "1011";
		wait for 50 ns;
		a_in_four_full <= "1010";
		b_in_four_full <= "1000";
		wait for 50 ns;
      wait;
   end process;

END;

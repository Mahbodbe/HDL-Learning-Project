--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:47:18 03/16/2025
-- Design Name:   
-- Module Name:   D:/FullAdderProj/FullAdder_tb.vhd
-- Project Name:  FullAdderProj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FullAdder
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

 
ENTITY FullAdder_tb IS
END FullAdder_tb;
 
ARCHITECTURE behavior OF FullAdder_tb IS 
 
    COMPONENT FullAdder
    PORT(
         a_in_one_full : IN  std_logic;
         b_in_one_full : IN  std_logic;
         c_in_one_full : IN  std_logic;
         c_out_one_full : OUT  std_logic;
         s_out_one_full : OUT  std_logic
        );
    END COMPONENT;
    

   signal a_in_one_full : std_logic := '0';
   signal b_in_one_full : std_logic := '0';
   signal c_in_one_full : std_logic := '0';

   signal c_out_one_full : std_logic;
   signal s_out_one_full : std_logic;
BEGIN
 
   uut: FullAdder PORT MAP (
          a_in_one_full => a_in_one_full,
          b_in_one_full => b_in_one_full,
          c_in_one_full => c_in_one_full,
          c_out_one_full => c_out_one_full,
          s_out_one_full => s_out_one_full
        );

 

   stim_proc: process
   begin		
      wait for 100 ns;	
		
		a_in_one_full <= '0';
		b_in_one_full <= '0';
		c_in_one_full <= '0';
		wait for 100 ns;
		
		a_in_one_full <= '0';
		b_in_one_full <= '0';
		c_in_one_full <= '1';
		wait for 100 ns;
		
		a_in_one_full <= '0';
		b_in_one_full <= '1';
		c_in_one_full <= '0';
		wait for 100 ns;
		
		a_in_one_full <= '0';
		b_in_one_full <= '1';
		c_in_one_full <= '1';
		wait for 100 ns;

		a_in_one_full <= '1';
		b_in_one_full <= '0';
		c_in_one_full <= '0';
		wait for 100 ns;
				
		a_in_one_full <= '1';
		b_in_one_full <= '0';
		c_in_one_full <= '1';
		wait for 100 ns;
		
		
		a_in_one_full <= '1';
		b_in_one_full <= '1';
		c_in_one_full <= '0';
		wait for 100 ns;
		
		a_in_one_full <= '1';
		b_in_one_full <= '1';
		c_in_one_full <= '1';
		wait for 100 ns;
      wait;
   end process;

END;

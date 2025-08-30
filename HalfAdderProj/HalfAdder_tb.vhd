--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:13:07 03/16/2025
-- Design Name:   
-- Module Name:   D:/HalfAdderProj/HalfAdder_tb.vhd
-- Project Name:  HalfAdderProj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: HalfAdder
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

 
ENTITY HalfAdder_tb IS
END HalfAdder_tb;
 
ARCHITECTURE behavior OF HalfAdder_tb IS 
 
 
    COMPONENT HalfAdder
    PORT(
         a_in_half : IN  std_logic;
         b_in_half : IN  std_logic;
         c_out_half : OUT  std_logic;
         s_out_half : OUT  std_logic
        );
    END COMPONENT;
    

   signal a_in_half : std_logic := '0';
   signal b_in_half : std_logic := '0';

   signal c_out_half : std_logic;
   signal s_out_half : std_logic;
 
 
BEGIN
 
   uut: HalfAdder PORT MAP (
          a_in_half => a_in_half,
          b_in_half => b_in_half,
          c_out_half => c_out_half,
          s_out_half => s_out_half
        );
   stim_proc: process
   begin		
      wait for 100 ns;	
		
		a_in_half <= '0';
		b_in_half <= '0';
		wait for 100 ns;	
		
		a_in_half <= '0';
		b_in_half <= '1';
		wait for 100 ns;	
		
		a_in_half <= '1';
		b_in_half <= '0';
		wait for 100 ns;	
		
		a_in_half <= '1';
		b_in_half <= '1';
		wait for 100 ns;	
		
		
      wait;
   end process;

END;

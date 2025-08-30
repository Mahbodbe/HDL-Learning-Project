--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: devider_15_timesim.vhd
-- /___/   /\     Timestamp: Mon May 26 20:45:38 2025
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf devider_15.pcf -rpw 100 -tpw 0 -ar Structure -tm devider_15 -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim devider_15.ncd devider_15_timesim.vhd 
-- Device	: 3s400pq208-4 (PRODUCTION 1.39 2013-10-13)
-- Input file	: devider_15.ncd
-- Output file	: D:\devider_15\netgen\par\devider_15_timesim.vhd
-- # of Entities	: 1
-- Design Name	: devider_15
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity devider_15 is
  port (
    clk : in STD_LOGIC := 'X'; 
    q : out STD_LOGIC 
  );
end devider_15;

architecture Structure of devider_15 is
  signal q_OBUF_39 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal rst : STD_LOGIC; 
  signal s1_1_DXMUX_147 : STD_LOGIC; 
  signal s1_1_DYMUX_131 : STD_LOGIC; 
  signal rst_pack_6 : STD_LOGIC; 
  signal s1_1_SRINV_122 : STD_LOGIC; 
  signal s1_1_CLKINV_121 : STD_LOGIC; 
  signal q_OBUF_DYMUX_159 : STD_LOGIC; 
  signal q_OBUF_CLKINV_157 : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal q_O : STD_LOGIC; 
  signal s1_3_DXMUX_102 : STD_LOGIC; 
  signal s1_3_DYMUX_88 : STD_LOGIC; 
  signal s1_3_SRINV_79 : STD_LOGIC; 
  signal s1_3_CLKINV_78 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal s1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal s2 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
begin
  s1_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => s2(1),
      O => s1_1_DXMUX_147
    );
  s1_1_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X29Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => s1(0),
      O => s1_1_DYMUX_131
    );
  s1_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst_pack_6,
      O => rst
    );
  s1_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst,
      O => s1_1_SRINV_122
    );
  s1_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => s1_1_CLKINV_121
    );
  q_OBUF_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X27Y40",
      PATHPULSE => 605 ps
    )
    port map (
      I => q_OBUF_39,
      O => q_OBUF_DYMUX_159
    );
  q_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y40",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst,
      O => q_OBUF_CLKINV_157
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX0"
    )
    port map (
      I0 => clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 605 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_BUFG_I0_INV
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  q_OBUF : X_OBUF
    generic map(
      LOC => "PAD35"
    )
    port map (
      I => q_O,
      O => q
    );
  s1_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => s2(3),
      O => s1_3_DXMUX_102
    );
  s1_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => s2(2),
      O => s1_3_DYMUX_88
    );
  s1_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst,
      O => s1_3_SRINV_79
    );
  s1_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => s1_3_CLKINV_78
    );
  u1_fa4_halfadder2_Mxor_s_out_half_Result1 : X_LUT4
    generic map(
      INIT => X"6CCC",
      LOC => "SLICE_X28Y10"
    )
    port map (
      ADR0 => s1(1),
      ADR1 => s1(3),
      ADR2 => s1(0),
      ADR3 => s1(2),
      O => s2(3)
    );
  u1_fa3_halfadder2_Mxor_s_out_half_Result1 : X_LUT4
    generic map(
      INIT => X"5FA0",
      LOC => "SLICE_X28Y10"
    )
    port map (
      ADR0 => s1(1),
      ADR1 => VCC,
      ADR2 => s1(0),
      ADR3 => s1(2),
      O => s2(2)
    );
  u5 : X_FF
    generic map(
      LOC => "SLICE_X28Y10",
      INIT => '0'
    )
    port map (
      I => s1_3_DXMUX_102,
      CE => VCC,
      CLK => s1_3_CLKINV_78,
      SET => GND,
      RST => s1_3_SRINV_79,
      O => s1(3)
    );
  u2 : X_FF
    generic map(
      LOC => "SLICE_X29Y10",
      INIT => '0'
    )
    port map (
      I => s1_1_DYMUX_131,
      CE => VCC,
      CLK => s1_1_CLKINV_121,
      SET => GND,
      RST => s1_1_SRINV_122,
      O => s1(0)
    );
  u3 : X_FF
    generic map(
      LOC => "SLICE_X29Y10",
      INIT => '0'
    )
    port map (
      I => s1_1_DXMUX_147,
      CE => VCC,
      CLK => s1_1_CLKINV_121,
      SET => GND,
      RST => s1_1_SRINV_122,
      O => s1(1)
    );
  u4 : X_FF
    generic map(
      LOC => "SLICE_X28Y10",
      INIT => '0'
    )
    port map (
      I => s1_3_DYMUX_88,
      CE => VCC,
      CLK => s1_3_CLKINV_78,
      SET => GND,
      RST => s1_3_SRINV_79,
      O => s1(2)
    );
  rst1 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X29Y10"
    )
    port map (
      ADR0 => s1(0),
      ADR1 => s1(2),
      ADR2 => s1(3),
      ADR3 => s1(1),
      O => rst_pack_6
    );
  u1_fa2_halfadder2_Mxor_s_out_half_Result1 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X29Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => s1(0),
      ADR2 => VCC,
      ADR3 => s1(1),
      O => s2(1)
    );
  u6 : X_FF
    generic map(
      LOC => "SLICE_X27Y40",
      INIT => '0'
    )
    port map (
      I => q_OBUF_DYMUX_159,
      CE => VCC,
      CLK => q_OBUF_CLKINV_157,
      SET => GND,
      RST => GND,
      O => q_OBUF_39
    );
  q_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 605 ps
    )
    port map (
      I => q_OBUF_39,
      O => q_O
    );
  NlwBlock_devider_15_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_devider_15_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;


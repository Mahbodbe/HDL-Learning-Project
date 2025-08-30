--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: devider_map.vhd
-- /___/   /\     Timestamp: Mon May 19 21:29:32 2025
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf devider.pcf -rpw 100 -tpw 0 -ar Structure -tm devider -w -dir netgen/map -ofmt vhdl -sim devider_map.ncd devider_map.vhd 
-- Device	: 3s400pq208-4 (PRODUCTION 1.39 2013-10-13)
-- Input file	: devider_map.ncd
-- Output file	: D:\devider\netgen\map\devider_map.vhd
-- # of Entities	: 1
-- Design Name	: devider
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

entity devider is
  port (
    clk : in STD_LOGIC := 'X'; 
    c : out STD_LOGIC; 
    q : out STD_LOGIC 
  );
end devider;

architecture Structure of devider is
  signal q_OBUF_42 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_43 : STD_LOGIC; 
  signal c_OBUF_44 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal q_O : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal c_O : STD_LOGIC; 
  signal s1_1_DXMUX_158 : STD_LOGIC; 
  signal s1_1_DYMUX_142 : STD_LOGIC; 
  signal c_OBUF_pack_6 : STD_LOGIC; 
  signal s1_1_SRINV_133 : STD_LOGIC; 
  signal s1_1_CLKINV_132 : STD_LOGIC; 
  signal s1_3_DXMUX_113 : STD_LOGIC; 
  signal s1_3_DYMUX_99 : STD_LOGIC; 
  signal s1_3_SRINV_90 : STD_LOGIC; 
  signal s1_3_CLKINV_89 : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal q_OBUF_DYMUX_170 : STD_LOGIC; 
  signal q_OBUF_CLKINV_168 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal s1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal s2 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
begin
  q_OBUF : X_OBUF
    port map (
      I => q_O,
      O => q
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      PATHPULSE => 605 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  c_OBUF : X_OBUF
    port map (
      I => c_O,
      O => c
    );
  s1_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 605 ps
    )
    port map (
      I => s2(1),
      O => s1_1_DXMUX_158
    );
  s1_1_DYMUX : X_INV
    generic map(
      PATHPULSE => 605 ps
    )
    port map (
      I => s1(0),
      O => s1_1_DYMUX_142
    );
  s1_1_YUSED : X_BUF
    generic map(
      PATHPULSE => 605 ps
    )
    port map (
      I => c_OBUF_pack_6,
      O => c_OBUF_44
    );
  s1_1_SRINV : X_BUF
    generic map(
      PATHPULSE => 605 ps
    )
    port map (
      I => c_OBUF_44,
      O => s1_1_SRINV_133
    );
  s1_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => s1_1_CLKINV_132
    );
  s1_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 605 ps
    )
    port map (
      I => s2(3),
      O => s1_3_DXMUX_113
    );
  s1_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 605 ps
    )
    port map (
      I => s2(2),
      O => s1_3_DYMUX_99
    );
  s1_3_SRINV : X_BUF
    generic map(
      PATHPULSE => 605 ps
    )
    port map (
      I => c_OBUF_44,
      O => s1_3_SRINV_90
    );
  s1_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => s1_3_CLKINV_89
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    port map (
      I0 => clk_BUFGP_IBUFG_43,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      PATHPULSE => 605 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  q_OBUF_DYMUX : X_INV
    generic map(
      PATHPULSE => 605 ps
    )
    port map (
      I => q_OBUF_42,
      O => q_OBUF_DYMUX_170
    );
  q_OBUF_CLKINV : X_BUF
    generic map(
      PATHPULSE => 605 ps
    )
    port map (
      I => c_OBUF_44,
      O => q_OBUF_CLKINV_168
    );
  clk_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_IBUFG_43
    );
  u1_fa3_halfadder2_Mxor_s_out_half_Result1 : X_LUT4
    generic map(
      INIT => X"6C6C"
    )
    port map (
      ADR0 => s1(0),
      ADR1 => s1(2),
      ADR2 => s1(1),
      ADR3 => VCC,
      O => s2(2)
    );
  u4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => s1_3_DYMUX_99,
      CE => VCC,
      CLK => s1_3_CLKINV_89,
      SET => GND,
      RST => s1_3_SRINV_90,
      O => s1(2)
    );
  u3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => s1_1_DXMUX_158,
      CE => VCC,
      CLK => s1_1_CLKINV_132,
      SET => GND,
      RST => s1_1_SRINV_133,
      O => s1(1)
    );
  u2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => s1_1_DYMUX_142,
      CE => VCC,
      CLK => s1_1_CLKINV_132,
      SET => GND,
      RST => s1_1_SRINV_133,
      O => s1(0)
    );
  u1_fa4_halfadder2_Mxor_s_out_half_Result1 : X_LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      ADR0 => s1(3),
      ADR1 => s1(2),
      ADR2 => s1(1),
      ADR3 => s1(0),
      O => s2(3)
    );
  u5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => s1_3_DXMUX_113,
      CE => VCC,
      CLK => s1_3_CLKINV_89,
      SET => GND,
      RST => s1_3_SRINV_90,
      O => s1(3)
    );
  rst1 : X_LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      ADR0 => s1(1),
      ADR1 => s1(0),
      ADR2 => s1(3),
      ADR3 => s1(2),
      O => c_OBUF_pack_6
    );
  u1_fa2_halfadder2_Mxor_s_out_half_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => s1(0),
      ADR1 => s1(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => s2(1)
    );
  u6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_OBUF_DYMUX_170,
      CE => VCC,
      CLK => q_OBUF_CLKINV_168,
      SET => GND,
      RST => GND,
      O => q_OBUF_42
    );
  q_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 605 ps
    )
    port map (
      I => q_OBUF_42,
      O => q_O
    );
  c_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 605 ps
    )
    port map (
      I => c_OBUF_44,
      O => c_O
    );
  NlwBlock_devider_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_devider_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;


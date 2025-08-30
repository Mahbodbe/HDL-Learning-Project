--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: moore_1011_timesim.vhd
-- /___/   /\     Timestamp: Mon May 19 22:01:45 2025
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf moore_1011.pcf -rpw 100 -tpw 0 -ar Structure -tm moore_1011 -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim moore_1011.ncd moore_1011_timesim.vhd 
-- Device	: 3s400pq208-4 (PRODUCTION 1.39 2013-10-13)
-- Input file	: moore_1011.ncd
-- Output file	: D:\moore_machine_1011\netgen\par\moore_1011_timesim.vhd
-- # of Entities	: 1
-- Design Name	: moore_1011
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

entity moore_1011 is
  port (
    clk : in STD_LOGIC := 'X'; 
    din : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    dout : out STD_LOGIC 
  );
end moore_1011;

architecture Structure of moore_1011 is
  signal din_IBUF_38 : STD_LOGIC; 
  signal present_state_FSM_FFd1_39 : STD_LOGIC; 
  signal rst_IBUF_40 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal present_state_FSM_FFd3_43 : STD_LOGIC; 
  signal present_state_FSM_FFd2_44 : STD_LOGIC; 
  signal rst_INBUF : STD_LOGIC; 
  signal dout_O : STD_LOGIC; 
  signal present_state_FSM_FFd2_DXMUX_109 : STD_LOGIC; 
  signal present_state_FSM_FFd2_In : STD_LOGIC; 
  signal present_state_FSM_FFd2_DYMUX_97 : STD_LOGIC; 
  signal present_state_FSM_FFd1_In : STD_LOGIC; 
  signal present_state_FSM_FFd2_SRINV_88 : STD_LOGIC; 
  signal present_state_FSM_FFd2_CLKINV_87 : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal present_state_FSM_FFd3_DYMUX_130 : STD_LOGIC; 
  signal present_state_FSM_FFd3_In : STD_LOGIC; 
  signal present_state_FSM_FFd3_SRINV_122 : STD_LOGIC; 
  signal present_state_FSM_FFd3_CLKINV_121 : STD_LOGIC; 
  signal din_INBUF : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD33",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst,
      O => rst_INBUF
    );
  dout_OBUF : X_OBUF
    generic map(
      LOC => "PAD34"
    )
    port map (
      I => dout_O,
      O => dout
    );
  present_state_FSM_FFd2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y47",
      PATHPULSE => 605 ps
    )
    port map (
      I => present_state_FSM_FFd2_In,
      O => present_state_FSM_FFd2_DXMUX_109
    );
  present_state_FSM_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y47",
      PATHPULSE => 605 ps
    )
    port map (
      I => present_state_FSM_FFd1_In,
      O => present_state_FSM_FFd2_DYMUX_97
    );
  present_state_FSM_FFd2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y47",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst_IBUF_40,
      O => present_state_FSM_FFd2_SRINV_88
    );
  present_state_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y47",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => present_state_FSM_FFd2_CLKINV_87
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
  present_state_FSM_FFd3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y46",
      PATHPULSE => 605 ps
    )
    port map (
      I => present_state_FSM_FFd3_In,
      O => present_state_FSM_FFd3_DYMUX_130
    );
  present_state_FSM_FFd3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y46",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst_IBUF_40,
      O => present_state_FSM_FFd3_SRINV_122
    );
  present_state_FSM_FFd3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y46",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => present_state_FSM_FFd3_CLKINV_121
    );
  din_IBUF : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 605 ps
    )
    port map (
      I => din,
      O => din_INBUF
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
  present_state_FSM_FFd3 : X_SFF
    generic map(
      LOC => "SLICE_X26Y46",
      INIT => '0'
    )
    port map (
      I => present_state_FSM_FFd3_DYMUX_130,
      CE => VCC,
      CLK => present_state_FSM_FFd3_CLKINV_121,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => present_state_FSM_FFd3_SRINV_122,
      O => present_state_FSM_FFd3_43
    );
  present_state_FSM_FFd3_In1 : X_LUT4
    generic map(
      INIT => X"CC4C",
      LOC => "SLICE_X26Y46"
    )
    port map (
      ADR0 => present_state_FSM_FFd2_44,
      ADR1 => din_IBUF_38,
      ADR2 => present_state_FSM_FFd3_43,
      ADR3 => present_state_FSM_FFd1_39,
      O => present_state_FSM_FFd3_In
    );
  present_state_FSM_FFd2_In1 : X_LUT4
    generic map(
      INIT => X"2F2C",
      LOC => "SLICE_X26Y47"
    )
    port map (
      ADR0 => present_state_FSM_FFd2_44,
      ADR1 => present_state_FSM_FFd3_43,
      ADR2 => din_IBUF_38,
      ADR3 => present_state_FSM_FFd1_39,
      O => present_state_FSM_FFd2_In
    );
  present_state_FSM_FFd2 : X_SFF
    generic map(
      LOC => "SLICE_X26Y47",
      INIT => '0'
    )
    port map (
      I => present_state_FSM_FFd2_DXMUX_109,
      CE => VCC,
      CLK => present_state_FSM_FFd2_CLKINV_87,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => present_state_FSM_FFd2_SRINV_88,
      O => present_state_FSM_FFd2_44
    );
  din_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 605 ps
    )
    port map (
      I => din_INBUF,
      O => din_IBUF_38
    );
  present_state_FSM_FFd1 : X_SFF
    generic map(
      LOC => "SLICE_X26Y47",
      INIT => '0'
    )
    port map (
      I => present_state_FSM_FFd2_DYMUX_97,
      CE => VCC,
      CLK => present_state_FSM_FFd2_CLKINV_87,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => present_state_FSM_FFd2_SRINV_88,
      O => present_state_FSM_FFd1_39
    );
  present_state_FSM_FFd1_In1 : X_LUT4
    generic map(
      INIT => X"8080",
      LOC => "SLICE_X26Y47"
    )
    port map (
      ADR0 => present_state_FSM_FFd2_44,
      ADR1 => din_IBUF_38,
      ADR2 => present_state_FSM_FFd3_43,
      ADR3 => VCC,
      O => present_state_FSM_FFd1_In
    );
  rst_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD33",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst_INBUF,
      O => rst_IBUF_40
    );
  dout_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 605 ps
    )
    port map (
      I => present_state_FSM_FFd1_39,
      O => dout_O
    );
  NlwBlock_moore_1011_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_moore_1011_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;


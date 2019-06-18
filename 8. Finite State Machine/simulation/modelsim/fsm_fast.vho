-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/26/2019 21:08:52"

-- 
-- Device: Altera EP2C35F672C8 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fsm IS
    PORT (
	sys_clk : IN std_logic;
	rst : IN std_logic;
	bit_str : IN std_logic;
	beep : OUT std_logic
	);
END fsm;

-- Design Ports Information
-- beep	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_str	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sys_clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF fsm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sys_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_bit_str : std_logic;
SIGNAL ww_beep : std_logic;
SIGNAL \sys_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sys_clk~combout\ : std_logic;
SIGNAL \sys_clk~clkctrl_outclk\ : std_logic;
SIGNAL \bit_str~combout\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \state.s1~regout\ : std_logic;
SIGNAL \state~15_combout\ : std_logic;
SIGNAL \state.s2~regout\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \state.s3~regout\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state.s4~regout\ : std_logic;
SIGNAL \ALT_INV_rst~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_sys_clk~clkctrl_outclk\ : std_logic;

BEGIN

ww_sys_clk <= sys_clk;
ww_rst <= rst;
ww_bit_str <= bit_str;
beep <= ww_beep;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sys_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \sys_clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\ALT_INV_rst~clkctrl_outclk\ <= NOT \rst~clkctrl_outclk\;
\ALT_INV_sys_clk~clkctrl_outclk\ <= NOT \sys_clk~clkctrl_outclk\;

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sys_clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sys_clk,
	combout => \sys_clk~combout\);

-- Location: CLKCTRL_G3
\sys_clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sys_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sys_clk~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bit_str~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_bit_str,
	combout => \bit_str~combout\);

-- Location: LCCOMB_X31_Y35_N30
\state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~16_combout\ = (\bit_str~combout\ & (!\state.s2~regout\ & !\state.s4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit_str~combout\,
	datac => \state.s2~regout\,
	datad => \state.s4~regout\,
	combout => \state~16_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G1
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X31_Y35_N31
\state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_sys_clk~clkctrl_outclk\,
	datain => \state~16_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s1~regout\);

-- Location: LCCOMB_X31_Y35_N4
\state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~15_combout\ = (!\bit_str~combout\ & \state.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit_str~combout\,
	datad => \state.s1~regout\,
	combout => \state~15_combout\);

-- Location: LCFF_X31_Y35_N5
\state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_sys_clk~clkctrl_outclk\,
	datain => \state~15_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s2~regout\);

-- Location: LCCOMB_X31_Y35_N26
\state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~14_combout\ = (\bit_str~combout\ & ((\state.s2~regout\) # (\state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit_str~combout\,
	datac => \state.s2~regout\,
	datad => \state.s4~regout\,
	combout => \state~14_combout\);

-- Location: LCFF_X31_Y35_N27
\state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_sys_clk~clkctrl_outclk\,
	datain => \state~14_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s3~regout\);

-- Location: LCCOMB_X31_Y35_N12
\state~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~13_combout\ = (!\bit_str~combout\ & \state.s3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit_str~combout\,
	datad => \state.s3~regout\,
	combout => \state~13_combout\);

-- Location: LCFF_X31_Y35_N13
\state.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_sys_clk~clkctrl_outclk\,
	datain => \state~13_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s4~regout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\beep~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \state.s4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_beep);
END structure;



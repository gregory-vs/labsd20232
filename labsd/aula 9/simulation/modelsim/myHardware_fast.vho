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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/09/2023 20:03:22"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	myHardware IS
    PORT (
	x : IN std_logic_vector(3 DOWNTO 0);
	s : OUT std_logic_vector(11 DOWNTO 0)
	);
END myHardware;

-- Design Ports Information
-- s[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[2]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[3]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[4]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[5]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[6]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[8]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[9]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[10]	=>  Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[11]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- x[2]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[0]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF myHardware IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(11 DOWNTO 0);
SIGNAL \Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~1_cout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~3_cout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~15\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|le5a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le4a\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le3a\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \x~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_x <= x;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X28_Y29_N0
\Mult0|auto_generated|le4a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(2) = LCELL((\x~combout\(3) & (!\x~combout\(2) & ((\x~combout\(1)) # (!\x~combout\(0))))) # (!\x~combout\(3) & (\x~combout\(2) & ((!\x~combout\(0)) # (!\x~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(3),
	datab => \x~combout\(2),
	datac => \x~combout\(1),
	datad => \x~combout\(0),
	combout => \Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X28_Y29_N10
\Mult0|auto_generated|le3a[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(5) = LCELL((!\x~combout\(1) & ((!\x~combout\(0)) # (!\x~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(3),
	datac => \x~combout\(1),
	datad => \x~combout\(0),
	combout => \Mult0|auto_generated|le3a\(5));

-- Location: LCCOMB_X28_Y29_N2
\Mult0|auto_generated|le5a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(2) = LCELL((\x~combout\(1) & !\x~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x~combout\(1),
	datad => \x~combout\(3),
	combout => \Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X28_Y29_N30
\Mult0|auto_generated|le5a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(3) = LCELL((\x~combout\(2) & !\x~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x~combout\(2),
	datad => \x~combout\(3),
	combout => \Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X28_Y29_N12
\Mult0|auto_generated|le4a[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(6) = LCELL(\x~combout\(3) $ (((\x~combout\(2)) # (\x~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(2),
	datac => \x~combout\(1),
	datad => \x~combout\(3),
	combout => \Mult0|auto_generated|le4a\(6));

-- Location: LCCOMB_X28_Y29_N14
\Mult0|auto_generated|le3a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(0) = LCELL(!\x~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x~combout\(1),
	combout => \Mult0|auto_generated|le3a\(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[2]~I\ : cycloneii_io
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
	padio => ww_x(2),
	combout => \x~combout\(2));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[1]~I\ : cycloneii_io
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
	padio => ww_x(1),
	combout => \x~combout\(1));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[3]~I\ : cycloneii_io
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
	padio => ww_x(3),
	combout => \x~combout\(3));

-- Location: LCCOMB_X28_Y29_N8
\Mult0|auto_generated|le4a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(0) = LCELL(\x~combout\(3) $ (((\x~combout\(2)) # (\x~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(2),
	datac => \x~combout\(1),
	datad => \x~combout\(3),
	combout => \Mult0|auto_generated|le4a\(0));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[0]~I\ : cycloneii_io
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
	padio => ww_x(0),
	combout => \x~combout\(0));

-- Location: LCCOMB_X28_Y29_N18
\Mult0|auto_generated|le3a[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(2) = LCELL(!\x~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x~combout\(0),
	combout => \Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X29_Y29_N0
\Mult0|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~0_combout\ = (\Mult0|auto_generated|le4a\(0) & (\Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\Mult0|auto_generated|le4a\(0) & (\Mult0|auto_generated|le3a\(2) & VCC))
-- \Mult0|auto_generated|op_1~1\ = CARRY((\Mult0|auto_generated|le4a\(0) & \Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(0),
	datab => \Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \Mult0|auto_generated|op_1~0_combout\,
	cout => \Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X30_Y29_N0
\Mult0|auto_generated|le3a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(1) = LCELL(!\x~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x~combout\(1),
	combout => \Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X29_Y29_N14
\Mult0|auto_generated|op_3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~1_cout\ = CARRY((\Mult0|auto_generated|le3a\(0) & !\x~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(0),
	datab => \x~combout\(1),
	datad => VCC,
	cout => \Mult0|auto_generated|op_3~1_cout\);

-- Location: LCCOMB_X29_Y29_N16
\Mult0|auto_generated|op_3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~3_cout\ = CARRY((!\Mult0|auto_generated|op_3~1_cout\) # (!\Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~1_cout\,
	cout => \Mult0|auto_generated|op_3~3_cout\);

-- Location: LCCOMB_X29_Y29_N18
\Mult0|auto_generated|op_3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~4_combout\ = ((\Mult0|auto_generated|le4a\(0) $ (\Mult0|auto_generated|op_1~0_combout\ $ (!\Mult0|auto_generated|op_3~3_cout\)))) # (GND)
-- \Mult0|auto_generated|op_3~5\ = CARRY((\Mult0|auto_generated|le4a\(0) & ((\Mult0|auto_generated|op_1~0_combout\) # (!\Mult0|auto_generated|op_3~3_cout\))) # (!\Mult0|auto_generated|le4a\(0) & (\Mult0|auto_generated|op_1~0_combout\ & 
-- !\Mult0|auto_generated|op_3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(0),
	datab => \Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~3_cout\,
	combout => \Mult0|auto_generated|op_3~4_combout\,
	cout => \Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X28_Y29_N28
\Mult0|auto_generated|le4a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(1) = LCELL(\x~combout\(3) $ (((\x~combout\(2) & ((\x~combout\(1)) # (!\x~combout\(0)))) # (!\x~combout\(2) & (\x~combout\(1) & !\x~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(3),
	datab => \x~combout\(2),
	datac => \x~combout\(1),
	datad => \x~combout\(0),
	combout => \Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X28_Y29_N26
\Mult0|auto_generated|le3a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(3) = LCELL(\x~combout\(1) $ (((\x~combout\(0)) # (!\x~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(2),
	datac => \x~combout\(1),
	datad => \x~combout\(0),
	combout => \Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X29_Y29_N2
\Mult0|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~2_combout\ = (\Mult0|auto_generated|le3a\(3) & (!\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|le3a\(3) & ((\Mult0|auto_generated|op_1~1\) # (GND)))
-- \Mult0|auto_generated|op_1~3\ = CARRY((!\Mult0|auto_generated|op_1~1\) # (!\Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~1\,
	combout => \Mult0|auto_generated|op_1~2_combout\,
	cout => \Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X29_Y29_N20
\Mult0|auto_generated|op_3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~6_combout\ = (\Mult0|auto_generated|le4a\(1) & ((\Mult0|auto_generated|op_1~2_combout\ & (\Mult0|auto_generated|op_3~5\ & VCC)) # (!\Mult0|auto_generated|op_1~2_combout\ & (!\Mult0|auto_generated|op_3~5\)))) # 
-- (!\Mult0|auto_generated|le4a\(1) & ((\Mult0|auto_generated|op_1~2_combout\ & (!\Mult0|auto_generated|op_3~5\)) # (!\Mult0|auto_generated|op_1~2_combout\ & ((\Mult0|auto_generated|op_3~5\) # (GND)))))
-- \Mult0|auto_generated|op_3~7\ = CARRY((\Mult0|auto_generated|le4a\(1) & (!\Mult0|auto_generated|op_1~2_combout\ & !\Mult0|auto_generated|op_3~5\)) # (!\Mult0|auto_generated|le4a\(1) & ((!\Mult0|auto_generated|op_3~5\) # 
-- (!\Mult0|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(1),
	datab => \Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~5\,
	combout => \Mult0|auto_generated|op_3~6_combout\,
	cout => \Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X31_Y29_N0
\Mult0|auto_generated|le5a[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(0) = LCELL(GND)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X28_Y29_N22
\Mult0|auto_generated|le3a[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(4) = LCELL((\x~combout\(0) & (((!\x~combout\(2) & !\x~combout\(1))))) # (!\x~combout\(0) & (\x~combout\(3) $ (((!\x~combout\(1)))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(3),
	datab => \x~combout\(2),
	datac => \x~combout\(1),
	datad => \x~combout\(0),
	combout => \Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X29_Y29_N4
\Mult0|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~4_combout\ = ((\Mult0|auto_generated|le4a\(2) $ (\Mult0|auto_generated|le3a\(4) $ (!\Mult0|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|auto_generated|op_1~5\ = CARRY((\Mult0|auto_generated|le4a\(2) & ((\Mult0|auto_generated|le3a\(4)) # (!\Mult0|auto_generated|op_1~3\))) # (!\Mult0|auto_generated|le4a\(2) & (\Mult0|auto_generated|le3a\(4) & !\Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(2),
	datab => \Mult0|auto_generated|le3a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~3\,
	combout => \Mult0|auto_generated|op_1~4_combout\,
	cout => \Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X29_Y29_N22
\Mult0|auto_generated|op_3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~8_combout\ = ((\Mult0|auto_generated|le5a\(0) $ (\Mult0|auto_generated|op_1~4_combout\ $ (!\Mult0|auto_generated|op_3~7\)))) # (GND)
-- \Mult0|auto_generated|op_3~9\ = CARRY((\Mult0|auto_generated|le5a\(0) & ((\Mult0|auto_generated|op_1~4_combout\) # (!\Mult0|auto_generated|op_3~7\))) # (!\Mult0|auto_generated|le5a\(0) & (\Mult0|auto_generated|op_1~4_combout\ & 
-- !\Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(0),
	datab => \Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~7\,
	combout => \Mult0|auto_generated|op_3~8_combout\,
	cout => \Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X28_Y29_N20
\Mult0|auto_generated|le4a[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(3) = LCELL((\x~combout\(1) & (!\x~combout\(2) & !\x~combout\(3))) # (!\x~combout\(1) & ((\x~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(2),
	datac => \x~combout\(1),
	datad => \x~combout\(3),
	combout => \Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X29_Y29_N6
\Mult0|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~6_combout\ = (\Mult0|auto_generated|le3a\(5) & ((\Mult0|auto_generated|le4a\(3) & (\Mult0|auto_generated|op_1~5\ & VCC)) # (!\Mult0|auto_generated|le4a\(3) & (!\Mult0|auto_generated|op_1~5\)))) # (!\Mult0|auto_generated|le3a\(5) 
-- & ((\Mult0|auto_generated|le4a\(3) & (!\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|le4a\(3) & ((\Mult0|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|auto_generated|op_1~7\ = CARRY((\Mult0|auto_generated|le3a\(5) & (!\Mult0|auto_generated|le4a\(3) & !\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|le3a\(5) & ((!\Mult0|auto_generated|op_1~5\) # (!\Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(5),
	datab => \Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~5\,
	combout => \Mult0|auto_generated|op_1~6_combout\,
	cout => \Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X28_Y29_N6
\Mult0|auto_generated|le5a[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(1) = LCELL((\x~combout\(0) & (((!\x~combout\(2) & !\x~combout\(1))) # (!\x~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(3),
	datab => \x~combout\(2),
	datac => \x~combout\(1),
	datad => \x~combout\(0),
	combout => \Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X29_Y29_N24
\Mult0|auto_generated|op_3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~10_combout\ = (\Mult0|auto_generated|op_1~6_combout\ & ((\Mult0|auto_generated|le5a\(1) & (\Mult0|auto_generated|op_3~9\ & VCC)) # (!\Mult0|auto_generated|le5a\(1) & (!\Mult0|auto_generated|op_3~9\)))) # 
-- (!\Mult0|auto_generated|op_1~6_combout\ & ((\Mult0|auto_generated|le5a\(1) & (!\Mult0|auto_generated|op_3~9\)) # (!\Mult0|auto_generated|le5a\(1) & ((\Mult0|auto_generated|op_3~9\) # (GND)))))
-- \Mult0|auto_generated|op_3~11\ = CARRY((\Mult0|auto_generated|op_1~6_combout\ & (!\Mult0|auto_generated|le5a\(1) & !\Mult0|auto_generated|op_3~9\)) # (!\Mult0|auto_generated|op_1~6_combout\ & ((!\Mult0|auto_generated|op_3~9\) # 
-- (!\Mult0|auto_generated|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~6_combout\,
	datab => \Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~9\,
	combout => \Mult0|auto_generated|op_3~10_combout\,
	cout => \Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X28_Y29_N24
\Mult0|auto_generated|le4a[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(4) = LCELL((\x~combout\(2) & (!\x~combout\(1))) # (!\x~combout\(2) & ((\x~combout\(1)) # (\x~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(2),
	datac => \x~combout\(1),
	datad => \x~combout\(3),
	combout => \Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X29_Y29_N8
\Mult0|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~8_combout\ = ((\Mult0|auto_generated|le5a\(2) $ (\Mult0|auto_generated|le4a\(4) $ (!\Mult0|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|auto_generated|op_1~9\ = CARRY((\Mult0|auto_generated|le5a\(2) & ((\Mult0|auto_generated|le4a\(4)) # (!\Mult0|auto_generated|op_1~7\))) # (!\Mult0|auto_generated|le5a\(2) & (\Mult0|auto_generated|le4a\(4) & !\Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(2),
	datab => \Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~7\,
	combout => \Mult0|auto_generated|op_1~8_combout\,
	cout => \Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X30_Y29_N18
\Mult0|auto_generated|le3a[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(6) = LCELL(!\x~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x~combout\(1),
	combout => \Mult0|auto_generated|le3a\(6));

-- Location: LCCOMB_X29_Y29_N26
\Mult0|auto_generated|op_3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~12_combout\ = ((\Mult0|auto_generated|op_1~8_combout\ $ (\Mult0|auto_generated|le3a\(6) $ (!\Mult0|auto_generated|op_3~11\)))) # (GND)
-- \Mult0|auto_generated|op_3~13\ = CARRY((\Mult0|auto_generated|op_1~8_combout\ & ((\Mult0|auto_generated|le3a\(6)) # (!\Mult0|auto_generated|op_3~11\))) # (!\Mult0|auto_generated|op_1~8_combout\ & (\Mult0|auto_generated|le3a\(6) & 
-- !\Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~8_combout\,
	datab => \Mult0|auto_generated|le3a\(6),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~11\,
	combout => \Mult0|auto_generated|op_3~12_combout\,
	cout => \Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X28_Y29_N4
\Mult0|auto_generated|le4a[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(5) = LCELL((!\x~combout\(3) & ((\x~combout\(2)) # (\x~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(2),
	datac => \x~combout\(1),
	datad => \x~combout\(3),
	combout => \Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X29_Y29_N10
\Mult0|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~10_combout\ = (\Mult0|auto_generated|le5a\(3) & ((\Mult0|auto_generated|le4a\(5) & (\Mult0|auto_generated|op_1~9\ & VCC)) # (!\Mult0|auto_generated|le4a\(5) & (!\Mult0|auto_generated|op_1~9\)))) # 
-- (!\Mult0|auto_generated|le5a\(3) & ((\Mult0|auto_generated|le4a\(5) & (!\Mult0|auto_generated|op_1~9\)) # (!\Mult0|auto_generated|le4a\(5) & ((\Mult0|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|auto_generated|op_1~11\ = CARRY((\Mult0|auto_generated|le5a\(3) & (!\Mult0|auto_generated|le4a\(5) & !\Mult0|auto_generated|op_1~9\)) # (!\Mult0|auto_generated|le5a\(3) & ((!\Mult0|auto_generated|op_1~9\) # (!\Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(3),
	datab => \Mult0|auto_generated|le4a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~9\,
	combout => \Mult0|auto_generated|op_1~10_combout\,
	cout => \Mult0|auto_generated|op_1~11\);

-- Location: LCCOMB_X29_Y29_N28
\Mult0|auto_generated|op_3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~14_combout\ = (\Mult0|auto_generated|op_1~10_combout\ & ((\Mult0|auto_generated|le3a\(6) & (\Mult0|auto_generated|op_3~13\ & VCC)) # (!\Mult0|auto_generated|le3a\(6) & (!\Mult0|auto_generated|op_3~13\)))) # 
-- (!\Mult0|auto_generated|op_1~10_combout\ & ((\Mult0|auto_generated|le3a\(6) & (!\Mult0|auto_generated|op_3~13\)) # (!\Mult0|auto_generated|le3a\(6) & ((\Mult0|auto_generated|op_3~13\) # (GND)))))
-- \Mult0|auto_generated|op_3~15\ = CARRY((\Mult0|auto_generated|op_1~10_combout\ & (!\Mult0|auto_generated|le3a\(6) & !\Mult0|auto_generated|op_3~13\)) # (!\Mult0|auto_generated|op_1~10_combout\ & ((!\Mult0|auto_generated|op_3~13\) # 
-- (!\Mult0|auto_generated|le3a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~10_combout\,
	datab => \Mult0|auto_generated|le3a\(6),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~13\,
	combout => \Mult0|auto_generated|op_3~14_combout\,
	cout => \Mult0|auto_generated|op_3~15\);

-- Location: LCCOMB_X28_Y29_N16
\Mult0|auto_generated|le5a[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(4) = LCELL((!\x~combout\(2) & (!\x~combout\(1) & \x~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(2),
	datac => \x~combout\(1),
	datad => \x~combout\(3),
	combout => \Mult0|auto_generated|le5a\(4));

-- Location: LCCOMB_X29_Y29_N12
\Mult0|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~12_combout\ = \Mult0|auto_generated|le4a\(6) $ (\Mult0|auto_generated|op_1~11\ $ (\Mult0|auto_generated|le5a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(6),
	datad => \Mult0|auto_generated|le5a\(4),
	cin => \Mult0|auto_generated|op_1~11\,
	combout => \Mult0|auto_generated|op_1~12_combout\);

-- Location: LCCOMB_X29_Y29_N30
\Mult0|auto_generated|op_3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~16_combout\ = \Mult0|auto_generated|op_1~12_combout\ $ (\Mult0|auto_generated|op_3~15\ $ (\Mult0|auto_generated|le3a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~12_combout\,
	datad => \Mult0|auto_generated|le3a\(6),
	cin => \Mult0|auto_generated|op_3~15\,
	combout => \Mult0|auto_generated|op_3~16_combout\);

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(0));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(1));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[2]~I\ : cycloneii_io
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
	datain => \Mult0|auto_generated|op_3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(2));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[3]~I\ : cycloneii_io
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
	datain => \Mult0|auto_generated|op_3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(3));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[4]~I\ : cycloneii_io
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
	datain => \Mult0|auto_generated|op_3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(4));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[5]~I\ : cycloneii_io
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
	datain => \Mult0|auto_generated|op_3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(5));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[6]~I\ : cycloneii_io
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
	datain => \Mult0|auto_generated|op_3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(6));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[7]~I\ : cycloneii_io
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
	datain => \Mult0|auto_generated|op_3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(7));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[8]~I\ : cycloneii_io
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
	datain => \Mult0|auto_generated|op_3~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(8));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[9]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(9));

-- Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[10]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(10));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[11]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(11));
END structure;



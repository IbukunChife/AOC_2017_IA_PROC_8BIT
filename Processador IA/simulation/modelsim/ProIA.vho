-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "01/12/2018 14:58:45"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ProIA IS
    PORT (
	ProIAClock : IN std_logic;
	ProIAreset : IN std_logic;
	ProIAEnableFlag : IN std_logic;
	out_SystemClock : BUFFER std_logic;
	out_BDReg_reg_escrito : BUFFER std_logic;
	out_BDReg_dado_escrito : BUFFER std_logic_vector(7 DOWNTO 0);
	out_BDDado_lido_A : BUFFER std_logic_vector(7 DOWNTO 0);
	out_BDDado_lido_B : BUFFER std_logic_vector(7 DOWNTO 0);
	out_BDReg_lido_A : BUFFER std_logic_vector(1 DOWNTO 0);
	out_BDReg_lido_B : BUFFER std_logic_vector(1 DOWNTO 0);
	out_PC_entrada : BUFFER std_logic_vector(7 DOWNTO 0);
	out_PC_saida : BUFFER std_logic_vector(7 DOWNTO 0);
	out_PC_clock : BUFFER std_logic;
	out_MEM_INST_address : BUFFER std_logic_vector(7 DOWNTO 0);
	out_MEM_INST_data_out : BUFFER std_logic_vector(7 DOWNTO 0);
	out_AND_A : BUFFER std_logic;
	out_AND_B : BUFFER std_logic;
	out_AND_Result : BUFFER std_logic;
	out_Control_clock : BUFFER std_logic;
	out_Control_opcode : BUFFER std_logic_vector(3 DOWNTO 0);
	out_Control_Pc_flag : BUFFER std_logic;
	out_Control_Pc_Cond : BUFFER std_logic;
	out_Control_lermen : BUFFER std_logic;
	out_Control_EscMem : BUFFER std_logic;
	out_Control_MemParaReg : BUFFER std_logic;
	out_Control_ULAOp : BUFFER std_logic_vector(3 DOWNTO 0);
	out_Control_EscReg : BUFFER std_logic;
	out_Control_Ula_fonteA : BUFFER std_logic;
	out_Control_Ula_fonteB : BUFFER std_logic_vector(1 DOWNTO 0);
	out_Control_Fonte_Pc : BUFFER std_logic_vector(1 DOWNTO 0);
	out_ALU_A : BUFFER std_logic_vector(7 DOWNTO 0);
	out_ALU_B : BUFFER std_logic_vector(7 DOWNTO 0);
	out_ALU_OP : BUFFER std_logic_vector(3 DOWNTO 0);
	out_ALU_zero : BUFFER std_logic;
	out_ALU_result : BUFFER std_logic_vector(7 DOWNTO 0);
	out_Ram_ler_mem : BUFFER std_logic;
	out_Ram_esc_mem : BUFFER std_logic;
	out_Ram_address : BUFFER std_logic_vector(7 DOWNTO 0);
	out_Ram_data_in : BUFFER std_logic_vector(7 DOWNTO 0);
	out_Ram_data_out : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ProIA;

-- Design Ports Information
-- ProIAreset	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_SystemClock	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDReg_reg_escrito	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDReg_dado_escrito[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDReg_dado_escrito[1]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDReg_dado_escrito[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDReg_dado_escrito[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDReg_dado_escrito[4]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDReg_dado_escrito[5]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDReg_dado_escrito[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDReg_dado_escrito[7]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDDado_lido_A[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDDado_lido_A[1]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDDado_lido_A[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDDado_lido_A[3]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDDado_lido_A[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDDado_lido_A[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDDado_lido_A[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDDado_lido_A[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDDado_lido_B[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDDado_lido_B[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDDado_lido_B[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDDado_lido_B[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDDado_lido_B[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDDado_lido_B[5]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDDado_lido_B[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDDado_lido_B[7]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDReg_lido_A[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDReg_lido_A[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDReg_lido_B[0]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_BDReg_lido_B[1]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_entrada[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_entrada[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_entrada[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_entrada[3]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_entrada[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_entrada[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_entrada[6]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_entrada[7]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_saida[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_saida[1]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_saida[2]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_saida[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_saida[4]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_saida[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_saida[6]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_saida[7]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_PC_clock	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_MEM_INST_address[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_MEM_INST_address[1]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_MEM_INST_address[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_MEM_INST_address[3]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_MEM_INST_address[4]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_MEM_INST_address[5]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_MEM_INST_address[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_MEM_INST_address[7]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_MEM_INST_data_out[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_MEM_INST_data_out[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_MEM_INST_data_out[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_MEM_INST_data_out[3]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_MEM_INST_data_out[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_MEM_INST_data_out[5]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_MEM_INST_data_out[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_MEM_INST_data_out[7]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_AND_A	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_AND_B	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_AND_Result	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_clock	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_opcode[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_opcode[1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_opcode[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_opcode[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_Pc_flag	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_Pc_Cond	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_lermen	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_EscMem	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_MemParaReg	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_ULAOp[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_ULAOp[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_ULAOp[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_ULAOp[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_EscReg	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_Ula_fonteA	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_Ula_fonteB[0]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_Ula_fonteB[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_Fonte_Pc[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Control_Fonte_Pc[1]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_A[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_A[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_A[2]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_A[3]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_A[4]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_A[5]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_A[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_A[7]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_B[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_B[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_B[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_B[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_B[4]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_B[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_B[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_B[7]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_OP[0]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_OP[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_OP[2]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_OP[3]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_zero	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_result[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_result[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_result[2]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_result[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_result[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_result[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_result[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ALU_result[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_ler_mem	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_esc_mem	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_address[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_address[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_address[2]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_address[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_address[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_address[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_address[6]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_address[7]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_data_in[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_data_in[1]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_data_in[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_data_in[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_data_in[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_data_in[5]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_data_in[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_data_in[7]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_data_out[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_data_out[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_data_out[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_data_out[3]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_data_out[4]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_data_out[5]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_data_out[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_Ram_data_out[7]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProIAClock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProIAEnableFlag	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ProIA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ProIAClock : std_logic;
SIGNAL ww_ProIAreset : std_logic;
SIGNAL ww_ProIAEnableFlag : std_logic;
SIGNAL ww_out_SystemClock : std_logic;
SIGNAL ww_out_BDReg_reg_escrito : std_logic;
SIGNAL ww_out_BDReg_dado_escrito : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_BDDado_lido_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_BDDado_lido_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_BDReg_lido_A : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_BDReg_lido_B : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_PC_entrada : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_PC_saida : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_PC_clock : std_logic;
SIGNAL ww_out_MEM_INST_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_MEM_INST_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_AND_A : std_logic;
SIGNAL ww_out_AND_B : std_logic;
SIGNAL ww_out_AND_Result : std_logic;
SIGNAL ww_out_Control_clock : std_logic;
SIGNAL ww_out_Control_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_Control_Pc_flag : std_logic;
SIGNAL ww_out_Control_Pc_Cond : std_logic;
SIGNAL ww_out_Control_lermen : std_logic;
SIGNAL ww_out_Control_EscMem : std_logic;
SIGNAL ww_out_Control_MemParaReg : std_logic;
SIGNAL ww_out_Control_ULAOp : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_Control_EscReg : std_logic;
SIGNAL ww_out_Control_Ula_fonteA : std_logic;
SIGNAL ww_out_Control_Ula_fonteB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_Control_Fonte_Pc : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_ALU_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_ALU_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_ALU_OP : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_ALU_zero : std_logic;
SIGNAL ww_out_ALU_result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_Ram_ler_mem : std_logic;
SIGNAL ww_out_Ram_esc_mem : std_logic;
SIGNAL ww_out_Ram_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_Ram_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_Ram_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \ProIAreset~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \ProIAEnableFlag~input_o\ : std_logic;
SIGNAL \ProIAClock~input_o\ : std_logic;
SIGNAL \ProIAClock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \UniControl_component|recv_opcode[0]~9_combout\ : std_logic;
SIGNAL \UniControl_component|recv_opcode~2_combout\ : std_logic;
SIGNAL \UniControl_component|recv_opcode~4_combout\ : std_logic;
SIGNAL \UniControl_component|Mux11~0_combout\ : std_logic;
SIGNAL \UniControl_component|state.estadoS2~q\ : std_logic;
SIGNAL \UniControl_component|Mux12~0_combout\ : std_logic;
SIGNAL \UniControl_component|state.estadoS3~q\ : std_logic;
SIGNAL \UniControl_component|Mux13~0_combout\ : std_logic;
SIGNAL \UniControl_component|ler_men$latch~combout\ : std_logic;
SIGNAL \UniControl_component|ler_men~2_combout\ : std_logic;
SIGNAL \UniControl_component|tempState.estadoS9~0_combout\ : std_logic;
SIGNAL \UniControl_component|tempState.estadoS5~0_combout\ : std_logic;
SIGNAL \UniControl_component|state.estadoS5~q\ : std_logic;
SIGNAL \UniControl_component|Mux34~0_combout\ : std_logic;
SIGNAL \UniControl_component|esc_men$latch~combout\ : std_logic;
SIGNAL \ram8_component|mem~53_combout\ : std_logic;
SIGNAL \ram8_component|mem~17_q\ : std_logic;
SIGNAL \ram8_component|mem~41feeder_combout\ : std_logic;
SIGNAL \ram8_component|mem~54_combout\ : std_logic;
SIGNAL \ram8_component|mem~41_q\ : std_logic;
SIGNAL \ram8_component|mem~49_combout\ : std_logic;
SIGNAL \ram8_component|data_saida[4]~12_combout\ : std_logic;
SIGNAL \UniControl_component|Mux32~0_combout\ : std_logic;
SIGNAL \UniControl_component|Mux32~1_combout\ : std_logic;
SIGNAL \UniControl_component|memParaReg$latch~combout\ : std_logic;
SIGNAL \muxUM_component|saida[4]~4_combout\ : std_logic;
SIGNAL \breg8_component|reg~34_combout\ : std_logic;
SIGNAL \breg8_component|reg~22_q\ : std_logic;
SIGNAL \breg8_component|reg~14feeder_combout\ : std_logic;
SIGNAL \breg8_component|reg~35_combout\ : std_logic;
SIGNAL \breg8_component|reg~14_q\ : std_logic;
SIGNAL \breg8_component|reg~30_combout\ : std_logic;
SIGNAL \UniControl_component|esc_reg~2_combout\ : std_logic;
SIGNAL \UniControl_component|Mux22~0_combout\ : std_logic;
SIGNAL \UniControl_component|Mux17~0_combout\ : std_logic;
SIGNAL \UniControl_component|state.estadoS8~q\ : std_logic;
SIGNAL \UniControl_component|Mux13~1_combout\ : std_logic;
SIGNAL \UniControl_component|state.estadoS4~q\ : std_logic;
SIGNAL \UniControl_component|WideNor2~0_combout\ : std_logic;
SIGNAL \UniControl_component|recv_opcode~8_combout\ : std_logic;
SIGNAL \ram8_component|mem~14_q\ : std_logic;
SIGNAL \ram8_component|mem~38feeder_combout\ : std_logic;
SIGNAL \ram8_component|mem~38_q\ : std_logic;
SIGNAL \ram8_component|mem~46_combout\ : std_logic;
SIGNAL \ram8_component|data_saida[1]~9_combout\ : std_logic;
SIGNAL \muxUM_component|saida[1]~1_combout\ : std_logic;
SIGNAL \breg8_component|reg~19feeder_combout\ : std_logic;
SIGNAL \breg8_component|reg~19_q\ : std_logic;
SIGNAL \breg8_component|reg~11feeder_combout\ : std_logic;
SIGNAL \breg8_component|reg~11_q\ : std_logic;
SIGNAL \breg8_component|reg~27_combout\ : std_logic;
SIGNAL \muxA_component|saida[1]~1_combout\ : std_logic;
SIGNAL \UniControl_component|Mux3~0_combout\ : std_logic;
SIGNAL \UniControl_component|ula_fonteB[0]_783~combout\ : std_logic;
SIGNAL \UniControl_component|Mux4~1_combout\ : std_logic;
SIGNAL \UniControl_component|WideNor0~0_combout\ : std_logic;
SIGNAL \UniControl_component|recv_opcode~6_combout\ : std_logic;
SIGNAL \ram8_component|mem~37_q\ : std_logic;
SIGNAL \ram8_component|mem~13_q\ : std_logic;
SIGNAL \ram8_component|mem~45_combout\ : std_logic;
SIGNAL \ram8_component|data_saida[0]~8_combout\ : std_logic;
SIGNAL \muxUM_component|saida[0]~0_combout\ : std_logic;
SIGNAL \breg8_component|reg~10feeder_combout\ : std_logic;
SIGNAL \breg8_component|reg~10_q\ : std_logic;
SIGNAL \breg8_component|reg~18_q\ : std_logic;
SIGNAL \breg8_component|reg~26_combout\ : std_logic;
SIGNAL \UniControl_component|WideNor3~0_combout\ : std_logic;
SIGNAL \UniControl_component|Mux1~0_combout\ : std_logic;
SIGNAL \UniControl_component|ula_fonteB[1]$latch~combout\ : std_logic;
SIGNAL \muxB_component|Mux7~0_combout\ : std_logic;
SIGNAL \ula_component|aux_mult[0]~feeder_combout\ : std_logic;
SIGNAL \UniControl_component|Mux24~0_combout\ : std_logic;
SIGNAL \UniControl_component|Mux24~2_combout\ : std_logic;
SIGNAL \UniControl_component|Mux24~1_combout\ : std_logic;
SIGNAL \UniControl_component|Mux26~4_combout\ : std_logic;
SIGNAL \UniControl_component|Mux24~3_combout\ : std_logic;
SIGNAL \UniControl_component|ULAop[0]$latch~combout\ : std_logic;
SIGNAL \UniControl_component|Mux37~3_combout\ : std_logic;
SIGNAL \UniControl_component|Mux30~0_combout\ : std_logic;
SIGNAL \UniControl_component|ULAop[3]$latch~combout\ : std_logic;
SIGNAL \UniControl_component|recv_opcode~11_combout\ : std_logic;
SIGNAL \muxA_component|saida[7]~7_combout\ : std_logic;
SIGNAL \UniControl_component|Mux28~0_combout\ : std_logic;
SIGNAL \UniControl_component|ULAop[2]$latch~combout\ : std_logic;
SIGNAL \UniControl_component|ULAop[2]~9_combout\ : std_logic;
SIGNAL \UniControl_component|ULAop[3]~8_combout\ : std_logic;
SIGNAL \UniControl_component|ULAop[1]~10_combout\ : std_logic;
SIGNAL \ula_component|resultado[1]~0_combout\ : std_logic;
SIGNAL \UniControl_component|ULAop[0]~11_combout\ : std_logic;
SIGNAL \ula_component|resultado[1]~1_combout\ : std_logic;
SIGNAL \ula_component|resultado[1]~3_combout\ : std_logic;
SIGNAL \ula_component|resultado[1]~2_combout\ : std_logic;
SIGNAL \muxB_component|Mux1~0_combout\ : std_logic;
SIGNAL \muxA_component|saida[5]~5_combout\ : std_logic;
SIGNAL \muxB_component|Mux3~0_combout\ : std_logic;
SIGNAL \muxA_component|saida[3]~3_combout\ : std_logic;
SIGNAL \ram8_component|mem~39_q\ : std_logic;
SIGNAL \ram8_component|mem~15_q\ : std_logic;
SIGNAL \ram8_component|mem~47_combout\ : std_logic;
SIGNAL \ram8_component|data_saida[2]~10_combout\ : std_logic;
SIGNAL \muxUM_component|saida[2]~2_combout\ : std_logic;
SIGNAL \breg8_component|reg~12feeder_combout\ : std_logic;
SIGNAL \breg8_component|reg~12_q\ : std_logic;
SIGNAL \breg8_component|reg~20feeder_combout\ : std_logic;
SIGNAL \breg8_component|reg~20_q\ : std_logic;
SIGNAL \breg8_component|reg~28_combout\ : std_logic;
SIGNAL \muxA_component|saida[2]~2_combout\ : std_logic;
SIGNAL \muxB_component|Mux5~0_combout\ : std_logic;
SIGNAL \ula_component|cont~5_combout\ : std_logic;
SIGNAL \ula_component|resultado~11_combout\ : std_logic;
SIGNAL \muxA_component|saida[0]~0_combout\ : std_logic;
SIGNAL \ula_component|cont~0_combout\ : std_logic;
SIGNAL \ula_component|cont~2_combout\ : std_logic;
SIGNAL \ula_component|cont~4_combout\ : std_logic;
SIGNAL \ula_component|resultado~12_combout\ : std_logic;
SIGNAL \ula_component|resultado[1]~6_combout\ : std_logic;
SIGNAL \ram8_component|mem~40feeder_combout\ : std_logic;
SIGNAL \ram8_component|mem~40_q\ : std_logic;
SIGNAL \ram8_component|mem~16_q\ : std_logic;
SIGNAL \ram8_component|mem~48_combout\ : std_logic;
SIGNAL \ram8_component|data_saida[3]~11_combout\ : std_logic;
SIGNAL \muxUM_component|saida[3]~3_combout\ : std_logic;
SIGNAL \breg8_component|reg~13_q\ : std_logic;
SIGNAL \breg8_component|reg~21feeder_combout\ : std_logic;
SIGNAL \breg8_component|reg~21_q\ : std_logic;
SIGNAL \breg8_component|reg~29_combout\ : std_logic;
SIGNAL \muxB_component|Mux4~0_combout\ : std_logic;
SIGNAL \ula_component|cont~7_combout\ : std_logic;
SIGNAL \ula_component|cont~9_combout\ : std_logic;
SIGNAL \ula_component|resultado~15_combout\ : std_logic;
SIGNAL \ula_component|cont~6_combout\ : std_logic;
SIGNAL \ula_component|cont~8_combout\ : std_logic;
SIGNAL \ula_component|resultado~16_combout\ : std_logic;
SIGNAL \ram8_component|mem~42feeder_combout\ : std_logic;
SIGNAL \ram8_component|mem~42_q\ : std_logic;
SIGNAL \ram8_component|mem~18_q\ : std_logic;
SIGNAL \ram8_component|mem~50_combout\ : std_logic;
SIGNAL \ram8_component|data_saida[5]~13_combout\ : std_logic;
SIGNAL \muxUM_component|saida[5]~5_combout\ : std_logic;
SIGNAL \breg8_component|reg~23feeder_combout\ : std_logic;
SIGNAL \breg8_component|reg~23_q\ : std_logic;
SIGNAL \breg8_component|reg~15_q\ : std_logic;
SIGNAL \breg8_component|reg~31_combout\ : std_logic;
SIGNAL \muxB_component|Mux2~0_combout\ : std_logic;
SIGNAL \ula_component|cont~11_combout\ : std_logic;
SIGNAL \ula_component|resultado~17_combout\ : std_logic;
SIGNAL \ula_component|cont~10_combout\ : std_logic;
SIGNAL \ula_component|resultado~18_combout\ : std_logic;
SIGNAL \ram8_component|mem~43_q\ : std_logic;
SIGNAL \ram8_component|mem~19_q\ : std_logic;
SIGNAL \ram8_component|mem~51_combout\ : std_logic;
SIGNAL \ram8_component|data_saida[6]~14_combout\ : std_logic;
SIGNAL \muxUM_component|saida[6]~6_combout\ : std_logic;
SIGNAL \breg8_component|reg~24feeder_combout\ : std_logic;
SIGNAL \breg8_component|reg~24_q\ : std_logic;
SIGNAL \breg8_component|reg~16feeder_combout\ : std_logic;
SIGNAL \breg8_component|reg~16_q\ : std_logic;
SIGNAL \breg8_component|reg~32_combout\ : std_logic;
SIGNAL \muxA_component|saida[6]~6_combout\ : std_logic;
SIGNAL \ula_component|cont~13_combout\ : std_logic;
SIGNAL \ula_component|resultado~19_combout\ : std_logic;
SIGNAL \ula_component|cont~12_combout\ : std_logic;
SIGNAL \ula_component|resultado~20_combout\ : std_logic;
SIGNAL \ram8_component|mem~44feeder_combout\ : std_logic;
SIGNAL \ram8_component|mem~44_q\ : std_logic;
SIGNAL \ram8_component|mem~20_q\ : std_logic;
SIGNAL \ram8_component|mem~52_combout\ : std_logic;
SIGNAL \ram8_component|data_saida[7]~15_combout\ : std_logic;
SIGNAL \muxUM_component|saida[7]~7_combout\ : std_logic;
SIGNAL \breg8_component|reg~25feeder_combout\ : std_logic;
SIGNAL \breg8_component|reg~25_q\ : std_logic;
SIGNAL \breg8_component|reg~17feeder_combout\ : std_logic;
SIGNAL \breg8_component|reg~17_q\ : std_logic;
SIGNAL \breg8_component|reg~33_combout\ : std_logic;
SIGNAL \muxB_component|Mux0~0_combout\ : std_logic;
SIGNAL \UniControl_component|ula_fonteA~1_combout\ : std_logic;
SIGNAL \ula_component|aux_dado~1_combout\ : std_logic;
SIGNAL \ula_component|aux_dado[5]~feeder_combout\ : std_logic;
SIGNAL \ula_component|aux_dado~0_combout\ : std_logic;
SIGNAL \ula_component|aux_dado[4]~feeder_combout\ : std_logic;
SIGNAL \ula_component|aux_dado[3]~feeder_combout\ : std_logic;
SIGNAL \ula_component|aux_dado[2]~feeder_combout\ : std_logic;
SIGNAL \ula_component|aux_dado[1]~feeder_combout\ : std_logic;
SIGNAL \ula_component|aux_dado[0]~feeder_combout\ : std_logic;
SIGNAL \ula_component|resultado[1]~21_combout\ : std_logic;
SIGNAL \ula_component|cont~57_combout\ : std_logic;
SIGNAL \ula_component|cont~67_combout\ : std_logic;
SIGNAL \ula_component|aux_mult[10]~0_combout\ : std_logic;
SIGNAL \ula_component|mult~1_combout\ : std_logic;
SIGNAL \ula_component|aux_mult~2_combout\ : std_logic;
SIGNAL \ula_component|cont~14_combout\ : std_logic;
SIGNAL \ula_component|cont~15_combout\ : std_logic;
SIGNAL \ula_component|mult~3_combout\ : std_logic;
SIGNAL \ula_component|cont~26_combout\ : std_logic;
SIGNAL \ula_component|mult~0_combout\ : std_logic;
SIGNAL \ula_component|cont~25_combout\ : std_logic;
SIGNAL \ula_component|cont~27_combout\ : std_logic;
SIGNAL \ula_component|aux_mult~6_combout\ : std_logic;
SIGNAL \ula_component|cont~53_combout\ : std_logic;
SIGNAL \ula_component|cont~50_combout\ : std_logic;
SIGNAL \ula_component|cont~16_combout\ : std_logic;
SIGNAL \ula_component|cont~17_combout\ : std_logic;
SIGNAL \ula_component|cont~18_combout\ : std_logic;
SIGNAL \ula_component|cont~19_combout\ : std_logic;
SIGNAL \ula_component|cont~20_combout\ : std_logic;
SIGNAL \ula_component|cont~21_combout\ : std_logic;
SIGNAL \ula_component|cont~22_combout\ : std_logic;
SIGNAL \ula_component|cont~23_combout\ : std_logic;
SIGNAL \ula_component|cont~24_combout\ : std_logic;
SIGNAL \ula_component|cont~33_combout\ : std_logic;
SIGNAL \muxB_component|Mux5~1_combout\ : std_logic;
SIGNAL \ula_component|cont~30_combout\ : std_logic;
SIGNAL \ula_component|cont~31_combout\ : std_logic;
SIGNAL \UniControl_component|ula_fonteB[0]~2_combout\ : std_logic;
SIGNAL \UniControl_component|ula_fonteB[1]~3_combout\ : std_logic;
SIGNAL \ula_component|cont~32_combout\ : std_logic;
SIGNAL \ula_component|cont~29_combout\ : std_logic;
SIGNAL \ula_component|cont~34_combout\ : std_logic;
SIGNAL \ula_component|cont~35_combout\ : std_logic;
SIGNAL \ula_component|cont~36_combout\ : std_logic;
SIGNAL \ula_component|cont~37_combout\ : std_logic;
SIGNAL \ula_component|cont~38_combout\ : std_logic;
SIGNAL \ula_component|cont~39_combout\ : std_logic;
SIGNAL \ula_component|cont~40_combout\ : std_logic;
SIGNAL \ula_component|cont~41_combout\ : std_logic;
SIGNAL \ula_component|cont~42_combout\ : std_logic;
SIGNAL \ula_component|cont~43_combout\ : std_logic;
SIGNAL \ula_component|cont~44_combout\ : std_logic;
SIGNAL \ula_component|cont~45_combout\ : std_logic;
SIGNAL \ula_component|cont~46_combout\ : std_logic;
SIGNAL \ula_component|cont~47_combout\ : std_logic;
SIGNAL \ula_component|cont~48_combout\ : std_logic;
SIGNAL \ula_component|cont~49_combout\ : std_logic;
SIGNAL \ula_component|cont~66_combout\ : std_logic;
SIGNAL \ula_component|cont~69_combout\ : std_logic;
SIGNAL \ula_component|aux_mult~7_combout\ : std_logic;
SIGNAL \ula_component|mult~4_combout\ : std_logic;
SIGNAL \ula_component|cont~74_combout\ : std_logic;
SIGNAL \ula_component|aux_mult~8_combout\ : std_logic;
SIGNAL \ula_component|cont~54_combout\ : std_logic;
SIGNAL \ula_component|aux_mult~9_combout\ : std_logic;
SIGNAL \ula_component|cont~55_combout\ : std_logic;
SIGNAL \ula_component|mult~2_combout\ : std_logic;
SIGNAL \ula_component|aux_mult~11_combout\ : std_logic;
SIGNAL \ula_component|cont~75_combout\ : std_logic;
SIGNAL \ula_component|cont~72_combout\ : std_logic;
SIGNAL \ula_component|cont~73_combout\ : std_logic;
SIGNAL \ula_component|aux_mult~3_combout\ : std_logic;
SIGNAL \ula_component|aux_mult~4_combout\ : std_logic;
SIGNAL \ula_component|cont~68_combout\ : std_logic;
SIGNAL \ula_component|cont~70_combout\ : std_logic;
SIGNAL \ula_component|aux_mult~5_combout\ : std_logic;
SIGNAL \ula_component|cont~28_combout\ : std_logic;
SIGNAL \ula_component|cont~51_combout\ : std_logic;
SIGNAL \ula_component|cont~52_combout\ : std_logic;
SIGNAL \ula_component|cont~71_combout\ : std_logic;
SIGNAL \ula_component|aux_mult~1_combout\ : std_logic;
SIGNAL \ula_component|cont~58_combout\ : std_logic;
SIGNAL \ula_component|cont~61_combout\ : std_logic;
SIGNAL \ula_component|cont~62_combout\ : std_logic;
SIGNAL \ula_component|cont~59_combout\ : std_logic;
SIGNAL \ula_component|cont~60_combout\ : std_logic;
SIGNAL \ula_component|cont~63_combout\ : std_logic;
SIGNAL \ula_component|cont~64_combout\ : std_logic;
SIGNAL \ula_component|cont~56_combout\ : std_logic;
SIGNAL \ula_component|cont~65_combout\ : std_logic;
SIGNAL \ula_component|cont~q\ : std_logic;
SIGNAL \ula_component|cont~1_combout\ : std_logic;
SIGNAL \ula_component|cont~3_combout\ : std_logic;
SIGNAL \ula_component|resultado~9_combout\ : std_logic;
SIGNAL \ula_component|resultado~10_combout\ : std_logic;
SIGNAL \muxPUJ_component|Mux2~0_combout\ : std_logic;
SIGNAL \muxPUJ_component|saida[2]~10_combout\ : std_logic;
SIGNAL \ula_component|zero~0_combout\ : std_logic;
SIGNAL \ula_component|LessThan0~0_combout\ : std_logic;
SIGNAL \ula_component|LessThan0~1_combout\ : std_logic;
SIGNAL \ula_component|LessThan0~2_combout\ : std_logic;
SIGNAL \ula_component|Equal2~0_combout\ : std_logic;
SIGNAL \ula_component|zero~1_combout\ : std_logic;
SIGNAL \ula_component|Equal2~1_combout\ : std_logic;
SIGNAL \ula_component|Equal7~0_combout\ : std_logic;
SIGNAL \ula_component|Equal7~1_combout\ : std_logic;
SIGNAL \ula_component|Equal7~2_combout\ : std_logic;
SIGNAL \ula_component|Equal7~3_combout\ : std_logic;
SIGNAL \ula_component|Equal7~4_combout\ : std_logic;
SIGNAL \ula_component|zero~2_combout\ : std_logic;
SIGNAL \ula_component|zero~q\ : std_logic;
SIGNAL \Or_component|R~combout\ : std_logic;
SIGNAL \UniControl_component|recv_opcode~10_combout\ : std_logic;
SIGNAL \UniControl_component|Mux26~1_combout\ : std_logic;
SIGNAL \UniControl_component|Mux26~2_combout\ : std_logic;
SIGNAL \UniControl_component|Mux26~0_combout\ : std_logic;
SIGNAL \UniControl_component|Mux26~3_combout\ : std_logic;
SIGNAL \UniControl_component|ULAop[1]$latch~combout\ : std_logic;
SIGNAL \ula_component|Equal2~2_combout\ : std_logic;
SIGNAL \ula_component|resultado~4_combout\ : std_logic;
SIGNAL \ula_component|resultado~5_combout\ : std_logic;
SIGNAL \muxPUJ_component|Mux0~0_combout\ : std_logic;
SIGNAL \muxPUJ_component|saida[0]~8_combout\ : std_logic;
SIGNAL \UniControl_component|recv_opcode~5_combout\ : std_logic;
SIGNAL \UniControl_component|Mux4~0_combout\ : std_logic;
SIGNAL \UniControl_component|Mux4~2_combout\ : std_logic;
SIGNAL \UniControl_component|ula_fonteB[0]$latch~combout\ : std_logic;
SIGNAL \muxB_component|Mux6~0_combout\ : std_logic;
SIGNAL \ula_component|mult~5_combout\ : std_logic;
SIGNAL \ula_component|aux_mult~10_combout\ : std_logic;
SIGNAL \ula_component|aux_mult~15_combout\ : std_logic;
SIGNAL \ula_component|aux_mult[6]~feeder_combout\ : std_logic;
SIGNAL \ula_component|aux_mult[5]~feeder_combout\ : std_logic;
SIGNAL \ula_component|aux_mult[4]~feeder_combout\ : std_logic;
SIGNAL \ula_component|mult[5]~feeder_combout\ : std_logic;
SIGNAL \ula_component|aux_mult[3]~feeder_combout\ : std_logic;
SIGNAL \ula_component|aux_mult[2]~feeder_combout\ : std_logic;
SIGNAL \ula_component|aux_mult[1]~feeder_combout\ : std_logic;
SIGNAL \ula_component|resultado~7_combout\ : std_logic;
SIGNAL \ula_component|resultado~8_combout\ : std_logic;
SIGNAL \muxPUJ_component|Mux1~0_combout\ : std_logic;
SIGNAL \muxPUJ_component|saida[1]~9_combout\ : std_logic;
SIGNAL \UniControl_component|recv_opcode~7_combout\ : std_logic;
SIGNAL \UniControl_component|Mux20~1_combout\ : std_logic;
SIGNAL \UniControl_component|Mux37~2_combout\ : std_logic;
SIGNAL \UniControl_component|Mux20~0_combout\ : std_logic;
SIGNAL \UniControl_component|Mux20~2_combout\ : std_logic;
SIGNAL \UniControl_component|ula_fonteA$latch~combout\ : std_logic;
SIGNAL \muxA_component|saida[4]~4_combout\ : std_logic;
SIGNAL \ula_component|resultado~13_combout\ : std_logic;
SIGNAL \ula_component|resultado~14_combout\ : std_logic;
SIGNAL \muxPUJ_component|Mux4~0_combout\ : std_logic;
SIGNAL \muxPUJ_component|saida[4]~12_combout\ : std_logic;
SIGNAL \rom8_component|data[5]~19_combout\ : std_logic;
SIGNAL \UniControl_component|tempState.estadoS9~1_combout\ : std_logic;
SIGNAL \UniControl_component|state.estadoS9~q\ : std_logic;
SIGNAL \UniControl_component|Mux38~0_combout\ : std_logic;
SIGNAL \UniControl_component|pc_flag$latch~combout\ : std_logic;
SIGNAL \UniControl_component|pc_flag~1_combout\ : std_logic;
SIGNAL \muxPUJ_component|Mux6~0_combout\ : std_logic;
SIGNAL \muxPUJ_component|saida[6]~14_combout\ : std_logic;
SIGNAL \rom8_component|data[6]~20_combout\ : std_logic;
SIGNAL \UniControl_component|recv_opcode~3_combout\ : std_logic;
SIGNAL \UniControl_component|Mux6~0_combout\ : std_logic;
SIGNAL \UniControl_component|esc_reg_952~combout\ : std_logic;
SIGNAL \UniControl_component|pc_cond~2_combout\ : std_logic;
SIGNAL \muxPUJ_component|Mux7~0_combout\ : std_logic;
SIGNAL \muxPUJ_component|saida[7]~15_combout\ : std_logic;
SIGNAL \rom8_component|Mux1~0_combout\ : std_logic;
SIGNAL \muxPUJ_component|Mux3~0_combout\ : std_logic;
SIGNAL \muxPUJ_component|saida[3]~11_combout\ : std_logic;
SIGNAL \rom8_component|data[7]~21_combout\ : std_logic;
SIGNAL \UniControl_component|Mux37~0_combout\ : std_logic;
SIGNAL \UniControl_component|Mux37~1_combout\ : std_logic;
SIGNAL \UniControl_component|pc_cond$latch~combout\ : std_logic;
SIGNAL \muxPUJ_component|Mux8~0_combout\ : std_logic;
SIGNAL \muxPUJ_component|Mux5~0_combout\ : std_logic;
SIGNAL \muxPUJ_component|saida[5]~13_combout\ : std_logic;
SIGNAL \rom8_component|data[4]~18_combout\ : std_logic;
SIGNAL \UniControl_component|recv_opcode~1_combout\ : std_logic;
SIGNAL \UniControl_component|Mux15~0_combout\ : std_logic;
SIGNAL \UniControl_component|state.estadoS6~q\ : std_logic;
SIGNAL \UniControl_component|Mux16~0_combout\ : std_logic;
SIGNAL \UniControl_component|state.estadoS7~q\ : std_logic;
SIGNAL \UniControl_component|Mux9~2_combout\ : std_logic;
SIGNAL \UniControl_component|Mux9~3_combout\ : std_logic;
SIGNAL \UniControl_component|Mux9~4_combout\ : std_logic;
SIGNAL \UniControl_component|Mux9~1_combout\ : std_logic;
SIGNAL \UniControl_component|Mux9~0_combout\ : std_logic;
SIGNAL \UniControl_component|Mux9~5_combout\ : std_logic;
SIGNAL \UniControl_component|state.estadoS0~q\ : std_logic;
SIGNAL \UniControl_component|Mux10~0_combout\ : std_logic;
SIGNAL \UniControl_component|state.estadoS1~q\ : std_logic;
SIGNAL \UniControl_component|WideNor0~combout\ : std_logic;
SIGNAL \UniControl_component|WideNor2~combout\ : std_logic;
SIGNAL \UniControl_component|WideNor3~combout\ : std_logic;
SIGNAL \UniControl_component|Mux21~2_combout\ : std_logic;
SIGNAL \UniControl_component|Mux21~3_combout\ : std_logic;
SIGNAL \UniControl_component|Mux21~0_combout\ : std_logic;
SIGNAL \UniControl_component|Mux21~1_combout\ : std_logic;
SIGNAL \UniControl_component|Mux21~4_combout\ : std_logic;
SIGNAL \UniControl_component|Mux22~1_combout\ : std_logic;
SIGNAL \UniControl_component|esc_reg$latch~combout\ : std_logic;
SIGNAL \rom8_component|Mux2~0_combout\ : std_logic;
SIGNAL \rom8_component|Mux4~0_combout\ : std_logic;
SIGNAL \rom8_component|Mux6~0_combout\ : std_logic;
SIGNAL \rom8_component|Mux8~0_combout\ : std_logic;
SIGNAL \And_component|R~combout\ : std_logic;
SIGNAL \MDR_component|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ula_component|aux_mult\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ula_component|aux_dado\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \breg8_component|SaidaB\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULAout_component|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \breg8_component|SaidaA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ula_component|resultado\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pc_component|saidaPC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ula_component|mult\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \UniControl_component|recv_opcode\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_ProIAEnableFlag~input_o\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_esc_men$latch~combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_ULAop[0]$latch~combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_ULAop[1]$latch~combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_ULAop[2]$latch~combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_ULAop[3]$latch~combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_pc_flag$latch~combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_recv_opcode\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UniControl_component|ALT_INV_ler_men$latch~combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_esc_reg$latch~combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_ula_fonteB[1]$latch~combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_ula_fonteB[0]$latch~combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_ula_fonteB[0]_783~combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_ula_fonteA$latch~combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_pc_cond$latch~combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_memParaReg$latch~combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_esc_reg_952~combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_aux_dado\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ula_component|ALT_INV_mult~5_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_aux_mult~8_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~74_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_mult~4_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_aux_mult~6_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_mult~3_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_mult~2_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_aux_mult~4_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_aux_mult~2_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_mult~1_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~73_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~72_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~71_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~70_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~69_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~68_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~67_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_aux_mult[10]~0_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~66_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~64_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~63_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~62_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~61_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~60_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~59_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~58_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~57_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_resultado[1]~21_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~56_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~55_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~54_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~53_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~52_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~51_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~50_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~49_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~48_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~47_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~46_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~45_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~44_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~43_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~42_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~41_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~40_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~39_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~38_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~37_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~36_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~35_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~34_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~33_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~32_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_ula_fonteB[1]~3_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_ula_fonteB[0]~2_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~31_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~30_combout\ : std_logic;
SIGNAL \muxB_component|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_ula_fonteA~1_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~29_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_mult\ : std_logic_vector(14 DOWNTO 8);
SIGNAL \ula_component|ALT_INV_cont~28_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~27_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~26_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~25_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_mult~0_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~24_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~23_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~22_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~21_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~20_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~19_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~18_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~17_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~16_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_aux_mult\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \ula_component|ALT_INV_cont~15_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~14_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux24~3_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux24~2_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux26~4_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux26~3_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux26~2_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_recv_opcode~11_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_recv_opcode~10_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux37~3_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux38~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_tempState.estadoS9~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_recv_opcode[0]~9_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_resultado~19_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~13_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~12_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_resultado~17_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~11_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~10_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_resultado~15_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~9_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~8_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_resultado~13_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~7_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~6_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_resultado~11_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~5_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~4_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_resultado~9_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~3_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~2_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_resultado~7_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~1_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~0_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_resultado~4_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_resultado[1]~3_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_resultado[1]~2_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_resultado[1]~1_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_resultado[1]~0_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~q\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux20~2_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux37~2_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_WideNor3~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_WideNor2~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_recv_opcode~8_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_recv_opcode~7_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_recv_opcode~6_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_recv_opcode~5_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux37~1_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux37~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_zero~1_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_Equal7~4_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_Equal7~3_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_Equal7~2_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_zero~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_ULAop[0]~11_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_ULAop[1]~10_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_ULAop[2]~9_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_ULAop[3]~8_combout\ : std_logic;
SIGNAL \muxPUJ_component|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \muxPUJ_component|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \muxPUJ_component|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \muxPUJ_component|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \muxPUJ_component|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \muxPUJ_component|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \muxPUJ_component|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \muxPUJ_component|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \muxPUJ_component|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_pc_flag~1_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_pc_cond~2_combout\ : std_logic;
SIGNAL \breg8_component|ALT_INV_reg~17_q\ : std_logic;
SIGNAL \breg8_component|ALT_INV_reg~25_q\ : std_logic;
SIGNAL \breg8_component|ALT_INV_reg~16_q\ : std_logic;
SIGNAL \breg8_component|ALT_INV_reg~24_q\ : std_logic;
SIGNAL \breg8_component|ALT_INV_reg~15_q\ : std_logic;
SIGNAL \breg8_component|ALT_INV_reg~23_q\ : std_logic;
SIGNAL \breg8_component|ALT_INV_reg~14_q\ : std_logic;
SIGNAL \breg8_component|ALT_INV_reg~22_q\ : std_logic;
SIGNAL \breg8_component|ALT_INV_reg~13_q\ : std_logic;
SIGNAL \breg8_component|ALT_INV_reg~21_q\ : std_logic;
SIGNAL \breg8_component|ALT_INV_reg~12_q\ : std_logic;
SIGNAL \breg8_component|ALT_INV_reg~20_q\ : std_logic;
SIGNAL \breg8_component|ALT_INV_reg~11_q\ : std_logic;
SIGNAL \breg8_component|ALT_INV_reg~19_q\ : std_logic;
SIGNAL \breg8_component|ALT_INV_reg~10_q\ : std_logic;
SIGNAL \breg8_component|ALT_INV_reg~18_q\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~52_combout\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~44_q\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~20_q\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~51_combout\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~43_q\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~19_q\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~50_combout\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~42_q\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~18_q\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~49_combout\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~41_q\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~17_q\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~48_combout\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~40_q\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~16_q\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~47_combout\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~39_q\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~15_q\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~46_combout\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~38_q\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~14_q\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux32~1_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux21~4_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux21~3_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux21~2_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_state.estadoS9~q\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_WideNor3~combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_state.estadoS5~q\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_WideNor2~combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_state.estadoS4~q\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_state.estadoS3~q\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_state.estadoS2~q\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_state.estadoS8~q\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_WideNor0~combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_state.estadoS7~q\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_state.estadoS6~q\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_state.estadoS1~q\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_recv_opcode~4_combout\ : std_logic;
SIGNAL \rom8_component|ALT_INV_data[7]~21_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_recv_opcode~3_combout\ : std_logic;
SIGNAL \rom8_component|ALT_INV_data[6]~20_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_recv_opcode~2_combout\ : std_logic;
SIGNAL \rom8_component|ALT_INV_data[5]~19_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_recv_opcode~1_combout\ : std_logic;
SIGNAL \rom8_component|ALT_INV_data[4]~18_combout\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~45_combout\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~37_q\ : std_logic;
SIGNAL \ram8_component|ALT_INV_mem~13_q\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_ler_men~2_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_resultado\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \muxB_component|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \muxB_component|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \muxB_component|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \muxB_component|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \muxB_component|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \muxB_component|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \muxB_component|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \muxB_component|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \rom8_component|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \muxA_component|ALT_INV_saida[7]~7_combout\ : std_logic;
SIGNAL \muxA_component|ALT_INV_saida[6]~6_combout\ : std_logic;
SIGNAL \muxA_component|ALT_INV_saida[5]~5_combout\ : std_logic;
SIGNAL \muxA_component|ALT_INV_saida[4]~4_combout\ : std_logic;
SIGNAL \muxA_component|ALT_INV_saida[3]~3_combout\ : std_logic;
SIGNAL \muxA_component|ALT_INV_saida[2]~2_combout\ : std_logic;
SIGNAL \muxA_component|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \muxA_component|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_zero~q\ : std_logic;
SIGNAL \pc_component|ALT_INV_saidaPC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \breg8_component|ALT_INV_SaidaB\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \breg8_component|ALT_INV_SaidaA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \muxUM_component|ALT_INV_saida[7]~7_combout\ : std_logic;
SIGNAL \ULAout_component|ALT_INV_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MDR_component|ALT_INV_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \muxUM_component|ALT_INV_saida[6]~6_combout\ : std_logic;
SIGNAL \muxUM_component|ALT_INV_saida[5]~5_combout\ : std_logic;
SIGNAL \muxUM_component|ALT_INV_saida[4]~4_combout\ : std_logic;
SIGNAL \muxUM_component|ALT_INV_saida[3]~3_combout\ : std_logic;
SIGNAL \muxUM_component|ALT_INV_saida[2]~2_combout\ : std_logic;
SIGNAL \muxUM_component|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \muxUM_component|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ula_component|ALT_INV_cont~75_combout\ : std_logic;
SIGNAL \UniControl_component|ALT_INV_state.estadoS0~q\ : std_logic;

BEGIN

ww_ProIAClock <= ProIAClock;
ww_ProIAreset <= ProIAreset;
ww_ProIAEnableFlag <= ProIAEnableFlag;
out_SystemClock <= ww_out_SystemClock;
out_BDReg_reg_escrito <= ww_out_BDReg_reg_escrito;
out_BDReg_dado_escrito <= ww_out_BDReg_dado_escrito;
out_BDDado_lido_A <= ww_out_BDDado_lido_A;
out_BDDado_lido_B <= ww_out_BDDado_lido_B;
out_BDReg_lido_A <= ww_out_BDReg_lido_A;
out_BDReg_lido_B <= ww_out_BDReg_lido_B;
out_PC_entrada <= ww_out_PC_entrada;
out_PC_saida <= ww_out_PC_saida;
out_PC_clock <= ww_out_PC_clock;
out_MEM_INST_address <= ww_out_MEM_INST_address;
out_MEM_INST_data_out <= ww_out_MEM_INST_data_out;
out_AND_A <= ww_out_AND_A;
out_AND_B <= ww_out_AND_B;
out_AND_Result <= ww_out_AND_Result;
out_Control_clock <= ww_out_Control_clock;
out_Control_opcode <= ww_out_Control_opcode;
out_Control_Pc_flag <= ww_out_Control_Pc_flag;
out_Control_Pc_Cond <= ww_out_Control_Pc_Cond;
out_Control_lermen <= ww_out_Control_lermen;
out_Control_EscMem <= ww_out_Control_EscMem;
out_Control_MemParaReg <= ww_out_Control_MemParaReg;
out_Control_ULAOp <= ww_out_Control_ULAOp;
out_Control_EscReg <= ww_out_Control_EscReg;
out_Control_Ula_fonteA <= ww_out_Control_Ula_fonteA;
out_Control_Ula_fonteB <= ww_out_Control_Ula_fonteB;
out_Control_Fonte_Pc <= ww_out_Control_Fonte_Pc;
out_ALU_A <= ww_out_ALU_A;
out_ALU_B <= ww_out_ALU_B;
out_ALU_OP <= ww_out_ALU_OP;
out_ALU_zero <= ww_out_ALU_zero;
out_ALU_result <= ww_out_ALU_result;
out_Ram_ler_mem <= ww_out_Ram_ler_mem;
out_Ram_esc_mem <= ww_out_Ram_esc_mem;
out_Ram_address <= ww_out_Ram_address;
out_Ram_data_in <= ww_out_Ram_data_in;
out_Ram_data_out <= ww_out_Ram_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ProIAEnableFlag~input_o\ <= NOT \ProIAEnableFlag~input_o\;
\UniControl_component|ALT_INV_esc_men$latch~combout\ <= NOT \UniControl_component|esc_men$latch~combout\;
\UniControl_component|ALT_INV_ULAop[0]$latch~combout\ <= NOT \UniControl_component|ULAop[0]$latch~combout\;
\UniControl_component|ALT_INV_ULAop[1]$latch~combout\ <= NOT \UniControl_component|ULAop[1]$latch~combout\;
\UniControl_component|ALT_INV_ULAop[2]$latch~combout\ <= NOT \UniControl_component|ULAop[2]$latch~combout\;
\UniControl_component|ALT_INV_ULAop[3]$latch~combout\ <= NOT \UniControl_component|ULAop[3]$latch~combout\;
\UniControl_component|ALT_INV_pc_flag$latch~combout\ <= NOT \UniControl_component|pc_flag$latch~combout\;
\UniControl_component|ALT_INV_recv_opcode\(3) <= NOT \UniControl_component|recv_opcode\(3);
\UniControl_component|ALT_INV_recv_opcode\(2) <= NOT \UniControl_component|recv_opcode\(2);
\UniControl_component|ALT_INV_recv_opcode\(1) <= NOT \UniControl_component|recv_opcode\(1);
\UniControl_component|ALT_INV_recv_opcode\(0) <= NOT \UniControl_component|recv_opcode\(0);
\UniControl_component|ALT_INV_ler_men$latch~combout\ <= NOT \UniControl_component|ler_men$latch~combout\;
\UniControl_component|ALT_INV_esc_reg$latch~combout\ <= NOT \UniControl_component|esc_reg$latch~combout\;
\UniControl_component|ALT_INV_ula_fonteB[1]$latch~combout\ <= NOT \UniControl_component|ula_fonteB[1]$latch~combout\;
\UniControl_component|ALT_INV_ula_fonteB[0]$latch~combout\ <= NOT \UniControl_component|ula_fonteB[0]$latch~combout\;
\UniControl_component|ALT_INV_ula_fonteB[0]_783~combout\ <= NOT \UniControl_component|ula_fonteB[0]_783~combout\;
\UniControl_component|ALT_INV_ula_fonteA$latch~combout\ <= NOT \UniControl_component|ula_fonteA$latch~combout\;
\UniControl_component|ALT_INV_pc_cond$latch~combout\ <= NOT \UniControl_component|pc_cond$latch~combout\;
\UniControl_component|ALT_INV_memParaReg$latch~combout\ <= NOT \UniControl_component|memParaReg$latch~combout\;
\UniControl_component|ALT_INV_esc_reg_952~combout\ <= NOT \UniControl_component|esc_reg_952~combout\;
\ula_component|ALT_INV_aux_dado\(6) <= NOT \ula_component|aux_dado\(6);
\ula_component|ALT_INV_mult~5_combout\ <= NOT \ula_component|mult~5_combout\;
\ula_component|ALT_INV_aux_mult~8_combout\ <= NOT \ula_component|aux_mult~8_combout\;
\ula_component|ALT_INV_cont~74_combout\ <= NOT \ula_component|cont~74_combout\;
\ula_component|ALT_INV_mult~4_combout\ <= NOT \ula_component|mult~4_combout\;
\ula_component|ALT_INV_aux_mult~6_combout\ <= NOT \ula_component|aux_mult~6_combout\;
\ula_component|ALT_INV_mult~3_combout\ <= NOT \ula_component|mult~3_combout\;
\ula_component|ALT_INV_mult~2_combout\ <= NOT \ula_component|mult~2_combout\;
\ula_component|ALT_INV_aux_mult~4_combout\ <= NOT \ula_component|aux_mult~4_combout\;
\ula_component|ALT_INV_aux_mult~2_combout\ <= NOT \ula_component|aux_mult~2_combout\;
\ula_component|ALT_INV_mult~1_combout\ <= NOT \ula_component|mult~1_combout\;
\ula_component|ALT_INV_cont~73_combout\ <= NOT \ula_component|cont~73_combout\;
\ula_component|ALT_INV_cont~72_combout\ <= NOT \ula_component|cont~72_combout\;
\ula_component|ALT_INV_cont~71_combout\ <= NOT \ula_component|cont~71_combout\;
\ula_component|ALT_INV_cont~70_combout\ <= NOT \ula_component|cont~70_combout\;
\ula_component|ALT_INV_cont~69_combout\ <= NOT \ula_component|cont~69_combout\;
\ula_component|ALT_INV_cont~68_combout\ <= NOT \ula_component|cont~68_combout\;
\ula_component|ALT_INV_cont~67_combout\ <= NOT \ula_component|cont~67_combout\;
\ula_component|ALT_INV_aux_mult[10]~0_combout\ <= NOT \ula_component|aux_mult[10]~0_combout\;
\ula_component|ALT_INV_cont~66_combout\ <= NOT \ula_component|cont~66_combout\;
\ula_component|ALT_INV_cont~64_combout\ <= NOT \ula_component|cont~64_combout\;
\ula_component|ALT_INV_cont~63_combout\ <= NOT \ula_component|cont~63_combout\;
\ula_component|ALT_INV_cont~62_combout\ <= NOT \ula_component|cont~62_combout\;
\ula_component|ALT_INV_cont~61_combout\ <= NOT \ula_component|cont~61_combout\;
\ula_component|ALT_INV_cont~60_combout\ <= NOT \ula_component|cont~60_combout\;
\ula_component|ALT_INV_cont~59_combout\ <= NOT \ula_component|cont~59_combout\;
\ula_component|ALT_INV_cont~58_combout\ <= NOT \ula_component|cont~58_combout\;
\ula_component|ALT_INV_cont~57_combout\ <= NOT \ula_component|cont~57_combout\;
\ula_component|ALT_INV_resultado[1]~21_combout\ <= NOT \ula_component|resultado[1]~21_combout\;
\ula_component|ALT_INV_Equal2~2_combout\ <= NOT \ula_component|Equal2~2_combout\;
\ula_component|ALT_INV_cont~56_combout\ <= NOT \ula_component|cont~56_combout\;
\ula_component|ALT_INV_cont~55_combout\ <= NOT \ula_component|cont~55_combout\;
\ula_component|ALT_INV_cont~54_combout\ <= NOT \ula_component|cont~54_combout\;
\ula_component|ALT_INV_cont~53_combout\ <= NOT \ula_component|cont~53_combout\;
\ula_component|ALT_INV_cont~52_combout\ <= NOT \ula_component|cont~52_combout\;
\ula_component|ALT_INV_cont~51_combout\ <= NOT \ula_component|cont~51_combout\;
\ula_component|ALT_INV_cont~50_combout\ <= NOT \ula_component|cont~50_combout\;
\ula_component|ALT_INV_cont~49_combout\ <= NOT \ula_component|cont~49_combout\;
\ula_component|ALT_INV_cont~48_combout\ <= NOT \ula_component|cont~48_combout\;
\ula_component|ALT_INV_cont~47_combout\ <= NOT \ula_component|cont~47_combout\;
\ula_component|ALT_INV_cont~46_combout\ <= NOT \ula_component|cont~46_combout\;
\ula_component|ALT_INV_cont~45_combout\ <= NOT \ula_component|cont~45_combout\;
\ula_component|ALT_INV_cont~44_combout\ <= NOT \ula_component|cont~44_combout\;
\ula_component|ALT_INV_cont~43_combout\ <= NOT \ula_component|cont~43_combout\;
\ula_component|ALT_INV_cont~42_combout\ <= NOT \ula_component|cont~42_combout\;
\ula_component|ALT_INV_cont~41_combout\ <= NOT \ula_component|cont~41_combout\;
\ula_component|ALT_INV_cont~40_combout\ <= NOT \ula_component|cont~40_combout\;
\ula_component|ALT_INV_cont~39_combout\ <= NOT \ula_component|cont~39_combout\;
\ula_component|ALT_INV_cont~38_combout\ <= NOT \ula_component|cont~38_combout\;
\ula_component|ALT_INV_cont~37_combout\ <= NOT \ula_component|cont~37_combout\;
\ula_component|ALT_INV_cont~36_combout\ <= NOT \ula_component|cont~36_combout\;
\ula_component|ALT_INV_cont~35_combout\ <= NOT \ula_component|cont~35_combout\;
\ula_component|ALT_INV_cont~34_combout\ <= NOT \ula_component|cont~34_combout\;
\ula_component|ALT_INV_cont~33_combout\ <= NOT \ula_component|cont~33_combout\;
\ula_component|ALT_INV_cont~32_combout\ <= NOT \ula_component|cont~32_combout\;
\UniControl_component|ALT_INV_ula_fonteB[1]~3_combout\ <= NOT \UniControl_component|ula_fonteB[1]~3_combout\;
\UniControl_component|ALT_INV_ula_fonteB[0]~2_combout\ <= NOT \UniControl_component|ula_fonteB[0]~2_combout\;
\ula_component|ALT_INV_cont~31_combout\ <= NOT \ula_component|cont~31_combout\;
\ula_component|ALT_INV_cont~30_combout\ <= NOT \ula_component|cont~30_combout\;
\muxB_component|ALT_INV_Mux5~1_combout\ <= NOT \muxB_component|Mux5~1_combout\;
\UniControl_component|ALT_INV_ula_fonteA~1_combout\ <= NOT \UniControl_component|ula_fonteA~1_combout\;
\ula_component|ALT_INV_cont~29_combout\ <= NOT \ula_component|cont~29_combout\;
\ula_component|ALT_INV_mult\(14) <= NOT \ula_component|mult\(14);
\ula_component|ALT_INV_mult\(13) <= NOT \ula_component|mult\(13);
\ula_component|ALT_INV_cont~28_combout\ <= NOT \ula_component|cont~28_combout\;
\ula_component|ALT_INV_mult\(12) <= NOT \ula_component|mult\(12);
\ula_component|ALT_INV_mult\(11) <= NOT \ula_component|mult\(11);
\ula_component|ALT_INV_cont~27_combout\ <= NOT \ula_component|cont~27_combout\;
\ula_component|ALT_INV_mult\(10) <= NOT \ula_component|mult\(10);
\ula_component|ALT_INV_mult\(9) <= NOT \ula_component|mult\(9);
\ula_component|ALT_INV_cont~26_combout\ <= NOT \ula_component|cont~26_combout\;
\ula_component|ALT_INV_cont~25_combout\ <= NOT \ula_component|cont~25_combout\;
\ula_component|ALT_INV_mult~0_combout\ <= NOT \ula_component|mult~0_combout\;
\ula_component|ALT_INV_mult\(8) <= NOT \ula_component|mult\(8);
\ula_component|ALT_INV_cont~24_combout\ <= NOT \ula_component|cont~24_combout\;
\ula_component|ALT_INV_cont~23_combout\ <= NOT \ula_component|cont~23_combout\;
\ula_component|ALT_INV_cont~22_combout\ <= NOT \ula_component|cont~22_combout\;
\ula_component|ALT_INV_cont~21_combout\ <= NOT \ula_component|cont~21_combout\;
\ula_component|ALT_INV_cont~20_combout\ <= NOT \ula_component|cont~20_combout\;
\ula_component|ALT_INV_cont~19_combout\ <= NOT \ula_component|cont~19_combout\;
\ula_component|ALT_INV_cont~18_combout\ <= NOT \ula_component|cont~18_combout\;
\ula_component|ALT_INV_cont~17_combout\ <= NOT \ula_component|cont~17_combout\;
\ula_component|ALT_INV_cont~16_combout\ <= NOT \ula_component|cont~16_combout\;
\ula_component|ALT_INV_aux_mult\(8) <= NOT \ula_component|aux_mult\(8);
\ula_component|ALT_INV_aux_mult\(9) <= NOT \ula_component|aux_mult\(9);
\ula_component|ALT_INV_aux_mult\(10) <= NOT \ula_component|aux_mult\(10);
\ula_component|ALT_INV_cont~15_combout\ <= NOT \ula_component|cont~15_combout\;
\ula_component|ALT_INV_cont~14_combout\ <= NOT \ula_component|cont~14_combout\;
\ula_component|ALT_INV_aux_mult\(11) <= NOT \ula_component|aux_mult\(11);
\ula_component|ALT_INV_aux_mult\(12) <= NOT \ula_component|aux_mult\(12);
\ula_component|ALT_INV_aux_mult\(13) <= NOT \ula_component|aux_mult\(13);
\ula_component|ALT_INV_aux_mult\(14) <= NOT \ula_component|aux_mult\(14);
\UniControl_component|ALT_INV_Mux34~0_combout\ <= NOT \UniControl_component|Mux34~0_combout\;
\UniControl_component|ALT_INV_Mux24~3_combout\ <= NOT \UniControl_component|Mux24~3_combout\;
\UniControl_component|ALT_INV_Mux24~2_combout\ <= NOT \UniControl_component|Mux24~2_combout\;
\UniControl_component|ALT_INV_Mux24~1_combout\ <= NOT \UniControl_component|Mux24~1_combout\;
\UniControl_component|ALT_INV_Mux24~0_combout\ <= NOT \UniControl_component|Mux24~0_combout\;
\UniControl_component|ALT_INV_Mux26~4_combout\ <= NOT \UniControl_component|Mux26~4_combout\;
\UniControl_component|ALT_INV_Mux26~3_combout\ <= NOT \UniControl_component|Mux26~3_combout\;
\UniControl_component|ALT_INV_Mux26~2_combout\ <= NOT \UniControl_component|Mux26~2_combout\;
\UniControl_component|ALT_INV_Mux26~1_combout\ <= NOT \UniControl_component|Mux26~1_combout\;
\UniControl_component|ALT_INV_recv_opcode~11_combout\ <= NOT \UniControl_component|recv_opcode~11_combout\;
\UniControl_component|ALT_INV_recv_opcode~10_combout\ <= NOT \UniControl_component|recv_opcode~10_combout\;
\UniControl_component|ALT_INV_Mux26~0_combout\ <= NOT \UniControl_component|Mux26~0_combout\;
\UniControl_component|ALT_INV_Mux28~0_combout\ <= NOT \UniControl_component|Mux28~0_combout\;
\UniControl_component|ALT_INV_Mux30~0_combout\ <= NOT \UniControl_component|Mux30~0_combout\;
\UniControl_component|ALT_INV_Mux37~3_combout\ <= NOT \UniControl_component|Mux37~3_combout\;
\UniControl_component|ALT_INV_Mux38~0_combout\ <= NOT \UniControl_component|Mux38~0_combout\;
\UniControl_component|ALT_INV_tempState.estadoS9~0_combout\ <= NOT \UniControl_component|tempState.estadoS9~0_combout\;
\UniControl_component|ALT_INV_recv_opcode[0]~9_combout\ <= NOT \UniControl_component|recv_opcode[0]~9_combout\;
\UniControl_component|ALT_INV_Mux9~4_combout\ <= NOT \UniControl_component|Mux9~4_combout\;
\UniControl_component|ALT_INV_Mux9~3_combout\ <= NOT \UniControl_component|Mux9~3_combout\;
\UniControl_component|ALT_INV_Mux9~2_combout\ <= NOT \UniControl_component|Mux9~2_combout\;
\UniControl_component|ALT_INV_Mux9~1_combout\ <= NOT \UniControl_component|Mux9~1_combout\;
\UniControl_component|ALT_INV_Mux9~0_combout\ <= NOT \UniControl_component|Mux9~0_combout\;
\UniControl_component|ALT_INV_Mux13~0_combout\ <= NOT \UniControl_component|Mux13~0_combout\;
\UniControl_component|ALT_INV_Mux22~1_combout\ <= NOT \UniControl_component|Mux22~1_combout\;
\ula_component|ALT_INV_resultado~19_combout\ <= NOT \ula_component|resultado~19_combout\;
\ula_component|ALT_INV_aux_mult\(7) <= NOT \ula_component|aux_mult\(7);
\ula_component|ALT_INV_cont~13_combout\ <= NOT \ula_component|cont~13_combout\;
\ula_component|ALT_INV_cont~12_combout\ <= NOT \ula_component|cont~12_combout\;
\ula_component|ALT_INV_resultado~17_combout\ <= NOT \ula_component|resultado~17_combout\;
\ula_component|ALT_INV_cont~11_combout\ <= NOT \ula_component|cont~11_combout\;
\ula_component|ALT_INV_cont~10_combout\ <= NOT \ula_component|cont~10_combout\;
\ula_component|ALT_INV_resultado~15_combout\ <= NOT \ula_component|resultado~15_combout\;
\ula_component|ALT_INV_cont~9_combout\ <= NOT \ula_component|cont~9_combout\;
\ula_component|ALT_INV_cont~8_combout\ <= NOT \ula_component|cont~8_combout\;
\ula_component|ALT_INV_resultado~13_combout\ <= NOT \ula_component|resultado~13_combout\;
\ula_component|ALT_INV_cont~7_combout\ <= NOT \ula_component|cont~7_combout\;
\ula_component|ALT_INV_cont~6_combout\ <= NOT \ula_component|cont~6_combout\;
\ula_component|ALT_INV_resultado~11_combout\ <= NOT \ula_component|resultado~11_combout\;
\ula_component|ALT_INV_cont~5_combout\ <= NOT \ula_component|cont~5_combout\;
\ula_component|ALT_INV_cont~4_combout\ <= NOT \ula_component|cont~4_combout\;
\ula_component|ALT_INV_resultado~9_combout\ <= NOT \ula_component|resultado~9_combout\;
\ula_component|ALT_INV_cont~3_combout\ <= NOT \ula_component|cont~3_combout\;
\ula_component|ALT_INV_cont~2_combout\ <= NOT \ula_component|cont~2_combout\;
\ula_component|ALT_INV_resultado~7_combout\ <= NOT \ula_component|resultado~7_combout\;
\ula_component|ALT_INV_cont~1_combout\ <= NOT \ula_component|cont~1_combout\;
\ula_component|ALT_INV_cont~0_combout\ <= NOT \ula_component|cont~0_combout\;
\ula_component|ALT_INV_resultado~4_combout\ <= NOT \ula_component|resultado~4_combout\;
\ula_component|ALT_INV_resultado[1]~3_combout\ <= NOT \ula_component|resultado[1]~3_combout\;
\ula_component|ALT_INV_resultado[1]~2_combout\ <= NOT \ula_component|resultado[1]~2_combout\;
\ula_component|ALT_INV_resultado[1]~1_combout\ <= NOT \ula_component|resultado[1]~1_combout\;
\ula_component|ALT_INV_resultado[1]~0_combout\ <= NOT \ula_component|resultado[1]~0_combout\;
\ula_component|ALT_INV_cont~q\ <= NOT \ula_component|cont~q\;
\UniControl_component|ALT_INV_Mux1~0_combout\ <= NOT \UniControl_component|Mux1~0_combout\;
\UniControl_component|ALT_INV_Mux4~2_combout\ <= NOT \UniControl_component|Mux4~2_combout\;
\UniControl_component|ALT_INV_Mux4~1_combout\ <= NOT \UniControl_component|Mux4~1_combout\;
\UniControl_component|ALT_INV_Mux4~0_combout\ <= NOT \UniControl_component|Mux4~0_combout\;
\UniControl_component|ALT_INV_Mux3~0_combout\ <= NOT \UniControl_component|Mux3~0_combout\;
\UniControl_component|ALT_INV_Mux20~2_combout\ <= NOT \UniControl_component|Mux20~2_combout\;
\UniControl_component|ALT_INV_Mux20~1_combout\ <= NOT \UniControl_component|Mux20~1_combout\;
\UniControl_component|ALT_INV_Mux20~0_combout\ <= NOT \UniControl_component|Mux20~0_combout\;
\UniControl_component|ALT_INV_Mux37~2_combout\ <= NOT \UniControl_component|Mux37~2_combout\;
\UniControl_component|ALT_INV_WideNor3~0_combout\ <= NOT \UniControl_component|WideNor3~0_combout\;
\UniControl_component|ALT_INV_WideNor2~0_combout\ <= NOT \UniControl_component|WideNor2~0_combout\;
\UniControl_component|ALT_INV_recv_opcode~8_combout\ <= NOT \UniControl_component|recv_opcode~8_combout\;
\UniControl_component|ALT_INV_recv_opcode~7_combout\ <= NOT \UniControl_component|recv_opcode~7_combout\;
\UniControl_component|ALT_INV_recv_opcode~6_combout\ <= NOT \UniControl_component|recv_opcode~6_combout\;
\UniControl_component|ALT_INV_recv_opcode~5_combout\ <= NOT \UniControl_component|recv_opcode~5_combout\;
\UniControl_component|ALT_INV_WideNor0~0_combout\ <= NOT \UniControl_component|WideNor0~0_combout\;
\UniControl_component|ALT_INV_Mux37~1_combout\ <= NOT \UniControl_component|Mux37~1_combout\;
\UniControl_component|ALT_INV_Mux37~0_combout\ <= NOT \UniControl_component|Mux37~0_combout\;
\UniControl_component|ALT_INV_Mux22~0_combout\ <= NOT \UniControl_component|Mux22~0_combout\;
\ula_component|ALT_INV_zero~1_combout\ <= NOT \ula_component|zero~1_combout\;
\ula_component|ALT_INV_LessThan0~2_combout\ <= NOT \ula_component|LessThan0~2_combout\;
\ula_component|ALT_INV_LessThan0~1_combout\ <= NOT \ula_component|LessThan0~1_combout\;
\ula_component|ALT_INV_LessThan0~0_combout\ <= NOT \ula_component|LessThan0~0_combout\;
\ula_component|ALT_INV_Equal7~4_combout\ <= NOT \ula_component|Equal7~4_combout\;
\ula_component|ALT_INV_Equal7~3_combout\ <= NOT \ula_component|Equal7~3_combout\;
\ula_component|ALT_INV_Equal7~2_combout\ <= NOT \ula_component|Equal7~2_combout\;
\ula_component|ALT_INV_Equal7~1_combout\ <= NOT \ula_component|Equal7~1_combout\;
\ula_component|ALT_INV_Equal7~0_combout\ <= NOT \ula_component|Equal7~0_combout\;
\ula_component|ALT_INV_Equal2~1_combout\ <= NOT \ula_component|Equal2~1_combout\;
\ula_component|ALT_INV_Equal2~0_combout\ <= NOT \ula_component|Equal2~0_combout\;
\ula_component|ALT_INV_zero~0_combout\ <= NOT \ula_component|zero~0_combout\;
\UniControl_component|ALT_INV_ULAop[0]~11_combout\ <= NOT \UniControl_component|ULAop[0]~11_combout\;
\UniControl_component|ALT_INV_ULAop[1]~10_combout\ <= NOT \UniControl_component|ULAop[1]~10_combout\;
\UniControl_component|ALT_INV_ULAop[2]~9_combout\ <= NOT \UniControl_component|ULAop[2]~9_combout\;
\UniControl_component|ALT_INV_ULAop[3]~8_combout\ <= NOT \UniControl_component|ULAop[3]~8_combout\;
\muxPUJ_component|ALT_INV_Mux7~0_combout\ <= NOT \muxPUJ_component|Mux7~0_combout\;
\muxPUJ_component|ALT_INV_Mux6~0_combout\ <= NOT \muxPUJ_component|Mux6~0_combout\;
\muxPUJ_component|ALT_INV_Mux5~0_combout\ <= NOT \muxPUJ_component|Mux5~0_combout\;
\muxPUJ_component|ALT_INV_Mux4~0_combout\ <= NOT \muxPUJ_component|Mux4~0_combout\;
\muxPUJ_component|ALT_INV_Mux3~0_combout\ <= NOT \muxPUJ_component|Mux3~0_combout\;
\muxPUJ_component|ALT_INV_Mux2~0_combout\ <= NOT \muxPUJ_component|Mux2~0_combout\;
\muxPUJ_component|ALT_INV_Mux1~0_combout\ <= NOT \muxPUJ_component|Mux1~0_combout\;
\muxPUJ_component|ALT_INV_Mux8~0_combout\ <= NOT \muxPUJ_component|Mux8~0_combout\;
\muxPUJ_component|ALT_INV_Mux0~0_combout\ <= NOT \muxPUJ_component|Mux0~0_combout\;
\UniControl_component|ALT_INV_pc_flag~1_combout\ <= NOT \UniControl_component|pc_flag~1_combout\;
\UniControl_component|ALT_INV_pc_cond~2_combout\ <= NOT \UniControl_component|pc_cond~2_combout\;
\breg8_component|ALT_INV_reg~17_q\ <= NOT \breg8_component|reg~17_q\;
\breg8_component|ALT_INV_reg~25_q\ <= NOT \breg8_component|reg~25_q\;
\breg8_component|ALT_INV_reg~16_q\ <= NOT \breg8_component|reg~16_q\;
\breg8_component|ALT_INV_reg~24_q\ <= NOT \breg8_component|reg~24_q\;
\breg8_component|ALT_INV_reg~15_q\ <= NOT \breg8_component|reg~15_q\;
\breg8_component|ALT_INV_reg~23_q\ <= NOT \breg8_component|reg~23_q\;
\breg8_component|ALT_INV_reg~14_q\ <= NOT \breg8_component|reg~14_q\;
\breg8_component|ALT_INV_reg~22_q\ <= NOT \breg8_component|reg~22_q\;
\breg8_component|ALT_INV_reg~13_q\ <= NOT \breg8_component|reg~13_q\;
\breg8_component|ALT_INV_reg~21_q\ <= NOT \breg8_component|reg~21_q\;
\breg8_component|ALT_INV_reg~12_q\ <= NOT \breg8_component|reg~12_q\;
\breg8_component|ALT_INV_reg~20_q\ <= NOT \breg8_component|reg~20_q\;
\breg8_component|ALT_INV_reg~11_q\ <= NOT \breg8_component|reg~11_q\;
\breg8_component|ALT_INV_reg~19_q\ <= NOT \breg8_component|reg~19_q\;
\breg8_component|ALT_INV_reg~10_q\ <= NOT \breg8_component|reg~10_q\;
\breg8_component|ALT_INV_reg~18_q\ <= NOT \breg8_component|reg~18_q\;
\ram8_component|ALT_INV_mem~52_combout\ <= NOT \ram8_component|mem~52_combout\;
\ram8_component|ALT_INV_mem~44_q\ <= NOT \ram8_component|mem~44_q\;
\ram8_component|ALT_INV_mem~20_q\ <= NOT \ram8_component|mem~20_q\;
\ram8_component|ALT_INV_mem~51_combout\ <= NOT \ram8_component|mem~51_combout\;
\ram8_component|ALT_INV_mem~43_q\ <= NOT \ram8_component|mem~43_q\;
\ram8_component|ALT_INV_mem~19_q\ <= NOT \ram8_component|mem~19_q\;
\ram8_component|ALT_INV_mem~50_combout\ <= NOT \ram8_component|mem~50_combout\;
\ram8_component|ALT_INV_mem~42_q\ <= NOT \ram8_component|mem~42_q\;
\ram8_component|ALT_INV_mem~18_q\ <= NOT \ram8_component|mem~18_q\;
\ram8_component|ALT_INV_mem~49_combout\ <= NOT \ram8_component|mem~49_combout\;
\ram8_component|ALT_INV_mem~41_q\ <= NOT \ram8_component|mem~41_q\;
\ram8_component|ALT_INV_mem~17_q\ <= NOT \ram8_component|mem~17_q\;
\ram8_component|ALT_INV_mem~48_combout\ <= NOT \ram8_component|mem~48_combout\;
\ram8_component|ALT_INV_mem~40_q\ <= NOT \ram8_component|mem~40_q\;
\ram8_component|ALT_INV_mem~16_q\ <= NOT \ram8_component|mem~16_q\;
\ram8_component|ALT_INV_mem~47_combout\ <= NOT \ram8_component|mem~47_combout\;
\ram8_component|ALT_INV_mem~39_q\ <= NOT \ram8_component|mem~39_q\;
\ram8_component|ALT_INV_mem~15_q\ <= NOT \ram8_component|mem~15_q\;
\ram8_component|ALT_INV_mem~46_combout\ <= NOT \ram8_component|mem~46_combout\;
\ram8_component|ALT_INV_mem~38_q\ <= NOT \ram8_component|mem~38_q\;
\ram8_component|ALT_INV_mem~14_q\ <= NOT \ram8_component|mem~14_q\;
\UniControl_component|ALT_INV_Mux32~1_combout\ <= NOT \UniControl_component|Mux32~1_combout\;
\UniControl_component|ALT_INV_Mux32~0_combout\ <= NOT \UniControl_component|Mux32~0_combout\;
\UniControl_component|ALT_INV_Mux21~4_combout\ <= NOT \UniControl_component|Mux21~4_combout\;
\UniControl_component|ALT_INV_Mux21~3_combout\ <= NOT \UniControl_component|Mux21~3_combout\;
\UniControl_component|ALT_INV_Mux21~2_combout\ <= NOT \UniControl_component|Mux21~2_combout\;
\UniControl_component|ALT_INV_state.estadoS9~q\ <= NOT \UniControl_component|state.estadoS9~q\;
\UniControl_component|ALT_INV_WideNor3~combout\ <= NOT \UniControl_component|WideNor3~combout\;
\UniControl_component|ALT_INV_state.estadoS5~q\ <= NOT \UniControl_component|state.estadoS5~q\;
\UniControl_component|ALT_INV_Mux21~1_combout\ <= NOT \UniControl_component|Mux21~1_combout\;
\UniControl_component|ALT_INV_WideNor2~combout\ <= NOT \UniControl_component|WideNor2~combout\;
\UniControl_component|ALT_INV_state.estadoS4~q\ <= NOT \UniControl_component|state.estadoS4~q\;
\UniControl_component|ALT_INV_state.estadoS3~q\ <= NOT \UniControl_component|state.estadoS3~q\;
\UniControl_component|ALT_INV_state.estadoS2~q\ <= NOT \UniControl_component|state.estadoS2~q\;
\UniControl_component|ALT_INV_Mux21~0_combout\ <= NOT \UniControl_component|Mux21~0_combout\;
\UniControl_component|ALT_INV_state.estadoS8~q\ <= NOT \UniControl_component|state.estadoS8~q\;
\UniControl_component|ALT_INV_WideNor0~combout\ <= NOT \UniControl_component|WideNor0~combout\;
\UniControl_component|ALT_INV_state.estadoS7~q\ <= NOT \UniControl_component|state.estadoS7~q\;
\UniControl_component|ALT_INV_state.estadoS6~q\ <= NOT \UniControl_component|state.estadoS6~q\;
\UniControl_component|ALT_INV_state.estadoS1~q\ <= NOT \UniControl_component|state.estadoS1~q\;
\UniControl_component|ALT_INV_Mux6~0_combout\ <= NOT \UniControl_component|Mux6~0_combout\;
\UniControl_component|ALT_INV_recv_opcode~4_combout\ <= NOT \UniControl_component|recv_opcode~4_combout\;
\rom8_component|ALT_INV_data[7]~21_combout\ <= NOT \rom8_component|data[7]~21_combout\;
\UniControl_component|ALT_INV_recv_opcode~3_combout\ <= NOT \UniControl_component|recv_opcode~3_combout\;
\rom8_component|ALT_INV_data[6]~20_combout\ <= NOT \rom8_component|data[6]~20_combout\;
\UniControl_component|ALT_INV_recv_opcode~2_combout\ <= NOT \UniControl_component|recv_opcode~2_combout\;
\rom8_component|ALT_INV_data[5]~19_combout\ <= NOT \rom8_component|data[5]~19_combout\;
\UniControl_component|ALT_INV_recv_opcode~1_combout\ <= NOT \UniControl_component|recv_opcode~1_combout\;
\rom8_component|ALT_INV_data[4]~18_combout\ <= NOT \rom8_component|data[4]~18_combout\;
\ram8_component|ALT_INV_mem~45_combout\ <= NOT \ram8_component|mem~45_combout\;
\ram8_component|ALT_INV_mem~37_q\ <= NOT \ram8_component|mem~37_q\;
\ram8_component|ALT_INV_mem~13_q\ <= NOT \ram8_component|mem~13_q\;
\UniControl_component|ALT_INV_ler_men~2_combout\ <= NOT \UniControl_component|ler_men~2_combout\;
\ula_component|ALT_INV_resultado\(7) <= NOT \ula_component|resultado\(7);
\ula_component|ALT_INV_resultado\(6) <= NOT \ula_component|resultado\(6);
\ula_component|ALT_INV_resultado\(5) <= NOT \ula_component|resultado\(5);
\ula_component|ALT_INV_resultado\(4) <= NOT \ula_component|resultado\(4);
\ula_component|ALT_INV_resultado\(3) <= NOT \ula_component|resultado\(3);
\ula_component|ALT_INV_resultado\(2) <= NOT \ula_component|resultado\(2);
\ula_component|ALT_INV_resultado\(1) <= NOT \ula_component|resultado\(1);
\ula_component|ALT_INV_resultado\(0) <= NOT \ula_component|resultado\(0);
\muxB_component|ALT_INV_Mux0~0_combout\ <= NOT \muxB_component|Mux0~0_combout\;
\muxB_component|ALT_INV_Mux1~0_combout\ <= NOT \muxB_component|Mux1~0_combout\;
\muxB_component|ALT_INV_Mux2~0_combout\ <= NOT \muxB_component|Mux2~0_combout\;
\muxB_component|ALT_INV_Mux3~0_combout\ <= NOT \muxB_component|Mux3~0_combout\;
\muxB_component|ALT_INV_Mux4~0_combout\ <= NOT \muxB_component|Mux4~0_combout\;
\muxB_component|ALT_INV_Mux5~0_combout\ <= NOT \muxB_component|Mux5~0_combout\;
\muxB_component|ALT_INV_Mux6~0_combout\ <= NOT \muxB_component|Mux6~0_combout\;
\muxB_component|ALT_INV_Mux7~0_combout\ <= NOT \muxB_component|Mux7~0_combout\;
\rom8_component|ALT_INV_Mux1~0_combout\ <= NOT \rom8_component|Mux1~0_combout\;
\muxA_component|ALT_INV_saida[7]~7_combout\ <= NOT \muxA_component|saida[7]~7_combout\;
\muxA_component|ALT_INV_saida[6]~6_combout\ <= NOT \muxA_component|saida[6]~6_combout\;
\muxA_component|ALT_INV_saida[5]~5_combout\ <= NOT \muxA_component|saida[5]~5_combout\;
\muxA_component|ALT_INV_saida[4]~4_combout\ <= NOT \muxA_component|saida[4]~4_combout\;
\muxA_component|ALT_INV_saida[3]~3_combout\ <= NOT \muxA_component|saida[3]~3_combout\;
\muxA_component|ALT_INV_saida[2]~2_combout\ <= NOT \muxA_component|saida[2]~2_combout\;
\muxA_component|ALT_INV_saida[1]~1_combout\ <= NOT \muxA_component|saida[1]~1_combout\;
\muxA_component|ALT_INV_saida[0]~0_combout\ <= NOT \muxA_component|saida[0]~0_combout\;
\ula_component|ALT_INV_zero~q\ <= NOT \ula_component|zero~q\;
\pc_component|ALT_INV_saidaPC\(7) <= NOT \pc_component|saidaPC\(7);
\pc_component|ALT_INV_saidaPC\(6) <= NOT \pc_component|saidaPC\(6);
\pc_component|ALT_INV_saidaPC\(5) <= NOT \pc_component|saidaPC\(5);
\pc_component|ALT_INV_saidaPC\(4) <= NOT \pc_component|saidaPC\(4);
\pc_component|ALT_INV_saidaPC\(3) <= NOT \pc_component|saidaPC\(3);
\pc_component|ALT_INV_saidaPC\(2) <= NOT \pc_component|saidaPC\(2);
\pc_component|ALT_INV_saidaPC\(1) <= NOT \pc_component|saidaPC\(1);
\pc_component|ALT_INV_saidaPC\(0) <= NOT \pc_component|saidaPC\(0);
\breg8_component|ALT_INV_SaidaB\(7) <= NOT \breg8_component|SaidaB\(7);
\breg8_component|ALT_INV_SaidaB\(6) <= NOT \breg8_component|SaidaB\(6);
\breg8_component|ALT_INV_SaidaB\(5) <= NOT \breg8_component|SaidaB\(5);
\breg8_component|ALT_INV_SaidaB\(4) <= NOT \breg8_component|SaidaB\(4);
\breg8_component|ALT_INV_SaidaB\(3) <= NOT \breg8_component|SaidaB\(3);
\breg8_component|ALT_INV_SaidaB\(2) <= NOT \breg8_component|SaidaB\(2);
\breg8_component|ALT_INV_SaidaB\(1) <= NOT \breg8_component|SaidaB\(1);
\breg8_component|ALT_INV_SaidaB\(0) <= NOT \breg8_component|SaidaB\(0);
\breg8_component|ALT_INV_SaidaA\(7) <= NOT \breg8_component|SaidaA\(7);
\breg8_component|ALT_INV_SaidaA\(6) <= NOT \breg8_component|SaidaA\(6);
\breg8_component|ALT_INV_SaidaA\(5) <= NOT \breg8_component|SaidaA\(5);
\breg8_component|ALT_INV_SaidaA\(4) <= NOT \breg8_component|SaidaA\(4);
\breg8_component|ALT_INV_SaidaA\(3) <= NOT \breg8_component|SaidaA\(3);
\breg8_component|ALT_INV_SaidaA\(2) <= NOT \breg8_component|SaidaA\(2);
\breg8_component|ALT_INV_SaidaA\(1) <= NOT \breg8_component|SaidaA\(1);
\breg8_component|ALT_INV_SaidaA\(0) <= NOT \breg8_component|SaidaA\(0);
\muxUM_component|ALT_INV_saida[7]~7_combout\ <= NOT \muxUM_component|saida[7]~7_combout\;
\ULAout_component|ALT_INV_Q\(7) <= NOT \ULAout_component|Q\(7);
\MDR_component|ALT_INV_Q\(7) <= NOT \MDR_component|Q\(7);
\muxUM_component|ALT_INV_saida[6]~6_combout\ <= NOT \muxUM_component|saida[6]~6_combout\;
\ULAout_component|ALT_INV_Q\(6) <= NOT \ULAout_component|Q\(6);
\MDR_component|ALT_INV_Q\(6) <= NOT \MDR_component|Q\(6);
\muxUM_component|ALT_INV_saida[5]~5_combout\ <= NOT \muxUM_component|saida[5]~5_combout\;
\ULAout_component|ALT_INV_Q\(5) <= NOT \ULAout_component|Q\(5);
\MDR_component|ALT_INV_Q\(5) <= NOT \MDR_component|Q\(5);
\muxUM_component|ALT_INV_saida[4]~4_combout\ <= NOT \muxUM_component|saida[4]~4_combout\;
\ULAout_component|ALT_INV_Q\(4) <= NOT \ULAout_component|Q\(4);
\MDR_component|ALT_INV_Q\(4) <= NOT \MDR_component|Q\(4);
\muxUM_component|ALT_INV_saida[3]~3_combout\ <= NOT \muxUM_component|saida[3]~3_combout\;
\ULAout_component|ALT_INV_Q\(3) <= NOT \ULAout_component|Q\(3);
\MDR_component|ALT_INV_Q\(3) <= NOT \MDR_component|Q\(3);
\muxUM_component|ALT_INV_saida[2]~2_combout\ <= NOT \muxUM_component|saida[2]~2_combout\;
\ULAout_component|ALT_INV_Q\(2) <= NOT \ULAout_component|Q\(2);
\MDR_component|ALT_INV_Q\(2) <= NOT \MDR_component|Q\(2);
\muxUM_component|ALT_INV_saida[1]~1_combout\ <= NOT \muxUM_component|saida[1]~1_combout\;
\ULAout_component|ALT_INV_Q\(1) <= NOT \ULAout_component|Q\(1);
\MDR_component|ALT_INV_Q\(1) <= NOT \MDR_component|Q\(1);
\muxUM_component|ALT_INV_saida[0]~0_combout\ <= NOT \muxUM_component|saida[0]~0_combout\;
\ULAout_component|ALT_INV_Q\(0) <= NOT \ULAout_component|Q\(0);
\MDR_component|ALT_INV_Q\(0) <= NOT \MDR_component|Q\(0);
\ula_component|ALT_INV_cont~75_combout\ <= NOT \ula_component|cont~75_combout\;
\ula_component|ALT_INV_aux_dado\(5) <= NOT \ula_component|aux_dado\(5);
\ula_component|ALT_INV_aux_dado\(4) <= NOT \ula_component|aux_dado\(4);
\ula_component|ALT_INV_aux_dado\(3) <= NOT \ula_component|aux_dado\(3);
\ula_component|ALT_INV_aux_dado\(2) <= NOT \ula_component|aux_dado\(2);
\ula_component|ALT_INV_aux_dado\(1) <= NOT \ula_component|aux_dado\(1);
\ula_component|ALT_INV_aux_dado\(0) <= NOT \ula_component|aux_dado\(0);
\ula_component|ALT_INV_aux_mult\(6) <= NOT \ula_component|aux_mult\(6);
\ula_component|ALT_INV_aux_mult\(5) <= NOT \ula_component|aux_mult\(5);
\ula_component|ALT_INV_aux_mult\(4) <= NOT \ula_component|aux_mult\(4);
\ula_component|ALT_INV_aux_mult\(3) <= NOT \ula_component|aux_mult\(3);
\ula_component|ALT_INV_aux_mult\(2) <= NOT \ula_component|aux_mult\(2);
\ula_component|ALT_INV_aux_mult\(1) <= NOT \ula_component|aux_mult\(1);
\ula_component|ALT_INV_aux_mult\(0) <= NOT \ula_component|aux_mult\(0);
\UniControl_component|ALT_INV_state.estadoS0~q\ <= NOT \UniControl_component|state.estadoS0~q\;

-- Location: IOOBUF_X62_Y0_N19
\out_BDReg_reg_escrito~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|esc_reg$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_BDReg_reg_escrito);

-- Location: IOOBUF_X84_Y81_N36
\out_BDReg_lido_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom8_component|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_BDReg_lido_A(0));

-- Location: IOOBUF_X72_Y81_N36
\out_BDReg_lido_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom8_component|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_BDReg_lido_A(1));

-- Location: IOOBUF_X72_Y81_N2
\out_BDReg_lido_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom8_component|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_BDReg_lido_B(0));

-- Location: IOOBUF_X68_Y81_N2
\out_BDReg_lido_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom8_component|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_BDReg_lido_B(1));

-- Location: IOOBUF_X34_Y0_N59
\out_PC_entrada[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxPUJ_component|Mux0~0_combout\,
	oe => \muxPUJ_component|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_out_PC_entrada(0));

-- Location: IOOBUF_X28_Y0_N53
\out_PC_entrada[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxPUJ_component|Mux1~0_combout\,
	oe => \muxPUJ_component|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_out_PC_entrada(1));

-- Location: IOOBUF_X28_Y0_N2
\out_PC_entrada[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxPUJ_component|Mux2~0_combout\,
	oe => \muxPUJ_component|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_out_PC_entrada(2));

-- Location: IOOBUF_X34_Y0_N93
\out_PC_entrada[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxPUJ_component|Mux3~0_combout\,
	oe => \muxPUJ_component|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_out_PC_entrada(3));

-- Location: IOOBUF_X30_Y0_N53
\out_PC_entrada[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxPUJ_component|Mux4~0_combout\,
	oe => \muxPUJ_component|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_out_PC_entrada(4));

-- Location: IOOBUF_X30_Y0_N19
\out_PC_entrada[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxPUJ_component|Mux5~0_combout\,
	oe => \muxPUJ_component|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_out_PC_entrada(5));

-- Location: IOOBUF_X28_Y0_N36
\out_PC_entrada[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxPUJ_component|Mux6~0_combout\,
	oe => \muxPUJ_component|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_out_PC_entrada(6));

-- Location: IOOBUF_X30_Y0_N2
\out_PC_entrada[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxPUJ_component|Mux7~0_combout\,
	oe => \muxPUJ_component|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_out_PC_entrada(7));

-- Location: IOOBUF_X60_Y81_N2
\out_MEM_INST_data_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom8_component|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_MEM_INST_data_out(0));

-- Location: IOOBUF_X89_Y35_N96
\out_MEM_INST_data_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom8_component|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_MEM_INST_data_out(1));

-- Location: IOOBUF_X58_Y81_N59
\out_MEM_INST_data_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom8_component|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_MEM_INST_data_out(2));

-- Location: IOOBUF_X70_Y81_N19
\out_MEM_INST_data_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom8_component|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_MEM_INST_data_out(3));

-- Location: IOOBUF_X89_Y36_N22
\out_MEM_INST_data_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom8_component|Mux2~0_combout\,
	oe => \rom8_component|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_MEM_INST_data_out(4));

-- Location: IOOBUF_X89_Y38_N22
\out_MEM_INST_data_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom8_component|Mux4~0_combout\,
	oe => \rom8_component|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_MEM_INST_data_out(5));

-- Location: IOOBUF_X40_Y81_N2
\out_MEM_INST_data_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom8_component|Mux6~0_combout\,
	oe => \rom8_component|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_MEM_INST_data_out(6));

-- Location: IOOBUF_X56_Y81_N53
\out_MEM_INST_data_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom8_component|Mux8~0_combout\,
	oe => \rom8_component|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_MEM_INST_data_out(7));

-- Location: IOOBUF_X52_Y81_N2
\out_AND_B~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|pc_cond$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_AND_B);

-- Location: IOOBUF_X89_Y36_N39
\out_Control_opcode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom8_component|Mux2~0_combout\,
	oe => \rom8_component|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_Control_opcode(0));

-- Location: IOOBUF_X89_Y38_N5
\out_Control_opcode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom8_component|Mux4~0_combout\,
	oe => \rom8_component|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_Control_opcode(1));

-- Location: IOOBUF_X52_Y81_N19
\out_Control_opcode[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom8_component|Mux6~0_combout\,
	oe => \rom8_component|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_Control_opcode(2));

-- Location: IOOBUF_X40_Y81_N53
\out_Control_opcode[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom8_component|Mux8~0_combout\,
	oe => \rom8_component|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_Control_opcode(3));

-- Location: IOOBUF_X36_Y81_N36
\out_Control_Pc_flag~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|pc_flag$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_Control_Pc_flag);

-- Location: IOOBUF_X52_Y81_N53
\out_Control_Pc_Cond~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|pc_cond$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_Control_Pc_Cond);

-- Location: IOOBUF_X89_Y4_N79
\out_Control_lermen~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|ler_men$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_Control_lermen);

-- Location: IOOBUF_X36_Y81_N53
\out_Control_EscMem~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|esc_men$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_Control_EscMem);

-- Location: IOOBUF_X62_Y0_N53
\out_Control_MemParaReg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|memParaReg$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_Control_MemParaReg);

-- Location: IOOBUF_X89_Y4_N96
\out_Control_ULAOp[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|ULAop[0]$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_Control_ULAOp(0));

-- Location: IOOBUF_X89_Y8_N5
\out_Control_ULAOp[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|ULAop[1]$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_Control_ULAOp(1));

-- Location: IOOBUF_X70_Y0_N2
\out_Control_ULAOp[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|ULAop[2]$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_Control_ULAOp(2));

-- Location: IOOBUF_X89_Y8_N39
\out_Control_ULAOp[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|ULAop[3]$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_Control_ULAOp(3));

-- Location: IOOBUF_X64_Y0_N2
\out_Control_EscReg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|esc_reg$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_Control_EscReg);

-- Location: IOOBUF_X40_Y0_N53
\out_Control_Ula_fonteA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|ula_fonteA$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_Control_Ula_fonteA);

-- Location: IOOBUF_X36_Y0_N19
\out_Control_Ula_fonteB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|ula_fonteB[0]$latch~combout\,
	oe => \UniControl_component|ula_fonteB[0]_783~combout\,
	devoe => ww_devoe,
	o => ww_out_Control_Ula_fonteB(0));

-- Location: IOOBUF_X36_Y0_N2
\out_Control_Ula_fonteB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|ula_fonteB[1]$latch~combout\,
	oe => \UniControl_component|ula_fonteB[0]_783~combout\,
	devoe => ww_devoe,
	o => ww_out_Control_Ula_fonteB(1));

-- Location: IOOBUF_X52_Y81_N36
\out_Control_Fonte_Pc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|pc_cond$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_Control_Fonte_Pc(0));

-- Location: IOOBUF_X36_Y81_N2
\out_Control_Fonte_Pc[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|pc_flag$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_Control_Fonte_Pc(1));

-- Location: IOOBUF_X89_Y4_N62
\out_ALU_OP[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|ULAop[0]$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_OP(0));

-- Location: IOOBUF_X89_Y8_N56
\out_ALU_OP[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|ULAop[1]$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_OP(1));

-- Location: IOOBUF_X72_Y0_N53
\out_ALU_OP[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|ULAop[2]$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_OP(2));

-- Location: IOOBUF_X89_Y8_N22
\out_ALU_OP[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|ULAop[3]$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_OP(3));

-- Location: IOOBUF_X89_Y4_N45
\out_Ram_ler_mem~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|ler_men$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_Ram_ler_mem);

-- Location: IOOBUF_X34_Y81_N93
\out_Ram_esc_mem~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UniControl_component|esc_men$latch~combout\,
	oe => \UniControl_component|esc_reg_952~combout\,
	devoe => ww_devoe,
	o => ww_out_Ram_esc_mem);

-- Location: IOOBUF_X89_Y37_N39
\out_Ram_data_in[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom8_component|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_Ram_data_in(0));

-- Location: IOOBUF_X68_Y81_N53
\out_Ram_data_in[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rom8_component|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_Ram_data_in(1));

-- Location: IOOBUF_X60_Y0_N36
\out_Ram_data_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram8_component|mem~45_combout\,
	oe => \UniControl_component|ler_men~2_combout\,
	devoe => ww_devoe,
	o => ww_out_Ram_data_out(0));

-- Location: IOOBUF_X58_Y0_N42
\out_Ram_data_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram8_component|mem~46_combout\,
	oe => \UniControl_component|ler_men~2_combout\,
	devoe => ww_devoe,
	o => ww_out_Ram_data_out(1));

-- Location: IOOBUF_X50_Y0_N93
\out_Ram_data_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram8_component|mem~47_combout\,
	oe => \UniControl_component|ler_men~2_combout\,
	devoe => ww_devoe,
	o => ww_out_Ram_data_out(2));

-- Location: IOOBUF_X60_Y0_N2
\out_Ram_data_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram8_component|mem~48_combout\,
	oe => \UniControl_component|ler_men~2_combout\,
	devoe => ww_devoe,
	o => ww_out_Ram_data_out(3));

-- Location: IOOBUF_X50_Y0_N76
\out_Ram_data_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram8_component|mem~49_combout\,
	oe => \UniControl_component|ler_men~2_combout\,
	devoe => ww_devoe,
	o => ww_out_Ram_data_out(4));

-- Location: IOOBUF_X60_Y0_N19
\out_Ram_data_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram8_component|mem~50_combout\,
	oe => \UniControl_component|ler_men~2_combout\,
	devoe => ww_devoe,
	o => ww_out_Ram_data_out(5));

-- Location: IOOBUF_X60_Y0_N53
\out_Ram_data_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram8_component|mem~51_combout\,
	oe => \UniControl_component|ler_men~2_combout\,
	devoe => ww_devoe,
	o => ww_out_Ram_data_out(6));

-- Location: IOOBUF_X58_Y0_N93
\out_Ram_data_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram8_component|mem~52_combout\,
	oe => \UniControl_component|ler_men~2_combout\,
	devoe => ww_devoe,
	o => ww_out_Ram_data_out(7));

-- Location: IOOBUF_X88_Y81_N54
\out_SystemClock~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProIAClock~inputCLKENA0_outclk\,
	devoe => ww_devoe,
	o => ww_out_SystemClock);

-- Location: IOOBUF_X89_Y6_N22
\out_BDReg_dado_escrito[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxUM_component|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_out_BDReg_dado_escrito(0));

-- Location: IOOBUF_X58_Y0_N76
\out_BDReg_dado_escrito[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxUM_component|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_out_BDReg_dado_escrito(1));

-- Location: IOOBUF_X8_Y0_N2
\out_BDReg_dado_escrito[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxUM_component|saida[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_out_BDReg_dado_escrito(2));

-- Location: IOOBUF_X52_Y0_N53
\out_BDReg_dado_escrito[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxUM_component|saida[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_out_BDReg_dado_escrito(3));

-- Location: IOOBUF_X38_Y81_N19
\out_BDReg_dado_escrito[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxUM_component|saida[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_out_BDReg_dado_escrito(4));

-- Location: IOOBUF_X52_Y0_N2
\out_BDReg_dado_escrito[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxUM_component|saida[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_out_BDReg_dado_escrito(5));

-- Location: IOOBUF_X40_Y81_N19
\out_BDReg_dado_escrito[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxUM_component|saida[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_out_BDReg_dado_escrito(6));

-- Location: IOOBUF_X89_Y6_N56
\out_BDReg_dado_escrito[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxUM_component|saida[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_out_BDReg_dado_escrito(7));

-- Location: IOOBUF_X26_Y0_N59
\out_BDDado_lido_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \breg8_component|SaidaA\(0),
	devoe => ww_devoe,
	o => ww_out_BDDado_lido_A(0));

-- Location: IOOBUF_X89_Y9_N56
\out_BDDado_lido_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \breg8_component|SaidaA\(1),
	devoe => ww_devoe,
	o => ww_out_BDDado_lido_A(1));

-- Location: IOOBUF_X6_Y0_N2
\out_BDDado_lido_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \breg8_component|SaidaA\(2),
	devoe => ww_devoe,
	o => ww_out_BDDado_lido_A(2));

-- Location: IOOBUF_X66_Y0_N93
\out_BDDado_lido_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \breg8_component|SaidaA\(3),
	devoe => ww_devoe,
	o => ww_out_BDDado_lido_A(3));

-- Location: IOOBUF_X40_Y81_N36
\out_BDDado_lido_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \breg8_component|SaidaA\(4),
	devoe => ww_devoe,
	o => ww_out_BDDado_lido_A(4));

-- Location: IOOBUF_X68_Y0_N53
\out_BDDado_lido_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \breg8_component|SaidaA\(5),
	devoe => ww_devoe,
	o => ww_out_BDDado_lido_A(5));

-- Location: IOOBUF_X26_Y0_N42
\out_BDDado_lido_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \breg8_component|SaidaA\(6),
	devoe => ww_devoe,
	o => ww_out_BDDado_lido_A(6));

-- Location: IOOBUF_X32_Y81_N2
\out_BDDado_lido_A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \breg8_component|SaidaA\(7),
	devoe => ww_devoe,
	o => ww_out_BDDado_lido_A(7));

-- Location: IOOBUF_X32_Y81_N19
\out_BDDado_lido_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \breg8_component|SaidaB\(0),
	devoe => ww_devoe,
	o => ww_out_BDDado_lido_B(0));

-- Location: IOOBUF_X30_Y0_N36
\out_BDDado_lido_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \breg8_component|SaidaB\(1),
	devoe => ww_devoe,
	o => ww_out_BDDado_lido_B(1));

-- Location: IOOBUF_X28_Y0_N19
\out_BDDado_lido_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \breg8_component|SaidaB\(2),
	devoe => ww_devoe,
	o => ww_out_BDDado_lido_B(2));

-- Location: IOOBUF_X30_Y81_N36
\out_BDDado_lido_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \breg8_component|SaidaB\(3),
	devoe => ww_devoe,
	o => ww_out_BDDado_lido_B(3));

-- Location: IOOBUF_X56_Y0_N19
\out_BDDado_lido_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \breg8_component|SaidaB\(4),
	devoe => ww_devoe,
	o => ww_out_BDDado_lido_B(4));

-- Location: IOOBUF_X66_Y0_N59
\out_BDDado_lido_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \breg8_component|SaidaB\(5),
	devoe => ww_devoe,
	o => ww_out_BDDado_lido_B(5));

-- Location: IOOBUF_X30_Y81_N19
\out_BDDado_lido_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \breg8_component|SaidaB\(6),
	devoe => ww_devoe,
	o => ww_out_BDDado_lido_B(6));

-- Location: IOOBUF_X56_Y0_N2
\out_BDDado_lido_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \breg8_component|SaidaB\(7),
	devoe => ww_devoe,
	o => ww_out_BDDado_lido_B(7));

-- Location: IOOBUF_X34_Y81_N59
\out_PC_saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|saidaPC\(0),
	devoe => ww_devoe,
	o => ww_out_PC_saida(0));

-- Location: IOOBUF_X62_Y0_N36
\out_PC_saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|saidaPC\(1),
	devoe => ww_devoe,
	o => ww_out_PC_saida(1));

-- Location: IOOBUF_X36_Y81_N19
\out_PC_saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|saidaPC\(2),
	devoe => ww_devoe,
	o => ww_out_PC_saida(2));

-- Location: IOOBUF_X26_Y0_N76
\out_PC_saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|saidaPC\(3),
	devoe => ww_devoe,
	o => ww_out_PC_saida(3));

-- Location: IOOBUF_X64_Y0_N19
\out_PC_saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|saidaPC\(4),
	devoe => ww_devoe,
	o => ww_out_PC_saida(4));

-- Location: IOOBUF_X89_Y6_N5
\out_PC_saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|saidaPC\(5),
	devoe => ww_devoe,
	o => ww_out_PC_saida(5));

-- Location: IOOBUF_X32_Y0_N36
\out_PC_saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|saidaPC\(6),
	devoe => ww_devoe,
	o => ww_out_PC_saida(6));

-- Location: IOOBUF_X72_Y0_N19
\out_PC_saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|saidaPC\(7),
	devoe => ww_devoe,
	o => ww_out_PC_saida(7));

-- Location: IOOBUF_X2_Y0_N42
\out_PC_clock~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProIAClock~inputCLKENA0_outclk\,
	devoe => ww_devoe,
	o => ww_out_PC_clock);

-- Location: IOOBUF_X34_Y81_N76
\out_MEM_INST_address[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|saidaPC\(0),
	devoe => ww_devoe,
	o => ww_out_MEM_INST_address(0));

-- Location: IOOBUF_X62_Y0_N2
\out_MEM_INST_address[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|saidaPC\(1),
	devoe => ww_devoe,
	o => ww_out_MEM_INST_address(1));

-- Location: IOOBUF_X38_Y81_N2
\out_MEM_INST_address[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|saidaPC\(2),
	devoe => ww_devoe,
	o => ww_out_MEM_INST_address(2));

-- Location: IOOBUF_X26_Y0_N93
\out_MEM_INST_address[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|saidaPC\(3),
	devoe => ww_devoe,
	o => ww_out_MEM_INST_address(3));

-- Location: IOOBUF_X66_Y0_N76
\out_MEM_INST_address[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|saidaPC\(4),
	devoe => ww_devoe,
	o => ww_out_MEM_INST_address(4));

-- Location: IOOBUF_X89_Y6_N39
\out_MEM_INST_address[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|saidaPC\(5),
	devoe => ww_devoe,
	o => ww_out_MEM_INST_address(5));

-- Location: IOOBUF_X32_Y0_N19
\out_MEM_INST_address[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|saidaPC\(6),
	devoe => ww_devoe,
	o => ww_out_MEM_INST_address(6));

-- Location: IOOBUF_X72_Y0_N36
\out_MEM_INST_address[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc_component|saidaPC\(7),
	devoe => ww_devoe,
	o => ww_out_MEM_INST_address(7));

-- Location: IOOBUF_X38_Y0_N2
\out_AND_A~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_component|zero~q\,
	devoe => ww_devoe,
	o => ww_out_AND_A);

-- Location: IOOBUF_X50_Y0_N42
\out_AND_Result~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \And_component|R~combout\,
	devoe => ww_devoe,
	o => ww_out_AND_Result);

-- Location: IOOBUF_X70_Y81_N53
\out_Control_clock~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProIAClock~inputCLKENA0_outclk\,
	devoe => ww_devoe,
	o => ww_out_Control_clock);

-- Location: IOOBUF_X32_Y0_N2
\out_ALU_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxA_component|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_A(0));

-- Location: IOOBUF_X6_Y0_N19
\out_ALU_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxA_component|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_A(1));

-- Location: IOOBUF_X8_Y0_N36
\out_ALU_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxA_component|saida[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_A(2));

-- Location: IOOBUF_X38_Y0_N36
\out_ALU_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxA_component|saida[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_A(3));

-- Location: IOOBUF_X52_Y0_N36
\out_ALU_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxA_component|saida[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_A(4));

-- Location: IOOBUF_X64_Y0_N36
\out_ALU_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxA_component|saida[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_A(5));

-- Location: IOOBUF_X64_Y0_N53
\out_ALU_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxA_component|saida[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_A(6));

-- Location: IOOBUF_X40_Y0_N36
\out_ALU_A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxA_component|saida[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_A(7));

-- Location: IOOBUF_X34_Y0_N42
\out_ALU_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxB_component|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_B(0));

-- Location: IOOBUF_X32_Y0_N53
\out_ALU_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxB_component|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_B(1));

-- Location: IOOBUF_X36_Y0_N53
\out_ALU_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxB_component|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_B(2));

-- Location: IOOBUF_X56_Y0_N53
\out_ALU_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxB_component|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_B(3));

-- Location: IOOBUF_X36_Y0_N36
\out_ALU_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxB_component|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_B(4));

-- Location: IOOBUF_X40_Y0_N2
\out_ALU_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxB_component|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_B(5));

-- Location: IOOBUF_X50_Y0_N59
\out_ALU_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxB_component|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_B(6));

-- Location: IOOBUF_X40_Y0_N19
\out_ALU_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxB_component|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_out_ALU_B(7));

-- Location: IOOBUF_X38_Y0_N19
\out_ALU_zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_component|zero~q\,
	devoe => ww_devoe,
	o => ww_out_ALU_zero);

-- Location: IOOBUF_X8_Y0_N53
\out_ALU_result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_component|resultado\(0),
	devoe => ww_devoe,
	o => ww_out_ALU_result(0));

-- Location: IOOBUF_X30_Y81_N53
\out_ALU_result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_component|resultado\(1),
	devoe => ww_devoe,
	o => ww_out_ALU_result(1));

-- Location: IOOBUF_X38_Y81_N36
\out_ALU_result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_component|resultado\(2),
	devoe => ww_devoe,
	o => ww_out_ALU_result(2));

-- Location: IOOBUF_X38_Y0_N53
\out_ALU_result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_component|resultado\(3),
	devoe => ww_devoe,
	o => ww_out_ALU_result(3));

-- Location: IOOBUF_X54_Y0_N36
\out_ALU_result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_component|resultado\(4),
	devoe => ww_devoe,
	o => ww_out_ALU_result(4));

-- Location: IOOBUF_X68_Y0_N36
\out_ALU_result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_component|resultado\(5),
	devoe => ww_devoe,
	o => ww_out_ALU_result(5));

-- Location: IOOBUF_X66_Y0_N42
\out_ALU_result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_component|resultado\(6),
	devoe => ww_devoe,
	o => ww_out_ALU_result(6));

-- Location: IOOBUF_X54_Y0_N53
\out_ALU_result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_component|resultado\(7),
	devoe => ww_devoe,
	o => ww_out_ALU_result(7));

-- Location: IOOBUF_X68_Y0_N2
\out_Ram_address[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULAout_component|Q\(0),
	devoe => ww_devoe,
	o => ww_out_Ram_address(0));

-- Location: IOOBUF_X54_Y0_N19
\out_Ram_address[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULAout_component|Q\(1),
	devoe => ww_devoe,
	o => ww_out_Ram_address(1));

-- Location: IOOBUF_X70_Y0_N19
\out_Ram_address[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULAout_component|Q\(2),
	devoe => ww_devoe,
	o => ww_out_Ram_address(2));

-- Location: IOOBUF_X58_Y0_N59
\out_Ram_address[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULAout_component|Q\(3),
	devoe => ww_devoe,
	o => ww_out_Ram_address(3));

-- Location: IOOBUF_X68_Y0_N19
\out_Ram_address[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULAout_component|Q\(4),
	devoe => ww_devoe,
	o => ww_out_Ram_address(4));

-- Location: IOOBUF_X56_Y0_N36
\out_Ram_address[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULAout_component|Q\(5),
	devoe => ww_devoe,
	o => ww_out_Ram_address(5));

-- Location: IOOBUF_X52_Y0_N19
\out_Ram_address[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULAout_component|Q\(6),
	devoe => ww_devoe,
	o => ww_out_Ram_address(6));

-- Location: IOOBUF_X54_Y0_N2
\out_Ram_address[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULAout_component|Q\(7),
	devoe => ww_devoe,
	o => ww_out_Ram_address(7));

-- Location: IOOBUF_X26_Y81_N59
\out_Ram_data_in[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_Ram_data_in(2));

-- Location: IOOBUF_X84_Y81_N53
\out_Ram_data_in[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_Ram_data_in(3));

-- Location: IOOBUF_X34_Y81_N42
\out_Ram_data_in[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_Ram_data_in(4));

-- Location: IOOBUF_X68_Y81_N36
\out_Ram_data_in[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_Ram_data_in(5));

-- Location: IOOBUF_X56_Y81_N19
\out_Ram_data_in[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_Ram_data_in(6));

-- Location: IOOBUF_X28_Y81_N2
\out_Ram_data_in[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_Ram_data_in(7));

-- Location: IOIBUF_X34_Y0_N75
\ProIAEnableFlag~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProIAEnableFlag,
	o => \ProIAEnableFlag~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\ProIAClock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProIAClock,
	o => \ProIAClock~input_o\);

-- Location: CLKCTRL_G10
\ProIAClock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \ProIAClock~input_o\,
	outclk => \ProIAClock~inputCLKENA0_outclk\);

-- Location: LABCELL_X35_Y3_N39
\UniControl_component|recv_opcode[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|recv_opcode[0]~9_combout\ = ( \ProIAEnableFlag~input_o\ & ( \UniControl_component|state.estadoS0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_state.estadoS0~q\,
	dataf => \ALT_INV_ProIAEnableFlag~input_o\,
	combout => \UniControl_component|recv_opcode[0]~9_combout\);

-- Location: LABCELL_X35_Y3_N6
\UniControl_component|recv_opcode~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|recv_opcode~2_combout\ = ( \rom8_component|data[5]~19_combout\ & ( (\UniControl_component|recv_opcode\(1)) # (\UniControl_component|state.estadoS0~q\) ) ) # ( !\rom8_component|data[5]~19_combout\ & ( 
-- (!\UniControl_component|state.estadoS0~q\ & \UniControl_component|recv_opcode\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_state.estadoS0~q\,
	datad => \UniControl_component|ALT_INV_recv_opcode\(1),
	dataf => \rom8_component|ALT_INV_data[5]~19_combout\,
	combout => \UniControl_component|recv_opcode~2_combout\);

-- Location: LABCELL_X35_Y3_N27
\UniControl_component|recv_opcode[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|recv_opcode\(3) = ( \rom8_component|data[7]~21_combout\ & ( (\UniControl_component|recv_opcode[0]~9_combout\) # (\UniControl_component|recv_opcode\(3)) ) ) # ( !\rom8_component|data[7]~21_combout\ & ( 
-- (\UniControl_component|recv_opcode\(3) & !\UniControl_component|recv_opcode[0]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_recv_opcode\(3),
	datac => \UniControl_component|ALT_INV_recv_opcode[0]~9_combout\,
	dataf => \rom8_component|ALT_INV_data[7]~21_combout\,
	combout => \UniControl_component|recv_opcode\(3));

-- Location: LABCELL_X35_Y3_N21
\UniControl_component|recv_opcode~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|recv_opcode~4_combout\ = ( \UniControl_component|recv_opcode\(3) & ( (!\UniControl_component|state.estadoS0~q\) # (\rom8_component|data[7]~21_combout\) ) ) # ( !\UniControl_component|recv_opcode\(3) & ( 
-- (\UniControl_component|state.estadoS0~q\ & \rom8_component|data[7]~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS0~q\,
	datad => \rom8_component|ALT_INV_data[7]~21_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode\(3),
	combout => \UniControl_component|recv_opcode~4_combout\);

-- Location: MLABCELL_X34_Y4_N30
\UniControl_component|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux11~0_combout\ = ( \UniControl_component|recv_opcode~3_combout\ & ( \UniControl_component|recv_opcode~2_combout\ & ( (\ProIAEnableFlag~input_o\ & (\UniControl_component|state.estadoS1~q\ & 
-- (\UniControl_component|recv_opcode~1_combout\ & !\UniControl_component|recv_opcode~4_combout\))) ) ) ) # ( !\UniControl_component|recv_opcode~3_combout\ & ( !\UniControl_component|recv_opcode~2_combout\ & ( (\ProIAEnableFlag~input_o\ & 
-- (\UniControl_component|state.estadoS1~q\ & \UniControl_component|recv_opcode~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ProIAEnableFlag~input_o\,
	datab => \UniControl_component|ALT_INV_state.estadoS1~q\,
	datac => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode~4_combout\,
	datae => \UniControl_component|ALT_INV_recv_opcode~3_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	combout => \UniControl_component|Mux11~0_combout\);

-- Location: FF_X34_Y4_N32
\UniControl_component|state.estadoS2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \UniControl_component|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UniControl_component|state.estadoS2~q\);

-- Location: MLABCELL_X34_Y4_N0
\UniControl_component|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux12~0_combout\ = ( \UniControl_component|state.estadoS2~q\ & ( \ProIAEnableFlag~input_o\ & ( (!\UniControl_component|recv_opcode~2_combout\ & (\UniControl_component|recv_opcode~4_combout\ & 
-- (!\UniControl_component|recv_opcode~3_combout\ & !\UniControl_component|recv_opcode~1_combout\))) # (\UniControl_component|recv_opcode~2_combout\ & (!\UniControl_component|recv_opcode~4_combout\ & (\UniControl_component|recv_opcode~3_combout\ & 
-- \UniControl_component|recv_opcode~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	datab => \UniControl_component|ALT_INV_recv_opcode~4_combout\,
	datac => \UniControl_component|ALT_INV_recv_opcode~3_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	datae => \UniControl_component|ALT_INV_state.estadoS2~q\,
	dataf => \ALT_INV_ProIAEnableFlag~input_o\,
	combout => \UniControl_component|Mux12~0_combout\);

-- Location: FF_X34_Y4_N2
\UniControl_component|state.estadoS3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \UniControl_component|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UniControl_component|state.estadoS3~q\);

-- Location: MLABCELL_X34_Y4_N12
\UniControl_component|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux13~0_combout\ = ( \UniControl_component|recv_opcode~2_combout\ & ( (\UniControl_component|state.estadoS3~q\ & (\UniControl_component|recv_opcode~1_combout\ & (\UniControl_component|recv_opcode~3_combout\ & 
-- !\UniControl_component|recv_opcode~4_combout\))) ) ) # ( !\UniControl_component|recv_opcode~2_combout\ & ( (\UniControl_component|state.estadoS3~q\ & (!\UniControl_component|recv_opcode~1_combout\ & (!\UniControl_component|recv_opcode~3_combout\ & 
-- \UniControl_component|recv_opcode~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS3~q\,
	datab => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	datac => \UniControl_component|ALT_INV_recv_opcode~3_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode~4_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	combout => \UniControl_component|Mux13~0_combout\);

-- Location: MLABCELL_X34_Y4_N42
\UniControl_component|ler_men$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|ler_men$latch~combout\ = ( \UniControl_component|Mux13~0_combout\ & ( (\ProIAEnableFlag~input_o\ & ((\UniControl_component|Mux21~4_combout\) # (\UniControl_component|ler_men$latch~combout\))) ) ) # ( 
-- !\UniControl_component|Mux13~0_combout\ & ( (\UniControl_component|ler_men$latch~combout\ & (!\UniControl_component|Mux21~4_combout\ & \ProIAEnableFlag~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_ler_men$latch~combout\,
	datac => \UniControl_component|ALT_INV_Mux21~4_combout\,
	datad => \ALT_INV_ProIAEnableFlag~input_o\,
	dataf => \UniControl_component|ALT_INV_Mux13~0_combout\,
	combout => \UniControl_component|ler_men$latch~combout\);

-- Location: LABCELL_X43_Y3_N45
\UniControl_component|ler_men~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|ler_men~2_combout\ = (!\UniControl_component|esc_reg_952~combout\) # (\UniControl_component|ler_men$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datac => \UniControl_component|ALT_INV_ler_men$latch~combout\,
	combout => \UniControl_component|ler_men~2_combout\);

-- Location: MLABCELL_X34_Y3_N51
\UniControl_component|recv_opcode[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|recv_opcode\(2) = ( \rom8_component|data[6]~20_combout\ & ( (\UniControl_component|recv_opcode[0]~9_combout\) # (\UniControl_component|recv_opcode\(2)) ) ) # ( !\rom8_component|data[6]~20_combout\ & ( 
-- (\UniControl_component|recv_opcode\(2) & !\UniControl_component|recv_opcode[0]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_recv_opcode\(2),
	datad => \UniControl_component|ALT_INV_recv_opcode[0]~9_combout\,
	dataf => \rom8_component|ALT_INV_data[6]~20_combout\,
	combout => \UniControl_component|recv_opcode\(2));

-- Location: LABCELL_X33_Y3_N48
\UniControl_component|tempState.estadoS9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|tempState.estadoS9~0_combout\ = ( \rom8_component|data[6]~20_combout\ & ( (\UniControl_component|recv_opcode\(3) & (!\UniControl_component|recv_opcode\(2) & !\UniControl_component|state.estadoS0~q\)) ) ) # ( 
-- !\rom8_component|data[6]~20_combout\ & ( (!\UniControl_component|state.estadoS0~q\ & (\UniControl_component|recv_opcode\(3) & ((!\UniControl_component|recv_opcode\(2))))) # (\UniControl_component|state.estadoS0~q\ & 
-- (((\rom8_component|data[7]~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110011010100000011001101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_recv_opcode\(3),
	datab => \rom8_component|ALT_INV_data[7]~21_combout\,
	datac => \UniControl_component|ALT_INV_recv_opcode\(2),
	datad => \UniControl_component|ALT_INV_state.estadoS0~q\,
	dataf => \rom8_component|ALT_INV_data[6]~20_combout\,
	combout => \UniControl_component|tempState.estadoS9~0_combout\);

-- Location: LABCELL_X33_Y3_N6
\UniControl_component|tempState.estadoS5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|tempState.estadoS5~0_combout\ = ( \UniControl_component|tempState.estadoS9~0_combout\ & ( (\UniControl_component|state.estadoS2~q\ & (\ProIAEnableFlag~input_o\ & (\UniControl_component|recv_opcode~1_combout\ & 
-- !\UniControl_component|recv_opcode~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS2~q\,
	datab => \ALT_INV_ProIAEnableFlag~input_o\,
	datac => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	dataf => \UniControl_component|ALT_INV_tempState.estadoS9~0_combout\,
	combout => \UniControl_component|tempState.estadoS5~0_combout\);

-- Location: FF_X33_Y3_N8
\UniControl_component|state.estadoS5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \UniControl_component|tempState.estadoS5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UniControl_component|state.estadoS5~q\);

-- Location: MLABCELL_X34_Y2_N57
\UniControl_component|Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux34~0_combout\ = ( \rom8_component|data[7]~21_combout\ & ( \UniControl_component|recv_opcode\(0) & ( (\UniControl_component|state.estadoS5~q\ & ((!\UniControl_component|state.estadoS0~q\ & (\UniControl_component|recv_opcode\(3))) # 
-- (\UniControl_component|state.estadoS0~q\ & ((\rom8_component|data[4]~18_combout\))))) ) ) ) # ( !\rom8_component|data[7]~21_combout\ & ( \UniControl_component|recv_opcode\(0) & ( (\UniControl_component|recv_opcode\(3) & 
-- (!\UniControl_component|state.estadoS0~q\ & \UniControl_component|state.estadoS5~q\)) ) ) ) # ( \rom8_component|data[7]~21_combout\ & ( !\UniControl_component|recv_opcode\(0) & ( (\rom8_component|data[4]~18_combout\ & 
-- (\UniControl_component|state.estadoS0~q\ & \UniControl_component|state.estadoS5~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000010100000000000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_recv_opcode\(3),
	datab => \rom8_component|ALT_INV_data[4]~18_combout\,
	datac => \UniControl_component|ALT_INV_state.estadoS0~q\,
	datad => \UniControl_component|ALT_INV_state.estadoS5~q\,
	datae => \rom8_component|ALT_INV_data[7]~21_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode\(0),
	combout => \UniControl_component|Mux34~0_combout\);

-- Location: MLABCELL_X34_Y2_N6
\UniControl_component|esc_men$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|esc_men$latch~combout\ = ( \ProIAEnableFlag~input_o\ & ( \UniControl_component|Mux34~0_combout\ & ( (\UniControl_component|esc_men$latch~combout\) # (\UniControl_component|Mux21~4_combout\) ) ) ) # ( \ProIAEnableFlag~input_o\ & ( 
-- !\UniControl_component|Mux34~0_combout\ & ( (!\UniControl_component|Mux21~4_combout\ & \UniControl_component|esc_men$latch~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_Mux21~4_combout\,
	datad => \UniControl_component|ALT_INV_esc_men$latch~combout\,
	datae => \ALT_INV_ProIAEnableFlag~input_o\,
	dataf => \UniControl_component|ALT_INV_Mux34~0_combout\,
	combout => \UniControl_component|esc_men$latch~combout\);

-- Location: LABCELL_X40_Y3_N54
\ram8_component|mem~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|mem~53_combout\ = ( !\pc_component|saidaPC\(7) & ( \UniControl_component|esc_men$latch~combout\ & ( (!\pc_component|saidaPC\(5) & (!\pc_component|saidaPC\(4) & !\pc_component|saidaPC\(6))) ) ) ) # ( !\pc_component|saidaPC\(7) & ( 
-- !\UniControl_component|esc_men$latch~combout\ & ( (!\pc_component|saidaPC\(5) & (!\pc_component|saidaPC\(4) & (!\UniControl_component|esc_reg_952~combout\ & !\pc_component|saidaPC\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|ALT_INV_saidaPC\(5),
	datab => \pc_component|ALT_INV_saidaPC\(4),
	datac => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datad => \pc_component|ALT_INV_saidaPC\(6),
	datae => \pc_component|ALT_INV_saidaPC\(7),
	dataf => \UniControl_component|ALT_INV_esc_men$latch~combout\,
	combout => \ram8_component|mem~53_combout\);

-- Location: FF_X43_Y3_N29
\ram8_component|mem~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ULAout_component|Q\(4),
	sload => VCC,
	ena => \ram8_component|mem~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram8_component|mem~17_q\);

-- Location: LABCELL_X42_Y3_N36
\ram8_component|mem~41feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|mem~41feeder_combout\ = ( \ULAout_component|Q\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULAout_component|ALT_INV_Q\(4),
	combout => \ram8_component|mem~41feeder_combout\);

-- Location: LABCELL_X40_Y3_N48
\ram8_component|mem~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|mem~54_combout\ = ( \pc_component|saidaPC\(7) & ( \UniControl_component|esc_men$latch~combout\ ) ) # ( !\pc_component|saidaPC\(7) & ( \UniControl_component|esc_men$latch~combout\ & ( ((\pc_component|saidaPC\(6)) # 
-- (\pc_component|saidaPC\(5))) # (\pc_component|saidaPC\(4)) ) ) ) # ( \pc_component|saidaPC\(7) & ( !\UniControl_component|esc_men$latch~combout\ & ( !\UniControl_component|esc_reg_952~combout\ ) ) ) # ( !\pc_component|saidaPC\(7) & ( 
-- !\UniControl_component|esc_men$latch~combout\ & ( (!\UniControl_component|esc_reg_952~combout\ & (((\pc_component|saidaPC\(6)) # (\pc_component|saidaPC\(5))) # (\pc_component|saidaPC\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010101010101010101000111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datab => \pc_component|ALT_INV_saidaPC\(4),
	datac => \pc_component|ALT_INV_saidaPC\(5),
	datad => \pc_component|ALT_INV_saidaPC\(6),
	datae => \pc_component|ALT_INV_saidaPC\(7),
	dataf => \UniControl_component|ALT_INV_esc_men$latch~combout\,
	combout => \ram8_component|mem~54_combout\);

-- Location: FF_X42_Y3_N37
\ram8_component|mem~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ram8_component|mem~41feeder_combout\,
	ena => \ram8_component|mem~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram8_component|mem~41_q\);

-- Location: LABCELL_X43_Y3_N27
\ram8_component|mem~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|mem~49_combout\ = ( \ram8_component|mem~41_q\ & ( (!\rom8_component|Mux1~0_combout\) # (\ram8_component|mem~17_q\) ) ) # ( !\ram8_component|mem~41_q\ & ( (\rom8_component|Mux1~0_combout\ & \ram8_component|mem~17_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom8_component|ALT_INV_Mux1~0_combout\,
	datad => \ram8_component|ALT_INV_mem~17_q\,
	dataf => \ram8_component|ALT_INV_mem~41_q\,
	combout => \ram8_component|mem~49_combout\);

-- Location: LABCELL_X43_Y3_N33
\ram8_component|data_saida[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|data_saida[4]~12_combout\ = ( \ram8_component|mem~49_combout\ ) # ( !\ram8_component|mem~49_combout\ & ( !\UniControl_component|ler_men~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_ler_men~2_combout\,
	dataf => \ram8_component|ALT_INV_mem~49_combout\,
	combout => \ram8_component|data_saida[4]~12_combout\);

-- Location: FF_X43_Y3_N35
\MDR_component|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ram8_component|data_saida[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR_component|Q\(4));

-- Location: LABCELL_X35_Y3_N18
\UniControl_component|Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux32~0_combout\ = ( \UniControl_component|recv_opcode~1_combout\ & ( (!\UniControl_component|recv_opcode~4_combout\ & !\UniControl_component|recv_opcode~3_combout\) ) ) # ( !\UniControl_component|recv_opcode~1_combout\ & ( 
-- (!\UniControl_component|recv_opcode~4_combout\ & ((!\UniControl_component|recv_opcode~2_combout\) # (!\UniControl_component|recv_opcode~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	datac => \UniControl_component|ALT_INV_recv_opcode~4_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode~3_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	combout => \UniControl_component|Mux32~0_combout\);

-- Location: LABCELL_X35_Y2_N48
\UniControl_component|Mux32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux32~1_combout\ = ( \UniControl_component|Mux32~0_combout\ & ( !\UniControl_component|state.estadoS7~q\ ) ) # ( !\UniControl_component|Mux32~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_state.estadoS7~q\,
	dataf => \UniControl_component|ALT_INV_Mux32~0_combout\,
	combout => \UniControl_component|Mux32~1_combout\);

-- Location: LABCELL_X35_Y2_N57
\UniControl_component|memParaReg$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|memParaReg$latch~combout\ = ( \UniControl_component|Mux21~4_combout\ & ( (\UniControl_component|Mux32~1_combout\ & \ProIAEnableFlag~input_o\) ) ) # ( !\UniControl_component|Mux21~4_combout\ & ( (\ProIAEnableFlag~input_o\ & 
-- \UniControl_component|memParaReg$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_Mux32~1_combout\,
	datac => \ALT_INV_ProIAEnableFlag~input_o\,
	datad => \UniControl_component|ALT_INV_memParaReg$latch~combout\,
	dataf => \UniControl_component|ALT_INV_Mux21~4_combout\,
	combout => \UniControl_component|memParaReg$latch~combout\);

-- Location: LABCELL_X43_Y3_N30
\muxUM_component|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxUM_component|saida[4]~4_combout\ = ( \ULAout_component|Q\(4) & ( ((\UniControl_component|esc_reg_952~combout\ & !\UniControl_component|memParaReg$latch~combout\)) # (\MDR_component|Q\(4)) ) ) # ( !\ULAout_component|Q\(4) & ( (\MDR_component|Q\(4) & 
-- ((!\UniControl_component|esc_reg_952~combout\) # (\UniControl_component|memParaReg$latch~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111000010100000111101011111000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datac => \MDR_component|ALT_INV_Q\(4),
	datad => \UniControl_component|ALT_INV_memParaReg$latch~combout\,
	dataf => \ULAout_component|ALT_INV_Q\(4),
	combout => \muxUM_component|saida[4]~4_combout\);

-- Location: LABCELL_X40_Y3_N51
\breg8_component|reg~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~34_combout\ = ( \pc_component|saidaPC\(7) & ( \UniControl_component|esc_reg$latch~combout\ ) ) # ( !\pc_component|saidaPC\(7) & ( \UniControl_component|esc_reg$latch~combout\ & ( ((\pc_component|saidaPC\(5)) # 
-- (\pc_component|saidaPC\(6))) # (\pc_component|saidaPC\(4)) ) ) ) # ( \pc_component|saidaPC\(7) & ( !\UniControl_component|esc_reg$latch~combout\ & ( !\UniControl_component|esc_reg_952~combout\ ) ) ) # ( !\pc_component|saidaPC\(7) & ( 
-- !\UniControl_component|esc_reg$latch~combout\ & ( (!\UniControl_component|esc_reg_952~combout\ & (((\pc_component|saidaPC\(5)) # (\pc_component|saidaPC\(6))) # (\pc_component|saidaPC\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010101010101010101000111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datab => \pc_component|ALT_INV_saidaPC\(4),
	datac => \pc_component|ALT_INV_saidaPC\(6),
	datad => \pc_component|ALT_INV_saidaPC\(5),
	datae => \pc_component|ALT_INV_saidaPC\(7),
	dataf => \UniControl_component|ALT_INV_esc_reg$latch~combout\,
	combout => \breg8_component|reg~34_combout\);

-- Location: FF_X39_Y3_N50
\breg8_component|reg~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \muxUM_component|saida[4]~4_combout\,
	sload => VCC,
	ena => \breg8_component|reg~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|reg~22_q\);

-- Location: MLABCELL_X39_Y3_N33
\breg8_component|reg~14feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~14feeder_combout\ = \muxUM_component|saida[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxUM_component|ALT_INV_saida[4]~4_combout\,
	combout => \breg8_component|reg~14feeder_combout\);

-- Location: LABCELL_X40_Y3_N57
\breg8_component|reg~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~35_combout\ = ( !\pc_component|saidaPC\(7) & ( \UniControl_component|esc_reg$latch~combout\ & ( (!\pc_component|saidaPC\(5) & (!\pc_component|saidaPC\(4) & !\pc_component|saidaPC\(6))) ) ) ) # ( !\pc_component|saidaPC\(7) & ( 
-- !\UniControl_component|esc_reg$latch~combout\ & ( (!\pc_component|saidaPC\(5) & (!\pc_component|saidaPC\(4) & (!\pc_component|saidaPC\(6) & !\UniControl_component|esc_reg_952~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|ALT_INV_saidaPC\(5),
	datab => \pc_component|ALT_INV_saidaPC\(4),
	datac => \pc_component|ALT_INV_saidaPC\(6),
	datad => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datae => \pc_component|ALT_INV_saidaPC\(7),
	dataf => \UniControl_component|ALT_INV_esc_reg$latch~combout\,
	combout => \breg8_component|reg~35_combout\);

-- Location: FF_X39_Y3_N35
\breg8_component|reg~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \breg8_component|reg~14feeder_combout\,
	ena => \breg8_component|reg~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|reg~14_q\);

-- Location: MLABCELL_X39_Y3_N0
\breg8_component|reg~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~30_combout\ = ( \breg8_component|reg~14_q\ & ( (\breg8_component|reg~22_q\) # (\rom8_component|Mux1~0_combout\) ) ) # ( !\breg8_component|reg~14_q\ & ( (!\rom8_component|Mux1~0_combout\ & \breg8_component|reg~22_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom8_component|ALT_INV_Mux1~0_combout\,
	datac => \breg8_component|ALT_INV_reg~22_q\,
	dataf => \breg8_component|ALT_INV_reg~14_q\,
	combout => \breg8_component|reg~30_combout\);

-- Location: LABCELL_X40_Y3_N6
\UniControl_component|esc_reg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|esc_reg~2_combout\ = ( \UniControl_component|esc_reg_952~combout\ & ( !\UniControl_component|esc_reg$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_esc_reg$latch~combout\,
	dataf => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	combout => \UniControl_component|esc_reg~2_combout\);

-- Location: FF_X39_Y3_N2
\breg8_component|SaidaA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \breg8_component|reg~30_combout\,
	ena => \UniControl_component|esc_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|SaidaA\(4));

-- Location: LABCELL_X35_Y3_N51
\UniControl_component|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux22~0_combout\ = ( \UniControl_component|recv_opcode\(0) & ( (!\UniControl_component|state.estadoS0~q\ & (((!\UniControl_component|recv_opcode\(1))))) # (\UniControl_component|state.estadoS0~q\ & 
-- (!\rom8_component|data[4]~18_combout\ $ ((!\rom8_component|data[5]~19_combout\)))) ) ) # ( !\UniControl_component|recv_opcode\(0) & ( (!\UniControl_component|state.estadoS0~q\ & (((\UniControl_component|recv_opcode\(1))))) # 
-- (\UniControl_component|state.estadoS0~q\ & (!\rom8_component|data[4]~18_combout\ $ ((!\rom8_component|data[5]~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010010111110000101001011111010111110000101001011111000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS0~q\,
	datab => \rom8_component|ALT_INV_data[4]~18_combout\,
	datac => \rom8_component|ALT_INV_data[5]~19_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode\(1),
	dataf => \UniControl_component|ALT_INV_recv_opcode\(0),
	combout => \UniControl_component|Mux22~0_combout\);

-- Location: MLABCELL_X34_Y3_N48
\UniControl_component|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux17~0_combout\ = ( \UniControl_component|Mux22~0_combout\ & ( (\ProIAEnableFlag~input_o\ & (\UniControl_component|state.estadoS1~q\ & \UniControl_component|Mux37~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ProIAEnableFlag~input_o\,
	datac => \UniControl_component|ALT_INV_state.estadoS1~q\,
	datad => \UniControl_component|ALT_INV_Mux37~0_combout\,
	dataf => \UniControl_component|ALT_INV_Mux22~0_combout\,
	combout => \UniControl_component|Mux17~0_combout\);

-- Location: FF_X34_Y3_N50
\UniControl_component|state.estadoS8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \UniControl_component|Mux17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UniControl_component|state.estadoS8~q\);

-- Location: MLABCELL_X34_Y4_N3
\UniControl_component|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux13~1_combout\ = ( \UniControl_component|state.estadoS3~q\ & ( \ProIAEnableFlag~input_o\ & ( (!\UniControl_component|recv_opcode~2_combout\ & (\UniControl_component|recv_opcode~4_combout\ & 
-- (!\UniControl_component|recv_opcode~1_combout\ & !\UniControl_component|recv_opcode~3_combout\))) # (\UniControl_component|recv_opcode~2_combout\ & (!\UniControl_component|recv_opcode~4_combout\ & (\UniControl_component|recv_opcode~1_combout\ & 
-- \UniControl_component|recv_opcode~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	datab => \UniControl_component|ALT_INV_recv_opcode~4_combout\,
	datac => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode~3_combout\,
	datae => \UniControl_component|ALT_INV_state.estadoS3~q\,
	dataf => \ALT_INV_ProIAEnableFlag~input_o\,
	combout => \UniControl_component|Mux13~1_combout\);

-- Location: FF_X34_Y4_N5
\UniControl_component|state.estadoS4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \UniControl_component|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UniControl_component|state.estadoS4~q\);

-- Location: MLABCELL_X34_Y4_N15
\UniControl_component|WideNor2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|WideNor2~0_combout\ = ( !\UniControl_component|state.estadoS2~q\ & ( (!\UniControl_component|state.estadoS3~q\ & !\UniControl_component|state.estadoS4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS3~q\,
	datad => \UniControl_component|ALT_INV_state.estadoS4~q\,
	dataf => \UniControl_component|ALT_INV_state.estadoS2~q\,
	combout => \UniControl_component|WideNor2~0_combout\);

-- Location: LABCELL_X36_Y3_N33
\UniControl_component|recv_opcode~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|recv_opcode~8_combout\ = ( !\UniControl_component|state.estadoS0~q\ & ( \UniControl_component|recv_opcode\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \UniControl_component|ALT_INV_state.estadoS0~q\,
	dataf => \UniControl_component|ALT_INV_recv_opcode\(1),
	combout => \UniControl_component|recv_opcode~8_combout\);

-- Location: FF_X40_Y3_N26
\ram8_component|mem~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ULAout_component|Q\(1),
	sload => VCC,
	ena => \ram8_component|mem~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram8_component|mem~14_q\);

-- Location: LABCELL_X40_Y3_N42
\ram8_component|mem~38feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|mem~38feeder_combout\ = ( \ULAout_component|Q\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULAout_component|ALT_INV_Q\(1),
	combout => \ram8_component|mem~38feeder_combout\);

-- Location: FF_X40_Y3_N44
\ram8_component|mem~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ram8_component|mem~38feeder_combout\,
	ena => \ram8_component|mem~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram8_component|mem~38_q\);

-- Location: LABCELL_X40_Y3_N24
\ram8_component|mem~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|mem~46_combout\ = ( \ram8_component|mem~38_q\ & ( (!\rom8_component|Mux1~0_combout\) # (\ram8_component|mem~14_q\) ) ) # ( !\ram8_component|mem~38_q\ & ( (\rom8_component|Mux1~0_combout\ & \ram8_component|mem~14_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom8_component|ALT_INV_Mux1~0_combout\,
	datad => \ram8_component|ALT_INV_mem~14_q\,
	dataf => \ram8_component|ALT_INV_mem~38_q\,
	combout => \ram8_component|mem~46_combout\);

-- Location: LABCELL_X40_Y3_N36
\ram8_component|data_saida[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|data_saida[1]~9_combout\ = ( \ram8_component|mem~46_combout\ ) # ( !\ram8_component|mem~46_combout\ & ( !\UniControl_component|ler_men~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_ler_men~2_combout\,
	dataf => \ram8_component|ALT_INV_mem~46_combout\,
	combout => \ram8_component|data_saida[1]~9_combout\);

-- Location: FF_X40_Y3_N38
\MDR_component|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ram8_component|data_saida[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR_component|Q\(1));

-- Location: LABCELL_X40_Y3_N39
\muxUM_component|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxUM_component|saida[1]~1_combout\ = ( \ULAout_component|Q\(1) & ( ((\UniControl_component|esc_reg_952~combout\ & !\UniControl_component|memParaReg$latch~combout\)) # (\MDR_component|Q\(1)) ) ) # ( !\ULAout_component|Q\(1) & ( (\MDR_component|Q\(1) & 
-- ((!\UniControl_component|esc_reg_952~combout\) # (\UniControl_component|memParaReg$latch~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111101010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datac => \UniControl_component|ALT_INV_memParaReg$latch~combout\,
	datad => \MDR_component|ALT_INV_Q\(1),
	dataf => \ULAout_component|ALT_INV_Q\(1),
	combout => \muxUM_component|saida[1]~1_combout\);

-- Location: MLABCELL_X39_Y3_N27
\breg8_component|reg~19feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~19feeder_combout\ = \muxUM_component|saida[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxUM_component|ALT_INV_saida[1]~1_combout\,
	combout => \breg8_component|reg~19feeder_combout\);

-- Location: FF_X39_Y3_N29
\breg8_component|reg~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \breg8_component|reg~19feeder_combout\,
	ena => \breg8_component|reg~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|reg~19_q\);

-- Location: MLABCELL_X39_Y3_N21
\breg8_component|reg~11feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~11feeder_combout\ = \muxUM_component|saida[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxUM_component|ALT_INV_saida[1]~1_combout\,
	combout => \breg8_component|reg~11feeder_combout\);

-- Location: FF_X39_Y3_N22
\breg8_component|reg~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \breg8_component|reg~11feeder_combout\,
	ena => \breg8_component|reg~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|reg~11_q\);

-- Location: MLABCELL_X39_Y3_N12
\breg8_component|reg~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~27_combout\ = ( \breg8_component|reg~11_q\ & ( (\breg8_component|reg~19_q\) # (\rom8_component|Mux1~0_combout\) ) ) # ( !\breg8_component|reg~11_q\ & ( (!\rom8_component|Mux1~0_combout\ & \breg8_component|reg~19_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom8_component|ALT_INV_Mux1~0_combout\,
	datac => \breg8_component|ALT_INV_reg~19_q\,
	dataf => \breg8_component|ALT_INV_reg~11_q\,
	combout => \breg8_component|reg~27_combout\);

-- Location: FF_X39_Y3_N14
\breg8_component|SaidaA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \breg8_component|reg~27_combout\,
	ena => \UniControl_component|esc_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|SaidaA\(1));

-- Location: LABCELL_X37_Y3_N3
\muxA_component|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxA_component|saida[1]~1_combout\ = ( \UniControl_component|esc_reg_952~combout\ & ( (!\UniControl_component|ula_fonteA$latch~combout\ & (\pc_component|saidaPC\(1))) # (\UniControl_component|ula_fonteA$latch~combout\ & ((\breg8_component|SaidaA\(1)))) ) 
-- ) # ( !\UniControl_component|esc_reg_952~combout\ & ( \breg8_component|SaidaA\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_ula_fonteA$latch~combout\,
	datac => \pc_component|ALT_INV_saidaPC\(1),
	datad => \breg8_component|ALT_INV_SaidaA\(1),
	dataf => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	combout => \muxA_component|saida[1]~1_combout\);

-- Location: MLABCELL_X34_Y3_N3
\UniControl_component|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux3~0_combout\ = ( \UniControl_component|recv_opcode~1_combout\ & ( ((\UniControl_component|recv_opcode~4_combout\ & ((\UniControl_component|recv_opcode~2_combout\) # (\UniControl_component|recv_opcode~3_combout\)))) # 
-- (\UniControl_component|state.estadoS1~q\) ) ) # ( !\UniControl_component|recv_opcode~1_combout\ & ( ((\UniControl_component|recv_opcode~4_combout\ & \UniControl_component|recv_opcode~3_combout\)) # (\UniControl_component|state.estadoS1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111010111110001111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_recv_opcode~4_combout\,
	datab => \UniControl_component|ALT_INV_recv_opcode~3_combout\,
	datac => \UniControl_component|ALT_INV_state.estadoS1~q\,
	datad => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	combout => \UniControl_component|Mux3~0_combout\);

-- Location: LABCELL_X35_Y2_N15
\UniControl_component|ula_fonteB[0]_783\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|ula_fonteB[0]_783~combout\ = ( \UniControl_component|Mux3~0_combout\ & ( (!\UniControl_component|Mux21~4_combout\ & (\UniControl_component|ula_fonteB[0]_783~combout\ & \ProIAEnableFlag~input_o\)) ) ) # ( 
-- !\UniControl_component|Mux3~0_combout\ & ( (\ProIAEnableFlag~input_o\ & ((\UniControl_component|ula_fonteB[0]_783~combout\) # (\UniControl_component|Mux21~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_Mux21~4_combout\,
	datac => \UniControl_component|ALT_INV_ula_fonteB[0]_783~combout\,
	datad => \ALT_INV_ProIAEnableFlag~input_o\,
	dataf => \UniControl_component|ALT_INV_Mux3~0_combout\,
	combout => \UniControl_component|ula_fonteB[0]_783~combout\);

-- Location: MLABCELL_X34_Y2_N36
\UniControl_component|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux4~1_combout\ = ( \rom8_component|data[5]~19_combout\ & ( \rom8_component|data[4]~18_combout\ & ( ((!\UniControl_component|recv_opcode\(0) & (\UniControl_component|recv_opcode\(1) & !\UniControl_component|state.estadoS8~q\)) # 
-- (\UniControl_component|recv_opcode\(0) & ((!\UniControl_component|state.estadoS8~q\) # (\UniControl_component|recv_opcode\(1))))) # (\UniControl_component|state.estadoS0~q\) ) ) ) # ( !\rom8_component|data[5]~19_combout\ & ( 
-- \rom8_component|data[4]~18_combout\ & ( (!\UniControl_component|state.estadoS0~q\ & ((!\UniControl_component|recv_opcode\(0) & (\UniControl_component|recv_opcode\(1) & !\UniControl_component|state.estadoS8~q\)) # (\UniControl_component|recv_opcode\(0) & 
-- ((!\UniControl_component|state.estadoS8~q\) # (\UniControl_component|recv_opcode\(1)))))) # (\UniControl_component|state.estadoS0~q\ & (((!\UniControl_component|state.estadoS8~q\)))) ) ) ) # ( \rom8_component|data[5]~19_combout\ & ( 
-- !\rom8_component|data[4]~18_combout\ & ( (!\UniControl_component|state.estadoS0~q\ & ((!\UniControl_component|recv_opcode\(0) & (\UniControl_component|recv_opcode\(1) & !\UniControl_component|state.estadoS8~q\)) # (\UniControl_component|recv_opcode\(0) & 
-- ((!\UniControl_component|state.estadoS8~q\) # (\UniControl_component|recv_opcode\(1)))))) # (\UniControl_component|state.estadoS0~q\ & (((!\UniControl_component|state.estadoS8~q\)))) ) ) ) # ( !\rom8_component|data[5]~19_combout\ & ( 
-- !\rom8_component|data[4]~18_combout\ & ( (!\UniControl_component|state.estadoS0~q\ & ((!\UniControl_component|recv_opcode\(0) & (\UniControl_component|recv_opcode\(1) & !\UniControl_component|state.estadoS8~q\)) # (\UniControl_component|recv_opcode\(0) & 
-- ((!\UniControl_component|state.estadoS8~q\) # (\UniControl_component|recv_opcode\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000010011111110000001001111111000000100111111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS0~q\,
	datab => \UniControl_component|ALT_INV_recv_opcode\(0),
	datac => \UniControl_component|ALT_INV_recv_opcode\(1),
	datad => \UniControl_component|ALT_INV_state.estadoS8~q\,
	datae => \rom8_component|ALT_INV_data[5]~19_combout\,
	dataf => \rom8_component|ALT_INV_data[4]~18_combout\,
	combout => \UniControl_component|Mux4~1_combout\);

-- Location: MLABCELL_X34_Y3_N42
\UniControl_component|WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|WideNor0~0_combout\ = ( !\UniControl_component|state.estadoS6~q\ & ( !\UniControl_component|state.estadoS7~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_state.estadoS7~q\,
	dataf => \UniControl_component|ALT_INV_state.estadoS6~q\,
	combout => \UniControl_component|WideNor0~0_combout\);

-- Location: LABCELL_X36_Y3_N42
\UniControl_component|recv_opcode~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|recv_opcode~6_combout\ = (\UniControl_component|recv_opcode\(0) & !\UniControl_component|state.estadoS0~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_recv_opcode\(0),
	datad => \UniControl_component|ALT_INV_state.estadoS0~q\,
	combout => \UniControl_component|recv_opcode~6_combout\);

-- Location: FF_X42_Y3_N52
\ram8_component|mem~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ULAout_component|Q\(0),
	sload => VCC,
	ena => \ram8_component|mem~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram8_component|mem~37_q\);

-- Location: FF_X43_Y3_N56
\ram8_component|mem~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ULAout_component|Q\(0),
	sload => VCC,
	ena => \ram8_component|mem~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram8_component|mem~13_q\);

-- Location: LABCELL_X43_Y3_N54
\ram8_component|mem~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|mem~45_combout\ = (!\rom8_component|Mux1~0_combout\ & (\ram8_component|mem~37_q\)) # (\rom8_component|Mux1~0_combout\ & ((\ram8_component|mem~13_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom8_component|ALT_INV_Mux1~0_combout\,
	datac => \ram8_component|ALT_INV_mem~37_q\,
	datad => \ram8_component|ALT_INV_mem~13_q\,
	combout => \ram8_component|mem~45_combout\);

-- Location: LABCELL_X43_Y3_N0
\ram8_component|data_saida[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|data_saida[0]~8_combout\ = (!\UniControl_component|ler_men~2_combout\) # (\ram8_component|mem~45_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_ler_men~2_combout\,
	datad => \ram8_component|ALT_INV_mem~45_combout\,
	combout => \ram8_component|data_saida[0]~8_combout\);

-- Location: FF_X43_Y3_N2
\MDR_component|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ram8_component|data_saida[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR_component|Q\(0));

-- Location: LABCELL_X43_Y3_N21
\muxUM_component|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxUM_component|saida[0]~0_combout\ = ( \UniControl_component|memParaReg$latch~combout\ & ( \MDR_component|Q\(0) ) ) # ( !\UniControl_component|memParaReg$latch~combout\ & ( (!\UniControl_component|esc_reg_952~combout\ & (\MDR_component|Q\(0))) # 
-- (\UniControl_component|esc_reg_952~combout\ & ((\ULAout_component|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010101010101010101000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDR_component|ALT_INV_Q\(0),
	datac => \ULAout_component|ALT_INV_Q\(0),
	datad => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datae => \UniControl_component|ALT_INV_memParaReg$latch~combout\,
	combout => \muxUM_component|saida[0]~0_combout\);

-- Location: MLABCELL_X39_Y3_N9
\breg8_component|reg~10feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~10feeder_combout\ = \muxUM_component|saida[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxUM_component|ALT_INV_saida[0]~0_combout\,
	combout => \breg8_component|reg~10feeder_combout\);

-- Location: FF_X39_Y3_N11
\breg8_component|reg~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \breg8_component|reg~10feeder_combout\,
	ena => \breg8_component|reg~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|reg~10_q\);

-- Location: FF_X39_Y3_N53
\breg8_component|reg~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \muxUM_component|saida[0]~0_combout\,
	sload => VCC,
	ena => \breg8_component|reg~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|reg~18_q\);

-- Location: MLABCELL_X39_Y3_N51
\breg8_component|reg~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~26_combout\ = ( \breg8_component|reg~18_q\ & ( (!\rom8_component|Mux1~0_combout\) # (\breg8_component|reg~10_q\) ) ) # ( !\breg8_component|reg~18_q\ & ( (\rom8_component|Mux1~0_combout\ & \breg8_component|reg~10_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom8_component|ALT_INV_Mux1~0_combout\,
	datab => \breg8_component|ALT_INV_reg~10_q\,
	datae => \breg8_component|ALT_INV_reg~18_q\,
	combout => \breg8_component|reg~26_combout\);

-- Location: FF_X35_Y2_N8
\breg8_component|SaidaB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \breg8_component|reg~26_combout\,
	sload => VCC,
	ena => \UniControl_component|esc_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|SaidaB\(0));

-- Location: LABCELL_X33_Y3_N51
\UniControl_component|WideNor3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|WideNor3~0_combout\ = ( !\UniControl_component|state.estadoS2~q\ & ( !\UniControl_component|state.estadoS5~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_state.estadoS5~q\,
	dataf => \UniControl_component|ALT_INV_state.estadoS2~q\,
	combout => \UniControl_component|WideNor3~0_combout\);

-- Location: MLABCELL_X34_Y3_N24
\UniControl_component|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux1~0_combout\ = ( \UniControl_component|recv_opcode~2_combout\ & ( \UniControl_component|recv_opcode~1_combout\ & ( (!\UniControl_component|WideNor2~0_combout\ & (!\UniControl_component|recv_opcode~4_combout\ & 
-- \UniControl_component|recv_opcode~3_combout\)) ) ) ) # ( !\UniControl_component|recv_opcode~2_combout\ & ( \UniControl_component|recv_opcode~1_combout\ & ( (!\UniControl_component|WideNor3~0_combout\ & (\UniControl_component|recv_opcode~4_combout\ & 
-- !\UniControl_component|recv_opcode~3_combout\)) ) ) ) # ( !\UniControl_component|recv_opcode~2_combout\ & ( !\UniControl_component|recv_opcode~1_combout\ & ( (!\UniControl_component|WideNor2~0_combout\ & (\UniControl_component|recv_opcode~4_combout\ & 
-- !\UniControl_component|recv_opcode~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000000000000000000001010000000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_WideNor3~0_combout\,
	datab => \UniControl_component|ALT_INV_WideNor2~0_combout\,
	datac => \UniControl_component|ALT_INV_recv_opcode~4_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode~3_combout\,
	datae => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	combout => \UniControl_component|Mux1~0_combout\);

-- Location: LABCELL_X35_Y2_N3
\UniControl_component|ula_fonteB[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|ula_fonteB[1]$latch~combout\ = ( \UniControl_component|Mux1~0_combout\ & ( (\ProIAEnableFlag~input_o\ & ((\UniControl_component|ula_fonteB[1]$latch~combout\) # (\UniControl_component|Mux21~4_combout\))) ) ) # ( 
-- !\UniControl_component|Mux1~0_combout\ & ( (!\UniControl_component|Mux21~4_combout\ & (\ProIAEnableFlag~input_o\ & \UniControl_component|ula_fonteB[1]$latch~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_Mux21~4_combout\,
	datac => \ALT_INV_ProIAEnableFlag~input_o\,
	datad => \UniControl_component|ALT_INV_ula_fonteB[1]$latch~combout\,
	dataf => \UniControl_component|ALT_INV_Mux1~0_combout\,
	combout => \UniControl_component|ula_fonteB[1]$latch~combout\);

-- Location: LABCELL_X35_Y2_N51
\muxB_component|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxB_component|Mux7~0_combout\ = ( \UniControl_component|ula_fonteB[0]$latch~combout\ & ( (!\rom8_component|Mux1~0_combout\) # ((\UniControl_component|ula_fonteB[0]_783~combout\ & !\UniControl_component|ula_fonteB[1]$latch~combout\)) ) ) # ( 
-- !\UniControl_component|ula_fonteB[0]$latch~combout\ & ( (!\UniControl_component|ula_fonteB[0]_783~combout\ & (((!\rom8_component|Mux1~0_combout\)))) # (\UniControl_component|ula_fonteB[0]_783~combout\ & 
-- ((!\UniControl_component|ula_fonteB[1]$latch~combout\ & (\breg8_component|SaidaB\(0))) # (\UniControl_component|ula_fonteB[1]$latch~combout\ & ((!\rom8_component|Mux1~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010111001100110001011100110011001111110011001100111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \breg8_component|ALT_INV_SaidaB\(0),
	datab => \rom8_component|ALT_INV_Mux1~0_combout\,
	datac => \UniControl_component|ALT_INV_ula_fonteB[0]_783~combout\,
	datad => \UniControl_component|ALT_INV_ula_fonteB[1]$latch~combout\,
	dataf => \UniControl_component|ALT_INV_ula_fonteB[0]$latch~combout\,
	combout => \muxB_component|Mux7~0_combout\);

-- Location: LABCELL_X36_Y5_N3
\ula_component|aux_mult[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult[0]~feeder_combout\ = \ula_component|aux_mult\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ula_component|ALT_INV_aux_mult\(1),
	combout => \ula_component|aux_mult[0]~feeder_combout\);

-- Location: LABCELL_X33_Y3_N21
\UniControl_component|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux24~0_combout\ = ( \rom8_component|data[7]~21_combout\ & ( (!\UniControl_component|state.estadoS0~q\ & (!\UniControl_component|WideNor0~0_combout\ & !\UniControl_component|recv_opcode\(3))) ) ) # ( 
-- !\rom8_component|data[7]~21_combout\ & ( (!\UniControl_component|WideNor0~0_combout\ & ((!\UniControl_component|recv_opcode\(3)) # (\UniControl_component|state.estadoS0~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010000111100000101000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS0~q\,
	datac => \UniControl_component|ALT_INV_WideNor0~0_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode\(3),
	dataf => \rom8_component|ALT_INV_data[7]~21_combout\,
	combout => \UniControl_component|Mux24~0_combout\);

-- Location: LABCELL_X33_Y3_N45
\UniControl_component|Mux24~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux24~2_combout\ = ( \UniControl_component|recv_opcode\(0) & ( (!\UniControl_component|state.estadoS0~q\ & (((!\UniControl_component|recv_opcode\(2))))) # (\UniControl_component|state.estadoS0~q\ & 
-- (\rom8_component|data[4]~18_combout\ & (!\rom8_component|data[6]~20_combout\))) ) ) # ( !\UniControl_component|recv_opcode\(0) & ( (\UniControl_component|state.estadoS0~q\ & (\rom8_component|data[4]~18_combout\ & !\rom8_component|data[6]~20_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000010111010000100001011101000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS0~q\,
	datab => \rom8_component|ALT_INV_data[4]~18_combout\,
	datac => \rom8_component|ALT_INV_data[6]~20_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode\(2),
	dataf => \UniControl_component|ALT_INV_recv_opcode\(0),
	combout => \UniControl_component|Mux24~2_combout\);

-- Location: LABCELL_X33_Y3_N12
\UniControl_component|Mux24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux24~1_combout\ = ( !\UniControl_component|state.estadoS0~q\ & ( \rom8_component|data[5]~19_combout\ & ( (\UniControl_component|recv_opcode\(3) & (!\UniControl_component|recv_opcode\(1) & !\UniControl_component|WideNor3~0_combout\)) 
-- ) ) ) # ( \UniControl_component|state.estadoS0~q\ & ( !\rom8_component|data[5]~19_combout\ & ( (!\UniControl_component|WideNor3~0_combout\ & \rom8_component|data[7]~21_combout\) ) ) ) # ( !\UniControl_component|state.estadoS0~q\ & ( 
-- !\rom8_component|data[5]~19_combout\ & ( (\UniControl_component|recv_opcode\(3) & (!\UniControl_component|recv_opcode\(1) & !\UniControl_component|WideNor3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000000001111000001000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_recv_opcode\(3),
	datab => \UniControl_component|ALT_INV_recv_opcode\(1),
	datac => \UniControl_component|ALT_INV_WideNor3~0_combout\,
	datad => \rom8_component|ALT_INV_data[7]~21_combout\,
	datae => \UniControl_component|ALT_INV_state.estadoS0~q\,
	dataf => \rom8_component|ALT_INV_data[5]~19_combout\,
	combout => \UniControl_component|Mux24~1_combout\);

-- Location: LABCELL_X33_Y3_N33
\UniControl_component|Mux26~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux26~4_combout\ = ( \UniControl_component|state.estadoS0~q\ & ( \UniControl_component|recv_opcode\(0) & ( (!\rom8_component|data[4]~18_combout\ & ((\UniControl_component|state.estadoS8~q\))) # (\rom8_component|data[4]~18_combout\ & 
-- (!\UniControl_component|WideNor2~0_combout\)) ) ) ) # ( !\UniControl_component|state.estadoS0~q\ & ( \UniControl_component|recv_opcode\(0) & ( !\UniControl_component|WideNor2~0_combout\ ) ) ) # ( \UniControl_component|state.estadoS0~q\ & ( 
-- !\UniControl_component|recv_opcode\(0) & ( (!\rom8_component|data[4]~18_combout\ & ((\UniControl_component|state.estadoS8~q\))) # (\rom8_component|data[4]~18_combout\ & (!\UniControl_component|WideNor2~0_combout\)) ) ) ) # ( 
-- !\UniControl_component|state.estadoS0~q\ & ( !\UniControl_component|recv_opcode\(0) & ( \UniControl_component|state.estadoS8~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010100001111101011110000111100000101000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom8_component|ALT_INV_data[4]~18_combout\,
	datac => \UniControl_component|ALT_INV_WideNor2~0_combout\,
	datad => \UniControl_component|ALT_INV_state.estadoS8~q\,
	datae => \UniControl_component|ALT_INV_state.estadoS0~q\,
	dataf => \UniControl_component|ALT_INV_recv_opcode\(0),
	combout => \UniControl_component|Mux26~4_combout\);

-- Location: LABCELL_X33_Y3_N24
\UniControl_component|Mux24~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux24~3_combout\ = ( \UniControl_component|recv_opcode~2_combout\ & ( \UniControl_component|Mux26~4_combout\ & ( ((\UniControl_component|Mux24~2_combout\ & ((\UniControl_component|Mux24~1_combout\) # 
-- (\UniControl_component|Mux24~0_combout\)))) # (\UniControl_component|Mux37~0_combout\) ) ) ) # ( !\UniControl_component|recv_opcode~2_combout\ & ( \UniControl_component|Mux26~4_combout\ & ( (\UniControl_component|Mux24~2_combout\ & 
-- ((\UniControl_component|Mux24~1_combout\) # (\UniControl_component|Mux24~0_combout\))) ) ) ) # ( \UniControl_component|recv_opcode~2_combout\ & ( !\UniControl_component|Mux26~4_combout\ & ( (\UniControl_component|Mux24~2_combout\ & 
-- ((\UniControl_component|Mux24~1_combout\) # (\UniControl_component|Mux24~0_combout\))) ) ) ) # ( !\UniControl_component|recv_opcode~2_combout\ & ( !\UniControl_component|Mux26~4_combout\ & ( (\UniControl_component|Mux24~2_combout\ & 
-- ((\UniControl_component|Mux24~1_combout\) # (\UniControl_component|Mux24~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001100010001001100110001111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_Mux24~0_combout\,
	datab => \UniControl_component|ALT_INV_Mux24~2_combout\,
	datac => \UniControl_component|ALT_INV_Mux37~0_combout\,
	datad => \UniControl_component|ALT_INV_Mux24~1_combout\,
	datae => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	dataf => \UniControl_component|ALT_INV_Mux26~4_combout\,
	combout => \UniControl_component|Mux24~3_combout\);

-- Location: LABCELL_X33_Y3_N9
\UniControl_component|ULAop[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|ULAop[0]$latch~combout\ = ( \UniControl_component|Mux24~3_combout\ & ( (\ProIAEnableFlag~input_o\ & ((\UniControl_component|Mux21~4_combout\) # (\UniControl_component|ULAop[0]$latch~combout\))) ) ) # ( 
-- !\UniControl_component|Mux24~3_combout\ & ( (\ProIAEnableFlag~input_o\ & (\UniControl_component|ULAop[0]$latch~combout\ & !\UniControl_component|Mux21~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ProIAEnableFlag~input_o\,
	datac => \UniControl_component|ALT_INV_ULAop[0]$latch~combout\,
	datad => \UniControl_component|ALT_INV_Mux21~4_combout\,
	dataf => \UniControl_component|ALT_INV_Mux24~3_combout\,
	combout => \UniControl_component|ULAop[0]$latch~combout\);

-- Location: LABCELL_X33_Y3_N18
\UniControl_component|Mux37~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux37~3_combout\ = ( \UniControl_component|recv_opcode\(0) & ( (!\UniControl_component|state.estadoS0~q\ & (((!\UniControl_component|WideNor3~0_combout\)))) # (\UniControl_component|state.estadoS0~q\ & 
-- ((!\rom8_component|data[4]~18_combout\ & (!\UniControl_component|WideNor2~0_combout\)) # (\rom8_component|data[4]~18_combout\ & ((!\UniControl_component|WideNor3~0_combout\))))) ) ) # ( !\UniControl_component|recv_opcode\(0) & ( 
-- (!\UniControl_component|state.estadoS0~q\ & (!\UniControl_component|WideNor2~0_combout\)) # (\UniControl_component|state.estadoS0~q\ & ((!\rom8_component|data[4]~18_combout\ & (!\UniControl_component|WideNor2~0_combout\)) # 
-- (\rom8_component|data[4]~18_combout\ & ((!\UniControl_component|WideNor3~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011011000110011001101100011100100111100001110010011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS0~q\,
	datab => \UniControl_component|ALT_INV_WideNor2~0_combout\,
	datac => \UniControl_component|ALT_INV_WideNor3~0_combout\,
	datad => \rom8_component|ALT_INV_data[4]~18_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode\(0),
	combout => \UniControl_component|Mux37~3_combout\);

-- Location: LABCELL_X33_Y3_N36
\UniControl_component|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux30~0_combout\ = ( !\UniControl_component|recv_opcode~2_combout\ & ( \UniControl_component|recv_opcode~4_combout\ & ( (\UniControl_component|Mux37~3_combout\ & !\UniControl_component|recv_opcode~3_combout\) ) ) ) # ( 
-- \UniControl_component|recv_opcode~2_combout\ & ( !\UniControl_component|recv_opcode~4_combout\ & ( (!\UniControl_component|recv_opcode~1_combout\ & (\UniControl_component|state.estadoS8~q\ & \UniControl_component|recv_opcode~3_combout\)) ) ) ) # ( 
-- !\UniControl_component|recv_opcode~2_combout\ & ( !\UniControl_component|recv_opcode~4_combout\ & ( (\UniControl_component|recv_opcode~1_combout\ & (\UniControl_component|state.estadoS8~q\ & \UniControl_component|recv_opcode~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000101000110011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	datab => \UniControl_component|ALT_INV_Mux37~3_combout\,
	datac => \UniControl_component|ALT_INV_state.estadoS8~q\,
	datad => \UniControl_component|ALT_INV_recv_opcode~3_combout\,
	datae => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode~4_combout\,
	combout => \UniControl_component|Mux30~0_combout\);

-- Location: LABCELL_X33_Y3_N54
\UniControl_component|ULAop[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|ULAop[3]$latch~combout\ = ( \UniControl_component|Mux30~0_combout\ & ( (\ProIAEnableFlag~input_o\ & ((\UniControl_component|ULAop[3]$latch~combout\) # (\UniControl_component|Mux21~4_combout\))) ) ) # ( 
-- !\UniControl_component|Mux30~0_combout\ & ( (\ProIAEnableFlag~input_o\ & (!\UniControl_component|Mux21~4_combout\ & \UniControl_component|ULAop[3]$latch~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ProIAEnableFlag~input_o\,
	datac => \UniControl_component|ALT_INV_Mux21~4_combout\,
	datad => \UniControl_component|ALT_INV_ULAop[3]$latch~combout\,
	dataf => \UniControl_component|ALT_INV_Mux30~0_combout\,
	combout => \UniControl_component|ULAop[3]$latch~combout\);

-- Location: MLABCELL_X34_Y4_N51
\UniControl_component|recv_opcode~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|recv_opcode~11_combout\ = ( \UniControl_component|recv_opcode\(2) & ( !\UniControl_component|state.estadoS0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS0~q\,
	dataf => \UniControl_component|ALT_INV_recv_opcode\(2),
	combout => \UniControl_component|recv_opcode~11_combout\);

-- Location: FF_X39_Y3_N44
\breg8_component|SaidaA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \breg8_component|reg~33_combout\,
	ena => \UniControl_component|esc_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|SaidaA\(7));

-- Location: MLABCELL_X34_Y2_N45
\muxA_component|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxA_component|saida[7]~7_combout\ = ( \pc_component|saidaPC\(7) & ( \UniControl_component|ula_fonteA$latch~combout\ & ( \breg8_component|SaidaA\(7) ) ) ) # ( !\pc_component|saidaPC\(7) & ( \UniControl_component|ula_fonteA$latch~combout\ & ( 
-- \breg8_component|SaidaA\(7) ) ) ) # ( \pc_component|saidaPC\(7) & ( !\UniControl_component|ula_fonteA$latch~combout\ & ( (\breg8_component|SaidaA\(7)) # (\UniControl_component|esc_reg_952~combout\) ) ) ) # ( !\pc_component|saidaPC\(7) & ( 
-- !\UniControl_component|ula_fonteA$latch~combout\ & ( (!\UniControl_component|esc_reg_952~combout\ & \breg8_component|SaidaA\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datad => \breg8_component|ALT_INV_SaidaA\(7),
	datae => \pc_component|ALT_INV_saidaPC\(7),
	dataf => \UniControl_component|ALT_INV_ula_fonteA$latch~combout\,
	combout => \muxA_component|saida[7]~7_combout\);

-- Location: MLABCELL_X34_Y4_N6
\UniControl_component|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux28~0_combout\ = ( \UniControl_component|recv_opcode~2_combout\ & ( (\UniControl_component|recv_opcode~1_combout\ & (\UniControl_component|Mux37~0_combout\ & !\UniControl_component|WideNor2~0_combout\)) ) ) # ( 
-- !\UniControl_component|recv_opcode~2_combout\ & ( (!\UniControl_component|WideNor0~0_combout\ & (!\UniControl_component|recv_opcode~1_combout\ & \UniControl_component|Mux37~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_WideNor0~0_combout\,
	datab => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	datac => \UniControl_component|ALT_INV_Mux37~0_combout\,
	datad => \UniControl_component|ALT_INV_WideNor2~0_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	combout => \UniControl_component|Mux28~0_combout\);

-- Location: MLABCELL_X34_Y4_N18
\UniControl_component|ULAop[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|ULAop[2]$latch~combout\ = ( \UniControl_component|Mux28~0_combout\ & ( (\ProIAEnableFlag~input_o\ & ((\UniControl_component|ULAop[2]$latch~combout\) # (\UniControl_component|Mux21~4_combout\))) ) ) # ( 
-- !\UniControl_component|Mux28~0_combout\ & ( (!\UniControl_component|Mux21~4_combout\ & (\UniControl_component|ULAop[2]$latch~combout\ & \ProIAEnableFlag~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_Mux21~4_combout\,
	datac => \UniControl_component|ALT_INV_ULAop[2]$latch~combout\,
	datad => \ALT_INV_ProIAEnableFlag~input_o\,
	dataf => \UniControl_component|ALT_INV_Mux28~0_combout\,
	combout => \UniControl_component|ULAop[2]$latch~combout\);

-- Location: LABCELL_X37_Y2_N30
\UniControl_component|ULAop[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|ULAop[2]~9_combout\ = ( !\UniControl_component|ULAop[2]$latch~combout\ & ( \UniControl_component|esc_reg_952~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	dataf => \UniControl_component|ALT_INV_ULAop[2]$latch~combout\,
	combout => \UniControl_component|ULAop[2]~9_combout\);

-- Location: MLABCELL_X34_Y2_N21
\UniControl_component|ULAop[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|ULAop[3]~8_combout\ = (\UniControl_component|esc_reg_952~combout\ & !\UniControl_component|ULAop[3]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datad => \UniControl_component|ALT_INV_ULAop[3]$latch~combout\,
	combout => \UniControl_component|ULAop[3]~8_combout\);

-- Location: LABCELL_X37_Y2_N48
\UniControl_component|ULAop[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|ULAop[1]~10_combout\ = ( \UniControl_component|esc_reg_952~combout\ & ( !\UniControl_component|ULAop[1]$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_ULAop[1]$latch~combout\,
	dataf => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	combout => \UniControl_component|ULAop[1]~10_combout\);

-- Location: LABCELL_X37_Y2_N21
\ula_component|resultado[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado[1]~0_combout\ = ( !\UniControl_component|ULAop[1]~10_combout\ & ( (\UniControl_component|ULAop[2]~9_combout\ & \UniControl_component|ULAop[3]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_ULAop[2]~9_combout\,
	datad => \UniControl_component|ALT_INV_ULAop[3]~8_combout\,
	dataf => \UniControl_component|ALT_INV_ULAop[1]~10_combout\,
	combout => \ula_component|resultado[1]~0_combout\);

-- Location: LABCELL_X35_Y3_N30
\UniControl_component|ULAop[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|ULAop[0]~11_combout\ = ( !\UniControl_component|ULAop[0]$latch~combout\ & ( \UniControl_component|esc_reg_952~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	dataf => \UniControl_component|ALT_INV_ULAop[0]$latch~combout\,
	combout => \UniControl_component|ULAop[0]~11_combout\);

-- Location: LABCELL_X37_Y2_N9
\ula_component|resultado[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado[1]~1_combout\ = ( \UniControl_component|ULAop[1]~10_combout\ & ( (\UniControl_component|ULAop[0]~11_combout\ & (\UniControl_component|ULAop[2]~9_combout\ & \UniControl_component|ULAop[3]~8_combout\)) ) ) # ( 
-- !\UniControl_component|ULAop[1]~10_combout\ & ( (!\UniControl_component|ULAop[0]~11_combout\ & (\UniControl_component|ULAop[2]~9_combout\ & \UniControl_component|ULAop[3]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_ULAop[0]~11_combout\,
	datac => \UniControl_component|ALT_INV_ULAop[2]~9_combout\,
	datad => \UniControl_component|ALT_INV_ULAop[3]~8_combout\,
	dataf => \UniControl_component|ALT_INV_ULAop[1]~10_combout\,
	combout => \ula_component|resultado[1]~1_combout\);

-- Location: LABCELL_X37_Y2_N45
\ula_component|resultado[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado[1]~3_combout\ = ( \UniControl_component|ULAop[1]~10_combout\ & ( (\UniControl_component|ULAop[3]~8_combout\ & (!\UniControl_component|ULAop[2]~9_combout\ & \UniControl_component|ULAop[0]~11_combout\)) ) ) # ( 
-- !\UniControl_component|ULAop[1]~10_combout\ & ( (\UniControl_component|ULAop[3]~8_combout\ & (!\UniControl_component|ULAop[2]~9_combout\ & !\UniControl_component|ULAop[0]~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_ULAop[3]~8_combout\,
	datac => \UniControl_component|ALT_INV_ULAop[2]~9_combout\,
	datad => \UniControl_component|ALT_INV_ULAop[0]~11_combout\,
	dataf => \UniControl_component|ALT_INV_ULAop[1]~10_combout\,
	combout => \ula_component|resultado[1]~3_combout\);

-- Location: LABCELL_X37_Y2_N6
\ula_component|resultado[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado[1]~2_combout\ = ( \UniControl_component|ULAop[2]~9_combout\ & ( (!\UniControl_component|ULAop[0]~11_combout\ & (\UniControl_component|ULAop[1]~10_combout\ & \UniControl_component|ULAop[3]~8_combout\)) ) ) # ( 
-- !\UniControl_component|ULAop[2]~9_combout\ & ( (\UniControl_component|ULAop[0]~11_combout\ & (\UniControl_component|ULAop[1]~10_combout\ & \UniControl_component|ULAop[3]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_ULAop[0]~11_combout\,
	datab => \UniControl_component|ALT_INV_ULAop[1]~10_combout\,
	datac => \UniControl_component|ALT_INV_ULAop[3]~8_combout\,
	dataf => \UniControl_component|ALT_INV_ULAop[2]~9_combout\,
	combout => \ula_component|resultado[1]~2_combout\);

-- Location: FF_X35_Y2_N29
\breg8_component|SaidaB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \breg8_component|reg~32_combout\,
	sload => VCC,
	ena => \UniControl_component|esc_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|SaidaB\(6));

-- Location: LABCELL_X35_Y2_N27
\muxB_component|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxB_component|Mux1~0_combout\ = ( !\UniControl_component|ula_fonteB[0]$latch~combout\ & ( (!\UniControl_component|ula_fonteB[1]$latch~combout\ & (\UniControl_component|ula_fonteB[0]_783~combout\ & \breg8_component|SaidaB\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_ula_fonteB[1]$latch~combout\,
	datac => \UniControl_component|ALT_INV_ula_fonteB[0]_783~combout\,
	datad => \breg8_component|ALT_INV_SaidaB\(6),
	dataf => \UniControl_component|ALT_INV_ula_fonteB[0]$latch~combout\,
	combout => \muxB_component|Mux1~0_combout\);

-- Location: FF_X39_Y3_N59
\breg8_component|SaidaA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \breg8_component|reg~31_combout\,
	ena => \UniControl_component|esc_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|SaidaA\(5));

-- Location: LABCELL_X36_Y3_N36
\muxA_component|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxA_component|saida[5]~5_combout\ = ( \UniControl_component|ula_fonteA$latch~combout\ & ( \breg8_component|SaidaA\(5) ) ) # ( !\UniControl_component|ula_fonteA$latch~combout\ & ( (!\UniControl_component|esc_reg_952~combout\ & 
-- ((\breg8_component|SaidaA\(5)))) # (\UniControl_component|esc_reg_952~combout\ & (\pc_component|saidaPC\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datac => \pc_component|ALT_INV_saidaPC\(5),
	datad => \breg8_component|ALT_INV_SaidaA\(5),
	dataf => \UniControl_component|ALT_INV_ula_fonteA$latch~combout\,
	combout => \muxA_component|saida[5]~5_combout\);

-- Location: FF_X36_Y2_N5
\breg8_component|SaidaB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \breg8_component|reg~30_combout\,
	sload => VCC,
	ena => \UniControl_component|esc_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|SaidaB\(4));

-- Location: LABCELL_X36_Y2_N45
\muxB_component|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxB_component|Mux3~0_combout\ = ( !\UniControl_component|ula_fonteB[0]$latch~combout\ & ( (!\UniControl_component|ula_fonteB[1]$latch~combout\ & (\UniControl_component|ula_fonteB[0]_783~combout\ & \breg8_component|SaidaB\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_ula_fonteB[1]$latch~combout\,
	datac => \UniControl_component|ALT_INV_ula_fonteB[0]_783~combout\,
	datad => \breg8_component|ALT_INV_SaidaB\(4),
	dataf => \UniControl_component|ALT_INV_ula_fonteB[0]$latch~combout\,
	combout => \muxB_component|Mux3~0_combout\);

-- Location: FF_X39_Y3_N47
\breg8_component|SaidaA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \breg8_component|reg~29_combout\,
	ena => \UniControl_component|esc_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|SaidaA\(3));

-- Location: LABCELL_X37_Y3_N30
\muxA_component|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxA_component|saida[3]~3_combout\ = ( \UniControl_component|ula_fonteA$latch~combout\ & ( \breg8_component|SaidaA\(3) ) ) # ( !\UniControl_component|ula_fonteA$latch~combout\ & ( (!\UniControl_component|esc_reg_952~combout\ & 
-- (\breg8_component|SaidaA\(3))) # (\UniControl_component|esc_reg_952~combout\ & ((\pc_component|saidaPC\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \breg8_component|ALT_INV_SaidaA\(3),
	datac => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datad => \pc_component|ALT_INV_saidaPC\(3),
	dataf => \UniControl_component|ALT_INV_ula_fonteA$latch~combout\,
	combout => \muxA_component|saida[3]~3_combout\);

-- Location: FF_X40_Y3_N14
\ram8_component|mem~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ULAout_component|Q\(2),
	sload => VCC,
	ena => \ram8_component|mem~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram8_component|mem~39_q\);

-- Location: FF_X40_Y3_N29
\ram8_component|mem~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ULAout_component|Q\(2),
	sload => VCC,
	ena => \ram8_component|mem~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram8_component|mem~15_q\);

-- Location: LABCELL_X40_Y3_N27
\ram8_component|mem~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|mem~47_combout\ = (!\rom8_component|Mux1~0_combout\ & (\ram8_component|mem~39_q\)) # (\rom8_component|Mux1~0_combout\ & ((\ram8_component|mem~15_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom8_component|ALT_INV_Mux1~0_combout\,
	datac => \ram8_component|ALT_INV_mem~39_q\,
	datad => \ram8_component|ALT_INV_mem~15_q\,
	combout => \ram8_component|mem~47_combout\);

-- Location: LABCELL_X40_Y3_N33
\ram8_component|data_saida[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|data_saida[2]~10_combout\ = ( \ram8_component|mem~47_combout\ ) # ( !\ram8_component|mem~47_combout\ & ( !\UniControl_component|ler_men~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_ler_men~2_combout\,
	dataf => \ram8_component|ALT_INV_mem~47_combout\,
	combout => \ram8_component|data_saida[2]~10_combout\);

-- Location: FF_X40_Y3_N35
\MDR_component|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ram8_component|data_saida[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR_component|Q\(2));

-- Location: LABCELL_X40_Y3_N12
\muxUM_component|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxUM_component|saida[2]~2_combout\ = ( \ULAout_component|Q\(2) & ( \MDR_component|Q\(2) ) ) # ( !\ULAout_component|Q\(2) & ( \MDR_component|Q\(2) & ( (!\UniControl_component|esc_reg_952~combout\) # (\UniControl_component|memParaReg$latch~combout\) ) ) ) 
-- # ( \ULAout_component|Q\(2) & ( !\MDR_component|Q\(2) & ( (\UniControl_component|esc_reg_952~combout\ & !\UniControl_component|memParaReg$latch~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000011110000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datad => \UniControl_component|ALT_INV_memParaReg$latch~combout\,
	datae => \ULAout_component|ALT_INV_Q\(2),
	dataf => \MDR_component|ALT_INV_Q\(2),
	combout => \muxUM_component|saida[2]~2_combout\);

-- Location: MLABCELL_X39_Y3_N6
\breg8_component|reg~12feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~12feeder_combout\ = \muxUM_component|saida[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxUM_component|ALT_INV_saida[2]~2_combout\,
	combout => \breg8_component|reg~12feeder_combout\);

-- Location: FF_X39_Y3_N7
\breg8_component|reg~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \breg8_component|reg~12feeder_combout\,
	ena => \breg8_component|reg~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|reg~12_q\);

-- Location: MLABCELL_X39_Y3_N36
\breg8_component|reg~20feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~20feeder_combout\ = \muxUM_component|saida[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxUM_component|ALT_INV_saida[2]~2_combout\,
	combout => \breg8_component|reg~20feeder_combout\);

-- Location: FF_X39_Y3_N38
\breg8_component|reg~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \breg8_component|reg~20feeder_combout\,
	ena => \breg8_component|reg~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|reg~20_q\);

-- Location: MLABCELL_X39_Y3_N54
\breg8_component|reg~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~28_combout\ = (!\rom8_component|Mux1~0_combout\ & ((\breg8_component|reg~20_q\))) # (\rom8_component|Mux1~0_combout\ & (\breg8_component|reg~12_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom8_component|ALT_INV_Mux1~0_combout\,
	datac => \breg8_component|ALT_INV_reg~12_q\,
	datad => \breg8_component|ALT_INV_reg~20_q\,
	combout => \breg8_component|reg~28_combout\);

-- Location: FF_X35_Y2_N50
\breg8_component|SaidaA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \breg8_component|reg~28_combout\,
	sload => VCC,
	ena => \UniControl_component|esc_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|SaidaA\(2));

-- Location: LABCELL_X40_Y3_N9
\muxA_component|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxA_component|saida[2]~2_combout\ = ( \UniControl_component|ula_fonteA$latch~combout\ & ( \breg8_component|SaidaA\(2) ) ) # ( !\UniControl_component|ula_fonteA$latch~combout\ & ( (!\UniControl_component|esc_reg_952~combout\ & 
-- ((\breg8_component|SaidaA\(2)))) # (\UniControl_component|esc_reg_952~combout\ & (\pc_component|saidaPC\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datac => \pc_component|ALT_INV_saidaPC\(2),
	datad => \breg8_component|ALT_INV_SaidaA\(2),
	dataf => \UniControl_component|ALT_INV_ula_fonteA$latch~combout\,
	combout => \muxA_component|saida[2]~2_combout\);

-- Location: FF_X35_Y2_N11
\breg8_component|SaidaB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \breg8_component|reg~28_combout\,
	sload => VCC,
	ena => \UniControl_component|esc_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|SaidaB\(2));

-- Location: LABCELL_X35_Y2_N54
\muxB_component|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxB_component|Mux5~0_combout\ = ( \UniControl_component|ula_fonteB[0]_783~combout\ & ( (!\UniControl_component|ula_fonteB[0]$latch~combout\ & (\breg8_component|SaidaB\(2) & !\UniControl_component|ula_fonteB[1]$latch~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_ula_fonteB[0]$latch~combout\,
	datac => \breg8_component|ALT_INV_SaidaB\(2),
	datad => \UniControl_component|ALT_INV_ula_fonteB[1]$latch~combout\,
	dataf => \UniControl_component|ALT_INV_ula_fonteB[0]_783~combout\,
	combout => \muxB_component|Mux5~0_combout\);

-- Location: MLABCELL_X39_Y4_N9
\ula_component|cont~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~5_combout\ = ( \ula_component|cont~3_combout\ & ( (!\muxB_component|Mux5~0_combout\) # (\muxA_component|saida[2]~2_combout\) ) ) # ( !\ula_component|cont~3_combout\ & ( (\muxA_component|saida[2]~2_combout\ & 
-- !\muxB_component|Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxA_component|ALT_INV_saida[2]~2_combout\,
	datab => \muxB_component|ALT_INV_Mux5~0_combout\,
	dataf => \ula_component|ALT_INV_cont~3_combout\,
	combout => \ula_component|cont~5_combout\);

-- Location: MLABCELL_X39_Y4_N12
\ula_component|resultado~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado~11_combout\ = ( \muxB_component|Mux4~0_combout\ & ( \ula_component|resultado[1]~2_combout\ & ( (!\ula_component|resultado[1]~3_combout\ & (!\ula_component|cont~5_combout\ $ ((!\muxA_component|saida[3]~3_combout\)))) # 
-- (\ula_component|resultado[1]~3_combout\ & (((\ula_component|aux_mult\(3))))) ) ) ) # ( !\muxB_component|Mux4~0_combout\ & ( \ula_component|resultado[1]~2_combout\ & ( (!\ula_component|resultado[1]~3_combout\ & (!\ula_component|cont~5_combout\ $ 
-- ((\muxA_component|saida[3]~3_combout\)))) # (\ula_component|resultado[1]~3_combout\ & (((\ula_component|aux_mult\(3))))) ) ) ) # ( \muxB_component|Mux4~0_combout\ & ( !\ula_component|resultado[1]~2_combout\ & ( (\muxA_component|saida[3]~3_combout\) # 
-- (\ula_component|resultado[1]~3_combout\) ) ) ) # ( !\muxB_component|Mux4~0_combout\ & ( !\ula_component|resultado[1]~2_combout\ & ( (!\ula_component|resultado[1]~3_combout\ & \muxA_component|saida[3]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111110000010110101110010100001111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_resultado[1]~3_combout\,
	datab => \ula_component|ALT_INV_cont~5_combout\,
	datac => \muxA_component|ALT_INV_saida[3]~3_combout\,
	datad => \ula_component|ALT_INV_aux_mult\(3),
	datae => \muxB_component|ALT_INV_Mux4~0_combout\,
	dataf => \ula_component|ALT_INV_resultado[1]~2_combout\,
	combout => \ula_component|resultado~11_combout\);

-- Location: FF_X35_Y2_N26
\breg8_component|SaidaA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \breg8_component|reg~26_combout\,
	sload => VCC,
	ena => \UniControl_component|esc_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|SaidaA\(0));

-- Location: LABCELL_X35_Y2_N24
\muxA_component|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxA_component|saida[0]~0_combout\ = ( \UniControl_component|ula_fonteA$latch~combout\ & ( \breg8_component|SaidaA\(0) ) ) # ( !\UniControl_component|ula_fonteA$latch~combout\ & ( (!\UniControl_component|esc_reg_952~combout\ & 
-- ((\breg8_component|SaidaA\(0)))) # (\UniControl_component|esc_reg_952~combout\ & (\pc_component|saidaPC\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc_component|ALT_INV_saidaPC\(0),
	datac => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datad => \breg8_component|ALT_INV_SaidaA\(0),
	dataf => \UniControl_component|ALT_INV_ula_fonteA$latch~combout\,
	combout => \muxA_component|saida[0]~0_combout\);

-- Location: LABCELL_X33_Y4_N12
\ula_component|cont~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~0_combout\ = ( \muxB_component|Mux7~0_combout\ & ( \muxA_component|saida[0]~0_combout\ ) ) # ( !\muxB_component|Mux7~0_combout\ & ( \muxA_component|saida[0]~0_combout\ & ( \ula_component|cont~q\ ) ) ) # ( 
-- \muxB_component|Mux7~0_combout\ & ( !\muxA_component|saida[0]~0_combout\ & ( \ula_component|cont~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ula_component|ALT_INV_cont~q\,
	datae => \muxB_component|ALT_INV_Mux7~0_combout\,
	dataf => \muxA_component|ALT_INV_saida[0]~0_combout\,
	combout => \ula_component|cont~0_combout\);

-- Location: LABCELL_X33_Y4_N51
\ula_component|cont~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~2_combout\ = ( \muxB_component|Mux6~0_combout\ & ( \ula_component|cont~0_combout\ ) ) # ( !\muxB_component|Mux6~0_combout\ & ( \ula_component|cont~0_combout\ & ( \muxA_component|saida[1]~1_combout\ ) ) ) # ( 
-- \muxB_component|Mux6~0_combout\ & ( !\ula_component|cont~0_combout\ & ( \muxA_component|saida[1]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \muxA_component|ALT_INV_saida[1]~1_combout\,
	datae => \muxB_component|ALT_INV_Mux6~0_combout\,
	dataf => \ula_component|ALT_INV_cont~0_combout\,
	combout => \ula_component|cont~2_combout\);

-- Location: MLABCELL_X39_Y4_N30
\ula_component|cont~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~4_combout\ = ( \ula_component|cont~2_combout\ & ( (\muxA_component|saida[2]~2_combout\) # (\muxB_component|Mux5~0_combout\) ) ) # ( !\ula_component|cont~2_combout\ & ( (\muxB_component|Mux5~0_combout\ & 
-- \muxA_component|saida[2]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxB_component|ALT_INV_Mux5~0_combout\,
	datac => \muxA_component|ALT_INV_saida[2]~2_combout\,
	dataf => \ula_component|ALT_INV_cont~2_combout\,
	combout => \ula_component|cont~4_combout\);

-- Location: MLABCELL_X39_Y4_N54
\ula_component|resultado~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado~12_combout\ = ( \ula_component|resultado[1]~1_combout\ & ( \ula_component|cont~4_combout\ & ( (!\muxA_component|saida[3]~3_combout\ & (!\muxB_component|Mux4~0_combout\ $ (\ula_component|resultado[1]~0_combout\))) # 
-- (\muxA_component|saida[3]~3_combout\ & ((\ula_component|resultado[1]~0_combout\) # (\muxB_component|Mux4~0_combout\))) ) ) ) # ( !\ula_component|resultado[1]~1_combout\ & ( \ula_component|cont~4_combout\ & ( (!\ula_component|resultado[1]~0_combout\ & 
-- (((\ula_component|resultado~11_combout\)))) # (\ula_component|resultado[1]~0_combout\ & (\muxA_component|saida[3]~3_combout\ & ((\muxB_component|Mux4~0_combout\)))) ) ) ) # ( \ula_component|resultado[1]~1_combout\ & ( !\ula_component|cont~4_combout\ & ( 
-- (!\muxA_component|saida[3]~3_combout\ & (\muxB_component|Mux4~0_combout\)) # (\muxA_component|saida[3]~3_combout\ & ((!\muxB_component|Mux4~0_combout\) # (\ula_component|resultado[1]~0_combout\))) ) ) ) # ( !\ula_component|resultado[1]~1_combout\ & ( 
-- !\ula_component|cont~4_combout\ & ( (!\ula_component|resultado[1]~0_combout\ & (((\ula_component|resultado~11_combout\)))) # (\ula_component|resultado[1]~0_combout\ & (\muxA_component|saida[3]~3_combout\ & ((\muxB_component|Mux4~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000101010110100101111100110011000001011010010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxA_component|ALT_INV_saida[3]~3_combout\,
	datab => \ula_component|ALT_INV_resultado~11_combout\,
	datac => \muxB_component|ALT_INV_Mux4~0_combout\,
	datad => \ula_component|ALT_INV_resultado[1]~0_combout\,
	datae => \ula_component|ALT_INV_resultado[1]~1_combout\,
	dataf => \ula_component|ALT_INV_cont~4_combout\,
	combout => \ula_component|resultado~12_combout\);

-- Location: LABCELL_X37_Y2_N24
\ula_component|resultado[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado[1]~6_combout\ = ( \UniControl_component|ULAop[1]~10_combout\ & ( ((\UniControl_component|ULAop[0]~11_combout\ & \UniControl_component|ULAop[3]~8_combout\)) # (\UniControl_component|ULAop[2]~9_combout\) ) ) # ( 
-- !\UniControl_component|ULAop[1]~10_combout\ & ( (!\UniControl_component|ULAop[0]~11_combout\ & ((\UniControl_component|ULAop[3]~8_combout\))) # (\UniControl_component|ULAop[0]~11_combout\ & (\UniControl_component|ULAop[2]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_ULAop[0]~11_combout\,
	datab => \UniControl_component|ALT_INV_ULAop[2]~9_combout\,
	datac => \UniControl_component|ALT_INV_ULAop[3]~8_combout\,
	dataf => \UniControl_component|ALT_INV_ULAop[1]~10_combout\,
	combout => \ula_component|resultado[1]~6_combout\);

-- Location: FF_X39_Y4_N56
\ula_component|resultado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|resultado~12_combout\,
	ena => \ula_component|resultado[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|resultado\(3));

-- Location: FF_X35_Y1_N23
\ULAout_component|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|resultado\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULAout_component|Q\(3));

-- Location: LABCELL_X42_Y3_N45
\ram8_component|mem~40feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|mem~40feeder_combout\ = ( \ULAout_component|Q\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULAout_component|ALT_INV_Q\(3),
	combout => \ram8_component|mem~40feeder_combout\);

-- Location: FF_X42_Y3_N46
\ram8_component|mem~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ram8_component|mem~40feeder_combout\,
	ena => \ram8_component|mem~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram8_component|mem~40_q\);

-- Location: FF_X43_Y3_N26
\ram8_component|mem~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ULAout_component|Q\(3),
	sload => VCC,
	ena => \ram8_component|mem~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram8_component|mem~16_q\);

-- Location: LABCELL_X43_Y3_N24
\ram8_component|mem~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|mem~48_combout\ = (!\rom8_component|Mux1~0_combout\ & (\ram8_component|mem~40_q\)) # (\rom8_component|Mux1~0_combout\ & ((\ram8_component|mem~16_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom8_component|ALT_INV_Mux1~0_combout\,
	datac => \ram8_component|ALT_INV_mem~40_q\,
	datad => \ram8_component|ALT_INV_mem~16_q\,
	combout => \ram8_component|mem~48_combout\);

-- Location: LABCELL_X43_Y3_N48
\ram8_component|data_saida[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|data_saida[3]~11_combout\ = ( \ram8_component|mem~48_combout\ ) # ( !\ram8_component|mem~48_combout\ & ( !\UniControl_component|ler_men~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_ler_men~2_combout\,
	dataf => \ram8_component|ALT_INV_mem~48_combout\,
	combout => \ram8_component|data_saida[3]~11_combout\);

-- Location: FF_X43_Y3_N50
\MDR_component|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ram8_component|data_saida[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR_component|Q\(3));

-- Location: LABCELL_X43_Y3_N51
\muxUM_component|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxUM_component|saida[3]~3_combout\ = ( \MDR_component|Q\(3) & ( (!\UniControl_component|esc_reg_952~combout\) # ((\ULAout_component|Q\(3)) # (\UniControl_component|memParaReg$latch~combout\)) ) ) # ( !\MDR_component|Q\(3) & ( 
-- (\UniControl_component|esc_reg_952~combout\ & (!\UniControl_component|memParaReg$latch~combout\ & \ULAout_component|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datac => \UniControl_component|ALT_INV_memParaReg$latch~combout\,
	datad => \ULAout_component|ALT_INV_Q\(3),
	dataf => \MDR_component|ALT_INV_Q\(3),
	combout => \muxUM_component|saida[3]~3_combout\);

-- Location: FF_X43_Y3_N46
\breg8_component|reg~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \muxUM_component|saida[3]~3_combout\,
	sload => VCC,
	ena => \breg8_component|reg~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|reg~13_q\);

-- Location: LABCELL_X42_Y3_N27
\breg8_component|reg~21feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~21feeder_combout\ = \muxUM_component|saida[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxUM_component|ALT_INV_saida[3]~3_combout\,
	combout => \breg8_component|reg~21feeder_combout\);

-- Location: FF_X42_Y3_N28
\breg8_component|reg~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \breg8_component|reg~21feeder_combout\,
	ena => \breg8_component|reg~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|reg~21_q\);

-- Location: MLABCELL_X39_Y3_N45
\breg8_component|reg~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~29_combout\ = ( \breg8_component|reg~21_q\ & ( (!\rom8_component|Mux1~0_combout\) # (\breg8_component|reg~13_q\) ) ) # ( !\breg8_component|reg~21_q\ & ( (\rom8_component|Mux1~0_combout\ & \breg8_component|reg~13_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom8_component|ALT_INV_Mux1~0_combout\,
	datac => \breg8_component|ALT_INV_reg~13_q\,
	dataf => \breg8_component|ALT_INV_reg~21_q\,
	combout => \breg8_component|reg~29_combout\);

-- Location: FF_X36_Y2_N11
\breg8_component|SaidaB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \breg8_component|reg~29_combout\,
	sload => VCC,
	ena => \UniControl_component|esc_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|SaidaB\(3));

-- Location: LABCELL_X36_Y2_N42
\muxB_component|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxB_component|Mux4~0_combout\ = ( \UniControl_component|ula_fonteB[0]_783~combout\ & ( (!\UniControl_component|ula_fonteB[1]$latch~combout\ & (!\UniControl_component|ula_fonteB[0]$latch~combout\ & \breg8_component|SaidaB\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_ula_fonteB[1]$latch~combout\,
	datac => \UniControl_component|ALT_INV_ula_fonteB[0]$latch~combout\,
	datad => \breg8_component|ALT_INV_SaidaB\(3),
	dataf => \UniControl_component|ALT_INV_ula_fonteB[0]_783~combout\,
	combout => \muxB_component|Mux4~0_combout\);

-- Location: MLABCELL_X39_Y4_N36
\ula_component|cont~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~7_combout\ = ( \ula_component|cont~5_combout\ & ( (!\muxB_component|Mux4~0_combout\) # (\muxA_component|saida[3]~3_combout\) ) ) # ( !\ula_component|cont~5_combout\ & ( (!\muxB_component|Mux4~0_combout\ & 
-- \muxA_component|saida[3]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux4~0_combout\,
	datab => \muxA_component|ALT_INV_saida[3]~3_combout\,
	dataf => \ula_component|ALT_INV_cont~5_combout\,
	combout => \ula_component|cont~7_combout\);

-- Location: LABCELL_X40_Y4_N24
\ula_component|cont~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~9_combout\ = ( \ula_component|cont~7_combout\ & ( (!\muxB_component|Mux3~0_combout\) # (\muxA_component|saida[4]~4_combout\) ) ) # ( !\ula_component|cont~7_combout\ & ( (!\muxB_component|Mux3~0_combout\ & 
-- \muxA_component|saida[4]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \muxB_component|ALT_INV_Mux3~0_combout\,
	datad => \muxA_component|ALT_INV_saida[4]~4_combout\,
	dataf => \ula_component|ALT_INV_cont~7_combout\,
	combout => \ula_component|cont~9_combout\);

-- Location: LABCELL_X40_Y4_N18
\ula_component|resultado~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado~15_combout\ = ( \ula_component|aux_mult\(5) & ( \ula_component|cont~9_combout\ & ( (!\ula_component|resultado[1]~3_combout\ & (!\muxA_component|saida[5]~5_combout\ $ (((!\ula_component|resultado[1]~2_combout\) # 
-- (!\muxB_component|Mux2~0_combout\))))) # (\ula_component|resultado[1]~3_combout\ & (((\muxB_component|Mux2~0_combout\)) # (\ula_component|resultado[1]~2_combout\))) ) ) ) # ( !\ula_component|aux_mult\(5) & ( \ula_component|cont~9_combout\ & ( 
-- (!\muxB_component|Mux2~0_combout\ & (((\muxA_component|saida[5]~5_combout\ & !\ula_component|resultado[1]~3_combout\)))) # (\muxB_component|Mux2~0_combout\ & (!\ula_component|resultado[1]~2_combout\ $ (((!\muxA_component|saida[5]~5_combout\ & 
-- !\ula_component|resultado[1]~3_combout\))))) ) ) ) # ( \ula_component|aux_mult\(5) & ( !\ula_component|cont~9_combout\ & ( (!\muxB_component|Mux2~0_combout\ & (!\ula_component|resultado[1]~2_combout\ $ (((!\muxA_component|saida[5]~5_combout\) # 
-- (\ula_component|resultado[1]~3_combout\))))) # (\muxB_component|Mux2~0_combout\ & (((\ula_component|resultado[1]~3_combout\) # (\muxA_component|saida[5]~5_combout\)))) ) ) ) # ( !\ula_component|aux_mult\(5) & ( !\ula_component|cont~9_combout\ & ( 
-- (!\ula_component|resultado[1]~3_combout\ & (!\muxA_component|saida[5]~5_combout\ $ (((!\ula_component|resultado[1]~2_combout\) # (\muxB_component|Mux2~0_combout\))))) # (\ula_component|resultado[1]~3_combout\ & (!\ula_component|resultado[1]~2_combout\ & 
-- ((\muxB_component|Mux2~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001100001010011000110101111100110110000010100011011001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_resultado[1]~2_combout\,
	datab => \muxA_component|ALT_INV_saida[5]~5_combout\,
	datac => \muxB_component|ALT_INV_Mux2~0_combout\,
	datad => \ula_component|ALT_INV_resultado[1]~3_combout\,
	datae => \ula_component|ALT_INV_aux_mult\(5),
	dataf => \ula_component|ALT_INV_cont~9_combout\,
	combout => \ula_component|resultado~15_combout\);

-- Location: MLABCELL_X39_Y4_N33
\ula_component|cont~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~6_combout\ = ( \ula_component|cont~4_combout\ & ( (\muxA_component|saida[3]~3_combout\) # (\muxB_component|Mux4~0_combout\) ) ) # ( !\ula_component|cont~4_combout\ & ( (\muxB_component|Mux4~0_combout\ & 
-- \muxA_component|saida[3]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \muxB_component|ALT_INV_Mux4~0_combout\,
	datad => \muxA_component|ALT_INV_saida[3]~3_combout\,
	dataf => \ula_component|ALT_INV_cont~4_combout\,
	combout => \ula_component|cont~6_combout\);

-- Location: MLABCELL_X39_Y4_N45
\ula_component|cont~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~8_combout\ = ( \ula_component|cont~6_combout\ & ( (\muxB_component|Mux3~0_combout\) # (\muxA_component|saida[4]~4_combout\) ) ) # ( !\ula_component|cont~6_combout\ & ( (\muxA_component|saida[4]~4_combout\ & 
-- \muxB_component|Mux3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \muxA_component|ALT_INV_saida[4]~4_combout\,
	datad => \muxB_component|ALT_INV_Mux3~0_combout\,
	dataf => \ula_component|ALT_INV_cont~6_combout\,
	combout => \ula_component|cont~8_combout\);

-- Location: LABCELL_X40_Y4_N54
\ula_component|resultado~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado~16_combout\ = ( \ula_component|resultado[1]~0_combout\ & ( \ula_component|resultado[1]~1_combout\ & ( (\muxA_component|saida[5]~5_combout\) # (\muxB_component|Mux2~0_combout\) ) ) ) # ( !\ula_component|resultado[1]~0_combout\ & ( 
-- \ula_component|resultado[1]~1_combout\ & ( !\ula_component|cont~8_combout\ $ (!\muxB_component|Mux2~0_combout\ $ (\muxA_component|saida[5]~5_combout\)) ) ) ) # ( \ula_component|resultado[1]~0_combout\ & ( !\ula_component|resultado[1]~1_combout\ & ( 
-- (\muxB_component|Mux2~0_combout\ & \muxA_component|saida[5]~5_combout\) ) ) ) # ( !\ula_component|resultado[1]~0_combout\ & ( !\ula_component|resultado[1]~1_combout\ & ( \ula_component|resultado~15_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000111100111100110000110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_resultado~15_combout\,
	datab => \ula_component|ALT_INV_cont~8_combout\,
	datac => \muxB_component|ALT_INV_Mux2~0_combout\,
	datad => \muxA_component|ALT_INV_saida[5]~5_combout\,
	datae => \ula_component|ALT_INV_resultado[1]~0_combout\,
	dataf => \ula_component|ALT_INV_resultado[1]~1_combout\,
	combout => \ula_component|resultado~16_combout\);

-- Location: FF_X40_Y4_N56
\ula_component|resultado[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|resultado~16_combout\,
	ena => \ula_component|resultado[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|resultado\(5));

-- Location: FF_X35_Y1_N29
\ULAout_component|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|resultado\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULAout_component|Q\(5));

-- Location: LABCELL_X42_Y3_N30
\ram8_component|mem~42feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|mem~42feeder_combout\ = ( \ULAout_component|Q\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULAout_component|ALT_INV_Q\(5),
	combout => \ram8_component|mem~42feeder_combout\);

-- Location: FF_X42_Y3_N31
\ram8_component|mem~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ram8_component|mem~42feeder_combout\,
	ena => \ram8_component|mem~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram8_component|mem~42_q\);

-- Location: FF_X43_Y3_N8
\ram8_component|mem~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ULAout_component|Q\(5),
	sload => VCC,
	ena => \ram8_component|mem~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram8_component|mem~18_q\);

-- Location: LABCELL_X43_Y3_N6
\ram8_component|mem~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|mem~50_combout\ = (!\rom8_component|Mux1~0_combout\ & (\ram8_component|mem~42_q\)) # (\rom8_component|Mux1~0_combout\ & ((\ram8_component|mem~18_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom8_component|ALT_INV_Mux1~0_combout\,
	datac => \ram8_component|ALT_INV_mem~42_q\,
	datad => \ram8_component|ALT_INV_mem~18_q\,
	combout => \ram8_component|mem~50_combout\);

-- Location: LABCELL_X43_Y3_N12
\ram8_component|data_saida[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|data_saida[5]~13_combout\ = ( \ram8_component|mem~50_combout\ ) # ( !\ram8_component|mem~50_combout\ & ( !\UniControl_component|ler_men~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_ler_men~2_combout\,
	dataf => \ram8_component|ALT_INV_mem~50_combout\,
	combout => \ram8_component|data_saida[5]~13_combout\);

-- Location: FF_X43_Y3_N13
\MDR_component|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ram8_component|data_saida[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR_component|Q\(5));

-- Location: LABCELL_X43_Y3_N42
\muxUM_component|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxUM_component|saida[5]~5_combout\ = ( \ULAout_component|Q\(5) & ( ((\UniControl_component|esc_reg_952~combout\ & !\UniControl_component|memParaReg$latch~combout\)) # (\MDR_component|Q\(5)) ) ) # ( !\ULAout_component|Q\(5) & ( (\MDR_component|Q\(5) & 
-- ((!\UniControl_component|esc_reg_952~combout\) # (\UniControl_component|memParaReg$latch~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datab => \UniControl_component|ALT_INV_memParaReg$latch~combout\,
	datac => \MDR_component|ALT_INV_Q\(5),
	dataf => \ULAout_component|ALT_INV_Q\(5),
	combout => \muxUM_component|saida[5]~5_combout\);

-- Location: LABCELL_X42_Y3_N6
\breg8_component|reg~23feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~23feeder_combout\ = \muxUM_component|saida[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \muxUM_component|ALT_INV_saida[5]~5_combout\,
	combout => \breg8_component|reg~23feeder_combout\);

-- Location: FF_X42_Y3_N7
\breg8_component|reg~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \breg8_component|reg~23feeder_combout\,
	ena => \breg8_component|reg~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|reg~23_q\);

-- Location: FF_X43_Y3_N20
\breg8_component|reg~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \muxUM_component|saida[5]~5_combout\,
	sload => VCC,
	ena => \breg8_component|reg~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|reg~15_q\);

-- Location: MLABCELL_X39_Y3_N57
\breg8_component|reg~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~31_combout\ = ( \breg8_component|reg~15_q\ & ( (\breg8_component|reg~23_q\) # (\rom8_component|Mux1~0_combout\) ) ) # ( !\breg8_component|reg~15_q\ & ( (!\rom8_component|Mux1~0_combout\ & \breg8_component|reg~23_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom8_component|ALT_INV_Mux1~0_combout\,
	datac => \breg8_component|ALT_INV_reg~23_q\,
	dataf => \breg8_component|ALT_INV_reg~15_q\,
	combout => \breg8_component|reg~31_combout\);

-- Location: FF_X36_Y2_N23
\breg8_component|SaidaB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \breg8_component|reg~31_combout\,
	sload => VCC,
	ena => \UniControl_component|esc_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|SaidaB\(5));

-- Location: LABCELL_X36_Y2_N21
\muxB_component|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxB_component|Mux2~0_combout\ = ( !\UniControl_component|ula_fonteB[0]$latch~combout\ & ( (!\UniControl_component|ula_fonteB[1]$latch~combout\ & (\UniControl_component|ula_fonteB[0]_783~combout\ & \breg8_component|SaidaB\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_ula_fonteB[1]$latch~combout\,
	datac => \UniControl_component|ALT_INV_ula_fonteB[0]_783~combout\,
	datad => \breg8_component|ALT_INV_SaidaB\(5),
	dataf => \UniControl_component|ALT_INV_ula_fonteB[0]$latch~combout\,
	combout => \muxB_component|Mux2~0_combout\);

-- Location: LABCELL_X40_Y4_N9
\ula_component|cont~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~11_combout\ = ( \ula_component|cont~9_combout\ & ( (!\muxB_component|Mux2~0_combout\) # (\muxA_component|saida[5]~5_combout\) ) ) # ( !\ula_component|cont~9_combout\ & ( (!\muxB_component|Mux2~0_combout\ & 
-- \muxA_component|saida[5]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux2~0_combout\,
	datab => \muxA_component|ALT_INV_saida[5]~5_combout\,
	dataf => \ula_component|ALT_INV_cont~9_combout\,
	combout => \ula_component|cont~11_combout\);

-- Location: LABCELL_X40_Y4_N48
\ula_component|resultado~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado~17_combout\ = ( \ula_component|aux_mult\(6) & ( \ula_component|cont~11_combout\ & ( (!\ula_component|resultado[1]~3_combout\ & (!\muxA_component|saida[6]~6_combout\ $ (((!\muxB_component|Mux1~0_combout\) # 
-- (!\ula_component|resultado[1]~2_combout\))))) # (\ula_component|resultado[1]~3_combout\ & (((\ula_component|resultado[1]~2_combout\) # (\muxB_component|Mux1~0_combout\)))) ) ) ) # ( !\ula_component|aux_mult\(6) & ( \ula_component|cont~11_combout\ & ( 
-- (!\muxB_component|Mux1~0_combout\ & (\muxA_component|saida[6]~6_combout\ & ((!\ula_component|resultado[1]~3_combout\)))) # (\muxB_component|Mux1~0_combout\ & (!\ula_component|resultado[1]~2_combout\ $ (((!\muxA_component|saida[6]~6_combout\ & 
-- !\ula_component|resultado[1]~3_combout\))))) ) ) ) # ( \ula_component|aux_mult\(6) & ( !\ula_component|cont~11_combout\ & ( (!\muxB_component|Mux1~0_combout\ & (!\ula_component|resultado[1]~2_combout\ $ (((!\muxA_component|saida[6]~6_combout\) # 
-- (\ula_component|resultado[1]~3_combout\))))) # (\muxB_component|Mux1~0_combout\ & (((\ula_component|resultado[1]~3_combout\)) # (\muxA_component|saida[6]~6_combout\))) ) ) ) # ( !\ula_component|aux_mult\(6) & ( !\ula_component|cont~11_combout\ & ( 
-- (!\ula_component|resultado[1]~3_combout\ & (!\muxA_component|saida[6]~6_combout\ $ (((!\ula_component|resultado[1]~2_combout\) # (\muxB_component|Mux1~0_combout\))))) # (\ula_component|resultado[1]~3_combout\ & (((\muxB_component|Mux1~0_combout\ & 
-- !\ula_component|resultado[1]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100100110000010110010011111101010110001100000101011000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxA_component|ALT_INV_saida[6]~6_combout\,
	datab => \muxB_component|ALT_INV_Mux1~0_combout\,
	datac => \ula_component|ALT_INV_resultado[1]~2_combout\,
	datad => \ula_component|ALT_INV_resultado[1]~3_combout\,
	datae => \ula_component|ALT_INV_aux_mult\(6),
	dataf => \ula_component|ALT_INV_cont~11_combout\,
	combout => \ula_component|resultado~17_combout\);

-- Location: LABCELL_X40_Y4_N30
\ula_component|cont~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~10_combout\ = ( \ula_component|cont~8_combout\ & ( (\muxA_component|saida[5]~5_combout\) # (\muxB_component|Mux2~0_combout\) ) ) # ( !\ula_component|cont~8_combout\ & ( (\muxB_component|Mux2~0_combout\ & 
-- \muxA_component|saida[5]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \muxB_component|ALT_INV_Mux2~0_combout\,
	datad => \muxA_component|ALT_INV_saida[5]~5_combout\,
	dataf => \ula_component|ALT_INV_cont~8_combout\,
	combout => \ula_component|cont~10_combout\);

-- Location: LABCELL_X40_Y4_N36
\ula_component|resultado~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado~18_combout\ = ( \muxA_component|saida[6]~6_combout\ & ( \ula_component|resultado[1]~1_combout\ & ( (!\ula_component|cont~10_combout\ $ (\muxB_component|Mux1~0_combout\)) # (\ula_component|resultado[1]~0_combout\) ) ) ) # ( 
-- !\muxA_component|saida[6]~6_combout\ & ( \ula_component|resultado[1]~1_combout\ & ( !\muxB_component|Mux1~0_combout\ $ (((!\ula_component|cont~10_combout\) # (\ula_component|resultado[1]~0_combout\))) ) ) ) # ( \muxA_component|saida[6]~6_combout\ & ( 
-- !\ula_component|resultado[1]~1_combout\ & ( (!\ula_component|resultado[1]~0_combout\ & (\ula_component|resultado~17_combout\)) # (\ula_component|resultado[1]~0_combout\ & ((\muxB_component|Mux1~0_combout\))) ) ) ) # ( !\muxA_component|saida[6]~6_combout\ 
-- & ( !\ula_component|resultado[1]~1_combout\ & ( (\ula_component|resultado~17_combout\ & !\ula_component|resultado[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101111100110000110011111100111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_resultado~17_combout\,
	datab => \ula_component|ALT_INV_cont~10_combout\,
	datac => \ula_component|ALT_INV_resultado[1]~0_combout\,
	datad => \muxB_component|ALT_INV_Mux1~0_combout\,
	datae => \muxA_component|ALT_INV_saida[6]~6_combout\,
	dataf => \ula_component|ALT_INV_resultado[1]~1_combout\,
	combout => \ula_component|resultado~18_combout\);

-- Location: FF_X40_Y4_N38
\ula_component|resultado[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|resultado~18_combout\,
	ena => \ula_component|resultado[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|resultado\(6));

-- Location: FF_X35_Y1_N44
\ULAout_component|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|resultado\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULAout_component|Q\(6));

-- Location: FF_X42_Y3_N4
\ram8_component|mem~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ULAout_component|Q\(6),
	sload => VCC,
	ena => \ram8_component|mem~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram8_component|mem~43_q\);

-- Location: FF_X43_Y3_N11
\ram8_component|mem~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ULAout_component|Q\(6),
	sload => VCC,
	ena => \ram8_component|mem~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram8_component|mem~19_q\);

-- Location: LABCELL_X43_Y3_N9
\ram8_component|mem~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|mem~51_combout\ = (!\rom8_component|Mux1~0_combout\ & (\ram8_component|mem~43_q\)) # (\rom8_component|Mux1~0_combout\ & ((\ram8_component|mem~19_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom8_component|ALT_INV_Mux1~0_combout\,
	datac => \ram8_component|ALT_INV_mem~43_q\,
	datad => \ram8_component|ALT_INV_mem~19_q\,
	combout => \ram8_component|mem~51_combout\);

-- Location: LABCELL_X43_Y3_N15
\ram8_component|data_saida[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|data_saida[6]~14_combout\ = ( \ram8_component|mem~51_combout\ ) # ( !\ram8_component|mem~51_combout\ & ( !\UniControl_component|ler_men~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_ler_men~2_combout\,
	dataf => \ram8_component|ALT_INV_mem~51_combout\,
	combout => \ram8_component|data_saida[6]~14_combout\);

-- Location: FF_X43_Y3_N17
\MDR_component|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ram8_component|data_saida[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR_component|Q\(6));

-- Location: LABCELL_X43_Y3_N36
\muxUM_component|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxUM_component|saida[6]~6_combout\ = ( \MDR_component|Q\(6) & ( (!\UniControl_component|esc_reg_952~combout\) # ((\ULAout_component|Q\(6)) # (\UniControl_component|memParaReg$latch~combout\)) ) ) # ( !\MDR_component|Q\(6) & ( 
-- (\UniControl_component|esc_reg_952~combout\ & (!\UniControl_component|memParaReg$latch~combout\ & \ULAout_component|Q\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datab => \UniControl_component|ALT_INV_memParaReg$latch~combout\,
	datac => \ULAout_component|ALT_INV_Q\(6),
	dataf => \MDR_component|ALT_INV_Q\(6),
	combout => \muxUM_component|saida[6]~6_combout\);

-- Location: MLABCELL_X39_Y3_N39
\breg8_component|reg~24feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~24feeder_combout\ = \muxUM_component|saida[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxUM_component|ALT_INV_saida[6]~6_combout\,
	combout => \breg8_component|reg~24feeder_combout\);

-- Location: FF_X39_Y3_N41
\breg8_component|reg~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \breg8_component|reg~24feeder_combout\,
	ena => \breg8_component|reg~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|reg~24_q\);

-- Location: MLABCELL_X39_Y3_N18
\breg8_component|reg~16feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~16feeder_combout\ = \muxUM_component|saida[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxUM_component|ALT_INV_saida[6]~6_combout\,
	combout => \breg8_component|reg~16feeder_combout\);

-- Location: FF_X39_Y3_N20
\breg8_component|reg~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \breg8_component|reg~16feeder_combout\,
	ena => \breg8_component|reg~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|reg~16_q\);

-- Location: MLABCELL_X39_Y3_N3
\breg8_component|reg~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~32_combout\ = ( \breg8_component|reg~16_q\ & ( (\breg8_component|reg~24_q\) # (\rom8_component|Mux1~0_combout\) ) ) # ( !\breg8_component|reg~16_q\ & ( (!\rom8_component|Mux1~0_combout\ & \breg8_component|reg~24_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom8_component|ALT_INV_Mux1~0_combout\,
	datac => \breg8_component|ALT_INV_reg~24_q\,
	dataf => \breg8_component|ALT_INV_reg~16_q\,
	combout => \breg8_component|reg~32_combout\);

-- Location: FF_X34_Y2_N28
\breg8_component|SaidaA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \breg8_component|reg~32_combout\,
	sload => VCC,
	ena => \UniControl_component|esc_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|SaidaA\(6));

-- Location: MLABCELL_X34_Y2_N27
\muxA_component|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxA_component|saida[6]~6_combout\ = ( \breg8_component|SaidaA\(6) & ( \pc_component|saidaPC\(6) ) ) # ( !\breg8_component|SaidaA\(6) & ( \pc_component|saidaPC\(6) & ( (!\UniControl_component|ula_fonteA$latch~combout\ & 
-- \UniControl_component|esc_reg_952~combout\) ) ) ) # ( \breg8_component|SaidaA\(6) & ( !\pc_component|saidaPC\(6) & ( (!\UniControl_component|esc_reg_952~combout\) # (\UniControl_component|ula_fonteA$latch~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100001010000010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_ula_fonteA$latch~combout\,
	datac => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datae => \breg8_component|ALT_INV_SaidaA\(6),
	dataf => \pc_component|ALT_INV_saidaPC\(6),
	combout => \muxA_component|saida[6]~6_combout\);

-- Location: LABCELL_X40_Y4_N45
\ula_component|cont~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~13_combout\ = ( \ula_component|cont~11_combout\ & ( (!\muxB_component|Mux1~0_combout\) # (\muxA_component|saida[6]~6_combout\) ) ) # ( !\ula_component|cont~11_combout\ & ( (\muxA_component|saida[6]~6_combout\ & 
-- !\muxB_component|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxA_component|ALT_INV_saida[6]~6_combout\,
	datab => \muxB_component|ALT_INV_Mux1~0_combout\,
	dataf => \ula_component|ALT_INV_cont~11_combout\,
	combout => \ula_component|cont~13_combout\);

-- Location: LABCELL_X42_Y2_N57
\ula_component|resultado~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado~19_combout\ = ( \ula_component|aux_mult\(7) & ( \ula_component|cont~13_combout\ & ( (!\ula_component|resultado[1]~3_combout\ & (!\muxA_component|saida[7]~7_combout\ $ (((!\ula_component|resultado[1]~2_combout\) # 
-- (!\muxB_component|Mux0~0_combout\))))) # (\ula_component|resultado[1]~3_combout\ & (((\muxB_component|Mux0~0_combout\)) # (\ula_component|resultado[1]~2_combout\))) ) ) ) # ( !\ula_component|aux_mult\(7) & ( \ula_component|cont~13_combout\ & ( 
-- (!\ula_component|resultado[1]~3_combout\ & (!\muxA_component|saida[7]~7_combout\ $ (((!\ula_component|resultado[1]~2_combout\) # (!\muxB_component|Mux0~0_combout\))))) # (\ula_component|resultado[1]~3_combout\ & (!\ula_component|resultado[1]~2_combout\ & 
-- (\muxB_component|Mux0~0_combout\))) ) ) ) # ( \ula_component|aux_mult\(7) & ( !\ula_component|cont~13_combout\ & ( (!\ula_component|resultado[1]~3_combout\ & (!\muxA_component|saida[7]~7_combout\ $ (((!\ula_component|resultado[1]~2_combout\) # 
-- (\muxB_component|Mux0~0_combout\))))) # (\ula_component|resultado[1]~3_combout\ & (((\muxB_component|Mux0~0_combout\)) # (\ula_component|resultado[1]~2_combout\))) ) ) ) # ( !\ula_component|aux_mult\(7) & ( !\ula_component|cont~13_combout\ & ( 
-- (!\ula_component|resultado[1]~3_combout\ & (!\muxA_component|saida[7]~7_combout\ $ (((!\ula_component|resultado[1]~2_combout\) # (\muxB_component|Mux0~0_combout\))))) # (\ula_component|resultado[1]~3_combout\ & (!\ula_component|resultado[1]~2_combout\ & 
-- (\muxB_component|Mux0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010001110001101011001111100000110101011000001011110111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_resultado[1]~3_combout\,
	datab => \ula_component|ALT_INV_resultado[1]~2_combout\,
	datac => \muxB_component|ALT_INV_Mux0~0_combout\,
	datad => \muxA_component|ALT_INV_saida[7]~7_combout\,
	datae => \ula_component|ALT_INV_aux_mult\(7),
	dataf => \ula_component|ALT_INV_cont~13_combout\,
	combout => \ula_component|resultado~19_combout\);

-- Location: LABCELL_X40_Y4_N42
\ula_component|cont~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~12_combout\ = ( \ula_component|cont~10_combout\ & ( (\muxA_component|saida[6]~6_combout\) # (\muxB_component|Mux1~0_combout\) ) ) # ( !\ula_component|cont~10_combout\ & ( (\muxB_component|Mux1~0_combout\ & 
-- \muxA_component|saida[6]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxB_component|ALT_INV_Mux1~0_combout\,
	datac => \muxA_component|ALT_INV_saida[6]~6_combout\,
	dataf => \ula_component|ALT_INV_cont~10_combout\,
	combout => \ula_component|cont~12_combout\);

-- Location: LABCELL_X42_Y2_N48
\ula_component|resultado~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado~20_combout\ = ( \ula_component|cont~12_combout\ & ( \muxB_component|Mux0~0_combout\ & ( (!\ula_component|resultado[1]~0_combout\ & ((!\ula_component|resultado[1]~1_combout\ & ((\ula_component|resultado~19_combout\))) # 
-- (\ula_component|resultado[1]~1_combout\ & (\muxA_component|saida[7]~7_combout\)))) # (\ula_component|resultado[1]~0_combout\ & (((\ula_component|resultado[1]~1_combout\)) # (\muxA_component|saida[7]~7_combout\))) ) ) ) # ( !\ula_component|cont~12_combout\ 
-- & ( \muxB_component|Mux0~0_combout\ & ( (!\ula_component|resultado[1]~0_combout\ & ((!\ula_component|resultado[1]~1_combout\ & ((\ula_component|resultado~19_combout\))) # (\ula_component|resultado[1]~1_combout\ & (!\muxA_component|saida[7]~7_combout\)))) 
-- # (\ula_component|resultado[1]~0_combout\ & (((\ula_component|resultado[1]~1_combout\)) # (\muxA_component|saida[7]~7_combout\))) ) ) ) # ( \ula_component|cont~12_combout\ & ( !\muxB_component|Mux0~0_combout\ & ( (!\ula_component|resultado[1]~1_combout\ & 
-- (((!\ula_component|resultado[1]~0_combout\ & \ula_component|resultado~19_combout\)))) # (\ula_component|resultado[1]~1_combout\ & (!\muxA_component|saida[7]~7_combout\ $ ((\ula_component|resultado[1]~0_combout\)))) ) ) ) # ( 
-- !\ula_component|cont~12_combout\ & ( !\muxB_component|Mux0~0_combout\ & ( (!\ula_component|resultado[1]~1_combout\ & (((!\ula_component|resultado[1]~0_combout\ & \ula_component|resultado~19_combout\)))) # (\ula_component|resultado[1]~1_combout\ & 
-- (\muxA_component|saida[7]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111000101000010011100100100011011110110110001011111010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxA_component|ALT_INV_saida[7]~7_combout\,
	datab => \ula_component|ALT_INV_resultado[1]~0_combout\,
	datac => \ula_component|ALT_INV_resultado[1]~1_combout\,
	datad => \ula_component|ALT_INV_resultado~19_combout\,
	datae => \ula_component|ALT_INV_cont~12_combout\,
	dataf => \muxB_component|ALT_INV_Mux0~0_combout\,
	combout => \ula_component|resultado~20_combout\);

-- Location: FF_X42_Y2_N50
\ula_component|resultado[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|resultado~20_combout\,
	ena => \ula_component|resultado[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|resultado\(7));

-- Location: FF_X35_Y1_N47
\ULAout_component|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|resultado\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULAout_component|Q\(7));

-- Location: LABCELL_X42_Y3_N57
\ram8_component|mem~44feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|mem~44feeder_combout\ = ( \ULAout_component|Q\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULAout_component|ALT_INV_Q\(7),
	combout => \ram8_component|mem~44feeder_combout\);

-- Location: FF_X42_Y3_N58
\ram8_component|mem~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ram8_component|mem~44feeder_combout\,
	ena => \ram8_component|mem~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram8_component|mem~44_q\);

-- Location: FF_X43_Y3_N59
\ram8_component|mem~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ULAout_component|Q\(7),
	sload => VCC,
	ena => \ram8_component|mem~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram8_component|mem~20_q\);

-- Location: LABCELL_X43_Y3_N57
\ram8_component|mem~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|mem~52_combout\ = (!\rom8_component|Mux1~0_combout\ & (\ram8_component|mem~44_q\)) # (\rom8_component|Mux1~0_combout\ & ((\ram8_component|mem~20_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom8_component|ALT_INV_Mux1~0_combout\,
	datac => \ram8_component|ALT_INV_mem~44_q\,
	datad => \ram8_component|ALT_INV_mem~20_q\,
	combout => \ram8_component|mem~52_combout\);

-- Location: LABCELL_X43_Y3_N3
\ram8_component|data_saida[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram8_component|data_saida[7]~15_combout\ = ( \ram8_component|mem~52_combout\ ) # ( !\ram8_component|mem~52_combout\ & ( !\UniControl_component|ler_men~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_ler_men~2_combout\,
	dataf => \ram8_component|ALT_INV_mem~52_combout\,
	combout => \ram8_component|data_saida[7]~15_combout\);

-- Location: FF_X43_Y3_N5
\MDR_component|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ram8_component|data_saida[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR_component|Q\(7));

-- Location: LABCELL_X43_Y3_N39
\muxUM_component|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxUM_component|saida[7]~7_combout\ = ( \ULAout_component|Q\(7) & ( ((\UniControl_component|esc_reg_952~combout\ & !\UniControl_component|memParaReg$latch~combout\)) # (\MDR_component|Q\(7)) ) ) # ( !\ULAout_component|Q\(7) & ( (\MDR_component|Q\(7) & 
-- ((!\UniControl_component|esc_reg_952~combout\) # (\UniControl_component|memParaReg$latch~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011101101000100111111110100010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datab => \UniControl_component|ALT_INV_memParaReg$latch~combout\,
	datad => \MDR_component|ALT_INV_Q\(7),
	dataf => \ULAout_component|ALT_INV_Q\(7),
	combout => \muxUM_component|saida[7]~7_combout\);

-- Location: MLABCELL_X39_Y3_N24
\breg8_component|reg~25feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~25feeder_combout\ = \muxUM_component|saida[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxUM_component|ALT_INV_saida[7]~7_combout\,
	combout => \breg8_component|reg~25feeder_combout\);

-- Location: FF_X39_Y3_N26
\breg8_component|reg~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \breg8_component|reg~25feeder_combout\,
	ena => \breg8_component|reg~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|reg~25_q\);

-- Location: MLABCELL_X39_Y3_N30
\breg8_component|reg~17feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~17feeder_combout\ = \muxUM_component|saida[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxUM_component|ALT_INV_saida[7]~7_combout\,
	combout => \breg8_component|reg~17feeder_combout\);

-- Location: FF_X39_Y3_N31
\breg8_component|reg~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \breg8_component|reg~17feeder_combout\,
	ena => \breg8_component|reg~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|reg~17_q\);

-- Location: MLABCELL_X39_Y3_N42
\breg8_component|reg~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \breg8_component|reg~33_combout\ = ( \breg8_component|reg~17_q\ & ( (\breg8_component|reg~25_q\) # (\rom8_component|Mux1~0_combout\) ) ) # ( !\breg8_component|reg~17_q\ & ( (!\rom8_component|Mux1~0_combout\ & \breg8_component|reg~25_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom8_component|ALT_INV_Mux1~0_combout\,
	datac => \breg8_component|ALT_INV_reg~25_q\,
	dataf => \breg8_component|ALT_INV_reg~17_q\,
	combout => \breg8_component|reg~33_combout\);

-- Location: FF_X36_Y2_N53
\breg8_component|SaidaB[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \breg8_component|reg~33_combout\,
	sload => VCC,
	ena => \UniControl_component|esc_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|SaidaB\(7));

-- Location: LABCELL_X36_Y1_N48
\muxB_component|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxB_component|Mux0~0_combout\ = ( \breg8_component|SaidaB\(7) & ( !\UniControl_component|ula_fonteB[1]$latch~combout\ & ( (\UniControl_component|ula_fonteB[0]_783~combout\ & !\UniControl_component|ula_fonteB[0]$latch~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_ula_fonteB[0]_783~combout\,
	datac => \UniControl_component|ALT_INV_ula_fonteB[0]$latch~combout\,
	datae => \breg8_component|ALT_INV_SaidaB\(7),
	dataf => \UniControl_component|ALT_INV_ula_fonteB[1]$latch~combout\,
	combout => \muxB_component|Mux0~0_combout\);

-- Location: LABCELL_X36_Y3_N9
\UniControl_component|ula_fonteA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|ula_fonteA~1_combout\ = ( \UniControl_component|esc_reg_952~combout\ & ( !\UniControl_component|ula_fonteA$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_ula_fonteA$latch~combout\,
	dataf => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	combout => \UniControl_component|ula_fonteA~1_combout\);

-- Location: MLABCELL_X34_Y2_N48
\ula_component|aux_dado~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_dado~1_combout\ = ( \pc_component|saidaPC\(7) & ( \breg8_component|SaidaA\(0) & ( (!\ula_component|aux_dado\(0) & ((!\UniControl_component|ula_fonteA~1_combout\ & (\breg8_component|SaidaA\(7))) # 
-- (\UniControl_component|ula_fonteA~1_combout\ & ((\pc_component|saidaPC\(0)))))) ) ) ) # ( !\pc_component|saidaPC\(7) & ( \breg8_component|SaidaA\(0) & ( (\breg8_component|SaidaA\(7) & (!\UniControl_component|ula_fonteA~1_combout\ & 
-- !\ula_component|aux_dado\(0))) ) ) ) # ( \pc_component|saidaPC\(7) & ( !\breg8_component|SaidaA\(0) & ( (\UniControl_component|ula_fonteA~1_combout\ & (\pc_component|saidaPC\(0) & !\ula_component|aux_dado\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000000001000100000000000100011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \breg8_component|ALT_INV_SaidaA\(7),
	datab => \UniControl_component|ALT_INV_ula_fonteA~1_combout\,
	datac => \pc_component|ALT_INV_saidaPC\(0),
	datad => \ula_component|ALT_INV_aux_dado\(0),
	datae => \pc_component|ALT_INV_saidaPC\(7),
	dataf => \breg8_component|ALT_INV_SaidaA\(0),
	combout => \ula_component|aux_dado~1_combout\);

-- Location: FF_X34_Y2_N50
\ula_component|aux_dado[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_dado~1_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_dado\(6));

-- Location: MLABCELL_X34_Y2_N30
\ula_component|aux_dado[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_dado[5]~feeder_combout\ = \ula_component|aux_dado\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ula_component|ALT_INV_aux_dado\(6),
	combout => \ula_component|aux_dado[5]~feeder_combout\);

-- Location: MLABCELL_X34_Y2_N15
\ula_component|aux_dado~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_dado~0_combout\ = ( \UniControl_component|ula_fonteA$latch~combout\ & ( (\breg8_component|SaidaA\(0) & !\ula_component|aux_dado\(0)) ) ) # ( !\UniControl_component|ula_fonteA$latch~combout\ & ( (!\ula_component|aux_dado\(0) & 
-- ((!\UniControl_component|esc_reg_952~combout\ & ((\breg8_component|SaidaA\(0)))) # (\UniControl_component|esc_reg_952~combout\ & (\pc_component|saidaPC\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|ALT_INV_saidaPC\(0),
	datab => \breg8_component|ALT_INV_SaidaA\(0),
	datac => \ula_component|ALT_INV_aux_dado\(0),
	datad => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	dataf => \UniControl_component|ALT_INV_ula_fonteA$latch~combout\,
	combout => \ula_component|aux_dado~0_combout\);

-- Location: FF_X34_Y2_N32
\ula_component|aux_dado[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_dado[5]~feeder_combout\,
	asdata => \muxA_component|saida[6]~6_combout\,
	sload => \ula_component|aux_dado~0_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_dado\(5));

-- Location: MLABCELL_X34_Y2_N33
\ula_component|aux_dado[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_dado[4]~feeder_combout\ = \ula_component|aux_dado\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ula_component|ALT_INV_aux_dado\(5),
	combout => \ula_component|aux_dado[4]~feeder_combout\);

-- Location: FF_X34_Y2_N35
\ula_component|aux_dado[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_dado[4]~feeder_combout\,
	asdata => \muxA_component|saida[5]~5_combout\,
	sload => \ula_component|aux_dado~0_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_dado\(4));

-- Location: MLABCELL_X34_Y2_N0
\ula_component|aux_dado[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_dado[3]~feeder_combout\ = \ula_component|aux_dado\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ula_component|ALT_INV_aux_dado\(4),
	combout => \ula_component|aux_dado[3]~feeder_combout\);

-- Location: FF_X34_Y2_N1
\ula_component|aux_dado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_dado[3]~feeder_combout\,
	asdata => \muxA_component|saida[4]~4_combout\,
	sload => \ula_component|aux_dado~0_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_dado\(3));

-- Location: LABCELL_X37_Y3_N18
\ula_component|aux_dado[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_dado[2]~feeder_combout\ = ( \ula_component|aux_dado\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ula_component|ALT_INV_aux_dado\(3),
	combout => \ula_component|aux_dado[2]~feeder_combout\);

-- Location: FF_X37_Y3_N20
\ula_component|aux_dado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_dado[2]~feeder_combout\,
	asdata => \muxA_component|saida[3]~3_combout\,
	sload => \ula_component|aux_dado~0_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_dado\(2));

-- Location: LABCELL_X37_Y3_N36
\ula_component|aux_dado[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_dado[1]~feeder_combout\ = \ula_component|aux_dado\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ula_component|ALT_INV_aux_dado\(2),
	combout => \ula_component|aux_dado[1]~feeder_combout\);

-- Location: FF_X37_Y3_N38
\ula_component|aux_dado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_dado[1]~feeder_combout\,
	asdata => \muxA_component|saida[2]~2_combout\,
	sload => \ula_component|aux_dado~0_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_dado\(1));

-- Location: LABCELL_X37_Y3_N39
\ula_component|aux_dado[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_dado[0]~feeder_combout\ = \ula_component|aux_dado\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_aux_dado\(1),
	combout => \ula_component|aux_dado[0]~feeder_combout\);

-- Location: FF_X37_Y3_N41
\ula_component|aux_dado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_dado[0]~feeder_combout\,
	asdata => \muxA_component|saida[1]~1_combout\,
	sload => \ula_component|aux_dado~0_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_dado\(0));

-- Location: LABCELL_X37_Y3_N27
\ula_component|resultado[1]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado[1]~21_combout\ = ( \UniControl_component|esc_reg_952~combout\ & ( (!\UniControl_component|ULAop[2]$latch~combout\ & (!\UniControl_component|ULAop[1]$latch~combout\ & !\UniControl_component|ULAop[3]$latch~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_ULAop[2]$latch~combout\,
	datac => \UniControl_component|ALT_INV_ULAop[1]$latch~combout\,
	datad => \UniControl_component|ALT_INV_ULAop[3]$latch~combout\,
	dataf => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	combout => \ula_component|resultado[1]~21_combout\);

-- Location: LABCELL_X37_Y3_N24
\ula_component|cont~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~57_combout\ = ( !\ula_component|resultado[1]~21_combout\ & ( (\ula_component|aux_dado\(0) & (!\ula_component|resultado[1]~0_combout\ & \ula_component|Equal2~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ula_component|ALT_INV_aux_dado\(0),
	datac => \ula_component|ALT_INV_resultado[1]~0_combout\,
	datad => \ula_component|ALT_INV_Equal2~2_combout\,
	dataf => \ula_component|ALT_INV_resultado[1]~21_combout\,
	combout => \ula_component|cont~57_combout\);

-- Location: FF_X36_Y2_N41
\ula_component|mult[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|aux_mult\(14),
	sload => VCC,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|mult\(14));

-- Location: LABCELL_X37_Y3_N0
\ula_component|cont~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~67_combout\ = (!\ula_component|aux_mult\(12) & \muxB_component|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ula_component|ALT_INV_aux_mult\(12),
	datac => \muxB_component|ALT_INV_Mux3~0_combout\,
	combout => \ula_component|cont~67_combout\);

-- Location: LABCELL_X36_Y3_N45
\ula_component|aux_mult[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult[10]~0_combout\ = ( \ula_component|aux_dado\(0) & ( \muxA_component|saida[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxA_component|ALT_INV_saida[0]~0_combout\,
	dataf => \ula_component|ALT_INV_aux_dado\(0),
	combout => \ula_component|aux_mult[10]~0_combout\);

-- Location: LABCELL_X37_Y3_N42
\ula_component|mult~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|mult~1_combout\ = ( \ula_component|aux_mult\(14) & ( !\muxB_component|Mux1~0_combout\ ) ) # ( !\ula_component|aux_mult\(14) & ( \muxB_component|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux1~0_combout\,
	dataf => \ula_component|ALT_INV_aux_mult\(14),
	combout => \ula_component|mult~1_combout\);

-- Location: LABCELL_X37_Y3_N48
\ula_component|aux_mult~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult~2_combout\ = ( \ula_component|mult\(14) & ( \ula_component|cont~51_combout\ & ( (!\muxA_component|saida[0]~0_combout\ & (((\ula_component|aux_mult\(14))))) # (\muxA_component|saida[0]~0_combout\ & (!\ula_component|aux_dado\(0) & 
-- (\muxB_component|Mux1~0_combout\))) ) ) ) # ( !\ula_component|mult\(14) & ( \ula_component|cont~51_combout\ & ( (!\muxA_component|saida[0]~0_combout\ & (((\ula_component|aux_mult\(14))))) # (\muxA_component|saida[0]~0_combout\ & 
-- (!\ula_component|aux_dado\(0) & (!\muxB_component|Mux1~0_combout\))) ) ) ) # ( \ula_component|mult\(14) & ( !\ula_component|cont~51_combout\ & ( (!\muxA_component|saida[0]~0_combout\ & (((\ula_component|aux_mult\(14))))) # 
-- (\muxA_component|saida[0]~0_combout\ & (!\ula_component|aux_dado\(0) & (!\muxB_component|Mux1~0_combout\))) ) ) ) # ( !\ula_component|mult\(14) & ( !\ula_component|cont~51_combout\ & ( (!\muxA_component|saida[0]~0_combout\ & 
-- (((\ula_component|aux_mult\(14))))) # (\muxA_component|saida[0]~0_combout\ & (!\ula_component|aux_dado\(0) & (\muxB_component|Mux1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100100010000011111000100000001111100010000000111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_aux_dado\(0),
	datab => \muxB_component|ALT_INV_Mux1~0_combout\,
	datac => \ula_component|ALT_INV_aux_mult\(14),
	datad => \muxA_component|ALT_INV_saida[0]~0_combout\,
	datae => \ula_component|ALT_INV_mult\(14),
	dataf => \ula_component|ALT_INV_cont~51_combout\,
	combout => \ula_component|aux_mult~2_combout\);

-- Location: LABCELL_X36_Y4_N39
\ula_component|cont~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~14_combout\ = ( !\ula_component|aux_mult\(11) & ( \muxB_component|Mux4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \muxB_component|ALT_INV_Mux4~0_combout\,
	dataf => \ula_component|ALT_INV_aux_mult\(11),
	combout => \ula_component|cont~14_combout\);

-- Location: LABCELL_X36_Y4_N21
\ula_component|cont~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~15_combout\ = (\ula_component|aux_mult\(11) & !\muxB_component|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ula_component|ALT_INV_aux_mult\(11),
	datad => \muxB_component|ALT_INV_Mux4~0_combout\,
	combout => \ula_component|cont~15_combout\);

-- Location: LABCELL_X36_Y5_N21
\ula_component|mult~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|mult~3_combout\ = ( \ula_component|aux_mult\(11) & ( !\muxB_component|Mux4~0_combout\ ) ) # ( !\ula_component|aux_mult\(11) & ( \muxB_component|Mux4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux4~0_combout\,
	dataf => \ula_component|ALT_INV_aux_mult\(11),
	combout => \ula_component|mult~3_combout\);

-- Location: FF_X35_Y2_N32
\ula_component|mult[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|aux_mult\(10),
	sload => VCC,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|mult\(10));

-- Location: FF_X35_Y2_N44
\ula_component|mult[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|aux_mult\(9),
	sload => VCC,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|mult\(9));

-- Location: FF_X35_Y2_N34
\ula_component|mult[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|aux_mult\(8),
	sload => VCC,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|mult\(8));

-- Location: LABCELL_X35_Y2_N0
\ula_component|cont~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~26_combout\ = ( \ula_component|cont~q\ & ( !\ula_component|mult\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ula_component|ALT_INV_mult\(8),
	dataf => \ula_component|ALT_INV_cont~q\,
	combout => \ula_component|cont~26_combout\);

-- Location: LABCELL_X35_Y2_N33
\ula_component|mult~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|mult~0_combout\ = !\ula_component|cont~q\ $ (!\ula_component|mult\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ula_component|ALT_INV_cont~q\,
	datad => \ula_component|ALT_INV_mult\(8),
	combout => \ula_component|mult~0_combout\);

-- Location: LABCELL_X35_Y2_N6
\ula_component|cont~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~25_combout\ = ( \breg8_component|SaidaB\(0) & ( !\ula_component|mult~0_combout\ & ( (!\rom8_component|Mux1~0_combout\) # ((\UniControl_component|ula_fonteB[0]_783~combout\ & !\UniControl_component|ula_fonteB[1]$latch~combout\)) ) ) ) # 
-- ( !\breg8_component|SaidaB\(0) & ( !\ula_component|mult~0_combout\ & ( (!\UniControl_component|ula_fonteB[0]_783~combout\ & (((!\rom8_component|Mux1~0_combout\)))) # (\UniControl_component|ula_fonteB[0]_783~combout\ & 
-- ((!\UniControl_component|ula_fonteB[1]$latch~combout\ & (\UniControl_component|ula_fonteB[0]$latch~combout\)) # (\UniControl_component|ula_fonteB[1]$latch~combout\ & ((!\rom8_component|Mux1~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100010000111111110101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_ula_fonteB[0]_783~combout\,
	datab => \UniControl_component|ALT_INV_ula_fonteB[0]$latch~combout\,
	datac => \UniControl_component|ALT_INV_ula_fonteB[1]$latch~combout\,
	datad => \rom8_component|ALT_INV_Mux1~0_combout\,
	datae => \breg8_component|ALT_INV_SaidaB\(0),
	dataf => \ula_component|ALT_INV_mult~0_combout\,
	combout => \ula_component|cont~25_combout\);

-- Location: LABCELL_X35_Y2_N45
\ula_component|cont~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~27_combout\ = ( \muxB_component|Mux5~0_combout\ & ( \ula_component|cont~25_combout\ & ( (\ula_component|mult\(10) & (\ula_component|mult\(9) & !\muxB_component|Mux6~0_combout\)) ) ) ) # ( !\muxB_component|Mux5~0_combout\ & ( 
-- \ula_component|cont~25_combout\ & ( ((\ula_component|mult\(9) & !\muxB_component|Mux6~0_combout\)) # (\ula_component|mult\(10)) ) ) ) # ( \muxB_component|Mux5~0_combout\ & ( !\ula_component|cont~25_combout\ & ( (\ula_component|mult\(10) & 
-- ((!\ula_component|mult\(9) & (!\muxB_component|Mux6~0_combout\ & !\ula_component|cont~26_combout\)) # (\ula_component|mult\(9) & ((!\muxB_component|Mux6~0_combout\) # (!\ula_component|cont~26_combout\))))) ) ) ) # ( !\muxB_component|Mux5~0_combout\ & ( 
-- !\ula_component|cont~25_combout\ & ( ((!\ula_component|mult\(9) & (!\muxB_component|Mux6~0_combout\ & !\ula_component|cont~26_combout\)) # (\ula_component|mult\(9) & ((!\muxB_component|Mux6~0_combout\) # (!\ula_component|cont~26_combout\)))) # 
-- (\ula_component|mult\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011101110101010100010001000001110101011101010001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_mult\(10),
	datab => \ula_component|ALT_INV_mult\(9),
	datac => \muxB_component|ALT_INV_Mux6~0_combout\,
	datad => \ula_component|ALT_INV_cont~26_combout\,
	datae => \muxB_component|ALT_INV_Mux5~0_combout\,
	dataf => \ula_component|ALT_INV_cont~25_combout\,
	combout => \ula_component|cont~27_combout\);

-- Location: FF_X36_Y2_N29
\ula_component|mult[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|aux_mult\(11),
	sload => VCC,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|mult\(11));

-- Location: LABCELL_X36_Y5_N45
\ula_component|aux_mult~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult~6_combout\ = ( !\ula_component|aux_dado\(0) & ( \muxA_component|saida[0]~0_combout\ & ( !\muxB_component|Mux4~0_combout\ $ (!\ula_component|cont~27_combout\ $ (!\ula_component|mult\(11))) ) ) ) # ( \ula_component|aux_dado\(0) & ( 
-- !\muxA_component|saida[0]~0_combout\ & ( \ula_component|aux_mult\(11) ) ) ) # ( !\ula_component|aux_dado\(0) & ( !\muxA_component|saida[0]~0_combout\ & ( \ula_component|aux_mult\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110011001011001100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux4~0_combout\,
	datab => \ula_component|ALT_INV_cont~27_combout\,
	datac => \ula_component|ALT_INV_aux_mult\(11),
	datad => \ula_component|ALT_INV_mult\(11),
	datae => \ula_component|ALT_INV_aux_dado\(0),
	dataf => \muxA_component|ALT_INV_saida[0]~0_combout\,
	combout => \ula_component|aux_mult~6_combout\);

-- Location: LABCELL_X35_Y4_N6
\ula_component|cont~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~53_combout\ = ( \muxA_component|saida[0]~0_combout\ & ( ((!\ula_component|aux_dado\(0) & \ula_component|cont~52_combout\)) # (\muxB_component|Mux0~0_combout\) ) ) # ( !\muxA_component|saida[0]~0_combout\ & ( (\ula_component|cont~q\ & 
-- !\ula_component|aux_dado\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000001010101111101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux0~0_combout\,
	datab => \ula_component|ALT_INV_cont~q\,
	datac => \ula_component|ALT_INV_aux_dado\(0),
	datad => \ula_component|ALT_INV_cont~52_combout\,
	dataf => \muxA_component|ALT_INV_saida[0]~0_combout\,
	combout => \ula_component|cont~53_combout\);

-- Location: LABCELL_X35_Y4_N54
\ula_component|cont~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~50_combout\ = ( \muxB_component|Mux0~0_combout\ ) # ( !\muxB_component|Mux0~0_combout\ & ( (!\ula_component|aux_mult\(14) & \muxB_component|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ula_component|ALT_INV_aux_mult\(14),
	datad => \muxB_component|ALT_INV_Mux1~0_combout\,
	dataf => \muxB_component|ALT_INV_Mux0~0_combout\,
	combout => \ula_component|cont~50_combout\);

-- Location: LABCELL_X35_Y4_N9
\ula_component|cont~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~16_combout\ = ( !\muxB_component|Mux1~0_combout\ & ( \ula_component|aux_mult\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ula_component|ALT_INV_aux_mult\(14),
	dataf => \muxB_component|ALT_INV_Mux1~0_combout\,
	combout => \ula_component|cont~16_combout\);

-- Location: LABCELL_X31_Y4_N12
\ula_component|cont~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~17_combout\ = ( !\ula_component|aux_mult\(9) & ( \muxB_component|Mux6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ula_component|ALT_INV_aux_mult\(9),
	dataf => \muxB_component|ALT_INV_Mux6~0_combout\,
	combout => \ula_component|cont~17_combout\);

-- Location: LABCELL_X31_Y4_N21
\ula_component|cont~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~18_combout\ = ( !\muxB_component|Mux6~0_combout\ & ( \ula_component|aux_mult\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_aux_mult\(9),
	dataf => \muxB_component|ALT_INV_Mux6~0_combout\,
	combout => \ula_component|cont~18_combout\);

-- Location: LABCELL_X36_Y4_N18
\ula_component|cont~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~19_combout\ = ( !\UniControl_component|ula_fonteB[1]$latch~combout\ & ( (!\ula_component|aux_mult\(13) & (\UniControl_component|ula_fonteB[0]_783~combout\ & (\breg8_component|SaidaB\(5) & 
-- !\UniControl_component|ula_fonteB[0]$latch~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_aux_mult\(13),
	datab => \UniControl_component|ALT_INV_ula_fonteB[0]_783~combout\,
	datac => \breg8_component|ALT_INV_SaidaB\(5),
	datad => \UniControl_component|ALT_INV_ula_fonteB[0]$latch~combout\,
	dataf => \UniControl_component|ALT_INV_ula_fonteB[1]$latch~combout\,
	combout => \ula_component|cont~19_combout\);

-- Location: LABCELL_X37_Y2_N51
\ula_component|cont~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~20_combout\ = ( \UniControl_component|ula_fonteB[0]_783~combout\ & ( (\ula_component|aux_mult\(13) & ((!\breg8_component|SaidaB\(5)) # ((\UniControl_component|ula_fonteB[0]$latch~combout\) # 
-- (\UniControl_component|ula_fonteB[1]$latch~combout\)))) ) ) # ( !\UniControl_component|ula_fonteB[0]_783~combout\ & ( \ula_component|aux_mult\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001011000011110000101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \breg8_component|ALT_INV_SaidaB\(5),
	datab => \UniControl_component|ALT_INV_ula_fonteB[1]$latch~combout\,
	datac => \ula_component|ALT_INV_aux_mult\(13),
	datad => \UniControl_component|ALT_INV_ula_fonteB[0]$latch~combout\,
	dataf => \UniControl_component|ALT_INV_ula_fonteB[0]_783~combout\,
	combout => \ula_component|cont~20_combout\);

-- Location: LABCELL_X33_Y4_N21
\ula_component|cont~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~21_combout\ = ( \muxB_component|Mux7~0_combout\ & ( !\ula_component|aux_mult\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \muxB_component|ALT_INV_Mux7~0_combout\,
	dataf => \ula_component|ALT_INV_aux_mult\(8),
	combout => \ula_component|cont~21_combout\);

-- Location: LABCELL_X35_Y4_N57
\ula_component|cont~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~22_combout\ = ( !\muxB_component|Mux7~0_combout\ & ( \ula_component|aux_mult\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ula_component|ALT_INV_aux_mult\(8),
	dataf => \muxB_component|ALT_INV_Mux7~0_combout\,
	combout => \ula_component|cont~22_combout\);

-- Location: LABCELL_X37_Y2_N18
\ula_component|cont~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~23_combout\ = ( !\ula_component|aux_mult\(10) & ( \muxB_component|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \muxB_component|ALT_INV_Mux5~0_combout\,
	dataf => \ula_component|ALT_INV_aux_mult\(10),
	combout => \ula_component|cont~23_combout\);

-- Location: LABCELL_X36_Y2_N36
\ula_component|cont~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~24_combout\ = ( \UniControl_component|ula_fonteB[0]$latch~combout\ & ( \ula_component|aux_mult\(10) ) ) # ( !\UniControl_component|ula_fonteB[0]$latch~combout\ & ( (\ula_component|aux_mult\(10) & 
-- (((!\UniControl_component|ula_fonteB[0]_783~combout\) # (!\breg8_component|SaidaB\(2))) # (\UniControl_component|ula_fonteB[1]$latch~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001101000011110000110100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_ula_fonteB[1]$latch~combout\,
	datab => \UniControl_component|ALT_INV_ula_fonteB[0]_783~combout\,
	datac => \ula_component|ALT_INV_aux_mult\(10),
	datad => \breg8_component|ALT_INV_SaidaB\(2),
	dataf => \UniControl_component|ALT_INV_ula_fonteB[0]$latch~combout\,
	combout => \ula_component|cont~24_combout\);

-- Location: LABCELL_X36_Y2_N18
\ula_component|cont~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~33_combout\ = ( \muxB_component|Mux5~0_combout\ & ( (!\ula_component|aux_mult\(10)) # ((\muxB_component|Mux6~0_combout\ & !\ula_component|aux_mult\(9))) ) ) # ( !\muxB_component|Mux5~0_combout\ & ( (!\ula_component|aux_mult\(10) & 
-- (\muxB_component|Mux6~0_combout\ & !\ula_component|aux_mult\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010101111101010101010111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_aux_mult\(10),
	datac => \muxB_component|ALT_INV_Mux6~0_combout\,
	datad => \ula_component|ALT_INV_aux_mult\(9),
	dataf => \muxB_component|ALT_INV_Mux5~0_combout\,
	combout => \ula_component|cont~33_combout\);

-- Location: FF_X36_Y2_N17
\ula_component|mult[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|aux_mult\(13),
	sload => VCC,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|mult\(13));

-- Location: LABCELL_X37_Y2_N12
\muxB_component|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxB_component|Mux5~1_combout\ = ( !\UniControl_component|ula_fonteB[1]$latch~combout\ & ( (\UniControl_component|ula_fonteB[0]_783~combout\ & !\UniControl_component|ula_fonteB[0]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_ula_fonteB[0]_783~combout\,
	datad => \UniControl_component|ALT_INV_ula_fonteB[0]$latch~combout\,
	dataf => \UniControl_component|ALT_INV_ula_fonteB[1]$latch~combout\,
	combout => \muxB_component|Mux5~1_combout\);

-- Location: LABCELL_X36_Y2_N6
\ula_component|cont~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~30_combout\ = ( \breg8_component|SaidaA\(0) & ( \UniControl_component|ula_fonteA~1_combout\ & ( (!\pc_component|saidaPC\(0) & (((\ula_component|cont~q\)))) # (\pc_component|saidaPC\(0) & (\breg8_component|SaidaB\(7) & 
-- ((\muxB_component|Mux5~1_combout\)))) ) ) ) # ( !\breg8_component|SaidaA\(0) & ( \UniControl_component|ula_fonteA~1_combout\ & ( (!\pc_component|saidaPC\(0) & (((\ula_component|cont~q\)))) # (\pc_component|saidaPC\(0) & (\breg8_component|SaidaB\(7) & 
-- ((\muxB_component|Mux5~1_combout\)))) ) ) ) # ( \breg8_component|SaidaA\(0) & ( !\UniControl_component|ula_fonteA~1_combout\ & ( (\breg8_component|SaidaB\(7) & \muxB_component|Mux5~1_combout\) ) ) ) # ( !\breg8_component|SaidaA\(0) & ( 
-- !\UniControl_component|ula_fonteA~1_combout\ & ( \ula_component|cont~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000101010100110000001101010011000000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \breg8_component|ALT_INV_SaidaB\(7),
	datab => \ula_component|ALT_INV_cont~q\,
	datac => \pc_component|ALT_INV_saidaPC\(0),
	datad => \muxB_component|ALT_INV_Mux5~1_combout\,
	datae => \breg8_component|ALT_INV_SaidaA\(0),
	dataf => \UniControl_component|ALT_INV_ula_fonteA~1_combout\,
	combout => \ula_component|cont~30_combout\);

-- Location: LABCELL_X36_Y2_N30
\ula_component|cont~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~31_combout\ = ( \ula_component|cont~28_combout\ & ( !\ula_component|cont~30_combout\ & ( ((!\muxA_component|saida[0]~0_combout\) # ((\ula_component|mult\(13) & !\muxB_component|Mux2~0_combout\))) # (\ula_component|mult\(14)) ) ) ) # ( 
-- !\ula_component|cont~28_combout\ & ( !\ula_component|cont~30_combout\ & ( (((!\muxB_component|Mux2~0_combout\) # (!\muxA_component|saida[0]~0_combout\)) # (\ula_component|mult\(13))) # (\ula_component|mult\(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111111111110111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_mult\(14),
	datab => \ula_component|ALT_INV_mult\(13),
	datac => \muxB_component|ALT_INV_Mux2~0_combout\,
	datad => \muxA_component|ALT_INV_saida[0]~0_combout\,
	datae => \ula_component|ALT_INV_cont~28_combout\,
	dataf => \ula_component|ALT_INV_cont~30_combout\,
	combout => \ula_component|cont~31_combout\);

-- Location: FF_X35_Y2_N20
\breg8_component|SaidaB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \breg8_component|reg~27_combout\,
	sload => VCC,
	ena => \UniControl_component|esc_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg8_component|SaidaB\(1));

-- Location: LABCELL_X36_Y2_N57
\UniControl_component|ula_fonteB[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|ula_fonteB[0]~2_combout\ = ( !\UniControl_component|ula_fonteB[0]$latch~combout\ & ( \UniControl_component|ula_fonteB[0]_783~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_ula_fonteB[0]_783~combout\,
	dataf => \UniControl_component|ALT_INV_ula_fonteB[0]$latch~combout\,
	combout => \UniControl_component|ula_fonteB[0]~2_combout\);

-- Location: LABCELL_X36_Y2_N39
\UniControl_component|ula_fonteB[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|ula_fonteB[1]~3_combout\ = ( \UniControl_component|ula_fonteB[0]_783~combout\ & ( !\UniControl_component|ula_fonteB[1]$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_ula_fonteB[1]$latch~combout\,
	dataf => \UniControl_component|ALT_INV_ula_fonteB[0]_783~combout\,
	combout => \UniControl_component|ula_fonteB[1]~3_combout\);

-- Location: LABCELL_X36_Y2_N48
\ula_component|cont~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~32_combout\ = ( !\ula_component|cont~24_combout\ & ( \UniControl_component|ula_fonteB[1]~3_combout\ & ( (!\ula_component|aux_mult\(9)) # ((\breg8_component|SaidaB\(1) & \UniControl_component|ula_fonteB[0]~2_combout\)) ) ) ) # ( 
-- !\ula_component|cont~24_combout\ & ( !\UniControl_component|ula_fonteB[1]~3_combout\ & ( (!\ula_component|aux_mult\(9)) # (!\rom8_component|Mux1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100000000000000000011001100110111010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \breg8_component|ALT_INV_SaidaB\(1),
	datab => \ula_component|ALT_INV_aux_mult\(9),
	datac => \rom8_component|ALT_INV_Mux1~0_combout\,
	datad => \UniControl_component|ALT_INV_ula_fonteB[0]~2_combout\,
	datae => \ula_component|ALT_INV_cont~24_combout\,
	dataf => \UniControl_component|ALT_INV_ula_fonteB[1]~3_combout\,
	combout => \ula_component|cont~32_combout\);

-- Location: LABCELL_X36_Y2_N12
\ula_component|cont~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~29_combout\ = ( \ula_component|cont~28_combout\ & ( \muxA_component|saida[0]~0_combout\ & ( (\muxB_component|Mux1~0_combout\ & (!\ula_component|mult\(14) $ (((!\ula_component|mult\(13)) # (\muxB_component|Mux2~0_combout\))))) ) ) ) # ( 
-- !\ula_component|cont~28_combout\ & ( \muxA_component|saida[0]~0_combout\ & ( (\muxB_component|Mux1~0_combout\ & (!\ula_component|mult\(14) $ (((\muxB_component|Mux2~0_combout\ & !\ula_component|mult\(13)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000001010001000001000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux1~0_combout\,
	datab => \ula_component|ALT_INV_mult\(14),
	datac => \muxB_component|ALT_INV_Mux2~0_combout\,
	datad => \ula_component|ALT_INV_mult\(13),
	datae => \ula_component|ALT_INV_cont~28_combout\,
	dataf => \muxA_component|ALT_INV_saida[0]~0_combout\,
	combout => \ula_component|cont~29_combout\);

-- Location: LABCELL_X36_Y2_N24
\ula_component|cont~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~34_combout\ = ( \ula_component|cont~32_combout\ & ( \ula_component|cont~29_combout\ & ( (!\muxB_component|Mux7~0_combout\ & (\ula_component|aux_mult\(8) & !\ula_component|cont~33_combout\)) ) ) ) # ( !\ula_component|cont~32_combout\ & 
-- ( \ula_component|cont~29_combout\ & ( !\ula_component|cont~33_combout\ ) ) ) # ( \ula_component|cont~32_combout\ & ( !\ula_component|cont~29_combout\ & ( (!\ula_component|cont~33_combout\ & ((!\muxB_component|Mux7~0_combout\ & 
-- ((\ula_component|cont~31_combout\) # (\ula_component|aux_mult\(8)))) # (\muxB_component|Mux7~0_combout\ & (\ula_component|aux_mult\(8) & \ula_component|cont~31_combout\)))) ) ) ) # ( !\ula_component|cont~32_combout\ & ( !\ula_component|cont~29_combout\ & 
-- ( !\ula_component|cont~33_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000001000001011000011110000111100000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux7~0_combout\,
	datab => \ula_component|ALT_INV_aux_mult\(8),
	datac => \ula_component|ALT_INV_cont~33_combout\,
	datad => \ula_component|ALT_INV_cont~31_combout\,
	datae => \ula_component|ALT_INV_cont~32_combout\,
	dataf => \ula_component|ALT_INV_cont~29_combout\,
	combout => \ula_component|cont~34_combout\);

-- Location: LABCELL_X36_Y2_N0
\ula_component|cont~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~35_combout\ = ( \ula_component|aux_mult\(12) & ( \ula_component|cont~34_combout\ & ( (\muxB_component|Mux4~0_combout\ & (\muxB_component|Mux3~0_combout\ & (!\ula_component|cont~20_combout\ & !\ula_component|aux_mult\(11)))) ) ) ) # ( 
-- !\ula_component|aux_mult\(12) & ( \ula_component|cont~34_combout\ & ( (!\ula_component|cont~20_combout\ & (((\muxB_component|Mux4~0_combout\ & !\ula_component|aux_mult\(11))) # (\muxB_component|Mux3~0_combout\))) ) ) ) # ( \ula_component|aux_mult\(12) & ( 
-- !\ula_component|cont~34_combout\ & ( (\muxB_component|Mux3~0_combout\ & (!\ula_component|cont~20_combout\ & ((!\ula_component|aux_mult\(11)) # (\muxB_component|Mux4~0_combout\)))) ) ) ) # ( !\ula_component|aux_mult\(12) & ( 
-- !\ula_component|cont~34_combout\ & ( (!\ula_component|cont~20_combout\ & (((!\ula_component|aux_mult\(11)) # (\muxB_component|Mux3~0_combout\)) # (\muxB_component|Mux4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001110000001100000001000001110000001100000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux4~0_combout\,
	datab => \muxB_component|ALT_INV_Mux3~0_combout\,
	datac => \ula_component|ALT_INV_cont~20_combout\,
	datad => \ula_component|ALT_INV_aux_mult\(11),
	datae => \ula_component|ALT_INV_aux_mult\(12),
	dataf => \ula_component|ALT_INV_cont~34_combout\,
	combout => \ula_component|cont~35_combout\);

-- Location: LABCELL_X37_Y4_N9
\ula_component|cont~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~36_combout\ = ( \ula_component|cont~19_combout\ & ( \ula_component|cont~35_combout\ & ( (!\ula_component|aux_mult\(8) & (\ula_component|aux_mult\(14) & (!\muxB_component|Mux1~0_combout\ & !\muxB_component|Mux7~0_combout\))) # 
-- (\ula_component|aux_mult\(8) & ((!\muxB_component|Mux7~0_combout\) # ((\ula_component|aux_mult\(14) & !\muxB_component|Mux1~0_combout\)))) ) ) ) # ( !\ula_component|cont~19_combout\ & ( \ula_component|cont~35_combout\ & ( (!\ula_component|aux_mult\(8) & 
-- (\ula_component|aux_mult\(14) & (!\muxB_component|Mux1~0_combout\ & !\muxB_component|Mux7~0_combout\))) # (\ula_component|aux_mult\(8) & ((!\muxB_component|Mux7~0_combout\) # ((\ula_component|aux_mult\(14) & !\muxB_component|Mux1~0_combout\)))) ) ) ) # ( 
-- \ula_component|cont~19_combout\ & ( !\ula_component|cont~35_combout\ & ( (!\ula_component|aux_mult\(8) & (\ula_component|aux_mult\(14) & (!\muxB_component|Mux1~0_combout\ & !\muxB_component|Mux7~0_combout\))) # (\ula_component|aux_mult\(8) & 
-- ((!\muxB_component|Mux7~0_combout\) # ((\ula_component|aux_mult\(14) & !\muxB_component|Mux1~0_combout\)))) ) ) ) # ( !\ula_component|cont~19_combout\ & ( !\ula_component|cont~35_combout\ & ( (!\ula_component|aux_mult\(8) & 
-- (!\muxB_component|Mux7~0_combout\ & ((!\muxB_component|Mux1~0_combout\) # (\ula_component|aux_mult\(14))))) # (\ula_component|aux_mult\(8) & (((!\muxB_component|Mux1~0_combout\) # (!\muxB_component|Mux7~0_combout\)) # (\ula_component|aux_mult\(14)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111100001101010011110000010001001111000001000100111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_aux_mult\(14),
	datab => \muxB_component|ALT_INV_Mux1~0_combout\,
	datac => \ula_component|ALT_INV_aux_mult\(8),
	datad => \muxB_component|ALT_INV_Mux7~0_combout\,
	datae => \ula_component|ALT_INV_cont~19_combout\,
	dataf => \ula_component|ALT_INV_cont~35_combout\,
	combout => \ula_component|cont~36_combout\);

-- Location: LABCELL_X37_Y4_N15
\ula_component|cont~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~37_combout\ = ( \ula_component|aux_mult\(9) & ( \ula_component|cont~36_combout\ & ( (\muxB_component|Mux5~0_combout\ & (!\ula_component|cont~15_combout\ & !\ula_component|aux_mult\(10))) ) ) ) # ( !\ula_component|aux_mult\(9) & ( 
-- \ula_component|cont~36_combout\ & ( (!\ula_component|cont~15_combout\ & ((!\muxB_component|Mux5~0_combout\ & (\muxB_component|Mux6~0_combout\ & !\ula_component|aux_mult\(10))) # (\muxB_component|Mux5~0_combout\ & ((!\ula_component|aux_mult\(10)) # 
-- (\muxB_component|Mux6~0_combout\))))) ) ) ) # ( \ula_component|aux_mult\(9) & ( !\ula_component|cont~36_combout\ & ( (!\ula_component|cont~15_combout\ & ((!\muxB_component|Mux5~0_combout\ & (\muxB_component|Mux6~0_combout\ & 
-- !\ula_component|aux_mult\(10))) # (\muxB_component|Mux5~0_combout\ & ((!\ula_component|aux_mult\(10)) # (\muxB_component|Mux6~0_combout\))))) ) ) ) # ( !\ula_component|aux_mult\(9) & ( !\ula_component|cont~36_combout\ & ( (!\ula_component|cont~15_combout\ 
-- & ((!\ula_component|aux_mult\(10)) # (\muxB_component|Mux5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010000011100000001000001110000000100000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux5~0_combout\,
	datab => \muxB_component|ALT_INV_Mux6~0_combout\,
	datac => \ula_component|ALT_INV_cont~15_combout\,
	datad => \ula_component|ALT_INV_aux_mult\(10),
	datae => \ula_component|ALT_INV_aux_mult\(9),
	dataf => \ula_component|ALT_INV_cont~36_combout\,
	combout => \ula_component|cont~37_combout\);

-- Location: LABCELL_X37_Y4_N51
\ula_component|cont~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~38_combout\ = ( \ula_component|cont~14_combout\ & ( \ula_component|cont~37_combout\ & ( (!\muxB_component|Mux2~0_combout\ & (((!\muxB_component|Mux3~0_combout\ & \ula_component|aux_mult\(12))) # (\ula_component|aux_mult\(13)))) # 
-- (\muxB_component|Mux2~0_combout\ & (!\muxB_component|Mux3~0_combout\ & (\ula_component|aux_mult\(12) & \ula_component|aux_mult\(13)))) ) ) ) # ( !\ula_component|cont~14_combout\ & ( \ula_component|cont~37_combout\ & ( (!\muxB_component|Mux2~0_combout\ & 
-- (((!\muxB_component|Mux3~0_combout\ & \ula_component|aux_mult\(12))) # (\ula_component|aux_mult\(13)))) # (\muxB_component|Mux2~0_combout\ & (!\muxB_component|Mux3~0_combout\ & (\ula_component|aux_mult\(12) & \ula_component|aux_mult\(13)))) ) ) ) # ( 
-- \ula_component|cont~14_combout\ & ( !\ula_component|cont~37_combout\ & ( (!\muxB_component|Mux2~0_combout\ & (((!\muxB_component|Mux3~0_combout\ & \ula_component|aux_mult\(12))) # (\ula_component|aux_mult\(13)))) # (\muxB_component|Mux2~0_combout\ & 
-- (!\muxB_component|Mux3~0_combout\ & (\ula_component|aux_mult\(12) & \ula_component|aux_mult\(13)))) ) ) ) # ( !\ula_component|cont~14_combout\ & ( !\ula_component|cont~37_combout\ & ( (!\muxB_component|Mux2~0_combout\ & ((!\muxB_component|Mux3~0_combout\) 
-- # ((\ula_component|aux_mult\(13)) # (\ula_component|aux_mult\(12))))) # (\muxB_component|Mux2~0_combout\ & (\ula_component|aux_mult\(13) & ((!\muxB_component|Mux3~0_combout\) # (\ula_component|aux_mult\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110011101111000010001100111000001000110011100000100011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux3~0_combout\,
	datab => \muxB_component|ALT_INV_Mux2~0_combout\,
	datac => \ula_component|ALT_INV_aux_mult\(12),
	datad => \ula_component|ALT_INV_aux_mult\(13),
	datae => \ula_component|ALT_INV_cont~14_combout\,
	dataf => \ula_component|ALT_INV_cont~37_combout\,
	combout => \ula_component|cont~38_combout\);

-- Location: LABCELL_X37_Y4_N42
\ula_component|cont~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~39_combout\ = ( \muxB_component|Mux1~0_combout\ & ( \ula_component|cont~38_combout\ & ( (!\ula_component|cont~24_combout\ & ((!\ula_component|aux_mult\(14) & ((!\ula_component|aux_mult\(9)) # (\muxB_component|Mux6~0_combout\))) # 
-- (\ula_component|aux_mult\(14) & (\muxB_component|Mux6~0_combout\ & !\ula_component|aux_mult\(9))))) ) ) ) # ( !\muxB_component|Mux1~0_combout\ & ( \ula_component|cont~38_combout\ & ( (\muxB_component|Mux6~0_combout\ & (!\ula_component|cont~24_combout\ & 
-- !\ula_component|aux_mult\(9))) ) ) ) # ( \muxB_component|Mux1~0_combout\ & ( !\ula_component|cont~38_combout\ & ( (!\ula_component|cont~24_combout\ & ((!\ula_component|aux_mult\(9)) # (\muxB_component|Mux6~0_combout\))) ) ) ) # ( 
-- !\muxB_component|Mux1~0_combout\ & ( !\ula_component|cont~38_combout\ & ( (!\ula_component|cont~24_combout\ & ((!\ula_component|aux_mult\(14) & ((!\ula_component|aux_mult\(9)) # (\muxB_component|Mux6~0_combout\))) # (\ula_component|aux_mult\(14) & 
-- (\muxB_component|Mux6~0_combout\ & !\ula_component|aux_mult\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000100000111100000011000000110000000000001011000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_aux_mult\(14),
	datab => \muxB_component|ALT_INV_Mux6~0_combout\,
	datac => \ula_component|ALT_INV_cont~24_combout\,
	datad => \ula_component|ALT_INV_aux_mult\(9),
	datae => \muxB_component|ALT_INV_Mux1~0_combout\,
	dataf => \ula_component|ALT_INV_cont~38_combout\,
	combout => \ula_component|cont~39_combout\);

-- Location: LABCELL_X37_Y4_N36
\ula_component|cont~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~40_combout\ = ( \ula_component|cont~23_combout\ & ( \ula_component|cont~39_combout\ & ( (!\muxB_component|Mux3~0_combout\ & (((\ula_component|aux_mult\(11) & !\muxB_component|Mux4~0_combout\)) # (\ula_component|aux_mult\(12)))) # 
-- (\muxB_component|Mux3~0_combout\ & (\ula_component|aux_mult\(11) & (!\muxB_component|Mux4~0_combout\ & \ula_component|aux_mult\(12)))) ) ) ) # ( !\ula_component|cont~23_combout\ & ( \ula_component|cont~39_combout\ & ( (!\muxB_component|Mux3~0_combout\ & 
-- (((\ula_component|aux_mult\(11) & !\muxB_component|Mux4~0_combout\)) # (\ula_component|aux_mult\(12)))) # (\muxB_component|Mux3~0_combout\ & (\ula_component|aux_mult\(11) & (!\muxB_component|Mux4~0_combout\ & \ula_component|aux_mult\(12)))) ) ) ) # ( 
-- \ula_component|cont~23_combout\ & ( !\ula_component|cont~39_combout\ & ( (!\muxB_component|Mux3~0_combout\ & (((\ula_component|aux_mult\(11) & !\muxB_component|Mux4~0_combout\)) # (\ula_component|aux_mult\(12)))) # (\muxB_component|Mux3~0_combout\ & 
-- (\ula_component|aux_mult\(11) & (!\muxB_component|Mux4~0_combout\ & \ula_component|aux_mult\(12)))) ) ) ) # ( !\ula_component|cont~23_combout\ & ( !\ula_component|cont~39_combout\ & ( (!\muxB_component|Mux3~0_combout\ & 
-- (((!\muxB_component|Mux4~0_combout\) # (\ula_component|aux_mult\(12))) # (\ula_component|aux_mult\(11)))) # (\muxB_component|Mux3~0_combout\ & (\ula_component|aux_mult\(12) & ((!\muxB_component|Mux4~0_combout\) # (\ula_component|aux_mult\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001011111011001000001011101000100000101110100010000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux3~0_combout\,
	datab => \ula_component|ALT_INV_aux_mult\(11),
	datac => \muxB_component|ALT_INV_Mux4~0_combout\,
	datad => \ula_component|ALT_INV_aux_mult\(12),
	datae => \ula_component|ALT_INV_cont~23_combout\,
	dataf => \ula_component|ALT_INV_cont~39_combout\,
	combout => \ula_component|cont~40_combout\);

-- Location: LABCELL_X37_Y4_N24
\ula_component|cont~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~41_combout\ = ( \ula_component|cont~40_combout\ & ( \muxB_component|Mux1~0_combout\ & ( (!\ula_component|cont~22_combout\ & ((!\ula_component|aux_mult\(14)) # ((!\ula_component|aux_mult\(13) & \muxB_component|Mux2~0_combout\)))) ) ) ) 
-- # ( !\ula_component|cont~40_combout\ & ( \muxB_component|Mux1~0_combout\ & ( (!\ula_component|cont~22_combout\ & ((!\ula_component|aux_mult\(14)) # ((!\ula_component|aux_mult\(13)) # (\muxB_component|Mux2~0_combout\)))) ) ) ) # ( 
-- \ula_component|cont~40_combout\ & ( !\muxB_component|Mux1~0_combout\ & ( (!\ula_component|cont~22_combout\ & (!\ula_component|aux_mult\(14) & (!\ula_component|aux_mult\(13) & \muxB_component|Mux2~0_combout\))) ) ) ) # ( !\ula_component|cont~40_combout\ & 
-- ( !\muxB_component|Mux1~0_combout\ & ( (!\ula_component|cont~22_combout\ & (!\ula_component|aux_mult\(14) & ((!\ula_component|aux_mult\(13)) # (\muxB_component|Mux2~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000000000001000000010101000101010101000100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_cont~22_combout\,
	datab => \ula_component|ALT_INV_aux_mult\(14),
	datac => \ula_component|ALT_INV_aux_mult\(13),
	datad => \muxB_component|ALT_INV_Mux2~0_combout\,
	datae => \ula_component|ALT_INV_cont~40_combout\,
	dataf => \muxB_component|ALT_INV_Mux1~0_combout\,
	combout => \ula_component|cont~41_combout\);

-- Location: LABCELL_X37_Y4_N18
\ula_component|cont~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~42_combout\ = ( \ula_component|cont~21_combout\ & ( \ula_component|cont~41_combout\ & ( (!\muxB_component|Mux5~0_combout\ & (((!\muxB_component|Mux6~0_combout\ & \ula_component|aux_mult\(9))) # (\ula_component|aux_mult\(10)))) # 
-- (\muxB_component|Mux5~0_combout\ & (!\muxB_component|Mux6~0_combout\ & (\ula_component|aux_mult\(10) & \ula_component|aux_mult\(9)))) ) ) ) # ( !\ula_component|cont~21_combout\ & ( \ula_component|cont~41_combout\ & ( (!\muxB_component|Mux5~0_combout\ & 
-- (((!\muxB_component|Mux6~0_combout\ & \ula_component|aux_mult\(9))) # (\ula_component|aux_mult\(10)))) # (\muxB_component|Mux5~0_combout\ & (!\muxB_component|Mux6~0_combout\ & (\ula_component|aux_mult\(10) & \ula_component|aux_mult\(9)))) ) ) ) # ( 
-- \ula_component|cont~21_combout\ & ( !\ula_component|cont~41_combout\ & ( (!\muxB_component|Mux5~0_combout\ & (((!\muxB_component|Mux6~0_combout\ & \ula_component|aux_mult\(9))) # (\ula_component|aux_mult\(10)))) # (\muxB_component|Mux5~0_combout\ & 
-- (!\muxB_component|Mux6~0_combout\ & (\ula_component|aux_mult\(10) & \ula_component|aux_mult\(9)))) ) ) ) # ( !\ula_component|cont~21_combout\ & ( !\ula_component|cont~41_combout\ & ( (!\muxB_component|Mux5~0_combout\ & ((!\muxB_component|Mux6~0_combout\) 
-- # ((\ula_component|aux_mult\(9)) # (\ula_component|aux_mult\(10))))) # (\muxB_component|Mux5~0_combout\ & (\ula_component|aux_mult\(10) & ((!\muxB_component|Mux6~0_combout\) # (\ula_component|aux_mult\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111010101111000010101000111000001010100011100000101010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux5~0_combout\,
	datab => \muxB_component|ALT_INV_Mux6~0_combout\,
	datac => \ula_component|ALT_INV_aux_mult\(10),
	datad => \ula_component|ALT_INV_aux_mult\(9),
	datae => \ula_component|ALT_INV_cont~21_combout\,
	dataf => \ula_component|ALT_INV_cont~41_combout\,
	combout => \ula_component|cont~42_combout\);

-- Location: LABCELL_X37_Y4_N30
\ula_component|cont~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~43_combout\ = ( !\ula_component|cont~20_combout\ & ( \ula_component|cont~42_combout\ & ( (!\muxB_component|Mux3~0_combout\ & (\muxB_component|Mux4~0_combout\ & (!\ula_component|aux_mult\(11) & !\ula_component|aux_mult\(12)))) # 
-- (\muxB_component|Mux3~0_combout\ & ((!\ula_component|aux_mult\(12)) # ((\muxB_component|Mux4~0_combout\ & !\ula_component|aux_mult\(11))))) ) ) ) # ( !\ula_component|cont~20_combout\ & ( !\ula_component|cont~42_combout\ & ( 
-- (!\muxB_component|Mux3~0_combout\ & (!\ula_component|aux_mult\(12) & ((!\ula_component|aux_mult\(11)) # (\muxB_component|Mux4~0_combout\)))) # (\muxB_component|Mux3~0_combout\ & (((!\ula_component|aux_mult\(11)) # (!\ula_component|aux_mult\(12))) # 
-- (\muxB_component|Mux4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111100001101000000000000000001001111000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux4~0_combout\,
	datab => \ula_component|ALT_INV_aux_mult\(11),
	datac => \muxB_component|ALT_INV_Mux3~0_combout\,
	datad => \ula_component|ALT_INV_aux_mult\(12),
	datae => \ula_component|ALT_INV_cont~20_combout\,
	dataf => \ula_component|ALT_INV_cont~42_combout\,
	combout => \ula_component|cont~43_combout\);

-- Location: LABCELL_X37_Y4_N6
\ula_component|cont~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~44_combout\ = ( \ula_component|cont~19_combout\ & ( \ula_component|cont~43_combout\ & ( (!\muxB_component|Mux7~0_combout\ & (((\ula_component|aux_mult\(14) & !\muxB_component|Mux1~0_combout\)) # (\ula_component|aux_mult\(8)))) # 
-- (\muxB_component|Mux7~0_combout\ & (\ula_component|aux_mult\(14) & (!\muxB_component|Mux1~0_combout\ & \ula_component|aux_mult\(8)))) ) ) ) # ( !\ula_component|cont~19_combout\ & ( \ula_component|cont~43_combout\ & ( (!\muxB_component|Mux7~0_combout\ & 
-- (((\ula_component|aux_mult\(14) & !\muxB_component|Mux1~0_combout\)) # (\ula_component|aux_mult\(8)))) # (\muxB_component|Mux7~0_combout\ & (\ula_component|aux_mult\(14) & (!\muxB_component|Mux1~0_combout\ & \ula_component|aux_mult\(8)))) ) ) ) # ( 
-- \ula_component|cont~19_combout\ & ( !\ula_component|cont~43_combout\ & ( (!\muxB_component|Mux7~0_combout\ & (((\ula_component|aux_mult\(14) & !\muxB_component|Mux1~0_combout\)) # (\ula_component|aux_mult\(8)))) # (\muxB_component|Mux7~0_combout\ & 
-- (\ula_component|aux_mult\(14) & (!\muxB_component|Mux1~0_combout\ & \ula_component|aux_mult\(8)))) ) ) ) # ( !\ula_component|cont~19_combout\ & ( !\ula_component|cont~43_combout\ & ( (!\muxB_component|Mux7~0_combout\ & (((!\muxB_component|Mux1~0_combout\) 
-- # (\ula_component|aux_mult\(8))) # (\ula_component|aux_mult\(14)))) # (\muxB_component|Mux7~0_combout\ & (\ula_component|aux_mult\(8) & ((!\muxB_component|Mux1~0_combout\) # (\ula_component|aux_mult\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011111101010000001111010001000000111101000100000011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_aux_mult\(14),
	datab => \muxB_component|ALT_INV_Mux1~0_combout\,
	datac => \muxB_component|ALT_INV_Mux7~0_combout\,
	datad => \ula_component|ALT_INV_aux_mult\(8),
	datae => \ula_component|ALT_INV_cont~19_combout\,
	dataf => \ula_component|ALT_INV_cont~43_combout\,
	combout => \ula_component|cont~44_combout\);

-- Location: LABCELL_X37_Y4_N12
\ula_component|cont~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~45_combout\ = ( \ula_component|aux_mult\(9) & ( \ula_component|cont~44_combout\ & ( (\muxB_component|Mux5~0_combout\ & (!\ula_component|aux_mult\(10) & !\ula_component|cont~15_combout\)) ) ) ) # ( !\ula_component|aux_mult\(9) & ( 
-- \ula_component|cont~44_combout\ & ( (!\ula_component|cont~15_combout\ & ((!\muxB_component|Mux5~0_combout\ & (\muxB_component|Mux6~0_combout\ & !\ula_component|aux_mult\(10))) # (\muxB_component|Mux5~0_combout\ & ((!\ula_component|aux_mult\(10)) # 
-- (\muxB_component|Mux6~0_combout\))))) ) ) ) # ( \ula_component|aux_mult\(9) & ( !\ula_component|cont~44_combout\ & ( (!\ula_component|cont~15_combout\ & ((!\muxB_component|Mux5~0_combout\ & (\muxB_component|Mux6~0_combout\ & 
-- !\ula_component|aux_mult\(10))) # (\muxB_component|Mux5~0_combout\ & ((!\ula_component|aux_mult\(10)) # (\muxB_component|Mux6~0_combout\))))) ) ) ) # ( !\ula_component|aux_mult\(9) & ( !\ula_component|cont~44_combout\ & ( (!\ula_component|cont~15_combout\ 
-- & ((!\ula_component|aux_mult\(10)) # (\muxB_component|Mux5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000000011100010000000001110001000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux5~0_combout\,
	datab => \muxB_component|ALT_INV_Mux6~0_combout\,
	datac => \ula_component|ALT_INV_aux_mult\(10),
	datad => \ula_component|ALT_INV_cont~15_combout\,
	datae => \ula_component|ALT_INV_aux_mult\(9),
	dataf => \ula_component|ALT_INV_cont~44_combout\,
	combout => \ula_component|cont~45_combout\);

-- Location: LABCELL_X37_Y4_N48
\ula_component|cont~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~46_combout\ = ( \ula_component|cont~14_combout\ & ( \ula_component|cont~45_combout\ & ( (!\muxB_component|Mux2~0_combout\ & (((!\muxB_component|Mux3~0_combout\ & \ula_component|aux_mult\(12))) # (\ula_component|aux_mult\(13)))) # 
-- (\muxB_component|Mux2~0_combout\ & (!\muxB_component|Mux3~0_combout\ & (\ula_component|aux_mult\(13) & \ula_component|aux_mult\(12)))) ) ) ) # ( !\ula_component|cont~14_combout\ & ( \ula_component|cont~45_combout\ & ( (!\muxB_component|Mux2~0_combout\ & 
-- (((!\muxB_component|Mux3~0_combout\ & \ula_component|aux_mult\(12))) # (\ula_component|aux_mult\(13)))) # (\muxB_component|Mux2~0_combout\ & (!\muxB_component|Mux3~0_combout\ & (\ula_component|aux_mult\(13) & \ula_component|aux_mult\(12)))) ) ) ) # ( 
-- \ula_component|cont~14_combout\ & ( !\ula_component|cont~45_combout\ & ( (!\muxB_component|Mux2~0_combout\ & (((!\muxB_component|Mux3~0_combout\ & \ula_component|aux_mult\(12))) # (\ula_component|aux_mult\(13)))) # (\muxB_component|Mux2~0_combout\ & 
-- (!\muxB_component|Mux3~0_combout\ & (\ula_component|aux_mult\(13) & \ula_component|aux_mult\(12)))) ) ) ) # ( !\ula_component|cont~14_combout\ & ( !\ula_component|cont~45_combout\ & ( (!\muxB_component|Mux2~0_combout\ & ((!\muxB_component|Mux3~0_combout\) 
-- # ((\ula_component|aux_mult\(12)) # (\ula_component|aux_mult\(13))))) # (\muxB_component|Mux2~0_combout\ & (\ula_component|aux_mult\(13) & ((!\muxB_component|Mux3~0_combout\) # (\ula_component|aux_mult\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111011001111000011001000111000001100100011100000110010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux3~0_combout\,
	datab => \muxB_component|ALT_INV_Mux2~0_combout\,
	datac => \ula_component|ALT_INV_aux_mult\(13),
	datad => \ula_component|ALT_INV_aux_mult\(12),
	datae => \ula_component|ALT_INV_cont~14_combout\,
	dataf => \ula_component|ALT_INV_cont~45_combout\,
	combout => \ula_component|cont~46_combout\);

-- Location: LABCELL_X37_Y4_N54
\ula_component|cont~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~47_combout\ = ( !\ula_component|cont~18_combout\ & ( \ula_component|cont~46_combout\ & ( (!\muxB_component|Mux7~0_combout\ & (\muxB_component|Mux1~0_combout\ & (!\ula_component|aux_mult\(14) & !\ula_component|aux_mult\(8)))) # 
-- (\muxB_component|Mux7~0_combout\ & ((!\ula_component|aux_mult\(8)) # ((\muxB_component|Mux1~0_combout\ & !\ula_component|aux_mult\(14))))) ) ) ) # ( !\ula_component|cont~18_combout\ & ( !\ula_component|cont~46_combout\ & ( 
-- (!\muxB_component|Mux7~0_combout\ & (!\ula_component|aux_mult\(8) & ((!\ula_component|aux_mult\(14)) # (\muxB_component|Mux1~0_combout\)))) # (\muxB_component|Mux7~0_combout\ & (((!\ula_component|aux_mult\(14)) # (!\ula_component|aux_mult\(8))) # 
-- (\muxB_component|Mux1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011101010001000000000000000001110101000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux7~0_combout\,
	datab => \muxB_component|ALT_INV_Mux1~0_combout\,
	datac => \ula_component|ALT_INV_aux_mult\(14),
	datad => \ula_component|ALT_INV_aux_mult\(8),
	datae => \ula_component|ALT_INV_cont~18_combout\,
	dataf => \ula_component|ALT_INV_cont~46_combout\,
	combout => \ula_component|cont~47_combout\);

-- Location: LABCELL_X36_Y4_N6
\ula_component|cont~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~48_combout\ = ( \ula_component|cont~47_combout\ & ( \muxB_component|Mux4~0_combout\ & ( (!\muxB_component|Mux5~0_combout\ & (\ula_component|aux_mult\(11) & \ula_component|aux_mult\(10))) ) ) ) # ( !\ula_component|cont~47_combout\ & ( 
-- \muxB_component|Mux4~0_combout\ & ( (\ula_component|aux_mult\(11) & ((!\muxB_component|Mux5~0_combout\ & ((!\ula_component|cont~17_combout\) # (\ula_component|aux_mult\(10)))) # (\muxB_component|Mux5~0_combout\ & (!\ula_component|cont~17_combout\ & 
-- \ula_component|aux_mult\(10))))) ) ) ) # ( \ula_component|cont~47_combout\ & ( !\muxB_component|Mux4~0_combout\ & ( ((!\muxB_component|Mux5~0_combout\ & \ula_component|aux_mult\(10))) # (\ula_component|aux_mult\(11)) ) ) ) # ( 
-- !\ula_component|cont~47_combout\ & ( !\muxB_component|Mux4~0_combout\ & ( ((!\muxB_component|Mux5~0_combout\ & ((!\ula_component|cont~17_combout\) # (\ula_component|aux_mult\(10)))) # (\muxB_component|Mux5~0_combout\ & (!\ula_component|cont~17_combout\ & 
-- \ula_component|aux_mult\(10)))) # (\ula_component|aux_mult\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001111111011001100111011101100100000001100100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux5~0_combout\,
	datab => \ula_component|ALT_INV_aux_mult\(11),
	datac => \ula_component|ALT_INV_cont~17_combout\,
	datad => \ula_component|ALT_INV_aux_mult\(10),
	datae => \ula_component|ALT_INV_cont~47_combout\,
	dataf => \muxB_component|ALT_INV_Mux4~0_combout\,
	combout => \ula_component|cont~48_combout\);

-- Location: LABCELL_X36_Y4_N24
\ula_component|cont~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~49_combout\ = ( \ula_component|aux_mult\(12) & ( \ula_component|cont~48_combout\ & ( (!\ula_component|aux_mult\(13) & (!\ula_component|cont~16_combout\ & \muxB_component|Mux2~0_combout\)) ) ) ) # ( !\ula_component|aux_mult\(12) & ( 
-- \ula_component|cont~48_combout\ & ( (!\ula_component|cont~16_combout\ & ((!\ula_component|aux_mult\(13) & ((\muxB_component|Mux3~0_combout\) # (\muxB_component|Mux2~0_combout\))) # (\ula_component|aux_mult\(13) & (\muxB_component|Mux2~0_combout\ & 
-- \muxB_component|Mux3~0_combout\)))) ) ) ) # ( \ula_component|aux_mult\(12) & ( !\ula_component|cont~48_combout\ & ( (!\ula_component|cont~16_combout\ & ((!\ula_component|aux_mult\(13) & ((\muxB_component|Mux3~0_combout\) # 
-- (\muxB_component|Mux2~0_combout\))) # (\ula_component|aux_mult\(13) & (\muxB_component|Mux2~0_combout\ & \muxB_component|Mux3~0_combout\)))) ) ) ) # ( !\ula_component|aux_mult\(12) & ( !\ula_component|cont~48_combout\ & ( (!\ula_component|cont~16_combout\ 
-- & ((!\ula_component|aux_mult\(13)) # (\muxB_component|Mux2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100000010001000110000001000100011000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_aux_mult\(13),
	datab => \ula_component|ALT_INV_cont~16_combout\,
	datac => \muxB_component|ALT_INV_Mux2~0_combout\,
	datad => \muxB_component|ALT_INV_Mux3~0_combout\,
	datae => \ula_component|ALT_INV_aux_mult\(12),
	dataf => \ula_component|ALT_INV_cont~48_combout\,
	combout => \ula_component|cont~49_combout\);

-- Location: LABCELL_X36_Y4_N57
\ula_component|cont~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~66_combout\ = ( \ula_component|cont~49_combout\ & ( \ula_component|aux_dado\(0) ) ) # ( !\ula_component|cont~49_combout\ & ( (\ula_component|cont~50_combout\ & \ula_component|aux_dado\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ula_component|ALT_INV_cont~50_combout\,
	datad => \ula_component|ALT_INV_aux_dado\(0),
	dataf => \ula_component|ALT_INV_cont~49_combout\,
	combout => \ula_component|cont~66_combout\);

-- Location: LABCELL_X36_Y4_N42
\ula_component|cont~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~69_combout\ = ( \muxB_component|Mux7~0_combout\ & ( \ula_component|cont~66_combout\ & ( (\ula_component|aux_mult\(9) & !\muxB_component|Mux6~0_combout\) ) ) ) # ( !\muxB_component|Mux7~0_combout\ & ( \ula_component|cont~66_combout\ & ( 
-- (!\ula_component|aux_mult\(8) & (\ula_component|aux_mult\(9) & !\muxB_component|Mux6~0_combout\)) # (\ula_component|aux_mult\(8) & ((!\muxB_component|Mux6~0_combout\) # (\ula_component|aux_mult\(9)))) ) ) ) # ( \muxB_component|Mux7~0_combout\ & ( 
-- !\ula_component|cont~66_combout\ & ( (!\ula_component|aux_mult\(9) & (\ula_component|aux_mult\(8) & (!\ula_component|cont~53_combout\ & !\muxB_component|Mux6~0_combout\))) # (\ula_component|aux_mult\(9) & ((!\muxB_component|Mux6~0_combout\) # 
-- ((\ula_component|aux_mult\(8) & !\ula_component|cont~53_combout\)))) ) ) ) # ( !\muxB_component|Mux7~0_combout\ & ( !\ula_component|cont~66_combout\ & ( (!\ula_component|aux_mult\(9) & (!\muxB_component|Mux6~0_combout\ & 
-- ((!\ula_component|cont~53_combout\) # (\ula_component|aux_mult\(8))))) # (\ula_component|aux_mult\(9) & (((!\ula_component|cont~53_combout\) # (!\muxB_component|Mux6~0_combout\)) # (\ula_component|aux_mult\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111100001101010011110000010001011111000001010000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_aux_mult\(8),
	datab => \ula_component|ALT_INV_cont~53_combout\,
	datac => \ula_component|ALT_INV_aux_mult\(9),
	datad => \muxB_component|ALT_INV_Mux6~0_combout\,
	datae => \muxB_component|ALT_INV_Mux7~0_combout\,
	dataf => \ula_component|ALT_INV_cont~66_combout\,
	combout => \ula_component|cont~69_combout\);

-- Location: LABCELL_X36_Y5_N48
\ula_component|aux_mult~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult~7_combout\ = ( \ula_component|aux_mult\(10) & ( \ula_component|cont~69_combout\ & ( ((\ula_component|mult~3_combout\ & \ula_component|aux_mult[10]~0_combout\)) # (\ula_component|aux_mult~6_combout\) ) ) ) # ( 
-- !\ula_component|aux_mult\(10) & ( \ula_component|cont~69_combout\ & ( ((\ula_component|aux_mult[10]~0_combout\ & (!\ula_component|mult~3_combout\ $ (!\muxB_component|Mux5~0_combout\)))) # (\ula_component|aux_mult~6_combout\) ) ) ) # ( 
-- \ula_component|aux_mult\(10) & ( !\ula_component|cont~69_combout\ & ( ((\ula_component|aux_mult[10]~0_combout\ & (!\ula_component|mult~3_combout\ $ (!\muxB_component|Mux5~0_combout\)))) # (\ula_component|aux_mult~6_combout\) ) ) ) # ( 
-- !\ula_component|aux_mult\(10) & ( !\ula_component|cont~69_combout\ & ( ((!\ula_component|mult~3_combout\ & \ula_component|aux_mult[10]~0_combout\)) # (\ula_component|aux_mult~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110111011001100110111101100110011011110110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_mult~3_combout\,
	datab => \ula_component|ALT_INV_aux_mult~6_combout\,
	datac => \muxB_component|ALT_INV_Mux5~0_combout\,
	datad => \ula_component|ALT_INV_aux_mult[10]~0_combout\,
	datae => \ula_component|ALT_INV_aux_mult\(10),
	dataf => \ula_component|ALT_INV_cont~69_combout\,
	combout => \ula_component|aux_mult~7_combout\);

-- Location: FF_X36_Y5_N50
\ula_component|aux_mult[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_mult~7_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_mult\(10));

-- Location: LABCELL_X36_Y5_N0
\ula_component|mult~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|mult~4_combout\ = !\muxB_component|Mux5~0_combout\ $ (!\ula_component|aux_mult\(10))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux5~0_combout\,
	datac => \ula_component|ALT_INV_aux_mult\(10),
	combout => \ula_component|mult~4_combout\);

-- Location: LABCELL_X37_Y2_N33
\ula_component|cont~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~74_combout\ = ( \muxB_component|Mux6~0_combout\ & ( (!\ula_component|cont~26_combout\ & (\ula_component|mult\(9) & !\ula_component|cont~25_combout\)) ) ) # ( !\muxB_component|Mux6~0_combout\ & ( ((!\ula_component|cont~26_combout\ & 
-- !\ula_component|cont~25_combout\)) # (\ula_component|mult\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100001111110011110000111100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ula_component|ALT_INV_cont~26_combout\,
	datac => \ula_component|ALT_INV_mult\(9),
	datad => \ula_component|ALT_INV_cont~25_combout\,
	dataf => \muxB_component|ALT_INV_Mux6~0_combout\,
	combout => \ula_component|cont~74_combout\);

-- Location: LABCELL_X36_Y5_N12
\ula_component|aux_mult~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult~8_combout\ = ( \ula_component|aux_dado\(0) & ( \ula_component|aux_mult\(10) & ( !\muxA_component|saida[0]~0_combout\ ) ) ) # ( !\ula_component|aux_dado\(0) & ( \ula_component|aux_mult\(10) & ( (!\muxA_component|saida[0]~0_combout\) 
-- # (!\ula_component|mult\(10) $ (!\muxB_component|Mux5~0_combout\ $ (!\ula_component|cont~74_combout\))) ) ) ) # ( !\ula_component|aux_dado\(0) & ( !\ula_component|aux_mult\(10) & ( (\muxA_component|saida[0]~0_combout\ & (!\ula_component|mult\(10) $ 
-- (!\muxB_component|Mux5~0_combout\ $ (!\ula_component|cont~74_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100010010000000000000000011101101110111101100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_mult\(10),
	datab => \muxA_component|ALT_INV_saida[0]~0_combout\,
	datac => \muxB_component|ALT_INV_Mux5~0_combout\,
	datad => \ula_component|ALT_INV_cont~74_combout\,
	datae => \ula_component|ALT_INV_aux_dado\(0),
	dataf => \ula_component|ALT_INV_aux_mult\(10),
	combout => \ula_component|aux_mult~8_combout\);

-- Location: LABCELL_X35_Y4_N30
\ula_component|cont~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~54_combout\ = ( \ula_component|aux_mult\(8) & ( \ula_component|cont~49_combout\ & ( (!\muxB_component|Mux7~0_combout\) # ((!\ula_component|aux_dado\(0) & !\ula_component|cont~53_combout\)) ) ) ) # ( !\ula_component|aux_mult\(8) & ( 
-- \ula_component|cont~49_combout\ & ( (!\muxB_component|Mux7~0_combout\ & (!\ula_component|aux_dado\(0) & !\ula_component|cont~53_combout\)) ) ) ) # ( \ula_component|aux_mult\(8) & ( !\ula_component|cont~49_combout\ & ( (!\muxB_component|Mux7~0_combout\) # 
-- ((!\ula_component|cont~53_combout\ & ((!\ula_component|cont~50_combout\) # (!\ula_component|aux_dado\(0))))) ) ) ) # ( !\ula_component|aux_mult\(8) & ( !\ula_component|cont~49_combout\ & ( (!\muxB_component|Mux7~0_combout\ & 
-- (!\ula_component|cont~53_combout\ & ((!\ula_component|cont~50_combout\) # (!\ula_component|aux_dado\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000111111101010101010100000000000001111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux7~0_combout\,
	datab => \ula_component|ALT_INV_cont~50_combout\,
	datac => \ula_component|ALT_INV_aux_dado\(0),
	datad => \ula_component|ALT_INV_cont~53_combout\,
	datae => \ula_component|ALT_INV_aux_mult\(8),
	dataf => \ula_component|ALT_INV_cont~49_combout\,
	combout => \ula_component|cont~54_combout\);

-- Location: LABCELL_X35_Y4_N48
\ula_component|aux_mult~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult~9_combout\ = ( \ula_component|aux_mult\(9) & ( \ula_component|cont~54_combout\ & ( ((\ula_component|mult~4_combout\ & \ula_component|aux_mult[10]~0_combout\)) # (\ula_component|aux_mult~8_combout\) ) ) ) # ( 
-- !\ula_component|aux_mult\(9) & ( \ula_component|cont~54_combout\ & ( ((\ula_component|aux_mult[10]~0_combout\ & (!\muxB_component|Mux6~0_combout\ $ (!\ula_component|mult~4_combout\)))) # (\ula_component|aux_mult~8_combout\) ) ) ) # ( 
-- \ula_component|aux_mult\(9) & ( !\ula_component|cont~54_combout\ & ( ((\ula_component|aux_mult[10]~0_combout\ & (!\muxB_component|Mux6~0_combout\ $ (!\ula_component|mult~4_combout\)))) # (\ula_component|aux_mult~8_combout\) ) ) ) # ( 
-- !\ula_component|aux_mult\(9) & ( !\ula_component|cont~54_combout\ & ( ((!\ula_component|mult~4_combout\ & \ula_component|aux_mult[10]~0_combout\)) # (\ula_component|aux_mult~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011110110111100001111011011110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux6~0_combout\,
	datab => \ula_component|ALT_INV_mult~4_combout\,
	datac => \ula_component|ALT_INV_aux_mult~8_combout\,
	datad => \ula_component|ALT_INV_aux_mult[10]~0_combout\,
	datae => \ula_component|ALT_INV_aux_mult\(9),
	dataf => \ula_component|ALT_INV_cont~54_combout\,
	combout => \ula_component|aux_mult~9_combout\);

-- Location: FF_X35_Y4_N50
\ula_component|aux_mult[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_mult~9_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_mult\(9));

-- Location: LABCELL_X35_Y4_N42
\ula_component|cont~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~55_combout\ = ( \ula_component|aux_mult\(10) & ( \ula_component|cont~54_combout\ & ( (\muxB_component|Mux6~0_combout\ & (!\ula_component|cont~15_combout\ & (!\ula_component|aux_mult\(9) & \muxB_component|Mux5~0_combout\))) ) ) ) # ( 
-- !\ula_component|aux_mult\(10) & ( \ula_component|cont~54_combout\ & ( (!\ula_component|cont~15_combout\ & (((\muxB_component|Mux6~0_combout\ & !\ula_component|aux_mult\(9))) # (\muxB_component|Mux5~0_combout\))) ) ) ) # ( \ula_component|aux_mult\(10) & ( 
-- !\ula_component|cont~54_combout\ & ( (!\ula_component|cont~15_combout\ & (\muxB_component|Mux5~0_combout\ & ((!\ula_component|aux_mult\(9)) # (\muxB_component|Mux6~0_combout\)))) ) ) ) # ( !\ula_component|aux_mult\(10) & ( !\ula_component|cont~54_combout\ 
-- & ( (!\ula_component|cont~15_combout\ & (((!\ula_component|aux_mult\(9)) # (\muxB_component|Mux5~0_combout\)) # (\muxB_component|Mux6~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011001100000000001100010001000000110011000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux6~0_combout\,
	datab => \ula_component|ALT_INV_cont~15_combout\,
	datac => \ula_component|ALT_INV_aux_mult\(9),
	datad => \muxB_component|ALT_INV_Mux5~0_combout\,
	datae => \ula_component|ALT_INV_aux_mult\(10),
	dataf => \ula_component|ALT_INV_cont~54_combout\,
	combout => \ula_component|cont~55_combout\);

-- Location: LABCELL_X36_Y5_N18
\ula_component|mult~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|mult~2_combout\ = ( \ula_component|mult\(11) & ( !\muxB_component|Mux3~0_combout\ $ (!\ula_component|mult\(12) $ (((\muxB_component|Mux4~0_combout\ & !\ula_component|cont~27_combout\)))) ) ) # ( !\ula_component|mult\(11) & ( 
-- !\muxB_component|Mux3~0_combout\ $ (!\ula_component|mult\(12) $ (((!\ula_component|cont~27_combout\) # (\muxB_component|Mux4~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100011000111001110001100011100101100011100111000110001110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux4~0_combout\,
	datab => \muxB_component|ALT_INV_Mux3~0_combout\,
	datac => \ula_component|ALT_INV_cont~27_combout\,
	datad => \ula_component|ALT_INV_mult\(12),
	dataf => \ula_component|ALT_INV_mult\(11),
	combout => \ula_component|mult~2_combout\);

-- Location: LABCELL_X35_Y4_N12
\ula_component|aux_mult~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult~11_combout\ = ( !\ula_component|aux_dado\(0) & ( ((!\muxA_component|saida[0]~0_combout\ & (\ula_component|aux_mult\(12))) # (\muxA_component|saida[0]~0_combout\ & (((\ula_component|mult~2_combout\))))) ) ) # ( 
-- \ula_component|aux_dado\(0) & ( !\ula_component|aux_mult\(12) $ (((!\muxA_component|saida[0]~0_combout\) # (!\muxB_component|Mux3~0_combout\ $ (((\ula_component|cont~55_combout\) # (\ula_component|cont~14_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001111001100110110100100110011000011110011001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_cont~14_combout\,
	datab => \ula_component|ALT_INV_aux_mult\(12),
	datac => \muxB_component|ALT_INV_Mux3~0_combout\,
	datad => \muxA_component|ALT_INV_saida[0]~0_combout\,
	datae => \ula_component|ALT_INV_aux_dado\(0),
	dataf => \ula_component|ALT_INV_cont~55_combout\,
	datag => \ula_component|ALT_INV_mult~2_combout\,
	combout => \ula_component|aux_mult~11_combout\);

-- Location: FF_X35_Y4_N14
\ula_component|aux_mult[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_mult~11_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_mult\(11));

-- Location: LABCELL_X36_Y4_N12
\ula_component|cont~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~75_combout\ = ( !\ula_component|aux_dado\(0) & ( (!\muxA_component|saida[0]~0_combout\ & (\ula_component|cont~q\)) # (\muxA_component|saida[0]~0_combout\ & ((((\muxB_component|Mux0~0_combout\)) # (\ula_component|cont~52_combout\)))) ) 
-- ) # ( \ula_component|aux_dado\(0) & ( ((((\muxA_component|saida[0]~0_combout\ & \muxB_component|Mux0~0_combout\)) # (\ula_component|cont~50_combout\)) # (\ula_component|cont~49_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011101000111000011111111111101110111011101110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_cont~q\,
	datab => \muxA_component|ALT_INV_saida[0]~0_combout\,
	datac => \ula_component|ALT_INV_cont~49_combout\,
	datad => \ula_component|ALT_INV_cont~50_combout\,
	datae => \ula_component|ALT_INV_aux_dado\(0),
	dataf => \muxB_component|ALT_INV_Mux0~0_combout\,
	datag => \ula_component|ALT_INV_cont~52_combout\,
	combout => \ula_component|cont~75_combout\);

-- Location: LABCELL_X36_Y4_N0
\ula_component|cont~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~72_combout\ = ( \muxB_component|Mux7~0_combout\ & ( \ula_component|cont~75_combout\ & ( (!\ula_component|cont~24_combout\ & ((!\ula_component|aux_mult\(9)) # (\muxB_component|Mux6~0_combout\))) ) ) ) # ( 
-- !\muxB_component|Mux7~0_combout\ & ( \ula_component|cont~75_combout\ & ( (!\ula_component|cont~24_combout\ & ((!\muxB_component|Mux6~0_combout\ & (!\ula_component|aux_mult\(9) & !\ula_component|aux_mult\(8))) # (\muxB_component|Mux6~0_combout\ & 
-- ((!\ula_component|aux_mult\(9)) # (!\ula_component|aux_mult\(8)))))) ) ) ) # ( \muxB_component|Mux7~0_combout\ & ( !\ula_component|cont~75_combout\ & ( (!\ula_component|cont~24_combout\ & ((!\muxB_component|Mux6~0_combout\ & (!\ula_component|aux_mult\(9) 
-- & !\ula_component|aux_mult\(8))) # (\muxB_component|Mux6~0_combout\ & ((!\ula_component|aux_mult\(9)) # (!\ula_component|aux_mult\(8)))))) ) ) ) # ( !\muxB_component|Mux7~0_combout\ & ( !\ula_component|cont~75_combout\ & ( 
-- (!\ula_component|cont~24_combout\ & (\muxB_component|Mux6~0_combout\ & !\ula_component|aux_mult\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000101000100010000010100010001000001010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_cont~24_combout\,
	datab => \muxB_component|ALT_INV_Mux6~0_combout\,
	datac => \ula_component|ALT_INV_aux_mult\(9),
	datad => \ula_component|ALT_INV_aux_mult\(8),
	datae => \muxB_component|ALT_INV_Mux7~0_combout\,
	dataf => \ula_component|ALT_INV_cont~75_combout\,
	combout => \ula_component|cont~72_combout\);

-- Location: LABCELL_X37_Y4_N39
\ula_component|cont~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~73_combout\ = ( \ula_component|cont~23_combout\ & ( \ula_component|cont~72_combout\ & ( (!\muxB_component|Mux3~0_combout\ & (((\ula_component|aux_mult\(11) & !\muxB_component|Mux4~0_combout\)) # (\ula_component|aux_mult\(12)))) # 
-- (\muxB_component|Mux3~0_combout\ & (\ula_component|aux_mult\(11) & (\ula_component|aux_mult\(12) & !\muxB_component|Mux4~0_combout\))) ) ) ) # ( !\ula_component|cont~23_combout\ & ( \ula_component|cont~72_combout\ & ( (!\muxB_component|Mux3~0_combout\ & 
-- (((\ula_component|aux_mult\(11) & !\muxB_component|Mux4~0_combout\)) # (\ula_component|aux_mult\(12)))) # (\muxB_component|Mux3~0_combout\ & (\ula_component|aux_mult\(11) & (\ula_component|aux_mult\(12) & !\muxB_component|Mux4~0_combout\))) ) ) ) # ( 
-- \ula_component|cont~23_combout\ & ( !\ula_component|cont~72_combout\ & ( (!\muxB_component|Mux3~0_combout\ & (((\ula_component|aux_mult\(11) & !\muxB_component|Mux4~0_combout\)) # (\ula_component|aux_mult\(12)))) # (\muxB_component|Mux3~0_combout\ & 
-- (\ula_component|aux_mult\(11) & (\ula_component|aux_mult\(12) & !\muxB_component|Mux4~0_combout\))) ) ) ) # ( !\ula_component|cont~23_combout\ & ( !\ula_component|cont~72_combout\ & ( (!\muxB_component|Mux3~0_combout\ & 
-- (((!\muxB_component|Mux4~0_combout\) # (\ula_component|aux_mult\(12))) # (\ula_component|aux_mult\(11)))) # (\muxB_component|Mux3~0_combout\ & (\ula_component|aux_mult\(12) & ((!\muxB_component|Mux4~0_combout\) # (\ula_component|aux_mult\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100101011001010110000101000101011000010100010101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux3~0_combout\,
	datab => \ula_component|ALT_INV_aux_mult\(11),
	datac => \ula_component|ALT_INV_aux_mult\(12),
	datad => \muxB_component|ALT_INV_Mux4~0_combout\,
	datae => \ula_component|ALT_INV_cont~23_combout\,
	dataf => \ula_component|ALT_INV_cont~72_combout\,
	combout => \ula_component|cont~73_combout\);

-- Location: LABCELL_X37_Y4_N0
\ula_component|aux_mult~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult~3_combout\ = ( \ula_component|aux_mult\(13) & ( \ula_component|cont~73_combout\ & ( ((\ula_component|aux_mult[10]~0_combout\ & \ula_component|mult~1_combout\)) # (\ula_component|aux_mult~2_combout\) ) ) ) # ( 
-- !\ula_component|aux_mult\(13) & ( \ula_component|cont~73_combout\ & ( ((\ula_component|aux_mult[10]~0_combout\ & (!\ula_component|mult~1_combout\ $ (!\muxB_component|Mux2~0_combout\)))) # (\ula_component|aux_mult~2_combout\) ) ) ) # ( 
-- \ula_component|aux_mult\(13) & ( !\ula_component|cont~73_combout\ & ( ((\ula_component|aux_mult[10]~0_combout\ & (!\ula_component|mult~1_combout\ $ (!\muxB_component|Mux2~0_combout\)))) # (\ula_component|aux_mult~2_combout\) ) ) ) # ( 
-- !\ula_component|aux_mult\(13) & ( !\ula_component|cont~73_combout\ & ( ((\ula_component|aux_mult[10]~0_combout\ & !\ula_component|mult~1_combout\)) # (\ula_component|aux_mult~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011111111000101001111111100010100111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_aux_mult[10]~0_combout\,
	datab => \ula_component|ALT_INV_mult~1_combout\,
	datac => \muxB_component|ALT_INV_Mux2~0_combout\,
	datad => \ula_component|ALT_INV_aux_mult~2_combout\,
	datae => \ula_component|ALT_INV_aux_mult\(13),
	dataf => \ula_component|ALT_INV_cont~73_combout\,
	combout => \ula_component|aux_mult~3_combout\);

-- Location: FF_X37_Y4_N2
\ula_component|aux_mult[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_mult~3_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_mult\(13));

-- Location: LABCELL_X37_Y3_N6
\ula_component|aux_mult~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult~4_combout\ = ( \muxB_component|Mux2~0_combout\ & ( \muxA_component|saida[0]~0_combout\ & ( (!\ula_component|aux_dado\(0) & (!\ula_component|cont~28_combout\ $ (\ula_component|mult\(13)))) ) ) ) # ( !\muxB_component|Mux2~0_combout\ 
-- & ( \muxA_component|saida[0]~0_combout\ & ( (!\ula_component|aux_dado\(0) & (!\ula_component|cont~28_combout\ $ (!\ula_component|mult\(13)))) ) ) ) # ( \muxB_component|Mux2~0_combout\ & ( !\muxA_component|saida[0]~0_combout\ & ( 
-- \ula_component|aux_mult\(13) ) ) ) # ( !\muxB_component|Mux2~0_combout\ & ( !\muxA_component|saida[0]~0_combout\ & ( \ula_component|aux_mult\(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101100000011000001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_cont~28_combout\,
	datab => \ula_component|ALT_INV_mult\(13),
	datac => \ula_component|ALT_INV_aux_dado\(0),
	datad => \ula_component|ALT_INV_aux_mult\(13),
	datae => \muxB_component|ALT_INV_Mux2~0_combout\,
	dataf => \muxA_component|ALT_INV_saida[0]~0_combout\,
	combout => \ula_component|aux_mult~4_combout\);

-- Location: LABCELL_X37_Y3_N45
\ula_component|cont~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~68_combout\ = (\ula_component|aux_mult\(12) & !\muxB_component|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ula_component|ALT_INV_aux_mult\(12),
	datad => \muxB_component|ALT_INV_Mux3~0_combout\,
	combout => \ula_component|cont~68_combout\);

-- Location: LABCELL_X36_Y4_N48
\ula_component|cont~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~70_combout\ = ( \muxB_component|Mux4~0_combout\ & ( \ula_component|cont~69_combout\ & ( (!\ula_component|cont~68_combout\ & ((!\ula_component|aux_mult\(11)) # ((!\ula_component|aux_mult\(10) & \muxB_component|Mux5~0_combout\)))) ) ) ) 
-- # ( !\muxB_component|Mux4~0_combout\ & ( \ula_component|cont~69_combout\ & ( (!\ula_component|aux_mult\(10) & (!\ula_component|cont~68_combout\ & (\muxB_component|Mux5~0_combout\ & !\ula_component|aux_mult\(11)))) ) ) ) # ( \muxB_component|Mux4~0_combout\ 
-- & ( !\ula_component|cont~69_combout\ & ( (!\ula_component|cont~68_combout\ & ((!\ula_component|aux_mult\(10)) # ((!\ula_component|aux_mult\(11)) # (\muxB_component|Mux5~0_combout\)))) ) ) ) # ( !\muxB_component|Mux4~0_combout\ & ( 
-- !\ula_component|cont~69_combout\ & ( (!\ula_component|cont~68_combout\ & (!\ula_component|aux_mult\(11) & ((!\ula_component|aux_mult\(10)) # (\muxB_component|Mux5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000000000110011001000110000001000000000001100110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_aux_mult\(10),
	datab => \ula_component|ALT_INV_cont~68_combout\,
	datac => \muxB_component|ALT_INV_Mux5~0_combout\,
	datad => \ula_component|ALT_INV_aux_mult\(11),
	datae => \muxB_component|ALT_INV_Mux4~0_combout\,
	dataf => \ula_component|ALT_INV_cont~69_combout\,
	combout => \ula_component|cont~70_combout\);

-- Location: LABCELL_X37_Y3_N12
\ula_component|aux_mult~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult~5_combout\ = ( \ula_component|aux_mult~4_combout\ & ( \ula_component|cont~70_combout\ ) ) # ( !\ula_component|aux_mult~4_combout\ & ( \ula_component|cont~70_combout\ & ( (\ula_component|aux_mult[10]~0_combout\ & 
-- (!\muxB_component|Mux2~0_combout\ $ (\ula_component|aux_mult\(13)))) ) ) ) # ( \ula_component|aux_mult~4_combout\ & ( !\ula_component|cont~70_combout\ ) ) # ( !\ula_component|aux_mult~4_combout\ & ( !\ula_component|cont~70_combout\ & ( 
-- (\ula_component|aux_mult[10]~0_combout\ & (!\ula_component|cont~67_combout\ $ (!\muxB_component|Mux2~0_combout\ $ (\ula_component|aux_mult\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001111111111111111100110000000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_cont~67_combout\,
	datab => \ula_component|ALT_INV_aux_mult[10]~0_combout\,
	datac => \muxB_component|ALT_INV_Mux2~0_combout\,
	datad => \ula_component|ALT_INV_aux_mult\(13),
	datae => \ula_component|ALT_INV_aux_mult~4_combout\,
	dataf => \ula_component|ALT_INV_cont~70_combout\,
	combout => \ula_component|aux_mult~5_combout\);

-- Location: FF_X37_Y3_N14
\ula_component|aux_mult[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_mult~5_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_mult\(12));

-- Location: FF_X36_Y2_N35
\ula_component|mult[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|aux_mult\(12),
	sload => VCC,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|mult\(12));

-- Location: LABCELL_X36_Y2_N54
\ula_component|cont~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~28_combout\ = ( \ula_component|cont~27_combout\ & ( (!\ula_component|mult\(12) & (((\muxB_component|Mux4~0_combout\ & !\ula_component|mult\(11))) # (\muxB_component|Mux3~0_combout\))) # (\ula_component|mult\(12) & 
-- (\muxB_component|Mux4~0_combout\ & (!\ula_component|mult\(11) & \muxB_component|Mux3~0_combout\))) ) ) # ( !\ula_component|cont~27_combout\ & ( (!\ula_component|mult\(12) & (((!\ula_component|mult\(11)) # (\muxB_component|Mux3~0_combout\)) # 
-- (\muxB_component|Mux4~0_combout\))) # (\ula_component|mult\(12) & (\muxB_component|Mux3~0_combout\ & ((!\ula_component|mult\(11)) # (\muxB_component|Mux4~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001011111011101000101111101100100000101110100010000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_mult\(12),
	datab => \muxB_component|ALT_INV_Mux4~0_combout\,
	datac => \ula_component|ALT_INV_mult\(11),
	datad => \muxB_component|ALT_INV_Mux3~0_combout\,
	dataf => \ula_component|ALT_INV_cont~27_combout\,
	combout => \ula_component|cont~28_combout\);

-- Location: LABCELL_X37_Y3_N21
\ula_component|cont~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~51_combout\ = (!\ula_component|cont~28_combout\ & (\muxB_component|Mux2~0_combout\ & !\ula_component|mult\(13))) # (\ula_component|cont~28_combout\ & ((!\ula_component|mult\(13)) # (\muxB_component|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_cont~28_combout\,
	datab => \muxB_component|ALT_INV_Mux2~0_combout\,
	datac => \ula_component|ALT_INV_mult\(13),
	combout => \ula_component|cont~51_combout\);

-- Location: LABCELL_X37_Y3_N54
\ula_component|cont~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~52_combout\ = ( \ula_component|cont~51_combout\ & ( (!\ula_component|mult\(14)) # (\muxB_component|Mux1~0_combout\) ) ) # ( !\ula_component|cont~51_combout\ & ( (!\ula_component|mult\(14) & \muxB_component|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ula_component|ALT_INV_mult\(14),
	datad => \muxB_component|ALT_INV_Mux1~0_combout\,
	dataf => \ula_component|ALT_INV_cont~51_combout\,
	combout => \ula_component|cont~52_combout\);

-- Location: LABCELL_X36_Y4_N30
\ula_component|cont~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~71_combout\ = ( \ula_component|aux_mult\(14) & ( \ula_component|cont~70_combout\ & ( (!\muxB_component|Mux1~0_combout\) # ((\ula_component|aux_mult\(13) & !\muxB_component|Mux2~0_combout\)) ) ) ) # ( !\ula_component|aux_mult\(14) & ( 
-- \ula_component|cont~70_combout\ & ( (\ula_component|aux_mult\(13) & (!\muxB_component|Mux1~0_combout\ & !\muxB_component|Mux2~0_combout\)) ) ) ) # ( \ula_component|aux_mult\(14) & ( !\ula_component|cont~70_combout\ & ( (!\muxB_component|Mux1~0_combout\) # 
-- ((!\ula_component|aux_mult\(13) & (!\muxB_component|Mux2~0_combout\ & !\ula_component|cont~67_combout\)) # (\ula_component|aux_mult\(13) & ((!\muxB_component|Mux2~0_combout\) # (!\ula_component|cont~67_combout\)))) ) ) ) # ( !\ula_component|aux_mult\(14) 
-- & ( !\ula_component|cont~70_combout\ & ( (!\muxB_component|Mux1~0_combout\ & ((!\ula_component|aux_mult\(13) & (!\muxB_component|Mux2~0_combout\ & !\ula_component|cont~67_combout\)) # (\ula_component|aux_mult\(13) & ((!\muxB_component|Mux2~0_combout\) # 
-- (!\ula_component|cont~67_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010001000000111111011101110001000000010000001101110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_aux_mult\(13),
	datab => \muxB_component|ALT_INV_Mux1~0_combout\,
	datac => \muxB_component|ALT_INV_Mux2~0_combout\,
	datad => \ula_component|ALT_INV_cont~67_combout\,
	datae => \ula_component|ALT_INV_aux_mult\(14),
	dataf => \ula_component|ALT_INV_cont~70_combout\,
	combout => \ula_component|cont~71_combout\);

-- Location: LABCELL_X36_Y4_N54
\ula_component|aux_mult~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult~1_combout\ = ( \ula_component|cont~71_combout\ & ( (\muxA_component|saida[0]~0_combout\ & (!\muxB_component|Mux0~0_combout\ $ (((!\ula_component|cont~52_combout\) # (\ula_component|aux_dado\(0)))))) ) ) # ( 
-- !\ula_component|cont~71_combout\ & ( (\muxA_component|saida[0]~0_combout\ & (!\muxB_component|Mux0~0_combout\ $ (((!\ula_component|aux_dado\(0) & !\ula_component|cont~52_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001010000000101000101000000000101010000010000010101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxA_component|ALT_INV_saida[0]~0_combout\,
	datab => \ula_component|ALT_INV_aux_dado\(0),
	datac => \muxB_component|ALT_INV_Mux0~0_combout\,
	datad => \ula_component|ALT_INV_cont~52_combout\,
	dataf => \ula_component|ALT_INV_cont~71_combout\,
	combout => \ula_component|aux_mult~1_combout\);

-- Location: FF_X36_Y4_N56
\ula_component|aux_mult[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_mult~1_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_mult\(14));

-- Location: MLABCELL_X34_Y2_N18
\ula_component|cont~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~58_combout\ = ( \ula_component|Equal2~2_combout\ & ( (!\ula_component|resultado[1]~0_combout\ & (!\ula_component|aux_dado\(0) & ((!\ula_component|cont~31_combout\) # (\ula_component|cont~29_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000000010001000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_resultado[1]~0_combout\,
	datab => \ula_component|ALT_INV_aux_dado\(0),
	datac => \ula_component|ALT_INV_cont~29_combout\,
	datad => \ula_component|ALT_INV_cont~31_combout\,
	dataf => \ula_component|ALT_INV_Equal2~2_combout\,
	combout => \ula_component|cont~58_combout\);

-- Location: LABCELL_X37_Y2_N54
\ula_component|cont~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~61_combout\ = ( \UniControl_component|ULAop[2]~9_combout\ & ( (!\UniControl_component|ULAop[0]~11_combout\ & (\UniControl_component|ULAop[1]~10_combout\ & \UniControl_component|ULAop[3]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_ULAop[0]~11_combout\,
	datac => \UniControl_component|ALT_INV_ULAop[1]~10_combout\,
	datad => \UniControl_component|ALT_INV_ULAop[3]~8_combout\,
	dataf => \UniControl_component|ALT_INV_ULAop[2]~9_combout\,
	combout => \ula_component|cont~61_combout\);

-- Location: LABCELL_X37_Y2_N39
\ula_component|cont~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~62_combout\ = ( \ula_component|cont~13_combout\ & ( (\ula_component|cont~61_combout\ & ((!\muxB_component|Mux0~0_combout\) # (\muxA_component|saida[7]~7_combout\))) ) ) # ( !\ula_component|cont~13_combout\ & ( 
-- (!\muxB_component|Mux0~0_combout\ & (\muxA_component|saida[7]~7_combout\ & \ula_component|cont~61_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux0~0_combout\,
	datac => \muxA_component|ALT_INV_saida[7]~7_combout\,
	datad => \ula_component|ALT_INV_cont~61_combout\,
	dataf => \ula_component|ALT_INV_cont~13_combout\,
	combout => \ula_component|cont~62_combout\);

-- Location: LABCELL_X37_Y2_N27
\ula_component|cont~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~59_combout\ = ( \UniControl_component|ULAop[2]~9_combout\ & ( (\UniControl_component|ULAop[0]~11_combout\ & (\UniControl_component|ULAop[1]~10_combout\ & \UniControl_component|ULAop[3]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_ULAop[0]~11_combout\,
	datac => \UniControl_component|ALT_INV_ULAop[1]~10_combout\,
	datad => \UniControl_component|ALT_INV_ULAop[3]~8_combout\,
	dataf => \UniControl_component|ALT_INV_ULAop[2]~9_combout\,
	combout => \ula_component|cont~59_combout\);

-- Location: LABCELL_X37_Y2_N42
\ula_component|cont~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~60_combout\ = ( \ula_component|cont~12_combout\ & ( (\ula_component|cont~59_combout\ & ((\muxA_component|saida[7]~7_combout\) # (\muxB_component|Mux0~0_combout\))) ) ) # ( !\ula_component|cont~12_combout\ & ( 
-- (\ula_component|cont~59_combout\ & (\muxB_component|Mux0~0_combout\ & \muxA_component|saida[7]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_cont~59_combout\,
	datac => \muxB_component|ALT_INV_Mux0~0_combout\,
	datad => \muxA_component|ALT_INV_saida[7]~7_combout\,
	dataf => \ula_component|ALT_INV_cont~12_combout\,
	combout => \ula_component|cont~60_combout\);

-- Location: LABCELL_X37_Y2_N57
\ula_component|cont~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~63_combout\ = ( !\ula_component|cont~60_combout\ & ( (!\ula_component|cont~62_combout\ & ((!\ula_component|cont~q\) # (!\ula_component|resultado[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ula_component|ALT_INV_cont~q\,
	datac => \ula_component|ALT_INV_cont~62_combout\,
	datad => \ula_component|ALT_INV_resultado[1]~0_combout\,
	dataf => \ula_component|ALT_INV_cont~60_combout\,
	combout => \ula_component|cont~63_combout\);

-- Location: LABCELL_X36_Y4_N36
\ula_component|cont~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~64_combout\ = ( \ula_component|cont~63_combout\ & ( ((!\ula_component|cont~58_combout\ & ((!\ula_component|cont~q\) # (\ula_component|Equal2~2_combout\)))) # (\ula_component|resultado[1]~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111111001100111011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_cont~q\,
	datab => \ula_component|ALT_INV_resultado[1]~21_combout\,
	datac => \ula_component|ALT_INV_Equal2~2_combout\,
	datad => \ula_component|ALT_INV_cont~58_combout\,
	dataf => \ula_component|ALT_INV_cont~63_combout\,
	combout => \ula_component|cont~64_combout\);

-- Location: LABCELL_X35_Y4_N24
\ula_component|cont~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~56_combout\ = ( \ula_component|aux_mult\(13) & ( \ula_component|cont~55_combout\ & ( (!\muxB_component|Mux2~0_combout\) # ((\ula_component|aux_mult\(12) & !\muxB_component|Mux3~0_combout\)) ) ) ) # ( !\ula_component|aux_mult\(13) & ( 
-- \ula_component|cont~55_combout\ & ( (\ula_component|aux_mult\(12) & (!\muxB_component|Mux3~0_combout\ & !\muxB_component|Mux2~0_combout\)) ) ) ) # ( \ula_component|aux_mult\(13) & ( !\ula_component|cont~55_combout\ & ( (!\muxB_component|Mux2~0_combout\) # 
-- ((!\ula_component|aux_mult\(12) & (!\muxB_component|Mux3~0_combout\ & !\ula_component|cont~14_combout\)) # (\ula_component|aux_mult\(12) & ((!\muxB_component|Mux3~0_combout\) # (!\ula_component|cont~14_combout\)))) ) ) ) # ( !\ula_component|aux_mult\(13) 
-- & ( !\ula_component|cont~55_combout\ & ( (!\muxB_component|Mux2~0_combout\ & ((!\ula_component|aux_mult\(12) & (!\muxB_component|Mux3~0_combout\ & !\ula_component|cont~14_combout\)) # (\ula_component|aux_mult\(12) & ((!\muxB_component|Mux3~0_combout\) # 
-- (!\ula_component|cont~14_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000001000000111111011111010001000000010000001111010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_aux_mult\(12),
	datab => \muxB_component|ALT_INV_Mux3~0_combout\,
	datac => \muxB_component|ALT_INV_Mux2~0_combout\,
	datad => \ula_component|ALT_INV_cont~14_combout\,
	datae => \ula_component|ALT_INV_aux_mult\(13),
	dataf => \ula_component|ALT_INV_cont~55_combout\,
	combout => \ula_component|cont~56_combout\);

-- Location: LABCELL_X35_Y4_N18
\ula_component|cont~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~65_combout\ = ( \ula_component|cont~64_combout\ & ( \ula_component|cont~56_combout\ & ( (\ula_component|cont~57_combout\ & (((\muxB_component|Mux1~0_combout\ & !\ula_component|aux_mult\(14))) # (\muxB_component|Mux0~0_combout\))) ) ) ) 
-- # ( !\ula_component|cont~64_combout\ & ( \ula_component|cont~56_combout\ ) ) # ( \ula_component|cont~64_combout\ & ( !\ula_component|cont~56_combout\ & ( (\ula_component|cont~57_combout\ & (((!\ula_component|aux_mult\(14)) # 
-- (\muxB_component|Mux1~0_combout\)) # (\muxB_component|Mux0~0_combout\))) ) ) ) # ( !\ula_component|cont~64_combout\ & ( !\ula_component|cont~56_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000011111111111111111110000011100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux0~0_combout\,
	datab => \muxB_component|ALT_INV_Mux1~0_combout\,
	datac => \ula_component|ALT_INV_cont~57_combout\,
	datad => \ula_component|ALT_INV_aux_mult\(14),
	datae => \ula_component|ALT_INV_cont~64_combout\,
	dataf => \ula_component|ALT_INV_cont~56_combout\,
	combout => \ula_component|cont~65_combout\);

-- Location: FF_X35_Y4_N20
\ula_component|cont\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|cont~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|cont~q\);

-- Location: MLABCELL_X34_Y4_N9
\ula_component|cont~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~1_combout\ = ( \muxA_component|saida[0]~0_combout\ & ( (!\muxB_component|Mux7~0_combout\) # (\ula_component|cont~q\) ) ) # ( !\muxA_component|saida[0]~0_combout\ & ( (\ula_component|cont~q\ & !\muxB_component|Mux7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ula_component|ALT_INV_cont~q\,
	datad => \muxB_component|ALT_INV_Mux7~0_combout\,
	dataf => \muxA_component|ALT_INV_saida[0]~0_combout\,
	combout => \ula_component|cont~1_combout\);

-- Location: MLABCELL_X39_Y4_N42
\ula_component|cont~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|cont~3_combout\ = ( \ula_component|cont~1_combout\ & ( (!\muxB_component|Mux6~0_combout\) # (\muxA_component|saida[1]~1_combout\) ) ) # ( !\ula_component|cont~1_combout\ & ( (\muxA_component|saida[1]~1_combout\ & 
-- !\muxB_component|Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxA_component|ALT_INV_saida[1]~1_combout\,
	datac => \muxB_component|ALT_INV_Mux6~0_combout\,
	dataf => \ula_component|ALT_INV_cont~1_combout\,
	combout => \ula_component|cont~3_combout\);

-- Location: MLABCELL_X39_Y4_N48
\ula_component|resultado~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado~9_combout\ = ( \muxB_component|Mux5~0_combout\ & ( \muxA_component|saida[2]~2_combout\ & ( (!\ula_component|resultado[1]~2_combout\) # ((!\ula_component|resultado[1]~3_combout\ & ((!\ula_component|cont~3_combout\))) # 
-- (\ula_component|resultado[1]~3_combout\ & (\ula_component|aux_mult\(2)))) ) ) ) # ( !\muxB_component|Mux5~0_combout\ & ( \muxA_component|saida[2]~2_combout\ & ( (!\ula_component|resultado[1]~3_combout\ & (((!\ula_component|resultado[1]~2_combout\) # 
-- (\ula_component|cont~3_combout\)))) # (\ula_component|resultado[1]~3_combout\ & (\ula_component|aux_mult\(2) & ((\ula_component|resultado[1]~2_combout\)))) ) ) ) # ( \muxB_component|Mux5~0_combout\ & ( !\muxA_component|saida[2]~2_combout\ & ( 
-- (!\ula_component|resultado[1]~3_combout\ & (((\ula_component|cont~3_combout\ & \ula_component|resultado[1]~2_combout\)))) # (\ula_component|resultado[1]~3_combout\ & (((!\ula_component|resultado[1]~2_combout\)) # (\ula_component|aux_mult\(2)))) ) ) ) # ( 
-- !\muxB_component|Mux5~0_combout\ & ( !\muxA_component|saida[2]~2_combout\ & ( (\ula_component|resultado[1]~2_combout\ & ((!\ula_component|resultado[1]~3_combout\ & ((!\ula_component|cont~3_combout\))) # (\ula_component|resultado[1]~3_combout\ & 
-- (\ula_component|aux_mult\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000101000011110011010111110000001101011111111111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_aux_mult\(2),
	datab => \ula_component|ALT_INV_cont~3_combout\,
	datac => \ula_component|ALT_INV_resultado[1]~3_combout\,
	datad => \ula_component|ALT_INV_resultado[1]~2_combout\,
	datae => \muxB_component|ALT_INV_Mux5~0_combout\,
	dataf => \muxA_component|ALT_INV_saida[2]~2_combout\,
	combout => \ula_component|resultado~9_combout\);

-- Location: MLABCELL_X39_Y4_N0
\ula_component|resultado~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado~10_combout\ = ( \ula_component|resultado[1]~1_combout\ & ( \muxA_component|saida[2]~2_combout\ & ( (!\ula_component|cont~2_combout\ $ (\muxB_component|Mux5~0_combout\)) # (\ula_component|resultado[1]~0_combout\) ) ) ) # ( 
-- !\ula_component|resultado[1]~1_combout\ & ( \muxA_component|saida[2]~2_combout\ & ( (!\ula_component|resultado[1]~0_combout\ & (\ula_component|resultado~9_combout\)) # (\ula_component|resultado[1]~0_combout\ & ((\muxB_component|Mux5~0_combout\))) ) ) ) # 
-- ( \ula_component|resultado[1]~1_combout\ & ( !\muxA_component|saida[2]~2_combout\ & ( !\muxB_component|Mux5~0_combout\ $ (((!\ula_component|cont~2_combout\) # (\ula_component|resultado[1]~0_combout\))) ) ) ) # ( !\ula_component|resultado[1]~1_combout\ & ( 
-- !\muxA_component|saida[2]~2_combout\ & ( (\ula_component|resultado~9_combout\ & !\ula_component|resultado[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001111000000111101010101000011111100001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_resultado~9_combout\,
	datab => \ula_component|ALT_INV_cont~2_combout\,
	datac => \muxB_component|ALT_INV_Mux5~0_combout\,
	datad => \ula_component|ALT_INV_resultado[1]~0_combout\,
	datae => \ula_component|ALT_INV_resultado[1]~1_combout\,
	dataf => \muxA_component|ALT_INV_saida[2]~2_combout\,
	combout => \ula_component|resultado~10_combout\);

-- Location: FF_X39_Y4_N2
\ula_component|resultado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|resultado~10_combout\,
	ena => \ula_component|resultado[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|resultado\(2));

-- Location: FF_X35_Y1_N19
\ULAout_component|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|resultado\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULAout_component|Q\(2));

-- Location: LABCELL_X35_Y1_N6
\muxPUJ_component|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPUJ_component|Mux2~0_combout\ = ( \UniControl_component|pc_flag~1_combout\ & ( (!\UniControl_component|pc_cond~2_combout\ & (\ULAout_component|Q\(2))) # (\UniControl_component|pc_cond~2_combout\ & ((\ula_component|resultado\(2)))) ) ) # ( 
-- !\UniControl_component|pc_flag~1_combout\ & ( !\rom8_component|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_pc_cond~2_combout\,
	datab => \ULAout_component|ALT_INV_Q\(2),
	datac => \ula_component|ALT_INV_resultado\(2),
	datad => \rom8_component|ALT_INV_Mux1~0_combout\,
	dataf => \UniControl_component|ALT_INV_pc_flag~1_combout\,
	combout => \muxPUJ_component|Mux2~0_combout\);

-- Location: LABCELL_X35_Y1_N51
\muxPUJ_component|saida[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPUJ_component|saida[2]~10_combout\ = ( \muxPUJ_component|Mux2~0_combout\ ) # ( !\muxPUJ_component|Mux2~0_combout\ & ( !\muxPUJ_component|Mux8~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \muxPUJ_component|ALT_INV_Mux8~0_combout\,
	dataf => \muxPUJ_component|ALT_INV_Mux2~0_combout\,
	combout => \muxPUJ_component|saida[2]~10_combout\);

-- Location: LABCELL_X37_Y2_N15
\ula_component|zero~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|zero~0_combout\ = ( \UniControl_component|ULAop[1]~10_combout\ & ( (\UniControl_component|ULAop[3]~8_combout\ & ((\UniControl_component|ULAop[2]~9_combout\) # (\UniControl_component|ULAop[0]~11_combout\))) ) ) # ( 
-- !\UniControl_component|ULAop[1]~10_combout\ & ( (\UniControl_component|ULAop[2]~9_combout\ & \UniControl_component|ULAop[3]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_ULAop[0]~11_combout\,
	datac => \UniControl_component|ALT_INV_ULAop[2]~9_combout\,
	datad => \UniControl_component|ALT_INV_ULAop[3]~8_combout\,
	dataf => \UniControl_component|ALT_INV_ULAop[1]~10_combout\,
	combout => \ula_component|zero~0_combout\);

-- Location: LABCELL_X37_Y3_N33
\ula_component|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|LessThan0~0_combout\ = ( \muxA_component|saida[0]~0_combout\ & ( (!\muxA_component|saida[1]~1_combout\ & \muxB_component|Mux6~0_combout\) ) ) # ( !\muxA_component|saida[0]~0_combout\ & ( (!\muxA_component|saida[1]~1_combout\ & 
-- ((\muxB_component|Mux7~0_combout\) # (\muxB_component|Mux6~0_combout\))) # (\muxA_component|saida[1]~1_combout\ & (\muxB_component|Mux6~0_combout\ & \muxB_component|Mux7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000010101010111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxA_component|ALT_INV_saida[1]~1_combout\,
	datac => \muxB_component|ALT_INV_Mux6~0_combout\,
	datad => \muxB_component|ALT_INV_Mux7~0_combout\,
	dataf => \muxA_component|ALT_INV_saida[0]~0_combout\,
	combout => \ula_component|LessThan0~0_combout\);

-- Location: MLABCELL_X39_Y4_N39
\ula_component|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|LessThan0~1_combout\ = ( \muxA_component|saida[2]~2_combout\ & ( (!\muxB_component|Mux4~0_combout\ & (!\muxA_component|saida[3]~3_combout\ & (\muxB_component|Mux5~0_combout\ & \ula_component|LessThan0~0_combout\))) # 
-- (\muxB_component|Mux4~0_combout\ & ((!\muxA_component|saida[3]~3_combout\) # ((\muxB_component|Mux5~0_combout\ & \ula_component|LessThan0~0_combout\)))) ) ) # ( !\muxA_component|saida[2]~2_combout\ & ( (!\muxB_component|Mux4~0_combout\ & 
-- (!\muxA_component|saida[3]~3_combout\ & ((\ula_component|LessThan0~0_combout\) # (\muxB_component|Mux5~0_combout\)))) # (\muxB_component|Mux4~0_combout\ & ((!\muxA_component|saida[3]~3_combout\) # ((\ula_component|LessThan0~0_combout\) # 
-- (\muxB_component|Mux5~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110111011101010011011101110101000100010011010100010001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux4~0_combout\,
	datab => \muxA_component|ALT_INV_saida[3]~3_combout\,
	datac => \muxB_component|ALT_INV_Mux5~0_combout\,
	datad => \ula_component|ALT_INV_LessThan0~0_combout\,
	dataf => \muxA_component|ALT_INV_saida[2]~2_combout\,
	combout => \ula_component|LessThan0~1_combout\);

-- Location: LABCELL_X40_Y4_N33
\ula_component|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|LessThan0~2_combout\ = ( \ula_component|LessThan0~1_combout\ & ( (!\muxB_component|Mux2~0_combout\ & (!\muxA_component|saida[5]~5_combout\ & ((!\muxA_component|saida[4]~4_combout\) # (\muxB_component|Mux3~0_combout\)))) # 
-- (\muxB_component|Mux2~0_combout\ & ((!\muxA_component|saida[5]~5_combout\) # ((!\muxA_component|saida[4]~4_combout\) # (\muxB_component|Mux3~0_combout\)))) ) ) # ( !\ula_component|LessThan0~1_combout\ & ( (!\muxB_component|Mux2~0_combout\ & 
-- (!\muxA_component|saida[5]~5_combout\ & (\muxB_component|Mux3~0_combout\ & !\muxA_component|saida[4]~4_combout\))) # (\muxB_component|Mux2~0_combout\ & ((!\muxA_component|saida[5]~5_combout\) # ((\muxB_component|Mux3~0_combout\ & 
-- !\muxA_component|saida[4]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101000100010011010100010011011101010011011101110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux2~0_combout\,
	datab => \muxA_component|ALT_INV_saida[5]~5_combout\,
	datac => \muxB_component|ALT_INV_Mux3~0_combout\,
	datad => \muxA_component|ALT_INV_saida[4]~4_combout\,
	dataf => \ula_component|ALT_INV_LessThan0~1_combout\,
	combout => \ula_component|LessThan0~2_combout\);

-- Location: LABCELL_X37_Y2_N36
\ula_component|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|Equal2~0_combout\ = ( !\UniControl_component|ULAop[2]~9_combout\ & ( (!\UniControl_component|ULAop[0]~11_combout\ & (\UniControl_component|ULAop[1]~10_combout\ & \UniControl_component|ULAop[3]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_ULAop[0]~11_combout\,
	datac => \UniControl_component|ALT_INV_ULAop[1]~10_combout\,
	datad => \UniControl_component|ALT_INV_ULAop[3]~8_combout\,
	dataf => \UniControl_component|ALT_INV_ULAop[2]~9_combout\,
	combout => \ula_component|Equal2~0_combout\);

-- Location: LABCELL_X40_Y4_N12
\ula_component|zero~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|zero~1_combout\ = ( \muxA_component|saida[6]~6_combout\ & ( \ula_component|Equal2~0_combout\ & ( (!\muxB_component|Mux0~0_combout\ & ((!\ula_component|LessThan0~2_combout\) # ((!\muxB_component|Mux1~0_combout\) # 
-- (\muxA_component|saida[7]~7_combout\)))) # (\muxB_component|Mux0~0_combout\ & (\muxA_component|saida[7]~7_combout\ & ((!\ula_component|LessThan0~2_combout\) # (!\muxB_component|Mux1~0_combout\)))) ) ) ) # ( !\muxA_component|saida[6]~6_combout\ & ( 
-- \ula_component|Equal2~0_combout\ & ( (!\muxB_component|Mux0~0_combout\ & (((!\ula_component|LessThan0~2_combout\ & !\muxB_component|Mux1~0_combout\)) # (\muxA_component|saida[7]~7_combout\))) # (\muxB_component|Mux0~0_combout\ & 
-- (!\ula_component|LessThan0~2_combout\ & (\muxA_component|saida[7]~7_combout\ & !\muxB_component|Mux1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001110000011001100111110001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_LessThan0~2_combout\,
	datab => \muxB_component|ALT_INV_Mux0~0_combout\,
	datac => \muxA_component|ALT_INV_saida[7]~7_combout\,
	datad => \muxB_component|ALT_INV_Mux1~0_combout\,
	datae => \muxA_component|ALT_INV_saida[6]~6_combout\,
	dataf => \ula_component|ALT_INV_Equal2~0_combout\,
	combout => \ula_component|zero~1_combout\);

-- Location: LABCELL_X37_Y2_N3
\ula_component|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|Equal2~1_combout\ = ( !\UniControl_component|ULAop[1]~10_combout\ & ( (\UniControl_component|ULAop[0]~11_combout\ & (!\UniControl_component|ULAop[2]~9_combout\ & \UniControl_component|ULAop[3]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_ULAop[0]~11_combout\,
	datac => \UniControl_component|ALT_INV_ULAop[2]~9_combout\,
	datad => \UniControl_component|ALT_INV_ULAop[3]~8_combout\,
	dataf => \UniControl_component|ALT_INV_ULAop[1]~10_combout\,
	combout => \ula_component|Equal2~1_combout\);

-- Location: LABCELL_X40_Y4_N6
\ula_component|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|Equal7~0_combout\ = ( \muxB_component|Mux1~0_combout\ & ( (\muxA_component|saida[6]~6_combout\ & (!\muxB_component|Mux2~0_combout\ $ (\muxA_component|saida[5]~5_combout\))) ) ) # ( !\muxB_component|Mux1~0_combout\ & ( 
-- (!\muxA_component|saida[6]~6_combout\ & (!\muxB_component|Mux2~0_combout\ $ (\muxA_component|saida[5]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100000000100110010000000000000000100110010000000010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux2~0_combout\,
	datab => \muxA_component|ALT_INV_saida[5]~5_combout\,
	datad => \muxA_component|ALT_INV_saida[6]~6_combout\,
	dataf => \muxB_component|ALT_INV_Mux1~0_combout\,
	combout => \ula_component|Equal7~0_combout\);

-- Location: MLABCELL_X39_Y4_N6
\ula_component|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|Equal7~1_combout\ = ( \muxB_component|Mux4~0_combout\ & ( (\muxA_component|saida[3]~3_combout\ & (!\muxA_component|saida[2]~2_combout\ $ (\muxB_component|Mux5~0_combout\))) ) ) # ( !\muxB_component|Mux4~0_combout\ & ( 
-- (!\muxA_component|saida[3]~3_combout\ & (!\muxA_component|saida[2]~2_combout\ $ (\muxB_component|Mux5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100000000100110010000000000000000100110010000000010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxA_component|ALT_INV_saida[2]~2_combout\,
	datab => \muxB_component|ALT_INV_Mux5~0_combout\,
	datad => \muxA_component|ALT_INV_saida[3]~3_combout\,
	dataf => \muxB_component|ALT_INV_Mux4~0_combout\,
	combout => \ula_component|Equal7~1_combout\);

-- Location: LABCELL_X33_Y4_N24
\ula_component|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|Equal7~2_combout\ = ( \muxA_component|saida[0]~0_combout\ & ( (\muxB_component|Mux7~0_combout\ & (!\muxB_component|Mux6~0_combout\ $ (\muxA_component|saida[1]~1_combout\))) ) ) # ( !\muxA_component|saida[0]~0_combout\ & ( 
-- (!\muxB_component|Mux7~0_combout\ & (!\muxB_component|Mux6~0_combout\ $ (\muxA_component|saida[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxB_component|ALT_INV_Mux6~0_combout\,
	datac => \muxA_component|ALT_INV_saida[1]~1_combout\,
	datad => \muxB_component|ALT_INV_Mux7~0_combout\,
	dataf => \muxA_component|ALT_INV_saida[0]~0_combout\,
	combout => \ula_component|Equal7~2_combout\);

-- Location: LABCELL_X33_Y4_N27
\ula_component|Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|Equal7~3_combout\ = ( \ula_component|Equal7~2_combout\ & ( (\ula_component|Equal7~1_combout\ & (!\muxA_component|saida[4]~4_combout\ $ (\muxB_component|Mux3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_Equal7~1_combout\,
	datac => \muxA_component|ALT_INV_saida[4]~4_combout\,
	datad => \muxB_component|ALT_INV_Mux3~0_combout\,
	dataf => \ula_component|ALT_INV_Equal7~2_combout\,
	combout => \ula_component|Equal7~3_combout\);

-- Location: LABCELL_X40_Y4_N27
\ula_component|Equal7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|Equal7~4_combout\ = ( \muxA_component|saida[7]~7_combout\ & ( (\muxB_component|Mux0~0_combout\ & (\ula_component|Equal7~0_combout\ & \ula_component|Equal7~3_combout\)) ) ) # ( !\muxA_component|saida[7]~7_combout\ & ( 
-- (!\muxB_component|Mux0~0_combout\ & (\ula_component|Equal7~0_combout\ & \ula_component|Equal7~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux0~0_combout\,
	datab => \ula_component|ALT_INV_Equal7~0_combout\,
	datad => \ula_component|ALT_INV_Equal7~3_combout\,
	dataf => \muxA_component|ALT_INV_saida[7]~7_combout\,
	combout => \ula_component|Equal7~4_combout\);

-- Location: LABCELL_X40_Y4_N0
\ula_component|zero~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|zero~2_combout\ = ( \ula_component|zero~q\ & ( \ula_component|Equal7~4_combout\ & ( (((!\ula_component|Equal2~0_combout\ & !\ula_component|Equal2~1_combout\)) # (\ula_component|zero~1_combout\)) # (\ula_component|zero~0_combout\) ) ) ) # ( 
-- !\ula_component|zero~q\ & ( \ula_component|Equal7~4_combout\ & ( (!\ula_component|zero~0_combout\ & \ula_component|zero~1_combout\) ) ) ) # ( \ula_component|zero~q\ & ( !\ula_component|Equal7~4_combout\ & ( ((!\ula_component|Equal2~0_combout\) # 
-- (\ula_component|zero~1_combout\)) # (\ula_component|zero~0_combout\) ) ) ) # ( !\ula_component|zero~q\ & ( !\ula_component|Equal7~4_combout\ & ( (!\ula_component|zero~0_combout\ & (((!\ula_component|Equal2~0_combout\ & \ula_component|Equal2~1_combout\)) # 
-- (\ula_component|zero~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010100010111101111111011100100010001000101111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_zero~0_combout\,
	datab => \ula_component|ALT_INV_zero~1_combout\,
	datac => \ula_component|ALT_INV_Equal2~0_combout\,
	datad => \ula_component|ALT_INV_Equal2~1_combout\,
	datae => \ula_component|ALT_INV_zero~q\,
	dataf => \ula_component|ALT_INV_Equal7~4_combout\,
	combout => \ula_component|zero~2_combout\);

-- Location: FF_X40_Y4_N2
\ula_component|zero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|zero~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|zero~q\);

-- Location: LABCELL_X35_Y1_N57
\Or_component|R\ : cyclonev_lcell_comb
-- Equation(s):
-- \Or_component|R~combout\ = ( \UniControl_component|pc_flag$latch~combout\ ) # ( !\UniControl_component|pc_flag$latch~combout\ & ( (!\UniControl_component|esc_reg_952~combout\) # ((\ula_component|zero~q\ & \UniControl_component|pc_cond$latch~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110101111100001111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_zero~q\,
	datac => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datad => \UniControl_component|ALT_INV_pc_cond$latch~combout\,
	dataf => \UniControl_component|ALT_INV_pc_flag$latch~combout\,
	combout => \Or_component|R~combout\);

-- Location: FF_X34_Y3_N44
\pc_component|saidaPC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \muxPUJ_component|saida[2]~10_combout\,
	sload => VCC,
	ena => \Or_component|R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|saidaPC\(2));

-- Location: LABCELL_X40_Y3_N18
\UniControl_component|recv_opcode~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|recv_opcode~10_combout\ = ( \pc_component|saidaPC\(2) & ( \pc_component|saidaPC\(7) & ( \UniControl_component|state.estadoS0~q\ ) ) ) # ( !\pc_component|saidaPC\(2) & ( \pc_component|saidaPC\(7) & ( 
-- \UniControl_component|state.estadoS0~q\ ) ) ) # ( \pc_component|saidaPC\(2) & ( !\pc_component|saidaPC\(7) & ( \UniControl_component|state.estadoS0~q\ ) ) ) # ( !\pc_component|saidaPC\(2) & ( !\pc_component|saidaPC\(7) & ( 
-- (\UniControl_component|state.estadoS0~q\ & (((\pc_component|saidaPC\(6)) # (\pc_component|saidaPC\(5))) # (\pc_component|saidaPC\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS0~q\,
	datab => \pc_component|ALT_INV_saidaPC\(4),
	datac => \pc_component|ALT_INV_saidaPC\(5),
	datad => \pc_component|ALT_INV_saidaPC\(6),
	datae => \pc_component|ALT_INV_saidaPC\(2),
	dataf => \pc_component|ALT_INV_saidaPC\(7),
	combout => \UniControl_component|recv_opcode~10_combout\);

-- Location: MLABCELL_X34_Y4_N24
\UniControl_component|Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux26~1_combout\ = ( \UniControl_component|recv_opcode~5_combout\ & ( \UniControl_component|recv_opcode~10_combout\ & ( !\UniControl_component|WideNor2~0_combout\ ) ) ) # ( !\UniControl_component|recv_opcode~5_combout\ & ( 
-- \UniControl_component|recv_opcode~10_combout\ & ( (!\UniControl_component|recv_opcode~6_combout\ & ((\UniControl_component|state.estadoS8~q\))) # (\UniControl_component|recv_opcode~6_combout\ & (!\UniControl_component|WideNor2~0_combout\)) ) ) ) # ( 
-- \UniControl_component|recv_opcode~5_combout\ & ( !\UniControl_component|recv_opcode~10_combout\ & ( (!\UniControl_component|WideNor2~0_combout\ & \UniControl_component|recv_opcode~11_combout\) ) ) ) # ( !\UniControl_component|recv_opcode~5_combout\ & ( 
-- !\UniControl_component|recv_opcode~10_combout\ & ( (\UniControl_component|recv_opcode~11_combout\ & ((!\UniControl_component|recv_opcode~6_combout\ & ((\UniControl_component|state.estadoS8~q\))) # (\UniControl_component|recv_opcode~6_combout\ & 
-- (!\UniControl_component|WideNor2~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001010000010100000101000110011101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_WideNor2~0_combout\,
	datab => \UniControl_component|ALT_INV_state.estadoS8~q\,
	datac => \UniControl_component|ALT_INV_recv_opcode~11_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode~6_combout\,
	datae => \UniControl_component|ALT_INV_recv_opcode~5_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode~10_combout\,
	combout => \UniControl_component|Mux26~1_combout\);

-- Location: MLABCELL_X34_Y4_N54
\UniControl_component|Mux26~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux26~2_combout\ = ( \rom8_component|data[6]~20_combout\ & ( (\UniControl_component|state.estadoS8~q\ & ((\UniControl_component|recv_opcode\(2)) # (\UniControl_component|state.estadoS0~q\))) ) ) # ( 
-- !\rom8_component|data[6]~20_combout\ & ( (!\UniControl_component|state.estadoS0~q\ & (\UniControl_component|recv_opcode\(2) & \UniControl_component|state.estadoS8~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS0~q\,
	datac => \UniControl_component|ALT_INV_recv_opcode\(2),
	datad => \UniControl_component|ALT_INV_state.estadoS8~q\,
	dataf => \rom8_component|ALT_INV_data[6]~20_combout\,
	combout => \UniControl_component|Mux26~2_combout\);

-- Location: MLABCELL_X34_Y4_N45
\UniControl_component|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux26~0_combout\ = ( \rom8_component|data[6]~20_combout\ & ( (!\UniControl_component|WideNor0~0_combout\ & (!\UniControl_component|recv_opcode\(2) & !\UniControl_component|state.estadoS0~q\)) ) ) # ( 
-- !\rom8_component|data[6]~20_combout\ & ( (!\UniControl_component|WideNor0~0_combout\ & ((!\UniControl_component|recv_opcode\(2)) # (\UniControl_component|state.estadoS0~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101010101000001010101010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_WideNor0~0_combout\,
	datac => \UniControl_component|ALT_INV_recv_opcode\(2),
	datad => \UniControl_component|ALT_INV_state.estadoS0~q\,
	dataf => \rom8_component|ALT_INV_data[6]~20_combout\,
	combout => \UniControl_component|Mux26~0_combout\);

-- Location: MLABCELL_X34_Y4_N36
\UniControl_component|Mux26~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux26~3_combout\ = ( \UniControl_component|recv_opcode~1_combout\ & ( !\UniControl_component|recv_opcode~4_combout\ & ( (!\UniControl_component|recv_opcode~2_combout\ & (((\UniControl_component|Mux26~2_combout\)))) # 
-- (\UniControl_component|recv_opcode~2_combout\ & (((\UniControl_component|Mux26~0_combout\)) # (\UniControl_component|Mux26~1_combout\))) ) ) ) # ( !\UniControl_component|recv_opcode~1_combout\ & ( !\UniControl_component|recv_opcode~4_combout\ & ( 
-- (\UniControl_component|recv_opcode~2_combout\ & ((\UniControl_component|Mux26~0_combout\) # (\UniControl_component|Mux26~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000110110101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	datab => \UniControl_component|ALT_INV_Mux26~1_combout\,
	datac => \UniControl_component|ALT_INV_Mux26~2_combout\,
	datad => \UniControl_component|ALT_INV_Mux26~0_combout\,
	datae => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode~4_combout\,
	combout => \UniControl_component|Mux26~3_combout\);

-- Location: MLABCELL_X34_Y4_N21
\UniControl_component|ULAop[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|ULAop[1]$latch~combout\ = ( \UniControl_component|Mux26~3_combout\ & ( (\ProIAEnableFlag~input_o\ & ((\UniControl_component|ULAop[1]$latch~combout\) # (\UniControl_component|Mux21~4_combout\))) ) ) # ( 
-- !\UniControl_component|Mux26~3_combout\ & ( (!\UniControl_component|Mux21~4_combout\ & (\ProIAEnableFlag~input_o\ & \UniControl_component|ULAop[1]$latch~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_Mux21~4_combout\,
	datac => \ALT_INV_ProIAEnableFlag~input_o\,
	datad => \UniControl_component|ALT_INV_ULAop[1]$latch~combout\,
	dataf => \UniControl_component|ALT_INV_Mux26~3_combout\,
	combout => \UniControl_component|ULAop[1]$latch~combout\);

-- Location: LABCELL_X37_Y3_N57
\ula_component|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|Equal2~2_combout\ = ( \UniControl_component|esc_reg_952~combout\ & ( (!\UniControl_component|ULAop[0]$latch~combout\ & (!\UniControl_component|ULAop[3]$latch~combout\ & (!\UniControl_component|ULAop[1]$latch~combout\ & 
-- \UniControl_component|ULAop[2]$latch~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_ULAop[0]$latch~combout\,
	datab => \UniControl_component|ALT_INV_ULAop[3]$latch~combout\,
	datac => \UniControl_component|ALT_INV_ULAop[1]$latch~combout\,
	datad => \UniControl_component|ALT_INV_ULAop[2]$latch~combout\,
	dataf => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	combout => \ula_component|Equal2~2_combout\);

-- Location: FF_X36_Y5_N44
\ula_component|mult[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|aux_mult\(1),
	sload => VCC,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|mult\(1));

-- Location: FF_X36_Y5_N4
\ula_component|aux_mult[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_mult[0]~feeder_combout\,
	asdata => \ula_component|mult\(1),
	sload => \ula_component|aux_dado~0_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_mult\(0));

-- Location: LABCELL_X33_Y4_N6
\ula_component|resultado~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado~4_combout\ = ( \ula_component|resultado[1]~3_combout\ & ( \ula_component|resultado[1]~2_combout\ & ( \ula_component|aux_mult\(0) ) ) ) # ( !\ula_component|resultado[1]~3_combout\ & ( \ula_component|resultado[1]~2_combout\ & ( 
-- !\ula_component|cont~q\ $ (!\muxA_component|saida[0]~0_combout\ $ (!\muxB_component|Mux7~0_combout\)) ) ) ) # ( \ula_component|resultado[1]~3_combout\ & ( !\ula_component|resultado[1]~2_combout\ & ( \muxB_component|Mux7~0_combout\ ) ) ) # ( 
-- !\ula_component|resultado[1]~3_combout\ & ( !\ula_component|resultado[1]~2_combout\ & ( \muxA_component|saida[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111111000011001111000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_aux_mult\(0),
	datab => \ula_component|ALT_INV_cont~q\,
	datac => \muxA_component|ALT_INV_saida[0]~0_combout\,
	datad => \muxB_component|ALT_INV_Mux7~0_combout\,
	datae => \ula_component|ALT_INV_resultado[1]~3_combout\,
	dataf => \ula_component|ALT_INV_resultado[1]~2_combout\,
	combout => \ula_component|resultado~4_combout\);

-- Location: LABCELL_X33_Y4_N36
\ula_component|resultado~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado~5_combout\ = ( \ula_component|cont~q\ & ( \muxA_component|saida[0]~0_combout\ & ( (!\ula_component|resultado[1]~1_combout\ & ((!\ula_component|resultado[1]~0_combout\ & ((\ula_component|resultado~4_combout\))) # 
-- (\ula_component|resultado[1]~0_combout\ & (\muxB_component|Mux7~0_combout\)))) # (\ula_component|resultado[1]~1_combout\ & (((\ula_component|resultado[1]~0_combout\)) # (\muxB_component|Mux7~0_combout\))) ) ) ) # ( !\ula_component|cont~q\ & ( 
-- \muxA_component|saida[0]~0_combout\ & ( (!\ula_component|resultado[1]~1_combout\ & ((!\ula_component|resultado[1]~0_combout\ & ((\ula_component|resultado~4_combout\))) # (\ula_component|resultado[1]~0_combout\ & (\muxB_component|Mux7~0_combout\)))) # 
-- (\ula_component|resultado[1]~1_combout\ & ((!\muxB_component|Mux7~0_combout\) # ((\ula_component|resultado[1]~0_combout\)))) ) ) ) # ( \ula_component|cont~q\ & ( !\muxA_component|saida[0]~0_combout\ & ( (!\ula_component|resultado[1]~1_combout\ & 
-- (((\ula_component|resultado~4_combout\ & !\ula_component|resultado[1]~0_combout\)))) # (\ula_component|resultado[1]~1_combout\ & (!\muxB_component|Mux7~0_combout\ $ (((\ula_component|resultado[1]~0_combout\))))) ) ) ) # ( !\ula_component|cont~q\ & ( 
-- !\muxA_component|saida[0]~0_combout\ & ( (!\ula_component|resultado[1]~1_combout\ & (((\ula_component|resultado~4_combout\ & !\ula_component|resultado[1]~0_combout\)))) # (\ula_component|resultado[1]~1_combout\ & (\muxB_component|Mux7~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000101001110100000010100111010010111110011010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux7~0_combout\,
	datab => \ula_component|ALT_INV_resultado~4_combout\,
	datac => \ula_component|ALT_INV_resultado[1]~1_combout\,
	datad => \ula_component|ALT_INV_resultado[1]~0_combout\,
	datae => \ula_component|ALT_INV_cont~q\,
	dataf => \muxA_component|ALT_INV_saida[0]~0_combout\,
	combout => \ula_component|resultado~5_combout\);

-- Location: FF_X33_Y4_N38
\ula_component|resultado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|resultado~5_combout\,
	ena => \ula_component|resultado[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|resultado\(0));

-- Location: FF_X35_Y1_N53
\ULAout_component|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|resultado\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULAout_component|Q\(0));

-- Location: LABCELL_X35_Y1_N12
\muxPUJ_component|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPUJ_component|Mux0~0_combout\ = ( \UniControl_component|pc_flag~1_combout\ & ( (!\UniControl_component|pc_cond~2_combout\ & (\ULAout_component|Q\(0))) # (\UniControl_component|pc_cond~2_combout\ & ((\ula_component|resultado\(0)))) ) ) # ( 
-- !\UniControl_component|pc_flag~1_combout\ & ( !\rom8_component|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_pc_cond~2_combout\,
	datab => \rom8_component|ALT_INV_Mux1~0_combout\,
	datac => \ULAout_component|ALT_INV_Q\(0),
	datad => \ula_component|ALT_INV_resultado\(0),
	dataf => \UniControl_component|ALT_INV_pc_flag~1_combout\,
	combout => \muxPUJ_component|Mux0~0_combout\);

-- Location: LABCELL_X35_Y2_N36
\muxPUJ_component|saida[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPUJ_component|saida[0]~8_combout\ = ( \muxPUJ_component|Mux8~0_combout\ & ( \muxPUJ_component|Mux0~0_combout\ ) ) # ( !\muxPUJ_component|Mux8~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \muxPUJ_component|ALT_INV_Mux0~0_combout\,
	dataf => \muxPUJ_component|ALT_INV_Mux8~0_combout\,
	combout => \muxPUJ_component|saida[0]~8_combout\);

-- Location: FF_X35_Y2_N38
\pc_component|saidaPC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \muxPUJ_component|saida[0]~8_combout\,
	ena => \Or_component|R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|saidaPC\(0));

-- Location: LABCELL_X36_Y3_N54
\UniControl_component|recv_opcode~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|recv_opcode~5_combout\ = ( \pc_component|saidaPC\(0) & ( \pc_component|saidaPC\(7) & ( \UniControl_component|state.estadoS0~q\ ) ) ) # ( !\pc_component|saidaPC\(0) & ( \pc_component|saidaPC\(7) & ( 
-- \UniControl_component|state.estadoS0~q\ ) ) ) # ( \pc_component|saidaPC\(0) & ( !\pc_component|saidaPC\(7) & ( \UniControl_component|state.estadoS0~q\ ) ) ) # ( !\pc_component|saidaPC\(0) & ( !\pc_component|saidaPC\(7) & ( 
-- (\UniControl_component|state.estadoS0~q\ & (((\pc_component|saidaPC\(5)) # (\pc_component|saidaPC\(4))) # (\pc_component|saidaPC\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|ALT_INV_saidaPC\(6),
	datab => \pc_component|ALT_INV_saidaPC\(4),
	datac => \UniControl_component|ALT_INV_state.estadoS0~q\,
	datad => \pc_component|ALT_INV_saidaPC\(5),
	datae => \pc_component|ALT_INV_saidaPC\(0),
	dataf => \pc_component|ALT_INV_saidaPC\(7),
	combout => \UniControl_component|recv_opcode~5_combout\);

-- Location: LABCELL_X36_Y3_N24
\UniControl_component|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux4~0_combout\ = ( \UniControl_component|WideNor3~0_combout\ & ( \UniControl_component|recv_opcode~8_combout\ & ( (!\UniControl_component|recv_opcode~6_combout\ & !\UniControl_component|recv_opcode~5_combout\) ) ) ) # ( 
-- !\UniControl_component|WideNor3~0_combout\ & ( \UniControl_component|recv_opcode~8_combout\ & ( (!\UniControl_component|recv_opcode~6_combout\ & !\UniControl_component|recv_opcode~5_combout\) ) ) ) # ( \UniControl_component|WideNor3~0_combout\ & ( 
-- !\UniControl_component|recv_opcode~8_combout\ & ( (!\UniControl_component|recv_opcode~6_combout\ & ((!\UniControl_component|recv_opcode~5_combout\ & ((\UniControl_component|recv_opcode~7_combout\) # (\UniControl_component|WideNor2~0_combout\))) # 
-- (\UniControl_component|recv_opcode~5_combout\ & ((!\UniControl_component|recv_opcode~7_combout\))))) # (\UniControl_component|recv_opcode~6_combout\ & (((!\UniControl_component|recv_opcode~7_combout\)))) ) ) ) # ( 
-- !\UniControl_component|WideNor3~0_combout\ & ( !\UniControl_component|recv_opcode~8_combout\ & ( (!\UniControl_component|recv_opcode~6_combout\ & (!\UniControl_component|recv_opcode~5_combout\ & ((\UniControl_component|recv_opcode~7_combout\) # 
-- (\UniControl_component|WideNor2~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000011111111100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_WideNor2~0_combout\,
	datab => \UniControl_component|ALT_INV_recv_opcode~6_combout\,
	datac => \UniControl_component|ALT_INV_recv_opcode~5_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode~7_combout\,
	datae => \UniControl_component|ALT_INV_WideNor3~0_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode~8_combout\,
	combout => \UniControl_component|Mux4~0_combout\);

-- Location: LABCELL_X35_Y2_N21
\UniControl_component|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux4~2_combout\ = ( \UniControl_component|recv_opcode~4_combout\ & ( \UniControl_component|Mux4~0_combout\ & ( !\UniControl_component|recv_opcode~3_combout\ ) ) ) # ( !\UniControl_component|recv_opcode~4_combout\ & ( 
-- \UniControl_component|Mux4~0_combout\ & ( (!\UniControl_component|recv_opcode~3_combout\ & (((\UniControl_component|WideNor0~0_combout\)))) # (\UniControl_component|recv_opcode~3_combout\ & (((!\UniControl_component|Mux22~0_combout\ & 
-- \UniControl_component|WideNor0~0_combout\)) # (\UniControl_component|Mux4~1_combout\))) ) ) ) # ( !\UniControl_component|recv_opcode~4_combout\ & ( !\UniControl_component|Mux4~0_combout\ & ( (!\UniControl_component|recv_opcode~3_combout\ & 
-- (((\UniControl_component|WideNor0~0_combout\)))) # (\UniControl_component|recv_opcode~3_combout\ & (((!\UniControl_component|Mux22~0_combout\ & \UniControl_component|WideNor0~0_combout\)) # (\UniControl_component|Mux4~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111011000000000000000000000011111110111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_Mux22~0_combout\,
	datab => \UniControl_component|ALT_INV_Mux4~1_combout\,
	datac => \UniControl_component|ALT_INV_recv_opcode~3_combout\,
	datad => \UniControl_component|ALT_INV_WideNor0~0_combout\,
	datae => \UniControl_component|ALT_INV_recv_opcode~4_combout\,
	dataf => \UniControl_component|ALT_INV_Mux4~0_combout\,
	combout => \UniControl_component|Mux4~2_combout\);

-- Location: LABCELL_X35_Y2_N12
\UniControl_component|ula_fonteB[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|ula_fonteB[0]$latch~combout\ = ( \UniControl_component|ula_fonteB[0]$latch~combout\ & ( (\ProIAEnableFlag~input_o\ & ((!\UniControl_component|Mux21~4_combout\) # (\UniControl_component|Mux4~2_combout\))) ) ) # ( 
-- !\UniControl_component|ula_fonteB[0]$latch~combout\ & ( (\UniControl_component|Mux4~2_combout\ & (\UniControl_component|Mux21~4_combout\ & \ProIAEnableFlag~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_Mux4~2_combout\,
	datab => \UniControl_component|ALT_INV_Mux21~4_combout\,
	datac => \ALT_INV_ProIAEnableFlag~input_o\,
	dataf => \UniControl_component|ALT_INV_ula_fonteB[0]$latch~combout\,
	combout => \UniControl_component|ula_fonteB[0]$latch~combout\);

-- Location: LABCELL_X35_Y2_N30
\muxB_component|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxB_component|Mux6~0_combout\ = ( \rom8_component|Mux1~0_combout\ & ( (\UniControl_component|ula_fonteB[0]_783~combout\ & (!\UniControl_component|ula_fonteB[0]$latch~combout\ & (\breg8_component|SaidaB\(1) & 
-- !\UniControl_component|ula_fonteB[1]$latch~combout\))) ) ) # ( !\rom8_component|Mux1~0_combout\ & ( (!\UniControl_component|ula_fonteB[0]_783~combout\) # (((!\UniControl_component|ula_fonteB[0]$latch~combout\ & \breg8_component|SaidaB\(1))) # 
-- (\UniControl_component|ula_fonteB[1]$latch~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111011111111101011101111111100000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_ula_fonteB[0]_783~combout\,
	datab => \UniControl_component|ALT_INV_ula_fonteB[0]$latch~combout\,
	datac => \breg8_component|ALT_INV_SaidaB\(1),
	datad => \UniControl_component|ALT_INV_ula_fonteB[1]$latch~combout\,
	dataf => \rom8_component|ALT_INV_Mux1~0_combout\,
	combout => \muxB_component|Mux6~0_combout\);

-- Location: LABCELL_X37_Y2_N0
\ula_component|mult~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|mult~5_combout\ = ( \muxB_component|Mux6~0_combout\ & ( !\ula_component|mult\(9) $ (((\ula_component|cont~25_combout\) # (\ula_component|cont~26_combout\))) ) ) # ( !\muxB_component|Mux6~0_combout\ & ( !\ula_component|mult\(9) $ 
-- (((!\ula_component|cont~26_combout\ & !\ula_component|cont~25_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111000000001111111100000011000000001111111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ula_component|ALT_INV_cont~26_combout\,
	datac => \ula_component|ALT_INV_cont~25_combout\,
	datad => \ula_component|ALT_INV_mult\(9),
	dataf => \muxB_component|ALT_INV_Mux6~0_combout\,
	combout => \ula_component|mult~5_combout\);

-- Location: LABCELL_X35_Y4_N36
\ula_component|aux_mult~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult~10_combout\ = ( \ula_component|aux_dado\(0) & ( \muxA_component|saida[0]~0_combout\ & ( !\muxB_component|Mux6~0_combout\ $ (!\ula_component|cont~54_combout\ $ (!\ula_component|aux_mult\(9))) ) ) ) # ( !\ula_component|aux_dado\(0) & 
-- ( \muxA_component|saida[0]~0_combout\ & ( \ula_component|mult~5_combout\ ) ) ) # ( \ula_component|aux_dado\(0) & ( !\muxA_component|saida[0]~0_combout\ & ( \ula_component|aux_mult\(9) ) ) ) # ( !\ula_component|aux_dado\(0) & ( 
-- !\muxA_component|saida[0]~0_combout\ & ( \ula_component|aux_mult\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111111001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux6~0_combout\,
	datab => \ula_component|ALT_INV_cont~54_combout\,
	datac => \ula_component|ALT_INV_aux_mult\(9),
	datad => \ula_component|ALT_INV_mult~5_combout\,
	datae => \ula_component|ALT_INV_aux_dado\(0),
	dataf => \muxA_component|ALT_INV_saida[0]~0_combout\,
	combout => \ula_component|aux_mult~10_combout\);

-- Location: FF_X35_Y4_N38
\ula_component|aux_mult[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_mult~10_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_mult\(8));

-- Location: LABCELL_X35_Y4_N0
\ula_component|aux_mult~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult~15_combout\ = ( !\ula_component|aux_dado\(0) & ( (!\muxA_component|saida[0]~0_combout\ & (\ula_component|aux_mult\(8))) # (\muxA_component|saida[0]~0_combout\ & ((!\muxB_component|Mux7~0_combout\ $ 
-- ((!\ula_component|mult~0_combout\))))) ) ) # ( \ula_component|aux_dado\(0) & ( !\ula_component|aux_mult\(8) $ (((!\muxA_component|saida[0]~0_combout\) # (!\muxB_component|Mux7~0_combout\ $ (((\ula_component|cont~66_combout\) # 
-- (\ula_component|cont~53_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100111100010101010110100101010101001111000101010110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_aux_mult\(8),
	datab => \muxB_component|ALT_INV_Mux7~0_combout\,
	datac => \ula_component|ALT_INV_cont~53_combout\,
	datad => \muxA_component|ALT_INV_saida[0]~0_combout\,
	datae => \ula_component|ALT_INV_aux_dado\(0),
	dataf => \ula_component|ALT_INV_cont~66_combout\,
	datag => \ula_component|ALT_INV_mult~0_combout\,
	combout => \ula_component|aux_mult~15_combout\);

-- Location: FF_X35_Y4_N2
\ula_component|aux_mult[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_mult~15_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_mult\(7));

-- Location: LABCELL_X36_Y5_N57
\ula_component|aux_mult[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult[6]~feeder_combout\ = ( \ula_component|aux_mult\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ula_component|ALT_INV_aux_mult\(7),
	combout => \ula_component|aux_mult[6]~feeder_combout\);

-- Location: FF_X36_Y5_N56
\ula_component|mult[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|aux_mult\(7),
	sload => VCC,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|mult\(7));

-- Location: FF_X36_Y5_N59
\ula_component|aux_mult[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_mult[6]~feeder_combout\,
	asdata => \ula_component|mult\(7),
	sload => \ula_component|aux_dado~0_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_mult\(6));

-- Location: LABCELL_X36_Y5_N27
\ula_component|aux_mult[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult[5]~feeder_combout\ = \ula_component|aux_mult\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ula_component|ALT_INV_aux_mult\(6),
	combout => \ula_component|aux_mult[5]~feeder_combout\);

-- Location: FF_X36_Y5_N53
\ula_component|mult[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|aux_mult\(6),
	sload => VCC,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|mult\(6));

-- Location: FF_X36_Y5_N29
\ula_component|aux_mult[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_mult[5]~feeder_combout\,
	asdata => \ula_component|mult\(6),
	sload => \ula_component|aux_dado~0_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_mult\(5));

-- Location: LABCELL_X36_Y5_N9
\ula_component|aux_mult[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult[4]~feeder_combout\ = \ula_component|aux_mult\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_aux_mult\(5),
	combout => \ula_component|aux_mult[4]~feeder_combout\);

-- Location: LABCELL_X36_Y5_N6
\ula_component|mult[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|mult[5]~feeder_combout\ = \ula_component|aux_mult\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_component|ALT_INV_aux_mult\(5),
	combout => \ula_component|mult[5]~feeder_combout\);

-- Location: FF_X36_Y5_N8
\ula_component|mult[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|mult[5]~feeder_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|mult\(5));

-- Location: FF_X36_Y5_N11
\ula_component|aux_mult[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_mult[4]~feeder_combout\,
	asdata => \ula_component|mult\(5),
	sload => \ula_component|aux_dado~0_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_mult\(4));

-- Location: LABCELL_X36_Y5_N39
\ula_component|aux_mult[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult[3]~feeder_combout\ = \ula_component|aux_mult\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ula_component|ALT_INV_aux_mult\(4),
	combout => \ula_component|aux_mult[3]~feeder_combout\);

-- Location: FF_X36_Y5_N38
\ula_component|mult[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|aux_mult\(4),
	sload => VCC,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|mult\(4));

-- Location: FF_X36_Y5_N41
\ula_component|aux_mult[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_mult[3]~feeder_combout\,
	asdata => \ula_component|mult\(4),
	sload => \ula_component|aux_dado~0_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_mult\(3));

-- Location: LABCELL_X36_Y5_N33
\ula_component|aux_mult[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult[2]~feeder_combout\ = \ula_component|aux_mult\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ula_component|ALT_INV_aux_mult\(3),
	combout => \ula_component|aux_mult[2]~feeder_combout\);

-- Location: FF_X36_Y5_N26
\ula_component|mult[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|aux_mult\(3),
	sload => VCC,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|mult\(3));

-- Location: FF_X36_Y5_N35
\ula_component|aux_mult[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_mult[2]~feeder_combout\,
	asdata => \ula_component|mult\(3),
	sload => \ula_component|aux_dado~0_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_mult\(2));

-- Location: LABCELL_X36_Y5_N30
\ula_component|aux_mult[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|aux_mult[1]~feeder_combout\ = \ula_component|aux_mult\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ula_component|ALT_INV_aux_mult\(2),
	combout => \ula_component|aux_mult[1]~feeder_combout\);

-- Location: FF_X36_Y5_N17
\ula_component|mult[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|aux_mult\(2),
	sload => VCC,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|mult\(2));

-- Location: FF_X36_Y5_N32
\ula_component|aux_mult[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|aux_mult[1]~feeder_combout\,
	asdata => \ula_component|mult\(2),
	sload => \ula_component|aux_dado~0_combout\,
	ena => \ula_component|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|aux_mult\(1));

-- Location: LABCELL_X33_Y4_N54
\ula_component|resultado~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado~7_combout\ = ( \ula_component|resultado[1]~3_combout\ & ( \ula_component|cont~1_combout\ & ( (!\ula_component|resultado[1]~2_combout\ & ((\muxB_component|Mux6~0_combout\))) # (\ula_component|resultado[1]~2_combout\ & 
-- (\ula_component|aux_mult\(1))) ) ) ) # ( !\ula_component|resultado[1]~3_combout\ & ( \ula_component|cont~1_combout\ & ( !\muxA_component|saida[1]~1_combout\ $ (((!\muxB_component|Mux6~0_combout\) # (!\ula_component|resultado[1]~2_combout\))) ) ) ) # ( 
-- \ula_component|resultado[1]~3_combout\ & ( !\ula_component|cont~1_combout\ & ( (!\ula_component|resultado[1]~2_combout\ & ((\muxB_component|Mux6~0_combout\))) # (\ula_component|resultado[1]~2_combout\ & (\ula_component|aux_mult\(1))) ) ) ) # ( 
-- !\ula_component|resultado[1]~3_combout\ & ( !\ula_component|cont~1_combout\ & ( !\muxA_component|saida[1]~1_combout\ $ (((!\ula_component|resultado[1]~2_combout\) # (\muxB_component|Mux6~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100101000011110011001101010101010110100000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxA_component|ALT_INV_saida[1]~1_combout\,
	datab => \ula_component|ALT_INV_aux_mult\(1),
	datac => \muxB_component|ALT_INV_Mux6~0_combout\,
	datad => \ula_component|ALT_INV_resultado[1]~2_combout\,
	datae => \ula_component|ALT_INV_resultado[1]~3_combout\,
	dataf => \ula_component|ALT_INV_cont~1_combout\,
	combout => \ula_component|resultado~7_combout\);

-- Location: LABCELL_X33_Y4_N30
\ula_component|resultado~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado~8_combout\ = ( \ula_component|resultado[1]~1_combout\ & ( \ula_component|cont~0_combout\ & ( (!\muxA_component|saida[1]~1_combout\ & (!\muxB_component|Mux6~0_combout\ $ (\ula_component|resultado[1]~0_combout\))) # 
-- (\muxA_component|saida[1]~1_combout\ & ((\ula_component|resultado[1]~0_combout\) # (\muxB_component|Mux6~0_combout\))) ) ) ) # ( !\ula_component|resultado[1]~1_combout\ & ( \ula_component|cont~0_combout\ & ( (!\ula_component|resultado[1]~0_combout\ & 
-- (((\ula_component|resultado~7_combout\)))) # (\ula_component|resultado[1]~0_combout\ & (\muxA_component|saida[1]~1_combout\ & ((\muxB_component|Mux6~0_combout\)))) ) ) ) # ( \ula_component|resultado[1]~1_combout\ & ( !\ula_component|cont~0_combout\ & ( 
-- (!\muxA_component|saida[1]~1_combout\ & (\muxB_component|Mux6~0_combout\)) # (\muxA_component|saida[1]~1_combout\ & ((!\muxB_component|Mux6~0_combout\) # (\ula_component|resultado[1]~0_combout\))) ) ) ) # ( !\ula_component|resultado[1]~1_combout\ & ( 
-- !\ula_component|cont~0_combout\ & ( (!\ula_component|resultado[1]~0_combout\ & (((\ula_component|resultado~7_combout\)))) # (\ula_component|resultado[1]~0_combout\ & (\muxA_component|saida[1]~1_combout\ & ((\muxB_component|Mux6~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000101010110100101111100110011000001011010010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxA_component|ALT_INV_saida[1]~1_combout\,
	datab => \ula_component|ALT_INV_resultado~7_combout\,
	datac => \muxB_component|ALT_INV_Mux6~0_combout\,
	datad => \ula_component|ALT_INV_resultado[1]~0_combout\,
	datae => \ula_component|ALT_INV_resultado[1]~1_combout\,
	dataf => \ula_component|ALT_INV_cont~0_combout\,
	combout => \ula_component|resultado~8_combout\);

-- Location: FF_X33_Y4_N32
\ula_component|resultado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|resultado~8_combout\,
	ena => \ula_component|resultado[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|resultado\(1));

-- Location: FF_X35_Y1_N49
\ULAout_component|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|resultado\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULAout_component|Q\(1));

-- Location: LABCELL_X35_Y1_N15
\muxPUJ_component|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPUJ_component|Mux1~0_combout\ = ( \UniControl_component|pc_flag~1_combout\ & ( (!\UniControl_component|pc_cond~2_combout\ & (\ULAout_component|Q\(1))) # (\UniControl_component|pc_cond~2_combout\ & ((\ula_component|resultado\(1)))) ) ) # ( 
-- !\UniControl_component|pc_flag~1_combout\ & ( !\rom8_component|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_pc_cond~2_combout\,
	datab => \rom8_component|ALT_INV_Mux1~0_combout\,
	datac => \ULAout_component|ALT_INV_Q\(1),
	datad => \ula_component|ALT_INV_resultado\(1),
	dataf => \UniControl_component|ALT_INV_pc_flag~1_combout\,
	combout => \muxPUJ_component|Mux1~0_combout\);

-- Location: LABCELL_X36_Y1_N12
\muxPUJ_component|saida[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPUJ_component|saida[1]~9_combout\ = ( \muxPUJ_component|Mux1~0_combout\ ) # ( !\muxPUJ_component|Mux1~0_combout\ & ( !\muxPUJ_component|Mux8~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxPUJ_component|ALT_INV_Mux8~0_combout\,
	dataf => \muxPUJ_component|ALT_INV_Mux1~0_combout\,
	combout => \muxPUJ_component|saida[1]~9_combout\);

-- Location: FF_X36_Y1_N14
\pc_component|saidaPC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \muxPUJ_component|saida[1]~9_combout\,
	ena => \Or_component|R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|saidaPC\(1));

-- Location: LABCELL_X36_Y3_N57
\UniControl_component|recv_opcode~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|recv_opcode~7_combout\ = ( \pc_component|saidaPC\(1) & ( \pc_component|saidaPC\(7) & ( \UniControl_component|state.estadoS0~q\ ) ) ) # ( !\pc_component|saidaPC\(1) & ( \pc_component|saidaPC\(7) & ( 
-- \UniControl_component|state.estadoS0~q\ ) ) ) # ( \pc_component|saidaPC\(1) & ( !\pc_component|saidaPC\(7) & ( \UniControl_component|state.estadoS0~q\ ) ) ) # ( !\pc_component|saidaPC\(1) & ( !\pc_component|saidaPC\(7) & ( 
-- (\UniControl_component|state.estadoS0~q\ & (((\pc_component|saidaPC\(5)) # (\pc_component|saidaPC\(4))) # (\pc_component|saidaPC\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|ALT_INV_saidaPC\(6),
	datab => \pc_component|ALT_INV_saidaPC\(4),
	datac => \pc_component|ALT_INV_saidaPC\(5),
	datad => \UniControl_component|ALT_INV_state.estadoS0~q\,
	datae => \pc_component|ALT_INV_saidaPC\(1),
	dataf => \pc_component|ALT_INV_saidaPC\(7),
	combout => \UniControl_component|recv_opcode~7_combout\);

-- Location: LABCELL_X36_Y3_N18
\UniControl_component|Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux20~1_combout\ = ( \UniControl_component|recv_opcode~5_combout\ & ( \UniControl_component|recv_opcode~6_combout\ & ( (!\UniControl_component|recv_opcode~8_combout\ & ((!\UniControl_component|recv_opcode~7_combout\ & 
-- (\UniControl_component|state.estadoS8~q\)) # (\UniControl_component|recv_opcode~7_combout\ & ((!\UniControl_component|WideNor2~0_combout\))))) # (\UniControl_component|recv_opcode~8_combout\ & (((!\UniControl_component|WideNor2~0_combout\)))) ) ) ) # ( 
-- !\UniControl_component|recv_opcode~5_combout\ & ( \UniControl_component|recv_opcode~6_combout\ & ( (!\UniControl_component|recv_opcode~8_combout\ & ((!\UniControl_component|recv_opcode~7_combout\ & (\UniControl_component|state.estadoS8~q\)) # 
-- (\UniControl_component|recv_opcode~7_combout\ & ((!\UniControl_component|WideNor2~0_combout\))))) # (\UniControl_component|recv_opcode~8_combout\ & (((!\UniControl_component|WideNor2~0_combout\)))) ) ) ) # ( \UniControl_component|recv_opcode~5_combout\ & 
-- ( !\UniControl_component|recv_opcode~6_combout\ & ( (!\UniControl_component|recv_opcode~8_combout\ & ((!\UniControl_component|recv_opcode~7_combout\ & (\UniControl_component|state.estadoS8~q\)) # (\UniControl_component|recv_opcode~7_combout\ & 
-- ((!\UniControl_component|WideNor2~0_combout\))))) # (\UniControl_component|recv_opcode~8_combout\ & (((!\UniControl_component|WideNor2~0_combout\)))) ) ) ) # ( !\UniControl_component|recv_opcode~5_combout\ & ( !\UniControl_component|recv_opcode~6_combout\ 
-- & ( (\UniControl_component|state.estadoS8~q\ & ((\UniControl_component|recv_opcode~7_combout\) # (\UniControl_component|recv_opcode~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101010111001100110001011100110011000101110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS8~q\,
	datab => \UniControl_component|ALT_INV_WideNor2~0_combout\,
	datac => \UniControl_component|ALT_INV_recv_opcode~8_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode~7_combout\,
	datae => \UniControl_component|ALT_INV_recv_opcode~5_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode~6_combout\,
	combout => \UniControl_component|Mux20~1_combout\);

-- Location: LABCELL_X36_Y3_N12
\UniControl_component|Mux37~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux37~2_combout\ = ( \UniControl_component|recv_opcode~5_combout\ & ( \UniControl_component|recv_opcode~6_combout\ & ( (!\UniControl_component|WideNor3~0_combout\ & (!\UniControl_component|recv_opcode~8_combout\ & 
-- !\UniControl_component|recv_opcode~7_combout\)) ) ) ) # ( !\UniControl_component|recv_opcode~5_combout\ & ( \UniControl_component|recv_opcode~6_combout\ & ( (!\UniControl_component|WideNor3~0_combout\ & (!\UniControl_component|recv_opcode~8_combout\ & 
-- !\UniControl_component|recv_opcode~7_combout\)) ) ) ) # ( \UniControl_component|recv_opcode~5_combout\ & ( !\UniControl_component|recv_opcode~6_combout\ & ( (!\UniControl_component|WideNor3~0_combout\ & (!\UniControl_component|recv_opcode~8_combout\ & 
-- !\UniControl_component|recv_opcode~7_combout\)) ) ) ) # ( !\UniControl_component|recv_opcode~5_combout\ & ( !\UniControl_component|recv_opcode~6_combout\ & ( (!\UniControl_component|WideNor2~0_combout\ & (!\UniControl_component|recv_opcode~8_combout\ & 
-- !\UniControl_component|recv_opcode~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000101000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_WideNor3~0_combout\,
	datab => \UniControl_component|ALT_INV_WideNor2~0_combout\,
	datac => \UniControl_component|ALT_INV_recv_opcode~8_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode~7_combout\,
	datae => \UniControl_component|ALT_INV_recv_opcode~5_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode~6_combout\,
	combout => \UniControl_component|Mux37~2_combout\);

-- Location: LABCELL_X36_Y3_N6
\UniControl_component|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux20~0_combout\ = ( \UniControl_component|recv_opcode\(0) & ( (!\rom8_component|data[5]~19_combout\ & (!\rom8_component|data[4]~18_combout\ & \UniControl_component|state.estadoS0~q\)) ) ) # ( !\UniControl_component|recv_opcode\(0) & 
-- ( (!\UniControl_component|state.estadoS0~q\ & (((!\UniControl_component|recv_opcode\(1))))) # (\UniControl_component|state.estadoS0~q\ & (!\rom8_component|data[5]~19_combout\ & ((!\rom8_component|data[4]~18_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010100000110011001010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom8_component|ALT_INV_data[5]~19_combout\,
	datab => \UniControl_component|ALT_INV_recv_opcode\(1),
	datac => \rom8_component|ALT_INV_data[4]~18_combout\,
	datad => \UniControl_component|ALT_INV_state.estadoS0~q\,
	dataf => \UniControl_component|ALT_INV_recv_opcode\(0),
	combout => \UniControl_component|Mux20~0_combout\);

-- Location: LABCELL_X36_Y3_N48
\UniControl_component|Mux20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux20~2_combout\ = ( \UniControl_component|recv_opcode~4_combout\ & ( \UniControl_component|Mux20~0_combout\ & ( (\UniControl_component|Mux37~2_combout\ & !\UniControl_component|recv_opcode~3_combout\) ) ) ) # ( 
-- !\UniControl_component|recv_opcode~4_combout\ & ( \UniControl_component|Mux20~0_combout\ & ( (!\UniControl_component|WideNor0~0_combout\) # ((\UniControl_component|Mux20~1_combout\ & \UniControl_component|recv_opcode~3_combout\)) ) ) ) # ( 
-- \UniControl_component|recv_opcode~4_combout\ & ( !\UniControl_component|Mux20~0_combout\ & ( (\UniControl_component|Mux37~2_combout\ & !\UniControl_component|recv_opcode~3_combout\) ) ) ) # ( !\UniControl_component|recv_opcode~4_combout\ & ( 
-- !\UniControl_component|Mux20~0_combout\ & ( (!\UniControl_component|recv_opcode~3_combout\ & ((!\UniControl_component|WideNor0~0_combout\))) # (\UniControl_component|recv_opcode~3_combout\ & (\UniControl_component|Mux20~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010101001100110000000011110000111101010011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_Mux20~1_combout\,
	datab => \UniControl_component|ALT_INV_Mux37~2_combout\,
	datac => \UniControl_component|ALT_INV_WideNor0~0_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode~3_combout\,
	datae => \UniControl_component|ALT_INV_recv_opcode~4_combout\,
	dataf => \UniControl_component|ALT_INV_Mux20~0_combout\,
	combout => \UniControl_component|Mux20~2_combout\);

-- Location: LABCELL_X36_Y3_N39
\UniControl_component|ula_fonteA$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|ula_fonteA$latch~combout\ = ( \UniControl_component|Mux20~2_combout\ & ( (\ProIAEnableFlag~input_o\ & ((\UniControl_component|Mux21~4_combout\) # (\UniControl_component|ula_fonteA$latch~combout\))) ) ) # ( 
-- !\UniControl_component|Mux20~2_combout\ & ( (\UniControl_component|ula_fonteA$latch~combout\ & (\ProIAEnableFlag~input_o\ & !\UniControl_component|Mux21~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_ula_fonteA$latch~combout\,
	datac => \ALT_INV_ProIAEnableFlag~input_o\,
	datad => \UniControl_component|ALT_INV_Mux21~4_combout\,
	dataf => \UniControl_component|ALT_INV_Mux20~2_combout\,
	combout => \UniControl_component|ula_fonteA$latch~combout\);

-- Location: LABCELL_X40_Y3_N30
\muxA_component|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxA_component|saida[4]~4_combout\ = ( \pc_component|saidaPC\(4) & ( ((!\UniControl_component|ula_fonteA$latch~combout\ & \UniControl_component|esc_reg_952~combout\)) # (\breg8_component|SaidaA\(4)) ) ) # ( !\pc_component|saidaPC\(4) & ( 
-- (\breg8_component|SaidaA\(4) & ((!\UniControl_component|esc_reg_952~combout\) # (\UniControl_component|ula_fonteA$latch~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000101010101010000010101010101111101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \breg8_component|ALT_INV_SaidaA\(4),
	datac => \UniControl_component|ALT_INV_ula_fonteA$latch~combout\,
	datad => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	dataf => \pc_component|ALT_INV_saidaPC\(4),
	combout => \muxA_component|saida[4]~4_combout\);

-- Location: MLABCELL_X39_Y4_N18
\ula_component|resultado~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado~13_combout\ = ( \ula_component|aux_mult\(4) & ( \ula_component|cont~7_combout\ & ( (!\ula_component|resultado[1]~3_combout\ & (!\muxA_component|saida[4]~4_combout\ $ (((!\muxB_component|Mux3~0_combout\) # 
-- (!\ula_component|resultado[1]~2_combout\))))) # (\ula_component|resultado[1]~3_combout\ & (((\ula_component|resultado[1]~2_combout\)) # (\muxB_component|Mux3~0_combout\))) ) ) ) # ( !\ula_component|aux_mult\(4) & ( \ula_component|cont~7_combout\ & ( 
-- (!\muxB_component|Mux3~0_combout\ & (\muxA_component|saida[4]~4_combout\ & (!\ula_component|resultado[1]~3_combout\))) # (\muxB_component|Mux3~0_combout\ & (!\ula_component|resultado[1]~2_combout\ $ (((!\muxA_component|saida[4]~4_combout\ & 
-- !\ula_component|resultado[1]~3_combout\))))) ) ) ) # ( \ula_component|aux_mult\(4) & ( !\ula_component|cont~7_combout\ & ( (!\muxB_component|Mux3~0_combout\ & (!\ula_component|resultado[1]~2_combout\ $ (((!\muxA_component|saida[4]~4_combout\) # 
-- (\ula_component|resultado[1]~3_combout\))))) # (\muxB_component|Mux3~0_combout\ & (((\ula_component|resultado[1]~3_combout\)) # (\muxA_component|saida[4]~4_combout\))) ) ) ) # ( !\ula_component|aux_mult\(4) & ( !\ula_component|cont~7_combout\ & ( 
-- (!\ula_component|resultado[1]~3_combout\ & (!\muxA_component|saida[4]~4_combout\ $ (((!\ula_component|resultado[1]~2_combout\) # (\muxB_component|Mux3~0_combout\))))) # (\ula_component|resultado[1]~3_combout\ & (\muxB_component|Mux3~0_combout\ & 
-- ((!\ula_component|resultado[1]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010110010000001101011001111100110101011000000011010101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxB_component|ALT_INV_Mux3~0_combout\,
	datab => \muxA_component|ALT_INV_saida[4]~4_combout\,
	datac => \ula_component|ALT_INV_resultado[1]~3_combout\,
	datad => \ula_component|ALT_INV_resultado[1]~2_combout\,
	datae => \ula_component|ALT_INV_aux_mult\(4),
	dataf => \ula_component|ALT_INV_cont~7_combout\,
	combout => \ula_component|resultado~13_combout\);

-- Location: MLABCELL_X39_Y4_N24
\ula_component|resultado~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_component|resultado~14_combout\ = ( \ula_component|resultado[1]~1_combout\ & ( \ula_component|cont~6_combout\ & ( (!\muxA_component|saida[4]~4_combout\ & (!\ula_component|resultado[1]~0_combout\ $ (\muxB_component|Mux3~0_combout\))) # 
-- (\muxA_component|saida[4]~4_combout\ & ((\muxB_component|Mux3~0_combout\) # (\ula_component|resultado[1]~0_combout\))) ) ) ) # ( !\ula_component|resultado[1]~1_combout\ & ( \ula_component|cont~6_combout\ & ( (!\ula_component|resultado[1]~0_combout\ & 
-- (((\ula_component|resultado~13_combout\)))) # (\ula_component|resultado[1]~0_combout\ & (\muxA_component|saida[4]~4_combout\ & ((\muxB_component|Mux3~0_combout\)))) ) ) ) # ( \ula_component|resultado[1]~1_combout\ & ( !\ula_component|cont~6_combout\ & ( 
-- (!\muxA_component|saida[4]~4_combout\ & ((\muxB_component|Mux3~0_combout\))) # (\muxA_component|saida[4]~4_combout\ & ((!\muxB_component|Mux3~0_combout\) # (\ula_component|resultado[1]~0_combout\))) ) ) ) # ( !\ula_component|resultado[1]~1_combout\ & ( 
-- !\ula_component|cont~6_combout\ & ( (!\ula_component|resultado[1]~0_combout\ & (((\ula_component|resultado~13_combout\)))) # (\ula_component|resultado[1]~0_combout\ & (\muxA_component|saida[4]~4_combout\ & ((\muxB_component|Mux3~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101010101011011101100001100000111011001100101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxA_component|ALT_INV_saida[4]~4_combout\,
	datab => \ula_component|ALT_INV_resultado[1]~0_combout\,
	datac => \ula_component|ALT_INV_resultado~13_combout\,
	datad => \muxB_component|ALT_INV_Mux3~0_combout\,
	datae => \ula_component|ALT_INV_resultado[1]~1_combout\,
	dataf => \ula_component|ALT_INV_cont~6_combout\,
	combout => \ula_component|resultado~14_combout\);

-- Location: FF_X39_Y4_N26
\ula_component|resultado[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \ula_component|resultado~14_combout\,
	ena => \ula_component|resultado[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_component|resultado\(4));

-- Location: FF_X35_Y1_N26
\ULAout_component|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \ula_component|resultado\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULAout_component|Q\(4));

-- Location: LABCELL_X35_Y1_N24
\muxPUJ_component|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPUJ_component|Mux4~0_combout\ = (\UniControl_component|pc_flag~1_combout\ & ((!\UniControl_component|pc_cond~2_combout\ & (\ULAout_component|Q\(4))) # (\UniControl_component|pc_cond~2_combout\ & ((\ula_component|resultado\(4))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001100000010000100110000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_pc_cond~2_combout\,
	datab => \UniControl_component|ALT_INV_pc_flag~1_combout\,
	datac => \ULAout_component|ALT_INV_Q\(4),
	datad => \ula_component|ALT_INV_resultado\(4),
	combout => \muxPUJ_component|Mux4~0_combout\);

-- Location: LABCELL_X35_Y1_N33
\muxPUJ_component|saida[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPUJ_component|saida[4]~12_combout\ = ( \muxPUJ_component|Mux4~0_combout\ ) # ( !\muxPUJ_component|Mux4~0_combout\ & ( !\muxPUJ_component|Mux8~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxPUJ_component|ALT_INV_Mux8~0_combout\,
	dataf => \muxPUJ_component|ALT_INV_Mux4~0_combout\,
	combout => \muxPUJ_component|saida[4]~12_combout\);

-- Location: FF_X35_Y3_N17
\pc_component|saidaPC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \muxPUJ_component|saida[4]~12_combout\,
	sload => VCC,
	ena => \Or_component|R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|saidaPC\(4));

-- Location: LABCELL_X35_Y3_N9
\rom8_component|data[5]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom8_component|data[5]~19_combout\ = ( \pc_component|saidaPC\(1) ) # ( !\pc_component|saidaPC\(1) & ( (((\pc_component|saidaPC\(7)) # (\pc_component|saidaPC\(6))) # (\pc_component|saidaPC\(4))) # (\pc_component|saidaPC\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|ALT_INV_saidaPC\(5),
	datab => \pc_component|ALT_INV_saidaPC\(4),
	datac => \pc_component|ALT_INV_saidaPC\(6),
	datad => \pc_component|ALT_INV_saidaPC\(7),
	dataf => \pc_component|ALT_INV_saidaPC\(1),
	combout => \rom8_component|data[5]~19_combout\);

-- Location: LABCELL_X35_Y3_N3
\UniControl_component|recv_opcode[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|recv_opcode\(1) = ( \rom8_component|data[5]~19_combout\ & ( (\UniControl_component|recv_opcode\(1)) # (\UniControl_component|recv_opcode[0]~9_combout\) ) ) # ( !\rom8_component|data[5]~19_combout\ & ( 
-- (!\UniControl_component|recv_opcode[0]~9_combout\ & \UniControl_component|recv_opcode\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_recv_opcode[0]~9_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode\(1),
	dataf => \rom8_component|ALT_INV_data[5]~19_combout\,
	combout => \UniControl_component|recv_opcode\(1));

-- Location: MLABCELL_X34_Y3_N54
\UniControl_component|tempState.estadoS9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|tempState.estadoS9~1_combout\ = ( \UniControl_component|tempState.estadoS9~0_combout\ & ( (!\UniControl_component|recv_opcode~1_combout\ & (\ProIAEnableFlag~input_o\ & (\UniControl_component|state.estadoS1~q\ & 
-- \UniControl_component|recv_opcode~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	datab => \ALT_INV_ProIAEnableFlag~input_o\,
	datac => \UniControl_component|ALT_INV_state.estadoS1~q\,
	datad => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	dataf => \UniControl_component|ALT_INV_tempState.estadoS9~0_combout\,
	combout => \UniControl_component|tempState.estadoS9~1_combout\);

-- Location: FF_X34_Y3_N56
\UniControl_component|state.estadoS9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \UniControl_component|tempState.estadoS9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UniControl_component|state.estadoS9~q\);

-- Location: LABCELL_X33_Y2_N21
\UniControl_component|Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux38~0_combout\ = ( \rom8_component|data[5]~19_combout\ & ( \UniControl_component|recv_opcode\(3) & ( (\UniControl_component|state.estadoS9~q\ & ((!\UniControl_component|state.estadoS0~q\ & (\UniControl_component|recv_opcode\(1))) # 
-- (\UniControl_component|state.estadoS0~q\ & ((\rom8_component|data[7]~21_combout\))))) ) ) ) # ( !\rom8_component|data[5]~19_combout\ & ( \UniControl_component|recv_opcode\(3) & ( (\UniControl_component|recv_opcode\(1) & 
-- (!\UniControl_component|state.estadoS0~q\ & \UniControl_component|state.estadoS9~q\)) ) ) ) # ( \rom8_component|data[5]~19_combout\ & ( !\UniControl_component|recv_opcode\(3) & ( (\rom8_component|data[7]~21_combout\ & 
-- (\UniControl_component|state.estadoS0~q\ & \UniControl_component|state.estadoS9~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000010100000000000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_recv_opcode\(1),
	datab => \rom8_component|ALT_INV_data[7]~21_combout\,
	datac => \UniControl_component|ALT_INV_state.estadoS0~q\,
	datad => \UniControl_component|ALT_INV_state.estadoS9~q\,
	datae => \rom8_component|ALT_INV_data[5]~19_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode\(3),
	combout => \UniControl_component|Mux38~0_combout\);

-- Location: LABCELL_X33_Y2_N42
\UniControl_component|pc_flag$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|pc_flag$latch~combout\ = ( \UniControl_component|Mux21~4_combout\ & ( \UniControl_component|pc_flag$latch~combout\ & ( (\ProIAEnableFlag~input_o\ & \UniControl_component|Mux38~0_combout\) ) ) ) # ( 
-- !\UniControl_component|Mux21~4_combout\ & ( \UniControl_component|pc_flag$latch~combout\ & ( \ProIAEnableFlag~input_o\ ) ) ) # ( \UniControl_component|Mux21~4_combout\ & ( !\UniControl_component|pc_flag$latch~combout\ & ( (\ProIAEnableFlag~input_o\ & 
-- \UniControl_component|Mux38~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010101010101010101010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ProIAEnableFlag~input_o\,
	datac => \UniControl_component|ALT_INV_Mux38~0_combout\,
	datae => \UniControl_component|ALT_INV_Mux21~4_combout\,
	dataf => \UniControl_component|ALT_INV_pc_flag$latch~combout\,
	combout => \UniControl_component|pc_flag$latch~combout\);

-- Location: LABCELL_X35_Y1_N9
\UniControl_component|pc_flag~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|pc_flag~1_combout\ = ( \UniControl_component|esc_reg_952~combout\ & ( !\UniControl_component|pc_flag$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_pc_flag$latch~combout\,
	dataf => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	combout => \UniControl_component|pc_flag~1_combout\);

-- Location: LABCELL_X35_Y1_N42
\muxPUJ_component|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPUJ_component|Mux6~0_combout\ = ( \ULAout_component|Q\(6) & ( (\UniControl_component|pc_flag~1_combout\ & ((!\UniControl_component|pc_cond~2_combout\) # (\ula_component|resultado\(6)))) ) ) # ( !\ULAout_component|Q\(6) & ( 
-- (\UniControl_component|pc_cond~2_combout\ & (\UniControl_component|pc_flag~1_combout\ & \ula_component|resultado\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100100010001100110010001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_pc_cond~2_combout\,
	datab => \UniControl_component|ALT_INV_pc_flag~1_combout\,
	datad => \ula_component|ALT_INV_resultado\(6),
	dataf => \ULAout_component|ALT_INV_Q\(6),
	combout => \muxPUJ_component|Mux6~0_combout\);

-- Location: LABCELL_X35_Y1_N30
\muxPUJ_component|saida[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPUJ_component|saida[6]~14_combout\ = ( \muxPUJ_component|Mux6~0_combout\ ) # ( !\muxPUJ_component|Mux6~0_combout\ & ( !\muxPUJ_component|Mux8~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxPUJ_component|ALT_INV_Mux8~0_combout\,
	dataf => \muxPUJ_component|ALT_INV_Mux6~0_combout\,
	combout => \muxPUJ_component|saida[6]~14_combout\);

-- Location: FF_X35_Y3_N14
\pc_component|saidaPC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \muxPUJ_component|saida[6]~14_combout\,
	sload => VCC,
	ena => \Or_component|R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|saidaPC\(6));

-- Location: MLABCELL_X34_Y3_N39
\rom8_component|data[6]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom8_component|data[6]~20_combout\ = ( \pc_component|saidaPC\(4) ) # ( !\pc_component|saidaPC\(4) & ( (((\pc_component|saidaPC\(5)) # (\pc_component|saidaPC\(2))) # (\pc_component|saidaPC\(6))) # (\pc_component|saidaPC\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|ALT_INV_saidaPC\(7),
	datab => \pc_component|ALT_INV_saidaPC\(6),
	datac => \pc_component|ALT_INV_saidaPC\(2),
	datad => \pc_component|ALT_INV_saidaPC\(5),
	dataf => \pc_component|ALT_INV_saidaPC\(4),
	combout => \rom8_component|data[6]~20_combout\);

-- Location: MLABCELL_X34_Y3_N18
\UniControl_component|recv_opcode~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|recv_opcode~3_combout\ = ( \UniControl_component|recv_opcode\(2) & ( (!\UniControl_component|state.estadoS0~q\) # (\rom8_component|data[6]~20_combout\) ) ) # ( !\UniControl_component|recv_opcode\(2) & ( 
-- (\rom8_component|data[6]~20_combout\ & \UniControl_component|state.estadoS0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rom8_component|ALT_INV_data[6]~20_combout\,
	datad => \UniControl_component|ALT_INV_state.estadoS0~q\,
	dataf => \UniControl_component|ALT_INV_recv_opcode\(2),
	combout => \UniControl_component|recv_opcode~3_combout\);

-- Location: LABCELL_X35_Y3_N42
\UniControl_component|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux6~0_combout\ = ( \UniControl_component|recv_opcode~2_combout\ & ( (\UniControl_component|recv_opcode~4_combout\ & ((\UniControl_component|recv_opcode~1_combout\) # (\UniControl_component|recv_opcode~3_combout\))) ) ) # ( 
-- !\UniControl_component|recv_opcode~2_combout\ & ( (\UniControl_component|recv_opcode~3_combout\ & \UniControl_component|recv_opcode~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_recv_opcode~3_combout\,
	datac => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode~4_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	combout => \UniControl_component|Mux6~0_combout\);

-- Location: LABCELL_X35_Y3_N45
\UniControl_component|esc_reg_952\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|esc_reg_952~combout\ = ( \UniControl_component|Mux6~0_combout\ & ( (\UniControl_component|esc_reg_952~combout\ & (\ProIAEnableFlag~input_o\ & !\UniControl_component|Mux21~4_combout\)) ) ) # ( !\UniControl_component|Mux6~0_combout\ & 
-- ( (\ProIAEnableFlag~input_o\ & ((\UniControl_component|Mux21~4_combout\) # (\UniControl_component|esc_reg_952~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datac => \ALT_INV_ProIAEnableFlag~input_o\,
	datad => \UniControl_component|ALT_INV_Mux21~4_combout\,
	dataf => \UniControl_component|ALT_INV_Mux6~0_combout\,
	combout => \UniControl_component|esc_reg_952~combout\);

-- Location: LABCELL_X35_Y1_N36
\UniControl_component|pc_cond~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|pc_cond~2_combout\ = ( \UniControl_component|esc_reg_952~combout\ & ( !\UniControl_component|pc_cond$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_pc_cond$latch~combout\,
	dataf => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	combout => \UniControl_component|pc_cond~2_combout\);

-- Location: LABCELL_X35_Y1_N45
\muxPUJ_component|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPUJ_component|Mux7~0_combout\ = (\UniControl_component|pc_flag~1_combout\ & ((!\UniControl_component|pc_cond~2_combout\ & (\ULAout_component|Q\(7))) # (\UniControl_component|pc_cond~2_combout\ & ((\ula_component|resultado\(7))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001100000010000100110000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_pc_cond~2_combout\,
	datab => \UniControl_component|ALT_INV_pc_flag~1_combout\,
	datac => \ULAout_component|ALT_INV_Q\(7),
	datad => \ula_component|ALT_INV_resultado\(7),
	combout => \muxPUJ_component|Mux7~0_combout\);

-- Location: LABCELL_X35_Y1_N54
\muxPUJ_component|saida[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPUJ_component|saida[7]~15_combout\ = ( \muxPUJ_component|Mux7~0_combout\ ) # ( !\muxPUJ_component|Mux7~0_combout\ & ( !\muxPUJ_component|Mux8~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxPUJ_component|ALT_INV_Mux8~0_combout\,
	dataf => \muxPUJ_component|ALT_INV_Mux7~0_combout\,
	combout => \muxPUJ_component|saida[7]~15_combout\);

-- Location: FF_X35_Y3_N41
\pc_component|saidaPC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \muxPUJ_component|saida[7]~15_combout\,
	sload => VCC,
	ena => \Or_component|R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|saidaPC\(7));

-- Location: LABCELL_X35_Y3_N24
\rom8_component|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom8_component|Mux1~0_combout\ = ( !\pc_component|saidaPC\(4) & ( (!\pc_component|saidaPC\(7) & (!\pc_component|saidaPC\(5) & !\pc_component|saidaPC\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc_component|ALT_INV_saidaPC\(7),
	datac => \pc_component|ALT_INV_saidaPC\(5),
	datad => \pc_component|ALT_INV_saidaPC\(6),
	dataf => \pc_component|ALT_INV_saidaPC\(4),
	combout => \rom8_component|Mux1~0_combout\);

-- Location: LABCELL_X35_Y1_N21
\muxPUJ_component|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPUJ_component|Mux3~0_combout\ = ( \ula_component|resultado\(3) & ( (!\UniControl_component|pc_flag~1_combout\ & (!\rom8_component|Mux1~0_combout\)) # (\UniControl_component|pc_flag~1_combout\ & (((\UniControl_component|pc_cond~2_combout\) # 
-- (\ULAout_component|Q\(3))))) ) ) # ( !\ula_component|resultado\(3) & ( (!\UniControl_component|pc_flag~1_combout\ & (!\rom8_component|Mux1~0_combout\)) # (\UniControl_component|pc_flag~1_combout\ & (((\ULAout_component|Q\(3) & 
-- !\UniControl_component|pc_cond~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001110100000101000111010111110100011101000001010001110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom8_component|ALT_INV_Mux1~0_combout\,
	datab => \ULAout_component|ALT_INV_Q\(3),
	datac => \UniControl_component|ALT_INV_pc_flag~1_combout\,
	datad => \UniControl_component|ALT_INV_pc_cond~2_combout\,
	datae => \ula_component|ALT_INV_resultado\(3),
	combout => \muxPUJ_component|Mux3~0_combout\);

-- Location: LABCELL_X35_Y1_N0
\muxPUJ_component|saida[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPUJ_component|saida[3]~11_combout\ = ( \muxPUJ_component|Mux3~0_combout\ ) # ( !\muxPUJ_component|Mux3~0_combout\ & ( !\muxPUJ_component|Mux8~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxPUJ_component|ALT_INV_Mux8~0_combout\,
	dataf => \muxPUJ_component|ALT_INV_Mux3~0_combout\,
	combout => \muxPUJ_component|saida[3]~11_combout\);

-- Location: FF_X35_Y3_N32
\pc_component|saidaPC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \muxPUJ_component|saida[3]~11_combout\,
	sload => VCC,
	ena => \Or_component|R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|saidaPC\(3));

-- Location: LABCELL_X35_Y3_N36
\rom8_component|data[7]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom8_component|data[7]~21_combout\ = ( \pc_component|saidaPC\(4) ) # ( !\pc_component|saidaPC\(4) & ( (((\pc_component|saidaPC\(7)) # (\pc_component|saidaPC\(6))) # (\pc_component|saidaPC\(3))) # (\pc_component|saidaPC\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|ALT_INV_saidaPC\(5),
	datab => \pc_component|ALT_INV_saidaPC\(3),
	datac => \pc_component|ALT_INV_saidaPC\(6),
	datad => \pc_component|ALT_INV_saidaPC\(7),
	dataf => \pc_component|ALT_INV_saidaPC\(4),
	combout => \rom8_component|data[7]~21_combout\);

-- Location: MLABCELL_X34_Y3_N6
\UniControl_component|Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux37~0_combout\ = ( \rom8_component|data[6]~20_combout\ & ( (!\UniControl_component|state.estadoS0~q\ & (((\UniControl_component|recv_opcode\(2) & !\UniControl_component|recv_opcode\(3))))) # (\UniControl_component|state.estadoS0~q\ 
-- & (!\rom8_component|data[7]~21_combout\)) ) ) # ( !\rom8_component|data[6]~20_combout\ & ( (!\UniControl_component|state.estadoS0~q\ & (\UniControl_component|recv_opcode\(2) & !\UniControl_component|recv_opcode\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001001110010001000100111001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS0~q\,
	datab => \rom8_component|ALT_INV_data[7]~21_combout\,
	datac => \UniControl_component|ALT_INV_recv_opcode\(2),
	datad => \UniControl_component|ALT_INV_recv_opcode\(3),
	dataf => \rom8_component|ALT_INV_data[6]~20_combout\,
	combout => \UniControl_component|Mux37~0_combout\);

-- Location: MLABCELL_X34_Y3_N36
\UniControl_component|Mux37~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux37~1_combout\ = ( \UniControl_component|Mux22~0_combout\ & ( (\UniControl_component|Mux37~0_combout\ & \UniControl_component|state.estadoS8~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_Mux37~0_combout\,
	datad => \UniControl_component|ALT_INV_state.estadoS8~q\,
	dataf => \UniControl_component|ALT_INV_Mux22~0_combout\,
	combout => \UniControl_component|Mux37~1_combout\);

-- Location: MLABCELL_X34_Y3_N45
\UniControl_component|pc_cond$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|pc_cond$latch~combout\ = ( \UniControl_component|Mux37~1_combout\ & ( (\ProIAEnableFlag~input_o\ & ((\UniControl_component|pc_cond$latch~combout\) # (\UniControl_component|Mux21~4_combout\))) ) ) # ( 
-- !\UniControl_component|Mux37~1_combout\ & ( (\ProIAEnableFlag~input_o\ & (!\UniControl_component|Mux21~4_combout\ & \UniControl_component|pc_cond$latch~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ProIAEnableFlag~input_o\,
	datac => \UniControl_component|ALT_INV_Mux21~4_combout\,
	datad => \UniControl_component|ALT_INV_pc_cond$latch~combout\,
	dataf => \UniControl_component|ALT_INV_Mux37~1_combout\,
	combout => \UniControl_component|pc_cond$latch~combout\);

-- Location: LABCELL_X35_Y1_N39
\muxPUJ_component|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPUJ_component|Mux8~0_combout\ = ( \UniControl_component|esc_reg_952~combout\ & ( (!\UniControl_component|pc_cond$latch~combout\) # (!\UniControl_component|pc_flag$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_pc_cond$latch~combout\,
	datac => \UniControl_component|ALT_INV_pc_flag$latch~combout\,
	dataf => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	combout => \muxPUJ_component|Mux8~0_combout\);

-- Location: LABCELL_X35_Y1_N27
\muxPUJ_component|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPUJ_component|Mux5~0_combout\ = ( \UniControl_component|pc_flag~1_combout\ & ( (!\UniControl_component|pc_cond~2_combout\ & (\ULAout_component|Q\(5))) # (\UniControl_component|pc_cond~2_combout\ & ((\ula_component|resultado\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_pc_cond~2_combout\,
	datac => \ULAout_component|ALT_INV_Q\(5),
	datad => \ula_component|ALT_INV_resultado\(5),
	dataf => \UniControl_component|ALT_INV_pc_flag~1_combout\,
	combout => \muxPUJ_component|Mux5~0_combout\);

-- Location: LABCELL_X35_Y1_N3
\muxPUJ_component|saida[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxPUJ_component|saida[5]~13_combout\ = ( \muxPUJ_component|Mux5~0_combout\ ) # ( !\muxPUJ_component|Mux5~0_combout\ & ( !\muxPUJ_component|Mux8~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxPUJ_component|ALT_INV_Mux8~0_combout\,
	dataf => \muxPUJ_component|ALT_INV_Mux5~0_combout\,
	combout => \muxPUJ_component|saida[5]~13_combout\);

-- Location: FF_X35_Y3_N29
\pc_component|saidaPC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	asdata => \muxPUJ_component|saida[5]~13_combout\,
	sload => VCC,
	ena => \Or_component|R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_component|saidaPC\(5));

-- Location: LABCELL_X35_Y3_N57
\rom8_component|data[4]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom8_component|data[4]~18_combout\ = ( \pc_component|saidaPC\(0) ) # ( !\pc_component|saidaPC\(0) & ( (((\pc_component|saidaPC\(7)) # (\pc_component|saidaPC\(6))) # (\pc_component|saidaPC\(4))) # (\pc_component|saidaPC\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|ALT_INV_saidaPC\(5),
	datab => \pc_component|ALT_INV_saidaPC\(4),
	datac => \pc_component|ALT_INV_saidaPC\(6),
	datad => \pc_component|ALT_INV_saidaPC\(7),
	dataf => \pc_component|ALT_INV_saidaPC\(0),
	combout => \rom8_component|data[4]~18_combout\);

-- Location: LABCELL_X35_Y3_N48
\UniControl_component|recv_opcode[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|recv_opcode\(0) = ( \rom8_component|data[4]~18_combout\ & ( (\UniControl_component|recv_opcode[0]~9_combout\) # (\UniControl_component|recv_opcode\(0)) ) ) # ( !\rom8_component|data[4]~18_combout\ & ( 
-- (\UniControl_component|recv_opcode\(0) & !\UniControl_component|recv_opcode[0]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_recv_opcode\(0),
	datad => \UniControl_component|ALT_INV_recv_opcode[0]~9_combout\,
	dataf => \rom8_component|ALT_INV_data[4]~18_combout\,
	combout => \UniControl_component|recv_opcode\(0));

-- Location: LABCELL_X35_Y3_N54
\UniControl_component|recv_opcode~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|recv_opcode~1_combout\ = ( \rom8_component|data[4]~18_combout\ & ( (\UniControl_component|state.estadoS0~q\) # (\UniControl_component|recv_opcode\(0)) ) ) # ( !\rom8_component|data[4]~18_combout\ & ( 
-- (\UniControl_component|recv_opcode\(0) & !\UniControl_component|state.estadoS0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_recv_opcode\(0),
	datad => \UniControl_component|ALT_INV_state.estadoS0~q\,
	dataf => \rom8_component|ALT_INV_data[4]~18_combout\,
	combout => \UniControl_component|recv_opcode~1_combout\);

-- Location: MLABCELL_X34_Y3_N30
\UniControl_component|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux15~0_combout\ = ( !\UniControl_component|recv_opcode~2_combout\ & ( \UniControl_component|recv_opcode~3_combout\ & ( (!\UniControl_component|recv_opcode~1_combout\ & (\ProIAEnableFlag~input_o\ & 
-- (!\UniControl_component|recv_opcode~4_combout\ & \UniControl_component|state.estadoS1~q\))) ) ) ) # ( \UniControl_component|recv_opcode~2_combout\ & ( !\UniControl_component|recv_opcode~3_combout\ & ( (\ProIAEnableFlag~input_o\ & 
-- (!\UniControl_component|recv_opcode~4_combout\ & \UniControl_component|state.estadoS1~q\)) ) ) ) # ( !\UniControl_component|recv_opcode~2_combout\ & ( !\UniControl_component|recv_opcode~3_combout\ & ( (\ProIAEnableFlag~input_o\ & 
-- (!\UniControl_component|recv_opcode~4_combout\ & \UniControl_component|state.estadoS1~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	datab => \ALT_INV_ProIAEnableFlag~input_o\,
	datac => \UniControl_component|ALT_INV_recv_opcode~4_combout\,
	datad => \UniControl_component|ALT_INV_state.estadoS1~q\,
	datae => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode~3_combout\,
	combout => \UniControl_component|Mux15~0_combout\);

-- Location: FF_X34_Y3_N32
\UniControl_component|state.estadoS6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \UniControl_component|Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UniControl_component|state.estadoS6~q\);

-- Location: MLABCELL_X34_Y3_N57
\UniControl_component|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux16~0_combout\ = ( \UniControl_component|Mux32~0_combout\ & ( (\ProIAEnableFlag~input_o\ & \UniControl_component|state.estadoS6~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ProIAEnableFlag~input_o\,
	datac => \UniControl_component|ALT_INV_state.estadoS6~q\,
	dataf => \UniControl_component|ALT_INV_Mux32~0_combout\,
	combout => \UniControl_component|Mux16~0_combout\);

-- Location: FF_X34_Y3_N59
\UniControl_component|state.estadoS7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \UniControl_component|Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UniControl_component|state.estadoS7~q\);

-- Location: MLABCELL_X34_Y4_N57
\UniControl_component|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux9~2_combout\ = ( \UniControl_component|state.estadoS1~q\ & ( !\UniControl_component|state.estadoS4~q\ ) ) # ( !\UniControl_component|state.estadoS1~q\ & ( (!\UniControl_component|state.estadoS4~q\ & 
-- (((\UniControl_component|state.estadoS3~q\) # (\UniControl_component|state.estadoS2~q\)) # (\UniControl_component|state.estadoS0~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000000011111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS0~q\,
	datab => \UniControl_component|ALT_INV_state.estadoS2~q\,
	datac => \UniControl_component|ALT_INV_state.estadoS3~q\,
	datad => \UniControl_component|ALT_INV_state.estadoS4~q\,
	dataf => \UniControl_component|ALT_INV_state.estadoS1~q\,
	combout => \UniControl_component|Mux9~2_combout\);

-- Location: LABCELL_X33_Y3_N42
\UniControl_component|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux9~3_combout\ = ( !\UniControl_component|state.estadoS5~q\ & ( ((\UniControl_component|state.estadoS1~q\) # (\UniControl_component|state.estadoS2~q\)) # (\UniControl_component|state.estadoS0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS0~q\,
	datac => \UniControl_component|ALT_INV_state.estadoS2~q\,
	datad => \UniControl_component|ALT_INV_state.estadoS1~q\,
	dataf => \UniControl_component|ALT_INV_state.estadoS5~q\,
	combout => \UniControl_component|Mux9~3_combout\);

-- Location: LABCELL_X35_Y3_N12
\UniControl_component|Mux9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux9~4_combout\ = ( \UniControl_component|recv_opcode~1_combout\ & ( \UniControl_component|recv_opcode~3_combout\ & ( ((!\UniControl_component|Mux9~2_combout\ & \UniControl_component|recv_opcode~2_combout\)) # 
-- (\UniControl_component|recv_opcode~4_combout\) ) ) ) # ( !\UniControl_component|recv_opcode~1_combout\ & ( \UniControl_component|recv_opcode~3_combout\ & ( \UniControl_component|recv_opcode~4_combout\ ) ) ) # ( \UniControl_component|recv_opcode~1_combout\ 
-- & ( !\UniControl_component|recv_opcode~3_combout\ & ( (\UniControl_component|recv_opcode~4_combout\ & ((!\UniControl_component|Mux9~3_combout\) # (\UniControl_component|recv_opcode~2_combout\))) ) ) ) # ( !\UniControl_component|recv_opcode~1_combout\ & ( 
-- !\UniControl_component|recv_opcode~3_combout\ & ( (!\UniControl_component|Mux9~2_combout\ & (\UniControl_component|recv_opcode~4_combout\ & !\UniControl_component|recv_opcode~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000011000000111100001111000011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_Mux9~2_combout\,
	datab => \UniControl_component|ALT_INV_Mux9~3_combout\,
	datac => \UniControl_component|ALT_INV_recv_opcode~4_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	datae => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode~3_combout\,
	combout => \UniControl_component|Mux9~4_combout\);

-- Location: LABCELL_X36_Y3_N0
\UniControl_component|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux9~1_combout\ = ( \UniControl_component|recv_opcode~4_combout\ & ( \UniControl_component|recv_opcode~3_combout\ & ( (!\UniControl_component|state.estadoS1~q\ & (!\UniControl_component|state.estadoS0~q\ & 
-- ((\UniControl_component|recv_opcode~1_combout\) # (\UniControl_component|recv_opcode~2_combout\)))) ) ) ) # ( !\UniControl_component|recv_opcode~4_combout\ & ( \UniControl_component|recv_opcode~3_combout\ & ( (!\UniControl_component|state.estadoS1~q\ & 
-- (!\UniControl_component|state.estadoS0~q\ & (!\UniControl_component|recv_opcode~2_combout\ $ (!\UniControl_component|recv_opcode~1_combout\)))) ) ) ) # ( \UniControl_component|recv_opcode~4_combout\ & ( !\UniControl_component|recv_opcode~3_combout\ & ( 
-- (\UniControl_component|recv_opcode~2_combout\ & (!\UniControl_component|state.estadoS1~q\ & !\UniControl_component|state.estadoS0~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000000000001001000000000000100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	datab => \UniControl_component|ALT_INV_state.estadoS1~q\,
	datac => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	datad => \UniControl_component|ALT_INV_state.estadoS0~q\,
	datae => \UniControl_component|ALT_INV_recv_opcode~4_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode~3_combout\,
	combout => \UniControl_component|Mux9~1_combout\);

-- Location: LABCELL_X35_Y3_N33
\UniControl_component|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux9~0_combout\ = ( \UniControl_component|recv_opcode~3_combout\ & ( (!\UniControl_component|recv_opcode~2_combout\ & !\UniControl_component|recv_opcode~1_combout\) ) ) # ( !\UniControl_component|recv_opcode~3_combout\ & ( 
-- !\UniControl_component|recv_opcode~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_recv_opcode~4_combout\,
	datac => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode~3_combout\,
	combout => \UniControl_component|Mux9~0_combout\);

-- Location: LABCELL_X35_Y3_N0
\UniControl_component|Mux9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux9~5_combout\ = ( \UniControl_component|Mux9~0_combout\ & ( (((\UniControl_component|Mux9~1_combout\) # (\UniControl_component|WideNor0~combout\)) # (\UniControl_component|Mux9~4_combout\)) # 
-- (\UniControl_component|state.estadoS7~q\) ) ) # ( !\UniControl_component|Mux9~0_combout\ & ( (\UniControl_component|Mux9~1_combout\) # (\UniControl_component|Mux9~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS7~q\,
	datab => \UniControl_component|ALT_INV_Mux9~4_combout\,
	datac => \UniControl_component|ALT_INV_WideNor0~combout\,
	datad => \UniControl_component|ALT_INV_Mux9~1_combout\,
	dataf => \UniControl_component|ALT_INV_Mux9~0_combout\,
	combout => \UniControl_component|Mux9~5_combout\);

-- Location: FF_X35_Y3_N2
\UniControl_component|state.estadoS0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \UniControl_component|Mux9~5_combout\,
	sclr => \ALT_INV_ProIAEnableFlag~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UniControl_component|state.estadoS0~q\);

-- Location: MLABCELL_X34_Y3_N0
\UniControl_component|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux10~0_combout\ = ( !\UniControl_component|Mux6~0_combout\ & ( (\ProIAEnableFlag~input_o\ & \UniControl_component|state.estadoS0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ProIAEnableFlag~input_o\,
	datad => \UniControl_component|ALT_INV_state.estadoS0~q\,
	dataf => \UniControl_component|ALT_INV_Mux6~0_combout\,
	combout => \UniControl_component|Mux10~0_combout\);

-- Location: FF_X34_Y3_N2
\UniControl_component|state.estadoS1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ProIAClock~inputCLKENA0_outclk\,
	d => \UniControl_component|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UniControl_component|state.estadoS1~q\);

-- Location: MLABCELL_X34_Y3_N15
\UniControl_component|WideNor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|WideNor0~combout\ = ( !\UniControl_component|state.estadoS0~q\ & ( (!\UniControl_component|state.estadoS1~q\ & (!\UniControl_component|state.estadoS6~q\ & !\UniControl_component|state.estadoS7~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS1~q\,
	datac => \UniControl_component|ALT_INV_state.estadoS6~q\,
	datad => \UniControl_component|ALT_INV_state.estadoS7~q\,
	dataf => \UniControl_component|ALT_INV_state.estadoS0~q\,
	combout => \UniControl_component|WideNor0~combout\);

-- Location: MLABCELL_X34_Y4_N48
\UniControl_component|WideNor2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|WideNor2~combout\ = ( !\UniControl_component|state.estadoS1~q\ & ( (!\UniControl_component|state.estadoS0~q\ & (!\UniControl_component|state.estadoS2~q\ & (!\UniControl_component|state.estadoS4~q\ & 
-- !\UniControl_component|state.estadoS3~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS0~q\,
	datab => \UniControl_component|ALT_INV_state.estadoS2~q\,
	datac => \UniControl_component|ALT_INV_state.estadoS4~q\,
	datad => \UniControl_component|ALT_INV_state.estadoS3~q\,
	dataf => \UniControl_component|ALT_INV_state.estadoS1~q\,
	combout => \UniControl_component|WideNor2~combout\);

-- Location: LABCELL_X33_Y3_N57
\UniControl_component|WideNor3\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|WideNor3~combout\ = ( !\UniControl_component|state.estadoS2~q\ & ( (!\UniControl_component|state.estadoS1~q\ & (!\UniControl_component|state.estadoS5~q\ & !\UniControl_component|state.estadoS0~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS1~q\,
	datac => \UniControl_component|ALT_INV_state.estadoS5~q\,
	datad => \UniControl_component|ALT_INV_state.estadoS0~q\,
	dataf => \UniControl_component|ALT_INV_state.estadoS2~q\,
	combout => \UniControl_component|WideNor3~combout\);

-- Location: MLABCELL_X34_Y3_N12
\UniControl_component|Mux21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux21~2_combout\ = ( !\UniControl_component|state.estadoS0~q\ & ( (!\UniControl_component|recv_opcode\(0) & (!\UniControl_component|state.estadoS9~q\ & !\UniControl_component|state.estadoS1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UniControl_component|ALT_INV_recv_opcode\(0),
	datac => \UniControl_component|ALT_INV_state.estadoS9~q\,
	datad => \UniControl_component|ALT_INV_state.estadoS1~q\,
	dataf => \UniControl_component|ALT_INV_state.estadoS0~q\,
	combout => \UniControl_component|Mux21~2_combout\);

-- Location: LABCELL_X33_Y3_N0
\UniControl_component|Mux21~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux21~3_combout\ = ( \UniControl_component|WideNor3~combout\ & ( \UniControl_component|Mux21~2_combout\ & ( (!\UniControl_component|recv_opcode~3_combout\ & (((\UniControl_component|WideNor2~combout\) # 
-- (\UniControl_component|recv_opcode~1_combout\)) # (\UniControl_component|recv_opcode~2_combout\))) ) ) ) # ( !\UniControl_component|WideNor3~combout\ & ( \UniControl_component|Mux21~2_combout\ & ( (!\UniControl_component|recv_opcode~3_combout\ & 
-- (!\UniControl_component|recv_opcode~1_combout\ & ((\UniControl_component|WideNor2~combout\) # (\UniControl_component|recv_opcode~2_combout\)))) ) ) ) # ( \UniControl_component|WideNor3~combout\ & ( !\UniControl_component|Mux21~2_combout\ & ( 
-- (!\UniControl_component|recv_opcode~2_combout\ & (!\UniControl_component|recv_opcode~3_combout\ & ((\UniControl_component|WideNor2~combout\) # (\UniControl_component|recv_opcode~1_combout\)))) ) ) ) # ( !\UniControl_component|WideNor3~combout\ & ( 
-- !\UniControl_component|Mux21~2_combout\ & ( (!\UniControl_component|recv_opcode~2_combout\ & (!\UniControl_component|recv_opcode~3_combout\ & (!\UniControl_component|recv_opcode~1_combout\ & \UniControl_component|WideNor2~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000010001000100001000000110000000100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	datab => \UniControl_component|ALT_INV_recv_opcode~3_combout\,
	datac => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	datad => \UniControl_component|ALT_INV_WideNor2~combout\,
	datae => \UniControl_component|ALT_INV_WideNor3~combout\,
	dataf => \UniControl_component|ALT_INV_Mux21~2_combout\,
	combout => \UniControl_component|Mux21~3_combout\);

-- Location: MLABCELL_X34_Y3_N9
\UniControl_component|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux21~0_combout\ = ( !\UniControl_component|state.estadoS8~q\ & ( (!\UniControl_component|state.estadoS0~q\ & !\UniControl_component|state.estadoS1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_state.estadoS0~q\,
	datad => \UniControl_component|ALT_INV_state.estadoS1~q\,
	dataf => \UniControl_component|ALT_INV_state.estadoS8~q\,
	combout => \UniControl_component|Mux21~0_combout\);

-- Location: MLABCELL_X34_Y3_N21
\UniControl_component|Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux21~1_combout\ = ( \UniControl_component|Mux21~0_combout\ & ( (!\UniControl_component|recv_opcode~2_combout\ & (!\UniControl_component|WideNor0~combout\ & ((!\UniControl_component|recv_opcode~1_combout\)))) # 
-- (\UniControl_component|recv_opcode~2_combout\ & (((!\UniControl_component|WideNor2~combout\ & \UniControl_component|recv_opcode~1_combout\)))) ) ) # ( !\UniControl_component|Mux21~0_combout\ & ( (!\UniControl_component|recv_opcode~2_combout\ & 
-- ((!\UniControl_component|WideNor0~combout\) # ((\UniControl_component|recv_opcode~1_combout\)))) # (\UniControl_component|recv_opcode~2_combout\ & (((!\UniControl_component|WideNor2~combout\) # (!\UniControl_component|recv_opcode~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111111010110111011111101010001000010100001000100001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	datab => \UniControl_component|ALT_INV_WideNor0~combout\,
	datac => \UniControl_component|ALT_INV_WideNor2~combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	dataf => \UniControl_component|ALT_INV_Mux21~0_combout\,
	combout => \UniControl_component|Mux21~1_combout\);

-- Location: LABCELL_X35_Y2_N39
\UniControl_component|Mux21~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux21~4_combout\ = ( \UniControl_component|Mux21~1_combout\ & ( ((!\UniControl_component|recv_opcode~4_combout\ & (!\UniControl_component|WideNor0~combout\)) # (\UniControl_component|recv_opcode~4_combout\ & 
-- ((!\UniControl_component|Mux21~3_combout\)))) # (\UniControl_component|recv_opcode~3_combout\) ) ) # ( !\UniControl_component|Mux21~1_combout\ & ( (!\UniControl_component|recv_opcode~4_combout\ & (!\UniControl_component|WideNor0~combout\ & 
-- (!\UniControl_component|recv_opcode~3_combout\))) # (\UniControl_component|recv_opcode~4_combout\ & (((!\UniControl_component|Mux21~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011110000100010001111000010111011111100111011101111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_WideNor0~combout\,
	datab => \UniControl_component|ALT_INV_recv_opcode~3_combout\,
	datac => \UniControl_component|ALT_INV_Mux21~3_combout\,
	datad => \UniControl_component|ALT_INV_recv_opcode~4_combout\,
	dataf => \UniControl_component|ALT_INV_Mux21~1_combout\,
	combout => \UniControl_component|Mux21~4_combout\);

-- Location: LABCELL_X33_Y2_N24
\UniControl_component|Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|Mux22~1_combout\ = ( !\UniControl_component|recv_opcode~4_combout\ & ( \UniControl_component|recv_opcode~2_combout\ & ( (!\UniControl_component|recv_opcode~3_combout\ & (((\UniControl_component|state.estadoS7~q\)))) # 
-- (\UniControl_component|recv_opcode~3_combout\ & (\UniControl_component|recv_opcode~1_combout\ & ((\UniControl_component|state.estadoS4~q\)))) ) ) ) # ( \UniControl_component|recv_opcode~4_combout\ & ( !\UniControl_component|recv_opcode~2_combout\ & ( 
-- (!\UniControl_component|recv_opcode~3_combout\ & (!\UniControl_component|recv_opcode~1_combout\ & \UniControl_component|state.estadoS4~q\)) ) ) ) # ( !\UniControl_component|recv_opcode~4_combout\ & ( !\UniControl_component|recv_opcode~2_combout\ & ( 
-- (\UniControl_component|state.estadoS7~q\ & ((!\UniControl_component|recv_opcode~3_combout\) # (!\UniControl_component|recv_opcode~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000000001000100000001010000110110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UniControl_component|ALT_INV_recv_opcode~3_combout\,
	datab => \UniControl_component|ALT_INV_recv_opcode~1_combout\,
	datac => \UniControl_component|ALT_INV_state.estadoS7~q\,
	datad => \UniControl_component|ALT_INV_state.estadoS4~q\,
	datae => \UniControl_component|ALT_INV_recv_opcode~4_combout\,
	dataf => \UniControl_component|ALT_INV_recv_opcode~2_combout\,
	combout => \UniControl_component|Mux22~1_combout\);

-- Location: LABCELL_X33_Y2_N39
\UniControl_component|esc_reg$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \UniControl_component|esc_reg$latch~combout\ = ( \UniControl_component|Mux21~4_combout\ & ( \UniControl_component|Mux22~1_combout\ & ( \ProIAEnableFlag~input_o\ ) ) ) # ( !\UniControl_component|Mux21~4_combout\ & ( \UniControl_component|Mux22~1_combout\ & 
-- ( (\ProIAEnableFlag~input_o\ & \UniControl_component|esc_reg$latch~combout\) ) ) ) # ( !\UniControl_component|Mux21~4_combout\ & ( !\UniControl_component|Mux22~1_combout\ & ( (\ProIAEnableFlag~input_o\ & \UniControl_component|esc_reg$latch~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000000000101000001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ProIAEnableFlag~input_o\,
	datac => \UniControl_component|ALT_INV_esc_reg$latch~combout\,
	datae => \UniControl_component|ALT_INV_Mux21~4_combout\,
	dataf => \UniControl_component|ALT_INV_Mux22~1_combout\,
	combout => \UniControl_component|esc_reg$latch~combout\);

-- Location: MLABCELL_X34_Y2_N12
\rom8_component|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom8_component|Mux2~0_combout\ = ( !\pc_component|saidaPC\(4) & ( \pc_component|saidaPC\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|ALT_INV_saidaPC\(0),
	dataf => \pc_component|ALT_INV_saidaPC\(4),
	combout => \rom8_component|Mux2~0_combout\);

-- Location: LABCELL_X60_Y2_N39
\rom8_component|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom8_component|Mux4~0_combout\ = ( !\pc_component|saidaPC\(4) & ( \pc_component|saidaPC\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc_component|ALT_INV_saidaPC\(1),
	dataf => \pc_component|ALT_INV_saidaPC\(4),
	combout => \rom8_component|Mux4~0_combout\);

-- Location: LABCELL_X40_Y3_N3
\rom8_component|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom8_component|Mux6~0_combout\ = ( \pc_component|saidaPC\(2) & ( !\pc_component|saidaPC\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc_component|ALT_INV_saidaPC\(4),
	datae => \pc_component|ALT_INV_saidaPC\(2),
	combout => \rom8_component|Mux6~0_combout\);

-- Location: LABCELL_X35_Y7_N51
\rom8_component|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom8_component|Mux8~0_combout\ = ( !\pc_component|saidaPC\(4) & ( \pc_component|saidaPC\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pc_component|ALT_INV_saidaPC\(4),
	dataf => \pc_component|ALT_INV_saidaPC\(3),
	combout => \rom8_component|Mux8~0_combout\);

-- Location: LABCELL_X40_Y2_N36
\And_component|R\ : cyclonev_lcell_comb
-- Equation(s):
-- \And_component|R~combout\ = ( \UniControl_component|pc_cond$latch~combout\ & ( \ula_component|zero~q\ ) ) # ( !\UniControl_component|pc_cond$latch~combout\ & ( \ula_component|zero~q\ & ( !\UniControl_component|esc_reg_952~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UniControl_component|ALT_INV_esc_reg_952~combout\,
	datae => \UniControl_component|ALT_INV_pc_cond$latch~combout\,
	dataf => \ula_component|ALT_INV_zero~q\,
	combout => \And_component|R~combout\);

-- Location: IOIBUF_X82_Y81_N58
\ProIAreset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ProIAreset,
	o => \ProIAreset~input_o\);

-- Location: LABCELL_X73_Y54_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;



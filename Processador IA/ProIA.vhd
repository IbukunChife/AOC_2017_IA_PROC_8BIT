--------------------------------------------------
-- Projeto do Processador ProIA
-- 
-- adjitchedidier1@gmail.com
--------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity ProIA is
	Generic(nBits : integer := 8); -- nBits
port(
		ProIAClock, ProIAreset , ProIAEnableFlag: in std_logic;
		
		out_SystemClock: out std_logic;
		
		out_BDReg_reg_escrito : out std_logic;		
		out_BDReg_dado_escrito : out std_logic_vector(nBits-1 downto 0);
		out_BDDado_lido_A : out std_logic_vector(nBits-1 downto 0); -- 8 bits
		out_BDDado_lido_B : out std_logic_vector(nBits-1 downto 0); -- 8 bits	
		out_BDReg_lido_A : out std_logic_vector(nBits-7 downto 0);
		out_BDReg_lido_B : out std_logic_vector(nBits-7 downto 0);
		
		out_PC_entrada: out std_logic_vector(nBits-1 downto 0); 
		out_PC_saida: out std_logic_vector(nBits-1 downto 0);
		out_PC_clock: out std_logic;
		out_PC_HabilitaPC: out std_logic;
		
		
		out_MEM_INST_address: out std_logic_vector(nBits-1 downto 0);
		out_MEM_INST_data_out: out std_logic_vector(nBits-1 downto 0);
		
		out_AND_A, out_AND_B : out STD_LOGIC;
		out_AND_Result : OUT STD_LOGIC;
		
		out_Control_clock : out std_logic;
		out_Control_opcode: out std_logic_vector(nBits-5 downto 0); -- Opcode			
		out_Control_Pc_flag: out std_logic;
		out_Control_Pc_Cond : out std_logic;
		out_Control_lermen : out std_logic;
		out_Control_EscMem : out std_logic;			
		out_Control_MemParaReg : out std_logic;
		out_Control_ULAOp : out std_logic_vector(nBits-5 downto 0); -- 4 bits
		out_Control_EscReg : out std_logic;
		out_Control_Ula_fonteA : out std_logic;
		out_Control_Ula_fonteB : out std_logic_vector(1 downto 0);--2bits
		out_Control_Fonte_Pc : out std_logic_vector(1 downto 0);--2bits
		
		
		out_ALU_A, out_ALU_B : out std_logic_vector(nBits-1 downto 0); --input para operaçao        
		out_ALU_OP : out std_logic_vector(3 downto 0); --opcode para escolha da operaçao
		out_ALU_zero : out std_logic; -- para a inst. compare (CMP)		
		out_ALU_result : out std_logic_vector(nBits-1 downto 0); -- resultado para operçao efetuada
		
		out_Ram_ler_mem   : out std_logic;
		out_Ram_esc_mem	: out std_logic;
		out_Ram_address  	: out std_logic_vector(nBits-1 downto 0);
		out_Ram_data_in  	: out std_logic_vector(nBits-1 downto 0);
		out_Ram_data_out 	: out std_logic_vector(nBits-1 downto 0)
	);
end ProIA;

architecture behavior of ProIA is
	-----------------------------------
	-- Componentes
	-----------------------------------
	--ProIA_AND
	component MAnd is
		port(	A, B: in std_logic;
				R: out std_logic
				);
	end component;
	
	--ProIA_OR
	component MOr is
		port( A, B: in std_logic;
					R: out std_logic
				);
	end component;

	-- ProIA_PC
	component  pc is
		port(CLOCK: in std_logic;
			  habilitaPC: in std_logic;
			  entradaPC : in std_logic_vector(7 downto 0);
			  saidaPC : out std_logic_vector(7 downto 0)
		);
	end component;

	-- ProIA_MemDeIns
	component rom8 is
		  port(address: in std_logic_vector(7 downto 0);
				data: out std_logic_vector(7 downto 0)
				);
   end component;

	--ProIA_UniControl
	component UniControl is
		port(
	      clock : in std_logic;
		  enable : in std_logic;
		  reset : in std_logic;
			
		  opcode: in std_logic_vector(3 downto 0);
		  pc_flag: out std_logic;
		  pc_cond: out std_logic;
		  ler_men: out std_logic;
		  esc_men: out std_logic;
		  memParaReg: out std_logic;
		  ULAop: out std_logic_vector(3 downto 0);
		  esc_reg: out std_logic;
		  ula_fonteA: out std_logic;
		  ula_fonteB: out std_logic_vector(1 downto 0);
		  fonte_PC: out std_logic_vector(1 downto 0)
		);
	end component;
	
	-- ProIA_BancoDeReg
	component breg8 is
		PORT ( EscritaReg,Clock: in STD_LOGIC;
				 RegA,RegB: IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
				 Dado : IN STD_LOGIC_VECTOR(7 DOWNTO 0) ;
				 SaidaA , SaidaB: OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
				);
	end component;
	
	--ProIA_extensor2x8 -- para sinal[3-2] da memoria de Instrução
	component exSinal_2x8 IS
	PORT(a: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		  s: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		 );
	END component;
	
	-- ProIA_extensor2x8 -- para sinal[1-0] da memoria de Instrução
	component exSinal2x8 IS
		PORT(a: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			  s: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
			 );
		END component;
	
	-- ProIA_extensor4x8 -- para sinal[3-0] da memoria de Instrução
	component exSinal4x8 IS
		PORT(a: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			  s: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
			 );
		END component;
	
	-- ProIA_A
	component A is
		PORT (CLOCK: in std_logic;
				D:in std_logic_vector( 7 downto 0);
				Q: out std_logic_vector( 7 downto 0));
		end component;

	-- ProIA_B
	component B is
		PORT (CLOCK: in std_logic;
				D:in std_logic_vector( 7 downto 0);
				Q: out std_logic_vector( 7 downto 0));
		end component;
	
	-- ProIA_MuxA
	component muxA IS
		PORT(dadoA: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			  dadoB: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			  seletor: IN STD_LOGIC;
			  saida: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
			  );
		END component;
	
	-- ProIA_MuxB
	component muxB IS
		PORT(dadoA: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			  dadoB: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			  dadoC: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			  seletor: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			  saida: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
			  );
		END component;
	-- ProIA_ULA
	component ula IS
		PORT(dadoA: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			  dadoB: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			  clock: IN STD_LOGIC;
			  seletor: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			  resultado: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			  zero: OUT STD_LOGIC
			  );
		END component;
	
	-- ProIA_ULAout
	component ULAout is
		PORT (CLOCK: in std_logic;
				D:in std_logic_vector( 7 downto 0);
				Q: out std_logic_vector( 7 downto 0));
		end component ;
	
	-- ProIA_MuxUM
	component muxUM IS
		PORT(dadoA: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			  dadoB: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			  seletor: IN STD_LOGIC;
			  saida: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
			  );
		END component;
	
	-- ProIA_MuxUMJ
	component muxPUJ IS
		PORT(dadoA: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			  dadoB: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			  dadoC: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			  seletor: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			  saida: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
			  );
		END component;
	
	-- ProIA_MemDeDado
	component ram8 is 
		Port ( clock,ler,esc: in std_logic ;
				 address: in std_logic_vector( 7 downto 0);
				 data_entrada:in std_logic_vector( 7 downto 0);
				 data_saida: out std_logic_vector( 7 downto 0));
		end component;

	
	-- ProIA_MDR
	component MDR is
		PORT (CLOCK: in std_logic;
				D:in std_logic_vector( 7 downto 0);
				Q: out std_logic_vector( 7 downto 0));
		end component;

	-----------------------------------
	-- Sinais
	-----------------------------------

	
	--signal ProIAEnableFlag;
	--signal  t_ProIA_Enable_Flag : std_logic;
	
	-- SINAL PC para Memoria de instruçâo
	signal t_pc_instruction : std_logic_vector(7 downto 0);

	
	-- Sinal And para OR
	signal t_out_AND_to_OR : std_logic;
	
	-- Sinal OR para HabilitaPc
	signal t_out_OR_to_HabilitaPc : std_logic;
	
	-- SINAL Somador PC
	--signal t_pc_sum_next_instr : std_logic_vector(7 downto 0) := "00000001"; -- 1 entrada no somador
	--signal t_out_sum_com_overflow : std_logic;		
   --	signal t_next_instruction_for_PC : std_logic_vector(7 downto 0); -- Sinal Somador da proxima instru��o
	
	-- SINAL ROM
	signal t_rom_instruction_7_0_into : std_logic_vector(7 downto 0);
	
	
	-- Sinais da divis�o das instru��es
	signal t_inst_part_7_4 : std_logic_vector(3 downto 0); -- Opcode -> tipo da instru��o	
	signal t_inst_part_3_2 : std_logic_vector(1 downto 0); -- Reg2 
	signal t_inst_part_1_0 : std_logic_vector(1 downto 0); -- Reg1  
	signal t_inst_part_3_0 : std_logic_vector(3 downto 0); -- MEM_NUM: salto incondicional	
	
	
	-- Sinais do Controle	
	signal t_Pc_Cond: std_logic;
	signal t_Pc_flag: std_logic;
	signal t_ler_mem : std_logic;
	signal t_esc_mem : std_logic;			
	signal t_memparareg : std_logic;
	signal t_ulaop : std_logic_vector(3 downto 0); -- 3 bits
	signal t_escreg : std_logic;
	signal t_Ula_fonteA: std_logic;
	signal t_Ula_fonteB : std_logic_vector(1 downto 0); -- 2 bits
	signal t_Fonte_PC : std_logic_vector(1 downto 0); -- 2 bits

	
	-- Sinais Banco de Registradores
	signal t_dado_lido_1 : std_logic_vector(7 downto 0);
	signal t_dado_lido_2 : std_logic_vector(7 downto 0);
	
	--sinal de out de A para MuxA
	signal t_out_reg_A : std_logic_vector(7 downto 0);
	
	--sinal de out de B para MuxB
	signal t_out_reg_B : std_logic_vector(7 downto 0);

	--pino de out de valor 1 para MuxB
	signal t_out_incremento_1 : std_logic;
	
	--sinal de extensor2x8 para MuxB
	signal t_out_Ex2x8to_MuxB : std_logic_vector(7 downto 0);
	
	--sinal de extensor_2x8 para MuxB
	signal t_out_Ex_2x8_to_MuxB : std_logic_vector(7 downto 0);
	
	--sinal de extensor4x8 para MuxUMJ
	signal t_out_Ex_4x8_to_MuxUMJ : std_logic_vector(7 downto 0);
	
	--Sinal MUXA to ULA
	signal t_out_MUXA_to_ULA: std_logic_vector(7 downto 0);
	
	--Sinal MUXB to ULA
	signal t_out_MUXB_to_ULA : std_logic_vector(7 downto 0);
	
	-- Sinais da ULA
	signal t_ula_out_zero : std_logic;
	signal t_ula_result : std_logic_vector(7 downto 0);
	
	--Sinal MuxUM to Banco_dados
	signal t_out_MuxUM_to_BancoReg : std_logic_vector(7 downto 0);
	
	-- Sinal ULAout to Memoria de Dados
	signal t_out_ULAout_to_Mem_Dados_ou_MuxUMJ : std_logic_vector(7 downto 0);
	
	--Sinal MuxUMJ to PC
	signal t_out_MuxUMJ_to_PC : std_logic_vector(7 downto 0);
	
	-- Sinal Memoria de Dados para MDR
	signal t_out_MemDados_to_MDR : std_logic_vector(7 downto 0);

	-- Sinal MDR para Mux
	signal t_out_MDR_to_MuxUM : std_logic_vector(7 downto 0);
	

	
-- DataPath	
Begin
	
	-- Split a istru��o de 8 bits
	split_instrucao : process (t_rom_instruction_7_0_into)
	begin
		t_inst_part_7_4 <= t_rom_instruction_7_0_into(7 downto 4); -- OP		
		t_inst_part_3_2 <= t_rom_instruction_7_0_into(3 downto 2); -- Reg2			
		t_inst_part_1_0 <= t_rom_instruction_7_0_into(1 downto 0); -- Reg1
		t_inst_part_3_0 <= t_rom_instruction_7_0_into(3 downto 0); -- Address to JUMP
	end process split_instrucao;

	
	--ProIA_AND
	And_component : MAnd port map(
				A => t_ula_out_zero,
				B => t_Pc_Cond,
				R => t_out_AND_to_OR 
				);
	
	--ProIA_OR
	Or_component : MOr port map( 
				A=> t_out_AND_to_OR,
				B=> t_Pc_flag,
				R=> t_out_OR_to_HabilitaPc
				);
	
	-- ProIA_PC
	pc_component  : pc port map(
			  CLOCK => ProIAClock ,
			  habilitaPC => t_out_OR_to_HabilitaPc,
			  entradaPC => t_out_MuxUMJ_to_PC,
			  saidaPC => t_pc_instruction
		);

	-- ProIA_MemDeIns
	rom8_component  : rom8 port map(
			   address=> t_pc_instruction,
				data=> t_rom_instruction_7_0_into
				);

	--ProIA_UniControl
	UniControl_component  : UniControl port map(
	      clock => ProIAClock,
		  enable => ProIAEnableFlag,
		  reset => ProIAreset,
			
		  opcode => t_inst_part_7_4  ,
		  pc_flag => t_Pc_flag,
		  pc_cond =>  t_Pc_Cond,
		  ler_men => t_ler_mem,
		  esc_men => t_esc_mem,
		  memParaReg => t_memparareg,
		  ULAop => t_ulaop ,
		  esc_reg => t_escreg,
		  ula_fonteA => t_Ula_fonteA,
		  ula_fonteB => t_Ula_fonteB,
		  fonte_PC => t_Fonte_PC
		);

	-- ProIA_BancoDeReg
	breg8_component  : breg8 PORT map( 
				 EscritaReg => t_escreg,
				 Clock=> ProIAClock,
				 RegA=> t_inst_part_3_2,
				 RegB=> t_inst_part_1_0,
				 Dado => t_out_MuxUM_to_BancoReg,
				 SaidaA => t_dado_lido_1,
				 SaidaB => t_dado_lido_2
				);
	
	--ProIA_extensor_2x8 -- para sinal[3-2] da memoria de Instrução
	exSinal_2x8_component : exSinal_2x8 PORT MAP (
			a=> t_inst_part_3_2 ,
		   s=> t_out_Ex_2x8_to_MuxB 
		 );
	
	-- ProIA_extensor2x8 -- para sinal[1-0] da memoria de Instrução
	exSinal2x8_component  :  exSinal2x8 PORT MAP(
			a=> t_inst_part_1_0 ,
			s=> t_out_Ex2x8to_MuxB 
			 );
	
	-- ProIA_extensor4x8 -- para sinal[3-0] da memoria de Instrução
	exSinal4x8_component  : exSinal4x8 PORT MAP(
			a=> t_inst_part_3_0 ,
			s=>  t_out_Ex_4x8_to_MuxUMJ
			 );
	
	-- ProIA_A
	A_component  : A PORT MAP (
		   CLOCK=> ProIAClock ,
			D=> t_dado_lido_1,
			Q=>  t_out_reg_A
			);


	-- ProIA_B
	B_component  : B PORT MAP (
			CLOCK => ProIAClock ,
			D=> t_dado_lido_2 ,
			Q=> t_out_reg_B
			);	
	
	-- ProIA_MuxA
	muxA_component  : muxA PORT MAP(
			dadoA => t_pc_instruction,
			dadoB => t_dado_lido_1,
			seletor => t_Ula_fonteA ,
			saida => t_out_MUXA_to_ULA
			);
	
	-- ProIA_MuxB
	muxB_component  : muxB PORT MAP(
			dadoA => t_dado_lido_2,-- 00
			dadoB => t_out_Ex2x8to_MuxB ,-- 10
			dadoC => t_out_Ex_2x8_to_MuxB  ,--11
			seletor => t_Ula_fonteB,
			saida => t_out_MUXB_to_ULA 
			);
	
	-- ProIA_ULA
	ula_component : ula PORT MAP(
			 dadoA => t_out_MUXA_to_ULA,
			 dadoB => t_out_MUXB_to_ULA,
			 clock => ProIAClock,
			 seletor => t_ulaop ,
			 resultado => t_ula_result,
			 zero => t_ula_out_zero 
			  );

	-- ProIA_ULAout
	ULAout_component  : ULAout PORT MAP(
			 CLOCK => ProIAClock,
			 D => t_ula_result ,
			 Q => t_out_ULAout_to_Mem_Dados_ou_MuxUMJ
			 );
	
	-- ProIA_MuxUM
	muxUM_component  :muxUM PORT MAP(
			 dadoA => t_out_ULAout_to_Mem_Dados_ou_MuxUMJ,
			 dadoB => t_out_MDR_to_MuxUM,
			 seletor => t_memparareg,
			 saida => t_out_MuxUM_to_BancoReg
			 );

	
	-- ProIA_MuxUMJ
	muxPUJ_component  :muxPUJ PORT MAP(
			 dadoA => t_ula_result,
			 dadoB => t_out_ULAout_to_Mem_Dados_ou_MuxUMJ,
			 dadoC => t_out_Ex_4x8_to_MuxUMJ,
			 seletor => t_Fonte_PC,
			 saida => t_out_MuxUMJ_to_PC
			 );
	
	-- ProIA_MemDeDado
	ram8_component  : ram8 Port MAP ( 
			 clock => ProIAClock,
			 ler => t_ler_mem,
			 esc => t_esc_mem,
			 address => t_out_Ex2x8to_MuxB,
			 data_entrada =>t_out_ULAout_to_Mem_Dados_ou_MuxUMJ ,
			 data_saida => t_out_MemDados_to_MDR
			 );

	
	-- ProIA_MDR
	MDR_component  : MDR PORT MAP (
			 CLOCK => ProIAClock,
			 D => t_out_MemDados_to_MDR,
			 Q => t_out_MDR_to_MuxUM
			 );

	------------------------------------------------------------ PARA DEBUG
		
	 	
		out_SystemClock<= ProIAClock;
	
		out_BDReg_reg_escrito <= t_escreg;
		out_BDReg_dado_escrito  <= t_out_MuxUM_to_BancoReg;
		out_BDDado_lido_A <= t_dado_lido_1 ; -- 8 bits
		out_BDDado_lido_B <= t_dado_lido_2; -- 8 bits	
		out_BDReg_lido_A <= t_inst_part_3_2;-- 2bits
		out_BDReg_lido_B <= t_inst_part_1_0 ;-- 2 bits

		out_PC_entrada <= t_out_MuxUMJ_to_PC ; 
		out_PC_saida <=  t_pc_instruction;
		out_PC_clock <= ProIAClock;
		out_PC_HabilitaPC <= t_out_OR_to_HabilitaPc;
		
		out_MEM_INST_address <= t_pc_instruction;
		out_MEM_INST_data_out <= t_rom_instruction_7_0_into;		
		
		out_AND_A <= t_ula_out_zero;
		out_AND_B <= t_Pc_Cond ;
		out_AND_Result <= t_out_AND_to_OR ;
		
		out_Control_clock  <= ProIAClock;
		out_Control_opcode <= t_inst_part_7_4 ; -- Opcode			
		out_Control_Pc_flag <= t_Pc_flag;
		out_Control_Pc_Cond <= t_Pc_Cond;
		out_Control_lermen  <= t_ler_mem;
		out_Control_EscMem  <= t_esc_mem;		
		out_Control_MemParaReg <= t_memparareg;
		out_Control_ULAOp <= t_ulaop ; -- 4 bits
		out_Control_EscReg <= t_escreg;
		out_Control_Ula_fonteA <= t_Ula_fonteA ;
		out_Control_Ula_fonteB <= t_Ula_fonteB;
		out_Control_Fonte_Pc <= t_Fonte_PC;
			
		out_ALU_A <= t_out_MUXA_to_ULA;
		out_ALU_B  <= t_out_MUXB_to_ULA; --input para operaçao        
		out_ALU_OP <= t_ulaop ; --opcode para escolha da operaçao
		out_ALU_zero <= t_ula_out_zero ; -- para a inst. compare (CMP)		
		out_ALU_result <= t_ula_result; -- resultado para operçao efetuada
				
		out_Ram_ler_mem    <= t_ler_mem ;
		out_Ram_esc_mem	 <= t_esc_mem;
		out_Ram_address  	 <= t_out_ULAout_to_Mem_Dados_ou_MuxUMJ;
		out_Ram_data_in  	 <= t_out_Ex2x8to_MuxB;
		out_Ram_data_out 	 <= t_out_MemDados_to_MDR;
	
	
End behavior;

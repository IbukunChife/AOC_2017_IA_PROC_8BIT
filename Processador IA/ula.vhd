LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.NUMERIC_STD.all;

ENTITY ula IS
PORT(dadoA: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	  dadoB: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	  clock: IN STD_LOGIC;
	  seletor: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	  resultado: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	  zero: OUT STD_LOGIC
	  );
END ula;

ARCHITECTURE funcao OF ula IS
	signal aux_mult: std_logic_vector(15 downto 0);
	signal aux_dado: std_logic_vector(7 downto 0);

BEGIN
	PROCESS(clock,dadoA,dadoB,seletor)
	VARIABLE cont: STD_LOGIC;
	VARIABLE mult: STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE aux_dadoA: STD_LOGIC_VECTOR(7 DOWNTO 0);
	BEGIN
		IF(clock'EVENT) AND (clock = '1') THEN
			IF(seletor = "0010") THEN --AND
				resultado <= (dadoA AND dadoB); 
			
			ELSIF(seletor = "0011") THEN -- OR
				resultado <= (dadoA OR dadoB);
			
			ELSIF(seletor = "0000") THEN --SOMA
				FOR i IN 0 to 7 LOOP
					resultado(i) <= ((dadoA(i) xor dadoB(i)) xor cont);
					cont := (dadoA(i) and dadoB(i)) or ((dadoA(i) xor dadoB(i)) and cont);
				END LOOP;
			
			ELSIF(seletor = "0001") THEN --SUBTRAÇAO
				FOR i IN 0 to 7 LOOP
					resultado(i) <= (( dadoA(i) xor NOT dadoB(i)) xor cont);
					cont := ( dadoA(i) and  NOT dadoB(i)) or ((dadoA(i) xor NOT dadoB(i)) and cont);
				END LOOP;
			
			ELSIF(seletor = "0100") THEN --MULTIPLICAÇÃO
				aux_dadoA := dadoA;
				FOR i IN 0 TO 7 LOOP
					IF(aux_dadoA(0)='1') THEN
						FOR i IN 0 to 7 LOOP
							mult(i+8) := ((dadoB(i) xor mult(i+8)) xor cont);
							cont := (dadoB(i) and mult(i+8)) or ((dadoB(i) xor mult(i+8)) and cont);
						END LOOP;
						
						aux_mult<= '0'& mult(15 downto 1);
						mult := aux_mult; -- mult := mult srl  1 ;
						aux_dado<= '0'& aux_dadoA(7 downto 1);
						aux_dadoA := aux_dado; -- dadoA <= "srl"(dadoA,1);
					END IF;
					IF(dadoA(0)='0') THEN
					
						aux_mult<= '0'& mult(15 downto 1);
						mult := aux_mult; -- mult := mult srl  1 ;
						aux_dado<= '0'& aux_dadoA(7 downto 1);
						aux_dadoA := aux_dado; -- dadoA <= "srl"(dadoA,1);
						
					END IF;
				END LOOP;
				resultado <= mult(7 DOWNTO 0);
			
			ELSIF(seletor = "0101") THEN --COMPARAÇÃO(SLT)
				IF(dadoA < dadoB) THEN
					zero <= '0';
				ELSE
					zero <= '1';
				END IF;
			
			ELSIF(seletor = "0110")THEN --IGUALDADE(BEQ)
				IF(dadoA = dadoB)THEN
					zero <= '0';
				ELSE
					zero <= '1';
				END IF;
				
			ELSIF(seletor = "0111")THEN --LOAD IM
				resultado <= dadoB;
				
			ELSIF(seletor = "1000")THEN --LOAD 
				resultado <= dadoA;
			
			ELSIF(seletor = "1001")THEN --STORE
				resultado <= dadoA;
				
			ELSIF(seletor = "1010")THEN --JUMP
				resultado <= dadoA;
				
			END IF;
		END IF;
	END PROCESS;
END funcao;
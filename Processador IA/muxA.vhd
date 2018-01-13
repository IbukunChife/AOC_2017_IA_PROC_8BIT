LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY muxA IS
PORT(dadoA: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
     dadoB: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	  seletor: IN STD_LOGIC;
	  saida: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	  );
END muxA;

ARCHITECTURE multiplexador OF muxA IS
BEGIN
		PROCESS(seletor,dadoA,dadoB)
		BEGIN
			CASE seletor IS
				WHEN '0' => saida <= dadoA;
				WHEN '1' => saida <= dadoB;
			END CASE;
	   END PROCESS;
END multiplexador;
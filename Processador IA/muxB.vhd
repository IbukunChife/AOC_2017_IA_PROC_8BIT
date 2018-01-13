LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY muxB IS
PORT(dadoA: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
     dadoB: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	  dadoC: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	  seletor: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	  saida: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	  );
END muxB;

ARCHITECTURE multiplexador OF muxB IS
BEGIN
		PROCESS(seletor,dadoA,dadoB)
		BEGIN
			CASE seletor IS
				WHEN "00" => saida <= dadoA;
				WHEN "01" => saida <=  "00000001";
				WHEN "10" => saida <= dadoB;
				WHEN "11" => saida <= dadoC;
			END CASE;
	   END PROCESS;
END multiplexador;
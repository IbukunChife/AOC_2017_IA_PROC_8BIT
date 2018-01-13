library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- "ler" habilita a leitura  na mémoria quando ce=1
-- "esc" identifica a escrita na memoria esc =1

ENTITY ram8 is 
Port ( clock,ler,esc: in std_logic ;
		 address: in std_logic_vector( 7 downto 0);
		 data_entrada:in std_logic_vector( 7 downto 0);
		 data_saida: out std_logic_vector( 7 downto 0));
end ram8;

architecture behavior of ram8 is 
	type RAM is array (0 to 15) of std_logic_vector(7 downto 0);
	signal mem : RAM;
begin 
	process (clock,address)
	begin 
			if rising_edge(clock)then
					if(esc='1')then
						mem(to_integer(unsigned(address))) <= data_entrada;
					end if;
			end if;
	end process;	
		data_saida <= mem(to_integer(unsigned(address))) WHEN ler = '1' else (others => 'Z');
end behavior;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity rom8 is
port(address: in std_logic_vector(7 downto 0);
data: out std_logic_vector(7 downto 0));
end rom8;

architecture behavior of rom8 is
type mem is array (0 to 15) of std_logic_vector (7 downto 0);
constant rom: mem := (       0 => "00000000", -- add
									  1 => "00010000", -- Sub
									  2 => "00100000", -- And
									  3 => "00110000", -- Or
									  4 => "01000000", -- Mult
									  5 => "01010000", -- Beq
									  6 => "01100000", -- Slt
									  7 => "01110000", -- Load Im
									  8 => "10000000", -- Load
									  9 => "10010000", -- Store
									 10 => "10100000", -- Jump
									 11 => "10110000", -- Exit
									 12 => "11000000", --  ||
									 13 => "11010000", --  ||
									 14 => "11100000", --  ||
									 15 => "11110000");-- Exit
begin
	process (address)
	begin
     case address is
       when "00000000" => data <= rom(0);
       when "00000001" => data <= rom(1);
       when "00000010" => data <= rom(2);
       when "00000011" => data <= rom(3);
       when "00000100" => data <= rom(4);
       when "00000101" => data <= rom(5);
       when "00000110" => data <= rom(6);
       when "00000111" => data <= rom(7);
       when "00001000" => data <= rom(8);
       when "00001001" => data <= rom(9);
       when "00001010" => data <= rom(10);
       when "00001011" => data <= rom(11);
       when "00001100" => data <= rom(12);
       when "00001101" => data <= rom(13);
       when "00001110" => data <= rom(14);
       when "00001111" => data <= rom(15);
       when others => data <= "ZZZZZZZZ";
	 end case;
  end process;
end behavior;
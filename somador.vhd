library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Utilizado para o Generic

entity somador is
   Generic ( 
		DATA_WIDTH : natural := 8; --Tamanho do dado que deve ser enviado
		constante : natural := 1 --Incremento desejado
	);
	
	port
	(
		A : in std_logic_vector (DATA_WIDTH-1 downto 0); --Entrada que sera adicionada
		clk : in std_logic; --Entrada do clock
		
		Y : out std_logic_vector (DATA_WIDTH-1 downto 0) --Saida ja somada com a constante
    );
end entity;

architecture somadorArc of somador is

begin

	-- Soma A + 1 e o resultado é armazenado em Y.
	-- Transforma os std_logic_vector em inteiros positivos e soma.
	-- Transforma de volta a resposta para std_logic_vector
	Y <= std_logic_vector(unsigned(A) + constante);

end architecture;
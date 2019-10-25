library IEEE;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Utilizado para o Generic

entity PC is
	generic (DATA_PC_SIZE : natural := 10 --Quantidade de instrucoes que podem ter na ROM
	);
    
	 port
    (
		clk: in std_logic; -- Entrada do clock
		reset: in std_logic;
		end_proximo: out std_logic_vector(DATA_PC_SIZE-1 downto 0) -- Qual a proxima linha que sera lida
    );
end entity;

architecture pcArc of PC is

	signal sig_somador,sig_entrada : std_logic_vector(DATA_PC_SIZE-1 downto 0);



begin

	sig_entrada<=end_proximo;

	SOMADOR: entity work.somador
		Generic Map(DATA_WIDTH=>DATA_PC_SIZE,
		constante=>4)
		Port Map(A=>sig_entrada,
		clk=>clk,
		Y=>sig_somador);
		
	REGISTRADOR: entity work.reg_reset
		Generic Map(DATA_WIDTH=>DATA_PC_SIZE)
		Port Map(clk=>clk,
		entrada=>sig_somador,
		reset=>reset,
		saida=>end_proximo);
	  
end architecture;
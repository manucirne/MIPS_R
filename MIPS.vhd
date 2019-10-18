library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).

entity MIPS is
    generic
    (
		addrWidth : natural := 32;
		regAddrWidth : natural := 5; 	-- Tamanho da instrucao
		dataWidth : natural := 32
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
		clk : in std_logic; -- Entrada do clock
		reset : in std_logic;
		escreveC : in std_logic := '0';
		func : in std_logic_vector (2 downto 0);
		romOut : out std_logic_vector(addrWidth-1 DOWNTO 0)
    );
end entity;

architecture comportamento of MIPS is

	signal saida_pc_rom : std_logic_vector(addrWidth-1 downto 0);
	signal saida_rom_banco : std_logic_vector(dataWidth-1 downto 0);
	signal saida_regA, saida_regB, saida_ula : std_logic_vector(dataWidth-1 downto 0);

begin

	pc: entity work.PC
		Generic Map(DATA_PC_SIZE=>addrWidth)
		Port Map(clk=>clk,reset=>reset,end_proximo=>saida_pc_rom);
		
	rom: entity work.ROM
		Generic Map(dataWidth=>dataWidth,addrWidth=>addrWidth)
		Port Map(endereco=>saida_pc_rom,Dado=>saida_rom_banco);
		
	romOut <= saida_rom_banco; 
		
	bancoReg: entity work.banco_reg
		Generic Map(larguraDados=>dataWidth,larguraEndBancoRegs=>regAddrWidth)
		Port Map(clk=>clk,enderecoA=>saida_rom_banco(14 downto 10),enderecoB=>saida_rom_banco(9 downto 5),enderecoC=>saida_rom_banco(4 downto 0),dadoEscritaC=>saida_ula,escreveC=>escreveC,saidaA=>saida_regA,saidaB=>saida_regB);

	ULA: entity work.ula
		Generic Map(DATA_WIDTH=>dataWidth)
		Port Map(A=>saida_regA,B=>saida_regB,func=>func,Y=>saida_ula);

		
end architecture;
               
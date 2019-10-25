library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).

entity MIPS is
    generic
    (
		addrWidth : natural := 8;
		dataintr : natural := 32;
		regAddrWidth : natural := 5; 	-- Tamanho da instrucao
		dataWidth : natural := 5
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
		clk : in std_logic; -- Entrada do clock
		reset : in std_logic;
		escreveC : in std_logic := '0';
		
		introut: out std_logic_vector(dataintr-1 DOWNTO 0);
		ulaOut : out std_logic_vector(dataWidth-1 DOWNTO 0)
    );
end entity;

architecture comportamento of MIPS is

	signal saida_pc_rom : std_logic_vector(addrWidth-1 downto 0);
	signal saida_rom_banco : std_logic_vector(dataintr-1 downto 0);
	signal saida_regA, saida_regB, saida_ula : std_logic_vector(dataWidth-1 downto 0);

begin


	pc: entity work.PC
		Generic Map(DATA_PC_SIZE=>addrWidth)
		Port Map(clk=>clk,
		reset=>reset,
		end_proximo=>saida_pc_rom);
		
	rom: entity work.ROM
		Generic Map(dataWidth=>dataintr,
		addrWidth=>addrWidth)
		Port Map(clk => clk,
		endereco=>saida_pc_rom,
		Dado=>saida_rom_banco);
		
	
		introut<= saida_rom_banco;
		
	bancoReg: entity work.BC
		Generic Map(larguraDados=>dataWidth,larguraEndBancoRegs=>regAddrWidth)
		Port Map(clk=>clk,
		enderecoA=>saida_rom_banco(25 downto 21),
		enderecoB=>saida_rom_banco(20 downto 16),
		enderecoC=>saida_rom_banco(15 downto 11),
		dadoEscritaC=>saida_ula,
		escreveC=>escreveC,
		saidaA=>saida_regA,
		saidaB=>saida_regB);

		
	ULA: entity work.ula
		Generic Map(DATA_WIDTH=>dataWidth)
		Port Map(A=>saida_regA,
		B=>saida_regB,
		func=>saida_rom_banco(5 downto 0),
		Y=>saida_ula);
		
	ulaOut <= saida_ula;

		
end architecture;
               
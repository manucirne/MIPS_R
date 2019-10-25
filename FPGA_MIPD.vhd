library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).

entity FPGA_MIPD is
	Generic(addrWidth : natural := 8;
		dataintr : natural := 32;
		regAddrWidth : natural := 5; 	-- Tamanho da instrucao
		dataWidth : natural := 5);
    port
    (
		CLOCK_50 : in std_logic;
		SW : in std_logic_vector(17 downto 0);
		KEY : in std_logic_vector(3 downto 0);
		LEDR:  OUT std_logic_vector(17 downto 0);
		HEX0 : OUT STD_LOGIC_VECTOR(6 downto 0)
    );
end entity;

architecture comportamento of FPGA_MIPD is

signal sig_key_clock : std_logic;
signal saida_ula_7 : std_logic_vector(4 downto 0);
signal auxReset : std_logic;
signal introut : std_logic_vector((dataintr-1) downto 0);

begin
	
	LEDR <= introut(17 downto 0);
	
	detectorSub0: work.edgeDetector(bordaDescida) 
		port map (clk => CLOCK_50, 
		entrada => (not KEY(0)), 
		saida => sig_key_clock);

	conv7seg0: entity work.conversor7seg
		Port Map(dadoHex=>saida_ula_7(3 downto 0),
		apaga=>'0',
      negativo => '0',
      overFlow => '0',
		saida7seg=>HEX0);

	
	mips_r: entity work.MIPS
		Generic Map(addrWidth=>addrWidth,
		dataintr => dataintr,
		regAddrWidth => regAddrWidth,
		dataWidth=>dataWidth)
		Port Map(clk=>sig_key_clock,
		reset=>SW(0),
		escreveC=>SW(1),
		ulaOut=>saida_ula_7,
		introut=>introut);
		
end architecture;
               
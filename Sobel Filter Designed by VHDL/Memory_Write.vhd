library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Memory_Write is

	GENERIC
	(
		Mem_Addr		:	integer	:=	16;
		Mem_Width	:	integer	:=	8
	);

	PORT
	(
		Clock			:	IN		STD_LOGIC;
		writeEn		:	IN		STD_LOGIC;
		Address		:	IN		unsigned(Mem_Addr-1  DOWNTO 0);
		data_in		:	IN		unsigned(Mem_Width-1 DOWNTO 0)
	);

end Memory_Write;

architecture Behavioral of Memory_Write is

	type my_mem is array (0 to 2**Mem_Addr-1) of unsigned(Mem_Width-1 DOWNTO 0);
	
	signal Write_RAM		:	my_mem									:=	(others=>(others=>'0'));

	signal writeEn_Int	:	STD_LOGIC								:=	'0';
	signal Address_Int	:	unsigned(Mem_Addr-1  DOWNTO 0)	:=	(others=>'0');
	signal data_in_Int	:	unsigned(Mem_Width-1 DOWNTO 0)	:=	(others=>'0');

	attribute ram_style: string;
	attribute ram_style of Write_RAM: signal is "Block";

begin

	process(Clock)
	begin
	
		if rising_edge(Clock) then

			writeEn_Int		<=	writeEn;
			Address_Int		<=	Address;
			data_in_Int		<=	data_in;
			
			if (WriteEn_Int = '1') then
					Write_RAM(to_integer(Address_Int)) <=	data_in_Int;
			end if;
		
		end if;
	
	end process;

end Behavioral;

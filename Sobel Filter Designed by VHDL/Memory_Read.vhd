library IEEE;
use IEEE.STD_LOGIC_1164.all;        
use IEEE.numeric_std.all;

use ieee.std_logic_textio.all;
use std.textio.all;

entity Memory_Read is

	GENERIC
	(
		Mem_Addr		:	integer	:=	16;
		Mem_Width	:	integer	:=	8
	);

	PORT
	(
		Clock			:	IN		STD_LOGIC;
		readEn		:	IN		STD_LOGIC;
		Address		:	IN		unsigned(Mem_Addr-1  DOWNTO 0);
		data_out		:	OUT	unsigned(Mem_Width-1 DOWNTO 0)
	);

end Memory_Read;
---------------------------------------------------------------------------------------------
architecture Behavioral of Memory_Read is
---------------------------------------------------------------------------------------------
-- define a type for the lookup table (LUT)
--type lut_type is array(0 to 255) of std_logic_vector(Mem_Width-1 downto 0);
--
--impure function init_lut_from_file(lut_file_name : in string)
--    return lut_type is
--    FILE lut_file       : TEXT open READ_MODE is lut_file_name;
--    variable lut_line   : line;
--    variable bv_temp    : bit_vector(Mem_Width-1 downto 0);
--    variable lut        : lut_type;
--begin
--    for i in lut_type'range loop
--        readline(lut_file, lut_line);
--        read(lut_line, bv_temp);
--        lut(i) := to_stdlogicvector(bv_temp);
--    end loop;
--    return lut;
--end function;
-------------------------------------------------------------------------------------------------------------------------	

-------------------------------------------------------------------------------------------------------------------------	
type ram_type is array (0 to 2**Mem_Addr-1) of std_logic_vector(Mem_Width-1 downto 0);

-- type ram_type is array (0 to ram_depth - 1) of std_logic_vector(ram_width - 1 downto 0);
-------------------------------------------------------------------------------------------------------------------------	
procedure hread(l: inout line; value: out std_logic_vector) is
  variable c : character;
  variable ok : boolean;
  variable i : integer := 0;
  variable hex_val : std_logic_vector(3 downto 0);
begin
  while i < value'high loop
    read(l, c);
   
    case c is
      when '0' => hex_val := "0000";
      when '1' => hex_val := "0001";
      when '2' => hex_val := "0010";
      when '3' => hex_val := "0011";
      when '4' => hex_val := "0100";
      when '5' => hex_val := "0101";
      when '6' => hex_val := "0110";
      when '7' => hex_val := "0111";
      when '8' => hex_val := "1000";
      when '9' => hex_val := "1001";
      when 'A' | 'a' => hex_val := "1010";
      when 'B' | 'b' => hex_val := "1011";
      when 'C' | 'c' => hex_val := "1100";
      when 'D' | 'd' => hex_val := "1101";
      when 'E' | 'e' => hex_val := "1110";
      when 'F' | 'f' => hex_val := "1111";
   
      when others =>
        hex_val := "XXXX";
        assert false report "Found non-hex character '" & c & "'";
    end case;
   
    value(value'high - i downto value'high - i - 3) := hex_val;
    i := i + 4;
  end loop;
end procedure;
-------------------------------------------------------------------------------------------------------------------------	
impure function init_ram_hex return ram_type is
  file text_file : text open read_mode is "C:\Users\User\Downloads\input images\in3.txt";
  variable text_line : line;
  variable ram_content : ram_type;
begin
  for i in 0 to 2**Mem_Addr-1 loop
    readline(text_file, text_line);
    hread(text_line, ram_content(i));
  end loop;
 
  return ram_content;
end function;
-------------------------------------------------------------------------------------------------------------------------
	signal ram_hex : ram_type := init_ram_hex;
-------------------------------------------------------------------------------------------------------------------------
	Signal readEn_Int						:	STD_LOGIC												:=	'0';
	Signal Address_Int					:	unsigned(Mem_Addr-1  DOWNTO 0)					:=	(others=>'0');
	Signal data_out_Int					:	unsigned(Mem_Width-1 DOWNTO 0)					:=	(others=>'0');
-------------------------------------------------------------------------------------------------------------------------
	attribute ram_style					: string;
	attribute ram_style of ram_hex	: signal is "Block";
-------------------------------------------------------------------------------------------------------------------------
begin

	data_out	<=	data_out_Int;

	process(Clock)
	begin
	
		if rising_edge(Clock) then
		
			readEn_Int			<=	readEn;
			Address_Int			<=	Address;			
			
			if (readEn_Int = '1') then
				data_out_Int	<=	unsigned(ram_hex(to_integer(Address_Int)));
			end if;
			
		end if;
	
	end process;

end Behavioral;
---------------------------------------------------------------------------------------------

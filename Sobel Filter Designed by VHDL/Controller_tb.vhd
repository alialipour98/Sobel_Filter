LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

use ieee.std_logic_textio.all;
use std.textio.all;

ENTITY Controller_tb IS
END Controller_tb;
 
ARCHITECTURE behavior OF Controller_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Controller
    PORT(
         Clock 		: IN  	std_logic;
         rst 			: IN  	std_logic;
         go 			: IN  	std_logic;
         readEn 		: OUT  	std_logic;
         writeEn 		: OUT  	std_logic;
         done 			: OUT  	std_logic;
         dout 			: OUT  	unsigned(7 downto 0);
         dinAddr 		: OUT  	unsigned(15 downto 0);
         doutAddr 	: OUT  	unsigned(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clock 		: std_logic := '0';
   signal rst 			: std_logic := '0';
   signal go 			: std_logic := '0';

 	--Outputs
   signal readEn 		: std_logic;
   signal writeEn 	: std_logic;
   signal done 		: std_logic;
   signal dout 		: unsigned(7 downto 0);
   signal dinAddr 	: unsigned(15 downto 0);
   signal doutAddr 	: unsigned(15 downto 0);

   -- Clock period definitions
   constant Clock_period 			: time := 20 ns;
  
BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: Controller PORT MAP (
          Clock 		=> Clock,
          rst 			=> rst,
          go 			=> go,
          readEn 		=> readEn,
          writeEn 	=> writeEn,
          done 		=> done,
          dout 		=> dout,
          dinAddr 	=> dinAddr,
          doutAddr 	=> doutAddr
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;

	go 		<= '1';

	write_Output_Vector: process(Clock)
	
		file 		output_text	: text open write_mode is "C:\Users\User\Downloads\input images\HDL_2.txt";
		variable LO1			: line;

	begin

		if rising_edge(Clock) then

			if (writeEn = '1' and done = '0') then
				write(LO1, to_integer(dout));
				writeline(output_text , LO1);
			end if;

		end if;
	end process;

END;
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY Read_Only_tb IS
END Read_Only_tb;
 
ARCHITECTURE behavior OF Read_Only_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Memory_Read
    PORT(
         Clock 	: IN  	std_logic;
         readEn 	: IN  	std_logic;
         Address 	: IN  	unsigned(15 downto 0);
         data_out : OUT  	unsigned(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clock 		: std_logic := '0';
   signal readEn 		: std_logic := '0';
   signal Address 	: unsigned(15 downto 0) := (others => '0');

 	--Outputs
   signal data_out 	: unsigned(7 downto 0);

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memory_Read PORT MAP (
          Clock 		=>	Clock,
          readEn 		=> readEn,
          Address 	=> Address,
          data_out 	=> data_out
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
--      wait for Clock_period*10;

      -- insert stimulus here 

		readEn	<=	'1';
		
		Address	<=	to_unsigned(0, 16);
		wait for Clock_period;
		Address	<=	to_unsigned(1, 16);
		wait for Clock_period;
		Address	<=	to_unsigned(2, 16);

		wait for Clock_period;
		Address	<=	to_unsigned(255, 16);
		wait for Clock_period;
		Address	<=	to_unsigned(256, 16);
		wait for Clock_period;
		Address	<=	to_unsigned(257, 16);
		wait for Clock_period;
		Address	<=	to_unsigned(258, 16);

      wait;
   end process;

END;

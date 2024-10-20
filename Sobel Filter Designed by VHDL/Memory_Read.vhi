
-- VHDL Instantiation Created from source file Memory_Read.vhd -- 18:16:31 12/12/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Memory_Read
	PORT(
		Clock : IN std_logic;
		go : IN std_logic;
		readEn : IN std_logic;
		Address : IN std_logic_vector(15 downto 0);
		dout_in : IN std_logic_vector(7 downto 0);          
		data_out : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Memory_Read: Memory_Read PORT MAP(
		Clock => ,
		go => ,
		readEn => ,
		Address => ,
		dout_in => ,
		data_out => 
	);




-- VHDL Instantiation Created from source file Memory_Write.vhd -- 21:16:34 12/10/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Memory_Write
	PORT(
		Clock : IN std_logic;
		writeEn : IN std_logic;
		Address : IN std_logic_vector(15 downto 0);
		data_in : IN std_logic_vector(7 downto 0);       
		);
	END COMPONENT;

	Inst_Memory_Write: Memory_Write PORT MAP(
		Clock => ,
		writeEn => ,
		Address => ,
		data_in => 
	);



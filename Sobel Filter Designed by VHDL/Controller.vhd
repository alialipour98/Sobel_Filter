library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
---------------------------------------------------------------------------------------------
entity Controller is

	Generic
	(
		Constant	count0			:	unsigned(3	DOWNTO 0)	:=	to_unsigned(0, 4);
		Constant	count1			:	unsigned(3	DOWNTO 0)	:=	to_unsigned(1, 4);
		Constant	count2			:	unsigned(3	DOWNTO 0)	:=	to_unsigned(2, 4);
		Constant	count3			:	unsigned(3	DOWNTO 0)	:=	to_unsigned(3, 4);
		Constant	count4			:	unsigned(3	DOWNTO 0)	:=	to_unsigned(4, 4);
		Constant	count5			:	unsigned(3	DOWNTO 0)	:=	to_unsigned(5, 4);
		Constant	count6			:	unsigned(3	DOWNTO 0)	:=	to_unsigned(6, 4);
		Constant	count7			:	unsigned(3	DOWNTO 0)	:=	to_unsigned(7, 4);
		Constant	count8			:	unsigned(3	DOWNTO 0)	:=	to_unsigned(8, 4);
		Constant	count9			:	unsigned(3	DOWNTO 0)	:=	to_unsigned(9, 4);

		Constant	State0			:	unsigned(3	DOWNTO 0)	:=	to_unsigned(0, 4);
		Constant	State1			:	unsigned(3	DOWNTO 0)	:=	to_unsigned(1, 4);
		Constant	State2			:	unsigned(3	DOWNTO 0)	:=	to_unsigned(2, 4);
		Constant	State3			:	unsigned(3	DOWNTO 0)	:=	to_unsigned(3, 4);
		Constant	State4			:	unsigned(3	DOWNTO 0)	:=	to_unsigned(4, 4)
	);
		
	PORT
	(
		Clock		:	IN		STD_LOGIC;
		rst		:	IN		STD_LOGIC;
		go			:	IN		STD_LOGIC;
		readEn	:	OUT	STD_LOGIC;
		done		:	OUT	STD_LOGIC;
		writeEn	:	OUT	STD_LOGIC;
		
		dout		:	OUT	unsigned(7  DOWNTO 0);
		dinAddr	:	OUT	unsigned(15 DOWNTO 0);
		doutAddr	:	OUT	unsigned(15 DOWNTO 0)
	);

end Controller;
---------------------------------------------------------------------------------------------
architecture Behavioral of Controller is
---------------------------------------------------------------------------------------------
	type Matrix1 is array (0 to 8) of signed(6  DOWNTO 0);
	type Matrix2 is array (0 to 8) of signed(8  DOWNTO 0);
---------------------------------------------------------------------------------------------
	Signal done_Int			:	STD_LOGIC					:=	'0';
	Signal rst_Int				:	STD_LOGIC					:= '0';
	Signal go_Int				:	STD_LOGIC					:= '0';
	Signal readEn_Int			:	STD_LOGIC					:= '0';
	Signal writeEn_Int		:	STD_LOGIC					:= '0';

	Signal Start_Cal			:	STD_LOGIC					:=	'0';
	Signal addgen				:	STD_LOGIC					:=	'0';

	Signal cnt					:	unsigned(3	DOWNTO 0)	:=	(others=>'0');
	Signal row_count			:	unsigned(7	DOWNTO 0)	:=	(others=>'0');

	Signal din_Int				:	unsigned(7  DOWNTO 0)	:=	(others=>'0');
	Signal dout_Int			:	unsigned(7  DOWNTO 0)	:=	(others=>'0');
	Signal dinAddr_Int		:	unsigned(15 DOWNTO 0)	:=	(others=>'0');
	Signal doutAddr_Int		:	unsigned(15 DOWNTO 0)	:=	(others=>'0');

	Signal refAddr				:	unsigned(15 DOWNTO 0)	:=	(others=>'0');

	Signal State				:	unsigned(3	DOWNTO 0)	:=	State0;

	Signal Register_Res		:	Matrix2						:=	(others=>(others=>'0'));

	Signal Cal_Res				:	signed(15	DOWNTO 0)	:=	(others=>'0');
	Signal Cal_Gx				:	signed(15	DOWNTO 0)	:=	(others=>'0');
	Signal Cal_Gy				:	signed(15	DOWNTO 0)	:=	(others=>'0');
	
	Constant Gx					:	Matrix1						:=	(to_signed(1, 7), to_signed( 0, 7), to_signed(-1, 7),
																			 to_signed(2, 7), to_signed( 0, 7), to_signed(-2, 7),
																			 to_signed(1, 7), to_signed( 0, 7), to_signed(-1,7));
																			 
	Constant Gy					:	Matrix1						:=	(to_signed(1, 7) , to_signed(2, 7) , to_signed(1, 7),
																			 to_signed(0, 7) , to_signed(0, 7) , to_signed(0, 7),
																			 to_signed(-1, 7) , to_signed(-2, 7) , to_signed(-1, 7));
																			 
-------------------------------------------------------------------------------------------------------------------------
begin
-------------------------------------------------------------------------------------------------------------------------
	Cal_Res							<=	abs(Cal_Gx) + abs(Cal_Gy);
-------------------------------------------------------------------------------------------------------------------------
	ReadEn							<=	readEn_Int;
	done								<=	done_Int;
	dout								<=	dout_Int;
	dinAddr							<=	dinAddr_Int;
	doutAddr							<=	doutAddr_Int;
	writeEn							<=	writeEn_Int;
-------------------------------------------------------------------------------------------------------------------------
	process(Clock)
	begin
	
		if rising_edge(Clock) then
		
			rst_Int					<=	rst;
			go_Int					<=	go;

			if (go_Int = '1' and done_Int = '0') then
				readEn_Int			<=	'1';
			end if;
			
			if (rst_Int = '1') then
				done_Int 			<=	'0';
				State					<= State0;
			end if;
		
				if (readEn_Int = '1') then
				Cal_Gx				<=	(others=>'0');
				Cal_Gy				<=	(others=>'0');
				case (State) is
					when State0	=>
						case cnt is
							when count0	=>
								dinAddr_Int	<=	refAddr;
								State		<=	State1;
							when count1	=>
								dinAddr_Int	<=	refAddr + 1;
								State		<=	State1;
							when count2	=>
								dinAddr_Int	<=	refAddr + 2;
								State		<=	State1;
							when count3	=>
								dinAddr_Int	<=	refAddr + 256;
								State		<=	State1;
							when count4	=>
								dinAddr_Int	<=	refAddr + 257;
								State		<=	State1;
							when count5	=>
								dinAddr_Int	<=	refAddr + 258;
								State		<=	State1;
							when count6	=>
								dinAddr_Int	<=	refAddr + 512;
								State		<=	State1;
							when count7	=>
								dinAddr_Int	<=	refAddr + 513;
								State		<=	State1;
							when count8	=>
								dinAddr_Int	<=	refAddr + 514;
								State		<=	State1;
							when count9	=>
								row_count	<=	row_count + 1;
								refAddr		<=	refAddr + 1;
								if (row_count = to_unsigned(253, 8)) then
									row_count<=	(others=>'0');
									refAddr	<=	refAddr	 + 3;
								end if;
								State			<=	State1;
							when others	=>
								cnt			<=	(others=>'0');
								State			<=	State2;
						end case;
					when State1	=>
						State					<=	State0;
						cnt					<=	cnt + 1;
						Register_Res(0)	<=	Register_Res(1);
						Register_Res(1)	<=	Register_Res(2);
						Register_Res(2)	<=	Register_Res(3);
						Register_Res(3)	<=	Register_Res(4);
						Register_Res(4)	<=	Register_Res(5);
						Register_Res(5)	<=	Register_Res(6);
						Register_Res(6)	<=	Register_Res(7);
						Register_Res(7)	<=	Register_Res(8);
						Register_Res(8)	<=	signed('0'&din_Int);
					when State2 =>
						Cal_Gx	<=	Register_Res(0) * Gx(0) + 
										Register_Res(1) * Gx(1) + 
										Register_Res(2) * Gx(2) + 
										Register_Res(3) * Gx(3) + 
										Register_Res(4) * Gx(4) + 
										Register_Res(5) * Gx(5) +
										Register_Res(6) * Gx(6) +
										Register_Res(7) * Gx(7) +
										Register_Res(8) * Gx(8);

						Cal_Gy	<=	Register_Res(0) * Gy(0) + 
										Register_Res(1) * Gy(1) + 
										Register_Res(2) * Gy(2) + 
										Register_Res(3) * Gy(3) + 
										Register_Res(4) * Gy(4) + 
										Register_Res(5) * Gy(5) +
										Register_Res(6) * Gy(6) +
										Register_Res(7) * Gy(7) +
										Register_Res(8) * Gy(8);
						State			<=	State3;
					when State3	=>
						dout_Int		<=	unsigned('0'&Cal_Res(7 DOWNTO 1));
						if Cal_Res > to_signed(255, 16) then
							dout_Int		<=	to_unsigned(255, 8);
						end if;
						writeEn_Int	<=	'1';
						readEn_Int	<=	'0';
						State			<=	State0;
					when others	=>
						null;
				end case;
			end if;

			if (WriteEn_Int	= '1') then
				doutAddr_Int		<=	doutAddr_Int + 1;
				WriteEn_Int			<=	'0';
				readEn_Int			<=	'1';
			end if;
			
			if (doutAddr_Int = to_unsigned(64517, 16)) then
				done_Int				<=	'1';
			end if;
			
		end if;
	end process;
---------------------------------------------	
	Memory_Read: entity work.Memory_Read
	Generic	MAP
	(
		Mem_Addr		=>	16,
		Mem_Width	=>	8
	)
	PORT MAP(
		Clock 		=> Clock,
		readEn 		=> readEn_Int,
		Address 		=> dinAddr_Int,
		data_out 	=> din_Int
	);
---------------------------------------------
	Memory_Write: entity work.Memory_Write 
	Generic	MAP
	(
		Mem_Addr		=>	16,
		Mem_Width	=>	8
	)
	PORT MAP(
		Clock 		=> Clock,
		writeEn 		=> WriteEn_Int,
		Address 		=> doutAddr_Int,
		data_in 		=> dout_Int
	);
---------------------------------------------

end Behavioral;


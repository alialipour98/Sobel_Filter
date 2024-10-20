--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Controller_synthesis.vhd
-- /___/   /\     Timestamp: Tue Dec 13 22:00:19 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Controller -w -dir netgen/synthesis -ofmt vhdl -sim Controller.ngc Controller_synthesis.vhd 
-- Device	: xc6slx9-2-tqg144
-- Input file	: Controller.ngc
-- Output file	: C:\Users\User\Documents\ISE_Project\Sobel_Filter\netgen\synthesis\Controller_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Controller
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Controller is
  port (
    Clock : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    go : in STD_LOGIC := 'X'; 
    readEn : out STD_LOGIC; 
    writeEn : out STD_LOGIC; 
    done : out STD_LOGIC; 
    din : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    dinAddr : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    doutAddr : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end Controller;

architecture Structure of Controller is
  signal din_7_IBUF_0 : STD_LOGIC; 
  signal din_6_IBUF_1 : STD_LOGIC; 
  signal din_5_IBUF_2 : STD_LOGIC; 
  signal din_4_IBUF_3 : STD_LOGIC; 
  signal din_3_IBUF_4 : STD_LOGIC; 
  signal din_2_IBUF_5 : STD_LOGIC; 
  signal din_1_IBUF_6 : STD_LOGIC; 
  signal din_0_IBUF_7 : STD_LOGIC; 
  signal Clock_BUFGP_8 : STD_LOGIC; 
  signal rst_IBUF_9 : STD_LOGIC; 
  signal go_IBUF_10 : STD_LOGIC; 
  signal go_Int_11 : STD_LOGIC; 
  signal rst_Int_12 : STD_LOGIC; 
  signal readEn_Int_13 : STD_LOGIC; 
  signal Start_Cal_14 : STD_LOGIC; 
  signal done_Int_15 : STD_LOGIC; 
  signal writeEn_Int_16 : STD_LOGIC; 
  signal dout_7_OBUF_44 : STD_LOGIC; 
  signal dout_6_OBUF_45 : STD_LOGIC; 
  signal dout_5_OBUF_46 : STD_LOGIC; 
  signal dout_4_OBUF_47 : STD_LOGIC; 
  signal dout_3_OBUF_48 : STD_LOGIC; 
  signal dout_2_OBUF_49 : STD_LOGIC; 
  signal dout_1_OBUF_50 : STD_LOGIC; 
  signal dout_0_OBUF_51 : STD_LOGIC; 
  signal Counter_j_1_GND_4_o_mux_33_OUT_1_Q : STD_LOGIC; 
  signal Counter_j_1_GND_4_o_mux_33_OUT_0_Q : STD_LOGIC; 
  signal Counter_j_1_PWR_4_o_equal_39_o : STD_LOGIC; 
  signal Counter_M_7_PWR_4_o_equal_30_o : STD_LOGIC; 
  signal Counter_i_1_PWR_4_o_equal_24_o : STD_LOGIC; 
  signal Counter_k_7_Counter_M_7_AND_133_o_91 : STD_LOGIC; 
  signal \Q_n0181_2)\ : STD_LOGIC; 
  signal \Q_n0181_1)\ : STD_LOGIC; 
  signal \Q_n0181_0)\ : STD_LOGIC; 
  signal \Q_n0181_5)\ : STD_LOGIC; 
  signal \Q_n0181_4)\ : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal ADDER_FOR_MULTADD_Madd_0 : STD_LOGIC; 
  signal ADDER_FOR_MULTADD_Madd_1 : STD_LOGIC; 
  signal ADDER_FOR_MULTADD_Madd_2 : STD_LOGIC; 
  signal ADDER_FOR_MULTADD_Madd_3 : STD_LOGIC; 
  signal ADDER_FOR_MULTADD_Madd_4 : STD_LOGIC; 
  signal ADDER_FOR_MULTADD_Madd_5 : STD_LOGIC; 
  signal ADDER_FOR_MULTADD_Madd_6 : STD_LOGIC; 
  signal ADDER_FOR_MULTADD_Madd_7 : STD_LOGIC; 
  signal ADDER_FOR_MULTADD_Madd_8 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd_01 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd_16 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd_21 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd_31 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd_41 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd_51 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd_61 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd_71 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd_81 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd_91 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd_101 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd_111 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd_121 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd_131 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd_141 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd_151 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_126 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_lut_0_1_127 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_1_128 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd11_129 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_lut_0_2_130 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_2_131 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd12_132 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_lut_0_3_133 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_3_134 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd13_135 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_lut_0_4_136 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_4_137 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd14_138 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_lut_0_5_139 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_5_140 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd15_141 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_lut_0_6_142 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_6_143 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd16_144 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_lut_0_7_145 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_7_146 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd17_147 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_lut_0_8_148 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_8_149 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_lut_0_9 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_9_151 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_lut_0_10 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_10_153 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_lut_0_11 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_11_155 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_lut_0_12 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_12_157 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_lut_0_13 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_13_159 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_lut_0_14 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_14 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_lut_0_15 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_0_2 : STD_LOGIC; 
  signal Result_1_2 : STD_LOGIC; 
  signal Result_2_2 : STD_LOGIC; 
  signal Result_3_2 : STD_LOGIC; 
  signal Result_4_2 : STD_LOGIC; 
  signal Result_5_2 : STD_LOGIC; 
  signal Result_6_2 : STD_LOGIC; 
  signal Result_7_2 : STD_LOGIC; 
  signal Mcount_Counter_i_val : STD_LOGIC; 
  signal Result_0_3 : STD_LOGIC; 
  signal Result_1_3 : STD_LOGIC; 
  signal Maddsub_n0131_1 : STD_LOGIC; 
  signal Maddsub_n0131_2 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_0 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_1 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_2 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_3 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_4 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_5 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_6 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_7 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_8 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_9 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_10 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_11 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_12 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_13 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_14 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_15 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_16 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_17 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_18 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_19 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_20 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_21 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_22 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_23 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_24 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_25 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_26 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_27 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_28 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_29 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_30 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_31 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_32 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_33 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_34 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_35 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_36 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_37 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_38 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_39 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_40 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_41 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_42 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_43 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_44 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_45 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_46 : STD_LOGIC; 
  signal Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_47 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal readEn_Int_glue_set_340 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_8_rt_341 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_9_rt_342 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_10_rt_343 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_11_rt_344 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_12_rt_345 : STD_LOGIC; 
  signal ADDERTREE_INTERNAL_Madd1_cy_0_13_rt_346 : STD_LOGIC; 
  signal Mcount_doutAddr_Int_cy_1_rt_347 : STD_LOGIC; 
  signal Mcount_doutAddr_Int_cy_2_rt_348 : STD_LOGIC; 
  signal Mcount_doutAddr_Int_cy_3_rt_349 : STD_LOGIC; 
  signal Mcount_doutAddr_Int_cy_4_rt_350 : STD_LOGIC; 
  signal Mcount_doutAddr_Int_cy_5_rt_351 : STD_LOGIC; 
  signal Mcount_doutAddr_Int_cy_6_rt_352 : STD_LOGIC; 
  signal Mcount_doutAddr_Int_cy_7_rt_353 : STD_LOGIC; 
  signal Mcount_doutAddr_Int_cy_8_rt_354 : STD_LOGIC; 
  signal Mcount_doutAddr_Int_cy_9_rt_355 : STD_LOGIC; 
  signal Mcount_doutAddr_Int_cy_10_rt_356 : STD_LOGIC; 
  signal Mcount_doutAddr_Int_cy_11_rt_357 : STD_LOGIC; 
  signal Mcount_doutAddr_Int_cy_12_rt_358 : STD_LOGIC; 
  signal Mcount_doutAddr_Int_cy_13_rt_359 : STD_LOGIC; 
  signal Mcount_doutAddr_Int_cy_14_rt_360 : STD_LOGIC; 
  signal Mcount_Counter_M_cy_1_rt_361 : STD_LOGIC; 
  signal Mcount_Counter_M_cy_2_rt_362 : STD_LOGIC; 
  signal Mcount_Counter_M_cy_3_rt_363 : STD_LOGIC; 
  signal Mcount_Counter_M_cy_4_rt_364 : STD_LOGIC; 
  signal Mcount_Counter_M_cy_5_rt_365 : STD_LOGIC; 
  signal Mcount_Counter_M_cy_6_rt_366 : STD_LOGIC; 
  signal Mcount_Counter_k_cy_1_rt_367 : STD_LOGIC; 
  signal Mcount_Counter_k_cy_2_rt_368 : STD_LOGIC; 
  signal Mcount_Counter_k_cy_3_rt_369 : STD_LOGIC; 
  signal Mcount_Counter_k_cy_4_rt_370 : STD_LOGIC; 
  signal Mcount_Counter_k_cy_5_rt_371 : STD_LOGIC; 
  signal Mcount_Counter_k_cy_6_rt_372 : STD_LOGIC; 
  signal Maddsub_n0131_Madd1_cy_2_rt_373 : STD_LOGIC; 
  signal Mcount_doutAddr_Int_xor_15_rt_374 : STD_LOGIC; 
  signal Mcount_Counter_M_xor_7_rt_375 : STD_LOGIC; 
  signal Mcount_Counter_k_xor_7_rt_376 : STD_LOGIC; 
  signal done_Int_rstpot_377 : STD_LOGIC; 
  signal writeEn_Int_rstpot_378 : STD_LOGIC; 
  signal Start_Cal_rstpot_379 : STD_LOGIC; 
  signal NLW_Mmac_n0137_CARRYOUTF_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_CARRYOUT_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_P_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_PCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0137_M_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_CARRYOUTF_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_CARRYOUT_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_PCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_P_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmac_n0134_M_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_CARRYOUTF_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_CARRYOUT_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_PCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Maddsub_n0122_M_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_CARRYOUTF_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_CARRYOUT_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_P_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_PCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_Cal_Res1_M_0_UNCONNECTED : STD_LOGIC; 
  signal dinAddr_Int : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Cal_Gy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal doutAddr_Int : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Counter_M : STD_LOGIC_VECTOR ( 7 downto 1 ); 
  signal Counter_j : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Counter_k : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Counter_i : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal ADDERTREE_INTERNAL_Madd1_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal ADDERTREE_INTERNAL_Madd1_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Mcount_doutAddr_Int_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_doutAddr_Int_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Mcount_Counter_M_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_Counter_M_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Mcount_Counter_k_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_Counter_k_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Maddsub_n0131_Madd1_lut : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal Maddsub_n0131_Madd1_cy : STD_LOGIC_VECTOR ( 2 downto 1 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => N1
    );
  rst_Int : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      D => rst_IBUF_9,
      Q => rst_Int_12
    );
  go_Int : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      D => go_IBUF_10,
      Q => go_Int_11
    );
  Counter_j_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Mcount_Counter_i_val,
      D => Counter_j_1_GND_4_o_mux_33_OUT_0_Q,
      R => Counter_j_1_PWR_4_o_equal_39_o,
      Q => Counter_j(0)
    );
  Counter_j_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Mcount_Counter_i_val,
      D => Counter_j_1_GND_4_o_mux_33_OUT_1_Q,
      R => Counter_j_1_PWR_4_o_equal_39_o,
      Q => Counter_j(1)
    );
  dinAddr_Int_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Start_Cal_14,
      D => ADDERTREE_INTERNAL_Madd_01,
      Q => dinAddr_Int(0)
    );
  dinAddr_Int_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Start_Cal_14,
      D => ADDERTREE_INTERNAL_Madd_16,
      Q => dinAddr_Int(1)
    );
  dinAddr_Int_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Start_Cal_14,
      D => ADDERTREE_INTERNAL_Madd_21,
      Q => dinAddr_Int(2)
    );
  dinAddr_Int_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Start_Cal_14,
      D => ADDERTREE_INTERNAL_Madd_31,
      Q => dinAddr_Int(3)
    );
  dinAddr_Int_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Start_Cal_14,
      D => ADDERTREE_INTERNAL_Madd_41,
      Q => dinAddr_Int(4)
    );
  dinAddr_Int_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Start_Cal_14,
      D => ADDERTREE_INTERNAL_Madd_51,
      Q => dinAddr_Int(5)
    );
  dinAddr_Int_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Start_Cal_14,
      D => ADDERTREE_INTERNAL_Madd_61,
      Q => dinAddr_Int(6)
    );
  dinAddr_Int_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Start_Cal_14,
      D => ADDERTREE_INTERNAL_Madd_71,
      Q => dinAddr_Int(7)
    );
  dinAddr_Int_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Start_Cal_14,
      D => ADDERTREE_INTERNAL_Madd_81,
      Q => dinAddr_Int(8)
    );
  dinAddr_Int_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Start_Cal_14,
      D => ADDERTREE_INTERNAL_Madd_91,
      Q => dinAddr_Int(9)
    );
  dinAddr_Int_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Start_Cal_14,
      D => ADDERTREE_INTERNAL_Madd_101,
      Q => dinAddr_Int(10)
    );
  dinAddr_Int_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Start_Cal_14,
      D => ADDERTREE_INTERNAL_Madd_111,
      Q => dinAddr_Int(11)
    );
  dinAddr_Int_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Start_Cal_14,
      D => ADDERTREE_INTERNAL_Madd_121,
      Q => dinAddr_Int(12)
    );
  dinAddr_Int_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Start_Cal_14,
      D => ADDERTREE_INTERNAL_Madd_131,
      Q => dinAddr_Int(13)
    );
  dinAddr_Int_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Start_Cal_14,
      D => ADDERTREE_INTERNAL_Madd_141,
      Q => dinAddr_Int(14)
    );
  dinAddr_Int_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Start_Cal_14,
      D => ADDERTREE_INTERNAL_Madd_151,
      Q => dinAddr_Int(15)
    );
  ADDERTREE_INTERNAL_Madd1_lut_0_Q : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => N1,
      I1 => Counter_k(0),
      I2 => Counter_i(0),
      I3 => ADDER_FOR_MULTADD_Madd_0,
      O => ADDERTREE_INTERNAL_Madd1_lut(0)
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N1,
      S => ADDERTREE_INTERNAL_Madd1_lut(0),
      O => ADDERTREE_INTERNAL_Madd1_cy(0)
    );
  ADDERTREE_INTERNAL_Madd1_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => ADDERTREE_INTERNAL_Madd1_lut(0),
      O => ADDERTREE_INTERNAL_Madd_01
    );
  ADDERTREE_INTERNAL_Madd1 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => Counter_k(0),
      I1 => Counter_i(0),
      I2 => ADDER_FOR_MULTADD_Madd_0,
      O => ADDERTREE_INTERNAL_Madd1_126
    );
  ADDERTREE_INTERNAL_Madd1_lut_0_1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => ADDER_FOR_MULTADD_Madd_1,
      I1 => Counter_i(1),
      I2 => Counter_k(1),
      I3 => ADDERTREE_INTERNAL_Madd1_126,
      O => ADDERTREE_INTERNAL_Madd1_lut_0_1_127
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_0 : MUXCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy(0),
      DI => ADDERTREE_INTERNAL_Madd1_126,
      S => ADDERTREE_INTERNAL_Madd1_lut_0_1_127,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_1_128
    );
  ADDERTREE_INTERNAL_Madd1_xor_0_0 : XORCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy(0),
      LI => ADDERTREE_INTERNAL_Madd1_lut_0_1_127,
      O => ADDERTREE_INTERNAL_Madd_16
    );
  ADDERTREE_INTERNAL_Madd11 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => ADDER_FOR_MULTADD_Madd_1,
      I1 => Counter_i(1),
      I2 => Counter_k(1),
      O => ADDERTREE_INTERNAL_Madd11_129
    );
  ADDERTREE_INTERNAL_Madd1_lut_0_2 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => ADDER_FOR_MULTADD_Madd_2,
      I1 => Counter_k(2),
      I2 => ADDERTREE_INTERNAL_Madd11_129,
      O => ADDERTREE_INTERNAL_Madd1_lut_0_2_130
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_1 : MUXCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_1_128,
      DI => ADDERTREE_INTERNAL_Madd11_129,
      S => ADDERTREE_INTERNAL_Madd1_lut_0_2_130,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_2_131
    );
  ADDERTREE_INTERNAL_Madd1_xor_0_1 : XORCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_1_128,
      LI => ADDERTREE_INTERNAL_Madd1_lut_0_2_130,
      O => ADDERTREE_INTERNAL_Madd_21
    );
  ADDERTREE_INTERNAL_Madd12 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ADDER_FOR_MULTADD_Madd_2,
      I1 => Counter_k(2),
      O => ADDERTREE_INTERNAL_Madd12_132
    );
  ADDERTREE_INTERNAL_Madd1_lut_0_3 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => ADDER_FOR_MULTADD_Madd_3,
      I1 => Counter_k(3),
      I2 => ADDERTREE_INTERNAL_Madd12_132,
      O => ADDERTREE_INTERNAL_Madd1_lut_0_3_133
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_2 : MUXCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_2_131,
      DI => ADDERTREE_INTERNAL_Madd12_132,
      S => ADDERTREE_INTERNAL_Madd1_lut_0_3_133,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_3_134
    );
  ADDERTREE_INTERNAL_Madd1_xor_0_2 : XORCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_2_131,
      LI => ADDERTREE_INTERNAL_Madd1_lut_0_3_133,
      O => ADDERTREE_INTERNAL_Madd_31
    );
  ADDERTREE_INTERNAL_Madd13 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ADDER_FOR_MULTADD_Madd_3,
      I1 => Counter_k(3),
      O => ADDERTREE_INTERNAL_Madd13_135
    );
  ADDERTREE_INTERNAL_Madd1_lut_0_4 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => ADDER_FOR_MULTADD_Madd_4,
      I1 => Counter_k(4),
      I2 => ADDERTREE_INTERNAL_Madd13_135,
      O => ADDERTREE_INTERNAL_Madd1_lut_0_4_136
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_3 : MUXCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_3_134,
      DI => ADDERTREE_INTERNAL_Madd13_135,
      S => ADDERTREE_INTERNAL_Madd1_lut_0_4_136,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_4_137
    );
  ADDERTREE_INTERNAL_Madd1_xor_0_3 : XORCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_3_134,
      LI => ADDERTREE_INTERNAL_Madd1_lut_0_4_136,
      O => ADDERTREE_INTERNAL_Madd_41
    );
  ADDERTREE_INTERNAL_Madd14 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ADDER_FOR_MULTADD_Madd_4,
      I1 => Counter_k(4),
      O => ADDERTREE_INTERNAL_Madd14_138
    );
  ADDERTREE_INTERNAL_Madd1_lut_0_5 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => ADDER_FOR_MULTADD_Madd_5,
      I1 => Counter_k(5),
      I2 => ADDERTREE_INTERNAL_Madd14_138,
      O => ADDERTREE_INTERNAL_Madd1_lut_0_5_139
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_4 : MUXCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_4_137,
      DI => ADDERTREE_INTERNAL_Madd14_138,
      S => ADDERTREE_INTERNAL_Madd1_lut_0_5_139,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_5_140
    );
  ADDERTREE_INTERNAL_Madd1_xor_0_4 : XORCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_4_137,
      LI => ADDERTREE_INTERNAL_Madd1_lut_0_5_139,
      O => ADDERTREE_INTERNAL_Madd_51
    );
  ADDERTREE_INTERNAL_Madd15 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ADDER_FOR_MULTADD_Madd_5,
      I1 => Counter_k(5),
      O => ADDERTREE_INTERNAL_Madd15_141
    );
  ADDERTREE_INTERNAL_Madd1_lut_0_6 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => ADDER_FOR_MULTADD_Madd_6,
      I1 => Counter_k(6),
      I2 => ADDERTREE_INTERNAL_Madd15_141,
      O => ADDERTREE_INTERNAL_Madd1_lut_0_6_142
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_5 : MUXCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_5_140,
      DI => ADDERTREE_INTERNAL_Madd15_141,
      S => ADDERTREE_INTERNAL_Madd1_lut_0_6_142,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_6_143
    );
  ADDERTREE_INTERNAL_Madd1_xor_0_5 : XORCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_5_140,
      LI => ADDERTREE_INTERNAL_Madd1_lut_0_6_142,
      O => ADDERTREE_INTERNAL_Madd_61
    );
  ADDERTREE_INTERNAL_Madd16 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ADDER_FOR_MULTADD_Madd_6,
      I1 => Counter_k(6),
      O => ADDERTREE_INTERNAL_Madd16_144
    );
  ADDERTREE_INTERNAL_Madd1_lut_0_7 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => ADDER_FOR_MULTADD_Madd_7,
      I1 => Counter_k(7),
      I2 => ADDERTREE_INTERNAL_Madd16_144,
      O => ADDERTREE_INTERNAL_Madd1_lut_0_7_145
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_6 : MUXCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_6_143,
      DI => ADDERTREE_INTERNAL_Madd16_144,
      S => ADDERTREE_INTERNAL_Madd1_lut_0_7_145,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_7_146
    );
  ADDERTREE_INTERNAL_Madd1_xor_0_6 : XORCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_6_143,
      LI => ADDERTREE_INTERNAL_Madd1_lut_0_7_145,
      O => ADDERTREE_INTERNAL_Madd_71
    );
  ADDERTREE_INTERNAL_Madd17 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ADDER_FOR_MULTADD_Madd_7,
      I1 => Counter_k(7),
      O => ADDERTREE_INTERNAL_Madd17_147
    );
  ADDERTREE_INTERNAL_Madd1_lut_0_8 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ADDER_FOR_MULTADD_Madd_8,
      I1 => ADDERTREE_INTERNAL_Madd17_147,
      O => ADDERTREE_INTERNAL_Madd1_lut_0_8_148
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_7 : MUXCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_7_146,
      DI => ADDER_FOR_MULTADD_Madd_8,
      S => ADDERTREE_INTERNAL_Madd1_lut_0_8_148,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_8_149
    );
  ADDERTREE_INTERNAL_Madd1_xor_0_7 : XORCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_7_146,
      LI => ADDERTREE_INTERNAL_Madd1_lut_0_8_148,
      O => ADDERTREE_INTERNAL_Madd_81
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_8 : MUXCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_8_149,
      DI => N1,
      S => ADDERTREE_INTERNAL_Madd1_cy_0_8_rt_341,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_9_151
    );
  ADDERTREE_INTERNAL_Madd1_xor_0_8 : XORCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_8_149,
      LI => ADDERTREE_INTERNAL_Madd1_cy_0_8_rt_341,
      O => ADDERTREE_INTERNAL_Madd_91
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_9 : MUXCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_9_151,
      DI => N1,
      S => ADDERTREE_INTERNAL_Madd1_cy_0_9_rt_342,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_10_153
    );
  ADDERTREE_INTERNAL_Madd1_xor_0_9 : XORCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_9_151,
      LI => ADDERTREE_INTERNAL_Madd1_cy_0_9_rt_342,
      O => ADDERTREE_INTERNAL_Madd_101
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_10 : MUXCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_10_153,
      DI => N1,
      S => ADDERTREE_INTERNAL_Madd1_cy_0_10_rt_343,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_11_155
    );
  ADDERTREE_INTERNAL_Madd1_xor_0_10 : XORCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_10_153,
      LI => ADDERTREE_INTERNAL_Madd1_cy_0_10_rt_343,
      O => ADDERTREE_INTERNAL_Madd_111
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_11 : MUXCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_11_155,
      DI => N1,
      S => ADDERTREE_INTERNAL_Madd1_cy_0_11_rt_344,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_12_157
    );
  ADDERTREE_INTERNAL_Madd1_xor_0_11 : XORCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_11_155,
      LI => ADDERTREE_INTERNAL_Madd1_cy_0_11_rt_344,
      O => ADDERTREE_INTERNAL_Madd_121
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_12 : MUXCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_12_157,
      DI => N1,
      S => ADDERTREE_INTERNAL_Madd1_cy_0_12_rt_345,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_13_159
    );
  ADDERTREE_INTERNAL_Madd1_xor_0_12 : XORCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_12_157,
      LI => ADDERTREE_INTERNAL_Madd1_cy_0_12_rt_345,
      O => ADDERTREE_INTERNAL_Madd_131
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_13 : MUXCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_13_159,
      DI => N1,
      S => ADDERTREE_INTERNAL_Madd1_cy_0_13_rt_346,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_14
    );
  ADDERTREE_INTERNAL_Madd1_xor_0_13 : XORCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_13_159,
      LI => ADDERTREE_INTERNAL_Madd1_cy_0_13_rt_346,
      O => ADDERTREE_INTERNAL_Madd_141
    );
  ADDERTREE_INTERNAL_Madd1_xor_0_14 : XORCY
    port map (
      CI => ADDERTREE_INTERNAL_Madd1_cy_0_14,
      LI => ADDERTREE_INTERNAL_Madd1_lut_0_15,
      O => ADDERTREE_INTERNAL_Madd_151
    );
  Mmac_n0137 : DSP48A1
    generic map(
      CREG => 0,
      A0REG => 0,
      A1REG => 0,
      B0REG => 1,
      B1REG => 0,
      MREG => 0,
      PREG => 1,
      OPMODEREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      DREG => 0
    )
    port map (
      CECARRYIN => N1,
      RSTC => N1,
      RSTCARRYIN => N1,
      CED => N1,
      RSTD => N1,
      CEOPMODE => N1,
      CEC => N1,
      CARRYOUTF => NLW_Mmac_n0137_CARRYOUTF_UNCONNECTED,
      RSTOPMODE => N1,
      RSTM => N1,
      CLK => Clock_BUFGP_8,
      RSTB => N1,
      CEM => N1,
      CEB => N0,
      CARRYIN => N1,
      CEP => Start_Cal_14,
      CEA => N1,
      CARRYOUT => NLW_Mmac_n0137_CARRYOUT_UNCONNECTED,
      RSTA => N1,
      RSTP => N1,
      B(17) => din_7_IBUF_0,
      B(16) => din_7_IBUF_0,
      B(15) => din_7_IBUF_0,
      B(14) => din_7_IBUF_0,
      B(13) => din_7_IBUF_0,
      B(12) => din_7_IBUF_0,
      B(11) => din_7_IBUF_0,
      B(10) => din_7_IBUF_0,
      B(9) => din_7_IBUF_0,
      B(8) => din_7_IBUF_0,
      B(7) => din_7_IBUF_0,
      B(6) => din_6_IBUF_1,
      B(5) => din_5_IBUF_2,
      B(4) => din_4_IBUF_3,
      B(3) => din_3_IBUF_4,
      B(2) => din_2_IBUF_5,
      B(1) => din_1_IBUF_6,
      B(0) => din_0_IBUF_7,
      BCOUT(17) => NLW_Mmac_n0137_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_Mmac_n0137_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_Mmac_n0137_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_Mmac_n0137_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_Mmac_n0137_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_Mmac_n0137_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_Mmac_n0137_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_Mmac_n0137_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_Mmac_n0137_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_Mmac_n0137_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_Mmac_n0137_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_Mmac_n0137_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_Mmac_n0137_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_Mmac_n0137_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_Mmac_n0137_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_Mmac_n0137_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_Mmac_n0137_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_Mmac_n0137_BCOUT_0_UNCONNECTED,
      PCIN(47) => NLW_Mmac_n0137_PCIN_47_UNCONNECTED,
      PCIN(46) => NLW_Mmac_n0137_PCIN_46_UNCONNECTED,
      PCIN(45) => NLW_Mmac_n0137_PCIN_45_UNCONNECTED,
      PCIN(44) => NLW_Mmac_n0137_PCIN_44_UNCONNECTED,
      PCIN(43) => NLW_Mmac_n0137_PCIN_43_UNCONNECTED,
      PCIN(42) => NLW_Mmac_n0137_PCIN_42_UNCONNECTED,
      PCIN(41) => NLW_Mmac_n0137_PCIN_41_UNCONNECTED,
      PCIN(40) => NLW_Mmac_n0137_PCIN_40_UNCONNECTED,
      PCIN(39) => NLW_Mmac_n0137_PCIN_39_UNCONNECTED,
      PCIN(38) => NLW_Mmac_n0137_PCIN_38_UNCONNECTED,
      PCIN(37) => NLW_Mmac_n0137_PCIN_37_UNCONNECTED,
      PCIN(36) => NLW_Mmac_n0137_PCIN_36_UNCONNECTED,
      PCIN(35) => NLW_Mmac_n0137_PCIN_35_UNCONNECTED,
      PCIN(34) => NLW_Mmac_n0137_PCIN_34_UNCONNECTED,
      PCIN(33) => NLW_Mmac_n0137_PCIN_33_UNCONNECTED,
      PCIN(32) => NLW_Mmac_n0137_PCIN_32_UNCONNECTED,
      PCIN(31) => NLW_Mmac_n0137_PCIN_31_UNCONNECTED,
      PCIN(30) => NLW_Mmac_n0137_PCIN_30_UNCONNECTED,
      PCIN(29) => NLW_Mmac_n0137_PCIN_29_UNCONNECTED,
      PCIN(28) => NLW_Mmac_n0137_PCIN_28_UNCONNECTED,
      PCIN(27) => NLW_Mmac_n0137_PCIN_27_UNCONNECTED,
      PCIN(26) => NLW_Mmac_n0137_PCIN_26_UNCONNECTED,
      PCIN(25) => NLW_Mmac_n0137_PCIN_25_UNCONNECTED,
      PCIN(24) => NLW_Mmac_n0137_PCIN_24_UNCONNECTED,
      PCIN(23) => NLW_Mmac_n0137_PCIN_23_UNCONNECTED,
      PCIN(22) => NLW_Mmac_n0137_PCIN_22_UNCONNECTED,
      PCIN(21) => NLW_Mmac_n0137_PCIN_21_UNCONNECTED,
      PCIN(20) => NLW_Mmac_n0137_PCIN_20_UNCONNECTED,
      PCIN(19) => NLW_Mmac_n0137_PCIN_19_UNCONNECTED,
      PCIN(18) => NLW_Mmac_n0137_PCIN_18_UNCONNECTED,
      PCIN(17) => NLW_Mmac_n0137_PCIN_17_UNCONNECTED,
      PCIN(16) => NLW_Mmac_n0137_PCIN_16_UNCONNECTED,
      PCIN(15) => NLW_Mmac_n0137_PCIN_15_UNCONNECTED,
      PCIN(14) => NLW_Mmac_n0137_PCIN_14_UNCONNECTED,
      PCIN(13) => NLW_Mmac_n0137_PCIN_13_UNCONNECTED,
      PCIN(12) => NLW_Mmac_n0137_PCIN_12_UNCONNECTED,
      PCIN(11) => NLW_Mmac_n0137_PCIN_11_UNCONNECTED,
      PCIN(10) => NLW_Mmac_n0137_PCIN_10_UNCONNECTED,
      PCIN(9) => NLW_Mmac_n0137_PCIN_9_UNCONNECTED,
      PCIN(8) => NLW_Mmac_n0137_PCIN_8_UNCONNECTED,
      PCIN(7) => NLW_Mmac_n0137_PCIN_7_UNCONNECTED,
      PCIN(6) => NLW_Mmac_n0137_PCIN_6_UNCONNECTED,
      PCIN(5) => NLW_Mmac_n0137_PCIN_5_UNCONNECTED,
      PCIN(4) => NLW_Mmac_n0137_PCIN_4_UNCONNECTED,
      PCIN(3) => NLW_Mmac_n0137_PCIN_3_UNCONNECTED,
      PCIN(2) => NLW_Mmac_n0137_PCIN_2_UNCONNECTED,
      PCIN(1) => NLW_Mmac_n0137_PCIN_1_UNCONNECTED,
      PCIN(0) => NLW_Mmac_n0137_PCIN_0_UNCONNECTED,
      C(47) => N1,
      C(46) => N1,
      C(45) => N1,
      C(44) => N1,
      C(43) => N1,
      C(42) => N1,
      C(41) => N1,
      C(40) => N1,
      C(39) => N1,
      C(38) => N1,
      C(37) => N1,
      C(36) => N1,
      C(35) => N1,
      C(34) => N1,
      C(33) => N1,
      C(32) => N1,
      C(31) => N1,
      C(30) => N1,
      C(29) => N1,
      C(28) => N1,
      C(27) => N1,
      C(26) => N1,
      C(25) => N1,
      C(24) => N1,
      C(23) => N1,
      C(22) => N1,
      C(21) => N1,
      C(20) => N1,
      C(19) => N1,
      C(18) => N1,
      C(17) => N1,
      C(16) => N1,
      C(15) => N1,
      C(14) => N1,
      C(13) => N1,
      C(12) => N1,
      C(11) => N1,
      C(10) => N1,
      C(9) => N1,
      C(8) => N1,
      C(7) => N1,
      C(6) => N1,
      C(5) => N1,
      C(4) => N1,
      C(3) => N1,
      C(2) => N1,
      C(1) => N1,
      C(0) => N1,
      P(47) => NLW_Mmac_n0137_P_47_UNCONNECTED,
      P(46) => NLW_Mmac_n0137_P_46_UNCONNECTED,
      P(45) => NLW_Mmac_n0137_P_45_UNCONNECTED,
      P(44) => NLW_Mmac_n0137_P_44_UNCONNECTED,
      P(43) => NLW_Mmac_n0137_P_43_UNCONNECTED,
      P(42) => NLW_Mmac_n0137_P_42_UNCONNECTED,
      P(41) => NLW_Mmac_n0137_P_41_UNCONNECTED,
      P(40) => NLW_Mmac_n0137_P_40_UNCONNECTED,
      P(39) => NLW_Mmac_n0137_P_39_UNCONNECTED,
      P(38) => NLW_Mmac_n0137_P_38_UNCONNECTED,
      P(37) => NLW_Mmac_n0137_P_37_UNCONNECTED,
      P(36) => NLW_Mmac_n0137_P_36_UNCONNECTED,
      P(35) => NLW_Mmac_n0137_P_35_UNCONNECTED,
      P(34) => NLW_Mmac_n0137_P_34_UNCONNECTED,
      P(33) => NLW_Mmac_n0137_P_33_UNCONNECTED,
      P(32) => NLW_Mmac_n0137_P_32_UNCONNECTED,
      P(31) => NLW_Mmac_n0137_P_31_UNCONNECTED,
      P(30) => NLW_Mmac_n0137_P_30_UNCONNECTED,
      P(29) => NLW_Mmac_n0137_P_29_UNCONNECTED,
      P(28) => NLW_Mmac_n0137_P_28_UNCONNECTED,
      P(27) => NLW_Mmac_n0137_P_27_UNCONNECTED,
      P(26) => NLW_Mmac_n0137_P_26_UNCONNECTED,
      P(25) => NLW_Mmac_n0137_P_25_UNCONNECTED,
      P(24) => NLW_Mmac_n0137_P_24_UNCONNECTED,
      P(23) => NLW_Mmac_n0137_P_23_UNCONNECTED,
      P(22) => NLW_Mmac_n0137_P_22_UNCONNECTED,
      P(21) => NLW_Mmac_n0137_P_21_UNCONNECTED,
      P(20) => NLW_Mmac_n0137_P_20_UNCONNECTED,
      P(19) => NLW_Mmac_n0137_P_19_UNCONNECTED,
      P(18) => NLW_Mmac_n0137_P_18_UNCONNECTED,
      P(17) => NLW_Mmac_n0137_P_17_UNCONNECTED,
      P(16) => NLW_Mmac_n0137_P_16_UNCONNECTED,
      P(15) => NLW_Mmac_n0137_P_15_UNCONNECTED,
      P(14) => NLW_Mmac_n0137_P_14_UNCONNECTED,
      P(13) => NLW_Mmac_n0137_P_13_UNCONNECTED,
      P(12) => NLW_Mmac_n0137_P_12_UNCONNECTED,
      P(11) => NLW_Mmac_n0137_P_11_UNCONNECTED,
      P(10) => Cal_Gy(10),
      P(9) => Cal_Gy(9),
      P(8) => Cal_Gy(8),
      P(7) => Cal_Gy(7),
      P(6) => Cal_Gy(6),
      P(5) => Cal_Gy(5),
      P(4) => Cal_Gy(4),
      P(3) => Cal_Gy(3),
      P(2) => Cal_Gy(2),
      P(1) => Cal_Gy(1),
      P(0) => Cal_Gy(0),
      OPMODE(7) => N1,
      OPMODE(6) => N1,
      OPMODE(5) => N1,
      OPMODE(4) => N1,
      OPMODE(3) => N0,
      OPMODE(2) => N1,
      OPMODE(1) => N1,
      OPMODE(0) => N0,
      D(17) => N1,
      D(16) => N1,
      D(15) => N1,
      D(14) => N1,
      D(13) => N1,
      D(12) => N1,
      D(11) => N1,
      D(10) => N1,
      D(9) => N1,
      D(8) => N1,
      D(7) => N1,
      D(6) => N1,
      D(5) => N1,
      D(4) => N1,
      D(3) => N1,
      D(2) => N1,
      D(1) => N1,
      D(0) => N1,
      PCOUT(47) => NLW_Mmac_n0137_PCOUT_47_UNCONNECTED,
      PCOUT(46) => NLW_Mmac_n0137_PCOUT_46_UNCONNECTED,
      PCOUT(45) => NLW_Mmac_n0137_PCOUT_45_UNCONNECTED,
      PCOUT(44) => NLW_Mmac_n0137_PCOUT_44_UNCONNECTED,
      PCOUT(43) => NLW_Mmac_n0137_PCOUT_43_UNCONNECTED,
      PCOUT(42) => NLW_Mmac_n0137_PCOUT_42_UNCONNECTED,
      PCOUT(41) => NLW_Mmac_n0137_PCOUT_41_UNCONNECTED,
      PCOUT(40) => NLW_Mmac_n0137_PCOUT_40_UNCONNECTED,
      PCOUT(39) => NLW_Mmac_n0137_PCOUT_39_UNCONNECTED,
      PCOUT(38) => NLW_Mmac_n0137_PCOUT_38_UNCONNECTED,
      PCOUT(37) => NLW_Mmac_n0137_PCOUT_37_UNCONNECTED,
      PCOUT(36) => NLW_Mmac_n0137_PCOUT_36_UNCONNECTED,
      PCOUT(35) => NLW_Mmac_n0137_PCOUT_35_UNCONNECTED,
      PCOUT(34) => NLW_Mmac_n0137_PCOUT_34_UNCONNECTED,
      PCOUT(33) => NLW_Mmac_n0137_PCOUT_33_UNCONNECTED,
      PCOUT(32) => NLW_Mmac_n0137_PCOUT_32_UNCONNECTED,
      PCOUT(31) => NLW_Mmac_n0137_PCOUT_31_UNCONNECTED,
      PCOUT(30) => NLW_Mmac_n0137_PCOUT_30_UNCONNECTED,
      PCOUT(29) => NLW_Mmac_n0137_PCOUT_29_UNCONNECTED,
      PCOUT(28) => NLW_Mmac_n0137_PCOUT_28_UNCONNECTED,
      PCOUT(27) => NLW_Mmac_n0137_PCOUT_27_UNCONNECTED,
      PCOUT(26) => NLW_Mmac_n0137_PCOUT_26_UNCONNECTED,
      PCOUT(25) => NLW_Mmac_n0137_PCOUT_25_UNCONNECTED,
      PCOUT(24) => NLW_Mmac_n0137_PCOUT_24_UNCONNECTED,
      PCOUT(23) => NLW_Mmac_n0137_PCOUT_23_UNCONNECTED,
      PCOUT(22) => NLW_Mmac_n0137_PCOUT_22_UNCONNECTED,
      PCOUT(21) => NLW_Mmac_n0137_PCOUT_21_UNCONNECTED,
      PCOUT(20) => NLW_Mmac_n0137_PCOUT_20_UNCONNECTED,
      PCOUT(19) => NLW_Mmac_n0137_PCOUT_19_UNCONNECTED,
      PCOUT(18) => NLW_Mmac_n0137_PCOUT_18_UNCONNECTED,
      PCOUT(17) => NLW_Mmac_n0137_PCOUT_17_UNCONNECTED,
      PCOUT(16) => NLW_Mmac_n0137_PCOUT_16_UNCONNECTED,
      PCOUT(15) => NLW_Mmac_n0137_PCOUT_15_UNCONNECTED,
      PCOUT(14) => NLW_Mmac_n0137_PCOUT_14_UNCONNECTED,
      PCOUT(13) => NLW_Mmac_n0137_PCOUT_13_UNCONNECTED,
      PCOUT(12) => NLW_Mmac_n0137_PCOUT_12_UNCONNECTED,
      PCOUT(11) => NLW_Mmac_n0137_PCOUT_11_UNCONNECTED,
      PCOUT(10) => NLW_Mmac_n0137_PCOUT_10_UNCONNECTED,
      PCOUT(9) => NLW_Mmac_n0137_PCOUT_9_UNCONNECTED,
      PCOUT(8) => NLW_Mmac_n0137_PCOUT_8_UNCONNECTED,
      PCOUT(7) => NLW_Mmac_n0137_PCOUT_7_UNCONNECTED,
      PCOUT(6) => NLW_Mmac_n0137_PCOUT_6_UNCONNECTED,
      PCOUT(5) => NLW_Mmac_n0137_PCOUT_5_UNCONNECTED,
      PCOUT(4) => NLW_Mmac_n0137_PCOUT_4_UNCONNECTED,
      PCOUT(3) => NLW_Mmac_n0137_PCOUT_3_UNCONNECTED,
      PCOUT(2) => NLW_Mmac_n0137_PCOUT_2_UNCONNECTED,
      PCOUT(1) => NLW_Mmac_n0137_PCOUT_1_UNCONNECTED,
      PCOUT(0) => NLW_Mmac_n0137_PCOUT_0_UNCONNECTED,
      A(17) => \Q_n0181_5)\,
      A(16) => \Q_n0181_5)\,
      A(15) => \Q_n0181_5)\,
      A(14) => \Q_n0181_5)\,
      A(13) => \Q_n0181_5)\,
      A(12) => \Q_n0181_5)\,
      A(11) => \Q_n0181_5)\,
      A(10) => \Q_n0181_5)\,
      A(9) => \Q_n0181_5)\,
      A(8) => \Q_n0181_5)\,
      A(7) => \Q_n0181_5)\,
      A(6) => \Q_n0181_5)\,
      A(5) => \Q_n0181_5)\,
      A(4) => \Q_n0181_5)\,
      A(3) => \Q_n0181_5)\,
      A(2) => \Q_n0181_5)\,
      A(1) => \Q_n0181_4)\,
      A(0) => \Q_n0181_0)\,
      M(35) => NLW_Mmac_n0137_M_35_UNCONNECTED,
      M(34) => NLW_Mmac_n0137_M_34_UNCONNECTED,
      M(33) => NLW_Mmac_n0137_M_33_UNCONNECTED,
      M(32) => NLW_Mmac_n0137_M_32_UNCONNECTED,
      M(31) => NLW_Mmac_n0137_M_31_UNCONNECTED,
      M(30) => NLW_Mmac_n0137_M_30_UNCONNECTED,
      M(29) => NLW_Mmac_n0137_M_29_UNCONNECTED,
      M(28) => NLW_Mmac_n0137_M_28_UNCONNECTED,
      M(27) => NLW_Mmac_n0137_M_27_UNCONNECTED,
      M(26) => NLW_Mmac_n0137_M_26_UNCONNECTED,
      M(25) => NLW_Mmac_n0137_M_25_UNCONNECTED,
      M(24) => NLW_Mmac_n0137_M_24_UNCONNECTED,
      M(23) => NLW_Mmac_n0137_M_23_UNCONNECTED,
      M(22) => NLW_Mmac_n0137_M_22_UNCONNECTED,
      M(21) => NLW_Mmac_n0137_M_21_UNCONNECTED,
      M(20) => NLW_Mmac_n0137_M_20_UNCONNECTED,
      M(19) => NLW_Mmac_n0137_M_19_UNCONNECTED,
      M(18) => NLW_Mmac_n0137_M_18_UNCONNECTED,
      M(17) => NLW_Mmac_n0137_M_17_UNCONNECTED,
      M(16) => NLW_Mmac_n0137_M_16_UNCONNECTED,
      M(15) => NLW_Mmac_n0137_M_15_UNCONNECTED,
      M(14) => NLW_Mmac_n0137_M_14_UNCONNECTED,
      M(13) => NLW_Mmac_n0137_M_13_UNCONNECTED,
      M(12) => NLW_Mmac_n0137_M_12_UNCONNECTED,
      M(11) => NLW_Mmac_n0137_M_11_UNCONNECTED,
      M(10) => NLW_Mmac_n0137_M_10_UNCONNECTED,
      M(9) => NLW_Mmac_n0137_M_9_UNCONNECTED,
      M(8) => NLW_Mmac_n0137_M_8_UNCONNECTED,
      M(7) => NLW_Mmac_n0137_M_7_UNCONNECTED,
      M(6) => NLW_Mmac_n0137_M_6_UNCONNECTED,
      M(5) => NLW_Mmac_n0137_M_5_UNCONNECTED,
      M(4) => NLW_Mmac_n0137_M_4_UNCONNECTED,
      M(3) => NLW_Mmac_n0137_M_3_UNCONNECTED,
      M(2) => NLW_Mmac_n0137_M_2_UNCONNECTED,
      M(1) => NLW_Mmac_n0137_M_1_UNCONNECTED,
      M(0) => NLW_Mmac_n0137_M_0_UNCONNECTED
    );
  Mmac_n0134 : DSP48A1
    generic map(
      CREG => 0,
      A0REG => 0,
      A1REG => 0,
      B0REG => 1,
      B1REG => 0,
      MREG => 0,
      PREG => 1,
      OPMODEREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      DREG => 0
    )
    port map (
      CECARRYIN => N1,
      RSTC => N1,
      RSTCARRYIN => N1,
      CED => N1,
      RSTD => N1,
      CEOPMODE => N1,
      CEC => N1,
      CARRYOUTF => NLW_Mmac_n0134_CARRYOUTF_UNCONNECTED,
      RSTOPMODE => N1,
      RSTM => N1,
      CLK => Clock_BUFGP_8,
      RSTB => N1,
      CEM => N1,
      CEB => N0,
      CARRYIN => N1,
      CEP => Start_Cal_14,
      CEA => N1,
      CARRYOUT => NLW_Mmac_n0134_CARRYOUT_UNCONNECTED,
      RSTA => N1,
      RSTP => N1,
      B(17) => din_7_IBUF_0,
      B(16) => din_7_IBUF_0,
      B(15) => din_7_IBUF_0,
      B(14) => din_7_IBUF_0,
      B(13) => din_7_IBUF_0,
      B(12) => din_7_IBUF_0,
      B(11) => din_7_IBUF_0,
      B(10) => din_7_IBUF_0,
      B(9) => din_7_IBUF_0,
      B(8) => din_7_IBUF_0,
      B(7) => din_7_IBUF_0,
      B(6) => din_6_IBUF_1,
      B(5) => din_5_IBUF_2,
      B(4) => din_4_IBUF_3,
      B(3) => din_3_IBUF_4,
      B(2) => din_2_IBUF_5,
      B(1) => din_1_IBUF_6,
      B(0) => din_0_IBUF_7,
      BCOUT(17) => NLW_Mmac_n0134_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_Mmac_n0134_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_Mmac_n0134_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_Mmac_n0134_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_Mmac_n0134_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_Mmac_n0134_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_Mmac_n0134_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_Mmac_n0134_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_Mmac_n0134_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_Mmac_n0134_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_Mmac_n0134_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_Mmac_n0134_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_Mmac_n0134_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_Mmac_n0134_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_Mmac_n0134_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_Mmac_n0134_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_Mmac_n0134_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_Mmac_n0134_BCOUT_0_UNCONNECTED,
      PCIN(47) => NLW_Mmac_n0134_PCIN_47_UNCONNECTED,
      PCIN(46) => NLW_Mmac_n0134_PCIN_46_UNCONNECTED,
      PCIN(45) => NLW_Mmac_n0134_PCIN_45_UNCONNECTED,
      PCIN(44) => NLW_Mmac_n0134_PCIN_44_UNCONNECTED,
      PCIN(43) => NLW_Mmac_n0134_PCIN_43_UNCONNECTED,
      PCIN(42) => NLW_Mmac_n0134_PCIN_42_UNCONNECTED,
      PCIN(41) => NLW_Mmac_n0134_PCIN_41_UNCONNECTED,
      PCIN(40) => NLW_Mmac_n0134_PCIN_40_UNCONNECTED,
      PCIN(39) => NLW_Mmac_n0134_PCIN_39_UNCONNECTED,
      PCIN(38) => NLW_Mmac_n0134_PCIN_38_UNCONNECTED,
      PCIN(37) => NLW_Mmac_n0134_PCIN_37_UNCONNECTED,
      PCIN(36) => NLW_Mmac_n0134_PCIN_36_UNCONNECTED,
      PCIN(35) => NLW_Mmac_n0134_PCIN_35_UNCONNECTED,
      PCIN(34) => NLW_Mmac_n0134_PCIN_34_UNCONNECTED,
      PCIN(33) => NLW_Mmac_n0134_PCIN_33_UNCONNECTED,
      PCIN(32) => NLW_Mmac_n0134_PCIN_32_UNCONNECTED,
      PCIN(31) => NLW_Mmac_n0134_PCIN_31_UNCONNECTED,
      PCIN(30) => NLW_Mmac_n0134_PCIN_30_UNCONNECTED,
      PCIN(29) => NLW_Mmac_n0134_PCIN_29_UNCONNECTED,
      PCIN(28) => NLW_Mmac_n0134_PCIN_28_UNCONNECTED,
      PCIN(27) => NLW_Mmac_n0134_PCIN_27_UNCONNECTED,
      PCIN(26) => NLW_Mmac_n0134_PCIN_26_UNCONNECTED,
      PCIN(25) => NLW_Mmac_n0134_PCIN_25_UNCONNECTED,
      PCIN(24) => NLW_Mmac_n0134_PCIN_24_UNCONNECTED,
      PCIN(23) => NLW_Mmac_n0134_PCIN_23_UNCONNECTED,
      PCIN(22) => NLW_Mmac_n0134_PCIN_22_UNCONNECTED,
      PCIN(21) => NLW_Mmac_n0134_PCIN_21_UNCONNECTED,
      PCIN(20) => NLW_Mmac_n0134_PCIN_20_UNCONNECTED,
      PCIN(19) => NLW_Mmac_n0134_PCIN_19_UNCONNECTED,
      PCIN(18) => NLW_Mmac_n0134_PCIN_18_UNCONNECTED,
      PCIN(17) => NLW_Mmac_n0134_PCIN_17_UNCONNECTED,
      PCIN(16) => NLW_Mmac_n0134_PCIN_16_UNCONNECTED,
      PCIN(15) => NLW_Mmac_n0134_PCIN_15_UNCONNECTED,
      PCIN(14) => NLW_Mmac_n0134_PCIN_14_UNCONNECTED,
      PCIN(13) => NLW_Mmac_n0134_PCIN_13_UNCONNECTED,
      PCIN(12) => NLW_Mmac_n0134_PCIN_12_UNCONNECTED,
      PCIN(11) => NLW_Mmac_n0134_PCIN_11_UNCONNECTED,
      PCIN(10) => NLW_Mmac_n0134_PCIN_10_UNCONNECTED,
      PCIN(9) => NLW_Mmac_n0134_PCIN_9_UNCONNECTED,
      PCIN(8) => NLW_Mmac_n0134_PCIN_8_UNCONNECTED,
      PCIN(7) => NLW_Mmac_n0134_PCIN_7_UNCONNECTED,
      PCIN(6) => NLW_Mmac_n0134_PCIN_6_UNCONNECTED,
      PCIN(5) => NLW_Mmac_n0134_PCIN_5_UNCONNECTED,
      PCIN(4) => NLW_Mmac_n0134_PCIN_4_UNCONNECTED,
      PCIN(3) => NLW_Mmac_n0134_PCIN_3_UNCONNECTED,
      PCIN(2) => NLW_Mmac_n0134_PCIN_2_UNCONNECTED,
      PCIN(1) => NLW_Mmac_n0134_PCIN_1_UNCONNECTED,
      PCIN(0) => NLW_Mmac_n0134_PCIN_0_UNCONNECTED,
      C(47) => N1,
      C(46) => N1,
      C(45) => N1,
      C(44) => N1,
      C(43) => N1,
      C(42) => N1,
      C(41) => N1,
      C(40) => N1,
      C(39) => N1,
      C(38) => N1,
      C(37) => N1,
      C(36) => N1,
      C(35) => N1,
      C(34) => N1,
      C(33) => N1,
      C(32) => N1,
      C(31) => N1,
      C(30) => N1,
      C(29) => N1,
      C(28) => N1,
      C(27) => N1,
      C(26) => N1,
      C(25) => N1,
      C(24) => N1,
      C(23) => N1,
      C(22) => N1,
      C(21) => N1,
      C(20) => N1,
      C(19) => N1,
      C(18) => N1,
      C(17) => N1,
      C(16) => N1,
      C(15) => N1,
      C(14) => N1,
      C(13) => N1,
      C(12) => N1,
      C(11) => N1,
      C(10) => N1,
      C(9) => N1,
      C(8) => N1,
      C(7) => N1,
      C(6) => N1,
      C(5) => N1,
      C(4) => N1,
      C(3) => N1,
      C(2) => N1,
      C(1) => N1,
      C(0) => N1,
      P(47) => NLW_Mmac_n0134_P_47_UNCONNECTED,
      P(46) => NLW_Mmac_n0134_P_46_UNCONNECTED,
      P(45) => NLW_Mmac_n0134_P_45_UNCONNECTED,
      P(44) => NLW_Mmac_n0134_P_44_UNCONNECTED,
      P(43) => NLW_Mmac_n0134_P_43_UNCONNECTED,
      P(42) => NLW_Mmac_n0134_P_42_UNCONNECTED,
      P(41) => NLW_Mmac_n0134_P_41_UNCONNECTED,
      P(40) => NLW_Mmac_n0134_P_40_UNCONNECTED,
      P(39) => NLW_Mmac_n0134_P_39_UNCONNECTED,
      P(38) => NLW_Mmac_n0134_P_38_UNCONNECTED,
      P(37) => NLW_Mmac_n0134_P_37_UNCONNECTED,
      P(36) => NLW_Mmac_n0134_P_36_UNCONNECTED,
      P(35) => NLW_Mmac_n0134_P_35_UNCONNECTED,
      P(34) => NLW_Mmac_n0134_P_34_UNCONNECTED,
      P(33) => NLW_Mmac_n0134_P_33_UNCONNECTED,
      P(32) => NLW_Mmac_n0134_P_32_UNCONNECTED,
      P(31) => NLW_Mmac_n0134_P_31_UNCONNECTED,
      P(30) => NLW_Mmac_n0134_P_30_UNCONNECTED,
      P(29) => NLW_Mmac_n0134_P_29_UNCONNECTED,
      P(28) => NLW_Mmac_n0134_P_28_UNCONNECTED,
      P(27) => NLW_Mmac_n0134_P_27_UNCONNECTED,
      P(26) => NLW_Mmac_n0134_P_26_UNCONNECTED,
      P(25) => NLW_Mmac_n0134_P_25_UNCONNECTED,
      P(24) => NLW_Mmac_n0134_P_24_UNCONNECTED,
      P(23) => NLW_Mmac_n0134_P_23_UNCONNECTED,
      P(22) => NLW_Mmac_n0134_P_22_UNCONNECTED,
      P(21) => NLW_Mmac_n0134_P_21_UNCONNECTED,
      P(20) => NLW_Mmac_n0134_P_20_UNCONNECTED,
      P(19) => NLW_Mmac_n0134_P_19_UNCONNECTED,
      P(18) => NLW_Mmac_n0134_P_18_UNCONNECTED,
      P(17) => NLW_Mmac_n0134_P_17_UNCONNECTED,
      P(16) => NLW_Mmac_n0134_P_16_UNCONNECTED,
      P(15) => NLW_Mmac_n0134_P_15_UNCONNECTED,
      P(14) => NLW_Mmac_n0134_P_14_UNCONNECTED,
      P(13) => NLW_Mmac_n0134_P_13_UNCONNECTED,
      P(12) => NLW_Mmac_n0134_P_12_UNCONNECTED,
      P(11) => NLW_Mmac_n0134_P_11_UNCONNECTED,
      P(10) => NLW_Mmac_n0134_P_10_UNCONNECTED,
      P(9) => NLW_Mmac_n0134_P_9_UNCONNECTED,
      P(8) => NLW_Mmac_n0134_P_8_UNCONNECTED,
      P(7) => NLW_Mmac_n0134_P_7_UNCONNECTED,
      P(6) => NLW_Mmac_n0134_P_6_UNCONNECTED,
      P(5) => NLW_Mmac_n0134_P_5_UNCONNECTED,
      P(4) => NLW_Mmac_n0134_P_4_UNCONNECTED,
      P(3) => NLW_Mmac_n0134_P_3_UNCONNECTED,
      P(2) => NLW_Mmac_n0134_P_2_UNCONNECTED,
      P(1) => NLW_Mmac_n0134_P_1_UNCONNECTED,
      P(0) => NLW_Mmac_n0134_P_0_UNCONNECTED,
      OPMODE(7) => N1,
      OPMODE(6) => N1,
      OPMODE(5) => N1,
      OPMODE(4) => N1,
      OPMODE(3) => N0,
      OPMODE(2) => N1,
      OPMODE(1) => N1,
      OPMODE(0) => N0,
      D(17) => N1,
      D(16) => N1,
      D(15) => N1,
      D(14) => N1,
      D(13) => N1,
      D(12) => N1,
      D(11) => N1,
      D(10) => N1,
      D(9) => N1,
      D(8) => N1,
      D(7) => N1,
      D(6) => N1,
      D(5) => N1,
      D(4) => N1,
      D(3) => N1,
      D(2) => N1,
      D(1) => N1,
      D(0) => N1,
      PCOUT(47) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_47,
      PCOUT(46) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_46,
      PCOUT(45) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_45,
      PCOUT(44) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_44,
      PCOUT(43) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_43,
      PCOUT(42) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_42,
      PCOUT(41) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_41,
      PCOUT(40) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_40,
      PCOUT(39) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_39,
      PCOUT(38) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_38,
      PCOUT(37) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_37,
      PCOUT(36) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_36,
      PCOUT(35) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_35,
      PCOUT(34) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_34,
      PCOUT(33) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_33,
      PCOUT(32) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_32,
      PCOUT(31) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_31,
      PCOUT(30) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_30,
      PCOUT(29) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_29,
      PCOUT(28) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_28,
      PCOUT(27) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_27,
      PCOUT(26) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_26,
      PCOUT(25) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_25,
      PCOUT(24) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_24,
      PCOUT(23) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_23,
      PCOUT(22) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_22,
      PCOUT(21) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_21,
      PCOUT(20) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_20,
      PCOUT(19) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_19,
      PCOUT(18) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_18,
      PCOUT(17) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_17,
      PCOUT(16) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_16,
      PCOUT(15) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_15,
      PCOUT(14) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_14,
      PCOUT(13) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_13,
      PCOUT(12) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_12,
      PCOUT(11) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_11,
      PCOUT(10) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_10,
      PCOUT(9) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_9,
      PCOUT(8) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_8,
      PCOUT(7) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_7,
      PCOUT(6) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_6,
      PCOUT(5) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_5,
      PCOUT(4) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_4,
      PCOUT(3) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_3,
      PCOUT(2) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_2,
      PCOUT(1) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_1,
      PCOUT(0) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_0,
      A(17) => \Q_n0181_2)\,
      A(16) => \Q_n0181_2)\,
      A(15) => \Q_n0181_2)\,
      A(14) => \Q_n0181_2)\,
      A(13) => \Q_n0181_2)\,
      A(12) => \Q_n0181_2)\,
      A(11) => \Q_n0181_2)\,
      A(10) => \Q_n0181_2)\,
      A(9) => \Q_n0181_2)\,
      A(8) => \Q_n0181_2)\,
      A(7) => \Q_n0181_2)\,
      A(6) => \Q_n0181_2)\,
      A(5) => \Q_n0181_2)\,
      A(4) => \Q_n0181_2)\,
      A(3) => \Q_n0181_2)\,
      A(2) => \Q_n0181_2)\,
      A(1) => \Q_n0181_1)\,
      A(0) => \Q_n0181_0)\,
      M(35) => NLW_Mmac_n0134_M_35_UNCONNECTED,
      M(34) => NLW_Mmac_n0134_M_34_UNCONNECTED,
      M(33) => NLW_Mmac_n0134_M_33_UNCONNECTED,
      M(32) => NLW_Mmac_n0134_M_32_UNCONNECTED,
      M(31) => NLW_Mmac_n0134_M_31_UNCONNECTED,
      M(30) => NLW_Mmac_n0134_M_30_UNCONNECTED,
      M(29) => NLW_Mmac_n0134_M_29_UNCONNECTED,
      M(28) => NLW_Mmac_n0134_M_28_UNCONNECTED,
      M(27) => NLW_Mmac_n0134_M_27_UNCONNECTED,
      M(26) => NLW_Mmac_n0134_M_26_UNCONNECTED,
      M(25) => NLW_Mmac_n0134_M_25_UNCONNECTED,
      M(24) => NLW_Mmac_n0134_M_24_UNCONNECTED,
      M(23) => NLW_Mmac_n0134_M_23_UNCONNECTED,
      M(22) => NLW_Mmac_n0134_M_22_UNCONNECTED,
      M(21) => NLW_Mmac_n0134_M_21_UNCONNECTED,
      M(20) => NLW_Mmac_n0134_M_20_UNCONNECTED,
      M(19) => NLW_Mmac_n0134_M_19_UNCONNECTED,
      M(18) => NLW_Mmac_n0134_M_18_UNCONNECTED,
      M(17) => NLW_Mmac_n0134_M_17_UNCONNECTED,
      M(16) => NLW_Mmac_n0134_M_16_UNCONNECTED,
      M(15) => NLW_Mmac_n0134_M_15_UNCONNECTED,
      M(14) => NLW_Mmac_n0134_M_14_UNCONNECTED,
      M(13) => NLW_Mmac_n0134_M_13_UNCONNECTED,
      M(12) => NLW_Mmac_n0134_M_12_UNCONNECTED,
      M(11) => NLW_Mmac_n0134_M_11_UNCONNECTED,
      M(10) => NLW_Mmac_n0134_M_10_UNCONNECTED,
      M(9) => NLW_Mmac_n0134_M_9_UNCONNECTED,
      M(8) => NLW_Mmac_n0134_M_8_UNCONNECTED,
      M(7) => NLW_Mmac_n0134_M_7_UNCONNECTED,
      M(6) => NLW_Mmac_n0134_M_6_UNCONNECTED,
      M(5) => NLW_Mmac_n0134_M_5_UNCONNECTED,
      M(4) => NLW_Mmac_n0134_M_4_UNCONNECTED,
      M(3) => NLW_Mmac_n0134_M_3_UNCONNECTED,
      M(2) => NLW_Mmac_n0134_M_2_UNCONNECTED,
      M(1) => NLW_Mmac_n0134_M_1_UNCONNECTED,
      M(0) => NLW_Mmac_n0134_M_0_UNCONNECTED
    );
  Maddsub_n0122 : DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      DREG => 0,
      MREG => 0,
      PREG => 0,
      CREG => 1,
      OPMODEREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC"
    )
    port map (
      CECARRYIN => N1,
      RSTC => Counter_M_7_PWR_4_o_equal_30_o,
      RSTCARRYIN => N1,
      CED => N1,
      RSTD => N1,
      CEOPMODE => N1,
      CEC => Counter_i_1_PWR_4_o_equal_24_o,
      CARRYOUTF => NLW_Maddsub_n0122_CARRYOUTF_UNCONNECTED,
      RSTOPMODE => N1,
      RSTM => N1,
      CLK => Clock_BUFGP_8,
      RSTB => N1,
      CEM => N1,
      CEB => N1,
      CARRYIN => N1,
      CEP => N1,
      CEA => N1,
      CARRYOUT => NLW_Maddsub_n0122_CARRYOUT_UNCONNECTED,
      RSTA => N1,
      RSTP => N1,
      B(17) => N1,
      B(16) => N1,
      B(15) => N1,
      B(14) => N1,
      B(13) => N1,
      B(12) => N1,
      B(11) => N1,
      B(10) => N1,
      B(9) => N1,
      B(8) => N1,
      B(7) => N0,
      B(6) => N0,
      B(5) => N0,
      B(4) => N0,
      B(3) => N0,
      B(2) => N0,
      B(1) => N0,
      B(0) => N0,
      BCOUT(17) => NLW_Maddsub_n0122_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_Maddsub_n0122_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_Maddsub_n0122_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_Maddsub_n0122_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_Maddsub_n0122_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_Maddsub_n0122_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_Maddsub_n0122_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_Maddsub_n0122_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_Maddsub_n0122_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_Maddsub_n0122_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_Maddsub_n0122_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_Maddsub_n0122_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_Maddsub_n0122_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_Maddsub_n0122_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_Maddsub_n0122_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_Maddsub_n0122_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_Maddsub_n0122_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_Maddsub_n0122_BCOUT_0_UNCONNECTED,
      PCIN(47) => NLW_Maddsub_n0122_PCIN_47_UNCONNECTED,
      PCIN(46) => NLW_Maddsub_n0122_PCIN_46_UNCONNECTED,
      PCIN(45) => NLW_Maddsub_n0122_PCIN_45_UNCONNECTED,
      PCIN(44) => NLW_Maddsub_n0122_PCIN_44_UNCONNECTED,
      PCIN(43) => NLW_Maddsub_n0122_PCIN_43_UNCONNECTED,
      PCIN(42) => NLW_Maddsub_n0122_PCIN_42_UNCONNECTED,
      PCIN(41) => NLW_Maddsub_n0122_PCIN_41_UNCONNECTED,
      PCIN(40) => NLW_Maddsub_n0122_PCIN_40_UNCONNECTED,
      PCIN(39) => NLW_Maddsub_n0122_PCIN_39_UNCONNECTED,
      PCIN(38) => NLW_Maddsub_n0122_PCIN_38_UNCONNECTED,
      PCIN(37) => NLW_Maddsub_n0122_PCIN_37_UNCONNECTED,
      PCIN(36) => NLW_Maddsub_n0122_PCIN_36_UNCONNECTED,
      PCIN(35) => NLW_Maddsub_n0122_PCIN_35_UNCONNECTED,
      PCIN(34) => NLW_Maddsub_n0122_PCIN_34_UNCONNECTED,
      PCIN(33) => NLW_Maddsub_n0122_PCIN_33_UNCONNECTED,
      PCIN(32) => NLW_Maddsub_n0122_PCIN_32_UNCONNECTED,
      PCIN(31) => NLW_Maddsub_n0122_PCIN_31_UNCONNECTED,
      PCIN(30) => NLW_Maddsub_n0122_PCIN_30_UNCONNECTED,
      PCIN(29) => NLW_Maddsub_n0122_PCIN_29_UNCONNECTED,
      PCIN(28) => NLW_Maddsub_n0122_PCIN_28_UNCONNECTED,
      PCIN(27) => NLW_Maddsub_n0122_PCIN_27_UNCONNECTED,
      PCIN(26) => NLW_Maddsub_n0122_PCIN_26_UNCONNECTED,
      PCIN(25) => NLW_Maddsub_n0122_PCIN_25_UNCONNECTED,
      PCIN(24) => NLW_Maddsub_n0122_PCIN_24_UNCONNECTED,
      PCIN(23) => NLW_Maddsub_n0122_PCIN_23_UNCONNECTED,
      PCIN(22) => NLW_Maddsub_n0122_PCIN_22_UNCONNECTED,
      PCIN(21) => NLW_Maddsub_n0122_PCIN_21_UNCONNECTED,
      PCIN(20) => NLW_Maddsub_n0122_PCIN_20_UNCONNECTED,
      PCIN(19) => NLW_Maddsub_n0122_PCIN_19_UNCONNECTED,
      PCIN(18) => NLW_Maddsub_n0122_PCIN_18_UNCONNECTED,
      PCIN(17) => NLW_Maddsub_n0122_PCIN_17_UNCONNECTED,
      PCIN(16) => NLW_Maddsub_n0122_PCIN_16_UNCONNECTED,
      PCIN(15) => NLW_Maddsub_n0122_PCIN_15_UNCONNECTED,
      PCIN(14) => NLW_Maddsub_n0122_PCIN_14_UNCONNECTED,
      PCIN(13) => NLW_Maddsub_n0122_PCIN_13_UNCONNECTED,
      PCIN(12) => NLW_Maddsub_n0122_PCIN_12_UNCONNECTED,
      PCIN(11) => NLW_Maddsub_n0122_PCIN_11_UNCONNECTED,
      PCIN(10) => NLW_Maddsub_n0122_PCIN_10_UNCONNECTED,
      PCIN(9) => NLW_Maddsub_n0122_PCIN_9_UNCONNECTED,
      PCIN(8) => NLW_Maddsub_n0122_PCIN_8_UNCONNECTED,
      PCIN(7) => NLW_Maddsub_n0122_PCIN_7_UNCONNECTED,
      PCIN(6) => NLW_Maddsub_n0122_PCIN_6_UNCONNECTED,
      PCIN(5) => NLW_Maddsub_n0122_PCIN_5_UNCONNECTED,
      PCIN(4) => NLW_Maddsub_n0122_PCIN_4_UNCONNECTED,
      PCIN(3) => NLW_Maddsub_n0122_PCIN_3_UNCONNECTED,
      PCIN(2) => NLW_Maddsub_n0122_PCIN_2_UNCONNECTED,
      PCIN(1) => NLW_Maddsub_n0122_PCIN_1_UNCONNECTED,
      PCIN(0) => NLW_Maddsub_n0122_PCIN_0_UNCONNECTED,
      C(47) => N1,
      C(46) => N1,
      C(45) => N1,
      C(44) => N1,
      C(43) => N1,
      C(42) => N1,
      C(41) => N1,
      C(40) => N1,
      C(39) => N1,
      C(38) => N1,
      C(37) => N1,
      C(36) => N1,
      C(35) => N1,
      C(34) => N1,
      C(33) => N1,
      C(32) => N1,
      C(31) => N1,
      C(30) => N1,
      C(29) => N1,
      C(28) => N1,
      C(27) => N1,
      C(26) => N1,
      C(25) => N1,
      C(24) => N1,
      C(23) => N1,
      C(22) => N1,
      C(21) => N1,
      C(20) => N1,
      C(19) => N1,
      C(18) => N1,
      C(17) => N1,
      C(16) => N1,
      C(15) => N1,
      C(14) => N1,
      C(13) => N1,
      C(12) => N1,
      C(11) => N1,
      C(10) => N1,
      C(9) => N1,
      C(8) => N1,
      C(7) => Result_7_1,
      C(6) => Result_6_1,
      C(5) => Result_5_1,
      C(4) => Result_4_1,
      C(3) => Result_3_1,
      C(2) => Result_2_1,
      C(1) => Result_1_1,
      C(0) => Result_0_1,
      P(47) => NLW_Maddsub_n0122_P_47_UNCONNECTED,
      P(46) => NLW_Maddsub_n0122_P_46_UNCONNECTED,
      P(45) => NLW_Maddsub_n0122_P_45_UNCONNECTED,
      P(44) => NLW_Maddsub_n0122_P_44_UNCONNECTED,
      P(43) => NLW_Maddsub_n0122_P_43_UNCONNECTED,
      P(42) => NLW_Maddsub_n0122_P_42_UNCONNECTED,
      P(41) => NLW_Maddsub_n0122_P_41_UNCONNECTED,
      P(40) => NLW_Maddsub_n0122_P_40_UNCONNECTED,
      P(39) => NLW_Maddsub_n0122_P_39_UNCONNECTED,
      P(38) => NLW_Maddsub_n0122_P_38_UNCONNECTED,
      P(37) => NLW_Maddsub_n0122_P_37_UNCONNECTED,
      P(36) => NLW_Maddsub_n0122_P_36_UNCONNECTED,
      P(35) => NLW_Maddsub_n0122_P_35_UNCONNECTED,
      P(34) => NLW_Maddsub_n0122_P_34_UNCONNECTED,
      P(33) => NLW_Maddsub_n0122_P_33_UNCONNECTED,
      P(32) => NLW_Maddsub_n0122_P_32_UNCONNECTED,
      P(31) => NLW_Maddsub_n0122_P_31_UNCONNECTED,
      P(30) => NLW_Maddsub_n0122_P_30_UNCONNECTED,
      P(29) => NLW_Maddsub_n0122_P_29_UNCONNECTED,
      P(28) => NLW_Maddsub_n0122_P_28_UNCONNECTED,
      P(27) => NLW_Maddsub_n0122_P_27_UNCONNECTED,
      P(26) => NLW_Maddsub_n0122_P_26_UNCONNECTED,
      P(25) => NLW_Maddsub_n0122_P_25_UNCONNECTED,
      P(24) => NLW_Maddsub_n0122_P_24_UNCONNECTED,
      P(23) => NLW_Maddsub_n0122_P_23_UNCONNECTED,
      P(22) => NLW_Maddsub_n0122_P_22_UNCONNECTED,
      P(21) => NLW_Maddsub_n0122_P_21_UNCONNECTED,
      P(20) => NLW_Maddsub_n0122_P_20_UNCONNECTED,
      P(19) => NLW_Maddsub_n0122_P_19_UNCONNECTED,
      P(18) => NLW_Maddsub_n0122_P_18_UNCONNECTED,
      P(17) => NLW_Maddsub_n0122_P_17_UNCONNECTED,
      P(16) => NLW_Maddsub_n0122_P_16_UNCONNECTED,
      P(15) => ADDERTREE_INTERNAL_Madd1_lut_0_15,
      P(14) => ADDERTREE_INTERNAL_Madd1_lut_0_14,
      P(13) => ADDERTREE_INTERNAL_Madd1_lut_0_13,
      P(12) => ADDERTREE_INTERNAL_Madd1_lut_0_12,
      P(11) => ADDERTREE_INTERNAL_Madd1_lut_0_11,
      P(10) => ADDERTREE_INTERNAL_Madd1_lut_0_10,
      P(9) => ADDERTREE_INTERNAL_Madd1_lut_0_9,
      P(8) => ADDER_FOR_MULTADD_Madd_8,
      P(7) => ADDER_FOR_MULTADD_Madd_7,
      P(6) => ADDER_FOR_MULTADD_Madd_6,
      P(5) => ADDER_FOR_MULTADD_Madd_5,
      P(4) => ADDER_FOR_MULTADD_Madd_4,
      P(3) => ADDER_FOR_MULTADD_Madd_3,
      P(2) => ADDER_FOR_MULTADD_Madd_2,
      P(1) => ADDER_FOR_MULTADD_Madd_1,
      P(0) => ADDER_FOR_MULTADD_Madd_0,
      OPMODE(7) => N1,
      OPMODE(6) => N1,
      OPMODE(5) => N1,
      OPMODE(4) => N1,
      OPMODE(3) => N0,
      OPMODE(2) => N0,
      OPMODE(1) => N1,
      OPMODE(0) => N0,
      D(17) => N1,
      D(16) => N1,
      D(15) => N1,
      D(14) => N1,
      D(13) => N1,
      D(12) => N1,
      D(11) => N1,
      D(10) => N1,
      D(9) => N1,
      D(8) => N1,
      D(7) => N1,
      D(6) => N1,
      D(5) => N1,
      D(4) => N1,
      D(3) => N1,
      D(2) => N1,
      D(1) => N1,
      D(0) => N1,
      PCOUT(47) => NLW_Maddsub_n0122_PCOUT_47_UNCONNECTED,
      PCOUT(46) => NLW_Maddsub_n0122_PCOUT_46_UNCONNECTED,
      PCOUT(45) => NLW_Maddsub_n0122_PCOUT_45_UNCONNECTED,
      PCOUT(44) => NLW_Maddsub_n0122_PCOUT_44_UNCONNECTED,
      PCOUT(43) => NLW_Maddsub_n0122_PCOUT_43_UNCONNECTED,
      PCOUT(42) => NLW_Maddsub_n0122_PCOUT_42_UNCONNECTED,
      PCOUT(41) => NLW_Maddsub_n0122_PCOUT_41_UNCONNECTED,
      PCOUT(40) => NLW_Maddsub_n0122_PCOUT_40_UNCONNECTED,
      PCOUT(39) => NLW_Maddsub_n0122_PCOUT_39_UNCONNECTED,
      PCOUT(38) => NLW_Maddsub_n0122_PCOUT_38_UNCONNECTED,
      PCOUT(37) => NLW_Maddsub_n0122_PCOUT_37_UNCONNECTED,
      PCOUT(36) => NLW_Maddsub_n0122_PCOUT_36_UNCONNECTED,
      PCOUT(35) => NLW_Maddsub_n0122_PCOUT_35_UNCONNECTED,
      PCOUT(34) => NLW_Maddsub_n0122_PCOUT_34_UNCONNECTED,
      PCOUT(33) => NLW_Maddsub_n0122_PCOUT_33_UNCONNECTED,
      PCOUT(32) => NLW_Maddsub_n0122_PCOUT_32_UNCONNECTED,
      PCOUT(31) => NLW_Maddsub_n0122_PCOUT_31_UNCONNECTED,
      PCOUT(30) => NLW_Maddsub_n0122_PCOUT_30_UNCONNECTED,
      PCOUT(29) => NLW_Maddsub_n0122_PCOUT_29_UNCONNECTED,
      PCOUT(28) => NLW_Maddsub_n0122_PCOUT_28_UNCONNECTED,
      PCOUT(27) => NLW_Maddsub_n0122_PCOUT_27_UNCONNECTED,
      PCOUT(26) => NLW_Maddsub_n0122_PCOUT_26_UNCONNECTED,
      PCOUT(25) => NLW_Maddsub_n0122_PCOUT_25_UNCONNECTED,
      PCOUT(24) => NLW_Maddsub_n0122_PCOUT_24_UNCONNECTED,
      PCOUT(23) => NLW_Maddsub_n0122_PCOUT_23_UNCONNECTED,
      PCOUT(22) => NLW_Maddsub_n0122_PCOUT_22_UNCONNECTED,
      PCOUT(21) => NLW_Maddsub_n0122_PCOUT_21_UNCONNECTED,
      PCOUT(20) => NLW_Maddsub_n0122_PCOUT_20_UNCONNECTED,
      PCOUT(19) => NLW_Maddsub_n0122_PCOUT_19_UNCONNECTED,
      PCOUT(18) => NLW_Maddsub_n0122_PCOUT_18_UNCONNECTED,
      PCOUT(17) => NLW_Maddsub_n0122_PCOUT_17_UNCONNECTED,
      PCOUT(16) => NLW_Maddsub_n0122_PCOUT_16_UNCONNECTED,
      PCOUT(15) => NLW_Maddsub_n0122_PCOUT_15_UNCONNECTED,
      PCOUT(14) => NLW_Maddsub_n0122_PCOUT_14_UNCONNECTED,
      PCOUT(13) => NLW_Maddsub_n0122_PCOUT_13_UNCONNECTED,
      PCOUT(12) => NLW_Maddsub_n0122_PCOUT_12_UNCONNECTED,
      PCOUT(11) => NLW_Maddsub_n0122_PCOUT_11_UNCONNECTED,
      PCOUT(10) => NLW_Maddsub_n0122_PCOUT_10_UNCONNECTED,
      PCOUT(9) => NLW_Maddsub_n0122_PCOUT_9_UNCONNECTED,
      PCOUT(8) => NLW_Maddsub_n0122_PCOUT_8_UNCONNECTED,
      PCOUT(7) => NLW_Maddsub_n0122_PCOUT_7_UNCONNECTED,
      PCOUT(6) => NLW_Maddsub_n0122_PCOUT_6_UNCONNECTED,
      PCOUT(5) => NLW_Maddsub_n0122_PCOUT_5_UNCONNECTED,
      PCOUT(4) => NLW_Maddsub_n0122_PCOUT_4_UNCONNECTED,
      PCOUT(3) => NLW_Maddsub_n0122_PCOUT_3_UNCONNECTED,
      PCOUT(2) => NLW_Maddsub_n0122_PCOUT_2_UNCONNECTED,
      PCOUT(1) => NLW_Maddsub_n0122_PCOUT_1_UNCONNECTED,
      PCOUT(0) => NLW_Maddsub_n0122_PCOUT_0_UNCONNECTED,
      A(17) => N1,
      A(16) => N1,
      A(15) => N1,
      A(14) => N1,
      A(13) => N1,
      A(12) => N1,
      A(11) => N1,
      A(10) => N1,
      A(9) => N1,
      A(8) => N1,
      A(7) => Counter_M(7),
      A(6) => Counter_M(6),
      A(5) => Counter_M(5),
      A(4) => Counter_M(4),
      A(3) => Counter_M(3),
      A(2) => Counter_M(2),
      A(1) => Counter_M(1),
      A(0) => Counter_j(0),
      M(35) => NLW_Maddsub_n0122_M_35_UNCONNECTED,
      M(34) => NLW_Maddsub_n0122_M_34_UNCONNECTED,
      M(33) => NLW_Maddsub_n0122_M_33_UNCONNECTED,
      M(32) => NLW_Maddsub_n0122_M_32_UNCONNECTED,
      M(31) => NLW_Maddsub_n0122_M_31_UNCONNECTED,
      M(30) => NLW_Maddsub_n0122_M_30_UNCONNECTED,
      M(29) => NLW_Maddsub_n0122_M_29_UNCONNECTED,
      M(28) => NLW_Maddsub_n0122_M_28_UNCONNECTED,
      M(27) => NLW_Maddsub_n0122_M_27_UNCONNECTED,
      M(26) => NLW_Maddsub_n0122_M_26_UNCONNECTED,
      M(25) => NLW_Maddsub_n0122_M_25_UNCONNECTED,
      M(24) => NLW_Maddsub_n0122_M_24_UNCONNECTED,
      M(23) => NLW_Maddsub_n0122_M_23_UNCONNECTED,
      M(22) => NLW_Maddsub_n0122_M_22_UNCONNECTED,
      M(21) => NLW_Maddsub_n0122_M_21_UNCONNECTED,
      M(20) => NLW_Maddsub_n0122_M_20_UNCONNECTED,
      M(19) => NLW_Maddsub_n0122_M_19_UNCONNECTED,
      M(18) => NLW_Maddsub_n0122_M_18_UNCONNECTED,
      M(17) => NLW_Maddsub_n0122_M_17_UNCONNECTED,
      M(16) => NLW_Maddsub_n0122_M_16_UNCONNECTED,
      M(15) => NLW_Maddsub_n0122_M_15_UNCONNECTED,
      M(14) => NLW_Maddsub_n0122_M_14_UNCONNECTED,
      M(13) => NLW_Maddsub_n0122_M_13_UNCONNECTED,
      M(12) => NLW_Maddsub_n0122_M_12_UNCONNECTED,
      M(11) => NLW_Maddsub_n0122_M_11_UNCONNECTED,
      M(10) => NLW_Maddsub_n0122_M_10_UNCONNECTED,
      M(9) => NLW_Maddsub_n0122_M_9_UNCONNECTED,
      M(8) => NLW_Maddsub_n0122_M_8_UNCONNECTED,
      M(7) => NLW_Maddsub_n0122_M_7_UNCONNECTED,
      M(6) => NLW_Maddsub_n0122_M_6_UNCONNECTED,
      M(5) => NLW_Maddsub_n0122_M_5_UNCONNECTED,
      M(4) => NLW_Maddsub_n0122_M_4_UNCONNECTED,
      M(3) => NLW_Maddsub_n0122_M_3_UNCONNECTED,
      M(2) => NLW_Maddsub_n0122_M_2_UNCONNECTED,
      M(1) => NLW_Maddsub_n0122_M_1_UNCONNECTED,
      M(0) => NLW_Maddsub_n0122_M_0_UNCONNECTED
    );
  doutAddr_Int_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => writeEn_Int_16,
      D => Result(0),
      Q => doutAddr_Int(0)
    );
  doutAddr_Int_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => writeEn_Int_16,
      D => Result(1),
      Q => doutAddr_Int(1)
    );
  doutAddr_Int_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => writeEn_Int_16,
      D => Result(2),
      Q => doutAddr_Int(2)
    );
  doutAddr_Int_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => writeEn_Int_16,
      D => Result(3),
      Q => doutAddr_Int(3)
    );
  doutAddr_Int_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => writeEn_Int_16,
      D => Result(4),
      Q => doutAddr_Int(4)
    );
  doutAddr_Int_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => writeEn_Int_16,
      D => Result(5),
      Q => doutAddr_Int(5)
    );
  doutAddr_Int_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => writeEn_Int_16,
      D => Result(6),
      Q => doutAddr_Int(6)
    );
  doutAddr_Int_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => writeEn_Int_16,
      D => Result(7),
      Q => doutAddr_Int(7)
    );
  doutAddr_Int_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => writeEn_Int_16,
      D => Result(8),
      Q => doutAddr_Int(8)
    );
  doutAddr_Int_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => writeEn_Int_16,
      D => Result(9),
      Q => doutAddr_Int(9)
    );
  doutAddr_Int_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => writeEn_Int_16,
      D => Result(10),
      Q => doutAddr_Int(10)
    );
  doutAddr_Int_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => writeEn_Int_16,
      D => Result(11),
      Q => doutAddr_Int(11)
    );
  doutAddr_Int_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => writeEn_Int_16,
      D => Result(12),
      Q => doutAddr_Int(12)
    );
  doutAddr_Int_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => writeEn_Int_16,
      D => Result(13),
      Q => doutAddr_Int(13)
    );
  doutAddr_Int_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => writeEn_Int_16,
      D => Result(14),
      Q => doutAddr_Int(14)
    );
  doutAddr_Int_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => writeEn_Int_16,
      D => Result(15),
      Q => doutAddr_Int(15)
    );
  Counter_M_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Counter_i_1_PWR_4_o_equal_24_o,
      D => Result_1_1,
      R => Counter_M_7_PWR_4_o_equal_30_o,
      Q => Counter_M(1)
    );
  Counter_M_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Counter_i_1_PWR_4_o_equal_24_o,
      D => Result_2_1,
      R => Counter_M_7_PWR_4_o_equal_30_o,
      Q => Counter_M(2)
    );
  Counter_M_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Counter_i_1_PWR_4_o_equal_24_o,
      D => Result_3_1,
      R => Counter_M_7_PWR_4_o_equal_30_o,
      Q => Counter_M(3)
    );
  Counter_M_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Counter_i_1_PWR_4_o_equal_24_o,
      D => Result_4_1,
      R => Counter_M_7_PWR_4_o_equal_30_o,
      Q => Counter_M(4)
    );
  Counter_M_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Counter_i_1_PWR_4_o_equal_24_o,
      D => Result_5_1,
      R => Counter_M_7_PWR_4_o_equal_30_o,
      Q => Counter_M(5)
    );
  Counter_M_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Counter_i_1_PWR_4_o_equal_24_o,
      D => Result_6_1,
      R => Counter_M_7_PWR_4_o_equal_30_o,
      Q => Counter_M(6)
    );
  Counter_M_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Counter_i_1_PWR_4_o_equal_24_o,
      D => Result_7_1,
      R => Counter_M_7_PWR_4_o_equal_30_o,
      Q => Counter_M(7)
    );
  Counter_i_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Start_Cal_14,
      D => Result_0_3,
      R => Mcount_Counter_i_val,
      Q => Counter_i(0)
    );
  Counter_k_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Counter_M_7_PWR_4_o_equal_30_o,
      D => Result_0_2,
      R => Counter_k_7_Counter_M_7_AND_133_o_91,
      Q => Counter_k(0)
    );
  Counter_k_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Counter_M_7_PWR_4_o_equal_30_o,
      D => Result_1_2,
      R => Counter_k_7_Counter_M_7_AND_133_o_91,
      Q => Counter_k(1)
    );
  Counter_k_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Counter_M_7_PWR_4_o_equal_30_o,
      D => Result_2_2,
      R => Counter_k_7_Counter_M_7_AND_133_o_91,
      Q => Counter_k(2)
    );
  Counter_k_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Counter_M_7_PWR_4_o_equal_30_o,
      D => Result_3_2,
      R => Counter_k_7_Counter_M_7_AND_133_o_91,
      Q => Counter_k(3)
    );
  Counter_k_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Counter_M_7_PWR_4_o_equal_30_o,
      D => Result_4_2,
      R => Counter_k_7_Counter_M_7_AND_133_o_91,
      Q => Counter_k(4)
    );
  Counter_k_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Counter_M_7_PWR_4_o_equal_30_o,
      D => Result_5_2,
      R => Counter_k_7_Counter_M_7_AND_133_o_91,
      Q => Counter_k(5)
    );
  Counter_k_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Counter_M_7_PWR_4_o_equal_30_o,
      D => Result_6_2,
      R => Counter_k_7_Counter_M_7_AND_133_o_91,
      Q => Counter_k(6)
    );
  Counter_k_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Counter_M_7_PWR_4_o_equal_30_o,
      D => Result_7_2,
      R => Counter_k_7_Counter_M_7_AND_133_o_91,
      Q => Counter_k(7)
    );
  Counter_i_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => Start_Cal_14,
      D => Result_1_3,
      R => Mcount_Counter_i_val,
      Q => Counter_i(1)
    );
  Madd_Cal_Res1 : DSP48A1
    generic map(
      CARRYINSEL => "OPMODE5",
      CREG => 0,
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      DREG => 0,
      PREG => 1,
      OPMODEREG => 0,
      CARRYINREG => 0,
      MREG => 0,
      RSTTYPE => "SYNC",
      CARRYOUTREG => 1
    )
    port map (
      CECARRYIN => N1,
      RSTC => N1,
      RSTCARRYIN => N1,
      CED => N1,
      RSTD => N1,
      CEOPMODE => N1,
      CEC => N1,
      CARRYOUTF => NLW_Madd_Cal_Res1_CARRYOUTF_UNCONNECTED,
      RSTOPMODE => N1,
      RSTM => N1,
      CLK => Clock_BUFGP_8,
      RSTB => N1,
      CEM => N1,
      CEB => N1,
      CARRYIN => N1,
      CEP => writeEn_Int_16,
      CEA => N1,
      CARRYOUT => NLW_Madd_Cal_Res1_CARRYOUT_UNCONNECTED,
      RSTA => N1,
      RSTP => N1,
      B(17) => N1,
      B(16) => N1,
      B(15) => N1,
      B(14) => N1,
      B(13) => N1,
      B(12) => N1,
      B(11) => N1,
      B(10) => Cal_Gy(10),
      B(9) => Cal_Gy(9),
      B(8) => Cal_Gy(8),
      B(7) => Cal_Gy(7),
      B(6) => Cal_Gy(6),
      B(5) => Cal_Gy(5),
      B(4) => Cal_Gy(4),
      B(3) => Cal_Gy(3),
      B(2) => Cal_Gy(2),
      B(1) => Cal_Gy(1),
      B(0) => Cal_Gy(0),
      BCOUT(17) => NLW_Madd_Cal_Res1_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_Madd_Cal_Res1_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_Madd_Cal_Res1_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_Madd_Cal_Res1_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_Madd_Cal_Res1_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_Madd_Cal_Res1_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_Madd_Cal_Res1_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_Madd_Cal_Res1_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_Madd_Cal_Res1_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_Madd_Cal_Res1_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_Madd_Cal_Res1_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_Madd_Cal_Res1_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_Madd_Cal_Res1_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_Madd_Cal_Res1_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_Madd_Cal_Res1_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_Madd_Cal_Res1_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_Madd_Cal_Res1_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_Madd_Cal_Res1_BCOUT_0_UNCONNECTED,
      PCIN(47) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_47,
      PCIN(46) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_46,
      PCIN(45) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_45,
      PCIN(44) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_44,
      PCIN(43) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_43,
      PCIN(42) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_42,
      PCIN(41) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_41,
      PCIN(40) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_40,
      PCIN(39) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_39,
      PCIN(38) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_38,
      PCIN(37) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_37,
      PCIN(36) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_36,
      PCIN(35) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_35,
      PCIN(34) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_34,
      PCIN(33) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_33,
      PCIN(32) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_32,
      PCIN(31) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_31,
      PCIN(30) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_30,
      PCIN(29) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_29,
      PCIN(28) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_28,
      PCIN(27) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_27,
      PCIN(26) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_26,
      PCIN(25) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_25,
      PCIN(24) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_24,
      PCIN(23) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_23,
      PCIN(22) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_22,
      PCIN(21) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_21,
      PCIN(20) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_20,
      PCIN(19) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_19,
      PCIN(18) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_18,
      PCIN(17) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_17,
      PCIN(16) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_16,
      PCIN(15) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_15,
      PCIN(14) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_14,
      PCIN(13) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_13,
      PCIN(12) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_12,
      PCIN(11) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_11,
      PCIN(10) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_10,
      PCIN(9) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_9,
      PCIN(8) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_8,
      PCIN(7) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_7,
      PCIN(6) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_6,
      PCIN(5) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_5,
      PCIN(4) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_4,
      PCIN(3) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_3,
      PCIN(2) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_2,
      PCIN(1) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_1,
      PCIN(0) => Mmac_n0134_PCOUT_to_Madd_Cal_Res1_PCIN_0,
      C(47) => N1,
      C(46) => N1,
      C(45) => N1,
      C(44) => N1,
      C(43) => N1,
      C(42) => N1,
      C(41) => N1,
      C(40) => N1,
      C(39) => N1,
      C(38) => N1,
      C(37) => N1,
      C(36) => N1,
      C(35) => N1,
      C(34) => N1,
      C(33) => N1,
      C(32) => N1,
      C(31) => N1,
      C(30) => N1,
      C(29) => N1,
      C(28) => N1,
      C(27) => N1,
      C(26) => N1,
      C(25) => N1,
      C(24) => N1,
      C(23) => N1,
      C(22) => N1,
      C(21) => N1,
      C(20) => N1,
      C(19) => N1,
      C(18) => N1,
      C(17) => N1,
      C(16) => N1,
      C(15) => N1,
      C(14) => N1,
      C(13) => N1,
      C(12) => N1,
      C(11) => N1,
      C(10) => N1,
      C(9) => N1,
      C(8) => N1,
      C(7) => N1,
      C(6) => N1,
      C(5) => N1,
      C(4) => N1,
      C(3) => N1,
      C(2) => N1,
      C(1) => N1,
      C(0) => N1,
      P(47) => NLW_Madd_Cal_Res1_P_47_UNCONNECTED,
      P(46) => NLW_Madd_Cal_Res1_P_46_UNCONNECTED,
      P(45) => NLW_Madd_Cal_Res1_P_45_UNCONNECTED,
      P(44) => NLW_Madd_Cal_Res1_P_44_UNCONNECTED,
      P(43) => NLW_Madd_Cal_Res1_P_43_UNCONNECTED,
      P(42) => NLW_Madd_Cal_Res1_P_42_UNCONNECTED,
      P(41) => NLW_Madd_Cal_Res1_P_41_UNCONNECTED,
      P(40) => NLW_Madd_Cal_Res1_P_40_UNCONNECTED,
      P(39) => NLW_Madd_Cal_Res1_P_39_UNCONNECTED,
      P(38) => NLW_Madd_Cal_Res1_P_38_UNCONNECTED,
      P(37) => NLW_Madd_Cal_Res1_P_37_UNCONNECTED,
      P(36) => NLW_Madd_Cal_Res1_P_36_UNCONNECTED,
      P(35) => NLW_Madd_Cal_Res1_P_35_UNCONNECTED,
      P(34) => NLW_Madd_Cal_Res1_P_34_UNCONNECTED,
      P(33) => NLW_Madd_Cal_Res1_P_33_UNCONNECTED,
      P(32) => NLW_Madd_Cal_Res1_P_32_UNCONNECTED,
      P(31) => NLW_Madd_Cal_Res1_P_31_UNCONNECTED,
      P(30) => NLW_Madd_Cal_Res1_P_30_UNCONNECTED,
      P(29) => NLW_Madd_Cal_Res1_P_29_UNCONNECTED,
      P(28) => NLW_Madd_Cal_Res1_P_28_UNCONNECTED,
      P(27) => NLW_Madd_Cal_Res1_P_27_UNCONNECTED,
      P(26) => NLW_Madd_Cal_Res1_P_26_UNCONNECTED,
      P(25) => NLW_Madd_Cal_Res1_P_25_UNCONNECTED,
      P(24) => NLW_Madd_Cal_Res1_P_24_UNCONNECTED,
      P(23) => NLW_Madd_Cal_Res1_P_23_UNCONNECTED,
      P(22) => NLW_Madd_Cal_Res1_P_22_UNCONNECTED,
      P(21) => NLW_Madd_Cal_Res1_P_21_UNCONNECTED,
      P(20) => NLW_Madd_Cal_Res1_P_20_UNCONNECTED,
      P(19) => NLW_Madd_Cal_Res1_P_19_UNCONNECTED,
      P(18) => NLW_Madd_Cal_Res1_P_18_UNCONNECTED,
      P(17) => NLW_Madd_Cal_Res1_P_17_UNCONNECTED,
      P(16) => NLW_Madd_Cal_Res1_P_16_UNCONNECTED,
      P(15) => NLW_Madd_Cal_Res1_P_15_UNCONNECTED,
      P(14) => NLW_Madd_Cal_Res1_P_14_UNCONNECTED,
      P(13) => NLW_Madd_Cal_Res1_P_13_UNCONNECTED,
      P(12) => NLW_Madd_Cal_Res1_P_12_UNCONNECTED,
      P(11) => NLW_Madd_Cal_Res1_P_11_UNCONNECTED,
      P(10) => dout_7_OBUF_44,
      P(9) => dout_6_OBUF_45,
      P(8) => dout_5_OBUF_46,
      P(7) => dout_4_OBUF_47,
      P(6) => dout_3_OBUF_48,
      P(5) => dout_2_OBUF_49,
      P(4) => dout_1_OBUF_50,
      P(3) => dout_0_OBUF_51,
      P(2) => NLW_Madd_Cal_Res1_P_2_UNCONNECTED,
      P(1) => NLW_Madd_Cal_Res1_P_1_UNCONNECTED,
      P(0) => NLW_Madd_Cal_Res1_P_0_UNCONNECTED,
      OPMODE(7) => N1,
      OPMODE(6) => N1,
      OPMODE(5) => N1,
      OPMODE(4) => N1,
      OPMODE(3) => N1,
      OPMODE(2) => N0,
      OPMODE(1) => N0,
      OPMODE(0) => N0,
      D(17) => N1,
      D(16) => N1,
      D(15) => N1,
      D(14) => N1,
      D(13) => N1,
      D(12) => N1,
      D(11) => N1,
      D(10) => N1,
      D(9) => N1,
      D(8) => N1,
      D(7) => N1,
      D(6) => N1,
      D(5) => N1,
      D(4) => N1,
      D(3) => N1,
      D(2) => N1,
      D(1) => N1,
      D(0) => N1,
      PCOUT(47) => NLW_Madd_Cal_Res1_PCOUT_47_UNCONNECTED,
      PCOUT(46) => NLW_Madd_Cal_Res1_PCOUT_46_UNCONNECTED,
      PCOUT(45) => NLW_Madd_Cal_Res1_PCOUT_45_UNCONNECTED,
      PCOUT(44) => NLW_Madd_Cal_Res1_PCOUT_44_UNCONNECTED,
      PCOUT(43) => NLW_Madd_Cal_Res1_PCOUT_43_UNCONNECTED,
      PCOUT(42) => NLW_Madd_Cal_Res1_PCOUT_42_UNCONNECTED,
      PCOUT(41) => NLW_Madd_Cal_Res1_PCOUT_41_UNCONNECTED,
      PCOUT(40) => NLW_Madd_Cal_Res1_PCOUT_40_UNCONNECTED,
      PCOUT(39) => NLW_Madd_Cal_Res1_PCOUT_39_UNCONNECTED,
      PCOUT(38) => NLW_Madd_Cal_Res1_PCOUT_38_UNCONNECTED,
      PCOUT(37) => NLW_Madd_Cal_Res1_PCOUT_37_UNCONNECTED,
      PCOUT(36) => NLW_Madd_Cal_Res1_PCOUT_36_UNCONNECTED,
      PCOUT(35) => NLW_Madd_Cal_Res1_PCOUT_35_UNCONNECTED,
      PCOUT(34) => NLW_Madd_Cal_Res1_PCOUT_34_UNCONNECTED,
      PCOUT(33) => NLW_Madd_Cal_Res1_PCOUT_33_UNCONNECTED,
      PCOUT(32) => NLW_Madd_Cal_Res1_PCOUT_32_UNCONNECTED,
      PCOUT(31) => NLW_Madd_Cal_Res1_PCOUT_31_UNCONNECTED,
      PCOUT(30) => NLW_Madd_Cal_Res1_PCOUT_30_UNCONNECTED,
      PCOUT(29) => NLW_Madd_Cal_Res1_PCOUT_29_UNCONNECTED,
      PCOUT(28) => NLW_Madd_Cal_Res1_PCOUT_28_UNCONNECTED,
      PCOUT(27) => NLW_Madd_Cal_Res1_PCOUT_27_UNCONNECTED,
      PCOUT(26) => NLW_Madd_Cal_Res1_PCOUT_26_UNCONNECTED,
      PCOUT(25) => NLW_Madd_Cal_Res1_PCOUT_25_UNCONNECTED,
      PCOUT(24) => NLW_Madd_Cal_Res1_PCOUT_24_UNCONNECTED,
      PCOUT(23) => NLW_Madd_Cal_Res1_PCOUT_23_UNCONNECTED,
      PCOUT(22) => NLW_Madd_Cal_Res1_PCOUT_22_UNCONNECTED,
      PCOUT(21) => NLW_Madd_Cal_Res1_PCOUT_21_UNCONNECTED,
      PCOUT(20) => NLW_Madd_Cal_Res1_PCOUT_20_UNCONNECTED,
      PCOUT(19) => NLW_Madd_Cal_Res1_PCOUT_19_UNCONNECTED,
      PCOUT(18) => NLW_Madd_Cal_Res1_PCOUT_18_UNCONNECTED,
      PCOUT(17) => NLW_Madd_Cal_Res1_PCOUT_17_UNCONNECTED,
      PCOUT(16) => NLW_Madd_Cal_Res1_PCOUT_16_UNCONNECTED,
      PCOUT(15) => NLW_Madd_Cal_Res1_PCOUT_15_UNCONNECTED,
      PCOUT(14) => NLW_Madd_Cal_Res1_PCOUT_14_UNCONNECTED,
      PCOUT(13) => NLW_Madd_Cal_Res1_PCOUT_13_UNCONNECTED,
      PCOUT(12) => NLW_Madd_Cal_Res1_PCOUT_12_UNCONNECTED,
      PCOUT(11) => NLW_Madd_Cal_Res1_PCOUT_11_UNCONNECTED,
      PCOUT(10) => NLW_Madd_Cal_Res1_PCOUT_10_UNCONNECTED,
      PCOUT(9) => NLW_Madd_Cal_Res1_PCOUT_9_UNCONNECTED,
      PCOUT(8) => NLW_Madd_Cal_Res1_PCOUT_8_UNCONNECTED,
      PCOUT(7) => NLW_Madd_Cal_Res1_PCOUT_7_UNCONNECTED,
      PCOUT(6) => NLW_Madd_Cal_Res1_PCOUT_6_UNCONNECTED,
      PCOUT(5) => NLW_Madd_Cal_Res1_PCOUT_5_UNCONNECTED,
      PCOUT(4) => NLW_Madd_Cal_Res1_PCOUT_4_UNCONNECTED,
      PCOUT(3) => NLW_Madd_Cal_Res1_PCOUT_3_UNCONNECTED,
      PCOUT(2) => NLW_Madd_Cal_Res1_PCOUT_2_UNCONNECTED,
      PCOUT(1) => NLW_Madd_Cal_Res1_PCOUT_1_UNCONNECTED,
      PCOUT(0) => NLW_Madd_Cal_Res1_PCOUT_0_UNCONNECTED,
      A(17) => N1,
      A(16) => N1,
      A(15) => N1,
      A(14) => N1,
      A(13) => N1,
      A(12) => N1,
      A(11) => N1,
      A(10) => N1,
      A(9) => N1,
      A(8) => N1,
      A(7) => N1,
      A(6) => N1,
      A(5) => N1,
      A(4) => N1,
      A(3) => N1,
      A(2) => N1,
      A(1) => N1,
      A(0) => N1,
      M(35) => NLW_Madd_Cal_Res1_M_35_UNCONNECTED,
      M(34) => NLW_Madd_Cal_Res1_M_34_UNCONNECTED,
      M(33) => NLW_Madd_Cal_Res1_M_33_UNCONNECTED,
      M(32) => NLW_Madd_Cal_Res1_M_32_UNCONNECTED,
      M(31) => NLW_Madd_Cal_Res1_M_31_UNCONNECTED,
      M(30) => NLW_Madd_Cal_Res1_M_30_UNCONNECTED,
      M(29) => NLW_Madd_Cal_Res1_M_29_UNCONNECTED,
      M(28) => NLW_Madd_Cal_Res1_M_28_UNCONNECTED,
      M(27) => NLW_Madd_Cal_Res1_M_27_UNCONNECTED,
      M(26) => NLW_Madd_Cal_Res1_M_26_UNCONNECTED,
      M(25) => NLW_Madd_Cal_Res1_M_25_UNCONNECTED,
      M(24) => NLW_Madd_Cal_Res1_M_24_UNCONNECTED,
      M(23) => NLW_Madd_Cal_Res1_M_23_UNCONNECTED,
      M(22) => NLW_Madd_Cal_Res1_M_22_UNCONNECTED,
      M(21) => NLW_Madd_Cal_Res1_M_21_UNCONNECTED,
      M(20) => NLW_Madd_Cal_Res1_M_20_UNCONNECTED,
      M(19) => NLW_Madd_Cal_Res1_M_19_UNCONNECTED,
      M(18) => NLW_Madd_Cal_Res1_M_18_UNCONNECTED,
      M(17) => NLW_Madd_Cal_Res1_M_17_UNCONNECTED,
      M(16) => NLW_Madd_Cal_Res1_M_16_UNCONNECTED,
      M(15) => NLW_Madd_Cal_Res1_M_15_UNCONNECTED,
      M(14) => NLW_Madd_Cal_Res1_M_14_UNCONNECTED,
      M(13) => NLW_Madd_Cal_Res1_M_13_UNCONNECTED,
      M(12) => NLW_Madd_Cal_Res1_M_12_UNCONNECTED,
      M(11) => NLW_Madd_Cal_Res1_M_11_UNCONNECTED,
      M(10) => NLW_Madd_Cal_Res1_M_10_UNCONNECTED,
      M(9) => NLW_Madd_Cal_Res1_M_9_UNCONNECTED,
      M(8) => NLW_Madd_Cal_Res1_M_8_UNCONNECTED,
      M(7) => NLW_Madd_Cal_Res1_M_7_UNCONNECTED,
      M(6) => NLW_Madd_Cal_Res1_M_6_UNCONNECTED,
      M(5) => NLW_Madd_Cal_Res1_M_5_UNCONNECTED,
      M(4) => NLW_Madd_Cal_Res1_M_4_UNCONNECTED,
      M(3) => NLW_Madd_Cal_Res1_M_3_UNCONNECTED,
      M(2) => NLW_Madd_Cal_Res1_M_2_UNCONNECTED,
      M(1) => NLW_Madd_Cal_Res1_M_1_UNCONNECTED,
      M(0) => NLW_Madd_Cal_Res1_M_0_UNCONNECTED
    );
  Mcount_doutAddr_Int_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcount_doutAddr_Int_lut(0),
      O => Mcount_doutAddr_Int_cy(0)
    );
  Mcount_doutAddr_Int_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => Mcount_doutAddr_Int_lut(0),
      O => Result(0)
    );
  Mcount_doutAddr_Int_cy_1_Q : MUXCY
    port map (
      CI => Mcount_doutAddr_Int_cy(0),
      DI => N1,
      S => Mcount_doutAddr_Int_cy_1_rt_347,
      O => Mcount_doutAddr_Int_cy(1)
    );
  Mcount_doutAddr_Int_xor_1_Q : XORCY
    port map (
      CI => Mcount_doutAddr_Int_cy(0),
      LI => Mcount_doutAddr_Int_cy_1_rt_347,
      O => Result(1)
    );
  Mcount_doutAddr_Int_cy_2_Q : MUXCY
    port map (
      CI => Mcount_doutAddr_Int_cy(1),
      DI => N1,
      S => Mcount_doutAddr_Int_cy_2_rt_348,
      O => Mcount_doutAddr_Int_cy(2)
    );
  Mcount_doutAddr_Int_xor_2_Q : XORCY
    port map (
      CI => Mcount_doutAddr_Int_cy(1),
      LI => Mcount_doutAddr_Int_cy_2_rt_348,
      O => Result(2)
    );
  Mcount_doutAddr_Int_cy_3_Q : MUXCY
    port map (
      CI => Mcount_doutAddr_Int_cy(2),
      DI => N1,
      S => Mcount_doutAddr_Int_cy_3_rt_349,
      O => Mcount_doutAddr_Int_cy(3)
    );
  Mcount_doutAddr_Int_xor_3_Q : XORCY
    port map (
      CI => Mcount_doutAddr_Int_cy(2),
      LI => Mcount_doutAddr_Int_cy_3_rt_349,
      O => Result(3)
    );
  Mcount_doutAddr_Int_cy_4_Q : MUXCY
    port map (
      CI => Mcount_doutAddr_Int_cy(3),
      DI => N1,
      S => Mcount_doutAddr_Int_cy_4_rt_350,
      O => Mcount_doutAddr_Int_cy(4)
    );
  Mcount_doutAddr_Int_xor_4_Q : XORCY
    port map (
      CI => Mcount_doutAddr_Int_cy(3),
      LI => Mcount_doutAddr_Int_cy_4_rt_350,
      O => Result(4)
    );
  Mcount_doutAddr_Int_cy_5_Q : MUXCY
    port map (
      CI => Mcount_doutAddr_Int_cy(4),
      DI => N1,
      S => Mcount_doutAddr_Int_cy_5_rt_351,
      O => Mcount_doutAddr_Int_cy(5)
    );
  Mcount_doutAddr_Int_xor_5_Q : XORCY
    port map (
      CI => Mcount_doutAddr_Int_cy(4),
      LI => Mcount_doutAddr_Int_cy_5_rt_351,
      O => Result(5)
    );
  Mcount_doutAddr_Int_cy_6_Q : MUXCY
    port map (
      CI => Mcount_doutAddr_Int_cy(5),
      DI => N1,
      S => Mcount_doutAddr_Int_cy_6_rt_352,
      O => Mcount_doutAddr_Int_cy(6)
    );
  Mcount_doutAddr_Int_xor_6_Q : XORCY
    port map (
      CI => Mcount_doutAddr_Int_cy(5),
      LI => Mcount_doutAddr_Int_cy_6_rt_352,
      O => Result(6)
    );
  Mcount_doutAddr_Int_cy_7_Q : MUXCY
    port map (
      CI => Mcount_doutAddr_Int_cy(6),
      DI => N1,
      S => Mcount_doutAddr_Int_cy_7_rt_353,
      O => Mcount_doutAddr_Int_cy(7)
    );
  Mcount_doutAddr_Int_xor_7_Q : XORCY
    port map (
      CI => Mcount_doutAddr_Int_cy(6),
      LI => Mcount_doutAddr_Int_cy_7_rt_353,
      O => Result(7)
    );
  Mcount_doutAddr_Int_cy_8_Q : MUXCY
    port map (
      CI => Mcount_doutAddr_Int_cy(7),
      DI => N1,
      S => Mcount_doutAddr_Int_cy_8_rt_354,
      O => Mcount_doutAddr_Int_cy(8)
    );
  Mcount_doutAddr_Int_xor_8_Q : XORCY
    port map (
      CI => Mcount_doutAddr_Int_cy(7),
      LI => Mcount_doutAddr_Int_cy_8_rt_354,
      O => Result(8)
    );
  Mcount_doutAddr_Int_cy_9_Q : MUXCY
    port map (
      CI => Mcount_doutAddr_Int_cy(8),
      DI => N1,
      S => Mcount_doutAddr_Int_cy_9_rt_355,
      O => Mcount_doutAddr_Int_cy(9)
    );
  Mcount_doutAddr_Int_xor_9_Q : XORCY
    port map (
      CI => Mcount_doutAddr_Int_cy(8),
      LI => Mcount_doutAddr_Int_cy_9_rt_355,
      O => Result(9)
    );
  Mcount_doutAddr_Int_cy_10_Q : MUXCY
    port map (
      CI => Mcount_doutAddr_Int_cy(9),
      DI => N1,
      S => Mcount_doutAddr_Int_cy_10_rt_356,
      O => Mcount_doutAddr_Int_cy(10)
    );
  Mcount_doutAddr_Int_xor_10_Q : XORCY
    port map (
      CI => Mcount_doutAddr_Int_cy(9),
      LI => Mcount_doutAddr_Int_cy_10_rt_356,
      O => Result(10)
    );
  Mcount_doutAddr_Int_cy_11_Q : MUXCY
    port map (
      CI => Mcount_doutAddr_Int_cy(10),
      DI => N1,
      S => Mcount_doutAddr_Int_cy_11_rt_357,
      O => Mcount_doutAddr_Int_cy(11)
    );
  Mcount_doutAddr_Int_xor_11_Q : XORCY
    port map (
      CI => Mcount_doutAddr_Int_cy(10),
      LI => Mcount_doutAddr_Int_cy_11_rt_357,
      O => Result(11)
    );
  Mcount_doutAddr_Int_cy_12_Q : MUXCY
    port map (
      CI => Mcount_doutAddr_Int_cy(11),
      DI => N1,
      S => Mcount_doutAddr_Int_cy_12_rt_358,
      O => Mcount_doutAddr_Int_cy(12)
    );
  Mcount_doutAddr_Int_xor_12_Q : XORCY
    port map (
      CI => Mcount_doutAddr_Int_cy(11),
      LI => Mcount_doutAddr_Int_cy_12_rt_358,
      O => Result(12)
    );
  Mcount_doutAddr_Int_cy_13_Q : MUXCY
    port map (
      CI => Mcount_doutAddr_Int_cy(12),
      DI => N1,
      S => Mcount_doutAddr_Int_cy_13_rt_359,
      O => Mcount_doutAddr_Int_cy(13)
    );
  Mcount_doutAddr_Int_xor_13_Q : XORCY
    port map (
      CI => Mcount_doutAddr_Int_cy(12),
      LI => Mcount_doutAddr_Int_cy_13_rt_359,
      O => Result(13)
    );
  Mcount_doutAddr_Int_cy_14_Q : MUXCY
    port map (
      CI => Mcount_doutAddr_Int_cy(13),
      DI => N1,
      S => Mcount_doutAddr_Int_cy_14_rt_360,
      O => Mcount_doutAddr_Int_cy(14)
    );
  Mcount_doutAddr_Int_xor_14_Q : XORCY
    port map (
      CI => Mcount_doutAddr_Int_cy(13),
      LI => Mcount_doutAddr_Int_cy_14_rt_360,
      O => Result(14)
    );
  Mcount_doutAddr_Int_xor_15_Q : XORCY
    port map (
      CI => Mcount_doutAddr_Int_cy(14),
      LI => Mcount_doutAddr_Int_xor_15_rt_374,
      O => Result(15)
    );
  Mcount_Counter_M_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcount_Counter_M_lut(0),
      O => Mcount_Counter_M_cy(0)
    );
  Mcount_Counter_M_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => Mcount_Counter_M_lut(0),
      O => Result_0_1
    );
  Mcount_Counter_M_cy_1_Q : MUXCY
    port map (
      CI => Mcount_Counter_M_cy(0),
      DI => N1,
      S => Mcount_Counter_M_cy_1_rt_361,
      O => Mcount_Counter_M_cy(1)
    );
  Mcount_Counter_M_xor_1_Q : XORCY
    port map (
      CI => Mcount_Counter_M_cy(0),
      LI => Mcount_Counter_M_cy_1_rt_361,
      O => Result_1_1
    );
  Mcount_Counter_M_cy_2_Q : MUXCY
    port map (
      CI => Mcount_Counter_M_cy(1),
      DI => N1,
      S => Mcount_Counter_M_cy_2_rt_362,
      O => Mcount_Counter_M_cy(2)
    );
  Mcount_Counter_M_xor_2_Q : XORCY
    port map (
      CI => Mcount_Counter_M_cy(1),
      LI => Mcount_Counter_M_cy_2_rt_362,
      O => Result_2_1
    );
  Mcount_Counter_M_cy_3_Q : MUXCY
    port map (
      CI => Mcount_Counter_M_cy(2),
      DI => N1,
      S => Mcount_Counter_M_cy_3_rt_363,
      O => Mcount_Counter_M_cy(3)
    );
  Mcount_Counter_M_xor_3_Q : XORCY
    port map (
      CI => Mcount_Counter_M_cy(2),
      LI => Mcount_Counter_M_cy_3_rt_363,
      O => Result_3_1
    );
  Mcount_Counter_M_cy_4_Q : MUXCY
    port map (
      CI => Mcount_Counter_M_cy(3),
      DI => N1,
      S => Mcount_Counter_M_cy_4_rt_364,
      O => Mcount_Counter_M_cy(4)
    );
  Mcount_Counter_M_xor_4_Q : XORCY
    port map (
      CI => Mcount_Counter_M_cy(3),
      LI => Mcount_Counter_M_cy_4_rt_364,
      O => Result_4_1
    );
  Mcount_Counter_M_cy_5_Q : MUXCY
    port map (
      CI => Mcount_Counter_M_cy(4),
      DI => N1,
      S => Mcount_Counter_M_cy_5_rt_365,
      O => Mcount_Counter_M_cy(5)
    );
  Mcount_Counter_M_xor_5_Q : XORCY
    port map (
      CI => Mcount_Counter_M_cy(4),
      LI => Mcount_Counter_M_cy_5_rt_365,
      O => Result_5_1
    );
  Mcount_Counter_M_cy_6_Q : MUXCY
    port map (
      CI => Mcount_Counter_M_cy(5),
      DI => N1,
      S => Mcount_Counter_M_cy_6_rt_366,
      O => Mcount_Counter_M_cy(6)
    );
  Mcount_Counter_M_xor_6_Q : XORCY
    port map (
      CI => Mcount_Counter_M_cy(5),
      LI => Mcount_Counter_M_cy_6_rt_366,
      O => Result_6_1
    );
  Mcount_Counter_M_xor_7_Q : XORCY
    port map (
      CI => Mcount_Counter_M_cy(6),
      LI => Mcount_Counter_M_xor_7_rt_375,
      O => Result_7_1
    );
  Mcount_Counter_k_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcount_Counter_k_lut(0),
      O => Mcount_Counter_k_cy(0)
    );
  Mcount_Counter_k_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => Mcount_Counter_k_lut(0),
      O => Result_0_2
    );
  Mcount_Counter_k_cy_1_Q : MUXCY
    port map (
      CI => Mcount_Counter_k_cy(0),
      DI => N1,
      S => Mcount_Counter_k_cy_1_rt_367,
      O => Mcount_Counter_k_cy(1)
    );
  Mcount_Counter_k_xor_1_Q : XORCY
    port map (
      CI => Mcount_Counter_k_cy(0),
      LI => Mcount_Counter_k_cy_1_rt_367,
      O => Result_1_2
    );
  Mcount_Counter_k_cy_2_Q : MUXCY
    port map (
      CI => Mcount_Counter_k_cy(1),
      DI => N1,
      S => Mcount_Counter_k_cy_2_rt_368,
      O => Mcount_Counter_k_cy(2)
    );
  Mcount_Counter_k_xor_2_Q : XORCY
    port map (
      CI => Mcount_Counter_k_cy(1),
      LI => Mcount_Counter_k_cy_2_rt_368,
      O => Result_2_2
    );
  Mcount_Counter_k_cy_3_Q : MUXCY
    port map (
      CI => Mcount_Counter_k_cy(2),
      DI => N1,
      S => Mcount_Counter_k_cy_3_rt_369,
      O => Mcount_Counter_k_cy(3)
    );
  Mcount_Counter_k_xor_3_Q : XORCY
    port map (
      CI => Mcount_Counter_k_cy(2),
      LI => Mcount_Counter_k_cy_3_rt_369,
      O => Result_3_2
    );
  Mcount_Counter_k_cy_4_Q : MUXCY
    port map (
      CI => Mcount_Counter_k_cy(3),
      DI => N1,
      S => Mcount_Counter_k_cy_4_rt_370,
      O => Mcount_Counter_k_cy(4)
    );
  Mcount_Counter_k_xor_4_Q : XORCY
    port map (
      CI => Mcount_Counter_k_cy(3),
      LI => Mcount_Counter_k_cy_4_rt_370,
      O => Result_4_2
    );
  Mcount_Counter_k_cy_5_Q : MUXCY
    port map (
      CI => Mcount_Counter_k_cy(4),
      DI => N1,
      S => Mcount_Counter_k_cy_5_rt_371,
      O => Mcount_Counter_k_cy(5)
    );
  Mcount_Counter_k_xor_5_Q : XORCY
    port map (
      CI => Mcount_Counter_k_cy(4),
      LI => Mcount_Counter_k_cy_5_rt_371,
      O => Result_5_2
    );
  Mcount_Counter_k_cy_6_Q : MUXCY
    port map (
      CI => Mcount_Counter_k_cy(5),
      DI => N1,
      S => Mcount_Counter_k_cy_6_rt_372,
      O => Mcount_Counter_k_cy(6)
    );
  Mcount_Counter_k_xor_6_Q : XORCY
    port map (
      CI => Mcount_Counter_k_cy(5),
      LI => Mcount_Counter_k_cy_6_rt_372,
      O => Result_6_2
    );
  Mcount_Counter_k_xor_7_Q : XORCY
    port map (
      CI => Mcount_Counter_k_cy(6),
      LI => Mcount_Counter_k_xor_7_rt_376,
      O => Result_7_2
    );
  Maddsub_n0131_Madd1_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Counter_j(1),
      I1 => Counter_j(0),
      O => Maddsub_n0131_Madd1_lut(1)
    );
  Maddsub_n0131_Madd1_cy_1_Q : MUXCY
    port map (
      CI => N1,
      DI => Counter_j(1),
      S => Maddsub_n0131_Madd1_lut(1),
      O => Maddsub_n0131_Madd1_cy(1)
    );
  Maddsub_n0131_Madd1_xor_1_Q : XORCY
    port map (
      CI => N1,
      LI => Maddsub_n0131_Madd1_lut(1),
      O => Maddsub_n0131_1
    );
  Maddsub_n0131_Madd1_cy_2_Q : MUXCY
    port map (
      CI => Maddsub_n0131_Madd1_cy(1),
      DI => N1,
      S => Maddsub_n0131_Madd1_cy_2_rt_373,
      O => Maddsub_n0131_Madd1_cy(2)
    );
  Maddsub_n0131_Madd1_xor_2_Q : XORCY
    port map (
      CI => Maddsub_n0131_Madd1_cy(1),
      LI => Maddsub_n0131_Madd1_cy_2_rt_373,
      O => Maddsub_n0131_2
    );
  Counter_j_1_PWR_4_o_equal_39_o_1_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Counter_j(0),
      I1 => Counter_j(1),
      O => Counter_j_1_PWR_4_o_equal_39_o
    );
  Counter_i_1_PWR_4_o_equal_24_o_1_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Counter_i(0),
      I1 => Counter_i(1),
      O => Counter_i_1_PWR_4_o_equal_24_o
    );
  Mcount_Counter_i_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Counter_i(1),
      I1 => Counter_i(0),
      O => Result_1_3
    );
  Mmux_Counter_j_1_GND_4_o_mux_33_OUT21 : LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      I0 => Counter_M_7_PWR_4_o_equal_30_o,
      I1 => Counter_j(0),
      I2 => Counter_j(1),
      O => Counter_j_1_GND_4_o_mux_33_OUT_1_Q
    );
  Counter_M_7_PWR_4_o_equal_30_o_7_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Counter_M(3),
      I1 => Counter_M(2),
      I2 => Counter_M(1),
      O => N10
    );
  Counter_M_7_PWR_4_o_equal_30_o_7_Q : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => Counter_j(0),
      I1 => Counter_M(7),
      I2 => Counter_M(6),
      I3 => Counter_M(5),
      I4 => Counter_M(4),
      I5 => N10,
      O => Counter_M_7_PWR_4_o_equal_30_o
    );
  Counter_k_7_Counter_M_7_AND_133_o_SW0 : LUT4
    generic map(
      INIT => X"DFFF"
    )
    port map (
      I0 => Counter_k(2),
      I1 => Counter_k(0),
      I2 => Counter_k(1),
      I3 => Counter_M_7_PWR_4_o_equal_30_o,
      O => N12
    );
  Counter_k_7_Counter_M_7_AND_133_o : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => Counter_k(6),
      I1 => Counter_k(5),
      I2 => Counter_k(7),
      I3 => Counter_k(4),
      I4 => Counter_k(3),
      I5 => N12,
      O => Counter_k_7_Counter_M_7_AND_133_o_91
    );
  din_7_IBUF : IBUF
    port map (
      I => din(7),
      O => din_7_IBUF_0
    );
  din_6_IBUF : IBUF
    port map (
      I => din(6),
      O => din_6_IBUF_1
    );
  din_5_IBUF : IBUF
    port map (
      I => din(5),
      O => din_5_IBUF_2
    );
  din_4_IBUF : IBUF
    port map (
      I => din(4),
      O => din_4_IBUF_3
    );
  din_3_IBUF : IBUF
    port map (
      I => din(3),
      O => din_3_IBUF_4
    );
  din_2_IBUF : IBUF
    port map (
      I => din(2),
      O => din_2_IBUF_5
    );
  din_1_IBUF : IBUF
    port map (
      I => din(1),
      O => din_1_IBUF_6
    );
  din_0_IBUF : IBUF
    port map (
      I => din(0),
      O => din_0_IBUF_7
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF_9
    );
  go_IBUF : IBUF
    port map (
      I => go,
      O => go_IBUF_10
    );
  dout_7_OBUF : OBUF
    port map (
      I => dout_7_OBUF_44,
      O => dout(7)
    );
  dout_6_OBUF : OBUF
    port map (
      I => dout_6_OBUF_45,
      O => dout(6)
    );
  dout_5_OBUF : OBUF
    port map (
      I => dout_5_OBUF_46,
      O => dout(5)
    );
  dout_4_OBUF : OBUF
    port map (
      I => dout_4_OBUF_47,
      O => dout(4)
    );
  dout_3_OBUF : OBUF
    port map (
      I => dout_3_OBUF_48,
      O => dout(3)
    );
  dout_2_OBUF : OBUF
    port map (
      I => dout_2_OBUF_49,
      O => dout(2)
    );
  dout_1_OBUF : OBUF
    port map (
      I => dout_1_OBUF_50,
      O => dout(1)
    );
  dout_0_OBUF : OBUF
    port map (
      I => dout_0_OBUF_51,
      O => dout(0)
    );
  dinAddr_15_OBUF : OBUF
    port map (
      I => dinAddr_Int(15),
      O => dinAddr(15)
    );
  dinAddr_14_OBUF : OBUF
    port map (
      I => dinAddr_Int(14),
      O => dinAddr(14)
    );
  dinAddr_13_OBUF : OBUF
    port map (
      I => dinAddr_Int(13),
      O => dinAddr(13)
    );
  dinAddr_12_OBUF : OBUF
    port map (
      I => dinAddr_Int(12),
      O => dinAddr(12)
    );
  dinAddr_11_OBUF : OBUF
    port map (
      I => dinAddr_Int(11),
      O => dinAddr(11)
    );
  dinAddr_10_OBUF : OBUF
    port map (
      I => dinAddr_Int(10),
      O => dinAddr(10)
    );
  dinAddr_9_OBUF : OBUF
    port map (
      I => dinAddr_Int(9),
      O => dinAddr(9)
    );
  dinAddr_8_OBUF : OBUF
    port map (
      I => dinAddr_Int(8),
      O => dinAddr(8)
    );
  dinAddr_7_OBUF : OBUF
    port map (
      I => dinAddr_Int(7),
      O => dinAddr(7)
    );
  dinAddr_6_OBUF : OBUF
    port map (
      I => dinAddr_Int(6),
      O => dinAddr(6)
    );
  dinAddr_5_OBUF : OBUF
    port map (
      I => dinAddr_Int(5),
      O => dinAddr(5)
    );
  dinAddr_4_OBUF : OBUF
    port map (
      I => dinAddr_Int(4),
      O => dinAddr(4)
    );
  dinAddr_3_OBUF : OBUF
    port map (
      I => dinAddr_Int(3),
      O => dinAddr(3)
    );
  dinAddr_2_OBUF : OBUF
    port map (
      I => dinAddr_Int(2),
      O => dinAddr(2)
    );
  dinAddr_1_OBUF : OBUF
    port map (
      I => dinAddr_Int(1),
      O => dinAddr(1)
    );
  dinAddr_0_OBUF : OBUF
    port map (
      I => dinAddr_Int(0),
      O => dinAddr(0)
    );
  doutAddr_15_OBUF : OBUF
    port map (
      I => doutAddr_Int(15),
      O => doutAddr(15)
    );
  doutAddr_14_OBUF : OBUF
    port map (
      I => doutAddr_Int(14),
      O => doutAddr(14)
    );
  doutAddr_13_OBUF : OBUF
    port map (
      I => doutAddr_Int(13),
      O => doutAddr(13)
    );
  doutAddr_12_OBUF : OBUF
    port map (
      I => doutAddr_Int(12),
      O => doutAddr(12)
    );
  doutAddr_11_OBUF : OBUF
    port map (
      I => doutAddr_Int(11),
      O => doutAddr(11)
    );
  doutAddr_10_OBUF : OBUF
    port map (
      I => doutAddr_Int(10),
      O => doutAddr(10)
    );
  doutAddr_9_OBUF : OBUF
    port map (
      I => doutAddr_Int(9),
      O => doutAddr(9)
    );
  doutAddr_8_OBUF : OBUF
    port map (
      I => doutAddr_Int(8),
      O => doutAddr(8)
    );
  doutAddr_7_OBUF : OBUF
    port map (
      I => doutAddr_Int(7),
      O => doutAddr(7)
    );
  doutAddr_6_OBUF : OBUF
    port map (
      I => doutAddr_Int(6),
      O => doutAddr(6)
    );
  doutAddr_5_OBUF : OBUF
    port map (
      I => doutAddr_Int(5),
      O => doutAddr(5)
    );
  doutAddr_4_OBUF : OBUF
    port map (
      I => doutAddr_Int(4),
      O => doutAddr(4)
    );
  doutAddr_3_OBUF : OBUF
    port map (
      I => doutAddr_Int(3),
      O => doutAddr(3)
    );
  doutAddr_2_OBUF : OBUF
    port map (
      I => doutAddr_Int(2),
      O => doutAddr(2)
    );
  doutAddr_1_OBUF : OBUF
    port map (
      I => doutAddr_Int(1),
      O => doutAddr(1)
    );
  doutAddr_0_OBUF : OBUF
    port map (
      I => doutAddr_Int(0),
      O => doutAddr(0)
    );
  readEn_OBUF : OBUF
    port map (
      I => readEn_Int_13,
      O => readEn
    );
  writeEn_OBUF : OBUF
    port map (
      I => writeEn_Int_16,
      O => writeEn
    );
  done_OBUF : OBUF
    port map (
      I => done_Int_15,
      O => done
    );
  readEn_Int : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      D => readEn_Int_glue_set_340,
      Q => readEn_Int_13
    );
  readEn_Int_glue_set : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => readEn_Int_13,
      I1 => go_Int_11,
      O => readEn_Int_glue_set_340
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ADDERTREE_INTERNAL_Madd1_lut_0_9,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_8_rt_341
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ADDERTREE_INTERNAL_Madd1_lut_0_10,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_9_rt_342
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ADDERTREE_INTERNAL_Madd1_lut_0_11,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_10_rt_343
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ADDERTREE_INTERNAL_Madd1_lut_0_12,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_11_rt_344
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ADDERTREE_INTERNAL_Madd1_lut_0_13,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_12_rt_345
    );
  ADDERTREE_INTERNAL_Madd1_cy_0_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ADDERTREE_INTERNAL_Madd1_lut_0_14,
      O => ADDERTREE_INTERNAL_Madd1_cy_0_13_rt_346
    );
  Mcount_doutAddr_Int_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => doutAddr_Int(1),
      O => Mcount_doutAddr_Int_cy_1_rt_347
    );
  Mcount_doutAddr_Int_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => doutAddr_Int(2),
      O => Mcount_doutAddr_Int_cy_2_rt_348
    );
  Mcount_doutAddr_Int_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => doutAddr_Int(3),
      O => Mcount_doutAddr_Int_cy_3_rt_349
    );
  Mcount_doutAddr_Int_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => doutAddr_Int(4),
      O => Mcount_doutAddr_Int_cy_4_rt_350
    );
  Mcount_doutAddr_Int_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => doutAddr_Int(5),
      O => Mcount_doutAddr_Int_cy_5_rt_351
    );
  Mcount_doutAddr_Int_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => doutAddr_Int(6),
      O => Mcount_doutAddr_Int_cy_6_rt_352
    );
  Mcount_doutAddr_Int_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => doutAddr_Int(7),
      O => Mcount_doutAddr_Int_cy_7_rt_353
    );
  Mcount_doutAddr_Int_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => doutAddr_Int(8),
      O => Mcount_doutAddr_Int_cy_8_rt_354
    );
  Mcount_doutAddr_Int_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => doutAddr_Int(9),
      O => Mcount_doutAddr_Int_cy_9_rt_355
    );
  Mcount_doutAddr_Int_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => doutAddr_Int(10),
      O => Mcount_doutAddr_Int_cy_10_rt_356
    );
  Mcount_doutAddr_Int_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => doutAddr_Int(11),
      O => Mcount_doutAddr_Int_cy_11_rt_357
    );
  Mcount_doutAddr_Int_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => doutAddr_Int(12),
      O => Mcount_doutAddr_Int_cy_12_rt_358
    );
  Mcount_doutAddr_Int_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => doutAddr_Int(13),
      O => Mcount_doutAddr_Int_cy_13_rt_359
    );
  Mcount_doutAddr_Int_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => doutAddr_Int(14),
      O => Mcount_doutAddr_Int_cy_14_rt_360
    );
  Mcount_Counter_M_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Counter_M(1),
      O => Mcount_Counter_M_cy_1_rt_361
    );
  Mcount_Counter_M_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Counter_M(2),
      O => Mcount_Counter_M_cy_2_rt_362
    );
  Mcount_Counter_M_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Counter_M(3),
      O => Mcount_Counter_M_cy_3_rt_363
    );
  Mcount_Counter_M_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Counter_M(4),
      O => Mcount_Counter_M_cy_4_rt_364
    );
  Mcount_Counter_M_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Counter_M(5),
      O => Mcount_Counter_M_cy_5_rt_365
    );
  Mcount_Counter_M_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Counter_M(6),
      O => Mcount_Counter_M_cy_6_rt_366
    );
  Mcount_Counter_k_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Counter_k(1),
      O => Mcount_Counter_k_cy_1_rt_367
    );
  Mcount_Counter_k_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Counter_k(2),
      O => Mcount_Counter_k_cy_2_rt_368
    );
  Mcount_Counter_k_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Counter_k(3),
      O => Mcount_Counter_k_cy_3_rt_369
    );
  Mcount_Counter_k_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Counter_k(4),
      O => Mcount_Counter_k_cy_4_rt_370
    );
  Mcount_Counter_k_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Counter_k(5),
      O => Mcount_Counter_k_cy_5_rt_371
    );
  Mcount_Counter_k_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Counter_k(6),
      O => Mcount_Counter_k_cy_6_rt_372
    );
  Maddsub_n0131_Madd1_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Counter_j(1),
      O => Maddsub_n0131_Madd1_cy_2_rt_373
    );
  Mcount_doutAddr_Int_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => doutAddr_Int(15),
      O => Mcount_doutAddr_Int_xor_15_rt_374
    );
  Mcount_Counter_M_xor_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Counter_M(7),
      O => Mcount_Counter_M_xor_7_rt_375
    );
  Mcount_Counter_k_xor_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Counter_k(7),
      O => Mcount_Counter_k_xor_7_rt_376
    );
  done_Int : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      D => done_Int_rstpot_377,
      Q => done_Int_15
    );
  writeEn_Int : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      D => writeEn_Int_rstpot_378,
      Q => writeEn_Int_16
    );
  Start_Cal : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      D => Start_Cal_rstpot_379,
      Q => Start_Cal_14
    );
  Q_n0181_1_1 : LUT6
    generic map(
      INIT => X"3D7FFFFFFFEA8014"
    )
    port map (
      I0 => Counter_i(1),
      I1 => Counter_i(0),
      I2 => Counter_j(0),
      I3 => Maddsub_n0131_1,
      I4 => Maddsub_n0131_2,
      I5 => Maddsub_n0131_Madd1_cy(2),
      O => \Q_n0181_1)\
    );
  Q_n0181_0_1 : LUT6
    generic map(
      INIT => X"D7FFFFFFEBC28143"
    )
    port map (
      I0 => Counter_i(1),
      I1 => Counter_i(0),
      I2 => Counter_j(0),
      I3 => Maddsub_n0131_1,
      I4 => Maddsub_n0131_2,
      I5 => Maddsub_n0131_Madd1_cy(2),
      O => \Q_n0181_0)\
    );
  Q_n0181_4_1 : LUT6
    generic map(
      INIT => X"957FFFFFEA943D6A"
    )
    port map (
      I0 => Counter_i(1),
      I1 => Counter_i(0),
      I2 => Counter_j(0),
      I3 => Maddsub_n0131_1,
      I4 => Maddsub_n0131_2,
      I5 => Maddsub_n0131_Madd1_cy(2),
      O => \Q_n0181_4)\
    );
  Q_n0181_5_1 : LUT6
    generic map(
      INIT => X"957FFFFFEA942942"
    )
    port map (
      I0 => Counter_i(1),
      I1 => Counter_i(0),
      I2 => Counter_j(0),
      I3 => Maddsub_n0131_1,
      I4 => Maddsub_n0131_2,
      I5 => Maddsub_n0131_Madd1_cy(2),
      O => \Q_n0181_5)\
    );
  Q_n0181_2_1 : LUT6
    generic map(
      INIT => X"157FFFFFFFEA8000"
    )
    port map (
      I0 => Counter_i(1),
      I1 => Counter_i(0),
      I2 => Counter_j(0),
      I3 => Maddsub_n0131_1,
      I4 => Maddsub_n0131_2,
      I5 => Maddsub_n0131_Madd1_cy(2),
      O => \Q_n0181_2)\
    );
  done_Int_rstpot : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => rst_Int_12,
      I1 => done_Int_15,
      I2 => Counter_k_7_Counter_M_7_AND_133_o_91,
      O => done_Int_rstpot_377
    );
  Start_Cal_rstpot : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => Counter_k_7_Counter_M_7_AND_133_o_91,
      I1 => Start_Cal_14,
      I2 => go_Int_11,
      O => Start_Cal_rstpot_379
    );
  Mcount_Counter_i_val1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => Counter_i(0),
      I1 => Counter_i(1),
      I2 => Counter_M_7_PWR_4_o_equal_30_o,
      O => Mcount_Counter_i_val
    );
  writeEn_Int_rstpot : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => writeEn_Int_16,
      I1 => Counter_j(0),
      I2 => Counter_j(1),
      O => writeEn_Int_rstpot_378
    );
  Clock_BUFGP : BUFGP
    port map (
      I => Clock,
      O => Clock_BUFGP_8
    );
  Mcount_doutAddr_Int_lut_0_INV_0 : INV
    port map (
      I => doutAddr_Int(0),
      O => Mcount_doutAddr_Int_lut(0)
    );
  Mcount_Counter_M_lut_0_INV_0 : INV
    port map (
      I => Counter_j(0),
      O => Mcount_Counter_M_lut(0)
    );
  Mcount_Counter_k_lut_0_INV_0 : INV
    port map (
      I => Counter_k(0),
      O => Mcount_Counter_k_lut(0)
    );
  Mcount_Counter_i_xor_0_11_INV_0 : INV
    port map (
      I => Counter_i(0),
      O => Result_0_3
    );
  Mmux_Counter_j_1_GND_4_o_mux_33_OUT11_INV_0 : INV
    port map (
      I => Counter_j(0),
      O => Counter_j_1_GND_4_o_mux_33_OUT_0_Q
    );

end Structure;


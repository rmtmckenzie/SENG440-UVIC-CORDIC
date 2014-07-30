
-- VHDL Instantiation Created from source file Combiner.vhd -- 14:32:18 07/30/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Combiner
	PORT(
		X : IN std_logic_vector(15 downto 0);
		Y : IN std_logic_vector(15 downto 0);          
		Arm_Out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Combiner: Combiner PORT MAP(
		X => ,
		Y => ,
		Arm_Out => 
	);



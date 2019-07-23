
MODULE Module1
	VAR robtarget Put_Box_Pos:=[[445.97,-215.18,191.85],[5.37583E-05,1,-2.94249E-07,6.88327E-05],[-1,-1,-3,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	VAR robtarget Pick_Box_Pos:=[[445.97,-40.78,198.74],[5.37125E-05,1,-6.23154E-07,6.87047E-05],[-1,-1,-3,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	VAR robtarget Tool1_Pos:=[[-369.01,172.07,228.95],[3.68843E-05,1,-1.50004E-07,7.90986E-05],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	VAR robtarget Tool2_Pos:=[[-370.43,289.41,228.36],[5.37437E-05,1,-1.58933E-08,6.87888E-05],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	VAR intnum Safety_intno:=0;
	PROC main()
		Initialize;
		WHILE TRUE DO
			Pick_Tool1;
			Pick_Box;
			Put_Box;
			Put_Tool1;
		ENDWHILE
	ENDPROC
	PROC Initialize()
		IDelete Safety_intno;
		CONNECT Safety_intno WITH Safety_Interrupt;
		ISignalDI\Single, DI_001, 0, Safety_intno;
		Reset DO_001;
		SetGO GO_4_15, 0;
		AccSet 100, 100;
		VelSet 100, 300;
		MoveAbsJ [[0,0,0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs, v100, z50, tool0;
		Set DO_001;
		Set DO_006;
		Set DO_008;
		WaitDI DI_001, 1;

	ENDPROC
	PROC Pick_Tool1()
		WaitDI DI_004, 1;
		Reset DO_001;
		MoveAbsJ [[0,0,0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs, v100, z50, tool0;
		MoveAbsJ [[90,0,0,0,90,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs, v100, z50, tool0;
		MoveJ Offs(Tool1_Pos,0,0,150), v100, z50, tool0;
		Set DO_013;
		WaitDI DI_012, 0;
		WaitDI DI_013, 1;
		MoveL Tool1_Pos, v50, fine, tool0;
		Reset DO_013;
		WaitDI DI_013, 0;
		WaitDI DI_012, 1;
		Set DO_004;
		Reset DO_014;
		Set DO_015;
		WaitDI DI_014, 0;
		WaitDI DI_015, 1;
		MoveL Offs(Tool1_Pos,0,0,150),v50,fine,tool0;
		Reset DO_015;
		Set DO_014;
		WaitDI DI_015, 0;
		WaitDI DI_014, 1;
		Reset DO_014;
		MoveAbsJ[[90,0,0,0,90,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v100,z50,tool0;
		MoveAbsJ [[0,0,0,0,90,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v100,z50,tool0;

	ENDPROC
	PROC Put_Tool1()
		MoveJ Offs(Tool1_Pos,0,0,150),v100,fine,tool0;
		Reset DO_014;
		Set DO_015;
		WaitDI DI_014, 0;
		WaitDI DI_015, 1;
		Reset DO_015;
		MoveL Tool1_Pos,v50,fine,tool0;
		Set DO_013;
		WaitDI DI_012, 0;
		WaitDI DI_013,1;
		Reset DO_014;
		MoveL Offs(Tool1_Pos,0,0,150),v50,z50,tool0;
		MoveAbsJ [[0,0,0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs, v100, z50, tool0;
		Set DO_001;

	ENDPROC
	PROC Pick_Box()
		WaitDI DI_006, 1;
		MoveAbsJ [[-90,0,0,0,90,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs, v100, z50, tool0;
		MoveJ Offs(Pick_Box_Pos,0,0,100),v100,z50,tool0;
		Reset DO_006;
		MoveL Pick_Box_Pos,v50,fine,tool0;
		Reset DO_014;
		Set DO_015;
		WaitDI DI_014, 0;
		WaitDI DI_015,1;
		Set DO_007;
		WaitDI DI_007, 1;
		Reset DO_007;
		MoveL Offs(Pick_Box_Pos,0,0,100), v50, fine, tool0;
		Set DO_006;
		MoveAbsJ [[0,0,0,0,90,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs, v100, z50, tool0;

	ENDPROC
	PROC Put_Box()
		WaitDI DI_008, 1;
		MoveJ Offs(Put_Box_Pos,0,0,150),v100,z50,tool0;
		Reset DO_008;
		MoveL Put_Box_Pos,v50,fine,tool0;
		Reset DO_015;
		Set DO_014;
		WaitDI DI_015, 0;
		WaitDI DI_014, 1;
		Set DO_009;
		Reset DO_014;
		WaitDI DI_009, 1;
		Reset DO_009;
		MoveL Offs(Put_Box_Pos,0,0,150), v50, fine, tool0;
		Set DO_008;

	ENDPROC
	TRAP Safety_Interrupt
		StopMove;
		WaitDI DI_001, 1;
		StartMove;
	ENDTRAP

ENDMODULE
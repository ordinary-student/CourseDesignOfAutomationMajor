
MODULE Module1
	VAR intnum Safety_intno:=0;
	CONST robtarget Tool1_Pos:=[[-371.03,189.25,228.49],[0.00664692,-0.99995,-0.00512586,-0.00546133],[1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Pick_Box_Pos:=[[340.08,-221.56,198.12],[0.000243966,-2.97412E-05,-1,-0.000105158],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Put_Box_Pos:=[[-122.99,346.48,325.33],[0.000142723,8.19198E-05,-1,-1.23359E-05],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget point:=[[340.84,-218.59,310.72],[0.000348033,-1.57166E-05,-1,-0.000158091],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Pick_Box_Pos2:=[[400.54,-221.56,197.40],[0.00024299,-2.79968E-05,-1,-0.000104167],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Pick_Box_Pos3:=[[459.27,-210.11,195.95],[0.000231385,-0.999982,-0.00603872,0.000501681],[-1,-1,-3,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Put_Box_Pos2:=[[-122.99,346.48,325.33],[0.000142723,8.19198E-05,-1,-1.23359E-05],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Put_Box_Pos3:=[[-122.99,346.48,325.33],[0.000142723,8.19198E-05,-1,-1.23359E-05],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget point2:=[[401.84,-218.63,314.32],[0.000347012,-1.77279E-05,-1,-0.000157954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget point3:=[[458.85,-212.91,363.40],[0.000117516,-0.999981,-0.00608367,0.000268964],[-1,-1,-3,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget point4:=[[-119.99,-361.87,457.52],[1.36369E-05,0.00774554,-0.99997,4.2023E-05],[-2,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Pick_Box_Pos11:=[[-119.99,-361.87,325.42],[1.48384E-05,0.00774317,-0.99997,3.83394E-05],[-2,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PROC Initialize()
		IDelete Safety_intno;
		CONNECT Safety_intno WITH Safety_Interrupt;
		ISignalDI\Single, DI_001, 0, Safety_intno;
		Reset DO_001;
		SetGO GO_4_15, 0;
		AccSet 100, 100;
		VelSet 100, 300;
		MoveAbsJ [[0,0,0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs, v300, z50, tool0;
		Set DO_001;
		Set DO_008;
		Set DO_006;
		WaitDI DI_001, 1;
	ENDPROC
	TRAP Safety_Interrupt
		StopMove;
		WaitDI DI_001, 1;
		StartMove;
	ENDTRAP
	PROC Pick_Tool1()
		WaitDI DI_004, 1;
		Reset DO_001;
		MoveAbsJ [[0,0,0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v300,z50,tool0;
		MoveAbsJ[[90,0,0,0,90,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v300,z50,tool0;
		MoveJ Offs(Tool1_Pos,0,0,150), v500, z50, tool0;
		Set DO_013;
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
		MoveAbsJ[[90,0,0,0,90,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v300,z50,tool0;
		MoveAbsJ[[0,0,0,0,90,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v300,z50,tool0;
		Reset DO_010;
	ENDPROC
	PROC Put_Tool1()
		MoveJ Offs(Tool1_Pos,0,0,150), v300, fine, tool0;
		Reset DO_014;
		Set DO_015;
		WaitDI DI_014, 0;
		WaitDI DI_015, 1;
		Reset DO_015;
		MoveL Tool1_Pos,v50,fine,tool0;
		Set DO_013;
		WaitDI DI_012, 0;
		WaitDI DI_013, 1;
		Reset DO_014;
		MoveL Offs(Tool1_Pos,0,0,150),v50,z50,tool0;
		MoveAbsJ[[0,0,0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v300,z50,tool0;
		Set DO_001;
		Reset DO_010;
	ENDPROC
	PROC Pick_Box()
        WaitDI DI_006,1;
		MoveAbsJ [[-10,0,0,0,90,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs, v300, z50, tool0;
		MoveL point, v200, fine, tool0;
        Reset DO_006;
		MoveL Pick_Box_Pos, v50, fine, tool0;
		Reset DO_014;
		Set DO_015;
		WaitDI DI_014, 0;
		WaitDI DI_015, 1;
        Set DO_007;
        WaitDI DI_007,1;
        Reset DO_007;
		MoveL Offs(Pick_Box_Pos,0,0,100),v50,fine,tool0;
	    Set DO_006;
		MoveAbsJ[[0,0,0,0,90,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v300,z50,tool0;
	ENDPROC
	PROC Pick_Box11()
        WaitDI DI_006,1;
		MoveAbsJ [[-90,0,0,0,90,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs, v300, z50, tool0;
		MoveL point4, v200, fine, tool0;
        Reset DO_006;
		MoveL Pick_Box_Pos11, v50, fine, tool0;
		Reset DO_014;
		Set DO_015;
		WaitDI DI_014, 0;
		WaitDI DI_015, 1;
        Set DO_007;
        WaitDI DI_007,1;
        Reset DO_007;
		MoveL Offs(Pick_Box_Pos11,0,0,100),v50,fine,tool0;
		Set DO_006;
		MoveAbsJ [[-30,0,0,0,90,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs, v300, z50, tool0;
	ENDPROC
	PROC Pick_Box2()
        WaitDI DI_006,1;
		MoveAbsJ [[-10,0,0,0,90,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs, v300, z50, tool0;
		MoveL point2, v200, fine, tool0;
        Reset DO_006;
		MoveL Pick_Box_Pos2, v50, fine, tool0;
		Reset DO_014;
		Set DO_015;
		WaitDI DI_014, 0;
		WaitDI DI_015, 1;
        Set DO_007;
        WaitDI DI_007,1;
        Reset DO_007;
		MoveL Offs(Pick_Box_Pos2,0,0,100),v50,fine,tool0;
		Set DO_006;
		MoveAbsJ[[0,0,0,0,90,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v100,z50,tool0;
	ENDPROC
	PROC Pick_Box3()
        WaitDI DI_006,1;
		MoveAbsJ [[-10,0,0,0,90,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs, v100, z50, tool0;
		MoveL point3, v200, fine, tool0;
        Reset DO_006;
		MoveL Pick_Box_Pos3, v50, fine, tool0;
		Reset DO_014;
		Set DO_015;
		WaitDI DI_014, 0;
		WaitDI DI_015, 1;
        Set DO_007;
        WaitDI DI_007,1;
        Reset DO_007;
		MoveL Offs(Pick_Box_Pos3,0,0,100),v50,fine,tool0;
		Set DO_006;
		MoveAbsJ[[0,0,0,0,90,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v300,z50,tool0;
	ENDPROC
	PROC Put_Box()
        WaitDI DI_008,1;
		MoveJ Offs(Put_Box_Pos,0,0,150), v300, z50, tool0;
		Reset DO_008;
		MoveL Put_Box_Pos,v50,fine,tool0;
		Reset DO_015;
		Set DO_014;
		WaitDI DI_015, 0;
		WaitDI DI_014, 1;
		Set DO_009;
		Reset DO_014;
        WaitDI DI_009,1;
		Reset DO_009;
		MoveL Offs(Put_Box_Pos,0,0,150),v50,fine,tool0;
		Set DO_008;
	ENDPROC
    	PROC Put_Box2()
        WaitDI DI_008,1;
		MoveJ Offs(Put_Box_Pos2,0,0,150), v300, z50, tool0;
		Reset DO_008;
		MoveL Put_Box_Pos2, v50, fine, tool0;
		Reset DO_008;
		MoveL Put_Box_Pos2, v50, fine, tool0;
		Reset DO_015;
		Set DO_014;
		WaitDI DI_015, 0;
		WaitDI DI_014, 1;
		Set DO_009;
		Reset DO_014;
        WaitDI DI_009,1;
		Reset DO_009;
		MoveL Offs(Put_Box_Pos2,0,0,150),v50,fine,tool0;
		Set DO_008;
	ENDPROC
	PROC Put_Box3()
        WaitDI DI_008,1;
		MoveJ Offs(Put_Box_Pos3,0,0,150), v300, z50, tool0;
		Reset DO_008;
		MoveL Put_Box_Pos3, v50, fine, tool0;
		Reset DO_015;
		Set DO_014;
		WaitDI DI_015, 0;
		WaitDI DI_014, 1;
		Set DO_009;
		Reset DO_014;
        WaitDI DI_009,1;
		Reset DO_009;
		MoveL Offs(Put_Box_Pos3,0,0,150),v50,fine,tool0;
		Set DO_008;
		Set DO_010;
	ENDPROC
	PROC Put_Box11()
		MoveJ Offs(Pick_Box_Pos,0,0,150), v300, z50, tool0;
		MoveL Pick_Box_Pos, v50, fine, tool0;
		Reset DO_015;
		Set DO_014;
		WaitDI DI_015, 0;
		WaitDI DI_014, 1;
		Reset DO_014;
		MoveL Offs(Pick_Box_Pos,0,0,150),v50,fine,tool0;
	ENDPROC
	PROC Put_Box12()
		MoveJ Offs(Pick_Box_Pos2,0,0,150), v300, z50, tool0;
		MoveL Pick_Box_Pos2, v50, fine, tool0;
		Reset DO_015;
		Set DO_014;
		WaitDI DI_015, 0;
		WaitDI DI_014, 1;
		Reset DO_014;
		MoveL Offs(Pick_Box_Pos2,0,0,150),v50,fine,tool0;
	ENDPROC
	PROC Put_Box13()
		MoveJ Offs(Pick_Box_Pos3,0,0,150), v300, z50, tool0;
		MoveL Pick_Box_Pos3, v50, fine, tool0;
		Reset DO_015;
		Set DO_014;
		WaitDI DI_015, 0;
		WaitDI DI_014, 1;
		Reset DO_014;
		MoveL Offs(Pick_Box_Pos3,0,0,150),v50,fine,tool0;
	ENDPROC

	PROC main()
		Initialize;
		WHILE TRUE DO
			Pick_Tool1;
			Pick_Box;
			Put_Box;
			Pick_Box2;
			Put_Box2;
			Pick_Box3;
			Put_Box3;
			Pick_Box11;
			Put_Box11;
			Pick_Box11;
			Put_Box12;
			Pick_Box11;
			Put_Box13;
			Put_Tool1;
		ENDWHILE
	ENDPROC

ENDMODULE
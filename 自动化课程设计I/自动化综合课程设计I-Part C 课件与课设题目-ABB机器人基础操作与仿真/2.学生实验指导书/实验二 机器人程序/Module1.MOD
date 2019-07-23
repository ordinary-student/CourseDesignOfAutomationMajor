
MODULE Module1
	CONST robtarget p1:=[[169.95,207.74,96.16],[1.07405E-07,-0.707107,0.707107,1.06202E-07],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget p11:=[[637.92,-239.80,436.64],[0.707107,-8.49626E-15,0.707107,8.12824E-15],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget p100:=[[31.46,46.46,0.00],[8.96457E-08,3.91016E-08,-1,-2.50508E-07],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget p110:=[[169.95,230.24,-64.39],[3.22421E-08,2.34657E-09,-1,-1.82593E-07],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget p200:=[[170.00,40.00,0.00],[5.80683E-08,-2.51812E-07,-1,-2.43058E-07],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget p220:=[[31.46,46.46,0.00],[8.96457E-08,3.91016E-08,-1,-2.50508E-07],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget p210:=[[31.46,46.46,0.00],[8.96457E-08,3.91016E-08,-1,-2.50508E-07],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget p201:=[[140.00,70.00,-0.00],[7.39694E-08,9.4367E-08,-1,-1.19943E-07],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget p202:=[[170.00,100.00,0.00],[1.85824E-07,5.90141E-07,-1,-1.50034E-07],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget p203:=[[200.00,70.00,-0.00],[7.66924E-08,6.83809E-07,-1,-1.34942E-07],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PROC main()
		Initialize;
		Take_Pen;
		Square;
		Circle;
		Put_Pen;
	ENDPROC
	PROC Initialize()
		AccSet 100, 100;
		VelSet 100, 300;
		MoveAbsJ [[0,0,0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs, v100, z50, tool0\WObj:=wobj0;
		Reset DO_007;
		MoveAbsJ [[90,-1.21927E-12,-8.32302E-13,1.21817E-18,90,-2.98212E-14],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs, v100, z50, tool0;
	ENDPROC
	PROC Take_Pen()
		MoveJ Offs(p1,0,-2,150), v100, z50, tool0\WObj:=wobj1;
		MoveL Offs(p1,0,-2,0), v50, fine, tool0\WObj:=wobj1;
		MoveL p1, v50, fine, tool0\WObj:=wobj1;
		Set DO_007;
		WaitTime 1;
		MoveL Offs(p1,0,0,150), v100, z50, tool0\WObj:=wobj1;
	ENDPROC
	PROC Put_Pen()
		MoveJ Offs(p1,0,0,150), v100, z50, tool0\WObj:=wobj1;
		MoveL p1, v50, fine, tool0\WObj:=wobj1;
		Reset DO_007;
		WaitTime 1;
		MoveL Offs(p1,0,0,150), v100, z50, tool0\WObj:=wobj1;
	ENDPROC
	PROC Square()
		MoveJ Offs(p100,0,0,150), v100, z50, tool_pen\WObj:=wobj1;
		MoveL p100, v50, z50, tool_pen\WObj:=wobj1;
		MoveL Offs(p100,0,50,0), v100, z50, tool_pen\WObj:=wobj1;
		MoveL Offs(p100,50,50,0), v100, z50, tool_pen\WObj:=wobj1;
		MoveL Offs(p100,50,0,0), v100, z50, tool_pen\WObj:=wobj1;
		MoveL p100, v100, z50, tool_pen\WObj:=wobj1;
		MoveL Offs(p100,0,0,150), v100, z50, tool_pen\WObj:=wobj1;
	ENDPROC
	PROC Circle()
		MoveJ Offs(p200,0,0,150), v100, z50, tool_pen\WObj:=wobj1;
		MoveL p200, v50, z50, tool_pen\WObj:=wobj1;
		MoveC p201, p202, v100, z10, tool_pen\WObj:=wobj1;
		MoveC p203, p200, v100, z10, tool_pen\WObj:=wobj1;
		MoveL Offs(p200,0,0,150), v100, z50, tool_pen\WObj:=wobj1;
	ENDPROC

ENDMODULE
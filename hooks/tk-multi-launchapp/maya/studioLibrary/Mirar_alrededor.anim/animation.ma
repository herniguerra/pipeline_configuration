//Maya ASCII 2017ff05 scene
//Name: animation.ma
//Last modified: Wed, Sep 18, 2019 03:45:08 PM
//Codeset: 1252
requires maya "2017ff05";
requires "stereoCamera" "10.0";
requires "maxwell" "2.7.8";
requires "FXHair-2011-x64" "1.1";
requires "3delight_for_maya2012" "6.0.25";
requires "stereoCamera" "10.0";
requires "TurtleForMaya2009" "5.0.0.5";
requires "Foliage" "4.5";
requires "DPK_bcs" "1.1.9";
requires "CorrectiveShape70" "7.0";
requires "CustomNode.py" "Unknown";
requires "MatteNode" "4.5";
requires "MayaMan" "2.0.15";
requires "Mayatomr" "2012.0m - 3.9.1.47 ";
requires "RenderMan_for_Maya" "1.0";
requires "cryPoseReaderPlugin.py" "1.0";
requires "dnRex" "1.73.4";
requires "redshift4maya" "2.5.40";
requires "dnTools" "1.6.5";
requires "elastikSolver" "0.991";
requires "finalRender" "1.0";
requires "rpmaya" "2.0";
requires "ftb_displayNode.py" "Unknown";
requires "mayatools" "3.00";
requires "polyVertexInfoConstraint" "8.0";
requires "sk_rayShooter" "0.1";
requires "saveNode" "8.5";
requires "vrayformaya" "2.20.01";
requires "shaveNode" "1.1";
requires "transformPoses" "1.0";
requires "vrayformaya2008" "1.0";
requires "wobble2015-x64" "1.0";
currentUnit -l centimeter -a degree -t pal;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201710312130-1018716";
fileInfo "osv" "Microsoft Windows 8 , 64-bit  (Build 9200)\n";
createNode animCurveTL -n "CURVE1";
	rename -uid "27098847-440C-620B-DF98-1DAC1F1A8640";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE2";
	rename -uid "0022B92C-4CFD-DFC3-51A3-17992D395D58";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE3";
	rename -uid "B51210AF-465C-AC03-DDA9-A797E4A8F1C8";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE4";
	rename -uid "1FD4DD2C-467F-8450-440A-C19FE48D15DD";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000011 20 1.0000000000000011
		 23 1.0000000000000011 78 1.0000000000000011 81 1.0000000000000011 86 1.0000000000000011;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE5";
	rename -uid "DBD0652C-424A-EB31-381B-7690145B08CE";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE6";
	rename -uid "4B13B1FC-430B-ABF3-4F7F-79B910648901";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE7";
	rename -uid "1DD61154-44D3-05E7-97AF-59871EB7B190";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE8";
	rename -uid "DDF70A8C-43C7-8A59-3688-848EDD6B2FDF";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE9";
	rename -uid "E1ABA395-4C1D-C7F1-B093-33A862E975D5";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE11";
	rename -uid "CA8A4EE0-416A-ABB8-A3B7-5388D739E530";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE12";
	rename -uid "608DCB23-48A3-349D-B5C1-52A91F709CC7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE13";
	rename -uid "49FB0207-4F64-301A-1EE4-F385E8889FB5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE14";
	rename -uid "1DA2B557-4865-BA27-343F-6792509090C9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE15";
	rename -uid "4AE356C3-40B9-B666-0B30-E2BB3CC198F7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE16";
	rename -uid "ADCFECD7-43D6-2338-1060-0E94C4D2A6AF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[3:7]"  9 18 18 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 0 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE17";
	rename -uid "CA4D1498-4938-CBF5-F774-DAB44C96E696";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE18";
	rename -uid "A56360F1-4413-969F-8624-5982E4E6BD63";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE19";
	rename -uid "2A0A3F1B-4A13-2DCB-11F5-67BC000386E0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE20";
	rename -uid "72AD3F7B-4FF1-5C58-836B-349566CBEED3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE22";
	rename -uid "553E45FF-413F-960F-B7D5-A18E471C1317";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE23";
	rename -uid "7BC1D321-4877-D38E-F7A2-EFB03077E0E9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE24";
	rename -uid "0CB308FF-49A4-EBE7-900E-9997FCB074D8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE25";
	rename -uid "E2C38C26-480E-6E3E-141E-42AC4DA2775F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE26";
	rename -uid "3DF062C6-4FC4-9C4B-E42D-A19439F09D87";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE27";
	rename -uid "BF627758-474F-72F3-837B-789E839A1C0F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE28";
	rename -uid "2D67EA64-4F55-7E6D-8217-71B996530384";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE29";
	rename -uid "75F646FA-4B4B-BA29-BD64-8CBC38C90F25";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE30";
	rename -uid "5C3A49C4-4FB6-2D4E-BF3D-3F8939982F27";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE32";
	rename -uid "E1846E97-4654-BCD7-8C64-1F8140BA0954";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE33";
	rename -uid "5CEB8970-4B6B-E0E9-E24D-F382E56A306B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE34";
	rename -uid "8E9209DE-4D5E-FD3C-A929-23AFD8863A54";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE35";
	rename -uid "435FDEAC-4BCF-5A59-AAAB-CA85F048728C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE36";
	rename -uid "AC2C9641-46EF-916F-55CB-FEA18ACFFF8A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE37";
	rename -uid "FF93292D-4CA5-126F-F523-92881E59A797";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE38";
	rename -uid "5F59DD2A-4136-4D8D-695E-2FBDCE005680";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE39";
	rename -uid "FA0A8D05-4167-4BE9-27A6-339DD0F5C253";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE40";
	rename -uid "98FD7188-4213-82D0-BE4A-698601766DA8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -51.274468914866333 9 -51.274468914866333
		 17 -51.274468914866333 23 -51.274468914866333 73 -51.274468914866333 78 -51.274468914866333
		 81 -51.274468914866333 86 -51.274468914866333;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE42";
	rename -uid "D550DA62-41AC-51B0-0467-7D91A7899BF4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE43";
	rename -uid "F7CF10CA-4B00-AC13-25F9-0F8684B19002";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE44";
	rename -uid "CF18FD6B-4706-17E8-C26F-C4B6BF308C80";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE45";
	rename -uid "21BC7EFF-4773-7EC2-C71F-30AF28A9C505";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE46";
	rename -uid "867FC172-4F96-D424-0B2F-25B0D6156260";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE47";
	rename -uid "BBFF3B7F-46DD-D812-722E-A9BA5714618F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[3:7]"  9 18 18 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 0 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE48";
	rename -uid "60E865AE-4B97-FE99-51DE-CE8D949D4A5A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE49";
	rename -uid "961BA700-4377-7F4B-A2E3-60894F80C833";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE50";
	rename -uid "808CF554-4D44-574D-05F9-CF8635840BB6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE51";
	rename -uid "DA400739-45C4-187B-A017-CE8F18F3A566";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE53";
	rename -uid "0CEB1C9B-4F2D-0BFD-18F3-7D833B60666D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE54";
	rename -uid "36A8A16B-496A-2434-1D13-6D8150511910";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE55";
	rename -uid "17E132FE-470D-21D7-6BD8-99909839759A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.173 9 -0.173 16 -0.11245 23 -0.11245
		 73 -0.11245 79 -0.11245 81 -0.11245 86 -0.11245;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE56";
	rename -uid "D5608E01-458A-A987-28A0-A48C420056A3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE57";
	rename -uid "D6D199DC-46EE-F5D0-F976-FC8D3E57B55F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE58";
	rename -uid "4BFC56E8-4242-C0AE-2284-8F9FB598F171";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE59";
	rename -uid "2F479282-4452-5955-F138-169188BCD75B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE60";
	rename -uid "EB8BCCDD-41B0-1F3C-A8B7-E09B3BDCB60C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE61";
	rename -uid "9390D533-496E-2322-BCC7-8EB89E772C29";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE63";
	rename -uid "14098C07-44EB-137F-FC0D-F6BC0EB83656";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE64";
	rename -uid "0BCFC1FC-4465-C95D-6CDA-7096FFA19CBA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE65";
	rename -uid "7D5D55DF-489A-0F90-F823-CEAA8B9B1F4E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE66";
	rename -uid "36B2288A-42F3-9526-4730-6CBD88A65701";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE67";
	rename -uid "3F0AC600-4057-8EBD-3CA7-70A6EC191198";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE68";
	rename -uid "EF17C178-45DA-E5B7-1ECF-0D9E698DA5B7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE69";
	rename -uid "F254F8CD-465B-3CF2-EF24-99BFA598F461";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 9.848361730263516 9 9.848361730263516
		 17 9.848361730263516 23 9.848361730263516 73 9.848361730263516 78 9.848361730263516
		 81 9.848361730263516 86 9.848361730263516;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE70";
	rename -uid "C0FDF2AE-4D24-6C5B-F09A-46932A0E7C51";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE71";
	rename -uid "823C516F-4635-FE87-33E6-3EA16F16DF01";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE73";
	rename -uid "8B8A10F5-4351-E286-9F69-369415A11922";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE74";
	rename -uid "0488F2C3-47F4-DA89-3B25-C68678E55EF1";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE75";
	rename -uid "3B0F606F-44D4-C5EE-8405-459E3E16890D";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE76";
	rename -uid "1D8553C0-46E7-3F17-E82F-FEA024E692E2";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE77";
	rename -uid "C5ECF1F7-4150-FCC0-FD6A-A286F47DF10A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE78";
	rename -uid "A07F9028-4743-E867-D50F-448AD217AD69";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE79";
	rename -uid "35444FE2-44E3-DE29-8447-29993B1A0775";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE80";
	rename -uid "14637AFD-40A2-045C-6064-36BD3C4EF21B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE81";
	rename -uid "EC18AEAD-45B9-2329-5AF5-C6B7B55E63E6";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE83";
	rename -uid "B9703274-4878-6D89-535D-E386BBAD1086";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE84";
	rename -uid "9BB74F67-4101-9153-AC06-C19D5E44D880";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE85";
	rename -uid "17D69816-4E47-6E65-3275-BDBAC1803CCD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE86";
	rename -uid "426B4199-4E4E-3F87-9D60-EAAC59A1612F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE87";
	rename -uid "2C0FCBC5-4B1B-716D-211C-068537E76E05";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE88";
	rename -uid "27F323FB-4FD3-CCC4-0961-F29AB936D286";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE90";
	rename -uid "85A53869-48D9-476F-623B-EAA0E9447DBE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE91";
	rename -uid "48E41FE2-46E6-3CD9-00EC-CB9CBCF9A213";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE92";
	rename -uid "DBF5BA55-417B-F5AE-6574-8D82313F703E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE93";
	rename -uid "DC2FEB18-4120-E373-2E58-9AA6A1EC55DF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE94";
	rename -uid "DF5EBFC4-4C8E-0E56-9038-21943502F223";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE95";
	rename -uid "96BCD219-47CA-2AA0-0071-BF89A64701B3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE97";
	rename -uid "12CC7CF9-4D8D-57F4-1638-EFB8CEB4D55E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE98";
	rename -uid "F8F420F5-4597-8A42-F979-F9ABFA5BE07C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE99";
	rename -uid "6484A092-4EC1-40FE-E46B-A9BF1ED79107";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE100";
	rename -uid "F4DEA3F8-4B2B-A93E-6666-DAB0BDF1818C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE101";
	rename -uid "45C17B38-4981-0769-8BAC-89A68720F2BF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE102";
	rename -uid "2849AEED-4A37-2B6B-082F-A19F53E1AC96";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE103";
	rename -uid "959496F3-4C50-5DF3-D245-32A4165C4C3A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE104";
	rename -uid "18247821-449D-7632-C2FC-14AEB7E97C55";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE105";
	rename -uid "60FCCAD4-4E0C-775C-310C-12B45DC159F5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE107";
	rename -uid "5D6F8BD2-44CE-0985-FEC9-57A4CCCFC828";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE108";
	rename -uid "D31A06A0-4D8A-E380-092F-0C9BD664EA4C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -87.517998864544111 9 -87.517998864544111
		 17 -87.517998864544111 23 -87.533497117468499 73 -87.954002908502034 78 -77.986414629980843
		 81 -77.201467053047352 86 -77.201467053047352;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 -0.0067623885459389133 0 0.041099759019122217 
		0 0;
createNode animCurveTA -n "CURVE109";
	rename -uid "0754ECD1-4465-AE3F-AC05-F5B22B3991DD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE111";
	rename -uid "9EDBCB39-45D0-22B0-E6B2-369E726B305D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE112";
	rename -uid "7E7E4646-4270-4F1E-EFFE-3888659561B3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE113";
	rename -uid "468D9370-4320-4843-AD37-1D82484F43ED";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE114";
	rename -uid "578A42F8-41C6-33A9-F922-D998ABFDF5DD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE115";
	rename -uid "EAD9E610-4AF3-D097-FA22-17B6E5D29789";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 5 9 5 17 5 23 5 73 5 78 5 81 5 86 5;
	setAttr -s 8 ".kit[3:7]"  9 18 9 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 5 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 0 0.20000000000000018 
		0 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE117";
	rename -uid "52C710AB-4E0C-9B44-55A9-0CA39CE3D9B7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 13.416838052560138 9 13.416838052560138
		 17 36.495718978976754 23 36.495718978976754 73 36.495718978976754 78 1.8115099496194598
		 81 -0.91987151144230506 86 -0.91987151144230506;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 -0.14301479887038326 0 0;
createNode animCurveTA -n "CURVE118";
	rename -uid "D4EB53E3-4FA3-9FF2-0CB7-B1BF615FFDDD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -3.8246201092793832 9 -3.8246201092793832
		 17 -0.93729891083615524 23 -0.93729891083615524 73 -0.93729891083615524 78 -0.45571718441276771
		 81 -0.41779262345692769 86 -0.41779262345692769;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0.0019857253681580872 0 0;
createNode animCurveTU -n "CURVE119";
	rename -uid "F1D09C4F-49EC-3217-2370-9EBECE75FCA2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE120";
	rename -uid "7CCCEE29-4269-82FA-E924-29B0CBF2823C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE121";
	rename -uid "4EC5B98D-4C3D-E84F-624C-01ABB97ED234";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -77.771712850018659 9 -77.771712850018659
		 17 -71.932258507695167 23 -71.932258507695167 73 -71.932258507695167 78 -75.093449823598888
		 81 -75.342393639726296 86 -75.342393639726296;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 -0.013034667731707916 0 0;
createNode animCurveTU -n "CURVE122";
	rename -uid "A6436512-4B4D-CA15-4B38-71B0C5B8CD2A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE123";
	rename -uid "725433F4-48FB-88E6-8708-E4A90B8DCF65";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 3 23 3 78 3 81 3 86 3;
	setAttr -s 5 ".kit[0:4]"  18 9 9 1 18;
	setAttr -s 5 ".kot[1:4]"  1 5 5 18;
	setAttr -s 5 ".kix[3:4]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  0 0 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "CURVE125";
	rename -uid "C2496F7B-4A30-9584-4446-3DA4FDB6F8BC";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE126";
	rename -uid "AAFBA5D9-47E9-93C9-A8D9-C4B64E0EA739";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE127";
	rename -uid "61F04829-45DB-90F1-F37F-0486A897013A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE128";
	rename -uid "62983A02-41B4-F53E-3899-FCB8CF2CBCFD";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE129";
	rename -uid "B2B2C34B-4708-E71E-AC68-059D78DA44A2";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE130";
	rename -uid "57B39E9C-4681-7137-4DE7-1391B869F777";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000004 20 1.0000000000000004
		 23 1.0000000000000004 78 1.0000000000000004 81 1.0000000000000004 86 1.0000000000000004;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE131";
	rename -uid "14FC6BB8-4A9F-5C31-B7C8-5CB23FED2E73";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE132";
	rename -uid "FD42B5E4-4A10-5DDA-635D-6BABFE8D429B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE133";
	rename -uid "2738255B-4A57-B3BF-78E9-E38CB7E0D37A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE135";
	rename -uid "CC2971E5-49AC-13C9-106E-5E801782DE85";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE136";
	rename -uid "1B69D19A-46F4-8A3A-6DF5-4E9399205542";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.30953300604922818 9 0.30953300604922818
		 16 0.33612528433350197 23 0.33612528433350197 73 0.33612528433350197 79 0.33612528433350197
		 81 0.33612528433350197 86 0.33612528433350197;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE137";
	rename -uid "B3031C2F-421D-6F68-2381-9F8EFD831D4C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 -0.0088005453263972928 23 -0.0088005453263972928
		 73 -0.0088005453263972928 79 -0.0088005453263972928 81 -0.0088005453263972928 86 -0.0088005453263972928;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE138";
	rename -uid "B4274014-44E0-2D2F-5060-7EBAD67C36C7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE139";
	rename -uid "0A3E75CD-4B2F-BAC9-95D5-3698D3EA7452";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE140";
	rename -uid "14CF7CEF-4117-33AD-B81E-28897B194C22";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE141";
	rename -uid "BF681D1C-4FCB-5CFF-108B-5D8ACC6968AC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -5.0419375379391518 9 -5.0419375379391518
		 16 -6.1173172362751096 23 -6.1173172362751096 73 -6.1173172362751096 79 -6.1173172362751096
		 81 -6.1173172362751096 86 -6.1173172362751096;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE142";
	rename -uid "CDD0FE8F-48E9-372D-7F3F-389ECEABBE2C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE143";
	rename -uid "A386F33F-4468-1655-681A-69B845366007";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE145";
	rename -uid "935C98F7-4CA8-56F5-6546-38810E77AA0A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 20.633094439708053 9 20.633094439708053
		 17 4.2936740667385287 23 4.2936740667385287 73 4.2936740667385287 78 19.422767004673322
		 81 20.614183073535635 86 20.614183073535635;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0.062382399488444595 0 0;
createNode animCurveTA -n "CURVE146";
	rename -uid "AAD0B1EF-45D3-CFE9-96B0-08BEF96AD470";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 16.325737106424743 9 16.325737106424743
		 17 18.677619872115542 23 18.677619872115542 73 18.677619872115542 78 16.499950644624054
		 81 16.328459192959109 86 16.328459192959109;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 -0.0089792714117339911 0 0;
createNode animCurveTU -n "CURVE147";
	rename -uid "7794AA3E-4C93-5AB2-24B4-A486EAF3C798";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE148";
	rename -uid "9BF0A2C7-48B6-3831-8394-A7ABDB251D60";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE149";
	rename -uid "513F636F-4739-6A36-CFC5-CBB9B89506F6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -62.649676887011992 9 -62.649676887011992
		 17 -66.281123024551064 23 -66.281123024551064 73 -66.281123024551064 78 -62.918672897200061
		 81 -62.653879949671179 86 -62.653879949671179;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0.013864526311318626 0 0;
createNode animCurveTU -n "CURVE150";
	rename -uid "3F122CC4-4BA9-C931-9D06-969E3E792540";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE151";
	rename -uid "CD4D5F6F-4CD8-B200-FA9A-91AE32D908D6";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 3 23 3 78 3 81 3 86 3;
	setAttr -s 5 ".kit[0:4]"  18 9 9 1 18;
	setAttr -s 5 ".kot[1:4]"  1 5 5 18;
	setAttr -s 5 ".kix[3:4]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  0 0 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "CURVE153";
	rename -uid "27DEC604-4E27-729D-416B-E78C391E4005";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.011940580721126637 9 -0.011940580721126637
		 16 0.21397562769988102 23 0.21397562769988102 73 0.21397562769988102 79 0.21397562769988102
		 81 0.21397562769988102 86 0.21397562769988102;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE154";
	rename -uid "B0C08E21-4C8F-5BBC-F251-819508DD6C2A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE155";
	rename -uid "A394EC91-4125-815C-1EB2-FA8CEE062B8E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE156";
	rename -uid "741EBFDB-41E4-AA42-F36D-09A3F5E9B83D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE157";
	rename -uid "9CB300C7-402F-CC37-B891-DC8AC26CABB9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE158";
	rename -uid "D3D35A42-4ECF-99D2-4385-03B85038AAE8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE159";
	rename -uid "7D5D789A-48E2-2DCF-2854-E5878A7ED150";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE160";
	rename -uid "40E6EFF5-48B7-978E-4484-EB9D9050AEDD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE161";
	rename -uid "5FD8E6F9-499B-14AD-BE3B-609CA792430B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE162";
	rename -uid "8F47B474-4915-0A3E-1D0C-1DB868D3AFD8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE164";
	rename -uid "C2F5D929-4D9B-58AA-DE18-EFB90AE6E9FB";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE165";
	rename -uid "B6754535-41E7-1152-73EB-5AA73C0B9AA3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE166";
	rename -uid "3719EB30-4E69-D4E2-E31F-75B9FC4C9986";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE167";
	rename -uid "3F57B8BD-471E-53A4-8BF4-EA9FD46A6DF4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE168";
	rename -uid "685E0B7F-463B-01A6-66B4-F0B54014096D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE169";
	rename -uid "063EAABD-452D-5B55-6A16-68995D1FD745";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[3:7]"  9 18 18 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 0 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE170";
	rename -uid "24C01841-49A6-6692-B154-86839D381CF1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE171";
	rename -uid "A15ED27F-49E7-93E3-F888-5FB8F8A2B58C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE172";
	rename -uid "5D084648-46AC-093C-6106-57BB757916FA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE173";
	rename -uid "8B338247-4395-8F93-2193-DD8A89D42741";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE175";
	rename -uid "503DFDF2-4356-E5EA-F905-F2AC02CF7BE8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE176";
	rename -uid "FDCC34F9-47AB-C506-56DF-EA8DC799BE90";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.34593678146637813 9 -0.34593678146637813
		 16 -0.22485890795314578 23 -0.22485890795314578 73 -0.22485890795314578 79 -0.22485890795314578
		 81 -0.22485890795314578 86 -0.22485890795314578;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE177";
	rename -uid "3D6D9BF8-42D2-5973-07E7-C293917F1E19";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE178";
	rename -uid "9FBBB456-47FE-2CA7-6366-AC82A9A46AC1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE179";
	rename -uid "E7850A73-48C3-466C-2DB1-438FD721D14F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE180";
	rename -uid "D629F7AB-4DEB-CD84-863C-8AA7DB27CDD8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE182";
	rename -uid "B25B98C0-4776-4C5C-F9F8-4BBD4F99E5DD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE183";
	rename -uid "2A51D774-49BD-9770-0C8E-D99AC018A701";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE184";
	rename -uid "8373FDF4-4EA1-1EAE-8C0B-2081733F4E54";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE185";
	rename -uid "6ABC0573-4177-5663-5E49-50B3448733F2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE186";
	rename -uid "CBE9FD8F-4185-9C8F-3473-0293F1635278";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE187";
	rename -uid "9E4750EC-4B6D-C078-F8A2-B6ABB4A821D7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE188";
	rename -uid "ABDB4D24-4336-6891-343F-6283A2A6D4E0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE189";
	rename -uid "147E1F2B-42FF-75A2-9531-2FA65E7BF107";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE190";
	rename -uid "03B8C9FD-4CA0-1473-2B2B-30ABB0BE040F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -28.307990878867987 9 -28.307990878867987
		 17 -28.307990878867987 23 -28.307990878867987 73 -28.307990878867987 78 -28.307990878867987
		 81 -28.307990878867987 86 -28.307990878867987;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE192";
	rename -uid "F2F2785B-4FFB-1D39-FBCD-01878A49DD58";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE193";
	rename -uid "3D6C1E0A-4E0F-CBEC-060C-B8B826A19DC6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE194";
	rename -uid "1EAEE590-47E5-0075-BDDB-E1A0A351B078";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE195";
	rename -uid "FAAC16F7-4ECC-CB00-8B8F-B2A2236AA051";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE196";
	rename -uid "357E0239-41B9-3484-99DC-CFB83348C2C6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE197";
	rename -uid "34C7F370-4BDE-8112-8C6E-8594CC543483";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE198";
	rename -uid "5DF7C105-44FE-B4EE-3A67-4BB5B181457E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE199";
	rename -uid "1246EB82-4D65-3F88-1A6C-CCA664B63B9E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE200";
	rename -uid "DE682E4F-4BCC-75B4-3B5A-4893F80C23B9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -50.148109836393218 9 -50.148109836393218
		 17 -50.148109836393218 23 -50.148109836393218 73 -50.148109836393218 78 -50.148109836393218
		 81 -50.148109836393218 86 -50.148109836393218;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE202";
	rename -uid "C31BA30B-4BC9-1A0B-B52D-579A53E4C007";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE203";
	rename -uid "67B970CC-4881-F2CD-789A-B49F1DF01D1A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE204";
	rename -uid "C6DC73A7-4658-780B-2976-B385C40AC5A8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE205";
	rename -uid "E6266554-4700-2292-F027-32B210828C05";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE206";
	rename -uid "8892E4B0-49BB-18EF-3D3A-B78FA1CE8997";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE207";
	rename -uid "1F89A5C6-4EAB-EE0F-DF22-2C8251166567";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[3:7]"  9 18 9 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 5 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 0 0.20000000000000018 
		0 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE208";
	rename -uid "FE4FFEDE-4424-B2BF-38AC-74A8DC6123D4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE209";
	rename -uid "6959DA8D-41C5-759C-2848-85A66F7AD6AF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 12.258030605231331 9 12.258030605231331
		 17 12.258030605231331 23 12.258030605231331 73 12.258030605231331 78 12.258030605231331
		 81 12.258030605231331 86 12.258030605231331;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE210";
	rename -uid "8B231C5A-4166-9DDF-0738-FDAF69616834";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -19.801969869988675 9 -19.801969869988675
		 17 -19.801969869988675 23 -19.801969869988675 73 -19.801969869988675 78 -19.801969869988675
		 81 -19.801969869988675 86 -19.801969869988675;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE211";
	rename -uid "76764116-4BD1-3BD2-303C-4C8E0A3BD123";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE213";
	rename -uid "26A0D7CA-4924-9E3E-2A01-FEB7E5032CA2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE214";
	rename -uid "18362BCB-41A9-FF8C-07E6-F5AC3214B62C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE215";
	rename -uid "68007660-4602-AC3D-EC1D-60ABB6133AD1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE216";
	rename -uid "EFF41834-492A-E340-DB41-388145BEF6C1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE217";
	rename -uid "C8F0C705-45DB-5331-1D23-DAA1D8474C38";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE218";
	rename -uid "6390FCA7-4940-892F-D096-BBBAE5C639C7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE219";
	rename -uid "85CFD8AA-460B-7898-115C-C6AE405E2363";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE220";
	rename -uid "96836F76-434F-064C-B1DB-048E55ADDF69";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE221";
	rename -uid "7CEBE287-49F1-7D55-8133-24B7385E9890";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE222";
	rename -uid "85170C80-4D53-346C-60CF-CE852B32FC25";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE224";
	rename -uid "CD8118A2-46F9-618F-55ED-2EA57E5AB26C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE225";
	rename -uid "968FCA09-43BB-F484-9690-4695A07D0E11";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE226";
	rename -uid "B0BB7B6E-4B08-32B2-9B56-94BBDBEC7A56";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE227";
	rename -uid "7D2F11CF-4CE9-B09B-D141-41A73EA41D1E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE228";
	rename -uid "5A527E83-4373-6AD6-6285-1B9952DF4C40";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE229";
	rename -uid "33EF0ED5-4A18-96CA-92C5-D689FA5B0E5C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[3:7]"  9 18 9 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 5 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 0 0.20000000000000018 
		0 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE230";
	rename -uid "48F6DCFA-410A-A589-EA44-11B67C122403";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 19.472320235532845 9 19.472320235532845
		 17 19.472320235532845 23 19.472320235532845 73 19.472320235532845 78 19.472320235532845
		 81 19.472320235532845 86 19.472320235532845;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE231";
	rename -uid "D1C99E56-4D7D-1659-8E9C-3FB23D93F1E1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE232";
	rename -uid "1E9EE01A-45DD-5381-461D-F591884898F6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 9.85710746189792 9 9.85710746189792 17 9.85710746189792
		 23 9.85710746189792 73 9.85710746189792 78 9.85710746189792 81 9.85710746189792 86 9.85710746189792;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE233";
	rename -uid "F70E5728-4A2D-365C-7D39-519726745036";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE235";
	rename -uid "3623B495-484F-0BE8-557F-F982A67FFCB2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE236";
	rename -uid "B0316610-4A1B-BD5C-EEC4-E1BCE3AA44A3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0.084001705809337648 23 0.084001705809337648
		 73 0.084001705809337648 79 0.084001705809337648 81 0.084001705809337648 86 0.084001705809337648;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE237";
	rename -uid "E29469D6-4DA8-A6B0-FAA2-DD83E9332FCD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE238";
	rename -uid "FDAFAAE4-4E9F-8F1D-B01E-92B6F0D2B0B6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE239";
	rename -uid "5F0E8AD1-48B0-E3EF-46E3-A19AC8741BE6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE240";
	rename -uid "EB104A50-487D-C29B-6EA3-0DB5122A9038";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE242";
	rename -uid "BCB3C19A-46F8-5739-176B-899779611EAF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE243";
	rename -uid "81AD668F-4155-80CA-752E-57B5F1B0D48F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE244";
	rename -uid "46085C58-46FF-4FA3-6C11-7FB770B9D71D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE245";
	rename -uid "F7245B11-4FC3-D68B-BE90-C68EA507B348";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE246";
	rename -uid "70818FAF-45BB-31B0-8A98-53B84BB63817";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE247";
	rename -uid "FFE34CCF-45C2-0395-8896-6A887757A310";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE248";
	rename -uid "FCCE97C6-4EA4-9902-112C-00A98DF6913D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE249";
	rename -uid "18E105EE-40F3-3360-4D4A-63B8C247ED78";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE250";
	rename -uid "09472E5D-4744-0334-BDFD-AFBCA9CCC248";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE252";
	rename -uid "096518AA-4D76-A85E-B430-1C9C49881F72";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE253";
	rename -uid "5FD998D9-4161-3350-4380-15AE4790D748";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE254";
	rename -uid "F358A687-4757-A70D-0E84-4EB1E486AA04";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE255";
	rename -uid "1629D729-4E13-0081-807C-F98BFD7177CB";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE256";
	rename -uid "F6DC6EA2-4431-34BD-A706-E4AB5F7D234E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE257";
	rename -uid "861E9282-4815-2EBC-27FE-5394486E174F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -6.0970303580523089 9 -6.0970303580523089
		 16 -3.9630697327340014 23 -3.9630697327340014 73 -3.9630697327340014 79 -3.9630697327340014
		 81 -3.9630697327340014 86 -3.9630697327340014;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE258";
	rename -uid "7F17B4A7-49D4-464A-94CA-D08126084BBA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.05 9 0.05 16 0.0325 23 0.0325 73 0.0325
		 79 0.0325 81 0.0325 86 0.0325;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE259";
	rename -uid "CE6540A3-4E65-7B78-1C77-ADA90755D275";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE260";
	rename -uid "2296C6FE-4E11-3666-849D-D68438A86C9C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE262";
	rename -uid "17BC777F-44C7-E427-8353-508D72F01ECC";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE263";
	rename -uid "D4ADFE3D-41A9-F33B-59E5-09B4356A7DE5";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE264";
	rename -uid "D4577431-448E-71B9-124B-FB829B539A52";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE265";
	rename -uid "1F70000C-45ED-3D10-42C5-B48F4B2D91D8";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE266";
	rename -uid "6B8F0106-4BEF-8707-923E-70A35E320A42";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE267";
	rename -uid "CA32675E-48BD-5F6D-01E2-DF870C24EA94";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000004 20 1.0000000000000004
		 23 1.0000000000000004 78 1.0000000000000004 81 1.0000000000000004 86 1.0000000000000004;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE268";
	rename -uid "D1F2F4AB-41B9-9208-67B7-E695FAE9B2AA";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE269";
	rename -uid "B2BC5EE8-41C7-7D26-317B-8C9F67B1592F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE270";
	rename -uid "B5D3823B-495F-CC95-CEEF-E2B89050013B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE272";
	rename -uid "5DF66E65-45BA-48CA-A3E4-C684DAFE9500";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.0020849640602357985 9 0.0020849640602357985
		 16 -0.032975523012284888 23 -0.032975523012284888 73 -0.032975523012284888 79 -0.032975523012284888
		 81 -0.032975523012284888 86 -0.032975523012284888;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE273";
	rename -uid "E32A2EA3-4633-4B52-A006-EA9A9D13CCC7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE274";
	rename -uid "8387AFC7-4676-6827-5C04-719675EB978B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE275";
	rename -uid "7B4D6D33-46B6-BB44-2D33-89ADE5C6A8BE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE276";
	rename -uid "02EFC104-43CF-6779-3A4B-6E96DC27E25C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE277";
	rename -uid "36C78081-491D-2EA7-E1A0-F1967745DC4A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE278";
	rename -uid "F668E51E-4853-51E7-E320-94BC680BED00";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE279";
	rename -uid "B97DF923-4914-40B4-DA23-8894474A75AA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE280";
	rename -uid "FEC2D9E8-4738-8B95-CC1B-819B98B5C503";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE281";
	rename -uid "6B38E060-4B97-022B-D284-1DA83C86A090";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE283";
	rename -uid "F39EF514-4A5D-BDBB-6331-BBBFD1E4CA52";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 -25.6908051587681 9 -25.6908051587681
		 12 -3.2274458771214638 15 -46.928891471041112 18 -41.835591423658578 23 -40.49696836478239
		 73 -40.464523877689203 78 1.137071985038508 81 -3.020916372468688 86 -13.158564617685409;
createNode animCurveTL -n "CURVE284";
	rename -uid "438EE239-42AB-62D4-3B44-C8ABE0B9A7B5";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 -7.9732791746174199 9 -7.9732791746174199
		 12 -8.6023064498897224 15 -9.3444888753158004 18 -9.6706732994821714 23 -9.9985106588097921
		 73 -10.002187339852153 78 -6.6247619152904056 81 -6.3073929383567648 86 -6.321593514447299;
createNode animCurveTL -n "CURVE285";
	rename -uid "114261D9-4729-8B29-37C0-6C962FC1F0D5";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 -5.440339409970278 9 -5.440339409970278
		 12 -6.1100946014330244 15 -7.0492048015955611 18 -7.2310133701337858 23 -7.3621624216451806
		 73 -7.3622969626021977 78 -6.4540457725863227 81 -5.9023149193978313 86 -4.9833296780477099;
createNode animCurveTL -n "CURVE286";
	rename -uid "BFDCDEDD-404D-714B-E7C4-C7BD30021D80";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 13.882916632948048 9 13.882916632948048
		 12 13.47711405710821 15 12.678552677495652 18 12.550352303708273 23 12.636501281063456
		 73 12.63838040486297 78 11.684951245028826 81 11.227777780568429 86 11.064658290541306;
createNode animCurveTU -n "CURVE287";
	rename -uid "4FFE8E84-449B-3FCC-6A4C-4581D1282AD4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE288";
	rename -uid "DBC530F8-4DFF-FBC5-175A-458E4517D900";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 100 86 100;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE289";
	rename -uid "E64CE7C5-404A-C622-76EB-C1BA8DB97805";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE290";
	rename -uid "EFAA8E05-48D1-E951-029F-14A798F3E59E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE291";
	rename -uid "EDB5FF2C-4898-00C9-D294-F7AF01F97A50";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "CURVE292";
	rename -uid "54839E80-4647-5350-6273-A498181423C1";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 1.8912164023739939 9 1.8912164023739939
		 12 -15.9470015471181 15 34.19645548491043 18 32.072614769752519 23 29.404537626202597
		 73 29.376273260042304 78 -1.5260301689230376 81 3.9163743309256049 86 12.820609803436671;
createNode animCurveTU -n "CURVE293";
	rename -uid "4F8CD144-4D7D-6EC8-76DD-A49AC0E7ADF4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "CURVE294";
	rename -uid "4F99CA55-474A-03DF-5154-4FB2A81E7F8E";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 -82.56397298054587 9 -82.56397298054587
		 12 -95.344844378160062 15 -118.97780458815571 18 -127.10605144752238 23 -129.85766266427939
		 73 -129.89422478019705 78 -65.448104671066844 81 -59.663097896702432 86 -59.026274036602196;
createNode animCurveTU -n "CURVE295";
	rename -uid "1D6720EF-4405-215C-A853-FF9FDE4AC515";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 86 1;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  1 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "CURVE297";
	rename -uid "9B0E7946-4B1D-722D-7BA5-3B81598041F4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE298";
	rename -uid "8CA0368D-4953-81D9-C20E-39846CD82F0D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE299";
	rename -uid "58BF722C-49E8-5180-96A6-4D815522B031";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE300";
	rename -uid "27D077EE-4E66-D44F-C024-BC860EC3CA7E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE301";
	rename -uid "B0F7E55F-4F31-F0CC-D58A-3CA4865A0904";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE302";
	rename -uid "E1938C72-4377-EF7C-B81D-F5806E4A1A49";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE303";
	rename -uid "DD65731E-4F30-4914-8D21-B7AFA7692EF1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE304";
	rename -uid "0DD41215-4933-01B8-3E3F-42B63CA3841E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE305";
	rename -uid "30F18047-433B-DB2F-E25D-77AEC08A6E3E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -21.583916139110219 9 -21.583916139110219
		 17 -21.583916139110219 23 -21.583916139110219 73 -21.583916139110219 78 -21.583916139110219
		 81 -21.583916139110219 86 -21.583916139110219;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE307";
	rename -uid "4B405D7E-49A6-E935-B50E-779F9CECC069";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE308";
	rename -uid "414B7297-425C-542A-F769-94A4ACA72D3D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.097517083487630996 9 0.097517083487630996
		 16 0.28934301119779987 23 0.28934301119779987 73 0.28934301119779987 79 0.28934301119779987
		 81 0.28934301119779987 86 0.28934301119779987;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE309";
	rename -uid "907D5EEB-4458-FCDB-AB08-05807771D357";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE310";
	rename -uid "60CECD46-460E-9FBF-144D-699E20769608";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE311";
	rename -uid "2AAB4C9E-4829-A926-C0BC-D58A394F30C3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE312";
	rename -uid "CE6304B7-4755-6AF6-AD17-B2BD4044B905";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE313";
	rename -uid "DD71A7C1-4CE2-93BF-A3C2-C5B6E51EF717";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE314";
	rename -uid "BE159085-4BD1-70F1-C619-E3A74F1C2E79";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -16.690388231276536 9 -16.690388231276536
		 16 -10.848752350329748 23 -10.848752350329748 73 -10.848752350329748 79 -10.848752350329748
		 81 -10.848752350329748 86 -10.848752350329748;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE316";
	rename -uid "DE360E55-4E67-8D47-CBD8-A4A0205049A9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE317";
	rename -uid "7CE137F7-4A89-553E-5808-DFBAE2E6A16F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE318";
	rename -uid "83DC0AD5-4BCA-2091-3764-4481F501F4A1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE319";
	rename -uid "5A2FF970-4C15-F5AC-D445-27B649FB92C5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE320";
	rename -uid "101B10A6-45C4-1980-9B6A-3FA8581E481B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE321";
	rename -uid "B20B9DDC-40CD-0396-1BC0-9192EBC1781D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE322";
	rename -uid "2CBE79E6-4699-82BC-53E8-B088F4C267F4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE323";
	rename -uid "8D89F222-4760-053D-1041-E0938B1BB8DE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE324";
	rename -uid "2246C1B3-4E42-2B2A-ECDE-CD9E5FAD721B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -25.714531404249186 9 -25.714531404249186
		 17 -25.714531404249186 23 -25.714531404249186 73 -25.714531404249186 78 -25.714531404249186
		 81 -25.714531404249186 86 -25.714531404249186;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE326";
	rename -uid "725CC658-43B6-E117-E4EA-B1A319088A38";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -4.7822582194461773 9 -4.7822582194461773
		 17 -4.7822582194461773 23 -4.7822582194461773 73 -4.7822582194461773 79 -4.7822582194461773
		 81 -4.7822582194461773 86 -4.7822582194461773;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE327";
	rename -uid "214E2D7E-4F04-17ED-F6E0-8C964C8FE18E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE328";
	rename -uid "4D2EED6F-485D-A862-02E3-E79A6C037773";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE329";
	rename -uid "65DA92AD-4262-BB49-82CB-8AA31A9821DC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE331";
	rename -uid "852A9E51-4DF2-2B05-5C67-E69F8A8D63FD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE332";
	rename -uid "91477F3D-4CBF-7D23-6E54-6D865F587245";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE333";
	rename -uid "BBD7051D-48CB-92EB-69AE-3FABF3C72554";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE334";
	rename -uid "55BAE110-43BF-327E-F1CA-19A18DEE0DE5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE335";
	rename -uid "F7CA4CC0-466F-1813-13F9-77812C54ECD2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE336";
	rename -uid "140F4927-4943-BC19-57BF-42A24D6A0335";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE337";
	rename -uid "F6CCD6FA-4699-31C4-91EB-609054DD1EE4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -8.8481793047651784 9 -8.8481793047651784
		 17 -8.8481793047651784 23 -8.8481793047651784 73 -8.8481793047651784 78 -8.8481793047651784
		 81 -8.8481793047651784 86 -8.8481793047651784;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE338";
	rename -uid "EA449311-4556-57B3-4E07-26BA7EF7E226";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -5.4980414277075607 9 -5.4980414277075607
		 17 -5.4980414277075607 23 -5.4980414277075607 73 -5.4980414277075607 78 -5.4980414277075607
		 81 -5.4980414277075607 86 -5.4980414277075607;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE339";
	rename -uid "5D718FEB-4C71-E008-103C-35AE2E1F0A17";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -4.3849589218587193 9 -4.3849589218587193
		 17 -4.3849589218587193 23 -4.3849589218587193 73 -4.3849589218587193 78 -4.3849589218587193
		 81 -4.3849589218587193 86 -4.3849589218587193;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE341";
	rename -uid "74E2239F-45CF-577D-2BB4-728BAB1B6DD3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE342";
	rename -uid "161AD730-48A0-CFD3-B666-4AADC4564956";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE343";
	rename -uid "B98F5655-47C8-1A44-3AED-B4B812AA310A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE344";
	rename -uid "95F36862-48F2-F55C-8541-FD8A5F4B25BC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE345";
	rename -uid "F4A97264-4B62-1A54-C7CE-369966D89988";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE346";
	rename -uid "F1A8F30A-4865-C43B-D36D-14B16477626E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE347";
	rename -uid "E78D7A4A-421A-A65E-EEFD-B298024D4A33";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE348";
	rename -uid "2CB0DC72-472C-B9D8-335B-EEA4FF51337F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE349";
	rename -uid "84ADDA57-4303-8232-E0EC-4087A66AF224";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -22.7781197334862 9 -22.7781197334862
		 17 -22.7781197334862 23 -22.7781197334862 73 -22.7781197334862 78 -22.7781197334862
		 81 -22.7781197334862 86 -22.7781197334862;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE351";
	rename -uid "A7968EF6-4368-B82C-5464-54AEF8348FB4";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 9 0 16 0 18 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  5 1 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kix[8]"  0.20000000000000107;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[1:8]"  0.27999999999999936 0.07999999999999996 
		0.20000000000000007 2 0.20000000000000018 0.12000000000000011 0.19999999999999973 
		0.19999999999999973;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE352";
	rename -uid "33E511F5-42C3-63BC-15EA-ADA70EB639A8";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -0.001276832316184362 9 -0.001276832316184362
		 16 -0.001276832316184362 18 -0.001276832316184362 23 -0.001276832316184362 73 -0.001276832316184362
		 78 -0.001276832316184362 81 -0.001276832316184362 86 -0.001276832316184362;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  5 1 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kix[8]"  0.20000000000000107;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[1:8]"  0.27999999999999936 0.07999999999999996 
		0.20000000000000007 2 0.20000000000000018 0.12000000000000011 0.19999999999999973 
		0.19999999999999973;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE353";
	rename -uid "CED6073D-403D-4E93-7789-5C985D0D2CBE";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 9 0 16 0 18 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  5 1 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kix[8]"  0.20000000000000107;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[1:8]"  0.27999999999999936 0.07999999999999996 
		0.20000000000000007 2 0.20000000000000018 0.12000000000000011 0.19999999999999973 
		0.19999999999999973;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE354";
	rename -uid "6AB20399-417F-7619-0BED-21BD497FD8CE";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 0.01623182337909854 9 0.01623182337909854
		 16 0.69692119088968052 18 0.7542351109379104 19 0.78589105131203374 23 0.77836728780032338
		 73 0.77836728780032338 78 -0.0097337270035126218 81 -0.042545699992554677 86 -2.5125597253818088;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  5 1 18 18 18 18 18 18 
		18 18;
	setAttr -s 10 ".kix[9]"  0.20000000000000107;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[1:9]"  0.27999999999999936 0.07999999999999996 
		0.040000000000000036 0.16000000000000003 2 0.20000000000000018 0.12000000000000011 
		0.19999999999999973 0.19999999999999973;
	setAttr -s 10 ".koy[1:9]"  0 0.0028623527240986147 0.00051760566646995233 
		0 0 0 -0.0017180308882026876 -0.0028633848136711396 0;
createNode animCurveTA -n "CURVE355";
	rename -uid "8826B571-4747-6BBA-6AF5-A2993B8A2BC6";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 -3.2030406912452087 9 -3.2030406912452087
		 16 -11.717650324108748 18 -13.974910041520225 19 -15.204265375051415 23 -17.036449848640064
		 73 -17.036449848640064 78 -3.2488959840659821 81 -1.784714261054356 86 -1.9992770155854878;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  5 1 18 18 18 18 18 18 
		18 18;
	setAttr -s 10 ".kix[9]"  0.20000000000000107;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[1:9]"  0.27999999999999936 0.07999999999999996 
		0.040000000000000036 0.16000000000000003 2 0.20000000000000018 0.12000000000000011 
		0.19999999999999973 0.19999999999999973;
	setAttr -s 10 ".koy[1:9]"  0 -0.04177879705710251 -0.020284304129513132 
		-0.042747159852090648 0 0 0.076664375742229507 0 0;
createNode animCurveTA -n "CURVE356";
	rename -uid "7A887E7E-4D2B-F0ED-1C2D-D8987A68F159";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 5.1172585354717581 9 5.1172585354717581
		 16 5.4460226011232411 18 4.9725254351402519 19 4.586506145508281 23 3.6196763894745447
		 73 3.6196763894745447 78 4.8930441744255626 81 4.9614188379136435 86 4.9662037718880478;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  5 1 18 18 18 18 18 18 
		18 18;
	setAttr -s 10 ".kix[9]"  0.20000000000000107;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[1:9]"  0.27999999999999936 0.07999999999999996 
		0.040000000000000036 0.16000000000000003 2 0.20000000000000018 0.12000000000000011 
		0.19999999999999973 0.19999999999999973;
	setAttr -s 10 ".koy[1:9]"  0 0 -0.005000464041850926 -0.018889336103463768 
		0 0 0.0035800890084304732 0.00025053855703169314 0;
createNode animCurveTL -n "CURVE358";
	rename -uid "3A10675D-4620-1264-1336-799DCE2905E9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE359";
	rename -uid "445588E0-44C9-CE96-E5B5-0184E9BFCE2A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE360";
	rename -uid "EF29265B-400A-6B76-8619-7499F25684F8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE361";
	rename -uid "1F50B6D0-4630-8398-4C86-F0A950D7A874";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE362";
	rename -uid "5C055AA0-4C3A-5C90-8242-3987435707B4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE363";
	rename -uid "1E5D05E1-4D63-4B1A-C3D2-BBB1CD3BA2B5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE364";
	rename -uid "67567B26-4B35-9ED1-2FF3-1E8F7B29B7C8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE365";
	rename -uid "FF886339-4A3A-15C6-A047-0DA7E00BD895";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE366";
	rename -uid "E8354CD8-40A9-2740-7A2F-95BF913CE4D3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE368";
	rename -uid "48B1921F-4D3E-8DB9-7B51-80B85C26EA00";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE369";
	rename -uid "6CECD300-46FA-A32B-5A07-D790CDFF0CC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 0 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE370";
	rename -uid "11C10F7C-449F-904A-1B5D-C5968DE4DCDD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE371";
	rename -uid "462D6658-4E40-AA59-9893-DFA33739DE5B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE372";
	rename -uid "E4E54BC9-4FD4-2C0C-FAA7-6EA232C3AC6E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[3:7]"  9 18 9 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 5 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 0 0.20000000000000018 
		0 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE373";
	rename -uid "D5650EAE-417B-CB02-9A0C-1E9525EAF594";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 2 9 2 17 2 23 2 73 2 78 2 81 2 86 2;
	setAttr -s 8 ".kit[3:7]"  9 18 9 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 5 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 0 0.20000000000000018 
		0 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE374";
	rename -uid "D35F1686-4DD8-173B-5465-93B3BCD71880";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE375";
	rename -uid "7A6EA078-4C8B-3BE7-B57F-8D817B6B13BC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE376";
	rename -uid "48DA4AB1-4FF0-352B-40C6-81B78775A4B0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE377";
	rename -uid "40281C40-4D81-EDE9-5320-2899EC7D7C9A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE378";
	rename -uid "B9554DB6-44AB-F9B6-B250-FC97FCB84F46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 0 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE380";
	rename -uid "7D615DEF-4FAF-1477-F07F-41B762A0324E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE381";
	rename -uid "84261710-4950-30F8-C180-B5A9F85B556E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE382";
	rename -uid "FFD37C8F-4DA8-FA0F-AC8F-D4A7ECABD68B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE383";
	rename -uid "80F1C20A-4583-6836-2918-1D8EB0E10A8E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE384";
	rename -uid "D13FA2BB-40B0-6B20-AB64-BE9D60421564";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE385";
	rename -uid "4CC56362-4807-2498-1814-35AF0A44EFEB";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE386";
	rename -uid "0034FB2A-44C8-FB73-ED4C-9F986FE77F33";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE387";
	rename -uid "E25D2D6E-4D4B-3DE1-20D2-169019BFE42B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE388";
	rename -uid "520DD1F6-466A-06BB-3C32-0EBA9D503F56";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE390";
	rename -uid "D723C53D-4B75-92E2-7C91-E28837851705";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "CURVE391";
	rename -uid "243E6B78-4FB3-4435-C6DF-B89E8A977971";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "CURVE392";
	rename -uid "5E9FD7E4-4861-81A1-D01F-DCA5000AE0E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "CURVE393";
	rename -uid "1AB8E4EE-43C6-1F94-B745-79B2E73E2CFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 23 1 78 1 81 1 86 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "CURVE394";
	rename -uid "9EC93CBC-4964-B09F-1A4A-8A80641ED4F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 23 1 78 1 81 1 86 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "CURVE395";
	rename -uid "4A9C71C0-41DC-0021-DDFF-ED88B94F7087";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 23 1 78 1 81 1 86 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "CURVE396";
	rename -uid "5D297481-4C73-8719-935B-C1AC0EBCA023";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTA -n "CURVE397";
	rename -uid "3E0010A1-46D6-2682-9085-B3B23F71A528";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTA -n "CURVE398";
	rename -uid "C0BA1551-4D5E-40D3-9FBD-2892E5BCB2F8";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTL -n "CURVE400";
	rename -uid "703B52EA-4EE5-3BED-6657-05AC8D5BA6A5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE401";
	rename -uid "B53531E2-40A0-9C7B-33D5-41A47B6B39B7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE402";
	rename -uid "4B6188BA-4A19-B228-3065-2AB324A55F7A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE403";
	rename -uid "02CD6956-4547-1C30-FDDC-23A9645101A5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE404";
	rename -uid "8D16685A-431E-5601-1C0E-74B9383D7427";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE405";
	rename -uid "09AB4E93-4C94-B878-EA6A-1B8F29662A2A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE406";
	rename -uid "7204DF21-4FB7-20E7-9AB3-71907E04267C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE407";
	rename -uid "29D3E609-4ADC-0CDD-7867-FABDEC2979D0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE408";
	rename -uid "009443B6-45A4-4FC9-6973-1DB092F6CA6E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE410";
	rename -uid "1D073B6D-4ABB-A7EC-C0B7-E68F680CF187";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE411";
	rename -uid "84D9E5AB-4398-A18A-09D0-E29EE4D71B73";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE412";
	rename -uid "003FEBB7-44B8-8E02-63E9-389C5EE99B0A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE413";
	rename -uid "2041D355-4B5F-DE38-C356-BD94D812D972";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0.99999999999999989 20 0.99999999999999989
		 23 0.99999999999999989 78 0.99999999999999989 81 0.99999999999999989 86 0.99999999999999989;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE414";
	rename -uid "7417239B-4550-9EFB-2AB2-B2AA738426C3";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0.99999999999999978 20 0.99999999999999978
		 23 0.99999999999999978 78 0.99999999999999978 81 0.99999999999999978 86 0.99999999999999978;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE415";
	rename -uid "18449997-48F0-4D4C-6F24-2C89251C2391";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0.99999999999999978 20 0.99999999999999978
		 23 0.99999999999999978 78 0.99999999999999978 81 0.99999999999999978 86 0.99999999999999978;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE416";
	rename -uid "6C6906F3-43F6-C38C-E2A8-B99CA728A9D6";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE417";
	rename -uid "2777C939-43A2-6EF0-8429-29B5D035A152";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE418";
	rename -uid "53933B0C-4098-99A9-502C-D38288B3858C";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE420";
	rename -uid "129B4871-49CE-DA8C-C432-5EB5E9532217";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE421";
	rename -uid "72969627-48EA-367C-4242-61A26C7E7329";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE422";
	rename -uid "6FBC696B-4CAD-AEA1-DBF0-09BA22A56527";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE423";
	rename -uid "613CFABB-4431-5E1E-9A5E-7A8E5E5997F0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE424";
	rename -uid "4E73B9C8-4939-DB76-DD02-2BBA4089CDAD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE425";
	rename -uid "04AD577B-40B4-E60A-0064-C7951FE1D610";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE426";
	rename -uid "D48758E2-41DC-03E3-100C-59966F2D0F45";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -11.055198967653061 9 -11.055198967653061
		 17 -11.055198967653061 23 -11.055198967653061 73 -11.055198967653061 78 -11.055198967653061
		 81 -11.055198967653061 86 -11.055198967653061;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE427";
	rename -uid "FB92CC1F-4019-E44E-D9AC-019D5313D015";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE428";
	rename -uid "7973D681-4A41-11DC-9363-7F8C812BE273";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -13.75301949138543 9 -13.75301949138543
		 17 -13.75301949138543 23 -13.75301949138543 73 -13.75301949138543 78 -13.75301949138543
		 81 -13.75301949138543 86 -13.75301949138543;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE430";
	rename -uid "A2B7DEF2-437D-CB6B-1178-61B0131F53DA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE431";
	rename -uid "AE10CE86-4031-9F01-CC36-ED8F5CF4A9CB";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE432";
	rename -uid "386F0DAE-4494-F4FC-908F-C8B3BEFDB8D4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE433";
	rename -uid "074A373E-4E25-9F98-9EE3-9F87F6F18C59";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE434";
	rename -uid "B24B1E6C-4C57-326C-F4B6-80AC6E2D380B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE435";
	rename -uid "A9C2D476-40CC-2A24-1A0F-E99D0EA0A480";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE436";
	rename -uid "D4FAC66A-4204-4AB8-5737-BF9142ADCCA5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE437";
	rename -uid "50F23741-4A9D-28A7-9BF3-50894B77A686";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE438";
	rename -uid "38A95CBF-47DA-F71E-E3ED-EFB3E76E9EBA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -51.274468914866333 9 -51.274468914866333
		 17 -51.274468914866333 23 -51.274468914866333 73 -51.274468914866333 78 -51.274468914866333
		 81 -51.274468914866333 86 -51.274468914866333;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE440";
	rename -uid "7F3A54BE-4665-C356-BB68-A8943968BD95";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE441";
	rename -uid "B4A299DD-40F1-06AD-D5F8-3AB8ED11DAF3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE442";
	rename -uid "4896A94F-42C1-4B07-5E9E-398B1FF9E122";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE443";
	rename -uid "5AABFB6A-4B96-B6C9-8A66-419610A14A3E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE444";
	rename -uid "89B5E5F4-4C7F-AEE6-A3B2-A7B41787D76F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE445";
	rename -uid "AFAB2A00-416B-70B5-B505-20A7E97E6E44";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE446";
	rename -uid "8657CF9B-4D45-6405-7DE6-DE9337A6BF0F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE447";
	rename -uid "F27190B9-45EC-B366-1DB3-BFA680D7320A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE448";
	rename -uid "BEAA9E43-43D1-F40A-85E2-C997BEED41E9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE450";
	rename -uid "682ED3D9-492D-7C3C-B3D5-87B861D80B12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "CURVE451";
	rename -uid "96AFB270-4007-893B-46F0-549139FD830F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "CURVE452";
	rename -uid "5ED4A33F-4F00-9557-2576-6DB7F8901920";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "CURVE454";
	rename -uid "2D13D614-41B8-40E7-96C9-319296DA127B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE455";
	rename -uid "12813E84-4EF6-6993-332B-3A87CCCE3F1D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE456";
	rename -uid "1717EC09-4FC1-8AC8-E68B-30A0283CBE8B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE457";
	rename -uid "2A6CFAC1-4336-BC83-4D29-449D92F123BE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE458";
	rename -uid "3385CFAB-4E71-C028-FB5A-999235CA4501";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE459";
	rename -uid "E59EA3F4-4578-5DB2-78DA-D1B652772FBE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE460";
	rename -uid "5637EB67-4CCC-389F-91AF-C3B0BE63E8F5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE461";
	rename -uid "A05BF59B-4D39-C31F-348D-9F9FC63F3DCA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE462";
	rename -uid "FF750243-4273-A731-CBED-868596CAE91E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE464";
	rename -uid "FC8044A4-430D-8345-9945-EFBAAE1C91E2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE465";
	rename -uid "160C0886-46FD-C3DA-90EA-909BDA60EF11";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE466";
	rename -uid "413A94B0-4F6D-ADA1-2479-7EA5DBA5AA7C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.3613750657971132 9 0.3613750657971132
		 17 0.3613750657971132 23 0.3613750657971132 73 0.3613750657971132 78 0.3613750657971132
		 81 0.3613750657971132 86 0.3613750657971132;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE467";
	rename -uid "AA68D755-4A07-C115-4A95-7689EB7F247E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1.0000000000000002 9 1.0000000000000002
		 17 1.0000000000000002 23 1.0000000000000002 73 1.0000000000000002 78 1.0000000000000002
		 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 0 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE468";
	rename -uid "19B2746A-4688-EFD7-252E-569B9F324E55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0.99999999999999933 9 0.99999999999999933
		 17 0.99999999999999933 23 0.99999999999999933 73 0.99999999999999933 78 0.99999999999999933
		 81 0.99999999999999933 86 0.99999999999999933;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 0 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE469";
	rename -uid "575BEB4D-4AAE-CEF1-6947-DDA4A3D2380A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 0 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE470";
	rename -uid "45B9D3F6-4DB1-1C17-FEB4-38AFA77CA815";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE471";
	rename -uid "9A9199E8-4769-6B00-F2B5-4EA368C7D2C1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE472";
	rename -uid "18BD3108-41E1-5984-7BD8-E1BB756BF2F8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE474";
	rename -uid "37BBF2EE-4A85-7EDD-B059-8FA5E2B5443A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE475";
	rename -uid "41380E97-4414-804C-30D6-B894730CBA29";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE476";
	rename -uid "358BF9A7-4F7B-22C0-79BB-F0A262EA5D49";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.83119698194318303 9 0.83119698194318303
		 17 0.83119698194318303 23 0.83119698194318303 73 0.83119698194318303 78 0.83119698194318303
		 81 0.83119698194318303 86 0.83119698194318303;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE477";
	rename -uid "AFB2011A-4FE5-D59B-244E-34AAA8406779";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1.0000000000000002 9 1.0000000000000002
		 17 1.0000000000000002 23 1.0000000000000002 73 1.0000000000000002 78 1.0000000000000002
		 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 0 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE478";
	rename -uid "ABCB2AB5-4798-676F-A4E4-D98EBE94020E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0.99999999999999933 9 0.99999999999999933
		 17 0.99999999999999933 23 0.99999999999999933 73 0.99999999999999933 78 0.99999999999999933
		 81 0.99999999999999933 86 0.99999999999999933;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 0 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE479";
	rename -uid "5F566246-4B92-D3D9-E05F-389B2CEF4AAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 0 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE480";
	rename -uid "474CACF2-471F-877C-83CF-828F4ECFF789";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE481";
	rename -uid "1BED6049-431C-3F32-B08C-04A9E4C5D778";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE482";
	rename -uid "E0E2ECE5-401E-8CCE-FBC8-FAB1BA76A81B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE484";
	rename -uid "5F580A0F-4B54-1BEC-EA9D-2D82EE6F6781";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE485";
	rename -uid "7057D0CE-4200-AB0F-7CED-F7977DE72120";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE486";
	rename -uid "CC3D044D-4DC5-6BE7-1CBB-4DA3298FC85B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE487";
	rename -uid "8A2703CD-43CE-1261-E067-8C968F8E1D94";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE488";
	rename -uid "30098C1F-4DC2-7DB2-03F6-C4975AA8201C";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0.99999999999999989 20 0.99999999999999989
		 23 0.99999999999999989 78 0.99999999999999989 81 0.99999999999999989 86 0.99999999999999989;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE489";
	rename -uid "FA43629D-415F-0566-5AD5-DCB43286CF11";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE490";
	rename -uid "95153B0E-451E-3E60-F26F-C1AA1380AF27";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE491";
	rename -uid "DA4E42B5-4053-0B12-7C3A-55AE20DD3D50";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE492";
	rename -uid "4B73F3C6-41B6-AC20-2DF8-589B87CEF81D";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE494";
	rename -uid "6BFBE8E3-4F07-0851-3FF2-7EB33F19C5AC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE495";
	rename -uid "D80640DB-4739-5C12-7A08-E0B81DA31B51";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE496";
	rename -uid "59FF5E1B-4F16-8F80-B8C4-9796283D374C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE497";
	rename -uid "5A8F72B9-4C87-E95F-F5CA-9A8A371CCDF5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE498";
	rename -uid "50FFB3F9-45D6-CA6B-29FF-5899BF9465E8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE499";
	rename -uid "CDF065CC-4CE1-6120-2076-BDB501D2B4CD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE501";
	rename -uid "CB410E1B-4B49-3C4D-00E9-C1AA4853B31B";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.48312696000074384 23 0.48312696000074384
		 78 0.48312696000074384 81 0.48312696000074384 86 0.48312696000074384;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTA -n "CURVE502";
	rename -uid "13D180F0-409F-8A0A-4A9E-5B81846B9188";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.48312696000074384 23 0.48312696000074384
		 78 0.48312696000074384 81 0.48312696000074384 86 0.48312696000074384;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTA -n "CURVE503";
	rename -uid "4E098EDA-46F2-2DCB-D554-1589EBCCB9F0";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.48312696000074384 23 0.48312696000074384
		 78 0.48312696000074384 81 0.48312696000074384 86 0.48312696000074384;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTU -n "CURVE504";
	rename -uid "143A3AEC-487E-205F-A268-17A800CC0A89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "CURVE506";
	rename -uid "78884529-4A5F-5245-E1A0-E7BB12A927D5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE507";
	rename -uid "A4DD76F9-43C5-618E-9FEF-408C96FBC7D4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE508";
	rename -uid "DA3E30CA-4495-D28E-B9F2-24B2B6685572";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE509";
	rename -uid "F210A7B6-4E00-C28B-FBA2-7E84339A98C9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE510";
	rename -uid "3AF7A217-4AC5-6CFE-E14F-13A21A9798B9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 100 9 100 17 100 23 100 73 100 78 100
		 81 100 86 100;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE511";
	rename -uid "C656A977-450E-804A-9D15-EA8E63F128BE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE512";
	rename -uid "2078B794-41E7-9CB4-D256-EE9824691213";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 10 9 10 17 10 23 10 73 10 78 10 81 10
		 86 10;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE513";
	rename -uid "7FDF11A3-46AD-B4C8-4A61-F29B0CFDE6C7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE514";
	rename -uid "D2265DEE-4B73-E361-FE15-F3A416138912";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE515";
	rename -uid "75B7A8A3-4D66-DCAC-502D-5FB9C6A92A45";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE516";
	rename -uid "C0382930-4E90-E94E-E2C8-D5B74C8FD246";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[3:7]"  9 18 9 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 5 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 0 0.20000000000000018 
		0 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE517";
	rename -uid "87BC133F-482C-ABE0-E3DE-37A2E0365223";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE518";
	rename -uid "3B21859B-43B5-6312-947E-0BA4F15649BC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1.8240051283342731 9 1.8240051283342731
		 17 1.8240051283342731 23 1.8240051283342731 73 1.8240051283342731 78 1.8240051283342731
		 81 1.8240051283342731 86 1.8240051283342731;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE519";
	rename -uid "B679F825-4135-8FE7-FB65-9EAE31600BF5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE520";
	rename -uid "64055719-4A1A-C850-8F3A-E5ACB5A0164E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 6.080366695121711 9 6.080366695121711
		 17 6.080366695121711 23 6.080366695121711 73 6.080366695121711 78 6.080366695121711
		 81 6.080366695121711 86 6.080366695121711;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE521";
	rename -uid "166A27BD-4E78-4EC7-21E9-DC972C3C17D8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE522";
	rename -uid "93112BCA-4241-8473-4A64-619E1B31829B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE523";
	rename -uid "32BB7F73-476A-FE59-5523-449977FC66CB";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 25 9 25 17 25 23 25 73 25 78 25 81 25
		 86 25;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE524";
	rename -uid "A5B5D28D-4A32-AAD2-10AC-DB9D836901AF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE525";
	rename -uid "AE35A2B1-486F-D2A1-DFE0-56BC7AD51E2C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE526";
	rename -uid "EB69F283-4433-12B7-2709-379C96EB2151";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE527";
	rename -uid "5947F76B-4819-0609-D251-F59AC69E44A3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 50 9 50 17 50 23 50 73 50 78 50 81 50
		 86 50;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE529";
	rename -uid "A25585EB-4E4C-DEC2-9C29-9394D6C2A5F4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 328.02723087895231 9 328.02723087895231
		 17 330.58745330168188 23 332.69844824361331 73 332.28146910724831 78 337.40230483450387
		 81 335.9298949665702 86 321.41595813632784;
createNode animCurveTL -n "CURVE530";
	rename -uid "400FB578-487A-ABFA-7686-B997AD3AC58D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 7.2388209196733486 9 7.2388209196733486
		 17 5.780999722190856 23 5.6904816693526241 73 5.6929897257885482 78 7.1248286361200162
		 81 7.3567169001702908 86 7.3489915161147925;
createNode animCurveTL -n "CURVE531";
	rename -uid "E56D8D66-4046-8CEB-2617-65B3BE1BA1F1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -6.9039858142113477 9 -6.9039858142113477
		 17 -6.2876967664912069 23 -6.0226094492763718 73 -5.9998165002834423 78 -8.3693965057381092
		 81 -8.1102018858784959 86 -7.2119506894530758;
createNode animCurveTL -n "CURVE532";
	rename -uid "7CED8180-4629-0CC0-2CC5-5A84467E90C5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 11.35079741316768 9 11.35079741316768
		 17 8.2972852094423626 23 7.765606609349728 73 7.7773165893669338 78 11.089577125798758
		 81 11.319534170155857 86 11.332044739102711;
createNode animCurveTU -n "CURVE533";
	rename -uid "0B75C4C0-4BB1-68B4-DAEC-E893B1814E7B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE534";
	rename -uid "5C3929BA-4FA5-EEB1-99AE-F1895BE07E56";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 100 86 100;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE535";
	rename -uid "589E32BF-48A3-74ED-F547-57AB681DE79C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE536";
	rename -uid "29CBE4F6-4C52-B0B3-ACA2-F1B63964CEAB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE537";
	rename -uid "61F0D0B2-41BD-BBCD-14C9-ACA81FA7DF6C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "CURVE538";
	rename -uid "455336D2-4AEA-EEFE-4382-CB9E9AF0EB93";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -9.2454367345466579 9 -9.2454367345466579
		 17 -15.991091939351335 23 -17.113668096541446 73 -17.438906214080699 78 -4.2924580093696019
		 81 -5.273300225274868 86 -18.703778104258603;
createNode animCurveTU -n "CURVE539";
	rename -uid "A14F32A8-452D-D657-3D92-07BA74621D5F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "CURVE540";
	rename -uid "C98ED387-4115-EAE6-1923-D3B471503FC2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 65.185539479296551 9 65.185539479296551
		 17 28.047995945882462 23 24.603920433126131 73 24.603911416432009 78 65.917053388541376
		 81 70.142957365666021 86 68.932190904090049;
createNode animCurveTU -n "CURVE541";
	rename -uid "5697AD49-4287-7F7C-B642-C98E6F5A4018";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 86 1;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  1 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "CURVE543";
	rename -uid "7AFA5178-4A36-29FA-93FA-028B7AA3BF5E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE544";
	rename -uid "2CF47EF5-4A7D-CA5E-4520-C98CF396C59D";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE545";
	rename -uid "E7708149-44CA-94BB-E986-86A311051632";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE546";
	rename -uid "FC67D55F-4045-2B9C-2440-76BB1C14BC85";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE547";
	rename -uid "65B04171-4B2F-56EE-1EDD-1FBDEDFC7E7F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE548";
	rename -uid "7E5D9EC9-4BEC-CE76-F249-918CC5FF68E3";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE549";
	rename -uid "96D145C4-4722-7E3A-3CEF-71A8CC058808";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE550";
	rename -uid "58B1C269-4A9E-4E3C-ED73-76AF9ACA3E4C";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE551";
	rename -uid "168E551F-46EF-54EA-B80F-9E8E5CCE52A9";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE553";
	rename -uid "990F53FD-45AB-36AF-BCEE-5A8EC8B00050";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE554";
	rename -uid "4563A1DC-44DB-C47E-D0D7-E6A4ABBC3471";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE555";
	rename -uid "007A7148-4E30-A32C-BBB9-C092474F629C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE556";
	rename -uid "762F1DCF-4214-0359-556D-8EBEA6524672";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE557";
	rename -uid "1F2DB317-4BF7-5713-9F05-6B8788441744";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE558";
	rename -uid "BBBEB32D-4C82-DFB9-60EE-7A84FBEB59D1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE559";
	rename -uid "F443A164-49FC-2674-5179-5DA810BB8EA5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -2.4025147802818467 9 -2.4025147802818467
		 17 -2.4025147802818467 23 -2.4025147802818467 73 -2.4025147802818467 78 -2.4025147802818467
		 81 -2.4025147802818467 86 -2.4025147802818467;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE560";
	rename -uid "7284B1E5-4A38-07CD-FA67-8399831AE56A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -3.8213844783346596 9 -3.8213844783346596
		 17 -3.8213844783346596 23 -3.8213844783346596 73 -3.8213844783346596 78 -3.8213844783346596
		 81 -3.8213844783346596 86 -3.8213844783346596;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE561";
	rename -uid "3C51E58F-4351-E9F0-8828-9E8C80E29C27";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 2.678026411006627 9 2.678026411006627
		 17 2.678026411006627 23 2.678026411006627 73 2.678026411006627 78 2.678026411006627
		 81 2.678026411006627 86 2.678026411006627;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE563";
	rename -uid "C8A81AD1-4375-BF5C-9A54-07AF9E342C96";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE564";
	rename -uid "32803BC1-48BE-CF4C-D1F3-B2A1A14FD182";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE565";
	rename -uid "63D63474-4072-800B-54A5-B6B39BE2EA76";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE566";
	rename -uid "7ADF7C6C-4C96-1E2C-F904-0989C6D3CE0B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE567";
	rename -uid "E0EEFECB-40F2-1738-440D-C5A110405478";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE568";
	rename -uid "C6151F83-440A-79DF-5C0F-9ABE7EF16DFB";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE569";
	rename -uid "0328FE31-4411-9CF4-09CD-16BA25D30A81";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -12.336081507072155 9 -12.336081507072155
		 17 -12.336081507072155 23 -12.336081507072155 73 -12.336081507072155 78 -12.336081507072155
		 81 -12.336081507072155 86 -12.336081507072155;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE570";
	rename -uid "43271482-4A55-8167-46B0-94AC099BC680";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.91218146391879962 9 -0.91218146391879962
		 17 -0.91218146391879962 23 -0.91218146391879962 73 -0.91218146391879962 78 -0.91218146391879962
		 81 -0.91218146391879962 86 -0.91218146391879962;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE571";
	rename -uid "6C2AE57F-4178-9399-A2A0-CBA86EF248A5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -45.194088063379652 9 -45.194088063379652
		 17 -45.194088063379652 23 -45.194088063379652 73 -45.194088063379652 78 -45.194088063379652
		 81 -45.194088063379652 86 -45.194088063379652;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE573";
	rename -uid "0C1529D3-40E0-8C59-7B3F-B4B6BBDBD290";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE574";
	rename -uid "228AE4B7-40AB-C092-E0E8-718D541D2291";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.27640766110948223 9 0.27640766110948223
		 16 0.27748112475898634 23 0.27748112475898634 73 0.27748112475898634 79 0.27748112475898634
		 81 0.27748112475898634 86 0.27748112475898634;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE575";
	rename -uid "78B18657-48CF-4FF6-28E6-8B9D4C2EA692";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE576";
	rename -uid "1274E2AB-4F0C-EAAA-A9AE-36ADDAF02AD1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE577";
	rename -uid "3ECD1CAA-40B2-C5C7-2BAF-59B870627085";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE578";
	rename -uid "5757D162-43AB-C359-AF4A-4AA23B71D480";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE580";
	rename -uid "2180A144-4082-581B-BD28-AB8C3ED415DA";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE581";
	rename -uid "6FEB224A-48D0-F390-1B76-F4878B9734B9";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE582";
	rename -uid "52CCABC1-447B-F1DE-16F7-C3ADEBAFFCA8";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE583";
	rename -uid "A2CE6927-4FFD-FCC2-9CAF-AAB2A4578104";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE584";
	rename -uid "37E23B05-4290-ABCD-045D-C9AA48C54335";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE585";
	rename -uid "A6988258-4619-E3C9-7094-A7AF076753C1";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE586";
	rename -uid "6B333C14-45DB-1B17-0B6F-A4A124C9F069";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE587";
	rename -uid "E03D7985-47D2-7497-0928-1E9D4E94A650";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE588";
	rename -uid "BB1BF856-4514-197D-9947-D7B61DDD8CDD";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE590";
	rename -uid "AE105250-42F1-EA73-CD96-73B1921A6B96";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE591";
	rename -uid "4A99A563-4C7C-B7E0-12EB-10AF2F6943C6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE592";
	rename -uid "17C6B49F-45A0-8693-3FB5-5195AEA6DC3D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE593";
	rename -uid "5E27D7E1-41EF-0E6E-C259-B4973EAA7217";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE594";
	rename -uid "DA647814-4D01-7402-DD71-75B561CA6DDB";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE595";
	rename -uid "42D44530-4CE3-198B-475C-01A57DD876E3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[3:7]"  9 18 18 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 0 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE596";
	rename -uid "BF7E0CA2-416F-05BA-FA21-0797BEADF648";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE597";
	rename -uid "D3D46D00-4DC4-FA43-595B-0FA005B6E85E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE598";
	rename -uid "75C70748-400F-7365-58D1-4483D94DBE47";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE599";
	rename -uid "2482012E-4E68-1FD4-1205-69B192A5965F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE601";
	rename -uid "F0CC2807-422C-4CCB-50F9-C39FEAB3D732";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE602";
	rename -uid "B3C5FA72-4933-DE90-04A2-1F87A0533891";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE603";
	rename -uid "73473764-4D25-4B0B-F5EE-29B287E1EA47";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE604";
	rename -uid "A183D7D6-4330-500D-C817-0394932F3C0C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE605";
	rename -uid "C45DA392-4145-3765-8664-C3A2F0734C7C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE606";
	rename -uid "B1237D79-45E7-5537-F79A-F9B5E755B107";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[3:7]"  9 18 9 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 5 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 0 0.20000000000000018 
		0 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE607";
	rename -uid "56516A07-4AED-48E2-3D7B-9EB80D8D9088";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE608";
	rename -uid "B8903926-40AC-28EE-D152-2C90D750654B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE609";
	rename -uid "7F138F5E-450E-510D-C95D-479DAA1D6CE4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -19.801969869988675 9 -19.801969869988675
		 17 -19.801969869988675 23 -19.801969869988675 73 -19.801969869988675 78 -19.801969869988675
		 81 -19.801969869988675 86 -19.801969869988675;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE610";
	rename -uid "88813E44-45B0-4111-6861-48A2F99F34BC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE612";
	rename -uid "3F8B6BFE-4684-36F1-E427-5DACC4F4A83C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE613";
	rename -uid "1BE74E69-4373-B19C-BEE8-D189AC0CD7FF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE614";
	rename -uid "5E904324-448D-5579-B174-5B8A813C9699";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE615";
	rename -uid "7F10E31B-4A43-45A6-0E67-FE9D4DD7EEC1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE616";
	rename -uid "31DD123F-413C-7B19-59BC-14BA4CEEA389";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE617";
	rename -uid "83720518-4438-E228-0F61-94BD3B3E384D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE619";
	rename -uid "90B62262-4F4A-2E33-1C57-1383C7B5B06E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE620";
	rename -uid "479EFCF2-48E3-9731-DCCA-95A70B5CABB8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE621";
	rename -uid "0D3903C3-4196-FD78-9580-62B12D4D4F3E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE622";
	rename -uid "8A5443F5-4124-A28A-2471-56ABEF9BB0AE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE623";
	rename -uid "0E020CA2-40EA-0407-B902-75B22635782D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE624";
	rename -uid "40F477B6-4595-009F-9E0E-8992F965CD25";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[3:7]"  9 18 18 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 0 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE625";
	rename -uid "5B9EF7B1-46A3-5209-F3A0-69B280DB229F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE626";
	rename -uid "95A00D7F-4167-AA9C-80D3-8D8C10FA023A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE627";
	rename -uid "F1CF4B88-4D18-EB29-69E5-CAAD57B2BE54";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE628";
	rename -uid "05056878-4F99-30EB-7D22-3E9A3145396D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE630";
	rename -uid "7DE6904F-454D-DEB5-FDEB-E0AAA1FD98C0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE631";
	rename -uid "54E87CAE-4295-68D0-2873-9190DBE08FD6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE632";
	rename -uid "156F682C-402B-61D8-FD5A-C286E2D76D0E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE633";
	rename -uid "E99849E4-45C3-8582-CD4F-19B51DF4F813";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE634";
	rename -uid "253AC4F1-487E-F4E2-9E0E-AFA17CA1F8F6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE635";
	rename -uid "84AE6199-499B-0EAD-1DF2-F7877BF1EA08";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE636";
	rename -uid "C3F13857-44B2-F00F-827F-0DBADBE369F9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -7.3502060448817517 9 -7.3502060448817517
		 17 -7.3502060448817517 23 -7.3502060448817517 73 -7.3502060448817517 78 -7.3502060448817517
		 81 -7.3502060448817517 86 -7.3502060448817517;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE637";
	rename -uid "4E56AA77-4D6C-2970-70E3-7D8440DB7A96";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -9.1113053006515869 9 -9.1113053006515869
		 17 -9.1113053006515869 23 -9.1113053006515869 73 -9.1113053006515869 78 -9.1113053006515869
		 81 -9.1113053006515869 86 -9.1113053006515869;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE638";
	rename -uid "F0EFF157-4C52-7CD9-0663-198E334A8238";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -64.589126852609269 9 -64.589126852609269
		 17 -64.589126852609269 23 -64.589126852609269 73 -64.589126852609269 78 -64.589126852609269
		 81 -64.589126852609269 86 -64.589126852609269;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE640";
	rename -uid "C91F1519-4023-5357-24DA-3B81C1AB8305";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE641";
	rename -uid "3C837332-4757-1976-5573-4DA4B7B6CC75";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE642";
	rename -uid "649B8F86-443F-35B6-F36D-95814C848BFB";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE643";
	rename -uid "172A036F-4DAB-C107-974E-C28E6EDBDC53";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE644";
	rename -uid "0E61DE2A-4AB6-2B9C-04EA-F1BEC18459AF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE645";
	rename -uid "94ACF345-4507-E717-953F-4EB05F8C50C8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE646";
	rename -uid "2DF2D810-484C-04B9-0719-70945D34A57D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE647";
	rename -uid "80F051D7-4D00-4264-F0F3-EEA1C0C8ADAD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE648";
	rename -uid "51282B47-4C75-646D-3BCD-2E9186A120A5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -12.611955101472924 9 -12.611955101472924
		 17 -12.611955101472924 23 -12.611955101472924 73 -12.611955101472924 78 -12.611955101472924
		 81 -12.611955101472924 86 -12.611955101472924;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE650";
	rename -uid "22DFB8BB-4A82-403E-1462-7D8ACD77EF43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "CURVE651";
	rename -uid "EA2509F8-4EBB-7DB5-C989-A2A7B9D54946";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "CURVE652";
	rename -uid "93F26A79-48DE-D79F-B82F-658B5CB6B37D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "CURVE653";
	rename -uid "0E87C952-4AE4-6B11-FBA0-BFB5AF61FE2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 23 1 78 1 81 1 86 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "CURVE654";
	rename -uid "B3C72178-4053-ACD9-A131-95A6E7CBF3EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 23 1 78 1 81 1 86 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "CURVE655";
	rename -uid "059B8572-4067-48D9-21E0-0487A2D31E6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 23 1 78 1 81 1 86 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "CURVE656";
	rename -uid "B98D3256-4F71-D60D-924A-EDA8B6B1BEBF";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTA -n "CURVE657";
	rename -uid "2D14C4E5-4D0A-8787-67CE-CD934FA02CE4";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTA -n "CURVE658";
	rename -uid "3DE4EBE5-43E9-0866-C398-27BEC9D6F096";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTL -n "CURVE660";
	rename -uid "CF674761-48D1-7898-F903-6DB25766874F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE661";
	rename -uid "414B1BC4-4D18-505F-2962-BF9C383C5E34";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE662";
	rename -uid "D6B0224E-4452-837A-8459-01ABFC5C5458";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE663";
	rename -uid "3DEC20BE-41D6-7A6C-618A-6D92818EF243";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000007 20 1.0000000000000007
		 23 1.0000000000000007 78 1.0000000000000007 81 1.0000000000000007 86 1.0000000000000007;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE664";
	rename -uid "CE42295D-4D84-D321-9733-85BF59F76B3F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE665";
	rename -uid "334613A5-43E1-C489-2615-DD9B9F4253CF";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0.99999999999999978 20 0.99999999999999978
		 23 0.99999999999999978 78 0.99999999999999978 81 0.99999999999999978 86 0.99999999999999978;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE666";
	rename -uid "7D493954-4EAA-D8A3-239D-FA9425AC56BD";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE667";
	rename -uid "7365F0DD-4306-12BA-5D9A-CFB3EBE71DD9";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE668";
	rename -uid "B99EE27D-4BC7-8635-57ED-A5933EE5B5F8";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE670";
	rename -uid "9C33D366-4A93-4E3B-B137-2DA6E37AF4B5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE671";
	rename -uid "269A9170-4268-72E8-2342-25AF20F75F0D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -80.016464575079326 9 -80.016464575079326
		 17 -63.841472218566338 23 -63.841472218566338 73 -63.841472218566338 78 -71.781260398700937
		 81 -72.406518717886499 86 -72.406518717886499;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 -0.032738449035821571 0 0;
createNode animCurveTA -n "CURVE672";
	rename -uid "64E83D12-47E9-C958-F0BA-AABA7927A60E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE674";
	rename -uid "8174D1A3-4E5D-7127-E007-169DC5376429";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE675";
	rename -uid "A8D3444D-4180-5BB3-277F-2E835F87C65C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE676";
	rename -uid "331EBE74-4D06-0DD7-EEE2-2396458AD212";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE677";
	rename -uid "856ACF58-4E78-A850-C1BD-48B5A792DCBB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE678";
	rename -uid "7BEEEDDA-4A2E-F913-36BE-14B420D59DD2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE679";
	rename -uid "7DAE9CB4-4016-336A-9D8A-4AB3875E33AD";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE680";
	rename -uid "FA01F6C9-4AB4-0FD9-2F40-BB86DD87C89D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE681";
	rename -uid "2AC286D8-40C9-1F33-7BFA-DE83193392A3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE682";
	rename -uid "92B595E1-40E2-92AC-9177-C791C42674D5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE684";
	rename -uid "08B487C2-49CA-52EA-9635-209DD22D6FAF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE685";
	rename -uid "48883416-446F-728A-E7C6-13B8DB21B659";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE686";
	rename -uid "D813E9F9-4E38-8AE9-A97F-3F947626BCFB";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE687";
	rename -uid "DADF06BA-4788-0171-9279-5A858E650B25";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE688";
	rename -uid "372DD9AF-43B4-E256-D88D-3886433D2C8B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE689";
	rename -uid "76547761-4D5C-8C75-77FA-8192083AFADE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 6.0970303580523089 9 6.0970303580523089
		 16 3.9630697327340014 23 3.9630697327340014 73 3.9630697327340014 79 3.9630697327340014
		 81 3.9630697327340014 86 3.9630697327340014;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE690";
	rename -uid "71413E3B-4B6D-351F-9616-07926A850C95";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.05 9 0.05 16 0.0325 23 0.0325 73 0.0325
		 79 0.0325 81 0.0325 86 0.0325;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE691";
	rename -uid "E6AE1816-4D03-015A-6E27-80AB0F79A12E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE692";
	rename -uid "A67160F4-45A0-F25A-A922-01B0B47A9592";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE694";
	rename -uid "D1F0EE0F-4B37-1B09-7664-0498219949A0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE695";
	rename -uid "B22401B4-41CE-4704-ED24-A1A42003A7D1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE696";
	rename -uid "8ECD7640-49A7-E41E-05AE-0EBFE0C55F0B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE697";
	rename -uid "56075B7F-4B62-D963-787B-92918B4C38E7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE698";
	rename -uid "B0D84412-4DCF-41A4-4601-5697025F3DFE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE699";
	rename -uid "5B110242-4D9C-1103-E8AD-BFB6A99C32AA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE700";
	rename -uid "FABB77CD-4398-ADA1-B47D-9A9AC0D24EB8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE701";
	rename -uid "03BCD13B-4151-C2F6-7D94-C2948A21DF16";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE702";
	rename -uid "E67E43F3-40FE-3220-43EC-1E98C6F8E14B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE704";
	rename -uid "F8AB59E9-4894-3518-740D-519BBF13B66C";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE705";
	rename -uid "FD900039-4FF8-A8C2-1A20-92995748E483";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE706";
	rename -uid "025C03AF-4C07-536D-A019-96807218EAE5";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE707";
	rename -uid "EFE2C8AB-49D9-1505-465E-45BB1405347D";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0.99999999999999967 20 0.99999999999999967
		 23 0.99999999999999967 78 0.99999999999999967 81 0.99999999999999967 86 0.99999999999999967;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE708";
	rename -uid "E97F75F2-421D-E024-E319-C2BECF64A202";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE709";
	rename -uid "D8FA709B-4A14-234C-88DA-C88FD4A5AF90";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE710";
	rename -uid "5D544A3E-430C-4E15-37FB-C1BF58AF84FB";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE711";
	rename -uid "F0315130-41CE-0799-8CE9-CAABA759D989";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE712";
	rename -uid "9D1D3E04-4D1F-29C9-A7B4-088AEEDECA05";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE714";
	rename -uid "2E066250-42E2-BE12-33C1-2CBA0792C511";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.0015321780389568765 9 -0.0015321780389568765
		 17 -0.065784805479083774 23 -0.065784805479083774 73 -0.065784805479083774 78 0.0030448437919598937
		 81 0.042680549592606074 86 0.042680549592606074;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0.00070990408887964434 0 0;
createNode animCurveTA -n "CURVE715";
	rename -uid "B9277473-4007-BEF5-BCEE-23B23EA23D43";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.051698541869838716 9 -0.051698541869838716
		 17 -2.2197019106050053 23 -2.2197019106050053 73 -2.2197019106050053 78 0.86765585467971862
		 81 1.2454506924400823 86 1.2454506924400823;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0.019781291447868436 0 0;
createNode animCurveTA -n "CURVE716";
	rename -uid "6CF091DB-4E94-331D-1D9C-D4BE017D5EC9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.011248153219870787 9 0.011248153219870787
		 17 0.48294490114993488 23 0.48294490114993488 73 0.48294490114993488 78 -0.052384785342320467
		 81 -0.12922635091457849 86 -0.12922635091457849;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 -0.0040066514754682099 0 0;
createNode animCurveTU -n "CURVE717";
	rename -uid "E80E4F6E-4AC2-9AC4-4BDC-FC9B35681E94";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE719";
	rename -uid "14061E23-4924-E220-9DF2-06ACF767C5F8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE720";
	rename -uid "5749E8A8-4AD9-228C-2688-488EA110CE5A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE721";
	rename -uid "09100025-4250-0575-9DD0-4B882E4A7CD2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE722";
	rename -uid "B18C0660-4EBC-1A6F-456B-D8891F91B78A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE723";
	rename -uid "80C5DDBC-409E-5CCA-A40B-5695B8E8C61A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE724";
	rename -uid "113113FB-413E-3E90-0919-18ADD5C8281C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE725";
	rename -uid "063A5835-49FB-9779-C13A-CABC0CFA0BFA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE726";
	rename -uid "8F9ABCB9-4600-AA99-FA08-7E8BF15F2396";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE727";
	rename -uid "39FD44C9-4367-F40C-18EC-DF9EA323B842";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -51.320936468419966 9 -51.320936468419966
		 17 -51.320936468419966 23 -51.320936468419966 73 -51.320936468419966 78 -51.320936468419966
		 81 -51.320936468419966 86 -51.320936468419966;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE729";
	rename -uid "639F9C3D-4670-8AB5-0FE9-7E868223389A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE730";
	rename -uid "76F7A2B4-4011-B024-B0A4-EB83BECE7618";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE731";
	rename -uid "8B3DF654-4D6B-A1B0-7A93-4CA62F91EAED";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE732";
	rename -uid "FAA4CBFB-4550-1B47-C5EA-CAB0614DB180";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE733";
	rename -uid "16F54A99-46AE-D916-E468-BBA4B36D0F8D";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0.99999999999999989 20 0.99999999999999989
		 23 0.99999999999999989 78 0.99999999999999989 81 0.99999999999999989 86 0.99999999999999989;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE734";
	rename -uid "57926BC9-4A40-56BE-B6B5-C5B4ED242223";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0.99999999999999989 20 0.99999999999999989
		 23 0.99999999999999989 78 0.99999999999999989 81 0.99999999999999989 86 0.99999999999999989;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE735";
	rename -uid "EE60D107-4B68-B00D-5FFC-8CAFAE1423B7";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE736";
	rename -uid "EAE67F77-49F0-EF7B-B7D5-6198964E3971";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE737";
	rename -uid "E5F357AB-4FB3-E7E1-8E7E-9DB6277C9B0B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE739";
	rename -uid "B609F6CD-48FD-D7D8-C1A2-7391E2C4491A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 9 1 16 1 23 1 25 1 27 1 34 1 41 1 73 1
		 78 1 86 1;
	setAttr -s 11 ".kit[1:10]"  1 18 18 18 18 18 18 18 
		18 1;
	setAttr -s 11 ".kot[0:10]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE740";
	rename -uid "3367D351-406E-A55A-6FB4-83A5D775722E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 5 9 5 16 5 23 5 25 5 27 5 34 5 41 5 73 5
		 78 5 86 5;
	setAttr -s 11 ".kit[1:10]"  1 18 18 18 18 18 18 18 
		18 1;
	setAttr -s 11 ".kot[0:10]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE741";
	rename -uid "040A594F-4504-5F74-E2F5-C48DD4413883";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 9 0 16 0 23 0 25 0 27 0 34 0 41 0 73 0
		 78 0 86 0;
	setAttr -s 11 ".kit[1:10]"  1 18 18 18 18 18 18 18 
		18 1;
	setAttr -s 11 ".kot[0:10]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE742";
	rename -uid "684E544E-4C08-786D-057F-4E9F79C9BD66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -0.87377320721576801 9 -0.87377320721576801
		 16 -0.17457054362536328 23 -0.0031530342933952515 25 0 27 0 34 0 41 0 73 0 78 -0.57608279396369899
		 86 -0.81028663529148559;
	setAttr -s 11 ".kit[1:10]"  1 18 18 18 18 18 18 18 
		18 1;
	setAttr -s 11 ".kot[0:10]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[1:10]"  1 0.54097330097380847 0.99308224560713465 
		1 1 1 1 1 0.54009705423736687 1;
	setAttr -s 11 ".kiy[1:10]"  0 0.84103976578607831 0.11742083912104737 
		0 0 0 0 0 -0.84160274001699809 0;
	setAttr -s 11 ".kox[0:10]"  1 1 0.54097330097380847 0.99308224560713454 
		1 1 1 1 1 0.54009705423736687 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0.84103976578607831 0.11742083912104735 
		0 0 0 0 0 -0.84160274001699809 0;
createNode animCurveTL -n "CURVE743";
	rename -uid "FFA04774-4ECA-7F30-4874-5CACCCC4064B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 9 0 16 0 23 0 25 0 27 0 34 0 41 0 73 0
		 78 0 86 0;
	setAttr -s 11 ".kit[1:10]"  1 18 18 18 18 18 18 18 
		18 1;
	setAttr -s 11 ".kot[0:10]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE744";
	rename -uid "7FC87232-4D75-3510-2BCC-EB98AFE4307E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 10 9 10 16 10 23 10 25 10 27 10 34 10
		 41 10 73 10 78 10 86 10;
	setAttr -s 11 ".kit[1:10]"  1 18 18 18 18 18 18 18 
		18 1;
	setAttr -s 11 ".kot[0:10]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE745";
	rename -uid "71E7AD74-4832-9216-CEB7-B381872464D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0.5 9 0.5 16 0.5 23 0.5 25 0.5 27 0.5
		 34 0.5 41 0.5 73 0.5 78 0.5 86 0.5;
	setAttr -s 11 ".kit[1:10]"  1 18 18 18 18 18 18 18 
		18 1;
	setAttr -s 11 ".kot[0:10]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE746";
	rename -uid "C7A02072-4A9F-0369-2318-D3A4DB1533FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 9 1 16 1 23 1 25 1 27 1 34 1 41 1 73 1
		 78 1 86 1;
	setAttr -s 11 ".kit[1:10]"  1 18 18 18 18 18 18 18 
		18 1;
	setAttr -s 11 ".kot[0:10]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE747";
	rename -uid "C7C4EBA3-4B06-5D1E-803A-0998DAB8E924";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 9 1 16 1 23 1 25 1 27 1 34 1 41 1 73 1
		 78 1 86 1;
	setAttr -s 11 ".kit[1:10]"  1 18 18 18 18 18 18 18 
		18 1;
	setAttr -s 11 ".kot[0:10]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE748";
	rename -uid "A698641C-4368-DAA0-3281-F994370A4480";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 9 1 16 1 23 1 25 1 27 1 34 1 41 1 73 1
		 78 1 86 1;
	setAttr -s 11 ".kit[1:10]"  1 18 18 18 18 18 18 18 
		18 1;
	setAttr -s 11 ".kot[0:10]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE749";
	rename -uid "EAE114CD-4A28-FAE6-386F-FDB52606BE4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 5 9 5 16 5 23 5 25 5 27 5 34 5 41 5 73 5
		 78 5 86 5;
	setAttr -s 11 ".kit[3:10]"  9 18 18 18 18 18 18 1;
	setAttr -s 11 ".kot[0:10]"  5 5 18 5 18 18 18 18 
		18 18 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
createNode animCurveTA -n "CURVE750";
	rename -uid "C1873335-44A8-EBBE-937D-26932D93AB35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0.20306591049533565 5 0.20306591049533565
		 9 0.20306591049533565 16 -45.752290022084445 23 -47.602413599272062 25 -47.62294201621728
		 27 -47.62294201621728 29 -48.988762016947184 34 -48.988762016947184 37 -54.28454282780357
		 41 -54.28454282780357 43 -53.643523750382904 48 -49.65605868695566 73 -49.65605868695566
		 78 7.1109926329451083 86 60.671026019066232;
	setAttr -s 16 ".kit[1:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 0.94503909534509778 0.99990975162305618 
		1 1 1 1 1 1 0.96081165880902131 1 1 0.2607106482674173 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 -0.32695734931229048 -0.013434604911139047 
		0 0 0 0 0 0 0.27720201351479512 0 0 0.96541698652964614 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 0.94503909534509778 0.99990975162305606 
		1 1 1 1 1 1 0.96081165880902142 1 1 0.2607106482674173 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 -0.32695734931229048 -0.013434604911139047 
		0 0 0 0 0 0 0.27720201351479518 0 0 0.96541698652964625 0;
createNode animCurveTA -n "CURVE751";
	rename -uid "5B34480E-435F-7559-FFB0-AB9A47E4D02A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 7.6966608338041365 5 7.6407766164453257
		 9 7.6407766164453257 16 -1.7602472206312605 23 -4.0696836354319492 25 -4.1112741751044046
		 27 -4.1112741751044046 29 -3.897110618346026 34 -3.897110618346026 37 -3.0760049790430308
		 41 -3.0760049790430308 43 -2.6240409614481353 48 -0.17385935237944847 73 -0.17385935237944847
		 78 5.3489918563171859 86 7.3585189828509288;
	setAttr -s 16 ".kit[1:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 0.9393888508429733 0.99962971585570559 
		1 1 1 1 1 1 0.9840285424941646 1 1 0.96949650648663577 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 -0.34285359399008514 -0.027210865077049052 
		0 0 0 0 0 0 0.17801075123938456 0 0 0.24510512828214878 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 0.9393888508429733 0.99962971585570559 
		1 1 1 1 1 1 0.9840285424941646 1 1 0.96949650648663577 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 -0.34285359399008514 -0.027210865077049052 
		0 0 0 0 0 0 0.17801075123938456 0 0 0.24510512828214881 0;
createNode animCurveTA -n "CURVE752";
	rename -uid "FCFBE991-4A32-2932-023B-D88A5AD1B92A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 8.3977712422767787 5 7.6312958206364447
		 9 7.2737397540379689 16 -3.1340315139827326 23 -5.4207373676974102 25 -5.4461099707899443
		 27 -5.4387879546967 29 -5.4818610899978939 34 -5.4274070886326875 37 0.077686850133125207
		 41 0.24711327213803494 43 1.9398154472544824 48 -0.39775823328015253 73 0.38625642122305726
		 78 1.1012966098562589 86 -11.061579954434318;
	setAttr -s 16 ".kit[1:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 0.99322383804098335 0.9298669725024642 
		0.99986214341566915 1 1 1 0.9998983983731442 0.99846647920914267 0.99846647920914278 
		1 1 0.99976240215978651 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 -0.11621707080777059 -0.36789592747012234 
		-0.016604040599323557 0 0 0 0.014254575785371825 0.055359641397851225 0.055359641397851232 
		0 0 0.021797688586020013 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 0.99322383804098346 0.9298669725024642 
		0.99986214341566904 1 1 1 0.9998983983731442 0.99846647920914278 0.99846647920914255 
		1 1 0.99976240215978662 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 -0.11621707080777059 -0.36789592747012234 
		-0.016604040599323553 0 0 0 0.014254575785371827 0.055359641397851232 0.055359641397851218 
		0 0 0.021797688586020013 0 0;
createNode animCurveTU -n "CURVE753";
	rename -uid "DD8DF577-4F8F-2835-3782-9F8106ED9B21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 9 1 16 1 23 1 25 1 27 1 34 1 41 1 73 1
		 78 1 86 1;
	setAttr -s 11 ".kit[3:10]"  9 18 18 18 18 18 18 1;
	setAttr -s 11 ".kot[0:10]"  5 5 18 5 18 18 18 18 
		18 18 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
createNode animCurveTU -n "CURVE754";
	rename -uid "6E379F98-49FC-C927-8738-C59EB92EAD5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0.5 9 0.5 16 0.5 23 0.5 25 0.5 27 0.5
		 34 0.5 41 0.5 73 0.5 78 0.5 86 0.5;
	setAttr -s 11 ".kit[1:10]"  1 18 18 18 18 18 18 18 
		18 1;
	setAttr -s 11 ".kot[0:10]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE756";
	rename -uid "BEDBD3F0-4EA0-4863-EFAF-509E99331B4C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE757";
	rename -uid "1100F05D-4284-841C-3E0B-91A471A99086";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.24853061621693417 9 -0.24853061621693417
		 16 -0.16154490054100723 23 -0.16154490054100723 73 -0.16154490054100723 79 -0.16154490054100723
		 81 -0.16154490054100723 86 -0.16154490054100723;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE758";
	rename -uid "9119C7A6-45BF-EA38-678B-54801B218F5B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE759";
	rename -uid "C9B4FF92-4B49-1487-52C4-FDA539C61812";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE760";
	rename -uid "4F57A446-47E5-CC8A-DF83-6B842797F388";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE761";
	rename -uid "208D4B9F-44D3-150B-482C-489A9CBD40DE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE762";
	rename -uid "4274C6B6-4FAA-62C6-0344-2393F41B3317";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE763";
	rename -uid "4DDEC125-4BD1-9C7E-2C5E-D6BA3A3810F0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -17.93649337706778 9 -17.93649337706778
		 16 -8.4144711657247804 23 -8.4144711657247804 73 -8.4144711657247804 79 -8.4144711657247804
		 81 -8.4144711657247804 86 -8.4144711657247804;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE765";
	rename -uid "ED7F41D3-4213-5FD4-8929-4FBCDD2B033B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE766";
	rename -uid "7E375867-4F4A-8042-52E4-4CA5F94995BE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.0092654261404892801 9 0.0092654261404892801
		 16 0.12518922600653587 23 0.12518922600653587 73 0.12518922600653587 79 0.12518922600653587
		 81 0.12518922600653587 86 0.12518922600653587;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE767";
	rename -uid "82BF5AB8-4631-6613-62FD-95BECD0BA493";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 -0.0088005453263979155 23 -0.0088005453263979155
		 73 -0.0088005453263979155 79 -0.0088005453263979155 81 -0.0088005453263979155 86 -0.0088005453263979155;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE768";
	rename -uid "A9C4BB61-497F-B01B-3C70-729D4FE3A5FE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE769";
	rename -uid "091E3976-43E1-8818-E8AF-9BB0F6FF7A89";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE770";
	rename -uid "05DA604C-4456-889B-993F-10BA0C56B2E0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE771";
	rename -uid "D45190B3-4418-F199-8AD7-B1AB3B5FF6FD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -5.0419375379391509 9 -5.0419375379391509
		 16 -6.1173172362751087 23 -6.1173172362751087 73 -6.1173172362751087 79 -6.1173172362751087
		 81 -6.1173172362751087 86 -6.1173172362751087;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE772";
	rename -uid "EE19B9FA-45D1-E35C-966B-B2A4B5C74DA1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE773";
	rename -uid "A94A06B6-4BC7-4FDF-4311-CFA5759F5552";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE775";
	rename -uid "402983C9-4724-AB77-5F12-98A08E7A9109";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.48312696000074384 23 0.48312696000074384
		 78 0.48312696000074384 81 0.48312696000074384 86 0.48312696000074384;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTA -n "CURVE776";
	rename -uid "FC5E7FD7-4B73-B6C7-3F70-CCB47C5CD6E2";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.48312696000074384 23 0.48312696000074384
		 78 0.48312696000074384 81 0.48312696000074384 86 0.48312696000074384;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTA -n "CURVE777";
	rename -uid "76A77432-45C5-E951-52EF-C2ABB7982062";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.48312696000074384 23 0.48312696000074384
		 78 0.48312696000074384 81 0.48312696000074384 86 0.48312696000074384;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTL -n "CURVE779";
	rename -uid "F921191B-417E-F3F1-78DE-5C80691D69BE";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE780";
	rename -uid "D894E559-49E1-0EF2-A739-21A78D6A5A75";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE781";
	rename -uid "0159859E-4C5E-132B-0CC2-36B19E6BB5D0";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE782";
	rename -uid "D675DA1D-4757-CD67-6CBD-318D8756D83B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE783";
	rename -uid "D3687888-4E61-D5C3-338E-3DADEEFD4763";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE784";
	rename -uid "C4BB3AC2-41ED-4D55-B3F5-1EBBB3577A30";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE785";
	rename -uid "DCA3E57A-44A7-0AB6-0BE9-079929BFE355";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE786";
	rename -uid "7A680534-47F8-65B3-484A-82B3305E83F6";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE787";
	rename -uid "D7FCC16D-4107-DA1C-5BF9-F7ADA8187278";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE789";
	rename -uid "1E6BE0A4-470A-CCF2-28C0-D5BBF5661EFA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE790";
	rename -uid "3EAC401F-4492-4CA6-0A3B-0D96C9CF5F88";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE791";
	rename -uid "1725B888-4735-CBB9-089F-BFB8A4948F7A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE792";
	rename -uid "B4461E3C-4C70-8B51-0D53-16852E4E37C9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE793";
	rename -uid "89DDF5BE-453F-A157-4E96-D882112E40AA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE794";
	rename -uid "54F3F6A8-4D98-50C7-851B-3A87FD40FCB7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE795";
	rename -uid "8B4A0AF3-4886-FE61-83D7-11B4FAC0339F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -6.0339682112894195 9 -6.0339682112894195
		 17 -6.0339682112894195 23 -6.0339682112894195 73 -6.0339682112894195 78 -6.0339682112894195
		 81 -6.0339682112894195 86 -6.0339682112894195;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE796";
	rename -uid "0D26A178-4915-7FC3-3895-5BA51551BF9B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE797";
	rename -uid "6A97D0EB-4474-BA7C-1D3B-D991E91DE723";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -8.2735073997334325 9 -8.2735073997334325
		 17 -8.2735073997334325 23 -8.2735073997334325 73 -8.2735073997334325 78 -8.2735073997334325
		 81 -8.2735073997334325 86 -8.2735073997334325;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE799";
	rename -uid "883F4AC1-4183-F01F-AA96-18B6DBB5765B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE800";
	rename -uid "330B83AC-4691-F5E4-AA58-B088DEBF035A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE801";
	rename -uid "4AB3C467-4936-78D7-77EA-6382FB0D86EB";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE802";
	rename -uid "08362CF2-4058-1D83-079B-B3A397F28B50";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE803";
	rename -uid "936818A3-4B06-7ABE-63EF-37B58BF58F8D";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000004 20 1.0000000000000004
		 23 1.0000000000000004 78 1.0000000000000004 81 1.0000000000000004 86 1.0000000000000004;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE804";
	rename -uid "814B52FC-4855-2FE8-C80D-E9BEE29DD828";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE805";
	rename -uid "EB7B41E9-4878-3633-BF25-FF934CF7675C";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE806";
	rename -uid "CA3FA201-4052-9C8E-C1C9-50B9E0F216E2";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE807";
	rename -uid "6BC4F720-413A-7914-C448-CD9D54702AE1";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE809";
	rename -uid "CEBE3092-479B-6F3A-185C-179575D02113";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 20 0 23 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  2.3200000000000003 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  0 2.3200000000000003 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "CURVE810";
	rename -uid "1EBBBF3D-469F-FC76-5876-77B53C156F03";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 20 0 23 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  2.3200000000000003 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  0 2.3200000000000003 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "CURVE811";
	rename -uid "667EB953-41D2-CA39-9D30-518033819ECB";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 20 0 23 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  2.3200000000000003 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  0 2.3200000000000003 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "CURVE812";
	rename -uid "4EB127D3-49A0-6CBE-4A48-C294BD08D3B0";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 20 1 23 1 81 1 86 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  2.3200000000000003 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  0 2.3200000000000003 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "CURVE813";
	rename -uid "5D5A68DC-4871-610C-C986-809E68EA0BFA";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000004 20 1.0000000000000004
		 23 1.0000000000000004 81 1.0000000000000004 86 1.0000000000000004;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  2.3200000000000003 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  0 2.3200000000000003 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "CURVE814";
	rename -uid "BC870295-40E4-A906-558A-7B960FAF3193";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000004 20 1.0000000000000004
		 23 1.0000000000000004 81 1.0000000000000004 86 1.0000000000000004;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  2.3200000000000003 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  0 2.3200000000000003 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "CURVE815";
	rename -uid "D35EBBF7-4B2B-8F92-3B76-0BB6E4FE3F82";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 20 0 23 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  2.3200000000000003 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  0 2.3200000000000003 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "CURVE816";
	rename -uid "66CE52DD-44C3-874E-516D-BB96CEBEBD85";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 20 0 23 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  2.3200000000000003 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  0 2.3200000000000003 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "CURVE817";
	rename -uid "996A17D9-4109-17E1-680F-AE86BCB8B32A";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 20 0 23 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  2.3200000000000003 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  0 2.3200000000000003 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "CURVE819";
	rename -uid "138DD221-4DB2-39C3-5814-73A3604FD19E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE820";
	rename -uid "6CC1FFC5-40E5-8050-B1CB-0986BC4EBC31";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE821";
	rename -uid "8633E3E1-43D9-DF77-8222-C3AA7F8E196A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE822";
	rename -uid "98CD49A0-4344-09AB-DD8C-6B80AF2DFFC9";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE823";
	rename -uid "606BF61B-4810-7148-69DA-1389C925498E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE824";
	rename -uid "9351B181-4F44-2624-0A3A-5EA0ED9D6B9C";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE825";
	rename -uid "515B432E-41A2-63BE-62B8-DCAFCFF424FE";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE826";
	rename -uid "97A97879-4291-0247-AAD1-16ACA01B61A6";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE827";
	rename -uid "BCBCEF9F-40A4-1314-95B3-B8890B9F402B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE829";
	rename -uid "D5F11B23-46B4-72D0-1175-B4B6E23A7870";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.48312696000074384 23 0.48312696000074384
		 78 0.48312696000074384 81 0.48312696000074384 86 0.48312696000074384;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTA -n "CURVE830";
	rename -uid "CB5A3FDD-4E3F-7F11-4DDF-0484EEFDAD94";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.48312696000074384 23 0.48312696000074384
		 78 0.48312696000074384 81 0.48312696000074384 86 0.48312696000074384;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTA -n "CURVE831";
	rename -uid "D694E6B5-4FD3-BCA2-94A5-CE96636B0D53";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.48312696000074384 23 0.48312696000074384
		 78 0.48312696000074384 81 0.48312696000074384 86 0.48312696000074384;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTU -n "CURVE832";
	rename -uid "8D751396-4C32-B8AC-3BFF-5E8FFCDF4518";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "CURVE834";
	rename -uid "663B3AB6-4AFD-24D6-814C-20A938E7A3F1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE835";
	rename -uid "FC60BF1D-425C-F498-C9BB-0CA4FCF4792B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE836";
	rename -uid "A58C6832-4AED-462F-C9F1-1A957B91F3C5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE837";
	rename -uid "CB42B076-4CCF-B831-99D1-8EA0345336AD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE838";
	rename -uid "F3C26373-47EE-CD7A-8766-76BF2ECA6FD3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE839";
	rename -uid "B50FC328-4734-AAC2-8296-AF9BBD149988";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE840";
	rename -uid "A0550851-438C-B35E-B9EE-94BA650463CF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE841";
	rename -uid "EB789625-4FFA-239E-FA17-17A085D40EF3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE842";
	rename -uid "F4F62AD5-462F-FCB0-80C1-5A9C1D0DD700";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE844";
	rename -uid "A6D5E35B-4C2E-D1D3-51B8-20BD086F1464";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE845";
	rename -uid "E68A4317-49A2-B7F6-F999-84B097E6A51C";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE846";
	rename -uid "1811D0E5-43BE-BEF4-4A45-0BA518AE4AD6";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE847";
	rename -uid "005FBD0C-4626-D541-F944-7CABFD322104";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE848";
	rename -uid "E899B10D-4CD1-DE22-CB23-DAB4D2526DDC";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE849";
	rename -uid "A510ADCD-47F3-0A99-1AA4-A0BBDD897A62";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE850";
	rename -uid "26AAEE15-4E0B-64B7-45FC-7F8A9C3D21B9";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE851";
	rename -uid "633FE0F7-4801-C612-91AE-B28288E1973F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE852";
	rename -uid "DFBF2F40-4461-61B6-6883-BE9B0AC49012";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE854";
	rename -uid "2D4B5ED3-42EB-B096-D6BF-85B14BA89C50";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE855";
	rename -uid "43952FEE-47C6-33E4-B83F-81B432BD438C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE856";
	rename -uid "953A6B42-4B25-31F0-49CC-95B52157EB04";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE857";
	rename -uid "BDCD1653-400E-9EFF-9B11-1DB7BF860BAE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE858";
	rename -uid "75AD7574-4812-B466-8512-2E82E9AE6B26";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE859";
	rename -uid "A4582A72-4161-B0FD-6F35-5A9636B88BA1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE860";
	rename -uid "504C4F6B-458E-DAFF-D806-24B8401F2B37";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE861";
	rename -uid "1249019A-4A1B-6BAB-B773-EF8E0AE19AB7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE862";
	rename -uid "DEF172DF-44FF-9D11-9147-C28DFB471A57";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE864";
	rename -uid "2123014E-493F-302D-529A-D4BF0EFE2754";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 -0.15342748371416426 23 -0.15342748371416426
		 73 -0.15342748371416426 79 -0.15342748371416426 81 -0.15342748371416426 86 -0.15342748371416426;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE865";
	rename -uid "B1AFF903-4B9F-6AFB-526D-2C8BCE13271A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.088075642739591203 9 -0.088075642739591203
		 16 -0.10991356562750811 23 -0.10991356562750811 73 -0.10991356562750811 79 -0.10991356562750811
		 81 -0.10991356562750811 86 -0.10991356562750811;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE866";
	rename -uid "115FB79E-4108-4F36-E2E9-5C849DFB6473";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE867";
	rename -uid "2BBBF7DD-481E-8981-482B-13BE86BCEE72";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE868";
	rename -uid "E1715D52-4617-26B7-F070-82AACC781C55";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE869";
	rename -uid "8F2F7645-4512-895F-333A-A2A8FBD14C5E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE870";
	rename -uid "C084133E-4212-1453-FC0D-038CF08C1A46";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE871";
	rename -uid "19845E8A-4584-ED68-E9DD-76924B44898B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE872";
	rename -uid "53B2BBEF-4D8B-A727-24DA-0E8E4B835EAF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE873";
	rename -uid "3E162CC8-4001-EB41-213B-829B20ECB703";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE874";
	rename -uid "B81ED186-4F66-2C10-89B5-E7AFDDDDB588";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -26.297730330546614 9 -26.297730330546614
		 16 -16.933891694741416 23 -16.933891694741416 73 -16.933891694741416 79 -16.933891694741416
		 81 -16.933891694741416 86 -16.933891694741416;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE876";
	rename -uid "D8529817-4603-50EF-A000-468B3045AA99";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE877";
	rename -uid "38395746-46F8-0E39-2AB6-98BB9AD43E0A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.24853061621693417 9 -0.24853061621693417
		 16 -0.16154490054100723 23 -0.16154490054100723 73 -0.16154490054100723 79 -0.16154490054100723
		 81 -0.16154490054100723 86 -0.16154490054100723;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE878";
	rename -uid "812977DC-4841-AA1C-D755-D7A10FE3E9E4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE879";
	rename -uid "DCD073AE-4D43-9E6A-9A71-17BD740064C1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE880";
	rename -uid "21D700C9-4A05-826D-231A-12B0127E2757";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE881";
	rename -uid "E6FC81A7-4163-9EC6-A67D-D8B2F84BAA47";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE882";
	rename -uid "90C8A0C7-48F2-42E0-B6DE-3E8DAB61D3F1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE883";
	rename -uid "D9445DB4-4807-2281-083D-C2B639AAC657";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 17.93649337706778 9 17.93649337706778
		 16 7.4872384634489624 23 7.4872384634489624 73 7.4872384634489624 79 7.4872384634489624
		 81 7.4872384634489624 86 7.4872384634489624;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE885";
	rename -uid "C50EEEA3-43DA-8687-B4B8-41B12E45A316";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE886";
	rename -uid "0D352260-4068-B2F2-62E4-2483ABA302C7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE887";
	rename -uid "A574EE67-4241-D961-645A-7E8F1D338151";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE888";
	rename -uid "7C66A803-4227-42A5-3541-2FA1848E044E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE889";
	rename -uid "FEFD5FA0-40D5-7810-4F38-57B48F785035";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE890";
	rename -uid "BEA9CA6B-47E1-2D35-3550-6BAF5BCC7C0A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE891";
	rename -uid "F2C88C90-4B73-C3E3-70C7-DE9394288921";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE892";
	rename -uid "EB306489-4F8F-B11C-7473-E8ABB8C844A4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE893";
	rename -uid "D44D5637-4E76-DEB3-ED3F-DB9B14887DB5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -60.11198659936781 9 -60.11198659936781
		 17 -60.11198659936781 23 -60.11198659936781 73 -60.11198659936781 78 -60.11198659936781
		 81 -60.11198659936781 86 -60.11198659936781;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE895";
	rename -uid "583B719C-4AFB-D0BC-34AD-77B8A1AA888B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE896";
	rename -uid "01E5FFD4-41DB-94C6-794B-6A9CEE0EFF12";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE897";
	rename -uid "FF6F1118-4D5C-A5C6-6000-DFA026E03FEF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE898";
	rename -uid "9CB1F022-424B-F3ED-F7B2-64A6853338AB";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE899";
	rename -uid "5B9E10D7-4B5A-5432-059C-3EA4EFA2189B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE900";
	rename -uid "F1FDA369-4301-9A6B-2E7A-E6B76F8A7C25";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE902";
	rename -uid "57A099D4-4259-B2E8-2AEE-CE939775EA44";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE903";
	rename -uid "4CF29832-409C-F6F7-B54B-029CAFDDB1D7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE904";
	rename -uid "ACD251D3-4067-10DE-E832-659AA68F4956";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE905";
	rename -uid "0EDA0D51-4626-0B24-47F0-B98B7835B960";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.65564798580785955 9 0.65564798580785955
		 16 0.65564798580785955 23 0.65564798580785955 73 0.65564798580785955 79 0.65564798580785955
		 81 0.65564798580785955 86 0.65564798580785955;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE906";
	rename -uid "F3C8CA86-4972-7FAB-5565-279E81CCCDE8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.65564798580785955 9 0.65564798580785955
		 16 0.65564798580785955 23 0.65564798580785955 73 0.65564798580785955 79 0.65564798580785955
		 81 0.65564798580785955 86 0.65564798580785955;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE907";
	rename -uid "F69A106B-4363-4A93-4A87-F19E161431DE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.65564798580785955 9 0.65564798580785955
		 16 0.65564798580785955 23 0.65564798580785955 73 0.65564798580785955 79 0.65564798580785955
		 81 0.65564798580785955 86 0.65564798580785955;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE908";
	rename -uid "70DED047-4957-1C8E-FA21-D8B8ADE4CC81";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE909";
	rename -uid "92DD7813-4AA6-E100-B2FA-BA87D1DF98FA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE910";
	rename -uid "05B481CC-4EF8-6108-D3DC-619A23168CCA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE912";
	rename -uid "8059D892-4C7D-E1BF-B55B-4B8E4C98369A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE913";
	rename -uid "90FD7DD7-45AF-14C3-E10A-AEA7AF363133";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE914";
	rename -uid "AB100277-4CF4-9669-151B-EC92306436BC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE915";
	rename -uid "11A56A4D-468F-633B-43B8-59A4362672A4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE916";
	rename -uid "DEB43659-444A-0000-329A-799561F4CE6C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1.0000000000000009 9 1.0000000000000009
		 17 1.0000000000000009 23 1.0000000000000009 73 1.0000000000000009 78 1.0000000000000009
		 81 1.0000000000000009 86 1.0000000000000009;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE917";
	rename -uid "C2E9CFC8-4A9B-F722-8751-7481AA370D71";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE918";
	rename -uid "24980838-4EB9-AC56-88DC-69B959E7F426";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE919";
	rename -uid "6EE2DAA0-4FBF-60F5-3D06-C9B6187E013E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE920";
	rename -uid "3250C93C-422E-2A83-F74B-29B6D74258C4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE922";
	rename -uid "926AB349-4CC0-0AD0-73ED-02AAA2E854A8";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE923";
	rename -uid "5984BC20-49E3-26C1-167B-FDAB0889C7EB";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE924";
	rename -uid "F3600C88-44BF-685C-1C8A-769694B01FD9";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE925";
	rename -uid "CA628BA4-4DB3-AED9-5138-75AC686EF49C";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE926";
	rename -uid "6225B78A-41C2-846D-90FB-45AEB2EE62B2";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE927";
	rename -uid "87BAFD80-4D4B-63F6-B7C7-8A94909EB335";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE928";
	rename -uid "FF102FB2-46FB-53A4-A67D-28B720B0FAD8";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE929";
	rename -uid "534BBAF7-4183-BDA9-AA91-A9A2DAB3AEC5";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE930";
	rename -uid "B7168445-4060-EC21-3ACC-8CAC1C57C077";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE932";
	rename -uid "90AC5AA4-40E7-9A10-64A9-DF9F98573D05";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE933";
	rename -uid "1C3A1BC0-42A8-ED4D-01BF-BDBB5DF7C528";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE934";
	rename -uid "C731A51F-4CE6-C982-210D-588D49E42B3C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE935";
	rename -uid "B4297226-4448-F992-0096-F4B62CEB9D0C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE936";
	rename -uid "14FAA0B3-483A-03E5-ADAB-D0AB3F534C4D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE937";
	rename -uid "43944F36-41D9-7BFF-080F-B38F407426C2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE938";
	rename -uid "53CE41C0-47D8-3317-B571-A4A7D27DC6AF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE939";
	rename -uid "2C7AD593-45B6-2324-6E9C-36A35A14C9A8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE940";
	rename -uid "0F778BB9-47EF-FE14-D500-F39C1556163C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE942";
	rename -uid "F58D628B-4B7E-2F5C-8F55-B78F67B5EEB7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE943";
	rename -uid "ACFC1646-48E7-B4D5-0A75-FEB60B76C95B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE944";
	rename -uid "6678646F-49D3-B918-495A-E2888C4EE971";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE945";
	rename -uid "C3BD65A3-4590-17F1-9854-6388118ABFE3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE946";
	rename -uid "74148143-4257-ADC3-7B4C-1EA99457CDEF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 100 9 100 17 100 23 100 73 100 78 100
		 81 100 86 100;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE947";
	rename -uid "465982E7-4D77-A6B1-3D59-13B8CDC48C66";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE948";
	rename -uid "FE867795-4AB1-BA7D-A28D-54B83119C122";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -12.017506005678245 9 -12.017506005678245
		 17 -12.017506005678245 23 -12.017506005678245 73 -12.017506005678245 78 -12.017506005678245
		 81 -12.017506005678245 86 -12.017506005678245;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE949";
	rename -uid "9D7173F3-407E-C9B4-1506-0FB4CA03C6AF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE950";
	rename -uid "26151613-4FD9-5D24-1E02-6D95E4895D3D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE951";
	rename -uid "7EFDA0A1-4F55-C51D-BD87-D3AA88A8627C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE952";
	rename -uid "E86BCBE6-4274-A20C-052D-6AB049F762EA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[3:7]"  9 18 9 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 5 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 0 0.20000000000000018 
		0 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE953";
	rename -uid "C94AB4A0-4BBB-522F-B08C-3AB4AB386BD7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE954";
	rename -uid "1F7F53D1-436E-D00C-0237-9FA3EEECF20C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.8 9 0.8 17 0.8 23 0.8 73 0.8 78 0.8
		 81 0.8 86 0.8;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE955";
	rename -uid "D8A898AB-49CB-9A34-1C82-129F7A43C5DC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE956";
	rename -uid "0E8BCC35-4958-8B52-686D-5481A047716C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 6.3764453434747086 9 6.3764453434747086
		 17 6.3764453434747086 23 6.3764453434747086 73 6.3764453434747086 78 6.3764453434747086
		 81 6.3764453434747086 86 6.3764453434747086;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE957";
	rename -uid "483DE2AE-430A-F0EE-4045-CF98794979E6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE958";
	rename -uid "FF4B494E-451D-3DD5-54A7-39A2A0A22BD5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE959";
	rename -uid "5FF2417D-4659-DCF0-F238-89A2DB9C8DD5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 25 9 25 17 25 23 25 73 25 78 25 81 25
		 86 25;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE960";
	rename -uid "F32A1455-46FA-0393-A75E-4DA4B9CF79D6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE961";
	rename -uid "A969B886-4096-F84E-CB1E-F4B8FC4735E9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE962";
	rename -uid "FAAFB60C-45C1-B3EC-645D-7D82462E1213";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE963";
	rename -uid "21A991E5-4350-7BD7-10DD-889D405E62D3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 50 9 50 17 50 23 50 73 50 78 50 81 50
		 86 50;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE965";
	rename -uid "870284CA-4DF3-DF09-191A-59AEBF2CCE08";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE966";
	rename -uid "D7DF4203-4174-0B64-4C1C-B2AC378D0999";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE967";
	rename -uid "7B63BEE1-4DC8-3771-85EA-4C9C05191768";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE968";
	rename -uid "D64C3299-4F09-2D70-B9AA-ECAC5445F135";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE969";
	rename -uid "42C66C54-4517-8076-6021-E38B5DAAFF0C";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE970";
	rename -uid "A757DA84-4D11-7EC5-8664-74BF4AC19820";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000004 20 1.0000000000000004
		 23 1.0000000000000004 78 1.0000000000000004 81 1.0000000000000004 86 1.0000000000000004;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE971";
	rename -uid "058EB80D-496C-2297-58EC-86B6C9706C07";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE972";
	rename -uid "A716F9D6-4012-C1FD-D14E-F297539742BC";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE973";
	rename -uid "5AFAC749-43DC-1C8E-F60F-E3A33808F61F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE975";
	rename -uid "EBFC29A9-4AD2-D1D3-639C-BD88A3E3EB0A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 9 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0.55999999999999872 2.2 0.12000000000000011 
		0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE976";
	rename -uid "A94D489E-4054-4FD5-47A7-FCBD82A879CA";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 9 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0.55999999999999872 2.2 0.12000000000000011 
		0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE977";
	rename -uid "8D2D3A31-4C70-38BD-3F6E-329BAFB8B681";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 9 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0.55999999999999872 2.2 0.12000000000000011 
		0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE978";
	rename -uid "69E4433F-46A9-90FD-55F4-C1872D0C8654";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 -0.0015321780389568771 9 -0.0015321780389568771
		 23 -0.0011308703306831117 78 0.017580296998217396 81 0.042778092857653265 86 0.042778092857653265;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0.55999999999999872 2.2 0.12000000000000011 
		0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 8.2548802556904692e-005 3.9639102350351242e-005 
		0 0;
createNode animCurveTA -n "CURVE979";
	rename -uid "3153AE6D-4693-2E11-4CFE-CC8D66794718";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 10.766867472751413 9 10.766867472751413
		 23 10.766867472751413 78 10.766867472751413 81 10.766867472751413 86 10.766867472751413;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0.55999999999999872 2.2 0.12000000000000011 
		0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE980";
	rename -uid "CB265E63-4897-60C9-9B4F-0C8BC0D272A6";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0.011248153219870795 9 0.011248153219870795
		 23 0.0028950369550252123 78 -0.1079334965356927 81 -0.12737492508824144 86 -0.12737492508824144;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0.55999999999999872 2.2 0.12000000000000011 
		0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 -0.0016580604462410188 -0.0001176020562467092 
		0 0;
createNode animCurveTU -n "CURVE982";
	rename -uid "C244222F-4016-4F64-D6C2-40B0FC0E8CA8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 6 86 6;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "CURVE983";
	rename -uid "83EEE14E-4050-8A14-FE1D-C0BED32078FC";
	setAttr ".tan" 18;
	setAttr -s 25 ".ktv[0:24]"  1 2.6882942553540552 2 2.6882942553540552
		 4 3.7113467697160201 9 3.1527403945232826 18 -0.0048256571645177715 23 -0.67810563529416079
		 26 -0.67810563529416101 27 -3.3972230393573426 28 -4.7979804899353447 33.999999822845808 -4.7979804899353447
		 34 -4.7979804899353447 35 -5.8272949887920422 41 -5.8272949887920422 44 0.42791314277146153
		 49 0.42791314277146153 58 0.42791314277146153 59 2.2584167128233781 73 2.2584167128233781
		 76 0.66245094102181867 78 4.8370371648458335 79 4.9927878326668313 81 4.9927878326668313
		 82 4.9927878326668313 85 -0.89857614042125689 86 -0.89857614042125689;
	setAttr -s 25 ".kyts[4:24]" yes no no yes no no no no no no no no no 
		no no no no no no no no;
	setAttr -s 25 ".kit[11:24]"  1 18 18 18 18 18 18 18 
		18 18 18 18 1 18;
	setAttr -s 25 ".kot[0:24]"  5 1 18 18 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 25 ".kix[11:24]"  0.039999999999999147 0.24 0.12000000000000011 
		0.19999999999999996 0.35999999999999988 0.040000000000000036 0.56 0.12000000000000011 
		0.080000000000000071 0.040000000000000036 0.080000000000000071 0.039999999999999591 
		0.11999999999999922 0.040000000000000036;
	setAttr -s 25 ".kiy[11:24]"  0 0 0 0 0 0 0 0 0.93450400692598734 0 0 
		0 0 0;
	setAttr -s 25 ".kox[1:24]"  0.080000000000000071 0.19999999999999998 
		0.36 0.20000000000000007 0.12 0.040000000000000036 0.040000000000000036 0.23999999291383212 
		7.0861678747036194e-009 0.039999999999999813 0.19999999999999929 0.12000000000000011 
		0.19999999999999996 0.35999999999999988 0.040000000000000036 0.56 0.12000000000000011 
		0.080000000000000071 0.040000000000000036 0.080000000000000071 0.039999999999999591 
		0.12000000000000011 0 0.040000000000000036;
	setAttr -s 25 ".koy[1:24]"  0 0 -2.3889679887089175 -1.3681592963633731 
		0 0 -2.0599374273205919 0 0 0 0 0 0 0 0 0 0 0 0.46725200346299367 0 0 0 0 0;
createNode animCurveTL -n "CURVE984";
	rename -uid "3695BCAE-4A6A-2C47-A2DF-E180B41A4D38";
	setAttr ".tan" 18;
	setAttr -s 24 ".ktv[0:23]"  1 -5.0100667501225846 2 -5.0100667501225846
		 4 -3.0866517576027084 9 -3.8923196861485598 18 2.4890388536048649 23 4.3638152545367257
		 26 4.3638152545367257 27 3.9505386433404883 28 3.7376385709060629 33.999999822845808 3.7376385709060629
		 34 3.7376385709060629 35 4.1257956126401671 41 4.1257956126401671 44 5.8466280692007357
		 49 5.8466280692007357 58 5.8466280692007357 59 5.1836248453984206 73 5.1836248453984206
		 76 3.8232688084439879 79 0.65704013243255988 81 0.65704013243255988 82 0.65704013243255988
		 85 4.9871503515805236 86 4.9871503515805236;
	setAttr -s 24 ".kyts[4:23]" yes no no yes no no no no no no no no no 
		no no no no no no no;
	setAttr -s 24 ".kit[11:23]"  1 18 18 18 18 18 18 18 
		18 18 18 1 18;
	setAttr -s 24 ".kot[0:23]"  5 1 18 18 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 24 ".kix[11:23]"  0.039999999999999147 0.24 0.12000000000000011 
		0.19999999999999996 0.35999999999999988 0.040000000000000036 0.56 0.12000000000000011 
		0.12000000000000011 0.080000000000000071 0.039999999999999591 0.11999999999999922 
		0.040000000000000036;
	setAttr -s 24 ".kiy[11:23]"  0 0 0 0 0 0 0 -2.2632923564829301 0 0 0 
		0 0;
	setAttr -s 24 ".kox[1:23]"  0.080000000000000071 0.19999999999999998 
		0.36 0.20000000000000007 0.12 0.040000000000000036 0.040000000000000036 0.23999999291383212 
		7.0861678747036194e-009 0.039999999999999813 0.19999999999999929 0.12000000000000011 
		0.19999999999999996 0.35999999999999988 0.040000000000000036 0.56 0.12000000000000011 
		0.12000000000000011 0.080000000000000071 0.039999999999999591 0.12000000000000011 
		0 0.040000000000000036;
	setAttr -s 24 ".koy[1:23]"  0 0 0 2.9486196216733167 0 0 -0.31308834181533141 
		0 0 0 0 0 0 0 0 0 0 -2.2632923564829301 0 0 0 0 0;
createNode animCurveTL -n "CURVE985";
	rename -uid "BE28390D-458A-6613-3240-2699C3BB0770";
	setAttr ".tan" 18;
	setAttr -s 24 ".ktv[0:23]"  1 0.20436279988082484 2 0.20436279988082484
		 4 1.3240818888786692 9 0.83101265830015236 18 -1.7847167253368406 23 -2.2819866066412571
		 26 -2.2819866066412566 27 -0.48305605375880156 28 0.44366574621094768 33.999999822845808 0.44366574621094768
		 34 0.44366574621094768 35 -1.3515974700218878 41 -1.3515974700218878 44 -2.8345602047700416
		 49 -2.8345602047700416 58 -2.8345602047700416 59 -3.7240045733756038 73 -3.7240045733756038
		 76 -2.4757362456572785 79 0.4296082871071093 81 0.4296082871071093 82 0.4296082871071093
		 85 4.7363668141292719 86 4.7363668141292719;
	setAttr -s 24 ".kyts[4:23]" yes no no yes no no no no no no no no no 
		no no no no no no no;
	setAttr -s 24 ".kit[11:23]"  1 18 18 18 18 18 18 18 
		18 18 18 1 18;
	setAttr -s 24 ".kot[0:23]"  5 1 18 18 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 24 ".kix[11:23]"  0.039999999999999147 0.24 0.12000000000000011 
		0.19999999999999996 0.35999999999999988 0.040000000000000036 0.56 0.12000000000000011 
		0.12000000000000011 0.080000000000000071 0.039999999999999591 0.11999999999999922 
		0.040000000000000036;
	setAttr -s 24 ".kiy[11:23]"  0 0 0 0 0 0 0 2.0768064302413567 0 0 0 
		0 0;
	setAttr -s 24 ".kox[1:23]"  0.080000000000000071 0.19999999999999998 
		0.36 0.20000000000000007 0.12 0.040000000000000036 0.040000000000000036 0.23999999291383212 
		7.0861678747036194e-009 0.039999999999999813 0.19999999999999929 0.12000000000000011 
		0.19999999999999996 0.35999999999999988 0.040000000000000036 0.56 0.12000000000000011 
		0.12000000000000011 0.080000000000000071 0.039999999999999591 0.12000000000000011 
		0 0.040000000000000036;
	setAttr -s 24 ".koy[1:23]"  0 0 -1.9985133948528278 -1.1117854517647894 
		0 0 1.362826176426102 0 0 0 0 0 0 0 0 0 0 2.0768064302413567 0 0 0 0 0;
createNode animCurveTA -n "CURVE986";
	rename -uid "9D869353-4CAD-8B4C-D1F0-7983CD798A60";
	setAttr ".tan" 18;
	setAttr -s 22 ".ktv[0:21]"  1 0 2 0 4 0 9 0 18 0 23 0 27 0 28 0 33.999999822845808 0
		 34 0 35 0 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 82 0 86 0;
	setAttr -s 22 ".kyts[4:21]" yes no yes no no no no no no no no no no 
		no no no no no;
	setAttr -s 22 ".kit[10:21]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 22 ".kot[0:21]"  5 1 18 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 22 ".kix[10:21]"  0.039999999999999147 0.24 0.12000000000000011 
		0.19999999999999996 0.35999999999999988 0.040000000000000036 0.56 0.12000000000000011 
		0.12000000000000011 0.080000000000000071 0.040000000000000924 0.16000000000000014;
	setAttr -s 22 ".kiy[10:21]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[1:21]"  0.080000000000000071 0.19999999999999998 
		0.36 0.20000000000000007 0.16000000000000003 0.040000000000000036 0.23999999291383212 
		7.0861678747036194e-009 0.039999999999999813 0.19999999999999929 0.12000000000000011 
		0.19999999999999996 0.35999999999999988 0.040000000000000036 0.56 0.12000000000000011 
		0.12000000000000011 0.080000000000000071 0.039999999999999591 0 0.16000000000000014;
	setAttr -s 22 ".koy[1:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTA -n "CURVE987";
	rename -uid "5431B966-4BDC-1652-A71C-589028F5AEF2";
	setAttr ".tan" 18;
	setAttr -s 22 ".ktv[0:21]"  1 0 2 0 4 0 9 0 18 0 23 0 27 0 28 0 33.999999822845808 0
		 34 0 35 0 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 82 0 86 0;
	setAttr -s 22 ".kyts[4:21]" yes no yes no no no no no no no no no no 
		no no no no no;
	setAttr -s 22 ".kit[10:21]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 22 ".kot[0:21]"  5 1 18 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 22 ".kix[10:21]"  0.039999999999999147 0.24 0.12000000000000011 
		0.19999999999999996 0.35999999999999988 0.040000000000000036 0.56 0.12000000000000011 
		0.12000000000000011 0.080000000000000071 0.040000000000000924 0.16000000000000014;
	setAttr -s 22 ".kiy[10:21]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[1:21]"  0.080000000000000071 0.19999999999999998 
		0.36 0.20000000000000007 0.16000000000000003 0.040000000000000036 0.23999999291383212 
		7.0861678747036194e-009 0.039999999999999813 0.19999999999999929 0.12000000000000011 
		0.19999999999999996 0.35999999999999988 0.040000000000000036 0.56 0.12000000000000011 
		0.12000000000000011 0.080000000000000071 0.039999999999999591 0 0.16000000000000014;
	setAttr -s 22 ".koy[1:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTA -n "CURVE988";
	rename -uid "490FD469-4038-F5F9-8B80-74922E992FCE";
	setAttr ".tan" 18;
	setAttr -s 22 ".ktv[0:21]"  1 0 2 0 4 0 9 0 18 0 23 0 27 0 28 0 33.999999822845808 0
		 34 0 35 0 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 82 0 86 0;
	setAttr -s 22 ".kyts[4:21]" yes no yes no no no no no no no no no no 
		no no no no no;
	setAttr -s 22 ".kit[10:21]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 22 ".kot[0:21]"  5 1 18 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 22 ".kix[10:21]"  0.039999999999999147 0.24 0.12000000000000011 
		0.19999999999999996 0.35999999999999988 0.040000000000000036 0.56 0.12000000000000011 
		0.12000000000000011 0.080000000000000071 0.040000000000000924 0.16000000000000014;
	setAttr -s 22 ".kiy[10:21]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[1:21]"  0.080000000000000071 0.19999999999999998 
		0.36 0.20000000000000007 0.16000000000000003 0.040000000000000036 0.23999999291383212 
		7.0861678747036194e-009 0.039999999999999813 0.19999999999999929 0.12000000000000011 
		0.19999999999999996 0.35999999999999988 0.040000000000000036 0.56 0.12000000000000011 
		0.12000000000000011 0.080000000000000071 0.039999999999999591 0 0.16000000000000014;
	setAttr -s 22 ".koy[1:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTL -n "CURVE990";
	rename -uid "D9234214-4FAE-0A21-93DE-BFBEE2681B3F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE991";
	rename -uid "9769E007-41AA-DD87-0FF5-57BCF251538A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE992";
	rename -uid "ABE3B8FF-492F-7E2D-5925-109AD3E1B455";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE993";
	rename -uid "A4078BC0-470A-4CAC-F80D-848C716BB6AC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE994";
	rename -uid "EF59DB70-4478-C191-7987-D4AC346CC693";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 9.6233450220246723 9 9.6233450220246723
		 17 9.6233450220246723 23 9.6233450220246723 73 9.6233450220246723 78 9.6233450220246723
		 81 9.6233450220246723 86 9.6233450220246723;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE995";
	rename -uid "B294929F-410A-D31E-44DD-0D9147BF3295";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -26.3662059912789 9 -26.3662059912789
		 17 -26.3662059912789 23 -26.3662059912789 73 -26.3662059912789 78 -26.3662059912789
		 81 -26.3662059912789 86 -26.3662059912789;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE996";
	rename -uid "C8E57B4F-4107-EA5E-E54E-63A32F9AA8D6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -8.589924206988508 9 -8.589924206988508
		 17 -8.589924206988508 23 -8.589924206988508 73 -8.589924206988508 78 -8.589924206988508
		 81 -8.589924206988508 86 -8.589924206988508;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE998";
	rename -uid "F211382B-4C38-5568-E831-9094D32BCA80";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE999";
	rename -uid "8DBA57ED-44AF-B70C-C170-70842AC590C6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1000";
	rename -uid "1BEED698-4E24-E46D-2594-97A2A0E01810";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1001";
	rename -uid "33C343D5-4E7E-8665-36FD-13804771A5D0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1002";
	rename -uid "B0638629-4BE6-2214-DE6D-1881290C1A75";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1003";
	rename -uid "38B112C2-427A-3635-C5D8-44BCF02B2691";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1004";
	rename -uid "9F0D5437-4165-102D-4D4E-80A70B8E64C0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1005";
	rename -uid "C3F314A5-4242-E28A-726B-03B6B68F1894";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1006";
	rename -uid "9C28EA2B-4173-47C7-A874-B18632495B77";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -60.062111725319461 9 -60.062111725319461
		 17 -60.062111725319461 23 -60.062111725319461 73 -60.062111725319461 78 -60.062111725319461
		 81 -60.062111725319461 86 -60.062111725319461;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1008";
	rename -uid "1E9C490E-491E-93B8-A53D-E49177EF1F1D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1009";
	rename -uid "95C446A7-4020-0DDF-3B32-2FA93E8DA2F3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1010";
	rename -uid "CFF187CB-4F0F-C2AD-3FA6-8AB1A27D00F9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1011";
	rename -uid "198A6871-46C9-39F6-E562-408591B0C85B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1012";
	rename -uid "58C4E33C-4820-C928-CE95-0F9E008C1A29";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1013";
	rename -uid "5A73FBD0-4589-74C0-2C78-0789A0A248A5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1014";
	rename -uid "F80CF7DE-4665-F503-999A-E48C32F4D35C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1015";
	rename -uid "FAFF6DE4-4D40-1002-DAE3-9A8FCEE9CDC9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1016";
	rename -uid "B861D253-47A8-9D1C-A38B-2599ABB02265";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1018";
	rename -uid "9961025C-4EB9-4F51-333B-E4BCAB3AD0C8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1019";
	rename -uid "318E085E-482E-F509-5C9C-A0853E4D76F8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.22117318057147445 9 -0.22117318057147445
		 16 -0.1437625673714584 23 -0.1437625673714584 73 -0.1437625673714584 79 -0.1437625673714584
		 81 -0.1437625673714584 86 -0.1437625673714584;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1020";
	rename -uid "26CCB443-4CE3-C81A-6E0A-A1B9BB73F83B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1021";
	rename -uid "3A715CFD-4ACE-A761-5D5D-AA927FB6CA87";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1022";
	rename -uid "095DDFDA-4F17-5AB2-528C-E3B1BD0F9300";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1023";
	rename -uid "78B46649-4D5F-85E6-EF90-2199C3B1D6AA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1025";
	rename -uid "0D474E2E-463F-F5CF-1261-6F8896062B0D";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1026";
	rename -uid "93442A20-4711-F5F2-78F1-54B94D315107";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1027";
	rename -uid "12B3C824-49D1-A4E0-1872-7EB62D13AA27";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1028";
	rename -uid "F408EAEC-4438-3FDA-25AC-1E8E08E5B05E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000011 20 1.0000000000000011
		 23 1.0000000000000011 78 1.0000000000000011 81 1.0000000000000011 86 1.0000000000000011;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1029";
	rename -uid "7BD57FB6-4295-4FAE-2DF7-FAB199F7EB27";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1030";
	rename -uid "0F5522F0-4E5B-D626-DE1A-769AAABEF0E2";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1031";
	rename -uid "35D23ED5-4451-F69B-11C2-F680746CC8E4";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1032";
	rename -uid "A1635C66-422F-090C-4763-3095E6E3754C";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1033";
	rename -uid "0DF8A54A-4B2F-BABA-144A-C1A3CC0A0319";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1035";
	rename -uid "A16847E1-4DE6-5876-367A-1A87008A349A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "CURVE1036";
	rename -uid "F21B1FBC-4143-4324-DF4F-0C87B7F72E59";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 -2.3833528419149941 86 -2.3833528419149941;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "CURVE1037";
	rename -uid "709980EA-443C-CCBA-F6F8-8DBD75DCB810";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 5.4748995555053384 86 5.4748995555053384;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "CURVE1038";
	rename -uid "38865A32-4AE0-0B2D-0FA7-35845FE3D5FC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 2.9956358279909914 86 2.9956358279909914;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1039";
	rename -uid "61F56E6A-432D-C532-4E12-E3A4450FCE21";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 3 86 3;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  1 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "CURVE1041";
	rename -uid "B0DA1944-4A7E-1928-1269-BBB7E3DD92E5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.0020849640602358752 9 0.0020849640602358752
		 16 -0.10489674280052894 23 -0.10489674280052894 73 -0.10489674280052894 79 -0.10489674280052894
		 81 -0.10489674280052894 86 -0.10489674280052894;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1042";
	rename -uid "04CBD604-4D2C-F890-B57B-B2B12BD6538C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1043";
	rename -uid "0BD21A5D-4FF5-AAB9-4C44-77A52468C254";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1044";
	rename -uid "465293DC-4125-A908-9A8D-E3AA9956482B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1045";
	rename -uid "45C5A7A3-48BE-FEDF-43B0-DAA6CA9C4309";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1046";
	rename -uid "CAA4E434-4C48-CDBB-A83F-1D84C63D4352";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1047";
	rename -uid "5446F5E9-41B7-E493-7F19-EC871EE169C6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1048";
	rename -uid "AD32A938-4E9E-5438-C0BA-6CA4E3983971";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1049";
	rename -uid "8631EB5D-4AB1-62F7-F234-1B96DE976676";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1050";
	rename -uid "01A0AD0C-48AE-4A91-9CBF-4FBFB09C07C4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1052";
	rename -uid "5AD8062C-4927-AA79-F6BF-1B92643C0B5E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1053";
	rename -uid "2A9D0D73-4C26-CAB8-521D-F5B0432B5B9B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.0092654261404892819 9 0.0092654261404892819
		 16 0.057854061175955811 23 0.057854061175955811 73 0.057854061175955811 79 0.057854061175955811
		 81 0.057854061175955811 86 0.057854061175955811;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1054";
	rename -uid "0BFBF7E5-42E7-31F2-6475-E2AB8B938AF4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1055";
	rename -uid "BC000A05-4BBE-9AF1-780A-B3ACB6450DBE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1056";
	rename -uid "7B595987-43E0-B90A-DFA8-9BA9757D3FA3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1057";
	rename -uid "49350E48-4EAE-F2F6-33BE-93832D335488";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1058";
	rename -uid "349D309F-4F44-4AE6-453D-04B345967CD4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1059";
	rename -uid "051F3BA2-49E8-F2FD-A96E-018E5CFBEA50";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1060";
	rename -uid "33D6E72B-454D-0373-9969-EE8F66815225";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1062";
	rename -uid "48E8D403-493A-36C5-FA85-D7B7B19C840D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1063";
	rename -uid "612E089D-4D5F-F326-CD98-619B35E78DAC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1064";
	rename -uid "529028A7-4021-3125-3B29-1B8C9395C59B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1065";
	rename -uid "AB622A4A-4789-5678-F6A3-6BAAF9E69644";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1066";
	rename -uid "68A9F557-424C-1540-6901-80990B60EAC0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1067";
	rename -uid "07AE911A-40D0-6851-855D-DD89103E903B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1068";
	rename -uid "3DBA204A-4DBB-0FCC-7515-46A2264067E7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1069";
	rename -uid "04C19353-4195-36C5-C4A9-1A817B932914";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1070";
	rename -uid "92E618FC-4059-D599-36F7-47AED2FA0475";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1072";
	rename -uid "0F1F0B23-46F6-B7A7-E315-A3AA9C4FFE22";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1073";
	rename -uid "9B8CA439-4722-9A23-75C0-ED9C1D4CE51E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1074";
	rename -uid "2BCEE9DE-4D0D-B619-B02E-378AFE6FD7C6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1075";
	rename -uid "087CE000-4266-5FC1-4A4A-B7922606BA65";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1076";
	rename -uid "413D5C13-4DCB-FC8A-C22B-92B578240D3D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1077";
	rename -uid "94212B64-4D6D-A918-E071-76B2D69BEEBC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1078";
	rename -uid "44BCCA32-47CB-BAE0-E216-6883E2951189";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -17.316135211546712 9 -17.316135211546712
		 17 -17.316135211546712 23 -17.316135211546712 73 -17.316135211546712 78 -17.316135211546712
		 81 -17.316135211546712 86 -17.316135211546712;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1079";
	rename -uid "4F83BA46-4298-B14E-C21B-DCA1563EB1D1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -4.6259183918435332 9 -4.6259183918435332
		 17 -4.6259183918435332 23 -4.6259183918435332 73 -4.6259183918435332 78 -4.6259183918435332
		 81 -4.6259183918435332 86 -4.6259183918435332;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1080";
	rename -uid "E2F50B98-4BB1-EABB-C083-54B53D31AA42";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -59.867407886749909 9 -59.867407886749909
		 17 -59.867407886749909 23 -59.867407886749909 73 -59.867407886749909 78 -59.867407886749909
		 81 -59.867407886749909 86 -59.867407886749909;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1082";
	rename -uid "6378DBD1-49B0-F061-56B6-4683DD4D463B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1083";
	rename -uid "827B03E6-4DD4-E99D-37BB-09B4F08A31B3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1084";
	rename -uid "00EAA733-4A15-2EF9-825A-B88C3CC45B6F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1085";
	rename -uid "A2C8D3A3-4B60-6B77-9915-059A0942FD83";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1086";
	rename -uid "16EBAB0B-4A02-55E4-231C-8F99D283ED91";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1087";
	rename -uid "34DA3C9C-4BFF-8AFC-F1CF-43B876442F0B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1088";
	rename -uid "D2FF4D02-4EF3-C2AF-5FBC-659ED985F982";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1089";
	rename -uid "D6DE0022-4415-5E1B-0824-A2A9E12E1739";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1090";
	rename -uid "62C9FF91-4582-8298-700E-DD9D39BCE487";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1092";
	rename -uid "128D11B2-41DA-D4C9-D275-7DAE7CF9B25C";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1093";
	rename -uid "7A8C613B-4DAA-FA5B-5093-35A9291AF5AB";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1094";
	rename -uid "3BE38612-40BA-5186-4DC9-A79CA4A1A711";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1095";
	rename -uid "8895C228-4E0B-8B54-0F44-F6A3F37BCE3F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1096";
	rename -uid "9EDB29E6-4300-6E69-E8AD-CDBF13BD74E3";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1097";
	rename -uid "098E1439-4E53-3894-366E-E68D2FC0109A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1098";
	rename -uid "D6FB0B09-4733-64D1-AECF-F2B8018E240F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1099";
	rename -uid "30ABF0A7-4573-3E57-307C-B7821EE0C3CF";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1100";
	rename -uid "5AA78D02-4EA5-3C17-2BF8-6B9A3412A18B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1102";
	rename -uid "0C065BBB-4077-682E-E8E6-E8BF7D3466BE";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1103";
	rename -uid "A0F0AD81-4445-DA12-A314-048940FB6E67";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1104";
	rename -uid "B49B16C6-4331-42A3-41D6-B9A7FFE9E522";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1105";
	rename -uid "93D56BCA-4C79-79F7-DE06-078D42F35A85";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1106";
	rename -uid "9DA00510-485A-C7DD-4F3B-9EA6E13FE9B6";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1107";
	rename -uid "4D52D633-4AD7-9AA8-6EAD-5385E26C1659";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1108";
	rename -uid "BA168BAD-4231-0928-4814-DB92B405BBB8";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1109";
	rename -uid "32F07574-4E78-3D6B-8B5D-6FB7A3F4501C";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1110";
	rename -uid "72970077-4D17-6BBF-C538-84B38141CE42";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1112";
	rename -uid "C7691EAA-443C-41A2-F501-10BFA738EAED";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1113";
	rename -uid "717A4C36-4143-958E-5457-D2896EE8329D";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1114";
	rename -uid "D709ED48-47B5-B9B4-A7A5-4AA7063BDD92";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1115";
	rename -uid "95ACA29A-412B-7CBD-AD5A-E1BB0CDEA5DB";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000007 20 1.0000000000000007
		 23 1.0000000000000007 78 1.0000000000000007 81 1.0000000000000007 86 1.0000000000000007;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1116";
	rename -uid "6401AF0F-4D37-4B17-4A84-7FBB4A124082";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0.99999999999999989 20 0.99999999999999989
		 23 0.99999999999999989 78 0.99999999999999989 81 0.99999999999999989 86 0.99999999999999989;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1117";
	rename -uid "0F668AEB-42B4-28CA-464C-93AA9E6432ED";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0.99999999999999978 20 0.99999999999999978
		 23 0.99999999999999978 78 0.99999999999999978 81 0.99999999999999978 86 0.99999999999999978;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1118";
	rename -uid "E4A00537-4625-680B-CEE0-E68059E07A43";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1119";
	rename -uid "96F5E8E3-4558-786C-755A-5F8E55A39C6D";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1120";
	rename -uid "53BC1970-44BA-1B98-8C4F-A9AF80D35B52";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1122";
	rename -uid "7D235D22-479F-1C5F-017E-19998D1B62A7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1123";
	rename -uid "EC1025BC-4433-7446-AA76-58BC6484F354";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.34593678146637813 9 -0.34593678146637813
		 16 -0.21418004564986226 23 -0.21418004564986226 73 -0.21418004564986226 79 -0.21418004564986226
		 81 -0.21418004564986226 86 -0.21418004564986226;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1124";
	rename -uid "6A667562-49F6-C178-4049-08975B863F99";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1125";
	rename -uid "3F78B711-4CA0-1695-3571-F9B893424525";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1126";
	rename -uid "1669626B-4D7B-EB4D-E637-70AABB76E475";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1127";
	rename -uid "DBD19D52-41CC-C722-BAA2-E4A229078D60";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1129";
	rename -uid "02D7E370-48AC-E4B8-0593-F09010FE7C9F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1130";
	rename -uid "9979A444-4C09-9CD6-8DD3-B7BC9F6E143E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0.084001705809337648 23 0.084001705809337648
		 73 0.084001705809337648 79 0.084001705809337648 81 0.084001705809337648 86 0.084001705809337648;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1131";
	rename -uid "96FCDF36-445B-BB08-4B04-35B3715A092B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1132";
	rename -uid "993B56BC-46B4-5FE7-0986-1CAD6715D16E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1133";
	rename -uid "201DFEEB-4956-E59B-F33E-5FA64A162852";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1134";
	rename -uid "C298A1B1-4F1E-F7B0-8D99-FC967D65B138";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1136";
	rename -uid "B3F13383-4356-F914-FD52-5A99CA2801D3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.010000000000000009 86 0.010000000000000009;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1137";
	rename -uid "BC25900B-4FBB-4667-A824-0985275B4EEF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 86 1;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1138";
	rename -uid "FC897AB2-4EBC-DB14-13CB-27B9AABC0BDB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1139";
	rename -uid "B4AA9E0D-492C-7EAD-2CFB-5FB166A08D98";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1140";
	rename -uid "3FE6806B-49E3-2F54-2DA9-789489E1920A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.010000000000000009 86 0.010000000000000009;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1141";
	rename -uid "CCCD9B82-4D7D-3AB4-B970-3EBD5EB198E1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1142";
	rename -uid "CBBD2671-426B-CE6A-6532-97A74D177273";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1143";
	rename -uid "A1E27C59-4C43-01E9-23D9-028CD1C67932";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1144";
	rename -uid "E0ACA9CD-4CE6-F9FD-B462-DCB1D271BF77";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1145";
	rename -uid "89F41417-4643-C1DD-4929-89B3D8CBED1D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 86 1;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1146";
	rename -uid "FDF923C1-4749-4711-EF25-00B9E1DC46AD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1147";
	rename -uid "71674169-4592-DA16-9A97-82923B131433";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1148";
	rename -uid "7730A753-4B26-C521-E120-C1B2AA5DE099";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.010000000000000009 86 0.010000000000000009;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1149";
	rename -uid "B3B767DA-49AC-B00E-D279-C3A1977CED29";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 86 1;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1150";
	rename -uid "0D628C79-451A-581D-DF6D-1591B805FCDD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1151";
	rename -uid "4D01448F-439B-4979-7719-5BA75CE8A6BC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "CURVE1153";
	rename -uid "BB59711F-41C0-0D97-1A5A-2BBB35F8A143";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0.18239132490236404
		 38 0.18239132490236404 41 0.18239132490236404 44 1.7411829515854302 49 1.7411829515854302
		 58 1.7411829515854302 59 1.7411829515854302 73 1.7411829515854302 76 1.2179123425439768
		 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 -0.87059147579271512 0 
		0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.87059147579271512 
		0 0 0;
createNode animCurveTL -n "CURVE1154";
	rename -uid "6CFCB566-459D-BC1D-8A59-A7A6C059E47A";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 -3.3679566332383635
		 38 -3.3679566332383635 41 -3.3679566332383635 44 -0.3645236838143886 49 -0.3645236838143886
		 58 -0.3645236838143886 59 -0.3645236838143886 73 -0.3645236838143886 76 -0.2549748682428214
		 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0.1822618419071943 0 0 
		0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.1822618419071943 
		0 0 0;
createNode animCurveTL -n "CURVE1155";
	rename -uid "B7B52FCA-41E1-EC4F-C6B6-D58D95AE3BAF";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1156";
	rename -uid "724F87A7-49BF-C74B-DB73-16B025981348";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0.05 3 0.05 5 0.05 9 0.05 14 0.05 23 0.05
		 34 0.05 35 0.05 38 0.05 41 0.05 44 0.05 49 0.05 58 0.05 59 0.05 73 0.05 76 0.05 79 0.05
		 81 0.05 86 0.05;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1157";
	rename -uid "CF38458D-4068-71D8-8C05-2C86B1E82D9F";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1158";
	rename -uid "D0C729BB-416E-943A-2A0F-D7B811026A7A";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1159";
	rename -uid "6963543C-45B9-96E1-3447-C09071EF5279";
	setAttr ".tan" 18;
	setAttr -s 20 ".ktv[0:19]"  1 0.21070553935860051 3 1 9 0.2 13 1 18 0
		 23 0 33 0 35 1 38 0 41 0 44 1 49 0 58 0 59 0 73 0 76 1 78 1 79 0 81 0 86 0;
	setAttr -s 20 ".kit[7:19]"  1 18 18 18 18 18 18 18 
		18 18 18 1 18;
	setAttr -s 20 ".kot[0:19]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 20 ".kix[7:19]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.080000000000000071 0.040000000000000036 0.080000000000000071 
		0.19999999999999973;
	setAttr -s 20 ".kiy[7:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[0:19]"  0.080000000000000071 0.24 0.16000000000000003 
		0.19999999999999996 0.20000000000000007 0.4 0.079999999999999849 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.080000000000000071 0.040000000000000036 0.080000000000000071 
		0 0.19999999999999973;
	setAttr -s 20 ".koy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1160";
	rename -uid "8AF0A411-4109-B3F3-0058-C0A7BB0E9CF3";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1161";
	rename -uid "1455FE04-4D47-4F7B-8290-6C88F3821832";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1162";
	rename -uid "8A2FCC10-4E38-5267-F34F-C98EAE6FCB9E";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1163";
	rename -uid "63CAFB1B-4BFF-6865-387C-3A9A63920C6E";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 1 3 1 5 1 9 1 14 1 23 1 34 1 35 1 38 1
		 41 1 44 1 49 1 58 1 59 1 73 1 76 1 79 1 81 1 86 1;
	setAttr -s 19 ".kit[1:18]"  9 9 18 18 9 18 1 9 
		18 18 9 18 18 18 18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 5 18 18 5 18 1 
		5 18 18 5 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0 0 0.20000000000000007 0.36 0 0.039999999999999813 
		0.19999999999999929 0 0.12000000000000011 0.19999999999999996 0 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1164";
	rename -uid "EE8605EB-4DB9-2ECB-17CB-04AF32ED3389";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1165";
	rename -uid "DCFB6AAC-4996-87A2-9337-AB8EC951EA2A";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1166";
	rename -uid "27EFE4ED-438A-06B9-A7FC-6D879965DBC4";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1167";
	rename -uid "DFD03A17-47CA-D2B6-DF78-8CB89A40E11D";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1168";
	rename -uid "4B3C2D5F-4356-64FC-190B-46AF64AC54E2";
	setAttr ".tan" 18;
	setAttr -s 20 ".ktv[0:19]"  1 0 3 0 5 0 9 0 14 -0.17341844060439138
		 23 -0.17341844060439138 34 -0.17341844060439138 35 -0.17341844060439138 38 -0.17341844060439138
		 41 -0.17341844060439138 44 0 49 -0.245 58 -0.245 59 -0.245 73 -0.245 76 0 78 0 79 -0.245
		 81 -0.245 86 -0.245;
	setAttr -s 20 ".kit[7:19]"  1 18 18 18 18 18 18 18 
		18 18 18 1 18;
	setAttr -s 20 ".kot[0:19]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 20 ".kix[7:19]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.080000000000000071 0.040000000000000036 0.080000000000000071 
		0.19999999999999973;
	setAttr -s 20 ".kiy[7:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.080000000000000071 0.040000000000000036 0.080000000000000071 
		0 0.19999999999999973;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1169";
	rename -uid "D43833C2-4256-8F78-B44D-22AAC70AA251";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0.05 3 0.05 5 0.05 9 0.05 14 0.05 23 0.05
		 34 0.05 35 0.05 38 0.05 41 0.05 44 0.05 49 0.05 58 0.05 59 0.05 73 0.05 76 0.05 79 0.05
		 81 0.05 86 0.05;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1171";
	rename -uid "4C3523CB-423A-6A25-AB97-87B502764A2F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1172";
	rename -uid "104F2999-45A2-B39B-CE78-86BA54465C70";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1173";
	rename -uid "0387E5E8-4A67-A472-540B-57839A09937A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1174";
	rename -uid "4D05D7BF-4FC6-8FA2-E98A-109E561EF6A2";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000004 20 1.0000000000000004
		 23 1.0000000000000004 78 1.0000000000000004 81 1.0000000000000004 86 1.0000000000000004;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1175";
	rename -uid "C53DB107-487B-1D65-25CD-B6985FF58ECC";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000009 20 1.0000000000000009
		 23 1.0000000000000009 78 1.0000000000000009 81 1.0000000000000009 86 1.0000000000000009;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1176";
	rename -uid "F0A9D78C-42E5-A78A-ACC2-E9BCCD4A1AD6";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000007 20 1.0000000000000007
		 23 1.0000000000000007 78 1.0000000000000007 81 1.0000000000000007 86 1.0000000000000007;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1177";
	rename -uid "EFD745BC-4F1C-8995-EA2B-9A824781C370";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1178";
	rename -uid "9655202C-4FC4-E283-8DA5-118589583C16";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1179";
	rename -uid "E6F387A8-4303-2ED8-AF69-A88DE0819886";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1181";
	rename -uid "A6C28A8F-4A11-3C4A-64F0-11921C68F872";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1182";
	rename -uid "7ABFC0E4-4370-896A-6A56-03A7983D231F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1183";
	rename -uid "4834665A-4408-9FF4-37CC-E09CF0993E77";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1184";
	rename -uid "EA3CE70F-4ACF-5940-D955-12A4ABAF15D7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1185";
	rename -uid "ACC6FD31-4B61-CA7C-B4C6-F8B084EBECEC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1186";
	rename -uid "AFC6D70B-4C3D-310F-82E3-4596A3DC7305";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1187";
	rename -uid "2E54FA55-4AE9-6E86-F45E-04BF9282BED5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1188";
	rename -uid "EBCD650B-43DD-DD4B-A8AE-918073657D00";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1189";
	rename -uid "5A1D7C39-441A-7878-9939-A68E79ABBAC2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1191";
	rename -uid "487174F5-49FC-5AC9-90C4-818539834F0F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1192";
	rename -uid "C36158F7-4641-657D-D5FF-0C987F5D38D0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1193";
	rename -uid "AC28DF81-43F4-FF65-DEE2-5C894D50487D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1194";
	rename -uid "F5E5267B-4F42-D947-1304-68BE8E9C8A91";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1195";
	rename -uid "C8ABDD89-4B25-51F4-BFFD-BA861C3848C4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1196";
	rename -uid "E300646E-42BA-1705-B564-588B5B3AE9DE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1197";
	rename -uid "2DD5A720-4603-0C29-3D4A-78B60BD0FA87";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1198";
	rename -uid "240CF771-407A-B6EF-3C0F-00BADFA86DDD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1199";
	rename -uid "7C017271-4E14-0955-1499-E0B18B07E053";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1201";
	rename -uid "77F20C80-49BE-5CD6-4594-F7B93875509C";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1202";
	rename -uid "D3378318-4075-54F2-AEAB-20A27BF44873";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1203";
	rename -uid "D598DCE4-4C76-61FA-FB45-9581F063DE6E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1204";
	rename -uid "07F4BD14-42B1-1A9D-4019-F7B56C1C13A7";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1205";
	rename -uid "FE8218DB-403F-0B09-F41A-B4A433C3E9DC";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1206";
	rename -uid "3C49EFA2-45B4-28F3-3D36-FB910DCF2010";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000004 20 1.0000000000000004
		 23 1.0000000000000004 78 1.0000000000000004 81 1.0000000000000004 86 1.0000000000000004;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1207";
	rename -uid "908406AF-4D7E-352B-3ABB-B0965C423469";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1208";
	rename -uid "2F0053E3-419E-0188-488A-B39F5EF3CE62";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1209";
	rename -uid "24A365C8-47A8-89ED-87E8-61B562CCB241";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1211";
	rename -uid "3190A1F1-47A3-4920-F0CB-F79AB7C392A7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1212";
	rename -uid "81D4E940-47D5-5138-629A-BB8A87EA487C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1213";
	rename -uid "CF0CE7B2-49A7-89BF-E19B-BE89BF05A58D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1214";
	rename -uid "7125479E-4109-0A82-0ED5-B2B946BA80B3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1215";
	rename -uid "0CFDC265-41B9-D0F5-2466-67AFD7C68CB6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1216";
	rename -uid "4E287367-40EE-E001-AE99-EEBD78B4190D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1217";
	rename -uid "D434159B-49EE-8F70-6F04-478D8EDE6336";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1218";
	rename -uid "FAF6C914-4B8D-F17F-4366-10A57494FC23";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1219";
	rename -uid "4A8B1881-4AF6-842C-4911-41BF108F3272";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1221";
	rename -uid "70E831B9-4C8D-F2E8-C6B5-89BEC5D03153";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1222";
	rename -uid "0F851E7C-42DA-BB46-91CB-2692FDD4C26D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 -0.1012437212108684 23 -0.1012437212108684
		 73 -0.1012437212108684 79 -0.1012437212108684 81 -0.1012437212108684 86 -0.1012437212108684;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1223";
	rename -uid "1FF6554E-4D56-FE9B-D68A-E98FEEBA85E2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 -0.016453724371070299 23 -0.016453724371070299
		 73 -0.016453724371070299 79 -0.016453724371070299 81 -0.016453724371070299 86 -0.016453724371070299;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1224";
	rename -uid "1C16DC92-4E8F-BCA5-216C-B89885B2E70C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1225";
	rename -uid "BCEA050F-4D43-BB3F-8045-52ACA6EE2951";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1226";
	rename -uid "25A177AE-4F3E-941E-613B-DCB19E019A1A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1227";
	rename -uid "20F8E269-47B9-7A1B-61EB-40BE7FB805C1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 7.0253914089997647 9 7.0253914089997647
		 16 8.6545772108705314 23 8.6545772108705314 73 8.6545772108705314 79 8.6545772108705314
		 81 8.6545772108705314 86 8.6545772108705314;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1228";
	rename -uid "99313C74-4204-FC07-6670-04A439ADF516";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1229";
	rename -uid "2F3FD0D6-4BC1-545A-ED07-F3BE94FD98B1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1231";
	rename -uid "CEA96894-4419-EA27-15E1-1785EDFF44CA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE1232";
	rename -uid "99FAE7C8-4BAE-E136-96FF-608CFE941B64";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE1233";
	rename -uid "5FBDACB8-409A-67DB-D371-68A2659880B1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE1234";
	rename -uid "9199DA7E-4E63-FFDF-2C53-D392A9518172";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE1235";
	rename -uid "2210DE7A-43E7-B82A-3F81-A6A120ECA4C8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE1236";
	rename -uid "BF31C2E3-4E9A-CB09-C88A-68A1175CAC50";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE1237";
	rename -uid "0838DAD1-4975-744D-6679-57B4F35053DA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE1238";
	rename -uid "2D52CBDE-4DC1-6FF2-0826-4B9CCC5B133C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE1239";
	rename -uid "0575B303-44E2-B0DD-F644-2CB1B3FA1DCF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE1241";
	rename -uid "8B04950B-467D-34B2-E4D4-10990D1A65BF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE1242";
	rename -uid "2189B0BB-4C4C-5093-F8F7-EC856E66BA5A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE1243";
	rename -uid "46FA8002-4C7D-0987-0678-3485BFAB7695";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE1244";
	rename -uid "41850FC4-48F1-B513-094E-D3A906863714";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE1245";
	rename -uid "A1550F22-4517-946C-D111-6EBFD1E6034F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE1246";
	rename -uid "7874BB9A-4308-D7C1-60E6-2F83379C476E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE1247";
	rename -uid "5D1E9CA1-44C0-7D92-7E88-8F9809983535";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE1248";
	rename -uid "511CCDFF-4602-534B-8F2A-42963F3C725D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE1249";
	rename -uid "56C81213-40F9-512E-430E-7AA81972A23E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE1251";
	rename -uid "B0944EC2-4372-5EF6-AE18-49B2FB33B191";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1252";
	rename -uid "559DFE1C-4902-2B5F-58FA-608CF32310F1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1253";
	rename -uid "4BD37ADA-4229-AA6F-5D32-8E93353538D8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1254";
	rename -uid "73D4E759-4466-E473-5E9D-2EAB7672164D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1255";
	rename -uid "D41AA9A2-4285-1953-65B2-368FCC26A268";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1256";
	rename -uid "A58E8C8C-4774-91FF-FD48-589B54210AFA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1257";
	rename -uid "4DCBC357-45F4-8FC9-B6FE-4FB3E38A2399";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1258";
	rename -uid "0C9A0D92-4E31-80C3-11D9-4CA44B8C7210";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1259";
	rename -uid "ABC370F4-4BB3-366A-812F-B09EBDAD7180";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -37.322574827758139 9 -37.322574827758139
		 17 -37.322574827758139 23 -37.322574827758139 73 -37.322574827758139 78 -37.322574827758139
		 81 -37.322574827758139 86 -37.322574827758139;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1261";
	rename -uid "9C4556C7-4C15-2779-DAF7-1AB37A4EF30F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1262";
	rename -uid "57D1B545-4E85-821D-7D57-B29F041F2893";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1263";
	rename -uid "4F5E2FF8-4910-9F74-4644-28BCDE4A6518";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1264";
	rename -uid "F57229F1-4341-D6E5-CA94-8D90E192241A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1265";
	rename -uid "44927A00-4B79-584C-4746-2488622A7415";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1266";
	rename -uid "AD43F46C-4249-ADB2-0A48-0BB78BD90007";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1267";
	rename -uid "5023E356-46C3-76B9-2311-45AB68B71D51";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -10.95024134994404 9 -10.95024134994404
		 17 -10.95024134994404 23 -10.95024134994404 73 -10.95024134994404 78 -10.95024134994404
		 81 -10.95024134994404 86 -10.95024134994404;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1268";
	rename -uid "F7C7FF60-4E20-DE6B-FBB0-1EBE3EFCC3A4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -9.6261261254567358 9 -9.6261261254567358
		 17 -9.6261261254567358 23 -9.6261261254567358 73 -9.6261261254567358 78 -9.6261261254567358
		 81 -9.6261261254567358 86 -9.6261261254567358;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1269";
	rename -uid "F665D766-4F1C-47E2-2025-C8AFD6330E81";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -65.060558275712921 9 -65.060558275712921
		 17 -65.060558275712921 23 -65.060558275712921 73 -65.060558275712921 78 -65.060558275712921
		 81 -65.060558275712921 86 -65.060558275712921;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1271";
	rename -uid "7D5AA69E-4ADD-4A01-F028-72A5DF07554E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1272";
	rename -uid "1D6CFD79-4C23-6260-1199-F6AD3C8C1F93";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1273";
	rename -uid "FB90C712-445C-9B1C-FA3F-6886496574E6";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1274";
	rename -uid "3BE7ECCC-4C23-F1E1-34ED-E3B3ED157A53";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1275";
	rename -uid "79EFB2AA-4B77-6238-FA17-2782A6E3F0BD";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1276";
	rename -uid "6E792456-4A48-2ED6-BCD2-09A96ECC689E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000004 20 1.0000000000000004
		 23 1.0000000000000004 78 1.0000000000000004 81 1.0000000000000004 86 1.0000000000000004;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1277";
	rename -uid "68A9737C-4A96-4E62-9144-009FFC92F47C";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1278";
	rename -uid "809F2B56-4B2F-D1A2-42CD-1CBBF4EBD75E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1279";
	rename -uid "02E16A3F-4551-41E6-7ABB-6F8C36CC35CC";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1281";
	rename -uid "84B2DD81-4519-9037-CB97-F3B04732E932";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1282";
	rename -uid "96D42DA3-40F7-9138-07C1-5FA41997C967";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 0 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1283";
	rename -uid "AC0BC3EF-407B-994E-1B6E-9AB04CA61856";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1284";
	rename -uid "27722333-4898-BFA0-9BD5-86B8E0B6DA0E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1285";
	rename -uid "C2570DE1-4F22-046E-7031-CA8271B23C45";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[3:7]"  9 18 9 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 5 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 0 0.20000000000000018 
		0 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1286";
	rename -uid "A4EE42B6-49F1-F511-AFA3-B88973107F30";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 2 9 2 17 2 23 2 73 2 78 2 81 2 86 2;
	setAttr -s 8 ".kit[3:7]"  9 18 9 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 5 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 0 0.20000000000000018 
		0 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1287";
	rename -uid "1AC2F2F8-4D94-E19E-E4E5-4DA9BE13A45D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1288";
	rename -uid "CACBA75C-44A1-DFD6-27EB-C49881B3F26E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1289";
	rename -uid "65F4DF6F-448F-0E02-1393-8AAA3870A7A0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1290";
	rename -uid "AA9DC49F-4C4F-34F2-0EDC-47A5ED5D64F8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1291";
	rename -uid "06933483-4E1C-605C-E218-EF92F6589078";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 0 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1293";
	rename -uid "6781A39D-41D6-0311-591A-898C05C00AB0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1294";
	rename -uid "190B8E69-4991-1C28-F559-CDA406AD67D5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1295";
	rename -uid "FAB97ADD-482F-1540-3DCB-2C84E52DE0C9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1296";
	rename -uid "5F24DA8A-4669-AEEA-940C-DBB08F307922";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1297";
	rename -uid "F1917ADD-47D9-CD4E-9D7E-A38E6736C83A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1298";
	rename -uid "8021FC43-4B55-1618-57F1-7D9E95AB5DB8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1299";
	rename -uid "3D463379-4855-B42D-8880-B6BA6C4CBDDC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -17.381670068580295 9 -17.381670068580295
		 17 -17.381670068580295 23 -17.381670068580295 73 -17.381670068580295 78 -17.381670068580295
		 81 -17.381670068580295 86 -17.381670068580295;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1300";
	rename -uid "75E0012B-45CA-BD44-042C-1FBA776995EC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -5.4980414277075607 9 -5.4980414277075607
		 17 -5.4980414277075607 23 -5.4980414277075607 73 -5.4980414277075607 78 -5.4980414277075607
		 81 -5.4980414277075607 86 -5.4980414277075607;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1301";
	rename -uid "9EE780A2-4969-B143-EE17-2995BBBEFC4F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -10.966131642653538 9 -10.966131642653538
		 17 -10.966131642653538 23 -10.966131642653538 73 -10.966131642653538 78 -10.966131642653538
		 81 -10.966131642653538 86 -10.966131642653538;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1303";
	rename -uid "03FBB97A-4E06-929B-30A7-73A067D5D642";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1304";
	rename -uid "16F68001-4C53-3D80-091A-75A6A833BB1E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1305";
	rename -uid "815254C6-414A-742B-1A73-83BB13722E44";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1306";
	rename -uid "B9B53D0F-4C01-9FED-3772-57BDD74D616B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1307";
	rename -uid "77689530-4F51-AD00-FB39-72A4AAE409E6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1308";
	rename -uid "F8891400-48F8-7FE1-E9A2-34B200E4756F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1309";
	rename -uid "39487666-4CDD-55AC-17A3-32B4E98E939A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1310";
	rename -uid "CE7BE1EB-4BF1-26BD-9AF2-40B13C2E4C0B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1311";
	rename -uid "6B5B5D1C-4F14-D646-2BBB-A98E5CBFD50E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1313";
	rename -uid "BA8113DE-4AE1-4C04-F394-65AB53949EE9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1314";
	rename -uid "7289C228-4877-FA45-092B-1EB023866611";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 -0.25433222596948368 23 -0.25433222596948368
		 73 -0.25433222596948368 79 -0.25433222596948368 81 -0.25433222596948368 86 -0.25433222596948368;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1315";
	rename -uid "DFBCB910-401A-8F6A-8A07-2C937153AA37";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1316";
	rename -uid "22DA432A-47F3-5DD4-D32B-9DBF750BDC21";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1317";
	rename -uid "03DBAB4E-42FF-9D69-9402-2CB13ACC9EC0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1318";
	rename -uid "41775E5E-4EF0-27C4-CDDD-3BAC19B9AAF7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.052000000000000005 9 -0.052000000000000005
		 16 -0.20879999999999999 23 -0.20879999999999999 73 -0.20879999999999999 79 -0.20879999999999999
		 81 -0.20879999999999999 86 -0.20879999999999999;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1319";
	rename -uid "862C2E89-4F85-BA28-8D11-95A9A3A400B6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1320";
	rename -uid "940A0D98-40FB-7021-81D9-89958CF69D55";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1321";
	rename -uid "E99C746D-4E87-3A76-91C5-6E92D6D996D3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1322";
	rename -uid "5799936C-4612-3410-9C41-CE96EA568676";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1323";
	rename -uid "4117B3A8-43DC-64EF-A4F6-9683200A7453";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1324";
	rename -uid "5A7650B9-4C19-11A5-F32E-ED8CA3F45873";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1325";
	rename -uid "522BEBC4-4B36-F415-9A1F-19B155912607";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1327";
	rename -uid "502EEBBC-4BC5-5B72-F049-27B9C5544BDC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1328";
	rename -uid "35F12573-4056-200D-86AB-588116CC130B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.27640766110948223 9 0.27640766110948223
		 16 0.19034384202444699 23 0.19034384202444699 73 0.19034384202444699 79 0.19034384202444699
		 81 0.19034384202444699 86 0.19034384202444699;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1329";
	rename -uid "430D7435-41EB-A0A2-34FA-DDBE6CDFABEB";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1330";
	rename -uid "18D73335-40E5-2088-361D-FB8CFA4AE7FC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1331";
	rename -uid "A7D8ED2A-4212-C3E9-DC85-8793D4AF5B02";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1332";
	rename -uid "3B62BA83-4CE1-76DA-2F7B-FCADCA9ED424";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1334";
	rename -uid "7E8B761A-46A6-59CB-8247-E69DF7BC3E5D";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1335";
	rename -uid "8E2B6C64-4BA2-13E2-AEE2-56A8B2633306";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1336";
	rename -uid "7E9E60AA-4698-C664-AAE2-CC8C444BE8C1";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1337";
	rename -uid "8CE51EE2-4A19-0328-AF46-4E91E8B30A50";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1338";
	rename -uid "F073CA53-4D68-90DA-4559-95900AAB61C0";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000004 20 1.0000000000000004
		 23 1.0000000000000004 78 1.0000000000000004 81 1.0000000000000004 86 1.0000000000000004;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1339";
	rename -uid "602ACFDB-4F3E-067C-91BF-318C1F788605";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1340";
	rename -uid "674FCE2A-4A70-6E07-945C-66B7732C37C8";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1341";
	rename -uid "DA01BFE4-4DD1-8499-DCFF-64808C90D05F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1342";
	rename -uid "7E21151C-47C7-25D2-79DA-CA9067D9C4E8";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1344";
	rename -uid "F6BC9593-4156-4937-8A72-0993A76BA1C4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.011940580721126526 9 -0.011940580721126526
		 16 0.2139756276998809 23 0.2139756276998809 73 0.2139756276998809 79 0.2139756276998809
		 81 0.2139756276998809 86 0.2139756276998809;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1345";
	rename -uid "68614FAB-4F43-13C4-8016-8B9CFA4F38F1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1346";
	rename -uid "86F01F9C-4C65-AFE8-A157-F98651702FC7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1347";
	rename -uid "8ED2F8F2-4F88-ED43-0B0B-C19B3BE51D7F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1348";
	rename -uid "8668D105-45F2-A03E-C22F-AEA923F230C1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1349";
	rename -uid "B896798B-4214-221F-A189-D78C5C7DDB53";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1350";
	rename -uid "2B7499D0-4E82-300B-7E12-7DB110F9FE67";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1351";
	rename -uid "603ED0EB-456E-3EF6-FE0B-5C83124CC9AA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1352";
	rename -uid "C69F63CC-4368-864E-A3BE-3CA13E405E62";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1353";
	rename -uid "85ADF546-4692-DB40-EF89-94BA7E69EFFE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1355";
	rename -uid "3EA77A6D-48DF-6AE6-2BE0-3088302BA5AC";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0.18239132490236404
		 38 0.18239132490236404 41 0.18239132490236404 44 2.2770439364225834 49 2.2770439364225834
		 58 2.2770439364225834 59 4.5658797202841983 73 4.5658797202841983 76 3.1937145150898441
		 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 -2.2829398601420992 0 0 
		0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 -2.2829398601420992 
		0 0 0;
createNode animCurveTL -n "CURVE1356";
	rename -uid "FA107820-4B1D-CE08-578E-9991C9612B6A";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 -3.3679566332383635
		 38 -3.3679566332383635 41 -3.3679566332383635 44 0 49 0 58 0 59 -1.2055816717389545
		 73 -1.2055816717389545 76 -0.84327313026969564 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0.60279083586947724 0 0 
		0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.60279083586947724 
		0 0 0;
createNode animCurveTL -n "CURVE1357";
	rename -uid "0C565F9A-45A1-8332-8397-5F93966A227A";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 -1.1270374039725211 73 -1.1270374039725211 76 -0.78833345086282147
		 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0.56351870198626053 0 0 
		0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.56351870198626053 
		0 0 0;
createNode animCurveTU -n "CURVE1358";
	rename -uid "55B24AF9-4A4B-3835-D841-78BE23FEB451";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0.05 3 0.05 5 0.05 9 0.05 14 0.05 23 0.05
		 34 0.05 35 0.05 38 0.05 41 0.05 44 0.05 49 0.05 58 0.05 59 0.05 73 0.05 76 0.05 79 0.05
		 81 0.05 86 0.05;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1359";
	rename -uid "EE1F9617-4B57-9840-DC2B-DA8BB89D8800";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1360";
	rename -uid "92E55117-42AC-F6B4-B0E7-12BEC3AEDB9B";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1361";
	rename -uid "8F7ABF1D-49AC-F7E5-34D2-ADB697634912";
	setAttr ".tan" 18;
	setAttr -s 20 ".ktv[0:19]"  1 0.21070553935860051 3 1 9 0.2 13 1 18 0
		 23 0 33 0 35 1 38 0 41 0 44 1 49 0 58 0 59 0 73 0 76 1 78 1 79 0 81 0 86 0;
	setAttr -s 20 ".kit[7:19]"  1 18 18 18 18 18 18 18 
		18 18 18 1 18;
	setAttr -s 20 ".kot[0:19]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 20 ".kix[7:19]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.080000000000000071 0.040000000000000036 0.080000000000000071 
		0.19999999999999973;
	setAttr -s 20 ".kiy[7:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[0:19]"  0.080000000000000071 0.24 0.16000000000000003 
		0.19999999999999996 0.20000000000000007 0.4 0.079999999999999849 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.080000000000000071 0.040000000000000036 0.080000000000000071 
		0 0.19999999999999973;
	setAttr -s 20 ".koy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1362";
	rename -uid "8EA024CC-4BDC-83C8-9997-C59B769CC128";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1363";
	rename -uid "AE460503-452C-C9CF-D910-AE8CA90A608A";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1364";
	rename -uid "CE482AA6-49D2-9BE7-2C35-628F064EA499";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1365";
	rename -uid "4AAFCFB3-49F9-BE85-F6EA-7792BEB49798";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 1 3 1 5 1 9 1 14 1 23 1 34 1 35 1 38 1
		 41 1 44 1 49 1 58 1 59 1 73 1 76 1 79 1 81 1 86 1;
	setAttr -s 19 ".kit[1:18]"  9 9 18 18 9 18 1 9 
		18 18 9 18 18 18 18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 5 18 18 5 18 1 
		5 18 18 5 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0 0 0.20000000000000007 0.36 0 0.039999999999999813 
		0.19999999999999929 0 0.12000000000000011 0.19999999999999996 0 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1366";
	rename -uid "87338400-407E-5BE1-8AD1-A7820D1F2ED2";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1367";
	rename -uid "C449DA8F-4FF0-B9E0-FCF5-C7BB4674E1CF";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1368";
	rename -uid "C46A83FE-4A6E-8B89-76B0-D395A04DC3E2";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1369";
	rename -uid "1435BE3E-453B-4187-AE67-78A77E06F054";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0 3 0 5 0 9 0 14 0 23 0 34 0 35 0 38 0
		 41 0 44 0 49 0 58 0 59 0 73 0 76 0 79 0 81 0 86 0;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1370";
	rename -uid "BDBDB910-4B46-42DF-A362-E7847E3A55CD";
	setAttr ".tan" 18;
	setAttr -s 20 ".ktv[0:19]"  1 0 3 0 5 0 9 0 14 -0.17341844060439138
		 23 -0.17341844060439138 34 -0.17341844060439138 35 -0.17341844060439138 38 -0.17341844060439138
		 41 -0.17341844060439138 44 0 49 -0.245 58 -0.245 59 -0.245 73 -0.245 76 0 78 0 79 -0.245
		 81 -0.245 86 -0.245;
	setAttr -s 20 ".kit[7:19]"  1 18 18 18 18 18 18 18 
		18 18 18 1 18;
	setAttr -s 20 ".kot[0:19]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 20 ".kix[7:19]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.080000000000000071 0.040000000000000036 0.080000000000000071 
		0.19999999999999973;
	setAttr -s 20 ".kiy[7:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.080000000000000071 0.040000000000000036 0.080000000000000071 
		0 0.19999999999999973;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1371";
	rename -uid "5F8E5A9D-453C-E03C-48B7-8FA18C483980";
	setAttr ".tan" 18;
	setAttr -s 19 ".ktv[0:18]"  1 0.05 3 0.05 5 0.05 9 0.05 14 0.05 23 0.05
		 34 0.05 35 0.05 38 0.05 41 0.05 44 0.05 49 0.05 58 0.05 59 0.05 73 0.05 76 0.05 79 0.05
		 81 0.05 86 0.05;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 18 18 18 18 
		18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  5 1 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 5 18;
	setAttr -s 19 ".kix[7:18]"  0.039999999999999147 0.12000000000000011 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0.19999999999999973;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.080000000000000071 0.15999999999999998 
		0.20000000000000007 0.36 0.44000000000000006 0.039999999999999813 0.19999999999999929 
		0.11999999999999988 0.12000000000000011 0.19999999999999996 0.35999999999999988 0.040000000000000036 
		0.56 0.12000000000000011 0.12000000000000011 0.080000000000000071 0 0.19999999999999973;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1373";
	rename -uid "F0F412F3-47C6-35BE-F03D-2DBBBB379408";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "CURVE1374";
	rename -uid "4925298C-4267-B8A6-287D-0FA0DAB5C5EA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "CURVE1375";
	rename -uid "0182C7CA-4B8F-7FEF-CEFB-BA95B0F83CF5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "CURVE1376";
	rename -uid "CB48E40D-40EB-3190-7F75-1D81EF4F6F59";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "CURVE1377";
	rename -uid "734513E6-4BBA-C6E2-64B1-76B0E2D6B296";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "CURVE1378";
	rename -uid "FD7EFD18-40C0-969E-01FE-BEA1F783BC04";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "CURVE1380";
	rename -uid "A83EF403-4F34-B8B4-4113-18A685847D58";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1381";
	rename -uid "F5DBB20B-4796-D759-41E5-B69D69B044E4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.4405641621331588 9 -0.4405641621331588
		 16 -0.28636670538655323 23 -0.28636670538655323 73 -0.28636670538655323 79 -0.28636670538655323
		 81 -0.28636670538655323 86 -0.28636670538655323;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1382";
	rename -uid "B3A367BD-4FE5-0AC8-E89A-63981CA43C8B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1383";
	rename -uid "80DF2E50-43C3-DA86-F531-558EF4491651";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1384";
	rename -uid "B54CA422-4D19-1F29-6D78-5AA8E09B3446";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1385";
	rename -uid "A846DBD7-49DB-1246-E0B5-24B4469810C9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1386";
	rename -uid "341C247E-4B41-2BA3-022F-9DB73F64D67F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1387";
	rename -uid "689DD5AD-4DBA-CF74-D3DD-71ACB2AF6F77";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 7.4474636727867702 23 7.4474636727867702
		 73 7.4474636727867702 79 7.4474636727867702 81 7.4474636727867702 86 7.4474636727867702;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1389";
	rename -uid "A119839C-47E4-EDAA-EEE6-29B8C694AED9";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1390";
	rename -uid "77C12FC0-42F4-7800-2527-81A41712DD0A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1391";
	rename -uid "58E6C4E3-4984-8CF1-8143-48BF221EF411";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1392";
	rename -uid "246BEB45-4B9F-B6AA-E7E7-508370530BDD";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1393";
	rename -uid "80EBE874-4D87-F032-B6DE-C69298D4DDDE";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1394";
	rename -uid "229A80CB-4A79-9C64-5474-7E8FB138DBA7";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1395";
	rename -uid "18BAADF7-4A0E-8C03-0505-99B84778130B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1396";
	rename -uid "65009291-477B-A2F4-FE3A-498BB0938CAC";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1397";
	rename -uid "CC5CE6FE-4632-9DBA-3354-DE9D1148ECA5";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1399";
	rename -uid "655D3CA1-47C8-41F0-4EF5-F4BC5FF33D35";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1400";
	rename -uid "96C0824C-4731-4D07-05EB-4C9431436F97";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1401";
	rename -uid "626CAEF2-4A82-DB72-9D0E-06891064700E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1402";
	rename -uid "A84DC208-47CD-DD6E-034A-1B85A42C2694";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000011 20 1.0000000000000011
		 23 1.0000000000000011 78 1.0000000000000011 81 1.0000000000000011 86 1.0000000000000011;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1403";
	rename -uid "E24F15A6-4EB4-062B-C3A3-509C46720E64";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1404";
	rename -uid "7E9BEFF0-49C5-9F3E-9388-04ABB9E1ED16";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1405";
	rename -uid "2D06E527-4CE9-B95C-E4EF-468952C9E7E7";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1406";
	rename -uid "23EAA54B-465D-C20A-F9AF-2BA5C59DD0EE";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1407";
	rename -uid "A8A0EE0D-40EB-09D3-AEBB-5DBB81C39FF9";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1409";
	rename -uid "8F7743C9-40B6-C4A2-4CA9-E78E5DF8F1C3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1410";
	rename -uid "CA16EE1E-4B8A-521E-21A6-F0AC6C5E8585";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.4405641621331588 9 -0.4405641621331588
		 16 -0.28636670538655323 23 -0.28636670538655323 73 -0.28636670538655323 79 -0.28636670538655323
		 81 -0.28636670538655323 86 -0.28636670538655323;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1411";
	rename -uid "A50B7464-46D7-FBE8-C03D-EBAD64CC3A80";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1412";
	rename -uid "E3BCDEA8-47B4-D8C7-1B29-33A2B9C7E28E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1413";
	rename -uid "68A39A0B-41E5-FA10-598F-57977BB6A5BE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1414";
	rename -uid "0D9463CB-4CA4-C5D4-0DE2-E5BFC70029D7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1415";
	rename -uid "88A8CC34-49E1-DFE3-643D-83BA9B1ECF71";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1416";
	rename -uid "DA8788C2-412E-B493-6215-80A2FCBC5CF5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 -6.883438437664922 23 -6.883438437664922
		 73 -6.883438437664922 79 -6.883438437664922 81 -6.883438437664922 86 -6.883438437664922;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1418";
	rename -uid "ECDCA2F4-460E-9D62-786C-C48C401453D0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1419";
	rename -uid "0360F7FF-4532-EECE-23C7-03B121F13FBE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1420";
	rename -uid "BAC16E31-4BE4-76F8-F001-F8A456431C25";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1421";
	rename -uid "17A7BA5A-4996-5159-A811-1580F25001EF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1422";
	rename -uid "BB3BAED6-4AFD-AC4C-460C-738EE1A43BC8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1423";
	rename -uid "D314BAF5-4DD4-95C6-7673-5B8C94E2D1AF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1424";
	rename -uid "86F47F13-403A-EE41-DC57-33AF2452F808";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1425";
	rename -uid "5D5524C5-4E6A-2563-0B4E-469E159E034C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1426";
	rename -uid "870DBDD1-47C6-BE0C-5B28-6298C22F9EA6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -62.448546198986627 9 -62.448546198986627
		 17 -62.448546198986627 23 -62.448546198986627 73 -62.448546198986627 78 -62.448546198986627
		 81 -62.448546198986627 86 -62.448546198986627;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1428";
	rename -uid "D7D1D4BA-45CB-404C-B0D2-359EF5E3ABB7";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1429";
	rename -uid "7B5031BB-40F8-95A9-3F0F-B08B94747A4A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1430";
	rename -uid "092E726B-4E00-2F6F-051D-CCAD64BE2592";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1431";
	rename -uid "82EB4A77-4E6A-19F6-FB2C-C0BA95D13256";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1432";
	rename -uid "3C6AA2E9-466E-5987-DEEA-C79E080033E5";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1433";
	rename -uid "14DA1B4D-4932-DF82-36B1-A98C871CC5D3";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1434";
	rename -uid "B10D40F4-42E2-309C-8F0E-598809797CE9";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1435";
	rename -uid "2FF5F8D0-4412-5A03-B3FF-75ABFF6A91DB";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1436";
	rename -uid "FE5EB28E-45C9-B1F5-4010-B0960D12C5D9";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1438";
	rename -uid "42BFB385-4A3A-D135-2B7C-529C0402CD53";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "CURVE1439";
	rename -uid "C903145E-4944-81FB-DE56-698DEDB927B7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 2.5036643488387789 86 2.5036643488387789;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "CURVE1440";
	rename -uid "134E6738-4281-5CE1-DCF8-EC839F482794";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 -4.6815008434022367 86 -4.6815008434022367;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "CURVE1441";
	rename -uid "C9DCB7B1-45DF-FB0F-1C0B-2EB7393778EF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 2.386799253935056 86 2.386799253935056;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1442";
	rename -uid "43156199-465D-B3F9-546A-2E8AC008DC60";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 3 86 3;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  1 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "CURVE1444";
	rename -uid "48382A7C-4F53-AB3B-E9F6-59A31FE1D785";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1445";
	rename -uid "36A1E7C5-4357-B8C5-2F0F-398D693AFFBC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1446";
	rename -uid "F067CFFE-4099-6559-50CA-17B7AE5EBF77";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1447";
	rename -uid "AB2278B2-429B-8767-69BC-C099B42B97D1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1448";
	rename -uid "44DD7585-46AA-E535-49DE-75B5E2F15357";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1449";
	rename -uid "608FA3B6-4D30-BC74-4B28-55B632C094B9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1451";
	rename -uid "176F65D0-4BE0-3452-22EA-F2BDF9FC3370";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 30.462495301117297 9 30.462495301117297
		 17 30.462495301117297 23 30.462495301117297 73 30.462495301117297 78 30.462495301117297
		 81 30.462495301117297 86 30.462495301117297;
	setAttr -s 8 ".kit[1:7]"  1 18 18 18 18 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[1:7]"  0.48000000000000043 0.32000000000000006 
		0.24 2 0.20000000000000018 0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  0.32000000000000028 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1452";
	rename -uid "0E341249-4D04-F6C3-936E-BBB93FE4FB93";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -22.828269485585075 9 -22.828269485585075
		 17 -22.828269485585075 23 -22.828269485585075 73 -22.828269485585075 78 -22.828269485585075
		 81 -22.828269485585075 86 -22.828269485585075;
	setAttr -s 8 ".kit[1:7]"  1 18 18 18 18 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[1:7]"  0.48000000000000043 0.32000000000000006 
		0.24 2 0.20000000000000018 0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  0.32000000000000028 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1453";
	rename -uid "AEFEC2D0-4A7B-86DF-6306-F6B84FA6F48E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 18 18 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[1:7]"  0.48000000000000043 0.32000000000000006 
		0.24 2 0.20000000000000018 0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  0.32000000000000028 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1454";
	rename -uid "7EFF3432-4CDE-C4A2-66F4-5A8EB1AA5AF4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 18 18 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[1:7]"  0.48000000000000043 0.32000000000000006 
		0.24 2 0.20000000000000018 0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  0.32000000000000028 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1455";
	rename -uid "2059DBFE-4C0F-E3F8-3D20-84AEDB8535D3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 49.377395243645722 9 49.377395243645722
		 17 49.377395243645722 23 49.377395243645722 73 49.377395243645722 78 49.377395243645722
		 81 49.377395243645722 86 49.377395243645722;
	setAttr -s 8 ".kit[1:7]"  1 18 18 18 18 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[1:7]"  0.48000000000000043 0.32000000000000006 
		0.24 2 0.20000000000000018 0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  0.32000000000000028 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1456";
	rename -uid "6A2D6E02-4866-001F-2184-57873BDC857E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 18 18 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[1:7]"  0.48000000000000043 0.32000000000000006 
		0.24 2 0.20000000000000018 0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  0.32000000000000028 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1458";
	rename -uid "5300583B-4B1F-8AB9-99EA-7A94D42C1248";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1459";
	rename -uid "1AC934DE-4FDC-0738-F1D8-9B950EBD31DB";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.012820216532783113 9 0.012820216532783113
		 16 0.12287861225154488 23 0.12287861225154488 73 0.12287861225154488 79 0.12287861225154488
		 81 0.12287861225154488 86 0.12287861225154488;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1460";
	rename -uid "16425BD5-4183-FDD0-34E0-DF903D41CED8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 -0.0088005453263979138 23 -0.0088005453263979138
		 73 -0.0088005453263979138 79 -0.0088005453263979138 81 -0.0088005453263979138 86 -0.0088005453263979138;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1461";
	rename -uid "42CF8491-4ADA-142B-0251-81936F81FB93";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1462";
	rename -uid "0D2CC3D2-4024-8BF2-7A1B-268EED8443DE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1463";
	rename -uid "03EEF27C-4135-39CA-76DB-B9AD064768BE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1464";
	rename -uid "95776FF4-4E4E-A54E-4280-C69620524A0A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -5.0419375379391509 9 -5.0419375379391509
		 16 -6.1173172362751087 23 -6.1173172362751087 73 -6.1173172362751087 79 -6.1173172362751087
		 81 -6.1173172362751087 86 -6.1173172362751087;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1465";
	rename -uid "7747BCC1-4C01-63CF-B24C-868CC938459C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1466";
	rename -uid "ABA44AE8-4FC5-4E43-D5E5-DC94661B16C7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1468";
	rename -uid "78CFB0E4-4F64-11FB-E25F-2A9A84DE3DC8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1469";
	rename -uid "51C7F644-464F-A272-30E7-28B7574331E7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1470";
	rename -uid "39E64517-465E-3F64-D6D0-328159C7F91F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1471";
	rename -uid "FE425F79-4DBC-F13A-4B67-A992E14CA6A1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1472";
	rename -uid "5E723CFE-490C-99F0-E385-BE90A72F3EE7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1473";
	rename -uid "EFCD4725-4D92-AC44-CE4B-78B7BF7C6B9A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[3:7]"  9 18 9 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 5 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 0 0.20000000000000018 
		0 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1474";
	rename -uid "36A53531-4935-2831-AB2E-FCABB0004302";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 19.609532959701653 9 19.609532959701653
		 17 19.609532959701653 23 19.609532959701653 73 19.609532959701653 78 19.609532959701653
		 81 19.609532959701653 86 19.609532959701653;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1475";
	rename -uid "625FA531-4EDA-6EBB-AE42-08A8CAA8FE38";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1476";
	rename -uid "8A8428DE-4FD1-E158-5F03-999FBDB155CD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 13.186732327832811 9 13.186732327832811
		 17 13.186732327832811 23 13.186732327832811 73 13.186732327832811 78 13.186732327832811
		 81 13.186732327832811 86 13.186732327832811;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1477";
	rename -uid "57B6D861-4F76-F259-CF6E-DEB538465D66";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1479";
	rename -uid "C63B0C3F-4494-748E-6404-FB90548D9D10";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.51554456586438646 9 -0.51554456586438646
		 16 -0.33510396781185103 23 -0.33510396781185103 73 -0.33510396781185103 79 -0.33510396781185103
		 81 -0.33510396781185103 86 -0.33510396781185103;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1480";
	rename -uid "3B5C9261-407D-38B4-308E-CCA14E95C715";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.12081383184702824 9 -0.12081383184702824
		 16 0.0044324392073874785 23 0.0044324392073874785 73 0.0044324392073874785 79 0.0044324392073874785
		 81 0.0044324392073874785 86 0.0044324392073874785;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1481";
	rename -uid "381C1FBC-45F6-F452-AAF3-358EBDD8CB75";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1482";
	rename -uid "64BFB096-4C2A-0296-5B79-339F51B18E5A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1483";
	rename -uid "D5DA6BBA-46A2-EC90-AD6F-C5AC5423C912";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1484";
	rename -uid "1981CEF9-425B-44FD-F237-12B1723D6A3D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1485";
	rename -uid "B6A2DC9D-4B9A-75C2-98D5-56ACAE4F4B6B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1486";
	rename -uid "28E6EE95-4786-306B-B3E7-C48D4665C9F5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1487";
	rename -uid "F002B698-485E-5E8A-A786-93AC415DDEC5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1488";
	rename -uid "370367F5-4CDF-1D64-EACF-CF82E9D5BFBA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1489";
	rename -uid "22624758-4A87-53FD-6727-C4AF92491168";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1491";
	rename -uid "72E4A360-4AC7-0FF1-3AA7-C48084A7B8EB";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1492";
	rename -uid "AC78485B-410C-88E5-0742-C8844F0DB15D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1493";
	rename -uid "9578BA60-4B78-0A71-33E3-B0ADDF432686";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1494";
	rename -uid "BE1C812F-4E5A-9982-68B3-95BC327D3F02";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1495";
	rename -uid "E7E8AF8C-4410-517B-C552-918E421454CA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1496";
	rename -uid "0844A5F2-4F4D-1722-231E-D9869C595602";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1497";
	rename -uid "A0A39FA4-48B8-5085-00FB-B296E9869EB7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1498";
	rename -uid "8EEBE186-4D8D-1145-D34A-6C82FC625E35";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1499";
	rename -uid "235A5133-442C-A180-D925-87B1FEB8B7F1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -51.903805993547415 9 -51.903805993547415
		 17 -51.903805993547415 23 -51.903805993547415 73 -51.903805993547415 78 -51.903805993547415
		 81 -51.903805993547415 86 -51.903805993547415;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1501";
	rename -uid "E3848133-4E54-2B19-BBA2-1895AC027B69";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1502";
	rename -uid "62725B1F-4843-A56A-06BD-1180868052D0";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1503";
	rename -uid "7C76325E-44E2-ABB2-0716-3AB8FD03D21E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1504";
	rename -uid "DA354D00-41AB-4E56-C984-D9951F1F29EB";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000004 20 1.0000000000000004
		 23 1.0000000000000004 78 1.0000000000000004 81 1.0000000000000004 86 1.0000000000000004;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1505";
	rename -uid "C3D2EDC7-41C1-AA38-CFC3-71AD6AF9BBA5";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000007 20 1.0000000000000007
		 23 1.0000000000000007 78 1.0000000000000007 81 1.0000000000000007 86 1.0000000000000007;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1506";
	rename -uid "40656124-41A1-8B0A-5408-66AAA3FD0E3F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000004 20 1.0000000000000004
		 23 1.0000000000000004 78 1.0000000000000004 81 1.0000000000000004 86 1.0000000000000004;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1507";
	rename -uid "9196542D-4774-D54E-47A7-66AE4501B7AC";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1508";
	rename -uid "C25474A0-400F-A80A-1A0C-3592A867A1E4";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1509";
	rename -uid "AB361CED-4970-AA7D-9B49-B486789B1D23";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1511";
	rename -uid "CC47C91D-4DF7-23DB-F285-1BAF659C58D1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1512";
	rename -uid "69F6BA9A-4BA3-BAD3-BC73-28986F37A381";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 -0.091141944524824256 23 -0.091141944524824256
		 73 -0.091141944524824256 79 -0.091141944524824256 81 -0.091141944524824256 86 -0.091141944524824256;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1513";
	rename -uid "60EE2AF9-4F8E-D442-8719-FD99C5CC6647";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1514";
	rename -uid "CA731FE6-4E25-A7E3-DF63-4B9381E52A08";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1515";
	rename -uid "AF04DF23-48ED-9F57-6C27-6F943852006A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1516";
	rename -uid "725EA0B6-4639-06AA-DA8D-04A89AF22BF8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1517";
	rename -uid "F2E0FFE2-40D3-553A-3C83-89851F55378D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1518";
	rename -uid "1A0B49E3-4FFC-715E-1E3B-299CC73C57D5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1519";
	rename -uid "BAB28168-4580-BD4F-3451-C5B358DA2DEA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1521";
	rename -uid "DC25EF97-43F6-7FE3-0281-429D14F72A4E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.010000000000000009 86 0.010000000000000009;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1522";
	rename -uid "E9B01142-4F6D-5029-8688-A1B8D335C71B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 86 1;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1523";
	rename -uid "A8462715-4C91-63FE-0B29-F5A550589F71";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1524";
	rename -uid "A6790B37-430D-49F1-04D8-A6A9A2D4AA8F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1525";
	rename -uid "130579EA-42BD-16BA-5371-1697D42CF8BF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.010000000000000009 86 0.010000000000000009;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1526";
	rename -uid "41C34857-49B3-2E00-4A2C-CC875736332F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1527";
	rename -uid "B4B81F0A-4F44-D77B-EDB4-058C8EA7F7A5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1528";
	rename -uid "EB89A1DF-4F11-2BBC-B6ED-808E0F3C931D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1529";
	rename -uid "C9781086-4C9E-4F83-B57F-EAB91A85AB1B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1530";
	rename -uid "DB986579-457C-4695-73B6-16827773EBAA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 86 1;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1531";
	rename -uid "3C002BB6-4F59-05B8-9715-E6987DD7C39E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1532";
	rename -uid "3A1CCD7E-4C80-2A94-9DA3-3D909DCE598A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1533";
	rename -uid "5C9E796F-4B38-C90E-E351-529622920AB5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.010000000000000009 86 0.010000000000000009;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1534";
	rename -uid "ED755C4A-4274-3223-6EFD-818F8B1B7C34";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 86 1;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1535";
	rename -uid "9F9A38E3-4F53-B256-A5D1-F8962314EFA5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "CURVE1536";
	rename -uid "9E2BC398-41CE-B55C-4AF9-9987F95E4AF5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 86 0;
	setAttr -s 2 ".kit[0:1]"  1 18;
	setAttr -s 2 ".kot[0:1]"  5 18;
	setAttr -s 2 ".kix[0:1]"  0 3.4;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "CURVE1538";
	rename -uid "5C549F10-441F-D629-5852-44A20AAF04F8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1539";
	rename -uid "4E50B3F4-43F1-47EE-D2EC-AFABB45AF796";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1540";
	rename -uid "2438BE53-4677-685C-9852-ED8963707F53";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1541";
	rename -uid "44A87D92-4385-1E51-3F92-28ADBF941FDA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1542";
	rename -uid "D1A26DCA-4681-FA4D-017E-26ABCBFE214A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1543";
	rename -uid "EA1FD6DB-419B-3B59-EA45-8D9024EEC9BF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[3:7]"  9 18 9 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 5 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 0 0.20000000000000018 
		0 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1544";
	rename -uid "F9CE8987-4D86-5F9B-1EB0-91AD570BCC74";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 10.362451078522373 9 10.362451078522373
		 17 10.362451078522373 23 10.362451078522373 73 10.362451078522373 78 10.362451078522373
		 81 10.362451078522373 86 10.362451078522373;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1545";
	rename -uid "8B4197C1-4284-5563-BAAE-ADB7732A8E2E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 10.277741391977695 9 10.277741391977695
		 17 10.277741391977695 23 10.277741391977695 73 10.277741391977695 78 10.277741391977695
		 81 10.277741391977695 86 10.277741391977695;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1546";
	rename -uid "41D06E31-4F93-C448-FD7C-2A916380B4AF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -19.809093118056499 9 -19.809093118056499
		 17 -19.809093118056499 23 -19.809093118056499 73 -19.809093118056499 78 -19.809093118056499
		 81 -19.809093118056499 86 -19.809093118056499;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1547";
	rename -uid "8336AAC8-4C31-6D24-28CA-A2AC964F9ACC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1549";
	rename -uid "08D53210-48EA-C9F6-CCF2-AFB6465BD055";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1550";
	rename -uid "D3BF3F0B-45E5-F9A8-C3E7-98B20D3CE1E6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.097517083487630996 9 0.097517083487630996
		 16 0.28934301119779987 23 0.28934301119779987 73 0.28934301119779987 79 0.28934301119779987
		 81 0.28934301119779987 86 0.28934301119779987;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1551";
	rename -uid "7AE4CD9A-454C-88E3-8E96-08B79609550B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1552";
	rename -uid "F5189E2D-490A-E77F-6387-0A94A8ED255D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1553";
	rename -uid "55710DE3-41AB-184C-729A-00AC693C337B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1554";
	rename -uid "66E924C3-4318-6136-F981-83BF080412CD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1555";
	rename -uid "2AD748D5-4D16-A252-9B78-76A5C2032732";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1556";
	rename -uid "296B66C3-4D3F-7E64-EE1B-529D11BD3FB9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 16.690388231276536 9 16.690388231276536
		 16 10.848752350329748 23 10.848752350329748 73 10.848752350329748 79 10.848752350329748
		 81 10.848752350329748 86 10.848752350329748;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1558";
	rename -uid "195ECE7F-4B19-31B9-4DBA-3A869E5D5601";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1559";
	rename -uid "69415EC7-400E-C657-6707-4FBBE8391392";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.34593678146637813 9 -0.34593678146637813
		 16 -0.21418004564986226 23 -0.21418004564986226 73 -0.21418004564986226 79 -0.21418004564986226
		 81 -0.21418004564986226 86 -0.21418004564986226;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1560";
	rename -uid "D4FC2AF3-4D3D-166F-0521-5E9BA1C61B84";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1561";
	rename -uid "0F5512F7-4596-AEAA-6BDB-6AB075DDBBD2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1562";
	rename -uid "FD922A32-498E-6DD9-39B2-8C9EE3A1944A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1563";
	rename -uid "4D922A42-4BA3-268B-9164-38933C2B3163";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1565";
	rename -uid "87CF4767-4B64-FF1C-4FD0-ED933DD403B9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1566";
	rename -uid "4E348C11-44B8-53E1-49B1-B7931D3FCBB5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1567";
	rename -uid "FEFDF02D-4E30-73CF-A4BA-92A8489844AA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1568";
	rename -uid "DC7478D2-425E-6D7C-73C3-A29980B408B9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1569";
	rename -uid "73DF4E0A-411C-8FC1-B2B4-219AA032F3F0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1570";
	rename -uid "13025C24-4213-027C-6F7C-F1B3CDEB144F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1572";
	rename -uid "D9371B6E-4002-0D4B-00E8-CCB1AF89DC3F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE1573";
	rename -uid "BB18465D-4FC7-9659-51A1-4AA558430A98";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE1574";
	rename -uid "3E858D68-4257-4386-5BF9-0699266991A5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE1575";
	rename -uid "FE464F18-4DE7-3C4D-90DF-14974C106942";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE1576";
	rename -uid "7EEB148E-457C-DC9F-D52E-37805C6AFBD1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE1577";
	rename -uid "60B31BDB-4DC2-36F1-C257-1EAE57F97B5B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE1578";
	rename -uid "254DA999-4E91-A6DA-67E0-AB8456F183B6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE1579";
	rename -uid "73C4E15C-44CA-D767-1840-6F80544399A6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE1580";
	rename -uid "F94D073D-4067-9DD6-94FD-079B5A3F9C35";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE1582";
	rename -uid "277FA78D-46F3-DE4C-8D97-A293634177FD";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1583";
	rename -uid "4E3D86F3-43BF-A37D-7567-6CAF76DBEC08";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1584";
	rename -uid "A98820C6-4617-FC3F-979D-79AECF28FB2C";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1585";
	rename -uid "3C4D5D7C-4F42-B47E-C6AD-F5A550ADC0B8";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1586";
	rename -uid "1EB2DC78-48FE-CB26-D66F-D6A294409D85";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1587";
	rename -uid "58423ECE-46B6-A279-3445-F8ADFD5E0446";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1588";
	rename -uid "36A8423B-438D-9F7B-308E-45923172D731";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1589";
	rename -uid "E5231E68-4F77-9788-7EA1-688AE302F612";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1590";
	rename -uid "9AFE7550-4867-62EC-3918-098074237608";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1592";
	rename -uid "9CEE801B-4FEA-1856-0D6F-C99A88E6DA0B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1593";
	rename -uid "0ABDC588-44DD-0964-7B46-659799EB3BCC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.2658497638061586 9 0.2658497638061586
		 16 0.071558625263134668 23 0.071558625263134668 73 0.071558625263134668 79 0.071558625263134668
		 81 0.071558625263134668 86 0.071558625263134668;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1594";
	rename -uid "BE3412E0-45CA-7875-E5CF-D79EB9633A2D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 -0.016453724371070299 23 -0.016453724371070299
		 73 -0.016453724371070299 79 -0.016453724371070299 81 -0.016453724371070299 86 -0.016453724371070299;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1595";
	rename -uid "7E80B9D8-40C7-94CF-D23F-BDA151E2BED1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1596";
	rename -uid "AE09DBE8-42B9-E17D-172A-52A231835C39";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1597";
	rename -uid "7BD0D7CF-44A3-AEDF-875C-4CB0AD35DC74";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1598";
	rename -uid "62B28242-432C-828D-1BDC-348A5BEFF310";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 7.0253914089997647 9 7.0253914089997647
		 16 8.6545772108705314 23 8.6545772108705314 73 8.6545772108705314 79 8.6545772108705314
		 81 8.6545772108705314 86 8.6545772108705314;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1599";
	rename -uid "BCC02314-459F-09C8-84ED-36BF8EDE5843";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1600";
	rename -uid "80196A3D-46B0-47C5-E576-B387C906ED15";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1602";
	rename -uid "2252CBAF-4AA8-919A-13AF-D69B884E2560";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "CURVE1603";
	rename -uid "C2FE7A04-49C3-EE90-5F53-37A17C50F713";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "CURVE1604";
	rename -uid "B900F4A9-4F3C-D582-EEFD-BDA99768EC6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "CURVE1605";
	rename -uid "F4F6A542-412E-E6FE-A663-85998BE1726F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 23 1 78 1 81 1 86 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "CURVE1606";
	rename -uid "A4CC04EE-4D8C-CF5D-4F5D-57A7EC25F6BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 23 1 78 1 81 1 86 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "CURVE1607";
	rename -uid "87384EFC-463E-8A7F-639E-92BA770BDF7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 23 1 78 1 81 1 86 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "CURVE1608";
	rename -uid "5438C1EC-417F-1B2F-7562-FEBB4743E3B8";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTA -n "CURVE1609";
	rename -uid "FDCA7B02-4DC3-F763-A903-B99CCBE73960";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTA -n "CURVE1610";
	rename -uid "61695824-493F-7E4E-F3DF-668F34A21AC6";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTU -n "CURVE1612";
	rename -uid "42BA1C35-430A-58F0-CAFD-5FAB8E6008FD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1613";
	rename -uid "9E53E26E-4494-A3F5-E810-71B14A37DC8C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1614";
	rename -uid "5E3A622A-4619-FD64-0F7F-6BB6D11F6986";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1615";
	rename -uid "C047BAA3-4C04-BEB4-E571-9488D3D512C9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1616";
	rename -uid "295CD96A-4F16-E386-5217-1A8C0BCE7EAC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 5 9 5 17 5 23 5 73 5 78 5 81 5 86 5;
	setAttr -s 8 ".kit[3:7]"  9 18 9 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 5 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 0 0.20000000000000018 
		0 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1618";
	rename -uid "BEF2D5B7-4991-B46F-0107-BA99375B5E81";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1619";
	rename -uid "7C823874-4EBC-94DC-C434-1BB9BCE392E0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1620";
	rename -uid "ECC88DAB-4690-FE46-BC25-35BB96707E9E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1621";
	rename -uid "DF10E58B-41B4-0EC6-02BA-F28416A35117";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1622";
	rename -uid "84569FD1-46A3-2195-0B05-BEAE56513256";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1623";
	rename -uid "15A9ECA6-446F-EE87-D586-27BEB872EC23";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[3:7]"  9 18 18 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 0 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1624";
	rename -uid "AF9B5299-4A51-A58D-C0C3-F69E87F907B3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1625";
	rename -uid "ABC69E9E-46CD-F39F-C401-FF81EC602AF0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1626";
	rename -uid "C332A44D-4E74-DA6C-02E3-F5AAECE7A78B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1627";
	rename -uid "3A8712C9-497B-8F28-CC07-F4AF2C5DFD12";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1629";
	rename -uid "C2464AD6-45A6-2E94-3D5D-958F63E768F5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1630";
	rename -uid "60FCC13E-4702-0424-4312-169C45D0AB70";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1631";
	rename -uid "17ADCD4C-4659-1C62-3C95-72B9185D824E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1632";
	rename -uid "18694C65-4706-D2F3-0873-6DA420995F95";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1633";
	rename -uid "8A0A2B15-4C0C-50F5-F753-D8BE46F17B7F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1634";
	rename -uid "0D231F95-45EB-B250-5659-959EBCCF565A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1635";
	rename -uid "098FE96A-461B-5FEB-F5C6-E1AF610962F2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1636";
	rename -uid "3225EE08-4A00-A513-920A-4E82870CDDA4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1637";
	rename -uid "C9E6A9F4-4C64-627F-44D1-529B2A819B45";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -31.812793044983163 9 -31.812793044983163
		 17 -31.812793044983163 23 -31.812793044983163 73 -31.812793044983163 78 -31.812793044983163
		 81 -31.812793044983163 86 -31.812793044983163;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1639";
	rename -uid "50AD24CF-4FDF-A7A4-5CD7-669633FAA96F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1640";
	rename -uid "53421B1E-45D6-EA69-5A47-BC8D291C9B8E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1641";
	rename -uid "1E16912B-480D-A91F-637C-41A158C9D168";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1642";
	rename -uid "B83A5411-4082-E8F4-6193-B4A7610580C0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1643";
	rename -uid "BC4ED224-49CA-AA93-5C21-2E9ADD3A9ECA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1644";
	rename -uid "BE9B9B95-4199-4BFF-8036-1E9FA0E88ECA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[3:7]"  9 18 18 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 0 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1645";
	rename -uid "E89E6CF1-4FCE-2C1E-380B-39A42D48EC5A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1646";
	rename -uid "447FC09E-4531-01A4-46AB-9FAA3A610CDC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1647";
	rename -uid "C0767C55-4903-5BA3-DF98-7CADEB94D043";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1648";
	rename -uid "6964E70E-4B23-3A61-86AC-49BAB73A5672";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1650";
	rename -uid "D323D314-444A-2704-8A9E-30B24BF28404";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1651";
	rename -uid "3C73E1F2-4639-5FC9-1EFE-BA85B357D35A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1652";
	rename -uid "59BA2AE2-4567-9E12-CA9C-18BAE4A56C10";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1653";
	rename -uid "322F0109-4BF0-380B-F32F-2B878057A588";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1654";
	rename -uid "C919D334-45D4-D765-EA27-C68CBD638E83";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1655";
	rename -uid "B842D3E7-4449-5620-AB68-0492E5BAC15B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1656";
	rename -uid "6973FA7F-4945-197B-B6A0-B587F3728056";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1657";
	rename -uid "EC931B0A-463D-F9C0-7389-B3B7F51337C8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1658";
	rename -uid "80C63D40-4D9F-96FB-F765-B9918285472A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1660";
	rename -uid "6FA9DA16-4D5C-96B4-4305-208E487DF45E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1661";
	rename -uid "CEC3D974-4D74-FC04-007D-74B11A2B9374";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1662";
	rename -uid "D4EC2112-4084-A8A7-8DC6-ADAF1FF45D6D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1663";
	rename -uid "4E3D725B-4004-957D-8441-188FD9F7CF72";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1664";
	rename -uid "D9CC9A7E-4B59-67B2-5B4E-43BA4ED8423E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1665";
	rename -uid "A32C9502-4637-2B16-61ED-CF8927F7B0AE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[3:7]"  9 18 9 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 5 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 0 0.20000000000000018 
		0 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1666";
	rename -uid "9F3A65BE-4D45-C511-CCB2-1CBC291AACC9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1667";
	rename -uid "73BF0879-4D66-6D02-DA39-DFBE9FC0723A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 3.2653563145215307 9 3.2653563145215307
		 17 3.2653563145215307 23 3.2653563145215307 73 3.2653563145215307 78 3.2653563145215307
		 81 3.2653563145215307 86 3.2653563145215307;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1668";
	rename -uid "7C308E43-40B0-5B24-509C-B7BC4445914A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -26.455601987684325 9 -26.455601987684325
		 17 -26.455601987684325 23 -26.455601987684325 73 -26.455601987684325 78 -26.455601987684325
		 81 -26.455601987684325 86 -26.455601987684325;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1669";
	rename -uid "B43CEB27-4AAC-5C43-6DA1-ACB832A98294";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1671";
	rename -uid "F57823EE-4853-1FAB-ABFB-CFA9D8AC21B4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1672";
	rename -uid "198755FA-495D-008D-F4A4-3A9FCC565791";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.012820216532783113 9 0.012820216532783113
		 16 0.055543447420964821 23 0.055543447420964821 73 0.055543447420964821 79 0.055543447420964821
		 81 0.055543447420964821 86 0.055543447420964821;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1673";
	rename -uid "BF722EC8-4ED3-E1F8-1868-74BF3E629567";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1674";
	rename -uid "C7AAC3AF-4E73-BE6C-2112-87993D9ECA8B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1675";
	rename -uid "297B1DC6-4ABC-5205-729B-59B40474D5C3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1676";
	rename -uid "4CE26E05-4674-C2B3-9718-5083750BA0EF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1677";
	rename -uid "3D8469DE-4A9A-1CC1-B9B7-96B8E40DD53B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1678";
	rename -uid "C35BFD9D-4641-01E4-18FA-3584BE67CD9A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1679";
	rename -uid "9B77D166-4D58-B930-E979-FA99D99CBE2E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1681";
	rename -uid "849A883A-41EF-0915-170A-7588575DE77A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1682";
	rename -uid "EE1BA010-47DB-AE5F-9FBF-80B5C30B2C44";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1683";
	rename -uid "BB75DA00-41E7-456F-5CD6-9F96ADBA8CF3";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1684";
	rename -uid "F99ABD9F-4526-5473-76B6-0DACBAFE60F1";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1685";
	rename -uid "9CECF673-4DDB-2D39-33D8-DC8F7D34C728";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1686";
	rename -uid "FE00A9C0-4E2F-0471-A516-86ADC62F40A4";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1687";
	rename -uid "67AAA3A0-4386-518F-E808-B098A4C1B6E8";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1688";
	rename -uid "55681EEB-47FE-28D6-FA30-ECA9D32935ED";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1689";
	rename -uid "E8A981B0-43D2-EF14-7070-BB8507B1686F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1691";
	rename -uid "D7DCCBF5-48DD-3A3C-7BF8-73BBE71F867A";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 43.364594562906845 9 43.364594562906845
		 12 44.653401059270216 15 43.364594562906845 18 43.364594562906845 23 43.364594562906845
		 73 43.364594562906845 78 60.185060104166098 81 61.50967176554019 86 61.50967176554019;
	setAttr -s 10 ".kyts[4:9]" yes no no no no no;
	setAttr -s 10 ".kit[8:9]"  1 18;
	setAttr -s 10 ".kot[0:9]"  5 1 18 18 18 18 18 18 
		5 18;
	setAttr -s 10 ".kix[8:9]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[1:9]"  0.11999999999999922 0.12 0.12 0.20000000000000007 
		2 0.20000000000000018 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 10 ".koy[1:9]"  0 0 0 0 0 0 0.069356504403870201 0 0;
createNode animCurveTA -n "CURVE1692";
	rename -uid "4E209F66-435E-1A0D-2071-4199C1FF37CF";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 -14.532123740169313 9 -14.532123740169313
		 12 -21.214344037599446 15 -14.532123740169313 18 -14.532123740169313 23 -14.532123740169313
		 73 -14.532123740169313 78 -14.532123740169313 81 -14.532123740169313 86 -14.532123740169313;
	setAttr -s 10 ".kyts[4:9]" yes no no no no no;
	setAttr -s 10 ".kit[8:9]"  1 18;
	setAttr -s 10 ".kot[0:9]"  5 1 18 18 18 18 18 18 
		5 18;
	setAttr -s 10 ".kix[8:9]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[1:9]"  0.11999999999999922 0.12 0.12 0.20000000000000007 
		2 0.20000000000000018 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 10 ".koy[1:9]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1693";
	rename -uid "406C245C-40F4-C601-7C90-E5B8FBB4B747";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 9 0 15 0 18 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 9 ".kyts[3:8]" yes no no no no no;
	setAttr -s 9 ".kit[2:8]"  1 18 1 18 18 1 18;
	setAttr -s 9 ".kot[0:8]"  5 1 1 18 1 18 18 5 
		18;
	setAttr -s 9 ".kix[2:8]"  0.24000000000000021 0.12 0.19999999999999929 
		2 0.20000000000000018 0.11999999999999922 0.19999999999999973;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  0.23999999999999932 0.12000000000000011 
		0.20000000000000007 1.88 0.20000000000000018 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1694";
	rename -uid "5B1C32AA-43DE-425F-BFB9-AF930CDFA4DA";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 9 0 15 0 18 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 9 ".kyts[3:8]" yes no no no no no;
	setAttr -s 9 ".kit[2:8]"  1 18 1 18 18 1 18;
	setAttr -s 9 ".kot[0:8]"  5 1 1 18 1 18 18 5 
		18;
	setAttr -s 9 ".kix[2:8]"  0.24000000000000021 0.12 0.19999999999999929 
		2 0.20000000000000018 0.11999999999999922 0.19999999999999973;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  0.23999999999999932 0.12000000000000011 
		0.20000000000000007 1.88 0.20000000000000018 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1695";
	rename -uid "86355FDA-47EF-8188-28A1-14A3C9F11E3D";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 28.650907903051174 9 28.650907903051174
		 12 31.469531592981614 15 28.650907903051174 18 28.650907903051174 23 28.650907903051174
		 73 28.650907903051174 78 28.650907903051174 81 28.650907903051174 86 28.650907903051174;
	setAttr -s 10 ".kyts[4:9]" yes no no no no no;
	setAttr -s 10 ".kit[8:9]"  1 18;
	setAttr -s 10 ".kot[0:9]"  5 1 18 18 18 18 18 18 
		5 18;
	setAttr -s 10 ".kix[8:9]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 10 ".kiy[8:9]"  0 0;
	setAttr -s 10 ".kox[1:9]"  0.11999999999999922 0.12 0.12 0.20000000000000007 
		2 0.20000000000000018 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 10 ".koy[1:9]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1696";
	rename -uid "348C54FF-4167-D49E-AF9C-CFB4845A3846";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 9 0 15 0 18 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 9 ".kyts[3:8]" yes no no no no no;
	setAttr -s 9 ".kit[2:8]"  1 18 1 18 18 1 18;
	setAttr -s 9 ".kot[0:8]"  5 1 1 18 1 18 18 5 
		18;
	setAttr -s 9 ".kix[2:8]"  0.24000000000000021 0.12 0.19999999999999929 
		2 0.20000000000000018 0.11999999999999922 0.19999999999999973;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  0.23999999999999932 0.12000000000000011 
		0.20000000000000007 1.88 0.20000000000000018 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1698";
	rename -uid "ECEC2B75-4410-A574-4D90-CEB148E053A4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1699";
	rename -uid "4A5FD652-4A5D-AF6C-BDFB-0FB049A70B76";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1700";
	rename -uid "0F88AA06-4B4F-BF1C-F3FD-76B747D5C9BB";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1701";
	rename -uid "45524BC4-4682-A534-FFAB-89B399B85FC9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1702";
	rename -uid "1D097AE8-427F-6CC7-BF3D-FEB6DD70C75F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1703";
	rename -uid "41F51038-4A80-DA11-4017-018E3DEEC3E7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1704";
	rename -uid "7624E670-463A-DC6B-741D-E3874075AA26";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1705";
	rename -uid "0B08D3D0-4D73-D0C8-02ED-F5903A3208C8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1706";
	rename -uid "0A25DD6B-4576-9F20-B93A-66A18AC677DD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1708";
	rename -uid "C3762D73-4F3B-00FD-BCE8-DFB827BDD8C2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1709";
	rename -uid "89E0A3BA-4B85-67D3-E92D-83A86F7A7B1F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1710";
	rename -uid "04F2DE54-40CC-2CB7-7CEC-518647BD105B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1711";
	rename -uid "2F47D767-4FEC-99BA-9AFC-9A84994B20D8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1712";
	rename -uid "CD350419-4FA1-F2D5-6CE3-05A41E2DD3C7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1713";
	rename -uid "01DCF9C9-4F7E-A95B-EC59-7FBC6E5CFF0E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1714";
	rename -uid "7441DBE7-4400-EE7A-DB74-C496855B3BBD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1715";
	rename -uid "EC14F34B-4D0B-7925-C1DE-74BE5DD237EB";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1716";
	rename -uid "562EE491-4F48-9E2B-80D1-B4897069D2E1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1718";
	rename -uid "7312E73C-4E29-465F-C99D-99AEE4B4294D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1719";
	rename -uid "3864BA5C-40FC-D12B-DC25-9C9900C3A4F6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.18553388015777228 9 0.18553388015777228
		 16 0.16995873557282373 23 0.16995873557282373 73 0.16995873557282373 79 0.16995873557282373
		 81 0.16995873557282373 86 0.16995873557282373;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1720";
	rename -uid "2413B4BD-4EBC-883B-3C64-3FAF2D41AAE5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0.012856549538490129 23 0.012856549538490129
		 73 0.012856549538490129 79 0.012856549538490129 81 0.012856549538490129 86 0.012856549538490129;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1721";
	rename -uid "CD316F49-4E93-8019-793B-14B9E36A5D8F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1722";
	rename -uid "9E8EF1BF-47EB-D9E7-9238-7EB58074D53D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1723";
	rename -uid "E5C5E7B4-4FD9-18E1-E05D-79A4B4824858";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1724";
	rename -uid "0A50AC95-4CFC-0A46-C9AA-298B319297B2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1725";
	rename -uid "8722C755-462C-47D4-7AE3-A9B793A6CA92";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1726";
	rename -uid "78CEED93-431E-D0DE-A371-D58E3648ED15";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1727";
	rename -uid "BEE6853D-43BE-E879-21F7-4282F54F0C78";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1728";
	rename -uid "B022DC2B-42A6-20C2-10F2-1C95618291D5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1729";
	rename -uid "E3052DA8-45D0-4D3E-FC76-CCAFB987CE1E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -1.5234017861351832 9 -1.5234017861351832
		 16 0.99021116098786921 23 0.99021116098786921 73 0.99021116098786921 79 0.99021116098786921
		 81 0.99021116098786921 86 0.99021116098786921;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1730";
	rename -uid "81E1E310-445F-FDA7-8310-21B065DBABF2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1731";
	rename -uid "B1329405-4189-180D-3F67-9B9AA4B0D625";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1732";
	rename -uid "44410B10-493D-910F-D6B1-A9BAA64D37DC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1734";
	rename -uid "07A04AA1-4934-F2A8-36B0-CB80E1C8942D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1735";
	rename -uid "6DF1F014-43C5-AF05-1665-319769CAAE37";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1736";
	rename -uid "126242A6-4003-F7B8-312B-179C6322A6B9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1737";
	rename -uid "FF1C46DA-4669-317E-FFAE-0A89967D2637";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1738";
	rename -uid "E32DDB6B-4E0E-4BF6-C279-72A26627CF32";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1739";
	rename -uid "4877D25F-4B56-B43E-0AB9-24A007B97EDF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1740";
	rename -uid "81BAC9ED-4889-6358-3CB8-378856CA2DE1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1741";
	rename -uid "1E3E080A-4789-9A61-6923-0AAFCCDB187B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1742";
	rename -uid "CD42C639-4158-85B0-1970-02933EDC9DEB";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1743";
	rename -uid "69BFAEC1-4BF5-9C3A-32D5-8DBB8F711954";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1745";
	rename -uid "341614C4-46A4-8F26-E146-9484E25F6B0C";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1746";
	rename -uid "412453A6-4C4B-2FC7-23E3-E991FBF63886";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1747";
	rename -uid "CB203FF7-4AAF-E996-6930-F6AB5279FF43";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1748";
	rename -uid "D304CF72-433F-78BB-15B4-AEB901DAFE66";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1749";
	rename -uid "39D51B9A-4366-7D18-4EB9-D5BF7A1ACEA2";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1750";
	rename -uid "4D46DAE3-42D9-135C-D806-EDBA3E11331F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1751";
	rename -uid "F10EA048-4C0D-5A52-8269-56A4F1F85CD4";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1752";
	rename -uid "53B840CC-4CBF-36B5-1CC0-719946B63A1F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1753";
	rename -uid "2B45F59C-433D-BB0A-AACA-3B9D866A8719";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1755";
	rename -uid "F7EE7D6E-4B17-60DC-DBA4-82801ED7AE12";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1756";
	rename -uid "0D9AFE14-4B6C-C0ED-0DA9-E597F1CE3919";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1757";
	rename -uid "DBC37A8D-4CEC-6A1D-709D-168B09F2034B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1758";
	rename -uid "C48D1E1F-4EF8-F90B-0C98-5FA518655450";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1759";
	rename -uid "5443A4E2-44E5-5073-09D7-65987AF01B50";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1760";
	rename -uid "AAD2AB1B-4E78-4C0A-C130-6B8E4A7D99CE";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000004 20 1.0000000000000004
		 23 1.0000000000000004 78 1.0000000000000004 81 1.0000000000000004 86 1.0000000000000004;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1761";
	rename -uid "9494D41C-425C-818B-6C78-06A83DDCC9D0";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1762";
	rename -uid "18168B93-44C9-9BBF-88A9-18A89D480B5B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1763";
	rename -uid "E9328534-46A6-4353-644F-94B54DFE7170";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1765";
	rename -uid "4870F516-4E4A-C606-04ED-C3A849035360";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.51554456586438624 9 -0.51554456586438624
		 16 -0.3351039678118512 23 -0.3351039678118512 73 -0.3351039678118512 79 -0.3351039678118512
		 81 -0.3351039678118512 86 -0.3351039678118512;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1766";
	rename -uid "0639A69C-4035-95CD-9F21-C9A034B1AA59";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.12081383184702826 9 -0.12081383184702826
		 16 0.0044324392073874785 23 0.0044324392073874785 73 0.0044324392073874785 79 0.0044324392073874785
		 81 0.0044324392073874785 86 0.0044324392073874785;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1767";
	rename -uid "BB3E3A52-487B-55A5-1037-77956858B4AD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1768";
	rename -uid "5B709871-418D-97B7-1F6D-ADADF6C7B8A2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1769";
	rename -uid "C2FB5539-4969-169C-DA61-BEBD10D3C026";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1770";
	rename -uid "46F06EE7-40CE-A606-8E62-EB9E43632FCF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1771";
	rename -uid "28495F54-4C80-FCCD-EA23-AD9C7C3ECB5B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1772";
	rename -uid "D0D013FC-4900-A5D8-7C30-2B95657DE56D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1773";
	rename -uid "58A12E1A-4043-D644-A7EF-F28FA973542C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1774";
	rename -uid "BD2D409C-404D-504A-E747-22BF435AC468";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1775";
	rename -uid "5AE55EB6-4EF4-7B3B-7FF9-468F49E33195";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1777";
	rename -uid "8BF44F47-4628-FD26-BBAD-A1A42FA161A0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1778";
	rename -uid "953C54DD-422A-1979-7094-1E810B3BFA4E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.22117318057147445 9 -0.22117318057147445
		 16 -0.1437625673714584 23 -0.1437625673714584 73 -0.1437625673714584 79 -0.1437625673714584
		 81 -0.1437625673714584 86 -0.1437625673714584;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1779";
	rename -uid "31FF41CC-4BDA-FF75-022E-DAB46789DB1A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1780";
	rename -uid "55AF9DCC-4CB2-EE75-5A17-4BB2610C5EDD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1781";
	rename -uid "1381BCFA-4ABE-DB4F-C744-379266FA91F1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1782";
	rename -uid "9F3002F1-4958-9A6B-CE85-AE8E87C67C73";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1784";
	rename -uid "BE6D461E-4179-A42D-2EAA-F19238C60115";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1785";
	rename -uid "148DCF66-4C9A-4409-6A0E-02BB63044BEC";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1786";
	rename -uid "B5C12290-44F3-1926-14F0-3D8487871219";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1787";
	rename -uid "10AFA9FE-468F-19A8-2BE4-3FBE62366EB8";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000004 20 1.0000000000000004
		 23 1.0000000000000004 78 1.0000000000000004 81 1.0000000000000004 86 1.0000000000000004;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1788";
	rename -uid "3D9C83B3-4633-4F85-CDBC-7C964C86F49E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000007 20 1.0000000000000007
		 23 1.0000000000000007 78 1.0000000000000007 81 1.0000000000000007 86 1.0000000000000007;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1789";
	rename -uid "E3DF585F-432D-4092-3C77-88AFCFAEAB7E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000007 20 1.0000000000000007
		 23 1.0000000000000007 78 1.0000000000000007 81 1.0000000000000007 86 1.0000000000000007;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1790";
	rename -uid "C625DBB6-41F0-3E31-E1ED-7C9F262FD24F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1791";
	rename -uid "86340BD9-4D1D-D330-7C3B-A59AC3EC9FBB";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1792";
	rename -uid "5C778E5A-4C0A-3658-B8DD-74BB289867F7";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1794";
	rename -uid "1A8AD784-4D42-731B-B5C1-B28689A47A09";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1795";
	rename -uid "10C97842-4C5F-04B5-88FB-75875CFC3AB9";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1796";
	rename -uid "A04BCA8D-4791-827A-9669-4382B75763A3";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1797";
	rename -uid "1DE1C293-4AEA-B2E9-2B9A-FE8129E2F335";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0.99999999999999978 20 0.99999999999999978
		 23 0.99999999999999978 78 0.99999999999999978 81 0.99999999999999978 86 0.99999999999999978;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1798";
	rename -uid "CCE14CB0-4B65-598B-8CDE-F7A99DCBEE58";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1799";
	rename -uid "F5CEA010-4B20-DBC4-F5E9-28A3D535BA50";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0.99999999999999978 20 0.99999999999999978
		 23 0.99999999999999978 78 0.99999999999999978 81 0.99999999999999978 86 0.99999999999999978;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1800";
	rename -uid "7A7D4495-4C31-1D8F-70C7-E2B98457ECD3";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1801";
	rename -uid "09C94791-4105-07A1-4434-2CA0C8C334DC";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1802";
	rename -uid "F7FB0AEF-489F-0039-45C3-7CB1C4B1C397";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1804";
	rename -uid "59106689-4522-7E21-FD96-8E90AA546E76";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1805";
	rename -uid "757A6AF1-4904-2D6D-B43F-E4AE62D2E571";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1806";
	rename -uid "C2578CD2-48FF-1BBC-3062-70AF455EB4F5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1807";
	rename -uid "2C386D7F-4E7D-0965-3F50-FFAEB8B4DC81";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1808";
	rename -uid "5362FFB1-4863-C90A-CEB3-F0910F176C13";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1809";
	rename -uid "E89B89B4-426C-70F3-4AF4-2A87BE9A993B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1810";
	rename -uid "46306466-4A74-3176-6DB8-75A64C51ACC0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1811";
	rename -uid "42470155-4C72-4AF3-6A7A-D0B90111CAD3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1812";
	rename -uid "CA56149E-4C18-1C7A-C272-03858084F8DF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -41.957413877888122 9 -41.957413877888122
		 17 -41.957413877888122 23 -41.957413877888122 73 -41.957413877888122 78 -41.957413877888122
		 81 -41.957413877888122 86 -41.957413877888122;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1814";
	rename -uid "F16993F3-4539-EA0F-00FA-08BA81821030";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1815";
	rename -uid "3EEED2B0-44B1-8F6B-502E-1DAA539F1010";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1816";
	rename -uid "2D50B3EE-4B40-F0BB-D6AB-1B83F81262C6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1817";
	rename -uid "71A09449-4B6B-410E-0A88-3CAD3D7726F0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1818";
	rename -uid "55AEFBD2-4F4A-AC80-04EB-89BBF624E5AB";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1819";
	rename -uid "024A87F5-4FBC-8ACB-ED2E-8C8431DB042E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1820";
	rename -uid "2298B82D-41BF-701A-FB64-7DA3E1A6B6BE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1822";
	rename -uid "C3860408-49BA-59E0-77A7-36B03E0AB25E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1823";
	rename -uid "9F30AA47-497B-0410-9AA4-BCBA49F1FD6B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1824";
	rename -uid "AB5BE9D3-430E-2BDA-2309-E8A83C3A9F2C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1825";
	rename -uid "F3C8676D-4123-0B8C-DB1A-B89FF8C77503";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1826";
	rename -uid "65C51F45-48FE-2DC7-83AC-2CA993B49170";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1827";
	rename -uid "035D7A3B-4224-E4A4-C7F6-69BCA4D680CC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1828";
	rename -uid "38C1B13D-4F4E-7EE9-2560-F1B8F4DCE5C9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -8.6699212447471226 9 -8.6699212447471226
		 17 -8.6699212447471226 23 -8.6699212447471226 73 -8.6699212447471226 78 -8.6699212447471226
		 81 -8.6699212447471226 86 -8.6699212447471226;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1829";
	rename -uid "3006FCD9-4A5E-280A-0B2D-6D8B1BA10F2E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -4.7959396982210833 9 -4.7959396982210833
		 17 -4.7959396982210833 23 -4.7959396982210833 73 -4.7959396982210833 78 -4.7959396982210833
		 81 -4.7959396982210833 86 -4.7959396982210833;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1830";
	rename -uid "1212A429-4F0C-C68F-04B3-92A172654252";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -56.112491532797257 9 -56.112491532797257
		 17 -56.112491532797257 23 -56.112491532797257 73 -56.112491532797257 78 -56.112491532797257
		 81 -56.112491532797257 86 -56.112491532797257;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1832";
	rename -uid "57EAAA4A-4C5B-88F9-0A66-74A1288A1578";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1833";
	rename -uid "366BC7DC-4019-2D3B-EAF2-CBBC36F1FF48";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 -0.091141944524824256 23 -0.091141944524824256
		 73 -0.091141944524824256 79 -0.091141944524824256 81 -0.091141944524824256 86 -0.091141944524824256;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1834";
	rename -uid "CACF7061-495F-6167-E109-CFB742C7569A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1835";
	rename -uid "2CA74A83-4156-082B-0999-77818C9CCBD4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1836";
	rename -uid "F4E7DFE1-4178-7AF8-962E-82BB5FA46FA4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1837";
	rename -uid "26AE3B8E-4059-0863-9E47-B1A569FE643E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1838";
	rename -uid "0400B18E-4E92-D554-DF1B-6382615DE393";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1839";
	rename -uid "22844DD9-49A4-83C7-2D76-4C87D6693E66";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1840";
	rename -uid "8063A18C-4B05-25B0-C8AA-229854E9E3C3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1842";
	rename -uid "6676A3D6-4192-A3BF-86A5-F3AB15207769";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 0.2473820413659529 9 0.2473820413659529
		 11 0.2479112181714706 14 0.24888538456344642 17 0.2473820413659529 21 0.2473820413659529
		 23 0.2473820413659529 73 0.2473820413659529 78 0.261007177321261 86 0.24951096885896987;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  5 1 18 18 18 18 18 18 
		18 18;
	setAttr -s 10 ".kix[9]"  0.32000000000000028;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[1:9]"  0.079999999999999183 0.12000000000000005 
		0.12 0.15999999999999992 0.080000000000000071 2 0.20000000000000018 0.31999999999999984 
		0.31999999999999984;
	setAttr -s 10 ".koy[1:9]"  0 0.00090200591849610718 0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1843";
	rename -uid "B7EAF485-49AC-9B78-34FD-82894AC3DEB2";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0.40847368528118433 10 0.40847368528118433
		 14 0.13924893899273649 17 0.28426517260292838 21 0.28426517260292838 23 0.28426517260292838
		 73 0.28426517260292838 78 -0.89420661917114264 86 -0.025805712007223591;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  5 1 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kix[8]"  0.32000000000000028;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[1:8]"  0.16000000000000014 0.12 0.15999999999999992 
		0.080000000000000071 2 0.20000000000000018 0.31999999999999984 0.31999999999999984;
	setAttr -s 9 ".koy[1:8]"  -0.022784162454065636 0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1844";
	rename -uid "36D31891-40B8-1A8E-01C9-2F92052119AF";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 6.9304141336108005 9 6.9304141336108005
		 11 6.9176977931028834 14 6.8942881662587636 17 6.9304141336108005 21 6.9304141336108005
		 23 6.9304141336108005 73 6.9304141336108005 78 6.9348791653642161 86 6.9311117948222716;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  5 1 18 18 18 18 18 18 
		18 18;
	setAttr -s 10 ".kix[9]"  0.32000000000000028;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[1:9]"  0.079999999999999183 0.12000000000000005 
		0.12 0.15999999999999992 0.080000000000000071 2 0.20000000000000018 0.31999999999999984 
		0.31999999999999984;
	setAttr -s 10 ".koy[1:9]"  0 -0.021675580411222133 0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1845";
	rename -uid "6902F3B2-4100-F477-C251-AFB6F45E9CF6";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 13.160207137744122 9 13.160207137744122
		 11 12.360111096527977 17 8.5234300799874934 21 8.5237427438761024 23 8.5237412237293579
		 73 8.5234300799874934 78 8.6373686460300796 86 4.6375216733173774;
	setAttr -s 9 ".kyts[1:8]" yes no no no no no no no;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  5 1 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kix[8]"  0.32000000000000028;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[1:8]"  0.079999999999999183 0.24000000000000005 
		0.15999999999999992 0.080000000000000071 2 0.20000000000000018 0.31999999999999984 
		0.31999999999999984;
	setAttr -s 9 ".koy[1:8]"  -0.0018364961653451752 -0.060695269754091341 
		0 0 -1.9898674354090745e-006 0 0 0;
createNode animCurveTA -n "CURVE1846";
	rename -uid "D3916A63-4AE6-DB6E-BFEE-A0BA49A70E6D";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 9 0 11 -0.35070354725618169 17 -2.2445027024395969
		 21 -2.2017270859207589 23 -2.2019350575367418 73 -2.2445027024395969 78 0.96346958490781986
		 86 1.3103930131286641;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  5 1 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kix[8]"  0.32000000000000028;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[1:8]"  0.079999999999999183 0.24000000000000005 
		0.15999999999999992 0.080000000000000071 2 0.20000000000000018 0.31999999999999984 
		0.31999999999999984;
	setAttr -s 9 ".koy[1:8]"  0 -0.029380471670611145 0 0 -0.00027223420871955151 
		0 0.018164868224279835 0;
createNode animCurveTA -n "CURVE1847";
	rename -uid "94493685-4DBD-650A-9228-DBBC29DE0594";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 9 0 11 0.022102161089197808 17 0.14756215696080993
		 21 0.15095567139966651 23 0.15095544064449215 73 0.14756215696080993 78 0.064430287803715638
		 86 0.055864441342283175;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[0:8]"  5 1 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kix[8]"  0.32000000000000028;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[1:8]"  0.079999999999999183 0.24000000000000005 
		0.15999999999999992 0.080000000000000071 2 0.20000000000000018 0.31999999999999984 
		0.31999999999999984;
	setAttr -s 9 ".koy[1:8]"  0 0.001931584117733102 0.00017768400051604597 
		0 -3.0205781690988116e-007 -1.7767191820336973e-005 -0.00044850667191690606 0;
createNode animCurveTL -n "CURVE1849";
	rename -uid "2E301CE2-4802-D364-BFF1-FFBF72714AA0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1850";
	rename -uid "62654F95-4335-BF62-8D7C-9697EAA7634E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1851";
	rename -uid "206C3CF9-4BB0-7EED-5E27-B49210E91607";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1852";
	rename -uid "6E4DD925-471B-0771-7DFC-A38F7A483174";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1853";
	rename -uid "77AE61C8-4553-AD56-F54F-A88CBF2C1B8E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1854";
	rename -uid "E022FC57-4660-E408-9CAF-78937522EA0F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1855";
	rename -uid "167E948B-4190-6FA0-6835-B388903FA3F9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1856";
	rename -uid "6A64D9DC-4B91-CF9E-2C6F-88BDEEBAA858";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1857";
	rename -uid "133C688A-4FC7-6F29-A194-BB9B638F170C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -2.3022966476090754 9 -2.3022966476090754
		 17 -2.3022966476090754 23 -2.3022966476090754 73 -2.3022966476090754 78 -2.3022966476090754
		 81 -2.3022966476090754 86 -2.3022966476090754;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1859";
	rename -uid "709B3E06-4F42-A33D-DBC4-989242DE036F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1860";
	rename -uid "6719E4E8-401A-A954-FB69-0D9022A02C03";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1861";
	rename -uid "47C0ACAC-4A20-2A42-8A30-6380082F5C91";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1862";
	rename -uid "F8E6D600-4B22-52EC-01BD-D1BFD851496E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1863";
	rename -uid "3FE9F14A-4DA2-0B3B-AC3F-72BAAC08CCC3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1864";
	rename -uid "58A7F749-45F1-763E-F3A2-A1897A26775F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1865";
	rename -uid "A882D083-4172-9390-EB3F-C4AA897716D2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1866";
	rename -uid "94A11297-4047-F79C-9A2B-899593EDC440";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1867";
	rename -uid "756D6ECB-431A-DFD9-F843-4A85DFB2FAC6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1869";
	rename -uid "B976F67D-46B7-9BC9-1117-9ABB29B38B5D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 -0.15342748371416429 23 -0.15342748371416429
		 73 -0.15342748371416429 79 -0.15342748371416429 81 -0.15342748371416429 86 -0.15342748371416429;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1870";
	rename -uid "FA394EB2-4B63-9C59-FD78-3B93676F40A8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.11615293386235358 9 -0.11615293386235358
		 16 -0.091663326397712561 23 -0.091663326397712561 73 -0.091663326397712561 79 -0.091663326397712561
		 81 -0.091663326397712561 86 -0.091663326397712561;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1871";
	rename -uid "7A11E0E1-4887-48C2-5F42-B28000393842";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1872";
	rename -uid "10F6FEB7-4BA9-3D8B-7984-108C39BFFBEF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1873";
	rename -uid "B4D2F305-4576-B229-E632-739AE120D576";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1874";
	rename -uid "571F37F7-4D03-1074-69EE-428E868188EC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1875";
	rename -uid "39937915-458F-B1F1-6A37-21831FB07FEC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1876";
	rename -uid "CECCFC39-4962-27D9-1563-F28F8BAF2A82";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1877";
	rename -uid "07155A3E-402B-4470-C74E-2EA1D9F37F40";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1878";
	rename -uid "8D25D04A-421D-94C1-7365-2486347A1972";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1879";
	rename -uid "B8338FDB-40FE-85B0-1132-5F81FC38C01A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -26.052141068832945 9 -26.052141068832945
		 16 -17.093524714855299 23 -17.093524714855299 73 -17.093524714855299 79 -17.093524714855299
		 81 -17.093524714855299 86 -17.093524714855299;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1881";
	rename -uid "CC643862-4913-C45B-F590-ED9C27EF82DE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.0015321780389568765 9 -0.0015321780389568765
		 17 -0.065784805479083774 23 -0.065784805479083774 73 -0.065784805479083774 78 0.0030448437919598937
		 81 0.042680549592606074 86 0.042680549592606074;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0.00070990408887964434 0 0;
createNode animCurveTA -n "CURVE1882";
	rename -uid "E2679559-4C72-343F-94A4-819AD51AA5A7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.051698541869838716 9 -0.051698541869838716
		 17 -2.2197019106050053 23 -2.2197019106050053 73 -2.2197019106050053 78 0.86765585467971862
		 81 1.2454506924400823 86 1.2454506924400823;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0.019781291447868436 0 0;
createNode animCurveTA -n "CURVE1883";
	rename -uid "F792A21D-4042-FB4A-3E7E-D98AD48A6060";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.011248153219870787 9 0.011248153219870787
		 17 0.48294490114993488 23 0.48294490114993488 73 0.48294490114993488 78 -0.052384785342320467
		 81 -0.12922635091457849 86 -0.12922635091457849;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 -0.0040066514754682099 0 0;
createNode animCurveTU -n "CURVE1884";
	rename -uid "01243243-423A-5F01-E911-6DA53B5D111C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1886";
	rename -uid "59186645-48C2-4741-6B1F-B5B1068F3C60";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0.0023555221259429697 9 0.0023555221259429697
		 17 0.10113548224613175 23 0.10113548224613175 73 0.10113548224613175 78 0.028916279558458279
		 81 0.04333268456700138 86 0.04333268456700138;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1887";
	rename -uid "548E2CC5-4167-6DC6-9F2B-7A94C752A144";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.14177477494263566 9 -0.14177477494263566
		 17 -6.0871685628596 23 -6.0871685628596 73 -6.0871685628596 78 0.40295317795681018
		 81 1.2839011200075843 86 1.2839011200075843;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0.046126326382362651 0 0;
createNode animCurveTA -n "CURVE1888";
	rename -uid "3D36AEFA-4BFF-B094-8BEC-0390FCE41A49";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.021551311844925369 9 -0.021551311844925369
		 17 -0.92531600211598664 23 -0.92531600211598664 73 -0.92531600211598664 78 -0.2215138539362298
		 81 -0.1151240950002291 86 -0.1151240950002291;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0.0053026936320682665 0 0;
createNode animCurveTL -n "CURVE1890";
	rename -uid "B576169D-4E97-40AD-25AD-EAB4F7CFAF44";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1891";
	rename -uid "5D7F90AB-435F-8EA4-E178-F58DC69579C0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1892";
	rename -uid "15DA8557-490F-0F47-787A-A59E3A81A0B9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1893";
	rename -uid "B23F488B-4DD6-90E5-3E7A-4E904E92338E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1894";
	rename -uid "00CF7C0A-4439-1CBE-05D1-F0A8598EAD22";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1895";
	rename -uid "7F987472-4EC1-4BA8-75B0-FD8C20834FEB";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1896";
	rename -uid "6B417831-4E9E-8F04-FA2F-A0B7D62C068A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -13.969922120337245 9 -13.969922120337245
		 17 -13.969922120337245 23 -13.969922120337245 73 -13.969922120337245 78 -13.969922120337245
		 81 -13.969922120337245 86 -13.969922120337245;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1897";
	rename -uid "281945D1-4784-32EF-6775-75BA3DC9C744";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -4.4767036268388978 9 -4.4767036268388978
		 17 -4.4767036268388978 23 -4.4767036268388978 73 -4.4767036268388978 78 -4.4767036268388978
		 81 -4.4767036268388978 86 -4.4767036268388978;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1898";
	rename -uid "565AFAF9-4464-AAF4-A1EB-E488AAFEFD48";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -43.298229303244348 9 -43.298229303244348
		 17 -43.298229303244348 23 -43.298229303244348 73 -43.298229303244348 78 -43.298229303244348
		 81 -43.298229303244348 86 -43.298229303244348;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1900";
	rename -uid "DAC2D048-4FB5-E2C3-D5B9-87A3407726D5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1901";
	rename -uid "BFEA3D87-4A68-CC0D-8E77-C79DCED95666";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1902";
	rename -uid "5DFBE90E-449A-8FF7-9C1A-018525497B00";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1903";
	rename -uid "DD4780F5-4399-2C12-4503-6186F2FFFCF8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1904";
	rename -uid "D6FE4D21-41D4-6974-921F-F596CCCBC578";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1905";
	rename -uid "AD7B484E-4813-41B8-1DE4-DDBC96BA2100";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1906";
	rename -uid "ED59618F-458B-21EF-A345-6D9608E59773";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1907";
	rename -uid "03EEFEF4-4A86-D32D-81EC-BFA7F881C9C6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1908";
	rename -uid "C6F20432-43BD-3ECE-397B-E4ACFE916994";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1910";
	rename -uid "AAA3ACB5-4CCB-5E08-CD4C-46BA776188F8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1911";
	rename -uid "FC5DF0E9-4F74-7FA4-E950-3D87698E4770";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1912";
	rename -uid "87C7FE08-41F4-4762-CD3A-A583797C353B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1913";
	rename -uid "A82754E4-42E8-6F3D-AEC3-5DA9568A19AF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1914";
	rename -uid "BADF29FD-4ADC-5547-0A30-15AAA0FC0348";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1915";
	rename -uid "54AA3D91-4400-2EC6-39D0-B0B8D649BFAB";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1916";
	rename -uid "709BC0DB-4569-7CBD-D47D-AABA4C6D1E0D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 11.603098243364203 9 11.603098243364203
		 17 11.603098243364203 23 11.603098243364203 73 11.603098243364203 78 11.603098243364203
		 81 11.603098243364203 86 11.603098243364203;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1917";
	rename -uid "AAF24E18-4297-4C51-2838-BF9E9DB05032";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -4.7190421386125703 9 -4.7190421386125703
		 17 -4.7190421386125703 23 -4.7190421386125703 73 -4.7190421386125703 78 -4.7190421386125703
		 81 -4.7190421386125703 86 -4.7190421386125703;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1918";
	rename -uid "D4124780-45D1-1F9C-4AA0-929B3E77B7A9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 9.4394757661921371 9 9.4394757661921371
		 17 9.4394757661921371 23 9.4394757661921371 73 9.4394757661921371 78 9.4394757661921371
		 81 9.4394757661921371 86 9.4394757661921371;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1920";
	rename -uid "CBDA43F3-467F-3F76-4CC7-56B780E3D0FD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1921";
	rename -uid "BA8300FF-4506-972D-6247-05B04CE665FC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1922";
	rename -uid "A12A87C8-454B-2D61-CDC2-51BE4B2856BA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1923";
	rename -uid "CE10F714-43B9-C252-8F79-4BBC74159EA6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1924";
	rename -uid "BDE6BFA9-429B-8290-BA87-50B1510D62C1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1925";
	rename -uid "5B34D016-4D4E-842F-D8D5-74B6529AF8A3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1926";
	rename -uid "1EC300F3-4605-5D97-0616-2484F6197851";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1927";
	rename -uid "FDA04816-4F7B-2EA5-EB29-B49C20A0961B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1928";
	rename -uid "A2FEA5DF-42FD-9255-1C9A-41996BCA5E87";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1929";
	rename -uid "B8AEBCD7-4390-FAD8-362F-A9889C7BA1B6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1931";
	rename -uid "28130195-427C-675E-1C70-8CB29EDAEC2E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1932";
	rename -uid "39B9B8FE-401B-4DEA-CEEA-6DB8B2167787";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1933";
	rename -uid "41AA5B8F-4EBE-8BC3-40D3-0EBC0EC50384";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1934";
	rename -uid "814670BF-48B6-A206-14B5-C8940828C550";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1935";
	rename -uid "74FB6795-4069-61A0-BF2B-68874E58B3C3";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000009 20 1.0000000000000009
		 23 1.0000000000000009 78 1.0000000000000009 81 1.0000000000000009 86 1.0000000000000009;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1936";
	rename -uid "C3F0F865-47E6-43D0-CA6E-6AA28A4EFD7F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000009 20 1.0000000000000009
		 23 1.0000000000000009 78 1.0000000000000009 81 1.0000000000000009 86 1.0000000000000009;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1937";
	rename -uid "D6AB01B8-46A3-E358-C207-3FBA45CB7D7D";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1938";
	rename -uid "25ACAAD6-4E14-DD28-C304-60881B6AA7D9";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1939";
	rename -uid "1549DF43-492F-9149-D287-8F9B8F212098";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1941";
	rename -uid "A871D7FD-4022-13FD-C244-BD9B19F4F703";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1942";
	rename -uid "9D892903-4A00-6411-4FD2-0CA6890359EB";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1943";
	rename -uid "6C349809-4DD1-24FA-93ED-4A935063830E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1944";
	rename -uid "2AD417D3-4D68-9BF2-4B3D-089BCF547960";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1945";
	rename -uid "82437A8A-433E-5CAC-8DFC-4487B8BD6573";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0.99999999999999989 20 0.99999999999999989
		 23 0.99999999999999989 78 0.99999999999999989 81 0.99999999999999989 86 0.99999999999999989;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1946";
	rename -uid "1E81F9A4-477A-1087-C7CF-EA8878434785";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0.99999999999999989 20 0.99999999999999989
		 23 0.99999999999999989 78 0.99999999999999989 81 0.99999999999999989 86 0.99999999999999989;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1947";
	rename -uid "4347A9B7-472B-61ED-8D56-EC9CCCDF4980";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1948";
	rename -uid "FBF81A16-4124-599D-4C3A-EF9C04457B4B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1949";
	rename -uid "DF02DB99-4659-836F-623C-C586FFFD31ED";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1951";
	rename -uid "FC02C663-4F4F-35FC-24A3-E4AB81B8EB06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "CURVE1952";
	rename -uid "6E97E413-4C0B-8831-A16F-58B1D5B98B20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "CURVE1953";
	rename -uid "8F4615F7-4B00-09F5-0901-22A48D2FBF0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "CURVE1954";
	rename -uid "B45A27E7-4295-A32D-A283-05AC10A69090";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 23 1 78 1 81 1 86 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "CURVE1955";
	rename -uid "BBD2B8DC-445B-E0E3-9B4E-E698D13FEA40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 23 1 78 1 81 1 86 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "CURVE1956";
	rename -uid "7ACD114E-4E97-2BF1-0C7F-9386F980BA11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 23 1 78 1 81 1 86 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "CURVE1957";
	rename -uid "8E1D7E53-4FD5-D861-A03F-F2B487703A44";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTA -n "CURVE1958";
	rename -uid "53A1F135-47D7-B98E-1A1A-7ABF1AE4658D";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTA -n "CURVE1959";
	rename -uid "0E47AEC5-49E3-F5CE-4EC7-4CB8436EA8EE";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTL -n "CURVE1961";
	rename -uid "1349F3E8-438A-EEB5-4274-069C8A1868CD";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1962";
	rename -uid "E5B460D0-4BA5-5807-7BCE-5C96AFC99DCE";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1963";
	rename -uid "E68B7A16-4A3E-0D11-60F2-8AB69E7FDF71";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1964";
	rename -uid "87B4483A-4971-03B2-7750-F5B3077203DE";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 23 1 78 1 81 1 86 1;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1965";
	rename -uid "C8FC3982-4945-6C73-12DE-49AA606203AD";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "CURVE1966";
	rename -uid "82E1A507-46C7-AFE7-F4D1-FFBECDE7510A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.0000000000000002 20 1.0000000000000002
		 23 1.0000000000000002 78 1.0000000000000002 81 1.0000000000000002 86 1.0000000000000002;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1967";
	rename -uid "BB10BD63-4846-2005-919C-AFBE372FFE11";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1968";
	rename -uid "54098C76-45E3-4F85-C39A-0C9439C6954A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "CURVE1969";
	rename -uid "733E985B-4309-33C6-0A16-4EA497ED8E15";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 0 23 0 78 0 81 0 86 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[0:5]"  5 1 18 18 5 18;
	setAttr -s 6 ".kix[4:5]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[1:5]"  0 2.2 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "CURVE1971";
	rename -uid "5C89C8DD-4A4E-F906-D5B1-0B96F2B359CA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1972";
	rename -uid "6E272749-45AE-5B80-504D-09BCA96D7A78";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 -0.1012437212108684 23 -0.1012437212108684
		 73 -0.1012437212108684 79 -0.1012437212108684 81 -0.1012437212108684 86 -0.1012437212108684;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1973";
	rename -uid "48E7C727-4E10-F53A-C007-39B4022A6672";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 -0.016453724371070299 23 -0.016453724371070299
		 73 -0.016453724371070299 79 -0.016453724371070299 81 -0.016453724371070299 86 -0.016453724371070299;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1974";
	rename -uid "7A3E0718-49AB-A201-D7BE-B5A55966F070";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1975";
	rename -uid "3D12D480-42B0-241F-6D60-C59868A5EDDE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1976";
	rename -uid "0E6B677E-4199-B29D-E8A9-AC8DE9CD8A6C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1977";
	rename -uid "02ED880A-401E-DC51-E687-C0BC0626F468";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 7.0253914089997647 9 7.0253914089997647
		 16 8.6545772108705314 23 8.6545772108705314 73 8.6545772108705314 79 8.6545772108705314
		 81 8.6545772108705314 86 8.6545772108705314;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1978";
	rename -uid "3B83BB5A-467A-BDF5-FE9E-9C979EA4DCAF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1979";
	rename -uid "387D0A65-45C6-68F5-C2DE-088DB3447E15";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1981";
	rename -uid "5D6979F0-4D84-333A-1B1D-39AE7F737F76";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1982";
	rename -uid "D014BAF1-4EC6-AB62-0396-9980311C7093";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1983";
	rename -uid "DDFEB2A3-4B84-D198-9CB6-BE8E6D956D6C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1984";
	rename -uid "2177DB4B-4B70-C9AF-48EF-D898AC192443";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1985";
	rename -uid "88F02344-48CD-3DB9-FB1D-88B23CE86960";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1986";
	rename -uid "37E72E33-4FEF-7436-EE4B-1292EF0E4CB1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1988";
	rename -uid "1AB3D441-40FA-5E3C-4EB7-C2ADA709814E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE1989";
	rename -uid "5BFF7C22-4B51-FC89-AF3B-38B237193611";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE1990";
	rename -uid "E935F684-4333-1351-DAF1-A4926EF0369B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE1991";
	rename -uid "DAA0CD71-4EBF-67EE-ACE1-A9B907011117";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE1992";
	rename -uid "9916ABB0-447F-38EE-570C-D9AED9F19C77";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE1993";
	rename -uid "FA8A9CE6-4373-0F31-18AB-DD8B1ADA2183";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE1994";
	rename -uid "AD86C401-4925-D4EA-1510-72AA563448D6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE1995";
	rename -uid "A2222432-4B81-1629-B613-BFBDB86EBA1B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE1996";
	rename -uid "D99D689D-4589-FC94-E71E-2897093448AF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE1998";
	rename -uid "BDB0B8E0-4AE9-D14A-50AB-BCBD83039486";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE1999";
	rename -uid "AA83FBA2-4D5F-662C-A482-409BAE38C175";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE2000";
	rename -uid "3AB9169E-4F38-F270-9510-FD8D1C3D3FF1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE2001";
	rename -uid "DB32DF07-49DF-7EC0-5E6B-4FB1AE0621F1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE2002";
	rename -uid "4F4B629C-49F1-CD3B-2C94-B2B69C5A97D4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "CURVE2003";
	rename -uid "D8293B6A-4BC7-92D8-32DE-C7B52A9F5334";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 86 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE2004";
	rename -uid "CBBA5659-45D6-476B-5FF6-F2A574FA313A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE2005";
	rename -uid "CB98B401-448C-1D56-5BBC-F58FAD9E3935";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "CURVE2006";
	rename -uid "ECEB6715-48C5-3C6A-4DF9-0B92CA55B00F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 86 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[0:2]"  5 5 18;
	setAttr -s 3 ".kix[1:2]"  1.5199999999999996 2.6399999999999997;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "CURVE2008";
	rename -uid "2D4C7B09-4045-B2CB-D936-C3BA14F501CD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE2009";
	rename -uid "8AADA869-49E5-1876-FD4B-6E8C74EDE3C1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE2010";
	rename -uid "718E08B1-4BCD-3B3B-A1E1-37A8965DC07B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE2011";
	rename -uid "E6413FDE-47D4-4847-4F08-FEA5C3132533";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE2012";
	rename -uid "B58457D1-4D63-8A30-1014-DEBD16E736B1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE2013";
	rename -uid "D85F3255-4E99-2CAB-3426-869D1892CC18";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE2014";
	rename -uid "231EF37C-42ED-B247-B21C-0C81D08E09C3";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE2015";
	rename -uid "082F8B18-4186-6879-E650-24AEDFDD6B4E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE2016";
	rename -uid "F937F0BF-4BB6-641E-80FE-4EBE96E22815";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE2018";
	rename -uid "BA90549C-434C-D90A-D093-9BAD78BE2D91";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE2019";
	rename -uid "A1651715-4F98-48F1-6ECA-FFB6D223006F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE2020";
	rename -uid "23BF4EBA-45BA-C5AD-ABF2-12835ECE23E2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE2021";
	rename -uid "5DA7FFC5-45B1-67E1-3610-15B8F2C90985";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE2022";
	rename -uid "332EB165-439C-0C61-6184-7D92FFDC1378";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE2023";
	rename -uid "B406A2C8-4136-BC1A-E2B6-139ED37079E9";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE2024";
	rename -uid "F1CE9708-4499-E284-48E9-F3AC71AC1172";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE2025";
	rename -uid "45F0D69D-4246-9477-5D10-CAA27EB8D5DE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE2026";
	rename -uid "15E02EB7-410E-063B-8CAE-18BAE36C8EA8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -13.708149942633989 9 -13.708149942633989
		 17 -13.708149942633989 23 -13.708149942633989 73 -13.708149942633989 78 -13.708149942633989
		 81 -13.708149942633989 86 -13.708149942633989;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE2028";
	rename -uid "E0EAB653-48C0-6B9B-571C-CAB080263212";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE2029";
	rename -uid "BF687412-429C-5A0A-397F-0D9BE4EF57CC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE2030";
	rename -uid "654A0C58-4473-366B-6299-108DFDE0696B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE2031";
	rename -uid "CB0CA470-435E-7850-641E-9587BE69AAF8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE2032";
	rename -uid "DE6E16A1-4E73-38B7-54CF-BE97D9A4A691";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE2033";
	rename -uid "06C6FAF8-4198-C212-664B-E6B6FAB9BBBF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE2034";
	rename -uid "8C8956D6-4A22-5788-F3B1-EDB4F5BF65B4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE2035";
	rename -uid "617AB2B4-411A-BFD2-0DC1-8E967EF58832";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE2036";
	rename -uid "05C74E77-469F-1D82-33C2-3BBB5E5D6FFE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE2038";
	rename -uid "A53C8ACA-41DA-0694-23ED-F995CED48A35";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE2039";
	rename -uid "2C2AA2DC-440A-F1C2-6FF6-01B694458EBB";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE2040";
	rename -uid "B218A2F1-44D1-E45D-CF31-57AEF4C6A5A2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE2041";
	rename -uid "0318B2A9-42E2-20C4-F1FF-AA9D506344FD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE2042";
	rename -uid "C9038CCB-424F-EDE8-4816-C493A1E3E91C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE2043";
	rename -uid "CC09B351-4E5F-DAC7-08D0-56BF9690AC05";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[3:7]"  9 18 18 1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 5 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 0 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE2044";
	rename -uid "6EAC2F8E-40BC-2F68-F30F-38A8E0B75362";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE2045";
	rename -uid "0F92C6AC-415E-AC4A-5651-A689925393BE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE2046";
	rename -uid "16829F5A-4477-5109-5018-709F8989F468";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE2047";
	rename -uid "7C64AA1E-48CF-862D-0FD0-9786CF85C682";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 16 1 23 1 73 1 79 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE2049";
	rename -uid "58448669-49B2-165D-1F29-EE8E2AB3ED62";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE2050";
	rename -uid "65D3B563-4062-CF90-B301-31AD1843BF6D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -0.34593678146637813 9 -0.34593678146637813
		 16 -0.22485890795314578 23 -0.22485890795314578 73 -0.22485890795314578 79 -0.22485890795314578
		 81 -0.22485890795314578 86 -0.22485890795314578;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE2051";
	rename -uid "7F1BF540-4DF1-6DB3-9F4C-96973979C156";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE2052";
	rename -uid "911BF5C0-4504-7549-2CB2-B9B09D9340B8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE2053";
	rename -uid "EE8F3DD2-4122-CC34-BF37-53A8DC9A028D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE2054";
	rename -uid "643D53B5-489E-C506-76E4-B6992B500C62";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 16 0 23 0 73 0 79 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.080000000000000071 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.27999999999999936 0.28 2 0.24000000000000021 
		0.080000000000000071 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE2056";
	rename -uid "9D8AE7AD-47A6-3744-3586-A5AF706766FF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE2057";
	rename -uid "7BC9FFAB-4B06-D366-E2E9-DDA05C1373D2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE2058";
	rename -uid "DFBD012D-4479-A39C-084A-B1995BB52747";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE2059";
	rename -uid "B58100F4-4F2A-610A-10F3-E4AEA7C44984";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE2060";
	rename -uid "43CCE7D6-48DC-CF84-83E3-088FAD1A125B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 5.0407721260141205 9 5.0407721260141205
		 17 5.0873274425290953 23 5.0873274425290953 73 5.0873274425290953 78 4.758360936705011
		 81 4.7324548243713656 86 4.7324548243713656;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 -0.0013564408698408664 0 0;
createNode animCurveTA -n "CURVE2061";
	rename -uid "C4363CA2-43AF-7D16-6B7F-DCBE9BF57C6A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -20.282800389054572 9 -20.282800389054572
		 17 -6.1951260447204639 23 -6.1951260447204639 73 -6.1951260447204639 78 -2.7878457519927919
		 81 -2.5195224289405003 86 -2.5195224289405003;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0.014049376341464657 0 0;
createNode animCurveTA -n "CURVE2062";
	rename -uid "8760302E-4CEA-3298-6D61-C5AACA48EE8F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1.4201756772830489 9 1.4201756772830489
		 17 -10.112342174128848 23 -10.112342174128848 73 -10.112342174128848 78 1.9948412143017329
		 81 2.9482819061405992 86 2.9482819061405992;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0.049922037885242541 0 0;
createNode animCurveTL -n "CURVE2064";
	rename -uid "385F199B-44D6-F17C-7408-C1A1F39C8CC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "CURVE2065";
	rename -uid "D25991AE-4D7E-6D79-999F-A9AE8CBC4A9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "CURVE2066";
	rename -uid "E05F6FA0-4134-DA6A-4108-5880E526DC6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "CURVE2067";
	rename -uid "344ABA1F-480A-5A66-EF68-8493F9CB1F76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 23 1 78 1 81 1 86 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "CURVE2068";
	rename -uid "137ABC9B-41EF-B5B9-04B9-3E906487766A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 23 1 78 1 81 1 86 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "CURVE2069";
	rename -uid "EDC718F3-4C67-B271-0759-C5BDA32D85C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 23 1 78 1 81 1 86 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "CURVE2070";
	rename -uid "DF1B1CBD-4321-AECF-B0E5-7AA6312AFB81";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTA -n "CURVE2071";
	rename -uid "6F73D546-42E0-8197-C267-C9B37E2CE87B";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTA -n "CURVE2072";
	rename -uid "992DD994-4E6D-840A-A398-E7AB8460C715";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 23 0 78 0 81 0 86 0;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[0:4]"  5 1 18 5 18;
	setAttr -s 5 ".kix[3:4]"  1 0.19999999999999973;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 0.12000000000000011 0 0.19999999999999973;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
	setAttr ".roti" 2;
createNode animCurveTL -n "CURVE2074";
	rename -uid "EFD0730E-46AF-06CC-ED36-99AC58E87DB5";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE2075";
	rename -uid "499F8F4B-44B9-C30D-E1A0-C9BED6F88B97";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE2076";
	rename -uid "798D0063-4AFE-0AC7-AB99-84B7F0207177";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE2077";
	rename -uid "CE3ECE4C-405F-C377-C413-6CBB2204F1ED";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE2078";
	rename -uid "45B0CA59-4D4F-3A14-1890-62B48B577F6C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE2079";
	rename -uid "E7277990-4C26-8D30-FE41-2FB8BE46B975";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 9 1 17 1 23 1 73 1 78 1 81 1 86 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE2080";
	rename -uid "0972D26B-4CEA-1469-842A-2B9ECF9F2C2B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE2081";
	rename -uid "72945E36-40F8-1D64-728E-0FBE804A23DF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 9 0 17 0 23 0 73 0 78 0 81 0 86 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE2082";
	rename -uid "9C5BFBE8-4DF4-6E65-9FF5-34BF62D0F841";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -40.151962670036312 9 -40.151962670036312
		 17 -40.151962670036312 23 -40.151962670036312 73 -40.151962670036312 78 -40.151962670036312
		 81 -40.151962670036312 86 -40.151962670036312;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[0:7]"  5 1 18 18 18 18 5 18;
	setAttr -s 8 ".kix[6:7]"  0.11999999999999922 0.19999999999999973;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[1:7]"  0.3199999999999994 0.24 2 0.20000000000000018 
		0.12000000000000011 0 0.19999999999999973;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
// End
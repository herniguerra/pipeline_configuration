//Maya ASCII 2017ff05 scene
//Name: animation.ma
//Last modified: Fri, Sep 27, 2019 03:15:13 PM
//Codeset: 1252
requires maya "2017ff05";
requires "stereoCamera" "10.0";
requires "MayaMan" "2.0.15";
requires "cryPoseReaderPlugin.py" "1.0";
requires "3delight_for_maya2012" "6.0.25";
requires "CorrectiveShape70" "7.0";
requires "Foliage" "4.5";
requires "vrayformaya2008" "1.0";
requires "CustomNode.py" "Unknown";
requires "RenderMan_for_Maya" "1.0";
requires "MatteNode" "4.5";
requires "Mayatomr" "2012.0m - 3.9.1.47 ";
requires "dnRex" "1.73.4";
requires "dnTools" "1.6.5";
requires "elastikSolver" "0.991";
requires "finalRender" "1.0";
requires "ftb_displayNode.py" "Unknown";
requires "maxwell" "2.7.8";
requires "polyVertexInfoConstraint" "8.0";
requires "mayatools" "3.00";
requires "rpmaya" "2.0";
requires "saveNode" "8.5";
requires "shaveNode" "1.1";
requires "sk_rayShooter" "0.1";
requires "vrayformaya" "2.00.04";
requires "wobble2015-x64" "1.0";
currentUnit -l centimeter -a degree -t pal;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201710312130-1018716";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode animCurveTL -n "CURVE1";
	rename -uid "B3261278-472D-D033-5B8A-D5A5AA81E384";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE2";
	rename -uid "2F90ADB5-4EA0-F67C-01E6-5282FAE72DD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE3";
	rename -uid "ACC3C302-4D51-13C5-D8F4-CD93260BABBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE4";
	rename -uid "F73F5102-40B5-7995-5F58-068403FA06F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE5";
	rename -uid "595F3EEA-44F2-4378-D113-E184A71A1071";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE6";
	rename -uid "7097F6DE-4690-E702-B965-C28B944834DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE7";
	rename -uid "A7C23D30-4284-D02B-3657-02ADE889B805";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.0073308671294629582 1 0.0073308671294629582
		 2 0.0073308671294629582 3 0.0073308671294629582 4 0.0073308671294629582 5 0.0073308671294629582
		 6 0.0073308671294629582 7 0.0073308671294629582 8 0.0073308671294629582 9 0.0073308671294629582
		 10 0.0073308671294629582 11 0.0073308671294629582 13 17.66497488649108 17 17.66497488649108
		 20 37.028262095520134 22 37.028262095520134;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE8";
	rename -uid "01B52A2C-45D4-E83C-352D-30B1A77047F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 27.725075825355617 1 27.725075825355617
		 2 27.725075825355617 3 27.725075825355617 4 27.725075825355617 5 27.725075825355617
		 6 27.725075825355617 7 27.725075825355617 8 27.725075825355617 9 27.725075825355617
		 10 27.725075825355617 11 27.725075825355617 13 9.2384139461291852 17 9.2384139461291852
		 20 -3.0696729986939002 22 -3.0696729986939002;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE9";
	rename -uid "8C0D3504-437B-E7C3-DB91-1881E83ED39B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 10.310549983406517 1 10.310549983406517
		 2 10.310549983406517 3 10.310549983406517 4 10.310549983406517 5 10.310549983406517
		 6 10.310549983406517 7 10.310549983406517 8 10.310549983406517 9 10.310549983406517
		 10 10.310549983406517 11 10.310549983406517 13 0 17 0 20 43.179868612410999 22 43.179868612410999;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE10";
	rename -uid "5995708D-4EB2-8C6E-5B49-6797F7F6610D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE12";
	rename -uid "CB955641-487B-2B30-BFE2-77B99E0D9663";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE13";
	rename -uid "07FEACC9-4AC8-437C-B370-34BEF40F4766";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE14";
	rename -uid "1435E455-4AC5-006B-7A72-2F8EA99E6DF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE15";
	rename -uid "8BFEEF03-4D49-C9D8-EDC7-0DB640EC21C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE16";
	rename -uid "1596FD50-4235-0875-DF1F-AF9663FADA60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE17";
	rename -uid "6F73D706-4A1B-9B5B-6C01-41BFB3CBF104";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000004 13 1.0000000000000004
		 17 1.0000000000000004 20 1.0000000000000004 22 1.0000000000000004;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE18";
	rename -uid "FEE63BAD-4DF2-A9AC-5B1B-6A998474502D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE19";
	rename -uid "79C8DFED-4EAC-3E8E-98EB-8B992B1670DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE20";
	rename -uid "C712325E-438C-525C-808B-46BB3972F4B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE22";
	rename -uid "9C781AC5-4ABF-E5B1-33FB-8CA0119DD203";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE23";
	rename -uid "18BBB0EE-4BDE-03DB-FA36-55BCD9BABECD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE24";
	rename -uid "1F0BEC75-46E3-2A3A-6672-00AAA0CBDBF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE25";
	rename -uid "29695D35-426B-7DC0-4D4E-DBAED84C9393";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE26";
	rename -uid "9615D6D3-4E1E-BA03-4981-9082DA46D1DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE27";
	rename -uid "9A007D3B-4DF2-E744-47AF-B08D1A73A03E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE28";
	rename -uid "84CF6222-45E8-1839-F0B0-CEB2B76D619B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE29";
	rename -uid "6D6A47C1-47DB-6085-719D-DBA2BD96F147";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE30";
	rename -uid "7CDC332B-487E-52C1-93E3-25B96E0FEA3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE32";
	rename -uid "0D818F39-43CB-E8EF-F956-A2B9A0DFEE8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE33";
	rename -uid "C6865275-4FFA-A7FA-F374-2A88DDE8A143";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE34";
	rename -uid "9332685B-40A8-1216-F831-0A825949E528";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE36";
	rename -uid "4D38B600-44A2-2DE9-AB62-20958AD85014";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE37";
	rename -uid "4B199567-418F-5185-9A80-C5AFAAB2FC39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE38";
	rename -uid "5B090BB3-4495-7A0A-8BF4-19A283E3AB42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE39";
	rename -uid "00851874-4C46-1E6A-35E4-B2BFD747B76D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE40";
	rename -uid "31FEC343-4A6B-56FF-E5E6-B39D82A5C99E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE41";
	rename -uid "EAE38B2E-4CFF-D24D-1ED8-79BF008E1D4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE42";
	rename -uid "7662CC2C-4C74-609F-D106-37918049845F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE43";
	rename -uid "2F46C81D-4D1E-297A-321E-C78F109A69B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE45";
	rename -uid "4535F909-4887-940A-C118-6E8141BF7685";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE46";
	rename -uid "5913E8D5-4D5E-50E4-C8AE-E59BDDD9759B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE47";
	rename -uid "46C91FDF-4D17-FCBB-5118-D4B73E732E2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE48";
	rename -uid "05E3A218-4439-2C8B-35F9-F4830A8B443E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE49";
	rename -uid "96FD8AA8-4781-B303-E5E7-F9B1C1CADDBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE50";
	rename -uid "C51B724B-43D1-C56A-5310-F7B294DA3B20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE51";
	rename -uid "9396A162-481E-2ABF-8F80-E9AF314E789D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -5.3695981608349861 1 -5.3695981608349861
		 2 -5.3695981608349861 3 -5.3695981608349861 4 -5.3695981608349861 5 -5.3695981608349861
		 6 -5.3695981608349861 7 -5.3695981608349861 8 -5.3695981608349861 9 -5.3695981608349861
		 10 -5.3695981608349861 11 -5.3695981608349861 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE52";
	rename -uid "EBABF5F6-43F7-4DC4-F41F-4480AABD5862";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -3.0352384715510929 1 -3.0352384715510929
		 2 -3.0352384715510929 3 -3.0352384715510929 4 -3.0352384715510929 5 -3.0352384715510929
		 6 -3.0352384715510929 7 -3.0352384715510929 8 -3.0352384715510929 9 -3.0352384715510929
		 10 -3.0352384715510929 11 -3.0352384715510929 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE53";
	rename -uid "423720CE-45C6-1F25-BD38-348B39EE53F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -61.018792667859707 1 -61.018792667859707
		 2 -61.018792667859707 3 -61.018792667859707 4 -61.018792667859707 5 -61.018792667859707
		 6 -61.018792667859707 7 -61.018792667859707 8 -61.018792667859707 9 -61.018792667859707
		 10 -61.018792667859707 11 -61.018792667859707 13 9.0787634046676047 17 9.0787634046675976
		 20 -3.0682673957517594 22 -20.362372458474198 24 9.1005648509192376 27 -6.1483030187237784
		 30 0.96116806945846667;
createNode animCurveTL -n "CURVE55";
	rename -uid "179FF421-4C6B-05DE-1A08-39A6E0A3AC86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE56";
	rename -uid "EC7E5A00-4A47-8E21-2CB5-019297FE2EE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE57";
	rename -uid "DD94ADCC-450E-4015-9126-A98163C22F0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE58";
	rename -uid "8DE15D08-4E6A-2BD8-F2EE-0D8882A28649";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE59";
	rename -uid "DCF7DA4B-4527-AA74-739E-1BB940371DA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE60";
	rename -uid "9C695C5F-4121-A337-C126-7B8B87B9E1DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE61";
	rename -uid "340CF17B-437E-8276-D1BF-439670D9F96A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.99487285630009159 1 0.99487285630009159
		 2 0.99487285630009159 3 0.99487285630009159 4 0.99487285630009159 5 0.99487285630009159
		 6 0.99487285630009159 7 0.99487285630009159 8 0.99487285630009159 9 0.99487285630009159
		 10 0.99487285630009159 11 0.99487285630009159 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE62";
	rename -uid "5C80E53C-4273-FFBD-CE06-C1AC16F531F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1.0640949357507694 1 1.0640949357507694
		 2 1.0640949357507694 3 1.0640949357507694 4 1.0640949357507694 5 1.0640949357507694
		 6 1.0640949357507694 7 1.0640949357507694 8 1.0640949357507694 9 1.0640949357507694
		 10 1.0640949357507694 11 1.0640949357507694 13 -8.7428966906826702 17 -8.7428966906826702
		 20 -2.4741141489961618 22 -2.4741141489961618;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE63";
	rename -uid "D78CB0D3-4E8E-2BE0-FCFB-9BBEEB63435B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -10.100944079046108 1 -10.100944079046108
		 2 -10.100944079046108 3 -10.100944079046108 4 -10.100944079046108 5 -10.100944079046108
		 6 -10.100944079046108 7 -10.100944079046108 8 -10.100944079046108 9 -10.100944079046108
		 10 -10.100944079046108 11 -10.100944079046108 13 4.3268974939026705 17 4.3268974939026714
		 20 0.43268974939026761 22 0.43268974939026761;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE65";
	rename -uid "705BC3A4-4135-0383-00F0-988377371379";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE66";
	rename -uid "6145DF82-4020-00A5-569C-A0A5A0756D18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE67";
	rename -uid "3E48E922-45F6-90BF-4FBD-6D82A2C52E18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE68";
	rename -uid "3B9ADEFD-47F2-3491-7E85-8D857A4DCBF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE69";
	rename -uid "A19653C8-405B-019C-CCCC-BE873D6D20AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE70";
	rename -uid "DBAA61A4-4496-FE99-FB40-80980A669AB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE71";
	rename -uid "F6EA68C6-485C-3C28-5A61-B6BE79A4A658";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE72";
	rename -uid "86954683-41EA-C28D-C03F-7A81CF711A19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE73";
	rename -uid "3B386EEE-4256-332A-169C-23BE3C42B48E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE75";
	rename -uid "4476F642-4395-D8F1-F3ED-53AD5ACA6519";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE76";
	rename -uid "A327FCAB-4A9B-1337-4ABE-7F9FDD428089";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE77";
	rename -uid "F0A2A3DB-4815-183C-55BD-FDA07B4AF45B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE78";
	rename -uid "A6A01101-4DFF-0266-ABAD-6E9047F72D58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE79";
	rename -uid "06515C8F-400A-9726-4104-4E8FB84FD11C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE80";
	rename -uid "3CAFC3D0-4D57-E93C-9BA8-E0B1A3355F64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE81";
	rename -uid "4DE57D8D-41CB-F46B-6297-8D85638EBFF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE82";
	rename -uid "3B9DE877-494C-A744-ED75-6BBA0B70AFD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE84";
	rename -uid "8CA6E1BD-4D48-9E20-31F3-3AB1FB617306";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE85";
	rename -uid "A6E69A1F-42EC-917A-D729-30ACF1FD32D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE86";
	rename -uid "81231AA3-49BE-ACD9-2537-C1B7FDA39505";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE87";
	rename -uid "CF8B53DF-454D-7AAC-13A4-19AD07F454C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE88";
	rename -uid "C4071E70-4D4C-6A9D-0A65-4186EBC02B97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE89";
	rename -uid "A43F8970-4BA4-5A40-4BCE-BB906FE16F50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE91";
	rename -uid "B6E892C4-40DF-2538-BEF5-79A4126E7018";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE92";
	rename -uid "190B32E7-42BC-27B4-DC7E-B6938760A149";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE93";
	rename -uid "4D6DD46B-41E5-A6E6-57FA-A4A9B3F9AC4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE94";
	rename -uid "20D6B28B-4B63-12A2-B080-6CB769371E9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE95";
	rename -uid "49B6EAC6-49C6-D74C-DE35-A1BDE384D53B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE96";
	rename -uid "E7C709C5-408D-BCAF-B860-6B9B2650EC54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE97";
	rename -uid "29CE212F-47F5-5508-4DBC-85A2DACCA40D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE98";
	rename -uid "334BF9A0-4FD8-922C-95B3-C889B2F12B84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE99";
	rename -uid "95C0CF3A-446B-9795-BA0E-A893FC3F5CC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE101";
	rename -uid "561145CB-4C89-5620-86D6-EDB46A307EF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE102";
	rename -uid "A14E7DFD-4A3C-9902-E511-3C8652959117";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE103";
	rename -uid "EE9E44CC-47F1-DAB9-83FE-89B8677E7314";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE104";
	rename -uid "1DAA2E13-4B00-74B6-E77E-EFA0B0418277";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE105";
	rename -uid "6B53C441-40C0-41C8-B8E5-B687769CB985";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE106";
	rename -uid "DEEA3838-4EFF-7F88-C0BE-A68472A5A592";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE107";
	rename -uid "96D816B3-4F9F-5388-B045-ADB2E25C46AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1.2548400958644346 1 1.2548400958644346
		 2 1.2548400958644346 3 1.2548400958644346 4 1.2548400958644346 5 1.2548400958644346
		 6 1.2548400958644346 7 1.2548400958644346 8 1.2548400958644346 9 1.2548400958644346
		 10 1.2548400958644346 11 1.2548400958644346 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE108";
	rename -uid "E62D850A-4CF1-6700-CEE1-CA8D5520A35B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -2.2641497311738381 1 -2.2641497311738381
		 2 -2.2641497311738381 3 -2.2641497311738381 4 -2.2641497311738381 5 -2.2641497311738381
		 6 -2.2641497311738381 7 -2.2641497311738381 8 -2.2641497311738381 9 -2.2641497311738381
		 10 -2.2641497311738381 11 -2.2641497311738381 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE109";
	rename -uid "C462978C-4BAB-6FD3-DD9E-7BAF8505BF9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -69.005677864300011 1 -69.005677864300011
		 2 -69.005677864300011 3 -69.005677864300011 4 -69.005677864300011 5 -69.005677864300011
		 6 -69.005677864300011 7 -69.005677864300011 8 -69.005677864300011 9 -69.005677864300011
		 10 -69.005677864300011 11 -69.005677864300011 13 4.4769329991509466 17 4.476932999150943
		 20 -5.6999565653357385 22 -22.99406162805818 24 6.4688756813352573 27 -8.7799921883077641
		 30 -1.6705211001255214;
createNode animCurveTL -n "CURVE111";
	rename -uid "3CCFAB15-4959-4574-6EF5-E2B5133A8B8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE112";
	rename -uid "1738586A-4E42-344C-25DC-16AD992599EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE113";
	rename -uid "2FCE1BBD-446C-65A8-D638-3F80E47201E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE114";
	rename -uid "02CDA7FC-4BFC-C393-F289-4DA30D6D7B71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE115";
	rename -uid "CC524DCA-4B41-5CE3-B267-9488DBB1FA93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE116";
	rename -uid "5DFF682D-4D22-05F5-D5A7-C88A76DDA8F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE117";
	rename -uid "775D3927-4908-C4A5-8183-C88C881AB59A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE118";
	rename -uid "CA169CE4-4E53-DA0C-D302-6AAC44BB0562";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE119";
	rename -uid "2E3F1529-4D8C-1B74-4BE0-008368DAE2E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE121";
	rename -uid "89A757CF-4560-A9E4-1D92-0F86F5EBBD82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE122";
	rename -uid "75A52427-432E-8A9A-2B95-79B84109ADA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE123";
	rename -uid "3B419E7A-4409-BE87-EE52-3DA17981121F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE124";
	rename -uid "0355C55E-45E3-754C-047C-CB883A700235";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE125";
	rename -uid "C91A8F39-455A-B33A-4BB1-C8895CF035D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE126";
	rename -uid "16170821-4764-6DF6-5162-0D8A8898A1EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE127";
	rename -uid "172AD3A1-4CC9-430A-84D6-C6824BA0E162";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.299294202861847 1 1.299294202861847
		 2 1.299294202861847 3 1.299294202861847 4 1.299294202861847 5 1.299294202861847 6 1.299294202861847
		 7 1.299294202861847 8 1.299294202861847 9 1.299294202861847 10 1.299294202861847
		 11 1.299294202861847 13 0 17 0 20 -0.15353871557211432 22 -0.24890760739466603 24 -0.077542116958788113
		 27 -0.17180890931573672 30 -0.12897541065494808;
createNode animCurveTA -n "CURVE128";
	rename -uid "2E1B2469-417B-53A0-6D47-139C3B101568";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.7368249534599136 1 -1.7368249534599136
		 2 -1.7368249534599136 3 -1.7368249534599136 4 -1.7368249534599136 5 -1.7368249534599136
		 6 -1.7368249534599136 7 -1.7368249534599136 8 -1.7368249534599136 9 -1.7368249534599136
		 10 -1.7368249534599136 11 -1.7368249534599136 13 0 17 0 20 0.34415681135606097 22 0.28295453894874345
		 24 0.36878864895206021 27 0.33540989898149076 30 0.35409507154241082;
createNode animCurveTA -n "CURVE129";
	rename -uid "5FAA8388-4EA3-1007-BCB6-C9BBF9425775";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -55.555255690280639 1 -55.555255690280639
		 2 -55.555255690280639 3 -55.555255690280639 4 -55.555255690280639 5 -55.555255690280639
		 6 -55.555255690280639 7 -55.555255690280639 8 -55.555255690280639 9 -55.555255690280639
		 10 -55.555255690280639 11 -55.555255690280639 13 13.981899745578964 17 13.981899745578961
		 20 3.6033854824858031 22 -13.69087306628809 24 15.772429305208599 27 0.5233081022374596
		 30 7.6328835340106522;
createNode animCurveTL -n "CURVE131";
	rename -uid "5D510B9F-407D-28C5-20E1-2B9954105047";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE132";
	rename -uid "CCB171C4-4E67-C88B-2889-8AA750D05188";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE133";
	rename -uid "8E446F68-46C3-37A9-6DF4-10B9748FB20E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE134";
	rename -uid "A8F98077-4459-CFAB-44EE-1F952704705E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE135";
	rename -uid "1398DEE6-4E03-92AF-3F36-AFB763F32A11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE136";
	rename -uid "A0069F62-491A-B3A1-5E68-C1A5141B7483";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE137";
	rename -uid "61AB9DC7-4568-638A-5E99-6BA459E9A25D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE138";
	rename -uid "5F1696E6-4865-D738-5968-3B8437E4A8BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE139";
	rename -uid "5628B68E-47FF-06B9-BA2E-858C6059501F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE141";
	rename -uid "E7864BC5-4CC8-A12F-20A8-10ABF47C23C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE142";
	rename -uid "45C67666-468A-93C3-B33D-3AA16DA5CAD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE143";
	rename -uid "52A17AD1-461E-F659-70B8-98BC0AA64602";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE144";
	rename -uid "EF25B56B-48EB-94AA-525D-7A8D05B8A582";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0.99999999999999989 13 0.99999999999999989
		 17 0.99999999999999989 19 0.99999999999999989 20 0.99999999999999989 21 0.99999999999999989;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE145";
	rename -uid "79FABD81-4CE9-E121-7659-6C813D3AEDE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0.99999999999999978 13 0.99999999999999978
		 17 0.99999999999999978 19 0.99999999999999978 20 0.99999999999999978 21 0.99999999999999978;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE146";
	rename -uid "53337090-439F-05C1-F21C-9B8AAFC8CE4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0.99999999999999978 13 0.99999999999999978
		 17 0.99999999999999978 19 0.99999999999999978 20 0.99999999999999978 21 0.99999999999999978;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE147";
	rename -uid "F1940A11-4895-C629-B60B-7EA5EE85761E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE148";
	rename -uid "1F2600AA-428B-98DA-5A47-12A53B357F01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE149";
	rename -uid "50C77F75-4EA9-EC3E-FED8-31B5A8A416CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE151";
	rename -uid "DC2AF8D2-47EA-388B-A009-318E5675492C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE152";
	rename -uid "A0F10DF8-44B6-94A3-BB30-5BA281B41F4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE153";
	rename -uid "12BED3FD-4F93-50D9-99C2-8D9606D128BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE154";
	rename -uid "8B17F807-448B-58A1-E4E1-09A0AF3E7BED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE155";
	rename -uid "77A3169C-440D-AE45-EA6D-DCB35FEA843B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE156";
	rename -uid "927E0322-47A0-F3C5-1B9E-3BB24668DBE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE158";
	rename -uid "9C1D996F-4F56-8A51-0476-B19A0E977169";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE159";
	rename -uid "CB329514-4429-2463-234B-94AFD819FE51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE160";
	rename -uid "59C1FB4C-4C4D-4023-032F-9384977BA56C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE161";
	rename -uid "9F5B2D56-4286-A874-9183-B5AC85353251";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE162";
	rename -uid "3CE12824-45D6-7852-4761-BEB119DC147C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE163";
	rename -uid "85346B8C-4527-96E8-E831-0CA59077F858";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE164";
	rename -uid "E22A2F0C-4D46-CED1-FEA5-14B606C348F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE165";
	rename -uid "7A2D4F19-47D2-568D-3644-108A32D6B145";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE166";
	rename -uid "44461847-4AC6-E457-8FA2-0A8C26BE7F28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE168";
	rename -uid "5F956685-4C83-64EE-1729-7ABD47AFF6DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE169";
	rename -uid "8E44B2A0-4223-8A01-AE9F-BCA6AF7FDE7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE170";
	rename -uid "E21FA876-4073-C6C4-D165-29BE30099E64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE171";
	rename -uid "DDE67DCB-41A5-45C6-2824-88ADC907BA8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE172";
	rename -uid "69D95D22-4015-56C3-2426-2BBB061E7A51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0.99999999999999989 13 0.99999999999999989
		 17 0.99999999999999989 19 0.99999999999999989 20 0.99999999999999989 21 0.99999999999999989;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE173";
	rename -uid "D5437564-4D11-7DCF-89FB-41BBFFC1E2D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE174";
	rename -uid "9E319421-4899-D1DB-4C11-C3B72232C1D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE175";
	rename -uid "149C4DB7-4FEC-306E-DC51-258093A990CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE176";
	rename -uid "0F631BE6-4117-42A9-F8B8-E08275FBD28A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE178";
	rename -uid "8EE1AC7D-4F8C-6B60-A6DE-05A7CDBC811F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 -0.0081355141290523174 23 -0.0077773322404027043;
createNode animCurveTL -n "CURVE179";
	rename -uid "9A027299-480A-0E64-65AA-D0BD7ED61A3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 -0.001276832316184362 1 0.036825763391665434
		 2 -0.035989507406367721 3 -0.014698061223268694 4 0.021318089720127498 5 0.036421636889938824
		 6 -0.036293576365947711 7 -0.033259757141299098 8 -0.001276832316184362 9 0.036825763391665434
		 10 -0.035989507406367721 11 -0.014698061223268694 12 0.021318089720127498 13 -2.3033616205198935
		 15 -0.033259757141299098 17 -0.033259757141299098 19 -0.033259757141299098 20 -0.033259757141299098
		 21 0.26494025080312433 23 -0.044338523865040058;
createNode animCurveTL -n "CURVE180";
	rename -uid "9C938F43-4E85-7B40-A5C9-F3AFC3706C77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 -1.0989357704204139 23 -1.0194688381027066;
createNode animCurveTA -n "CURVE181";
	rename -uid "680CA9A8-4366-03C5-0835-AEBD0BF5596E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE182";
	rename -uid "05614C69-4D9E-C03C-295E-20B71F7EBB2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -3.0000000000000004 1 -2.6676384839650149
		 2 -1.8104956268221577 3 1.7072884002348854 4 3.0000000000000004 5 2.6676384839650145
		 6 1.8104956268221566 7 -1.7072884002348858 8 -3.0000000000000004 9 -2.6676384839650149
		 10 -1.8104956268221577 11 1.7072884002348854 12 3.0000000000000004 13 -1.7072884002348858
		 15 -1.7072884002348858 17 -1.7072884002348858 19 -1.7072884002348858 20 -1.7072884002348858
		 21 -1.7072884002348858;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE183";
	rename -uid "CB87B873-4700-E697-2208-368E46D0DC27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE185";
	rename -uid "7B442D90-4F7F-3EE1-AAE7-12A8200587F5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 17 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 21 ".kit[13:20]"  18 1 18 18 18 1 1 18;
	setAttr -s 21 ".kot[13:20]"  18 1 18 18 18 18 18 18;
	setAttr -s 21 ".kix[0:20]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 0.041666666666666852 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 21 ".kox[0:20]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 0.041666666666666852 
		1 1 1 1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "CURVE186";
	rename -uid "29AD177C-4406-6CAC-0EF1-269C621ECB51";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 17 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 21 ".kit[13:20]"  18 1 18 18 18 1 1 18;
	setAttr -s 21 ".kot[13:20]"  18 1 18 18 18 18 18 18;
	setAttr -s 21 ".kix[0:20]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 0.041666666666666852 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 21 ".kox[0:20]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 0.041666666666666852 
		1 1 1 1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "CURVE187";
	rename -uid "03C71AD0-44D1-E009-121D-D8AB201D91CB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -42.800000000000004 1 0 2 0 3 0 4 0 5 5.2629629629629679
		 6 15.037037037037047 7 -37.160755691568099 8 -42.800000000000004 9 0 10 0 11 0 12 0
		 13 4.9053367774192633 14 0 17 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 21 ".kit[0:20]"  18 1 1 1 1 1 1 1 
		18 1 1 1 1 18 1 18 18 18 1 1 18;
	setAttr -s 21 ".kot[0:20]"  18 1 1 1 1 1 1 1 
		18 1 1 1 1 18 1 18 18 18 18 18 18;
	setAttr -s 21 ".kix[1:20]"  0.041666666666666664 0.041666666666666644 
		0.041666666666666685 0.04166666666666663 0.041666666666666685 0.041666666666666685 
		0.041666656732559315 1 0.041666666666666664 0.041666666666666644 0.041666666666666685 
		0.04166666666666663 1 0.041666656732559315 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[1:20]"  0 0 0 0 9.0222222222222275 9.0222222222222186 
		-11.416678295075862 0 0 0 0 0 0 -11.416678295075862 0 0 0 0 0 0;
	setAttr -s 21 ".kox[1:20]"  0.041666666666666685 0.041666666666666685 
		0.04166666666666663 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666656732559315 1 0.041666666666666685 0.041666666666666685 0.04166666666666663 
		0.041666666666666685 1 0.041666656732559315 1 1 1 1 1 1;
	setAttr -s 21 ".koy[1:20]"  0 0 0 0 9.0222222222222292 9.0222222222222079 
		-11.416678295075819 0 0 0 0 0 0 -11.416678295075819 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE188";
	rename -uid "DD61F7C9-4EB0-01F9-ADF5-BF9878062E74";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 17 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 21 ".kit[13:20]"  18 1 18 18 18 1 1 18;
	setAttr -s 21 ".kot[13:20]"  18 1 18 18 18 18 18 18;
	setAttr -s 21 ".kix[0:20]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 0.041666666666666852 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 21 ".kox[0:20]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 0.041666666666666852 
		1 1 1 1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "CURVE189";
	rename -uid "5F017345-4EB0-84D1-BFE8-E1B316820681";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 100 1 100 2 100 3 100 4 100 5 100 6 100
		 7 100 8 100 9 100 10 100 11 100 12 100 13 100 14 100 17 100 19 100 20 100 21 100
		 23 100 25 100;
	setAttr -s 21 ".kit[13:20]"  18 1 18 18 18 1 1 18;
	setAttr -s 21 ".kot[13:20]"  18 1 18 18 18 18 18 18;
	setAttr -s 21 ".kix[0:20]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 0.041666666666666852 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 21 ".kox[0:20]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 0.041666666666666852 
		1 1 1 1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTA -n "CURVE190";
	rename -uid "FF62C6B1-440C-82BD-4BCB-D3A5F7CC3BC0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 -12.057350689149022 17 -74.743869113697102 19 -80.774696733437466
		 25 6.213873494061473 28 -1.1090827374865875;
	setAttr -s 18 ".kit[11:17]"  18 18 18 18 18 18 18;
	setAttr -s 18 ".kot[11:17]"  18 18 18 18 18 18 18;
	setAttr -s 18 ".kix[0:17]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 1 1 0.15154169448063237 
		0.24558736708558684 1 1 1;
	setAttr -s 18 ".kiy[0:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 -0.98845086617086775 
		-0.96937446073639111 0 0 0;
	setAttr -s 18 ".kox[0:17]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 1 1 0.15154169448063237 0.24558736708558684 1 1 1;
	setAttr -s 18 ".koy[0:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 -0.98845086617086775 
		-0.96937446073639111 0 0 0;
createNode animCurveTA -n "CURVE191";
	rename -uid "02C9F954-43F4-A8C3-E194-6B8D129D62C6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -16.353 1 -10 2 -10 3 -10 4 -10 5 -15.042999999999997
		 6 -24.407 7 -24.65 8 -16.353 9 -10 10 -10 11 -10 12 -10 17 -72.034859148270186 19 -158.87819974977558
		 25 -186.36789397933649 28 -186.67193870520441;
	setAttr -s 17 ".kit[4:16]"  18 18 1 1 1 1 1 18 
		18 1 18 18 18;
	setAttr -s 17 ".kot[4:16]"  18 18 1 1 1 1 1 18 
		18 1 18 18 18;
	setAttr -s 17 ".kix[0:16]"  0.27966669605678413 0.042412548082023854 
		0.041869939899915484 0.039017442345383901 1 0.30318064744431972 0.38856322307886981 
		0.039518919150632437 0.27966669605678413 0.042412548082023854 0.041869939899915484 
		1 1 0.084631873204207425 0.16447043994348745 0.99131454070813119 1;
	setAttr -s 17 ".kiy[0:16]"  0.96009715087416148 0 0 0 0 -0.95293310101771755 
		-0.92142206489239253 0.089971684040035138 0.96009715087416148 0 0 0 0 -0.99641228717732455 
		-0.98638201239925072 -0.13151228604441056 0;
	setAttr -s 17 ".kox[0:16]"  0.27966669886293766 0.04129693073495537 
		0.04179556397517642 0.041666656732559149 1 0.30318064744431966 0.38856327010033181 
		0.049180820255617541 0.27966669886293766 0.04129693073495537 0.04179556397517642 
		1 1 0.0846318723506813 0.16447043994348748 0.99131454070813119 1;
	setAttr -s 17 ".koy[0:16]"  0.960097150056757 0 0 0 0 -0.95293310101771744 
		-0.92142204506346415 0.11196868021622944 0.960097150056757 0 0 0 0 -0.99641228724982012 
		-0.98638201239925083 -0.13151228604441054 0;
createNode animCurveTA -n "CURVE192";
	rename -uid "0289E0B3-4CFC-CDB7-1536-EDBF8EAAA9D5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 6.0987113987329487 1 0 2 0 3 0 4 0 5 0
		 6 0 7 12.423749176132807 8 6.0987113987329487 9 0 10 0 11 0 12 0 17 54.088849515828912
		 19 141.8800974130352 23 181.4008555983624 25 181.19419058024957 28 181.16074230105176;
	setAttr -s 18 ".kit[13:17]"  18 18 1 18 1;
	setAttr -s 18 ".kot[13:17]"  18 18 1 18 1;
	setAttr -s 18 ".kix[0:17]"  0.34507011558219053 0.041666666666666644 
		0.041666666666666644 0.041666666666666685 0.041666666666666519 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.34507011558219053 0.041666666666666644 
		0.041666666666666644 0.041666666666666685 0.041666666666666519 0.1123570800467142 
		0.1073855620956418 0.99984793506538072 0.99989351634638657 1;
	setAttr -s 18 ".kiy[0:17]"  -0.93857690965210383 0 0 0 0 0 0 0 -0.93857690965210383 
		0 0 0 0 0.99366789550803958 0.99421745159366581 -0.017438656642480989 -0.014593010945595997 
		0;
	setAttr -s 18 ".kox[0:17]"  0.34507014398643371 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.34507014398643371 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.11235708004671421 
		0.10738556209564178 0.99984793506538072 0.99989351634638668 1;
	setAttr -s 18 ".koy[0:17]"  -0.9385768992092135 0 0 0 0 0 0 0 -0.9385768992092135 
		0 0 0 0 0.99366789550803958 0.9942174515936657 -0.017438656642481027 -0.014593010945595997 
		0;
createNode animCurveTU -n "CURVE193";
	rename -uid "149F86BB-4728-972D-D191-98AD0BEBCB1A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 2 0 3 31.100008341670538 4 62.2
		 5 0 6 0 7 0 8 0 9 0 10 0 11 31.100008341670538 12 62.2 13 0 14 0 17 0 19 0 20 0 21 0
		 23 0 25 0;
	setAttr -s 21 ".kit[0:20]"  18 1 1 1 18 1 1 1 
		18 1 1 1 18 18 1 18 18 18 1 1 18;
	setAttr -s 21 ".kot[0:20]"  18 1 1 1 18 1 1 1 
		18 1 1 1 18 18 1 18 18 18 18 18 18;
	setAttr -s 21 ".kix[1:20]"  0.041666666666666664 0.041666666666666644 
		0.0010968880397593103 1 0.041666666666666685 0.041666666666666685 0.041666666666666852 
		1 0.041666666666666664 0.041666666666666644 0.0010968880397593103 1 1 0.041666666666666852 
		1 1 1 1 1 1;
	setAttr -s 21 ".kiy[1:20]"  0 0 0.99999939841813312 0 0 0 0 0 0 0 0.99999939841813312 
		0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[1:20]"  0.041666666666666685 0.041666666666666685 
		0.0010968878845765929 1 0.041666666666666685 0.041666666666666685 0.041666666666666852 
		1 0.041666666666666685 0.041666666666666685 0.0010968878845765929 1 1 0.041666666666666852 
		1 1 1 1 1 1;
	setAttr -s 21 ".koy[1:20]"  0 0 0.99999939841830343 0 0 0 0 0 0 0 0.99999939841830343 
		0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE194";
	rename -uid "73657AC9-4455-08B8-56FC-9CB9951D2145";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 17 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 21 ".kit[13:20]"  18 1 18 18 18 1 1 18;
	setAttr -s 21 ".kot[13:20]"  18 1 18 18 18 18 18 18;
	setAttr -s 21 ".kix[0:20]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 0.041666666666666852 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 21 ".kox[0:20]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 0.041666666666666852 
		1 1 1 1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "CURVE195";
	rename -uid "4C7E4207-436F-8543-8498-0BA7918137D2";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 17 1 19 1 20 1 21 1 23 1 25 1;
	setAttr -s 21 ".kit[0:20]"  1 1 1 1 1 1 9 9 
		1 1 1 1 1 9 9 18 9 9 1 1 18;
	setAttr -s 21 ".kot[19:20]"  18 18;
	setAttr -s 21 ".kix[0:20]"  2083.375 0.041666666666666664 0.041666666666666671 
		0.25 0.04166666666666663 0.041666666666666685 1 1 2083.375 0.041666666666666664 0.041666666666666671 
		0.25 0.04166666666666663 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "CURVE196";
	rename -uid "E3F0B6A4-452F-3C12-7FC7-86B4A86CDB1C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 17 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 21 ".kit[13:20]"  18 1 18 18 18 1 1 18;
	setAttr -s 21 ".kot[13:20]"  18 1 18 18 18 18 18 18;
	setAttr -s 21 ".kix[0:20]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 0.041666666666666852 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 21 ".kox[0:20]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 0.041666666666666852 
		1 1 1 1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTL -n "CURVE197";
	rename -uid "B3959368-490C-8E21-CB02-E9AFADA6ED23";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0.8 1 0.8 2 0.8 3 0.8 4 0.8 5 0.78 6 0.412
		 7 0.8 8 0.8 9 0.8 10 0.8 11 0.8 12 0.8 13 -1.0820867856959897 14 -2.5761735713919736
		 15 -2.6620238589183516 17 -2.9137909285311707 19 -2.4608467479956282 20 -2.0079025674600874
		 21 -2.0079025674600874 23 -2.0079025674600874 25 -2.0079025674600874;
	setAttr -s 22 ".kit[13:21]"  18 1 18 18 18 18 1 1 
		18;
	setAttr -s 22 ".kot[13:21]"  18 1 18 18 18 18 18 18 
		18;
	setAttr -s 22 ".kix[0:21]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 0.02368881479611825 0.041666666666666852 0.33490628034314623 
		1 0.13131950549893984 1 1 1 1;
	setAttr -s 22 ".kiy[0:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99971938065316879 
		0 -0.94225144382310078 0 0.99134009677583101 0 0 0 0;
	setAttr -s 22 ".kox[0:21]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.02368881479611825 
		0.041666666666666852 0.33490628034314623 1 0.13131950549893984 1 1 1 1;
	setAttr -s 22 ".koy[0:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99971938065316879 
		0 -0.94225144382310078 0 0.99134009677583101 0 0 0 0;
createNode animCurveTL -n "CURVE198";
	rename -uid "67CBB78D-4A8E-BCCF-7B1A-9FB56E8875E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 0 2 0 3 0 4 0 5 0.557 6 1.3493084395120087
		 7 0.0425 8 0 9 0 10 0 11 0 12 0 13 3.1508325048401944 15 4.7591649214184644 17 7.3304168312493188
		 19 9.3087125114100697 23 9.7758721993235227 25 8.8573982444807928 28 9.9466648212219866
		 30 9.0617198322852985 32 9.3569102310137389;
	setAttr -s 22 ".kit[0:21]"  1 1 1 1 18 18 3 18 
		1 1 1 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 22 ".kot[0:21]"  1 1 1 1 18 18 3 18 
		1 1 1 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 22 ".kix[0:21]"  0.24999998509883881 0.041666664183139801 
		0.041666671633720412 0.041666659712791543 1 0.059185696075794381 1 0.2993400745373247 
		0.24999998509883881 0.041666664183139801 0.041666671633720412 0.041666659712791543 
		1 0.025206496071645192 0.03825329972108113 0.035146603832324326 0.1134283012934152 
		1 1 1 1 1;
	setAttr -s 22 ".kiy[0:21]"  0 0 0 0 0 0.99824699016827678 0 -0.95414648758772314 
		0 0 0 0 0 0.99968226580038433 0.99926807467288226 0.99938216726088014 0.99354618436471798 
		0 0 0 0 0;
	setAttr -s 22 ".kox[0:21]"  0.041666664183139801 0.041666662693023687 
		0.041666664679845145 0.041666686534881592 1 0.059185696075794381 1 0.29934007453732475 
		0.041666664183139801 0.041666662693023687 0.041666664679845145 0.041666686534881592 
		1 0.025206496071645192 0.03825329972108113 0.035146603832324319 0.11342830129341522 
		1 1 1 1 1;
	setAttr -s 22 ".koy[0:21]"  0 0 0 0 0 0.99824699016827678 0 -0.95414648758772302 
		0 0 0 0 0 0.99968226580038433 0.99926807467288226 0.99938216726087992 0.99354618436471798 
		0 0 0 0 0;
createNode animCurveTL -n "CURVE199";
	rename -uid "13BF94A4-4EBE-888F-F48C-768D73B713D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 5.8047551779792474 4 -7.691 5 -7.691 7 5.117471349471046
		 8 5.8047551779792474 12 -7.691 13 8.8764136884098654 14 11.446384110948067 15 9.6239871068396727
		 17 10.553653880205001 19 11.140340531685123 20 10.482945549653376 21 9.7835240692841285
		 23 7.6269398912809461 25 5.4571229249329516 28 5.4571229249329516;
	setAttr -s 16 ".kit[0:15]"  2 2 1 18 2 2 18 18 
		18 18 18 18 1 1 18 1;
	setAttr -s 16 ".kot[0:15]"  2 2 1 18 2 2 18 18 
		18 18 18 18 1 1 18 1;
	setAttr -s 16 ".kix[2:15]"  1 0.01939638968871954 0.058101798538830823 
		0.011854746525396838 0.0051880573315567745 1 1 0.10493376508490045 1 0.058859326350086331 
		0.063542497732036698 0.064583803260657366 1 1;
	setAttr -s 16 ".kiy[2:15]"  0 0.99981187233751301 0.99831066357449738 
		-0.99992973002347441 0.99998654194000258 0 0 0.99447921292760411 0 -0.99826628697037245 
		-0.99797913354036316 -0.99791228690521117 0 0;
	setAttr -s 16 ".kox[2:15]"  0.018521165642725382 0.01939638968871954 
		0.011854746525396838 0.0024143710158010352 0.0051880573315567745 1 1 0.10493376508490046 
		1 0.058859326350086331 0.06354249773203699 0.064583803260657408 1 1;
	setAttr -s 16 ".koy[2:15]"  0.99982846850008966 0.99981187233751301 
		-0.99992973002347441 0.99999708540205157 0.99998654194000258 0 0 0.99447921292760422 
		0 -0.99826628697037245 -0.99797913354036316 -0.99791228690521117 0 0;
createNode animCurveTU -n "CURVE200";
	rename -uid "7F19347E-4A21-A57B-96EE-C8B8319125BC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 17 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 21 ".kit[13:20]"  18 1 18 18 18 1 1 18;
	setAttr -s 21 ".kot[13:20]"  18 1 18 18 18 18 18 18;
	setAttr -s 21 ".kix[0:20]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 0.041666666666666852 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 21 ".kox[0:20]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 0.041666666666666852 
		1 1 1 1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "CURVE201";
	rename -uid "52A0FF02-4192-E5E1-427E-B19753E9449F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 17 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 21 ".kit[13:20]"  18 1 18 18 18 1 1 18;
	setAttr -s 21 ".kot[13:20]"  18 1 18 18 18 18 18 18;
	setAttr -s 21 ".kix[0:20]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 0.041666666666666852 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 21 ".kox[0:20]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 0.041666666666666852 
		1 1 1 1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "CURVE202";
	rename -uid "C770B3C1-4B05-CC2B-DBD6-D98F467349CA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 25 1 25 2 25 3 25 4 25 5 25 6 25 7 25
		 8 25 9 25 10 25 11 25 12 25 13 25 14 25 17 25 19 25 20 25 21 25 23 25 25 25;
	setAttr -s 21 ".kit[13:20]"  18 1 18 18 18 1 1 18;
	setAttr -s 21 ".kot[13:20]"  18 1 18 18 18 18 18 18;
	setAttr -s 21 ".kix[0:20]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 0.041666666666666852 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 21 ".kox[0:20]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 0.041666666666666852 
		1 1 1 1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "CURVE203";
	rename -uid "CF58D582-4B21-BD73-6D22-D6B02F4DD0D5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 17 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 21 ".kit[13:20]"  18 1 18 18 18 1 1 18;
	setAttr -s 21 ".kot[13:20]"  18 1 18 18 18 18 18 18;
	setAttr -s 21 ".kix[0:20]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 0.041666666666666852 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 21 ".kox[0:20]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 0.041666666666666852 
		1 1 1 1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "CURVE204";
	rename -uid "89B57052-4BAD-E1BB-E1AA-ADAA080F8BEA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 0 2 0 3 0 4 0 5 51 6 4.62222222222222
		 7 3.7777777777777715 8 0 9 0 10 0 11 0 12 0 13 4.1999999999999913 14 3.7777777777777715
		 17 3.7777777777777715 19 3.7777777777777715 20 3.7777777777777715 21 3.7777777777777715
		 23 3.7777777777777715 25 0 28 0;
	setAttr -s 22 ".kit[4:21]"  18 1 1 1 1 1 1 1 
		18 18 1 18 18 18 1 1 18 1;
	setAttr -s 22 ".kot[4:21]"  18 1 1 1 1 1 1 1 
		18 18 1 18 18 18 18 1 18 1;
	setAttr -s 22 ".kix[0:21]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 1 0.041666666666666685 0.041666666666666685 0.041666666666666852 
		2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 1 1 0.041666666666666852 
		1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[0:21]"  0 0 0 0 0 0 -7.0833333333333428 -7.0833333333333375 
		0 0 0 0 0 0 -7.0833333333333375 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[0:21]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.04166666666666663 1 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 0.041666666666666664 0.041666666666666685 0.041666666666666685 
		0.04166666666666663 1 1 0.041666666666666852 1 1 1 1 1 1 1;
	setAttr -s 22 ".koy[0:21]"  0 0 0 0 0 0 -7.0833333333333215 -7.0833333333333215 
		0 0 0 0 0 0 -7.0833333333333215 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE205";
	rename -uid "9C5F3FAA-4273-8817-A76D-0A8DC92694FB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 17 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 21 ".kit[13:20]"  18 1 18 18 18 1 1 18;
	setAttr -s 21 ".kot[13:20]"  18 1 18 18 18 18 18 18;
	setAttr -s 21 ".kix[0:20]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 0.041666666666666852 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 21 ".kox[0:20]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 0.041666666666666852 
		1 1 1 1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "CURVE206";
	rename -uid "D9A2ED32-4884-51A6-EE7F-7AA5839F8301";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 50 1 50 2 50 3 50 4 50 5 50 6 50 7 50
		 8 50 9 50 10 50 11 50 12 50 13 50 14 50 17 50 19 50 20 50 21 50 23 50 25 50;
	setAttr -s 21 ".kit[13:20]"  18 1 18 18 18 1 1 18;
	setAttr -s 21 ".kot[13:20]"  18 1 18 18 18 18 18 18;
	setAttr -s 21 ".kix[0:20]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 0.041666666666666852 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 21 ".kox[0:20]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 0.041666666666666852 
		1 1 1 1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTL -n "CURVE208";
	rename -uid "A7B57A00-449F-3E46-2597-0D9587E68771";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE209";
	rename -uid "2C9F3D64-4E18-5A79-E8F1-85940A0E5885";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE210";
	rename -uid "315AEDF5-4AEC-38A8-B17C-B08AD06015BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE211";
	rename -uid "3C7C9A1E-4228-5881-BD56-18897BBEC68C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE212";
	rename -uid "73695178-4FE5-2E3D-B6EA-B3A061DAB0FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE213";
	rename -uid "D74FF276-4641-88E3-019C-33A71A501324";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE214";
	rename -uid "DA675313-440A-C026-A9FA-458109767B22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE215";
	rename -uid "99E780CE-4577-BC40-CE87-669DBD8DC087";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE216";
	rename -uid "4969B834-44E3-660D-D6EB-CA81C936C8F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE218";
	rename -uid "EFD373BF-4CBC-425D-120F-7E950750A41D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE219";
	rename -uid "14B7FC5E-42D2-2CB7-E7B7-86A052CEAE4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE220";
	rename -uid "66BAAB6B-4733-A829-18B4-8D89F3FBA4A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE221";
	rename -uid "0A878B30-4253-014F-DD58-D18C7EE67659";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE222";
	rename -uid "071A829D-4C48-AAD5-CBF1-64B8A2ECF929";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE223";
	rename -uid "2EF8782D-4794-F631-C651-BF8C06C02395";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE224";
	rename -uid "ABBECFB9-4E4D-EF5E-16B8-32BF5A9B4F1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE225";
	rename -uid "078374CE-4738-77E1-7B32-C983398A6EF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE226";
	rename -uid "A616B216-4D62-35AD-D17E-B0B7CB2680E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE228";
	rename -uid "D6C5B3D8-4ED1-6EFF-1654-58B7C97FB26F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.4848902224934028 1 -0.4848902224934028
		 2 -0.4848902224934028 3 -0.4848902224934028 4 -0.4848902224934028 5 -0.4848902224934028
		 6 -0.4848902224934028 7 -0.4848902224934028 8 -0.4848902224934028 9 -0.4848902224934028
		 10 -0.4848902224934028 11 -0.4848902224934028 12 -0.4848902224934028 13 -0.4848902224934028
		 17 -0.4848902224934028 20 -0.4848902224934028 22 -0.4848902224934028;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTL -n "CURVE229";
	rename -uid "8BCD980E-4A40-A938-E25C-4CACF8048DA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTL -n "CURVE230";
	rename -uid "6419D3AF-453C-81E5-0AA4-A380989A857E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTU -n "CURVE231";
	rename -uid "262FD98E-4AD5-196E-20C6-BDBF2AA10C69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTA -n "CURVE232";
	rename -uid "A5482D20-482D-4EFF-FA14-AFBDC6FBB757";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTA -n "CURVE233";
	rename -uid "1FFBA7F6-4814-60DD-2BF0-37924C4A3273";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 23.343303568963425;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTA -n "CURVE234";
	rename -uid "13E981F0-4456-F070-0760-4482B9F9A7D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -10.790232091969441 1 -10.790232091969441
		 2 -10.790232091969441 3 -10.790232091969441 4 -10.790232091969441 5 -10.790232091969441
		 6 -10.790232091969441 7 -10.790232091969441 8 -10.790232091969441 9 -10.790232091969441
		 10 -10.790232091969441 11 -10.790232091969441 12 -10.790232091969441 13 -10.790232091969441
		 17 6.8400332541502697 20 6.8400332541502689 22 6.8400332541502689;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTL -n "CURVE236";
	rename -uid "5A913B1B-4205-6AA4-9B29-3C98436A40EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE237";
	rename -uid "C9AEC4A5-4980-2A39-871A-708604124353";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE238";
	rename -uid "2A3557F6-4663-7502-D59F-9EB78C8C0FCC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE239";
	rename -uid "936125C6-4F89-3FE4-F29C-C2964E89BA1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE240";
	rename -uid "821EF747-488A-10CB-7FD1-6AB4B80351AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE241";
	rename -uid "DE4521C6-41CE-80E2-D74E-479522301427";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000004 13 1.0000000000000004
		 17 1.0000000000000004 20 1.0000000000000004 22 1.0000000000000004;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE242";
	rename -uid "34299089-41A8-5438-F4D9-52BA6CBA1050";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE243";
	rename -uid "AC0F03CE-468D-CCFF-E394-E5AC197E24A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE244";
	rename -uid "8B13B4A0-4970-ED0F-2127-518DF675D814";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE246";
	rename -uid "3F7992D4-43D6-C276-1817-B38EE3082E63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE247";
	rename -uid "62150D46-4AB7-6934-B01F-B98E90B78B15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE248";
	rename -uid "45946358-45B1-891B-2DF9-E0933E0F655F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE249";
	rename -uid "602D5D9E-42C7-5081-4A37-62BE19437076";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE250";
	rename -uid "13B26669-4E5A-5A49-C9B8-36B9A3EDF362";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE251";
	rename -uid "E49B31D9-49E6-B0E2-C0EF-ADB9A792D2EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE252";
	rename -uid "70E6FEB2-4320-08EA-3A18-04B39B9CEB98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.0011401916485129424 1 0.0011401916485129424
		 2 0.0011401916485129424 3 0.0011401916485129424 4 0.0011401916485129424 5 0.0011401916485129424
		 6 0.0011401916485129424 7 0.0011401916485129424 8 0.0011401916485129424 9 0.0011401916485129424
		 10 0.0011401916485129424 11 0.0011401916485129424 13 0 17 0 20 5.4701924860025093
		 22 5.4701924860025093;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE253";
	rename -uid "0F32E5C0-42D4-997B-AB20-73948721A8AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 11.940934559386662 1 11.940934559386662
		 2 11.940934559386662 3 11.940934559386662 4 11.940934559386662 5 11.940934559386662
		 6 11.940934559386662 7 11.940934559386662 8 11.940934559386662 9 11.940934559386662
		 10 11.940934559386662 11 11.940934559386662 13 -7.3745208630627426 17 -7.3745208630627426
		 20 2.5225985068719305 22 2.5225985068719305;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE254";
	rename -uid "0200D66B-4B62-5E8B-58FE-E6A314861149";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -0.001232047838077727 1 -0.001232047838077727
		 2 -0.001232047838077727 3 -0.001232047838077727 4 -0.001232047838077727 5 -0.001232047838077727
		 6 -0.001232047838077727 7 -0.001232047838077727 8 -0.001232047838077727 9 -0.001232047838077727
		 10 -0.001232047838077727 11 -0.001232047838077727 13 6.9289262578342301 17 6.9289262578342301
		 20 0.69289262578342403 22 0.69289262578342403;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE256";
	rename -uid "1BF8F0BC-4A4A-49EB-A55F-5D818AB28B42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE257";
	rename -uid "C547FFF0-43AD-AFB0-74DA-DC9D1C4198D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE258";
	rename -uid "6B8C2175-4ED7-A220-7A22-E4AF8C6D9ECD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE259";
	rename -uid "B768839F-4908-F193-4A75-E3A30A0505E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE260";
	rename -uid "3F6E4EEF-4524-E224-99A6-538CD5FB49B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE261";
	rename -uid "D6D2830B-4B3F-DD80-94C1-04B764978510";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE262";
	rename -uid "71396388-486F-5CB1-C4D8-669FCF64531C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE263";
	rename -uid "D3A8BD09-45E3-F4E9-B06B-20ADA155D889";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE264";
	rename -uid "037CCB55-44E4-5BBF-9F0C-CBB55B95BC90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE266";
	rename -uid "4B2EBAA9-4864-0328-E1A4-9BAAFC391F27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE267";
	rename -uid "AE72ACC4-4B28-55F4-AE1A-2BBC38AD469A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE268";
	rename -uid "1FB05BCC-438C-DF67-E7F7-2992B245AE2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE269";
	rename -uid "75BE8DFF-42C5-F6F0-445E-48B0B934C587";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000011 13 1.0000000000000011
		 17 1.0000000000000011 19 1.0000000000000011 20 1.0000000000000011 21 1.0000000000000011;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE270";
	rename -uid "EF889C0F-4246-100D-B637-4ABBF5140FA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE271";
	rename -uid "ED912A07-4269-DC15-DF24-41B9CC4415F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE272";
	rename -uid "A3585FD3-4237-1DB7-9861-97A74ED3DBA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE273";
	rename -uid "90027B63-4F34-0790-ED2E-24B892879419";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE274";
	rename -uid "940D21AE-4887-51FE-7F3E-3FB5732D9E43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE276";
	rename -uid "4462A5FC-4617-8E82-53ED-AD9CFEF3B1BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE277";
	rename -uid "A8793729-4C96-4A71-A871-5289EAE15B9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE278";
	rename -uid "F683F599-40ED-9A33-CB2B-CABCA84F44A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE279";
	rename -uid "3EEA4FC1-44D0-B3C1-2182-EA97C7567CA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE280";
	rename -uid "C54C88AE-4507-850A-BD2B-E5A7BB69CE24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE281";
	rename -uid "89F6C7D6-461C-F599-EA80-108469589E9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE282";
	rename -uid "C43289B5-4AF2-E690-28EA-459097F839D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.00058195610874512706 1 0.00058195610874512706
		 2 0.00058195610874512706 3 0.00058195610874512706 4 0.00058195610874512706 5 0.00058195610874512706
		 6 0.00058195610874512706 7 0.00058195610874512706 8 0.00058195610874512706 9 0.00058195610874512706
		 10 0.00058195610874512706 11 0.00058195610874512706 13 0 17 0 20 -19.178890192785296
		 22 -19.178890192785296;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE283";
	rename -uid "A6FAE983-429A-BEB3-0372-DDBA077FF44A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -14.543101881846322 1 -14.543101881846322
		 2 -14.543101881846322 3 -14.543101881846322 4 -14.543101881846322 5 -14.543101881846322
		 6 -14.543101881846322 7 -14.543101881846322 8 -14.543101881846322 9 -14.543101881846322
		 10 -14.543101881846322 11 -14.543101881846322 13 -0.68948270784543553 17 -0.68948270784543542
		 20 -18.265874207907199 22 -18.265874207907199;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE284";
	rename -uid "144A298B-47CB-0816-0123-249509375472";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -3.0840132208518769 1 -3.0840132208518769
		 2 -3.0840132208518769 3 -3.0840132208518769 4 -3.0840132208518769 5 -3.0840132208518769
		 6 -3.0840132208518769 7 -3.0840132208518769 8 -3.0840132208518769 9 -3.0840132208518769
		 10 -3.0840132208518769 11 -3.0840132208518769 13 -7.6765608866401065 17 -7.6765608866401065
		 20 0.40482570164478981 22 0.40482570164478981;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE286";
	rename -uid "AAF2FDFD-4F3F-211F-7F82-F69D0D1E07A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE287";
	rename -uid "EC8D4EF3-4492-5069-8563-77A010FFF509";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE288";
	rename -uid "C0CD8931-45E8-2204-7DCE-95BF4B65306E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE289";
	rename -uid "BF6D6263-42C8-3152-7296-9B81E9519840";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE290";
	rename -uid "9ED0C174-472A-8667-24EB-AEA0A07772A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE291";
	rename -uid "5A9B9B1A-4EE5-3327-0D24-769E53567839";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000004 13 1.0000000000000004
		 17 1.0000000000000004 20 1.0000000000000004 22 1.0000000000000004;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE292";
	rename -uid "5D76D0BF-4787-EF64-0849-8A9DAFA11A5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE293";
	rename -uid "11B47A43-4568-72C9-DE4F-49802D851115";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE294";
	rename -uid "B26CCF9D-42C7-242C-2C90-5F9647A471B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE296";
	rename -uid "26F6E077-4614-6EA4-D0DA-D5B7A3AC031C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE297";
	rename -uid "996F7258-4872-B124-DBB9-AB82DAA7784B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE298";
	rename -uid "67F56B97-47B4-7A2C-C531-D1840ADD6D6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE299";
	rename -uid "E11F6053-48B5-7E81-85EC-22BB3F9C2A84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE300";
	rename -uid "B7DA67D6-4D61-415E-550D-B8AC18CE45C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE301";
	rename -uid "33166B4F-4E92-DD2F-07CE-22ADB731CAEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE302";
	rename -uid "B79A0893-4CA4-9094-262D-B0BF62724250";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE303";
	rename -uid "E339D0E3-4B71-1EAE-B8F7-AAAE50B6619F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE304";
	rename -uid "EBBF3DDC-4727-7110-3AF5-E5B953C59233";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE305";
	rename -uid "50067DBF-481A-DB88-9505-F2A5AE2429EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE307";
	rename -uid "E94915CB-42DF-EBEC-B9FA-2F8BC6BA36BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE308";
	rename -uid "63D26A49-4BE9-7BF5-3E1A-12A4E10904D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE309";
	rename -uid "2251917B-44A6-DDA0-1F1E-57A96D57EF94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE310";
	rename -uid "E53ECADC-43B6-CEDB-A2B3-758E2512B029";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE311";
	rename -uid "39BE3962-4AD1-FF3D-F2CD-F5AD071CF176";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE312";
	rename -uid "EC1BA636-4D11-C3A5-38FB-3D8A68660B5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE313";
	rename -uid "B91B86D3-4B30-B95A-6D75-239B0EC16D25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE314";
	rename -uid "A4B1A882-47A0-2B58-F82A-969E6B1D3619";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE315";
	rename -uid "0954AEAC-404C-4A49-FC28-80B47E783794";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE317";
	rename -uid "32B598E0-4DFA-925E-42FA-9B8EE82C7934";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE318";
	rename -uid "A6641025-46AC-2723-0F7B-C9BA70800212";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE319";
	rename -uid "D38606AA-4C43-7171-7F61-87881F5F0C05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE320";
	rename -uid "12DE7005-4EAB-FBE4-38D8-FC957E14E36E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000011 13 1.0000000000000011
		 17 1.0000000000000011 19 1.0000000000000011 20 1.0000000000000011 21 1.0000000000000011;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE321";
	rename -uid "FC108E02-4AC0-27D8-A9F8-15B5694B59C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 19 1.0000000000000002 20 1.0000000000000002 21 1.0000000000000002;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE322";
	rename -uid "9DD95916-421C-3F50-A128-4D950B049E68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE323";
	rename -uid "28CC7C5D-45F2-6D10-A9BA-E58987A8E2E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE324";
	rename -uid "41F686D4-4340-3BE2-C888-A19372EAA4E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE325";
	rename -uid "3E8D7A75-4A36-5923-FBF4-47858077CD1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE327";
	rename -uid "D079E820-4D43-058D-76CC-85B3373D522A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE328";
	rename -uid "ED9900B2-4464-F13A-3894-32AEE548B4B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE329";
	rename -uid "BC5CAD46-4561-C9A0-D81C-A4BC4EB7C3AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE330";
	rename -uid "D99B48DE-4B78-B70C-2637-048BE807181A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE331";
	rename -uid "6B0D45DC-4DB5-0BA6-9986-FE858D322843";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE332";
	rename -uid "008B844E-4DD4-8347-E90F-8C8FA6E6BEF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE333";
	rename -uid "32D449FB-4DA8-DBE2-6D2A-D98C885D263D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE334";
	rename -uid "1B7D3AD0-401B-45D3-29DB-F7855B267A2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE335";
	rename -uid "A9B8FFC6-472C-B6E7-99C2-2C94FC69E181";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE337";
	rename -uid "B8FECDD0-4082-7C76-874C-108BDDB9C772";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
createNode animCurveTL -n "CURVE338";
	rename -uid "7767A04C-44CB-35B0-2A5E-2FB8D6BA2A0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
createNode animCurveTL -n "CURVE339";
	rename -uid "FC6236A5-4C91-8268-A229-209C69CADF3D";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 26.992 16 53.984;
createNode animCurveTA -n "CURVE340";
	rename -uid "2F10CA9B-4DF8-128F-4C0B-4B90E668D5B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
createNode animCurveTA -n "CURVE341";
	rename -uid "06F13342-4796-B641-027D-5788CD750FC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
createNode animCurveTA -n "CURVE342";
	rename -uid "9331A245-4F55-0FEA-F765-B4B469CC000D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 16 0;
createNode animCurveTL -n "CURVE344";
	rename -uid "B320C2B8-4424-99F4-7F89-2CBD77D5EAB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE345";
	rename -uid "455DDAC9-480B-4D88-BF3A-5A88B0865F54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE346";
	rename -uid "FE1A0D60-480F-80DA-3938-0BB747D00D6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE347";
	rename -uid "C04BECE1-48F4-C7C2-0958-FB9E49992267";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE348";
	rename -uid "EC275160-4363-6EE4-A7D0-ED97A3AA5008";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE349";
	rename -uid "B4D8B651-4987-7A5D-866E-0EBA549799CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE350";
	rename -uid "05EFD89D-4C34-4976-7104-A5ADEBC33A59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE351";
	rename -uid "F360223C-45A5-85AA-71A4-BDAC86D8AD15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE353";
	rename -uid "8309DC3B-4C1F-AAB9-7572-9984ED0FEC11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE354";
	rename -uid "73273659-45EE-0ACA-6BA1-BEB6622C2DBA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE355";
	rename -uid "C949FECF-4419-3FAA-B368-C58B372DA397";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE356";
	rename -uid "5273F2F0-48D2-FD34-4804-429943ECF038";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE357";
	rename -uid "0E790B9A-430E-BAAE-08C2-5989301C0FB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE358";
	rename -uid "9005321D-4FC1-548D-6B8A-C0968BA8E333";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE359";
	rename -uid "B9E684F7-4F0C-C386-0D83-E69DACEDD29F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0.05 13 0.05 15 0.05 17 0.05 24 0.05
		 27 0.05 29 0.05;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE360";
	rename -uid "6F4D8927-4598-0923-D873-52BF2DDEB297";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE361";
	rename -uid "3E8E7110-49BB-CB48-6722-E39C32557D8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE363";
	rename -uid "3BCF55F6-4AD7-1EED-B914-B18D6423DE20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE364";
	rename -uid "F826FB8C-48B3-DED5-1548-06AFA77D2DA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE365";
	rename -uid "959FF9C3-4C80-4A85-CAC8-4389B0074A3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE366";
	rename -uid "AF02E5B3-4BE5-9973-7ADB-E9A7F937DAD2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE367";
	rename -uid "D76398B8-49FA-42A1-8640-FE89F5798E7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE368";
	rename -uid "50072980-4EA1-4C55-3291-1489B1A22CE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE370";
	rename -uid "403F245D-446B-437A-14B9-A1AAE55B1CC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE371";
	rename -uid "E0E1C916-46CC-9B1E-2169-E1B5D6191903";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE372";
	rename -uid "767240BA-4183-402E-0131-5CB6CDD24406";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE373";
	rename -uid "D0477279-41C4-250F-38BF-378327A172BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE374";
	rename -uid "A6771D21-45D4-92C9-D55B-A48637EDDA17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE375";
	rename -uid "BCD0FE51-4D09-3202-9EBB-CFAB5E7DA31A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE376";
	rename -uid "EBBA7FE9-44F6-033F-4027-DE9A5F1FC300";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE377";
	rename -uid "0481DFE2-44ED-CD06-8993-6D939B486659";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE378";
	rename -uid "4AB8A309-4C60-E20F-FEB6-5E8EE5AB663C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE380";
	rename -uid "9A8131F8-4C14-B868-6813-9D80A81A20BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTA -n "CURVE381";
	rename -uid "1228DA32-4F88-937D-4478-C1BD063C41BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -93.347951784689883 1 -93.347951784689883
		 2 -93.347951784689883 3 -93.347951784689883 4 -93.347951784689883 5 -91.578957440026414
		 6 -88.293682228508544 7 -92.281816800182881 8 -93.347951784689883 9 -93.347951784689883
		 10 -93.347951784689883 11 -93.347951784689883 12 -93.347951784689883 13 -41.889790733021066
		 17 -11.526088283179392 20 -36.11532612347272 22 0 25 -15.803621684051521 27 -3.7288543330309598
		 29 -5.801823826437805 31 -2.9698524577096856;
createNode animCurveTA -n "CURVE382";
	rename -uid "E2AB6BD4-4EF1-3413-4C06-808C0C8140BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTA -n "CURVE384";
	rename -uid "ACBCFDEE-4017-69F6-E631-F0B5EB2F2A1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -120.87871591760481 1 -119.72470393933172
		 2 -119.97937488789488 3 -144.8148893734747 4 -149.89048796582915 5 -148.38644905864871
		 6 -144.55158653519362 7 -127.0463729536698 8 -120.87871591760481 9 -119.72470393933172
		 10 -119.97937488789488 11 -144.8148893734747 12 -149.89048796582915 13 -68.924758655664107
		 14 -60.443605995119761 15 -63.07599155882864 16 -68.130693308548643 17 -70.612877185708001
		 18 -83.143464414540915 19 -108.65587511600067 20 -131.89854046727891 21 -160.7168098107073
		 22 -167.29364233121527 23 -165.86380500264369 24 -162.687472655558 25 -160.36953703478383
		 26 -162.02685986377722 27 -166.44964976245458 28 -169.59514245792374 29 -167.71764288879123
		 30 -166.60610225962293 31 -167.67424601028478 32 -168.43925733139076;
createNode animCurveTL -n "CURVE385";
	rename -uid "A4AFC1DF-418B-D587-0B26-4CA04F6863F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 6.4333741119218182 1 6.2231565863963398
		 2 6.0228948369020303 3 7.0829214349037715 4 7.4459755626821664 5 7.5750962326515259
		 6 7.6440681726743209 7 6.7324807939406064 8 6.4333741119218182 9 6.2231565863963398
		 10 6.0228948369020303 11 7.0829214349037697 12 7.4459755626821655 13 2.7370180948203604
		 14 1.7716188901337571 15 1.3765003686659796 16 1.3891891905927825 17 1.3112665765166245
		 18 0.83864782569494345 19 0.47205652105327012 20 0.59470186446091589 21 0.61947484366214134
		 22 0.97277939210178843 23 1.0130989855457972 24 1.1377210129792417 25 1.2309797534320559
		 26 1.0998835855046636 27 1.0086995352670645 28 1.021466425784153 29 1.0354363751057232
		 30 1.0166520932709737 31 1.0001160212682798 32 1.0001160212682798;
createNode animCurveTL -n "CURVE386";
	rename -uid "73787626-4358-9772-3E43-3D9C1484DA70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -4.5388702285981868 1 -4.682897608107325
		 2 -5.004027806808125 3 -4.296817781959545 4 -4.1867114648012809 5 -4.4879055888475108
		 6 -4.8992019238329991 7 -4.5842292805647755 8 -4.5388702285981886 9 -4.6828976081073286
		 10 -5.0040278068081268 11 -4.296817781959545 12 -4.1867114648012826 13 -1.3452925814882235
		 14 2.1952575052771834 15 3.9605066833476918 16 2.8275385824649604 17 0.25441624657931072
		 18 -3.8467355505193481 19 -8.2743507995837557 20 -10.996857009586845 21 -17.100799970790604
		 22 -18.686427068515883 23 -18.426415083349152 24 -17.949729353763356 25 -17.698797271803041
		 26 -18.070164738328103 27 -18.449732282049137 28 -18.384167550442044 29 -18.318741964216706
		 30 -18.40815856016204 31 -18.497820191173247 32 -18.497820191173247;
createNode animCurveTL -n "CURVE387";
	rename -uid "9F8B0861-4AB5-729B-7A87-24B143723A33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 4.8497654563154402 1 4.9493158554271783
		 2 5.192102908547116 3 5.8804368742872093 4 6.0683369861710137 5 5.9966820904247591
		 6 5.7941566479989604 7 5.0691645923337738 8 4.8497654563154384 9 4.9493158554271695
		 10 5.1921029085471275 11 5.88043687428722 12 6.0683369861710119 13 7.6728148641368037
		 14 6.3613461858770464 15 1.2780856591100473 16 -3.3827234028943423 17 -6.4586156929312608
		 18 -6.2252283663912777 19 -5.2035496139727826 20 -5.2573342362639863 21 -7.4318745519922871
		 22 -7.2592253689523787 23 -7.1813729719834356 24 -7.318595244632661 25 -7.383869251447635
		 26 -7.285524498065385 27 -7.1742337091736061 28 -7.1942085914814626 29 -7.2138314513755191
		 30 -7.1869354476860039 31 -7.1593869062346727 32 -7.1593869062346727;
createNode animCurveTU -n "CURVE388";
	rename -uid "72D7F69B-4D95-4073-38BA-9EB17158682D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "CURVE389";
	rename -uid "7597CA2F-4A54-D7BB-2AE3-9D883DF5BF84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 100 8 100 12 100 13 100 17 100 20 100
		 22 100;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "CURVE390";
	rename -uid "9BAEECCC-4605-D498-8D06-5699F3D8A22F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "CURVE391";
	rename -uid "0D94056D-4D68-8621-2BDC-4E8267C94D50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "CURVE392";
	rename -uid "C54F90CD-4690-432E-9A09-C7978420A20C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 8 1 12 1 13 1 17 1 20 1 22 1;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "CURVE393";
	rename -uid "73E41810-4A5D-B913-AAD4-D2B8BDBE860D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -78.069774398117076 1 -78.225710322286204
		 2 -79.455776102187514 3 -97.521495038017932 4 -100.82539340278645 5 -98.790685350002406
		 6 -95.414333234722505 7 -83.069400134607264 8 -78.069774398117076 9 -78.225710322286204
		 10 -79.455776102187514 11 -97.521495038017932 12 -100.82539340278645 13 -72.843415540808806
		 14 -67.217058276981163 15 -61.794180700578984 16 -56.984529876934744 17 -53.627951640339219
		 18 -48.890701625212969 19 -39.418862649238413 20 -33.744878919689349 21 -12.448982532877663
		 22 2.3671390443521285 23 -2.8944643220340533 24 -13.233158633980398 25 -20.05237965278539
		 26 -14.933524752521244 27 -0.46235588100942521 28 7.0010499065864851 29 1.7821247850425217
		 30 -0.93677457471401604 31 2.5652690095034028 32 4.6568914950927169;
createNode animCurveTU -n "CURVE394";
	rename -uid "A7943145-4C37-D2E9-48B8-0F8D73D15E61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "CURVE395";
	rename -uid "FC8798BB-4A28-6C11-10F3-8BBE11F302F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 71.078454192159938 1 71.939428023578088
		 2 72.910772744157768 3 66.142769838534676 4 63.965894718412841 5 64.476868581537872
		 6 66.013636218446507 7 70.445033223279282 8 71.078454192159938 9 71.939428023578088
		 10 72.910772744157768 11 66.142769838534676 12 63.965894718412841 13 32.857015578215808
		 14 9.1435032371309806 15 -12.879361125347822 16 -23.990171320987177 17 -29.168123418113595
		 18 -20.220605138682547 19 -7.2607251424174457 20 -9.2029146183376866 21 -21.602885440046645
		 22 -18.825165814623631 23 -19.913692105499035 24 -21.493561428349754 25 -21.765014674947562
		 26 -19.978522393365349 27 -20.252923493398146 28 -22.051980145485814 29 -21.735144458759883
		 30 -20.470845965871096 31 -20.408849716928366 32 -20.773729137912142;
createNode animCurveTU -n "CURVE396";
	rename -uid "8428D3B0-4D2B-BE2C-B049-FFADA91D0103";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 8 1 12 1 13 1 17 1 20 1 22 1;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 9 18 18 18 9;
	setAttr -s 7 ".kot[1:6]"  1 5 18 18 18 5;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 0 1 1 1 0;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "CURVE398";
	rename -uid "EEF18D7F-496A-8CF2-6974-CEBE05FC292B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE399";
	rename -uid "75EB6974-4EF6-7DF2-551C-F19C2D4CF868";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE400";
	rename -uid "EB586BA3-4279-0781-1DD6-878D53F80C10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE401";
	rename -uid "42C7A4D4-4531-AAE4-EB1D-F8B8C9426A6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE402";
	rename -uid "40B013C8-498E-D0E9-BC8B-7FB6B8E56791";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE403";
	rename -uid "263D1E06-4A1D-4C53-4878-87969F213447";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE404";
	rename -uid "56801604-43B0-5F9D-8313-72BEF09775D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 -0.15382748561535628 22 -0.15382748561535628;
createNode animCurveTA -n "CURVE405";
	rename -uid "1862C78E-4111-A619-9928-3F9AFC797CC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 -6.4878833929407156 17 -6.4878833929407156 20 7.892428918036293 22 7.892428918036293;
createNode animCurveTA -n "CURVE406";
	rename -uid "D408CF5B-4262-A178-B589-139BE97DF9D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -26.84838271008033 1 -26.84838271008033
		 2 -26.84838271008033 3 -26.84838271008033 4 -26.84838271008033 5 -26.84838271008033
		 6 -26.84838271008033 7 -26.84838271008033 8 -26.84838271008033 9 -26.84838271008033
		 10 -26.84838271008033 11 -26.84838271008033 13 11.783532863754623 17 11.783532863754623
		 20 13.833378244797293 22 13.833378244797293;
createNode animCurveTU -n "CURVE407";
	rename -uid "C92B56BB-418B-E120-63EB-41B296ABAE18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE409";
	rename -uid "D9C4E935-4E93-548B-03CA-419E22A9D5D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE410";
	rename -uid "C504935C-4CEA-0A7C-AC2A-7CB6B2B53471";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE411";
	rename -uid "5E266721-452F-4509-B75A-62B9CFA02ED4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE412";
	rename -uid "7E0C40E5-454E-D69D-A219-39B9D54CF77C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE413";
	rename -uid "4FF72A85-407A-9BC9-57A9-BAAED59C777A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE414";
	rename -uid "036EF4EA-4C8A-0249-AC70-7F8878B7254B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE415";
	rename -uid "C2BF5DCA-48BA-3368-FC91-D9AAAFB8CB13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE416";
	rename -uid "4584B915-4461-D74F-078E-398D552CDEFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE417";
	rename -uid "F9EF9498-47AE-7656-235C-7EA651B41E95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE419";
	rename -uid "5396C865-4790-346C-31B4-2C91BBE37192";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE420";
	rename -uid "A8CE0520-4E86-F1AF-C219-BF889621D50D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE421";
	rename -uid "865D1C68-4ACA-E9B8-14DF-ADA5C0FAD6CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE422";
	rename -uid "D97DD2FF-4CFA-D163-65EC-A0868735B7B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE423";
	rename -uid "03559A26-488B-E650-0705-A7A1A7CAA36E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE424";
	rename -uid "0DBCDA54-4836-49CE-8FB6-74AA16A47E2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE425";
	rename -uid "0AEC8697-49EB-FB80-C630-7BB81F438CA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0.05 13 0.05 15 0.05 17 0.05 24 0.05
		 27 0.05 29 0.05;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE426";
	rename -uid "0BAA0E72-4DEC-76E6-5744-63939EAB7DFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE427";
	rename -uid "F830C5E2-43D6-5478-9A22-3BBC714ED9FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE429";
	rename -uid "5C96CA6D-473E-48EA-EF00-8991F9BC7ECC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE430";
	rename -uid "16D5F18E-46C8-10D0-4C78-B494D63B9F29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE431";
	rename -uid "C603567E-4F0A-DC6A-1326-66AB499076EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE432";
	rename -uid "8279DA82-4D4B-8F43-0747-FD9F9668CA8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE433";
	rename -uid "D4929C94-4F67-ECB5-A6DC-5FBF6524C7A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE434";
	rename -uid "D4FF73C5-43D9-1877-E4AC-19B6200E8621";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE435";
	rename -uid "C0CEDB18-4440-F99C-37C7-10808F437C5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE436";
	rename -uid "07F4535F-4D37-BB9B-5375-1FB70D517E25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE437";
	rename -uid "23EEE695-43FB-32EC-A563-AE9093307659";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE439";
	rename -uid "164C3E40-4E7C-0CF1-6E9B-118F11D8EF08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE440";
	rename -uid "404B6DFD-411B-813B-518F-7B86CDBA1C2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE441";
	rename -uid "4F7BC7F5-4834-CF80-9529-B8B8B7BE22BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE442";
	rename -uid "8AD9AD3F-497E-762E-300F-18B7B9B630A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0.99999999999999978 13 0.99999999999999978
		 17 0.99999999999999978 19 0.99999999999999978 20 0.99999999999999978 21 0.99999999999999978;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE443";
	rename -uid "740FF64A-4019-7A72-6273-AA950E4BB005";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE444";
	rename -uid "F4865D30-44B3-3F31-C909-9DB2CDD3AA8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0.99999999999999978 13 0.99999999999999978
		 17 0.99999999999999978 19 0.99999999999999978 20 0.99999999999999978 21 0.99999999999999978;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE445";
	rename -uid "EDAAFB1D-4D36-2606-B0D0-BDB016D42CBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE446";
	rename -uid "70AD16CA-4917-0BC5-171A-16A9069637F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE447";
	rename -uid "B679567C-465C-D867-F121-E7AC2B464BC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE449";
	rename -uid "0AFAEDAB-4A4D-6B9B-590A-1C8FFE3FF390";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE450";
	rename -uid "F0339A60-41E2-5885-CB90-E488CC5AFC58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0.30934934514813478 15 0.27841441063332129
		 17 -0.51480632577259977 24 -0.51480632577259977 27 -0.16024699873262693 29 -0.12085151795040772;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE451";
	rename -uid "5AE0634E-4E1D-388E-CE48-1782C2BBC910";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE452";
	rename -uid "EDB4890E-4EA1-450E-BF74-23B06F913E8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE453";
	rename -uid "CBF4050E-4AA9-1CF0-0BF5-6F83932315EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE454";
	rename -uid "44F824BB-4BB5-0259-A1DD-B2B66091A2AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE455";
	rename -uid "C3AEF626-418D-47F9-55C3-018C58FE9DFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE456";
	rename -uid "FAEB4A43-4515-A131-2639-83946FA730A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE457";
	rename -uid "ABE87E72-4CB6-10DF-45D6-5F9A023B3EDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE458";
	rename -uid "99C47276-4F4F-6572-2A62-2CA4C3FB0916";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE459";
	rename -uid "F576AA71-4C0D-D9B5-CA51-96B2EE55B2F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE461";
	rename -uid "DA814BEB-4C66-F7A4-9BAB-20A6FC11D929";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTL -n "CURVE462";
	rename -uid "95CD53B9-410D-9315-C197-139C624C2C46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTL -n "CURVE463";
	rename -uid "7D17AB78-4841-28C6-A18D-99BAD1499B76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTU -n "CURVE464";
	rename -uid "0C98436A-4E3F-4D80-C6A3-4DB16E11E8C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 17 1 20 1 22 1;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTU -n "CURVE465";
	rename -uid "8F4AB1E6-4FF3-AB24-7936-CDB4CE547211";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 17 1 20 1 22 1;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTU -n "CURVE466";
	rename -uid "B0C7C1E9-4733-DB70-13C8-EFBBDDC261B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 17 1 20 1 22 1;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTA -n "CURVE467";
	rename -uid "01724824-4023-E3C4-AF0E-6CADD24CE515";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTA -n "CURVE468";
	rename -uid "5D3E7D3D-428A-3DB6-DA38-E38E533E32EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTA -n "CURVE469";
	rename -uid "B053E5E7-4696-D9D8-F76B-2A96E8940ECA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTL -n "CURVE471";
	rename -uid "8DA05EBD-4B06-2A06-B46C-22ACC4528149";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 -0.0036159599883101492;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE472";
	rename -uid "2C7B4B60-42B7-4798-F4A4-26BBE3B191C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 -0.064652245060965979;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE473";
	rename -uid "10BE10BA-4CFD-91FD-9CAA-26ADCF4A145D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 -0.48296866201920313;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE475";
	rename -uid "CFE5C956-41B3-BAAE-BA7C-2F95EFFE8B75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE476";
	rename -uid "94C2242C-4B66-F267-81BF-ABBD4FCA3673";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE477";
	rename -uid "778D1F21-4818-B5AB-0C19-01AB056BDCEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE478";
	rename -uid "3A5158E7-4823-CFFF-A697-B7B5D635DF3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE479";
	rename -uid "F415E336-4F33-5093-AC7D-1190F951F133";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE480";
	rename -uid "2BF842F8-4CA6-FE73-404E-AFA0B58689C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE482";
	rename -uid "9D26223B-4F44-15FB-EFF9-D598216E7580";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE483";
	rename -uid "9CE2E7A6-4B34-D548-802E-C6B0B5B675F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE484";
	rename -uid "86210AA6-43D0-CC78-F67A-D5A21B378191";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE485";
	rename -uid "6627A568-4C7C-50A8-62AB-8BB3CF261A37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE486";
	rename -uid "8DF59761-4D8C-D0BE-0B06-0590970F2081";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0.99999999999999989 13 0.99999999999999989
		 17 0.99999999999999989 19 0.99999999999999989 20 0.99999999999999989 21 0.99999999999999989;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE487";
	rename -uid "DC7F5109-4D0A-6145-9376-299C68CF0A4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0.99999999999999989 13 0.99999999999999989
		 17 0.99999999999999989 19 0.99999999999999989 20 0.99999999999999989 21 0.99999999999999989;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE488";
	rename -uid "20BCA5EB-4CF2-6588-FC01-C5864551E66A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE489";
	rename -uid "3355A5CB-468B-8146-3021-78A5E291ABAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE490";
	rename -uid "FBDE5EA8-455C-EA05-B62A-10AD6456DA0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE492";
	rename -uid "71CC22E0-4E1D-D585-5009-C2817C6A6BE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE493";
	rename -uid "C6DBBCF6-4A79-FE5B-1D17-84A454483AE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE494";
	rename -uid "C4B3E275-4A04-F445-4527-90B29FC80FD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE495";
	rename -uid "D61FD9C6-4111-D140-EDBA-CF87DF7623F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE496";
	rename -uid "E240D0C0-48AC-DA0F-7E84-43951D848969";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE497";
	rename -uid "2C4F35F7-43BD-3B48-21F6-D6877D1707DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE498";
	rename -uid "B2057B84-4E7A-0E73-F9AA-188BC5051652";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.406927725182894 1 1.406927725182894
		 2 1.406927725182894 3 1.406927725182894 4 1.406927725182894 5 1.406927725182894 6 1.406927725182894
		 7 1.406927725182894 8 1.406927725182894 9 1.406927725182894 10 1.406927725182894
		 11 1.406927725182894 13 0 17 0 20 -0.24582245603468028 22 -0.31962254814372715 24 -0.18008812574153632
		 27 -0.26081495544941358 30 -0.225143249346755;
createNode animCurveTA -n "CURVE499";
	rename -uid "F4EF1D04-45AE-E0DB-E791-78916C7F421A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.4472692582559255 1 -1.4472692582559255
		 2 -1.4472692582559255 3 -1.4472692582559255 4 -1.4472692582559255 5 -1.4472692582559255
		 6 -1.4472692582559255 7 -1.4472692582559255 8 -1.4472692582559255 9 -1.4472692582559255
		 10 -1.4472692582559255 11 -1.4472692582559255 13 0 17 0 20 0.28563890416351473 22 0.19964869902989252
		 24 0.3310383522848217 27 0.27201807465502698 30 0.30220646945190938;
createNode animCurveTA -n "CURVE500";
	rename -uid "5FBAA22F-4201-80B1-7204-CBACCC6E844F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -55.588924694720085 1 -55.588924694720085
		 2 -55.588924694720085 3 -55.588924694720085 4 -55.588924694720085 5 -55.588924694720085
		 6 -55.588924694720085 7 -55.588924694720085 8 -55.588924694720085 9 -55.588924694720085
		 10 -55.588924694720085 11 -55.588924694720085 13 9.5049667464280034 17 9.5049667464280034
		 20 -3.6033480302543226 22 -20.897397205316448 24 8.5655767225213992 27 -6.6833900230471626
		 30 0.42610643040648644;
createNode animCurveTL -n "CURVE502";
	rename -uid "628DFD1F-4CE0-6772-9098-488E729E3431";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE503";
	rename -uid "E72E6C98-467E-8F63-48FB-8185C5435C5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE504";
	rename -uid "F6A3B8CC-4951-8B5D-B489-C39D29D90391";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE505";
	rename -uid "0D8508B3-4614-0EF5-F768-CD97341D6DCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE506";
	rename -uid "A23521A4-42AD-1DA5-0124-2C97C3A0E8EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE507";
	rename -uid "A7CB7A88-4B2E-298A-4E80-D08ADB63955F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE508";
	rename -uid "3F4F6960-4FDB-B49F-692B-CE8C8594F08A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE509";
	rename -uid "72B6D1A0-4950-5FEA-9851-F18881CA740C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE510";
	rename -uid "90FBFBD3-4E70-CF97-A164-50A68DE3B10F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE512";
	rename -uid "2814F5F3-4948-691C-02D7-F49EF77C0BCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "CURVE513";
	rename -uid "F5FB6694-46E7-8D0E-A085-C29B620A71A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -6.0223020539771941 8 -6.0223020539771941
		 12 -6.0223020539771941 13 -6.0223020539771941 17 -6.0223020539771941 20 -6.0223020539771941
		 22 -6.0223020539771941;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "CURVE514";
	rename -uid "43F0BEA8-410F-4B68-D1E7-C1AF5B04E248";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -3.3397304371047412 8 -3.3397304371047412
		 12 -3.3397304371047412 13 -3.3397304371047412 17 -3.3397304371047412 20 -3.3397304371047412
		 22 -3.3397304371047412;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "CURVE515";
	rename -uid "A77B4573-43A8-CDF3-4272-2C94B5F04B90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.8793150437992097 8 1.8793150437992097
		 12 1.8793150437992097 13 1.8793150437992097 17 1.8793150437992097 20 1.8793150437992097
		 22 1.8793150437992097;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "CURVE516";
	rename -uid "FF5A336F-4772-3877-E04D-E7A4676CD809";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3 8 3 12 3 13 3 17 3 20 3 22 3;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 9 18 18 18 9;
	setAttr -s 7 ".kot[1:6]"  1 5 18 18 18 5;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 0 1 1 1 0;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "CURVE518";
	rename -uid "DBED1B01-4B56-C108-75E6-A098BFEE9396";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE519";
	rename -uid "F13EE14B-4299-ECC2-EE49-DDAA7B7A7465";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE520";
	rename -uid "BDF7E1F0-4DED-C22E-45A3-CE884D2FC481";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE521";
	rename -uid "E3042972-4CF7-D9BA-168B-D4BE4C4BCD7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE522";
	rename -uid "848E2E03-41BB-72B7-EA72-11922CF22432";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE523";
	rename -uid "192876ED-4345-3B38-7B30-72A7D4B8B343";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE524";
	rename -uid "0D94FAAB-4058-D826-F5D3-6F9F811D4CC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.1612403310172905 1 1.1612403310172905
		 2 1.1612403310172905 3 1.1612403310172905 4 1.1612403310172905 5 1.1612403310172905
		 6 1.1612403310172905 7 1.1612403310172905 8 1.1612403310172905 9 1.1612403310172905
		 10 1.1612403310172905 11 1.1612403310172905 13 0 17 0 20 -1.1203766896884668 22 0.049532127586705318
		 24 -1.888398986009187 27 -0.91649920111657501 30 -1.3820791613908057;
createNode animCurveTA -n "CURVE525";
	rename -uid "7A3F360C-4889-B864-609E-FCB120B39566";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.0179844702118932 1 -2.0179844702118932
		 2 -2.0179844702118932 3 -2.0179844702118932 4 -2.0179844702118932 5 -2.0179844702118932
		 6 -2.0179844702118932 7 -2.0179844702118932 8 -2.0179844702118932 9 -2.0179844702118932
		 10 -2.0179844702118932 11 -2.0179844702118932 13 0 17 0 20 -3.7593736996933096 22 -3.9222293472476473
		 24 -3.4386865020243507 27 -3.8141320135039649 30 -3.6713491976272605;
createNode animCurveTA -n "CURVE526";
	rename -uid "6573FDDC-4912-BBA6-E81D-43853F208863";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -55.518995782593379 1 -55.518995782593379
		 2 -55.518995782593379 3 -55.518995782593379 4 -55.518995782593379 5 -55.518995782593379
		 6 -55.518995782593379 7 -55.518995782593379 8 -55.518995782593379 9 -55.518995782593379
		 10 -55.518995782593379 11 -55.518995782593379 13 8.9805868613495079 17 8.9805868613495132
		 20 8.5844219153197745 22 -8.7481494429586633 24 20.773173508679058 27 5.4981332523784205
		 30 12.62138426522815;
createNode animCurveTL -n "CURVE528";
	rename -uid "FBED0EE5-47F4-EAEC-0537-35863145A8EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE529";
	rename -uid "5B07A11B-4D0B-707B-797A-8AA287FC2DA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE530";
	rename -uid "FB2FFE97-49D1-3078-3BC9-B2BF1212007C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE531";
	rename -uid "41DCDBAE-4801-D949-F2C6-749848FA4B25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE532";
	rename -uid "202542B9-4529-AF40-D3FC-EFB510B2CA62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE533";
	rename -uid "1D1AC2EA-48D4-E9D9-F698-A48493389C10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE534";
	rename -uid "05AA8013-4C11-DC68-1DE2-5C8AC007DB13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE535";
	rename -uid "16622BC8-4EE6-1403-C0F4-9BA255515DE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE536";
	rename -uid "7D84AEE2-4568-13A9-0615-159C3E47DFEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE538";
	rename -uid "21513A75-4A4C-6377-60CE-AE9E885E78C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE539";
	rename -uid "CC2200C8-468C-82CD-76E9-E080200B806C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE540";
	rename -uid "7DAB0EE3-466E-C765-EA97-168CBEC91EDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE541";
	rename -uid "84A82382-4E5A-3337-E9D4-8C8564C7FBED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE542";
	rename -uid "04B0583A-4298-C5C8-6CFF-E9B81E7E2910";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE543";
	rename -uid "365BCF5F-42FE-6CAB-CD6E-BDBFE6DA6F54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE545";
	rename -uid "B6F79F62-440E-E966-069B-44BF938CC694";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE546";
	rename -uid "3A0AF6BE-4AC7-6A14-D622-3D9D0F3B6B3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE547";
	rename -uid "50B093B4-4A7E-E923-6F0F-58B2FB3F4D33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE548";
	rename -uid "16F505C5-4A08-F28A-7BE6-6AACAE9B16D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE549";
	rename -uid "17AD5A03-4049-3EBA-F3A8-B3B38E3B18E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE550";
	rename -uid "8680981E-4C1D-C603-B342-7EA17BEA87C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE551";
	rename -uid "0B7E6460-4EB9-DFEB-8A11-D68E18998E4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE552";
	rename -uid "AFB4FE6B-450C-6714-550E-B1AC57A6440E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE553";
	rename -uid "24594028-41D6-1068-2469-499983439000";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE555";
	rename -uid "601632D2-4EF6-C39A-55B9-18903D3AB4D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 -0.29999999999999988 2 -0.6 3 -0.205
		 4 0 5 0.3 6 0.6 7 0.2054463576158938 8 0 9 -0.29999999999999988 10 -0.6 11 -0.205
		 12 0 13 0.2054463576158938 15 0.2054463576158938 17 0.2054463576158938 19 0.2054463576158938
		 20 0.2054463576158938 21 0.2054463576158938;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE556";
	rename -uid "5CDDA957-4A28-8910-0E38-7AAC1D5B387A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0.48860943980220523 1 0.28350272324107689
		 2 0.078396006679948449 3 0.48715798509338226 4 0.48860943980220523 5 0.28350272324107684
		 6 0.078396006679948449 7 0.48777430305769892 8 0.48860943980220523 9 0.28350272324107689
		 10 0.078396006679948449 11 0.48715798509338226 12 0.48860943980220523 13 0.77436763611332982
		 14 1.8631885515479973 15 2.7072330211377169 17 2.101304686804204 19 -3.0897469055325351
		 20 -3.9961884956839224 21 -4.1929515748398236;
	setAttr -s 20 ".kyts[19]" yes;
createNode animCurveTL -n "CURVE557";
	rename -uid "BD532840-4E14-A35E-44F7-9EBC779CFF4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 3.9179642583810264 14 6.5940491534956109 15 6.1455294073125479
		 17 3.142726313782858 19 4.3622801630131534 20 5.4932119844712446 22 5.795609169776391;
createNode animCurveTA -n "CURVE558";
	rename -uid "C58425E8-4ED1-373D-4351-4DBD016CC4C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 8.5957122613173809 1 8.5957122613173809
		 2 8.5957122613173809 3 8.5957122613173809 4 8.5957122613173809 5 8.5957122613173809
		 6 8.5957122613173809 7 8.5957122613173809 8 8.5957122613173809 9 8.5957122613173809
		 10 8.5957122613173809 11 8.5957122613173809 12 8.5957122613173809 13 -9.5135800217053781
		 15 -34.52095040351945 17 -66.205655048424759 19 -103.89884774777057 20 -107.75986250238182
		 21 -107.75986250238182;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE559";
	rename -uid "34419209-4FC8-1124-9E4B-878BF7F13ABA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 -0.13552353565424541 15 -0.35671637609214873 17 3.7117588345339692
		 19 4.5217756128896127 20 1.2633171806191552 21 1.2633171806191552;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE560";
	rename -uid "3174852C-49C0-0199-6975-11937CD79727";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 -0.93749999999999989 2 -1.5000000000000002
		 3 -0.43028571428571372 4 0 5 0.937 6 1.5000000000000002 7 0.4300000000000001 8 0
		 9 -0.93749999999999989 10 -1.5000000000000002 11 -0.43028571428571372 12 0 13 0.43109921753949854
		 15 0.51603591926126346 17 -3.6699546529929408 19 -4.6249704069165034 20 -1.3939955885858775
		 21 -1.3939955885858775;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE562";
	rename -uid "22463683-451E-C5BB-B77A-03BF3AD586FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE563";
	rename -uid "2933C1AB-4A0F-EEE0-BA73-5DB0EB129EBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE564";
	rename -uid "1AFB0EB8-406A-B85C-7E29-B09AD24D7A2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE565";
	rename -uid "5EA28EEB-4B49-B751-A4A1-3989EF291AFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE566";
	rename -uid "B61F245A-4833-965D-F300-D8B724C1B0D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE567";
	rename -uid "1DAAE5DF-4C40-A029-AFD4-0DBB30A07B51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE568";
	rename -uid "D3349004-4871-6047-3B6E-A2ACBC4756C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE569";
	rename -uid "FBE7A1B6-493A-3B31-6E7D-87A86114F39C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE571";
	rename -uid "B9D63EDE-4978-F6EB-6EF4-0A91E748F8E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE572";
	rename -uid "B1FCEF1A-4BD7-1603-A975-BBB1366318FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE573";
	rename -uid "F7E0FF36-4E82-9775-553B-9C9E63E72D02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE574";
	rename -uid "A7FAF838-4229-ACF3-1EE7-FB859335F075";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE575";
	rename -uid "A55A50FF-4D61-ACBA-30A3-18B58CDD1055";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000004 13 1.0000000000000004
		 17 1.0000000000000004 20 1.0000000000000004 22 1.0000000000000004;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE576";
	rename -uid "C89A84BD-4548-9370-DA19-049F1AF33A4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000004 13 1.0000000000000004
		 17 1.0000000000000004 20 1.0000000000000004 22 1.0000000000000004;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE577";
	rename -uid "2C5D8DFF-432F-2EA4-180E-E2B138B07C4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE578";
	rename -uid "3A2DD154-4D4D-96A6-48CB-EFB800746CB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE579";
	rename -uid "F8167D87-46CA-488C-A4AF-A2AD70CD9BE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE581";
	rename -uid "F549ED85-4430-F61F-D499-9396F9B244F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE582";
	rename -uid "340CF4BD-4168-A89A-D50D-2696453C460B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE583";
	rename -uid "FBF1EE00-4D34-E118-F632-239332062DA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE584";
	rename -uid "7EF9FAAF-49F2-F611-D620-68A2169F8334";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE585";
	rename -uid "DDACA7D4-49BC-E9B0-96AB-C0976E980345";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE586";
	rename -uid "EA106171-4011-F8BA-9C08-479B6D0D3CD2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE587";
	rename -uid "F6C438FE-473D-DA61-7C79-4A8A4DA42CF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE588";
	rename -uid "8B6C1A36-4651-C711-2829-32BE10815126";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE589";
	rename -uid "4E6D0525-4B02-2BAA-DB02-7A828B4FA443";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE591";
	rename -uid "5ED69B83-41C6-1F1B-C44E-39B0EDAFBFD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 -6.9557594262278712 15 -6.9557594262278712 17 -6.9557594262278712
		 19 41.123731335040873 20 43.915974866727467 21 26.425821564018012 22 24.482471197050295;
	setAttr -s 20 ".kyts[18:19]" yes no;
createNode animCurveTA -n "CURVE592";
	rename -uid "3255401C-4A14-7C8A-21C4-EB9BDDD32BF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE593";
	rename -uid "EBA6F6A8-4933-ECF2-FA5E-CCA9B2698E4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE594";
	rename -uid "760FD4EC-40DD-02A6-D6A3-CEB9FBB7D517";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE596";
	rename -uid "43003DA6-4220-3A5C-7A60-87970AE0186B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 -6.9557594262278712 15 -6.9557594262278712 17 16.150531012793088
		 19 20.070249409889257 21 18.226827508190748 22 17.381660731438366;
	setAttr -s 19 ".kyts[17:18]" yes no;
createNode animCurveTA -n "CURVE597";
	rename -uid "BCEDFBA2-4AB5-2CD5-BBAF-698B057AB30E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE598";
	rename -uid "C611DCAF-4DCC-E963-0BDF-639A35F774A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE600";
	rename -uid "20D35044-4226-95B6-9792-30B48F2CF55A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE601";
	rename -uid "CCA7AAB3-4DA8-AB3E-7FF5-F3AB2CF159FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE602";
	rename -uid "0C7E1D0E-48AE-B4AF-630A-D1A8094B9E39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE603";
	rename -uid "E6A36FB9-49B3-173B-BD60-CA81D3A58B58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE604";
	rename -uid "1A97B800-41F2-D9B4-0307-89BF10CE67FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1.0000000000000002 13 1.0000000000000002
		 15 1.0000000000000002 17 1.0000000000000002 24 1.0000000000000002 26 1.0000000000000002
		 27 1.0000000000000002;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE605";
	rename -uid "D04D219B-4491-453D-90FB-5580E94F0EA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE606";
	rename -uid "6C830DA3-4FA8-0664-D7F2-20A5A598D298";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE607";
	rename -uid "474AA553-4B16-82DF-38C7-D5838BD9EA99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE608";
	rename -uid "A0F10C02-4F97-4124-7C45-FCAEBF17C5E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE610";
	rename -uid "731FFFCF-49A1-D4F3-3E08-E496805D0D80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTL -n "CURVE611";
	rename -uid "D70CC1A0-4327-5963-E71F-96A40F4C3EF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTL -n "CURVE612";
	rename -uid "DA522FBB-474D-8000-DBBB-D3BE47A208AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTU -n "CURVE613";
	rename -uid "D7A69ED7-4A09-D57A-D872-A0B25600D4EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 17 1 20 1 22 1;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTU -n "CURVE614";
	rename -uid "297DE7FC-4960-8C87-719A-F1B23C9ED928";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 17 1 20 1 22 1;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTU -n "CURVE615";
	rename -uid "C376D439-4068-BBC4-E2AE-A3869556B249";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 17 1 20 1 22 1;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTA -n "CURVE616";
	rename -uid "B1AA6D2B-4EDC-8C5C-E0E2-AE87DD81AB0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTA -n "CURVE617";
	rename -uid "F8012578-44B9-990D-CC81-8E9F31FBD208";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTA -n "CURVE618";
	rename -uid "DCAD8BF7-4E43-0619-EFD5-1F8483C6A6AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTL -n "CURVE620";
	rename -uid "B62248C8-4562-3997-3FE3-49B7B6439745";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE621";
	rename -uid "5FF38E81-4034-770F-BCA3-529D2964AC64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE622";
	rename -uid "EAF85344-4975-D9A4-2E18-E3B5A55C5072";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE623";
	rename -uid "C9641DE3-4DD7-2865-AB83-CB8921B731C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE624";
	rename -uid "CB83732D-42E5-DF0F-53D7-C3B8D2B1C249";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE625";
	rename -uid "4B9BF4B2-477D-DED0-ABB3-50982DD26787";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE626";
	rename -uid "1D6B45BF-46E4-43B9-B86F-859395C86097";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE627";
	rename -uid "6993BF3C-469B-0871-1FA6-A7988654A083";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE628";
	rename -uid "E66A42D1-49B2-708D-04C5-89880776B9BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE630";
	rename -uid "7E7D3B8E-48AE-B330-40F8-98ABE4E23514";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE631";
	rename -uid "AFCDBC47-4EF5-5B37-3E4D-15A2BA7E38FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE632";
	rename -uid "E45CDF7A-4B26-D7EE-2613-CC857D624C46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE633";
	rename -uid "2755028E-4498-931F-6334-EAA739A88B7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE634";
	rename -uid "FE6E316F-4E6D-4BBF-9E5C-DA9CF1DE4C76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE635";
	rename -uid "6C293DD1-4CF3-2A73-1BD9-399C59A6ED06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE637";
	rename -uid "9D4E72C6-4110-2BFF-6C04-20B5617A17C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE638";
	rename -uid "C15C8642-4957-5CDC-85BC-088A3209CDAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE639";
	rename -uid "33E2D0FC-4FDA-0699-CEA4-1AABB98A9E52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE640";
	rename -uid "9DAEA8C9-41AC-6EA4-3E86-42AC11F62726";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE641";
	rename -uid "9DFCD9ED-4386-6C82-DBF5-DC9B2F08B313";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE642";
	rename -uid "82E368D1-4D6F-AA57-F19E-8B815B342572";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE644";
	rename -uid "F03C4C66-44A3-4782-DD54-C48CF6E8D3E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE645";
	rename -uid "8C8DB322-4308-627D-FC71-9F85EA4B7655";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE646";
	rename -uid "A398A4E0-4B82-8C3B-A51B-34A9DEA91F5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE647";
	rename -uid "0659FAEC-46D5-9F78-92CE-7FA5B1CFE6CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE648";
	rename -uid "BF8D57C2-4A74-FFE2-CC12-44A5D2BA3A55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 5 1 5 2 5 3 5 4 5 5 5 6 5 7 5 8 5 9 5
		 10 5 11 5 12 5 13 5 15 5 17 5 19 5 20 5 21 5;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE650";
	rename -uid "BFC08806-4F7D-53DD-EE7C-B8A1F76E1FBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE651";
	rename -uid "643579C3-464F-6C37-01E3-C5A3539394DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE652";
	rename -uid "B6E8DB49-486F-171F-1CF8-65A9A0F69FDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE653";
	rename -uid "941CB822-490C-C3CA-1923-34B723443FF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE654";
	rename -uid "65BC316A-49E5-182A-A77C-E49B53FCBC7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE655";
	rename -uid "70FF1C94-4DB5-3116-4AF5-FFA3B0AFF574";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE656";
	rename -uid "062322B7-4454-0DD6-C26E-279B36192C08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE657";
	rename -uid "F1175164-488B-0861-6897-588BDA10F062";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE658";
	rename -uid "7C1829A8-43FF-8366-F718-8BBFF0AA6B0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE660";
	rename -uid "5B1E806D-40E5-83B1-F4ED-C390D7AC7EE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 13.173180716076885 1 13.128543683841032
		 2 13.013427127022251 3 12.412001850581273 4 12.36736481834542 5 12.412001850581273
		 6 12.527118407400055 7 13.128543683841032 8 13.173180716076885 9 13.128543683841032
		 10 13.013427127022251 11 12.412001850581273 12 12.36736481834542 13 -9.9397856853667381
		 17 -37.789279943549374 20 -37.214434244359765 22 -35.60215495583482;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTA -n "CURVE661";
	rename -uid "CC256F91-4330-E16F-737E-088CC1FAA958";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -17.405859749623449 1 -16.30180401748887
		 2 -12.811031081567208 3 -2.0931474205194238 4 -0.048633618545049551 5 -1.152689350679627
		 6 -4.9899468386475334 7 -14.915865809303886 8 -17.405859749623449 9 -16.30180401748887
		 10 -12.811031081567208 11 -2.0931474205194238 12 -0.048633618545049551 13 -19.359333560298509
		 17 -13.35559128442384 20 13.562469765407918 22 6.0768056775813273;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTU -n "CURVE662";
	rename -uid "242828A2-4473-8F24-0820-0ABEBA376078";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTU -n "CURVE663";
	rename -uid "28545E3B-4D2B-3076-8413-66A57E5D5E40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTA -n "CURVE664";
	rename -uid "7023078B-436C-46DD-5B41-7EB1582C7598";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -51.044941398114872 1 -50.792249898130457
		 2 -50.14057181922329 3 -46.735886345749094 4 -46.483194845764686 5 -46.735886345749094
		 6 -47.387564424656262 7 -50.792249898130457 8 -51.044941398114872 9 -50.792249898130457
		 10 -50.14057181922329 11 -46.735886345749094 12 -46.483194845764686 13 -2.7288513371998637
		 17 21.243609281594505 20 1.3404206651298398 22 6.975997139019408;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTU -n "CURVE665";
	rename -uid "064CB7FD-4B90-391A-0F91-9E980F83A04F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTU -n "CURVE666";
	rename -uid "7F9A2B45-427E-0E7F-30B4-9F8521F34872";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 3 1 3 2 3 3 3 4 3 5 3 6 3 7 3 8 3 9 3
		 10 3 11 3 12 3 13 3 17 3 20 3 22 3;
	setAttr -s 17 ".kyts[15:16]" yes no;
	setAttr -s 17 ".kit[16]"  9;
	setAttr -s 17 ".kot[16]"  5;
createNode animCurveTL -n "CURVE668";
	rename -uid "862FDD6F-4275-99D3-73EB-DCBD4742C268";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE669";
	rename -uid "B3BC4652-4E81-7601-EC1F-1EA979540CCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE670";
	rename -uid "83F7322E-4DC5-D4FF-1E88-84982A94586B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE671";
	rename -uid "A54066DC-408C-F8BB-4C64-CF816CFCC45F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE672";
	rename -uid "67E3CAF2-4670-A815-8A3D-F5B387484AE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE673";
	rename -uid "41A544C8-4888-0EF9-2CE6-A6B188ADE93E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE674";
	rename -uid "D4F94B84-401F-1B84-FEE0-6CB768A98E37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE675";
	rename -uid "75F0D087-4C28-72DA-FD52-F4BDB4D88859";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE676";
	rename -uid "912018BA-4C74-5671-2733-51BA4753FAD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE678";
	rename -uid "F9F07EE8-4B53-CFDA-7D36-7ABD4F3F9A82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE679";
	rename -uid "1D8DC8FF-4714-6041-44AC-96AFBAB7E1B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE680";
	rename -uid "8B6E3871-4B69-A900-36B9-BC86182C5073";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE681";
	rename -uid "E24CD26C-4DA7-213F-7AAF-B781D971D68E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE682";
	rename -uid "6D8B4BDE-4F42-25D7-E0CF-5BAE4214B6DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE683";
	rename -uid "3B9A0BA7-4A36-61BB-EE95-88BF9414C2F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE684";
	rename -uid "882CE2AA-4E1C-2556-4829-06B1D474F8EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1.4223904519776722 1 1.4223904519776722
		 2 1.4223904519776722 3 1.4223904519776722 4 1.4223904519776722 5 1.4223904519776722
		 6 1.4223904519776722 7 1.4223904519776722 8 1.4223904519776722 9 1.4223904519776722
		 10 1.4223904519776722 11 1.4223904519776722 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE685";
	rename -uid "08370129-4638-8A4B-E9C2-5784D661873A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -1.995231681194664 1 -1.995231681194664
		 2 -1.995231681194664 3 -1.995231681194664 4 -1.995231681194664 5 -1.995231681194664
		 6 -1.995231681194664 7 -1.995231681194664 8 -1.995231681194664 9 -1.995231681194664
		 10 -1.995231681194664 11 -1.995231681194664 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE686";
	rename -uid "88CCEFA7-432A-70EF-9B7E-458BCFDEC5D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -69.039953561355489 1 -69.039953561355489
		 2 -69.039953561355489 3 -69.039953561355489 4 -69.039953561355489 5 -69.039953561355489
		 6 -69.039953561355489 7 -69.039953561355489 8 -69.039953561355489 9 -69.039953561355489
		 10 -69.039953561355489 11 -69.039953561355489 13 9.066112244718596 17 9.0661122447185978
		 20 -5.2410386407789691 22 -22.535143703501419 24 6.9277936058920124 27 -8.3210742637510098
		 30 -1.2116031755687671;
createNode animCurveTL -n "CURVE688";
	rename -uid "F920B15E-4AA1-3E3B-86D0-9B865571925A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE689";
	rename -uid "CF746945-4242-E185-9310-06B4CA1C5133";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE690";
	rename -uid "2D0CDAC1-4F4A-5367-ACDA-5B84F4FAAEEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE691";
	rename -uid "E4B825E6-4631-4309-D3A0-319AD77F7CD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE692";
	rename -uid "33BAFE2F-4337-EF84-0149-2C9AB021BB45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE693";
	rename -uid "7C9F0DC8-41E0-1BC0-7862-75A9F908AC7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE694";
	rename -uid "CF2B5093-4625-68FE-F3CD-05AA5F068A9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.99487285630009159 1 0.99487285630009159
		 2 0.99487285630009159 3 0.99487285630009159 4 0.99487285630009159 5 0.99487285630009159
		 6 0.99487285630009159 7 0.99487285630009159 8 0.99487285630009159 9 0.99487285630009159
		 10 0.99487285630009159 11 0.99487285630009159 13 0 17 0 20 -0.42191794421547496 22 -0.42191794421547496;
createNode animCurveTA -n "CURVE695";
	rename -uid "5CC07F9D-40BA-5CFA-134B-14B7C799C9DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1.0640949357507694 1 1.0640949357507694
		 2 1.0640949357507694 3 1.0640949357507694 4 1.0640949357507694 5 1.0640949357507694
		 6 1.0640949357507694 7 1.0640949357507694 8 1.0640949357507694 9 1.0640949357507694
		 10 1.0640949357507694 11 1.0640949357507694 13 -8.7428966906826702 17 -8.7428966906826702
		 20 -2.4378953038398179 22 -2.4378953038398179;
createNode animCurveTA -n "CURVE696";
	rename -uid "0E433959-4F3A-3F4E-6DA9-879D999ABF7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -10.100944079046108 1 -10.100944079046108
		 2 -10.100944079046108 3 -10.100944079046108 4 -10.100944079046108 5 -10.100944079046108
		 6 -10.100944079046108 7 -10.100944079046108 8 -10.100944079046108 9 -10.100944079046108
		 10 -10.100944079046108 11 -10.100944079046108 13 4.3268974939026705 17 4.3268974939026714
		 20 10.254488816892611 22 10.254488816892611;
createNode animCurveTL -n "CURVE698";
	rename -uid "A9AD7947-4B07-70B9-8992-B6B0D5E108A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE699";
	rename -uid "C7B4FB04-4EA2-0975-221F-CDB2569D0033";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE700";
	rename -uid "C271AFBB-40C0-440B-097E-EBB3E8D12652";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.83119698194318303 1 0.87449888424177269
		 2 -0.16040993364755524 3 0.53369502677917491 4 0.47153154291105992 5 0.83119698194318303
		 6 0.83119698194318303 7 0.83119698194318303 8 0.83119698194318303 9 0.87449888424177269
		 10 -0.16040993364755524 11 0.53369502677917491 12 0.47153154291105992 13 0.83119698194318303
		 15 0.83119698194318303 17 0.83119698194318303 19 0.83119698194318303 20 0.83119698194318303
		 21 0.83119698194318303;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE701";
	rename -uid "92A93380-4406-69DB-092B-9EAACFFFC3C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.0000000000000002 1 1.0000000000000002
		 2 1.0000000000000002 3 1.0000000000000002 4 1.0000000000000002 5 1.0000000000000002
		 6 1.0000000000000002 7 1.0000000000000002 8 1.0000000000000002 9 1.0000000000000002
		 10 1.0000000000000002 11 1.0000000000000002 12 1.0000000000000002 13 1.0000000000000002
		 15 1.0000000000000002 17 1.0000000000000002 19 1.0000000000000002 20 1.0000000000000002
		 21 1.0000000000000002;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE702";
	rename -uid "24EA62D3-4505-B777-6B0A-0BB2C65DC01D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.99999999999999933 1 0.99999999999999933
		 2 0.99999999999999933 3 0.99999999999999933 4 0.99999999999999933 5 0.99999999999999933
		 6 0.99999999999999933 7 0.99999999999999933 8 0.99999999999999933 9 0.99999999999999933
		 10 0.99999999999999933 11 0.99999999999999933 12 0.99999999999999933 13 0.99999999999999933
		 15 0.99999999999999933 17 0.99999999999999933 19 0.99999999999999933 20 0.99999999999999933
		 21 0.99999999999999933;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE703";
	rename -uid "1B788FC7-4944-E08B-F83A-9D8B57A2456C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 15 1 17 1 19 1 20 1 21 1;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE704";
	rename -uid "CA032030-4075-12BC-0FA2-B2AF091A5FFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE705";
	rename -uid "E5B2D029-4CF8-3778-929E-DC9B0FA81296";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE706";
	rename -uid "996203FE-4BA9-46D4-E71C-FD911763DE57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE708";
	rename -uid "3834411A-4BBD-FF92-384F-E48E7D678C18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 7.1054273576010019e-015 1 -1.4210854715202004e-014
		 2 -7.1054273576010019e-015 3 -7.1054273576010019e-015 4 7.1054273576010019e-015 5 7.1054273576010019e-015
		 6 1.4210854715202004e-014 7 0 8 1.4210854715202004e-014 9 7.1054273576010019e-015
		 10 -7.1054273576010019e-015 11 0 12 7.1054273576010019e-015 13 0 14 1.4210854715202004e-014
		 15 1.4210854715202004e-014 16 7.1054273576010019e-015 17 0 21 0 22 7.1054273576010019e-015
		 23 1.4210854715202004e-014 24 1.4210854715202004e-014 25 7.1054273576010019e-015
		 26 1.4210854715202004e-014 27 0 28 7.1054273576010019e-015 29 1.4210854715202004e-014
		 30 0;
createNode animCurveTL -n "CURVE709";
	rename -uid "0AB0BAA9-4A13-6071-5DE1-5D81FEBADD96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 7.2164496600635175e-016 1 6.0507154842071031e-015
		 2 2.2204460492503131e-015 3 1.6792123247455493e-015 4 3.1086244689504383e-015 5 1.3322676295501878e-015
		 6 1.2212453270876722e-015 7 1.3322676295501878e-015 8 2.3314683517128287e-015 9 2.886579864025407e-015
		 10 1.7763568394002505e-015 11 4.4408920985006262e-015 12 3.3306690738754696e-016
		 13 2.6645352591003757e-015 14 1.7763568394002505e-015 15 3.5527136788005009e-015
		 16 2.55351295663786e-015 17 5.1070259132757201e-015 21 1.1102230246251565e-015 22 4.4408920985006262e-015
		 23 6.6613381477509392e-016 24 5.5511151231257827e-016 25 5.2735593669694936e-015
		 26 4.9960036108132044e-016 27 3.219646771412954e-015 28 4.2188474935755949e-015 29 3.9968028886505635e-015
		 30 1.3877787807814457e-015;
createNode animCurveTL -n "CURVE710";
	rename -uid "DB0FBB4A-45A9-D9F2-BF36-06818EA22E0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 4.4408920985006262e-015 1 3.5527136788005009e-015
		 2 3.5527136788005009e-015 3 7.1054273576010019e-015 4 3.5527136788005009e-015 5 7.1054273576010019e-015
		 6 1.0658141036401503e-014 7 3.5527136788005009e-015 8 1.0658141036401503e-014 9 1.0658141036401503e-014
		 10 3.5527136788005009e-015 11 -3.5527136788005009e-015 12 -3.5527136788005009e-015
		 13 4.4408920985006262e-015 14 3.5527136788005009e-015 15 3.5527136788005009e-015
		 16 5.3290705182007514e-015 17 0 21 7.1054273576010019e-015 22 7.1054273576010019e-015
		 23 -3.5527136788005009e-015 24 3.5527136788005009e-015 25 5.3290705182007514e-015
		 26 4.4408920985006262e-015 27 4.8849813083506888e-015 28 3.9968028886505635e-015
		 29 4.4408920985006262e-015 30 3.5527136788005009e-015;
createNode animCurveTA -n "CURVE711";
	rename -uid "30AAC860-4073-39B8-60FF-89BBDC19DEE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 2.8624992133171654e-014 1 2.8624992133171654e-014
		 2 2.8624992133171654e-014 3 6.3611093629270327e-015 4 5.4069429584879788e-014 5 2.8624992133171654e-014
		 6 2.8624992133171654e-014 7 6.3611093629270327e-015 8 2.8624992133171654e-014 9 2.8624992133171654e-014
		 10 2.8624992133171654e-014 11 2.8624992133171654e-014 12 2.8624992133171654e-014
		 13 2.8624992133171654e-014 14 2.8624992133171654e-014 15 2.8624992133171654e-014
		 16 2.8624992133171654e-014 17 2.8624992133171654e-014 21 2.8624992133171654e-014
		 22 2.8624992133171654e-014 23 2.8624992133171654e-014 24 2.8624992133171654e-014
		 25 2.8624992133171654e-014 26 2.8624992133171654e-014 27 2.8624992133171654e-014
		 28 6.3611093629270335e-015 29 2.8624992133171654e-014 30 2.8624992133171654e-014;
createNode animCurveTA -n "CURVE712";
	rename -uid "5F9E8BAB-4AFD-010F-794A-838A908E7D05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 -8.5477407064332035e-015 1 -8.7465253740246687e-015
		 2 -8.5477407064332035e-015 3 -4.5720473546038059e-015 4 -1.2722218725854061e-014
		 5 -8.5477407064332035e-015 6 -8.5477407064332035e-015 7 -4.5720473546038059e-015
		 8 -8.7465253740246687e-015 9 -8.5477407064332035e-015 10 -8.5477407064332035e-015
		 11 -8.5477407064332035e-015 12 -8.5477407064332035e-015 13 -8.5477407064332035e-015
		 14 -8.5477407064332035e-015 15 -8.5477407064332035e-015 16 -8.5477407064332035e-015
		 17 -8.5477407064332035e-015 21 -8.5477407064332035e-015 22 -8.5477407064332035e-015
		 23 -8.5477407064332035e-015 24 -8.5477407064332035e-015 25 -8.5477407064332035e-015
		 26 -8.5477407064332035e-015 27 -8.5477407064332035e-015 28 -4.7708320221952744e-015
		 29 -8.5477407064332035e-015 30 -8.5477407064332035e-015;
createNode animCurveTA -n "CURVE713";
	rename -uid "D81DF20E-4963-1A5F-8CA7-2DBFB9E17A94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1.2722218725854064e-014 1 -1.1131941385122312e-014
		 2 1.2722218725854064e-014 3 1.2722218725854067e-014 4 -1.1131941385122315e-014 5 1.2722218725854064e-014
		 6 1.2722218725854064e-014 7 1.2722218725854067e-014 8 -1.1131941385122312e-014 9 1.2722218725854064e-014
		 10 1.2722218725854064e-014 11 1.2722218725854064e-014 12 1.2722218725854064e-014
		 13 1.2722218725854064e-014 14 1.2722218725854064e-014 15 1.2722218725854064e-014
		 16 1.2722218725854064e-014 17 1.2722218725854064e-014 21 1.2722218725854064e-014
		 22 1.2722218725854064e-014 23 1.2722218725854064e-014 24 1.2722218725854064e-014
		 25 1.2722218725854064e-014 26 1.2722218725854064e-014 27 1.2722218725854064e-014
		 28 -1.1131941385122309e-014 29 1.2722218725854064e-014 30 1.2722218725854064e-014;
createNode animCurveTL -n "CURVE715";
	rename -uid "D9FEF33E-492D-F93E-DD74-4C8312EE93D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE716";
	rename -uid "8780BC40-499C-265E-DBC0-2EAD0DF5FB54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE717";
	rename -uid "2BD2CFB8-4752-5FB0-EAE2-56B60F639A60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE718";
	rename -uid "F7611703-490D-001A-A374-90AE6D1F27F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE719";
	rename -uid "C2149E0A-4A2C-17D8-A939-319CB26EC75E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1.0000000000000002 13 1.0000000000000002
		 15 1.0000000000000002 17 1.0000000000000002 24 1.0000000000000002 26 1.0000000000000002
		 27 1.0000000000000002;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE720";
	rename -uid "2E10FD1E-47DB-6D36-5F00-9A840A8744CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE721";
	rename -uid "03A03D77-493D-416C-70C6-54A004CA7B66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE722";
	rename -uid "8BFB1C96-4985-A5E9-59EE-A9A73DD9F011";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE723";
	rename -uid "CF81706A-4087-FD01-BEA6-AF9661F55E4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE725";
	rename -uid "7DB06A7A-4CE1-AA3A-EBB5-2DAA37EE2527";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 20 ".kit[13:19]"  18 18 18 18 1 1 18;
	setAttr -s 20 ".kot[13:19]"  18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[0:19]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[0:19]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE726";
	rename -uid "48A3780E-4CA1-32B2-3A5F-E4818C4FCC15";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 20 ".kit[13:19]"  18 18 18 18 1 1 18;
	setAttr -s 20 ".kot[13:19]"  18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[0:19]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[0:19]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE727";
	rename -uid "0B88161F-42C0-3534-0E9E-478EEA0C0590";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 5.0927715203695181 2 14.549944839345358
		 3 -37.26353455166651 4 -42.8 5 0 6 0 7 0 8 0 9 5.0927715203695181 10 14.549944839345358
		 11 -37.26353455166651 12 -42.8 13 -16.400000000000013 14 -22 19 0 20 0 21 0 23 0
		 25 0;
	setAttr -s 20 ".kit[13:19]"  18 18 18 18 1 1 18;
	setAttr -s 20 ".kot[13:19]"  18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[0:19]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666656732559149 0.041666686534881592 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666656732559149 
		0.041666686534881592 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[0:19]"  39.65896570566742 8.7298611484804329 8.7295967606634868 
		-11.231676045348756 0 0 0 0 39.65896570566742 8.7298611484804329 8.7295967606634868 
		-11.231676045348756 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[0:19]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666656732559149 0.041666656732559204 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666656732559149 0.041666656732559204 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[0:19]"  0.00079316345084433143 8.7298611484804347 
		8.7295967606634868 -11.231676045348735 0 0 0 0 0.00079316345084433143 8.7298611484804347 
		8.7295967606634868 -11.231676045348735 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE728";
	rename -uid "79E6B5F1-43B7-CDE6-B295-7788E198533B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 20 ".kit[13:19]"  18 18 18 18 1 1 18;
	setAttr -s 20 ".kot[13:19]"  18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[0:19]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[0:19]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE729";
	rename -uid "7458688E-4575-BAF8-FFA1-679DE9CF45E0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 100 1 100 2 100 3 100 4 100 5 100 6 100
		 7 100 8 100 9 100 10 100 11 100 12 100 13 100 14 100 19 100 20 100 21 100 23 100
		 25 100;
	setAttr -s 20 ".kit[13:19]"  18 18 18 18 1 1 18;
	setAttr -s 20 ".kot[13:19]"  18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[0:19]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[0:19]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "CURVE730";
	rename -uid "5A40B170-4045-442D-9059-32807E2B30D0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 14 -21.410415198321203 19 -55.374416560584947 23 -48.708877268901013
		 25 -15.185081812944597 28 -29.907800818055815;
	setAttr -s 18 ".kit[13:17]"  18 18 18 18 18;
	setAttr -s 18 ".kot[13:17]"  18 18 18 18 18;
	setAttr -s 18 ".kix[0:17]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 0.27827224008257961 1 0.41673766469448204 1 1;
	setAttr -s 18 ".kiy[0:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 -0.96050224382841665 
		0 0.90902679763854555 0 0;
	setAttr -s 18 ".kox[0:17]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.27827224008257956 
		1 0.41673766469448209 1 1;
	setAttr -s 18 ".koy[0:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 -0.96050224382841654 
		0 0.90902679763854566 0 0;
createNode animCurveTA -n "CURVE731";
	rename -uid "8D05BBBE-49DD-988F-3922-B0AFC6644624";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 10 1 15.042531446540877 2 24.407232704402514
		 3 24.650471698113215 4 16.352747641509442 5 10.000300258127481 6 10 7 10 8 10 9 15.042531446540877
		 10 24.407232704402514 11 24.650471698113215 12 16.352747641509442 13 1.283657595130546
		 14 -24.122971316654063 19 40.783626624559524 20 112.71782396737314 21 156.33242409328736
		 23 176.30270822208459 25 178.99755727336364 28 178.0540506235242;
	setAttr -s 21 ".kit[13:20]"  18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[13:20]"  18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[0:20]"  0.2083333283662796 0.041666668322351233 
		0.041666672461562707 0.038888476885047818 0.041666666666666685 0.041666666666666685 
		0.043766917544528605 0.037628288105549523 0.2083333283662796 0.041666668322351233 
		0.041666672461562707 0.038888476885047818 0.041666666666666685 0.11252550639011917 
		1 0.099985384943438033 0.03963745435955101 0.10750428395960035 0.49320957952176736 
		1 1;
	setAttr -s 21 ".kiy[0:20]"  0 0.15087218807569847 0.15087218807569847 
		-0.063365647664646529 -0.17480110491822398 0 0 0 0 0.15087218807569847 0.15087218807569847 
		-0.063365647664646529 -0.17480110491822398 -0.99364883656734948 0 0.99498890586664968 
		0.99921412730800308 0.99420462125778397 0.86991051877073056 0 0;
	setAttr -s 21 ".kox[0:20]"  0.041666666666666664 0.041666663355297506 
		0.041666660043928327 0.041666666666666685 0.041666666666666685 0.03908862161643234 
		0.04064988769158745 0.05226537205083448 0.041666666666666664 0.041666663355297506 
		0.041666660043928327 0.041666666666666685 0.041666666666666685 0.11252550639011917 
		1 0.099985384943438019 0.039637454359551003 0.10750428395960036 0.49320957952176736 
		1 1;
	setAttr -s 21 ".koy[0:20]"  0 0.15087218807569847 0.15087218807569847 
		-0.067892484634064276 -0.17480110491822431 0 0 0 0 0.15087218807569847 0.15087218807569847 
		-0.067892484634064276 -0.17480110491822431 -0.99364883656734948 0 0.99498890586664956 
		0.99921412730800308 0.99420462125778408 0.86991051877073056 0 0;
createNode animCurveTA -n "CURVE732";
	rename -uid "3AE12828-4247-9349-CB50-ACA68D46072D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 2 0 3 -14.999540558172196 4 -7.2013137043286672
		 5 0 6 0 7 0 8 0 9 0 10 0 11 -14.999540558172196 12 -7.2013137043286672 13 -0.14341896024018075
		 14 0 19 -48.758803052319934 20 -121.60170005129146 21 -157.76674915623167 23 -175.29638494682695
		 25 -176.78578701474754 28 -176.42100264120819;
	setAttr -s 21 ".kit[13:20]"  18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[13:20]"  18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[0:20]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.21631780762475752 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.21631780762475752 0.98283032999010278 1 0.11236603165240655 0.042011758629213615 
		0.12701091603235992 0.71606764914950227 1 1;
	setAttr -s 21 ".kiy[0:20]"  0 0 0 0 0.97632300295773966 0 0 0 0 0 0 
		0 0.97632300295773966 0.18451163229332138 0 -0.99366688328166108 -0.9991171163266499 
		-0.99190131928968672 -0.6980308888878094 0 0;
	setAttr -s 21 ".kox[0:20]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.21631773626382625 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.21631773626382625 0.98283032999010278 
		1 0.11236603165240655 0.042011758629213615 0.12701091603235989 0.71606764914950238 
		1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0.97632301876873395 0 0 0 0 0 0 
		0 0.97632301876873395 0.18451163229332138 0 -0.9936668832816612 -0.9991171163266499 
		-0.9919013192896865 -0.6980308888878094 0 0;
createNode animCurveTU -n "CURVE733";
	rename -uid "62D8E218-435F-F8A7-8427-CC8835A43E22";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 62.2 1 0 2 0 3 0 4 0 5 0 6 0 7 31.100008341670538
		 8 62.2 9 0 10 0 11 0 12 0 13 0 14 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 20 ".kit[0:19]"  18 1 1 1 18 1 1 1 
		18 1 1 1 18 18 18 18 18 1 1 18;
	setAttr -s 20 ".kot[0:19]"  18 1 1 1 18 1 1 1 
		18 1 1 1 18 18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[1:19]"  0.041666666666666664 0.041666666666666644 
		0.041666666666666685 1 0.041666666666666685 0.041666666666666685 0.00096019544995381092 
		1 0.041666666666666664 0.041666666666666644 0.041666666666666685 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0.9999995390122427 0 0 0 0 
		0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  0.041666666666666685 0.041666666666666685 
		0.04166666666666663 1 0.041666666666666685 0.041666666666666685 0.0009601953519202751 
		1 0.041666666666666685 0.041666666666666685 0.04166666666666663 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0.99999953901233685 0 0 0 0 
		0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE734";
	rename -uid "3C57F602-42F0-46AF-32F9-72B6CA72F313";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 20 ".kit[13:19]"  18 18 18 18 1 1 18;
	setAttr -s 20 ".kot[13:19]"  18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[0:19]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[0:19]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE735";
	rename -uid "B6E48343-4FD4-1988-9690-53890A94AA40";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 19 1 20 1 21 1 23 1 25 1;
	setAttr -s 20 ".kit[0:19]"  1 1 1 1 1 1 9 9 
		1 1 1 1 1 9 18 9 9 1 1 18;
	setAttr -s 20 ".kot[18:19]"  18 18;
	setAttr -s 20 ".kix[0:19]"  2083.375 0.041666666666666664 0.041666666666666671 
		0.25 0.04166666666666663 0.041666666666666685 1 1 2083.375 0.041666666666666664 0.041666666666666671 
		0.25 0.04166666666666663 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE736";
	rename -uid "C87DCF7F-420C-66C2-F205-82A5F73EE75A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 20 ".kit[13:19]"  18 18 18 18 1 1 18;
	setAttr -s 20 ".kot[13:19]"  18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[0:19]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[0:19]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE737";
	rename -uid "AA27393A-4018-3208-0AF2-46B8D3AC4CE4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 -0.8 1 -0.77955209164541739 2 -0.41213256346010846
		 3 -0.8 4 -0.8 5 -0.8 6 -0.8 7 -0.8 8 -0.8 9 -0.77955209164541739 10 -0.41213256346010846
		 11 -0.8 12 -0.8 13 -0.8 14 -0.8 19 -0.24021135853515685 20 0.56744901300110473 21 1.5126011264519208
		 23 1.5126011264519208 25 1.5126011264519208;
	setAttr -s 20 ".kit[13:19]"  18 18 18 18 1 1 18;
	setAttr -s 20 ".kot[13:19]"  18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[0:19]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 1 0.17286702396533796 0.045593471544158784 1 1 1;
	setAttr -s 20 ".kiy[0:19]"  -0.088137536011132278 0.022563209218849911 
		0.023268309506939033 -0.088137536011132278 0 0 0 0 -0.088137536011132278 0.022563209218849911 
		0.023268309506939033 -0.088137536011132278 0 0 0 0.98494517209099886 0.99896007695630751 
		0 0 0;
	setAttr -s 20 ".kox[0:19]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 1 0.17286702396533793 
		0.045593471544158784 1 1 1;
	setAttr -s 20 ".koy[0:19]"  0.017627507202226389 0.022563209218849911 
		0.0232683095069387 0 0 0 0 0 0.017627507202226389 0.022563209218849911 0.0232683095069387 
		0 0 0 0 0.98494517209099874 0.99896007695630751 0 0 0;
createNode animCurveTL -n "CURVE738";
	rename -uid "BD8D329E-43FE-5463-B53A-92B15154EA43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 1 0.55725313686304745 2 1.4223810297599626
		 3 0.042489489868128283 4 0 5 0 6 0 7 0 8 0 9 0.55725313686304745 10 1.4223810297599626
		 11 0.042489489868128283 12 -0.35202525890241176 13 -0.035209864562745885 14 0.13164432427906925
		 15 0.4173138030883754 19 5.9131390097232597 21 7.4695968938426471 23 7.8355424174997097
		 25 6.9485464883604493 28 8.4155493735432572 30 7.5306043846065691 32 7.8257947833350094;
	setAttr -s 23 ".kit[0:22]"  1 1 3 18 1 1 1 1 
		1 1 3 18 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kot[0:22]"  1 1 3 18 1 1 1 1 
		1 1 3 18 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[0:22]"  0.083333328366279602 0.04257376492023468 
		1 0.29940748187628058 0.04166666666666663 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 0.083333328366279602 0.04257376492023468 1 0.045039750002189564 
		0.04166666666666663 0.16318503634766302 0.17408685931710166 0.046623230458554446 
		0.034011842702681351 0.08294237026903499 1 1 1 1 1;
	setAttr -s 23 ".kiy[0:22]"  0 0.89726150035858154 0 -0.95412533757180162 
		0 0 0 0 0 0.89726150035858154 0 -0.99898519554582998 0 0.98659548139661157 0.98473030085049562 
		0.99891254591260825 0.99942142990630733 0.99655434533905596 0 0 0 0 0;
	setAttr -s 23 ".kox[0:22]"  0.03708682581782341 0.053088605403900146 
		1 0.29940748187628052 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 0.03708682581782341 0.053088605403900146 1 0.045039750002189564 
		0.041666666666666685 0.16318503634766302 0.17408685931710166 0.046623230458554446 
		0.034011842702681344 0.08294237026903499 1 1 1 1 1;
	setAttr -s 23 ".koy[0:22]"  0 1.1188665628433228 0 -0.95412533757180162 
		0 0 0 0 0 1.1188665628433228 0 -0.99898519554582998 0 0.98659548139661157 0.98473030085049562 
		0.99891254591260803 0.99942142990630733 0.99655434533905596 0 0 0 0 0;
createNode animCurveTL -n "CURVE739";
	rename -uid "4E194484-49DC-BB49-542B-018F7B04886B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -7.690987252275411 1 -7.690987252275411
		 3 5.3321980167091168 4 5.805 8 -7.690987252275411 9 -7.690987252275411 11 5.2480728506627665
		 12 5.2416953015403909 13 6.87359609586104 14 10.985553982000685 15 12.725065087612817
		 19 12.71967260139159 21 12.888793183337786 23 8.746393370155916 25 6.5765764038079215
		 28 6.5765764038079215;
	setAttr -s 16 ".kit[0:15]"  2 2 18 2 2 2 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 16 ".kot[0:15]"  2 2 18 2 2 2 18 18 
		18 18 18 18 18 18 18 18;
createNode animCurveTU -n "CURVE740";
	rename -uid "B3C56040-4F88-09CB-577E-10AF1E866E55";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 20 ".kit[13:19]"  18 18 18 18 1 1 18;
	setAttr -s 20 ".kot[13:19]"  18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[0:19]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[0:19]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE741";
	rename -uid "9984EE70-430D-CF57-C03F-25B9F78DE0F6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 20 ".kit[13:19]"  18 18 18 18 1 1 18;
	setAttr -s 20 ".kot[13:19]"  18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[0:19]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[0:19]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE742";
	rename -uid "BB09CE86-4701-B293-FCBC-279FDE53161E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 25 1 25 2 25 3 25 4 25 5 25 6 25 7 25
		 8 25 9 25 10 25 11 25 12 25 13 25 14 25 19 25 20 25 21 25 23 25 25 25;
	setAttr -s 20 ".kit[13:19]"  18 18 18 18 1 1 18;
	setAttr -s 20 ".kot[13:19]"  18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[0:19]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[0:19]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE743";
	rename -uid "1F766155-42B0-7EBD-5DA9-B1ABE341C616";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 20 ".kit[13:19]"  18 18 18 18 1 1 18;
	setAttr -s 20 ".kot[13:19]"  18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[0:19]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[0:19]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE744";
	rename -uid "2BF298B6-4831-A15B-8377-108BD7E9B01D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 51.600000000000009 2 4 3 0.73499883890202877
		 4 0 5 0 6 0 7 0 8 0 9 51.600000000000009 10 4 11 0.73499883890202877 12 0 13 0 14 0
		 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 20 ".kit[0:19]"  18 1 1 1 1 1 1 1 
		18 1 1 1 1 18 18 18 18 1 1 18;
	setAttr -s 20 ".kot[0:19]"  18 1 1 1 1 1 1 1 
		18 1 1 1 1 18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[1:19]"  0.041666666666666664 0.041666666666666644 
		0.041666666666666685 0.04166666666666663 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 1 0.041666666666666664 0.041666666666666644 0.041666666666666685 
		0.04166666666666663 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 -28.083749709725524 -2.2049965167060899 
		0 0 0 0 0 0 -28.083749709725524 -2.2049965167060899 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  0.041666666666666685 0.041666666666666685 
		0.04166666666666663 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 1 0.041666666666666685 0.041666666666666685 0.04166666666666663 
		0.041666666666666685 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 -28.083749709725502 -2.2049965167060863 
		0 0 0 0 0 0 -28.083749709725502 -2.2049965167060863 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE745";
	rename -uid "A297D43D-4F65-FE54-30C3-A68348BAEE4D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 19 0 20 0 21 0 23 0 25 0;
	setAttr -s 20 ".kit[13:19]"  18 18 18 18 1 1 18;
	setAttr -s 20 ".kot[13:19]"  18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[0:19]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[0:19]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "CURVE746";
	rename -uid "0B9D55D5-492A-A432-4254-66910A908A5A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 50 1 50 2 50 3 50 4 50 5 50 6 50 7 50
		 8 50 9 50 10 50 11 50 12 50 13 50 14 50 19 50 20 50 21 50 23 50 25 50;
	setAttr -s 20 ".kit[13:19]"  18 18 18 18 1 1 18;
	setAttr -s 20 ".kot[13:19]"  18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[0:19]"  2083.375 0.041666666666666644 0.041666666666666644 
		0.041666666666666685 0.041666666666666519 0.041666666666666685 0.041666666666666685 
		0.041666666666666852 2083.375 0.041666666666666644 0.041666666666666644 0.041666666666666685 
		0.041666666666666519 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[0:19]"  0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 0.041666666666666685 
		0.041666666666666685 0.041666666666666852 0.041666666666666664 0.041666666666666685 
		0.041666666666666685 0.041666666666666685 0.041666666666666685 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[0:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "CURVE748";
	rename -uid "7378AB7C-4C0C-BAC9-14E9-1197CA6084B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE749";
	rename -uid "EE35AD6F-46B2-AD5F-FB14-5FBBF8C40688";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE750";
	rename -uid "295A0C66-4B64-D6D4-3819-DCAAA373E1D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE751";
	rename -uid "A12575AE-4793-3C48-1F6C-6AAF937AC1E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE752";
	rename -uid "0A3EFF4D-4924-1F99-B378-52BAD9BCD5AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE753";
	rename -uid "B87C0A8C-4CF1-A837-9BCF-C5895C68C937";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE754";
	rename -uid "869B1656-40A9-C397-3892-62BC3EBEC4CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE755";
	rename -uid "4E848F90-4D9A-701A-A36F-16A414856442";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE756";
	rename -uid "CE608477-4A29-5268-BC53-D3905623585F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE758";
	rename -uid "BF990CB3-4EAC-779E-FC1A-35B960B9C4CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE759";
	rename -uid "EF7E7DD9-4F9A-1C86-D71B-2AB1FA5C7038";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE760";
	rename -uid "F3B96359-4A50-D3A7-C550-7380667CB030";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE761";
	rename -uid "C35DCFF6-4C72-3B90-7F9C-37B7B1B07909";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE763";
	rename -uid "0152E698-4C42-F8B9-8E04-1A88477DFA60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE764";
	rename -uid "11172B8B-4E5C-FB89-4E98-87A9D7755921";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE765";
	rename -uid "934274E1-4B0E-2538-68B9-0CA773B1D199";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE766";
	rename -uid "580CDCC7-4B10-2591-AD8D-5087F7D88D0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE767";
	rename -uid "58A78BD7-4BD2-817A-A114-7AB62E3F500C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE768";
	rename -uid "2876A769-4D1E-3950-D452-7C99D26C7B49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE769";
	rename -uid "6B5ED321-4D9C-B3CF-C74D-7DA60CE3B823";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.67359674344172071 1 0.67359674344172071
		 2 0.67359674344172071 3 0.67359674344172071 4 0.67359674344172071 5 0.67359674344172071
		 6 0.67359674344172071 7 0.67359674344172071 8 0.67359674344172071 9 0.67359674344172071
		 10 0.67359674344172071 11 0.67359674344172071 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE770";
	rename -uid "D7BAD766-4480-4C5C-D1FE-7785EA520275";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -2.2266708258924282 1 -2.2266708258924282
		 2 -2.2266708258924282 3 -2.2266708258924282 4 -2.2266708258924282 5 -2.2266708258924282
		 6 -2.2266708258924282 7 -2.2266708258924282 8 -2.2266708258924282 9 -2.2266708258924282
		 10 -2.2266708258924282 11 -2.2266708258924282 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE771";
	rename -uid "FA2A6D0E-4A8C-D339-6A64-2AADFEE1A704";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -17.719197314933581 1 -17.719197314933581
		 2 -17.719197314933581 3 -17.719197314933581 4 -17.719197314933581 5 -17.719197314933581
		 6 -17.719197314933581 7 -17.719197314933581 8 -17.719197314933581 9 -17.719197314933581
		 10 -17.719197314933581 11 -17.719197314933581 13 18.419191807234355 17 18.419191807234355
		 20 9.4915121579518367 22 -7.8025929047705986 24 21.660344404622865 27 6.4114765349798519
		 30 13.520947623162122;
createNode animCurveTL -n "CURVE773";
	rename -uid "E6E7D35D-4F75-EF96-CD43-B4B9D61D9CC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE774";
	rename -uid "D742ECAE-42BC-DA7D-FF12-2E923471967C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE775";
	rename -uid "533D7804-4441-0DE8-E5B7-2F8FD138A70F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE776";
	rename -uid "3C42DA47-4052-0893-81B5-0D9691CF5F6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE777";
	rename -uid "707A1AA6-49B3-EA29-2716-998D57BE6C2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE778";
	rename -uid "0CA027D5-47FF-F0C1-5E81-52BA62DA74A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE779";
	rename -uid "4BD1D69C-4FEA-0845-6550-4A903514C867";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1.2548400958644346 1 1.2548400958644346
		 2 1.2548400958644346 3 1.2548400958644346 4 1.2548400958644346 5 1.2548400958644346
		 6 1.2548400958644346 7 1.2548400958644346 8 1.2548400958644346 9 1.2548400958644346
		 10 1.2548400958644346 11 1.2548400958644346 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE780";
	rename -uid "8C03C9CA-4C8D-7E51-ABBE-D38580269445";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -2.2641497311738381 1 -2.2641497311738381
		 2 -2.2641497311738381 3 -2.2641497311738381 4 -2.2641497311738381 5 -2.2641497311738381
		 6 -2.2641497311738381 7 -2.2641497311738381 8 -2.2641497311738381 9 -2.2641497311738381
		 10 -2.2641497311738381 11 -2.2641497311738381 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE781";
	rename -uid "06000457-492D-98D8-AE10-67BE9F6145F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -69.005677864300011 1 -69.005677864300011
		 2 -69.005677864300011 3 -69.005677864300011 4 -69.005677864300011 5 -69.005677864300011
		 6 -69.005677864300011 7 -69.005677864300011 8 -69.005677864300011 9 -69.005677864300011
		 10 -69.005677864300011 11 -69.005677864300011 13 4.4769329991509466 17 4.476932999150943
		 20 1.0589324938779219 22 -16.235172568844515 24 13.227764740548928 27 -2.021103129094092
		 30 5.0883679590881608;
createNode animCurveTL -n "CURVE783";
	rename -uid "AEEFFD6C-4753-1F88-CD3C-8EA21435FC69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE784";
	rename -uid "9CBD5498-4F5E-DDF8-9BFF-35ABFE67B25B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE785";
	rename -uid "74B3BBDE-4FA6-7C48-9583-CB93FA4A4F24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE786";
	rename -uid "71B8C629-4225-AECE-6552-A391E2D9ED7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE787";
	rename -uid "C15C880A-4C56-4E6C-1499-EDB049C515EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE788";
	rename -uid "E43019DD-4FB3-BCDB-0EA0-08AB2381D28C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE790";
	rename -uid "DF882098-498C-4AEC-8879-8EB8839C3C31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE791";
	rename -uid "C36FBD44-4594-0827-16AF-729D91DA7F47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE792";
	rename -uid "E56457F1-4F45-7FC6-5E11-288A2BD368C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE793";
	rename -uid "4BED6350-4208-9262-9F8B-80A108625E0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000011 13 1.0000000000000011
		 17 1.0000000000000011 19 1.0000000000000011 20 1.0000000000000011 21 1.0000000000000011;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE794";
	rename -uid "798C123D-4266-7561-7FDD-E292499E35E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 19 1.0000000000000002 20 1.0000000000000002 21 1.0000000000000002;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE795";
	rename -uid "70161A0A-4A9C-B9BB-5863-BA821E8D76F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 19 1.0000000000000002 20 1.0000000000000002 21 1.0000000000000002;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE796";
	rename -uid "E89A1D9B-44FA-A211-EAF4-A9A54EBE4904";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE797";
	rename -uid "1E98FAF0-4DE4-86CE-9DCA-75A8404EB622";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE798";
	rename -uid "B17AA1E2-4D1C-72FA-1A7B-D9AED6F19518";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE800";
	rename -uid "5D9DD7A3-4C42-BB96-168D-BE83B642F3A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE801";
	rename -uid "B868CA72-4149-CEA8-D1C8-35857B880AD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE802";
	rename -uid "B6489A3F-4A8B-4B6C-6596-BD919FB2E7ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE803";
	rename -uid "3D193C73-4D67-3042-AE78-DEACC8576AA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE804";
	rename -uid "8D6D6E0A-4E86-08A2-2C80-3BA74BDBBD1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE805";
	rename -uid "B58445E8-4B82-F9D4-6FE9-D2B451D2CBB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE806";
	rename -uid "C1B562E8-4362-5204-B61A-7088EEC3E639";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE807";
	rename -uid "D68E1A91-469B-2AD3-0F96-2F8F23C694EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE808";
	rename -uid "85D23A49-486B-4E09-130E-3EB8D6AFF0DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE810";
	rename -uid "3519C237-46FC-9D5A-F74C-C2B338B47E7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "CURVE811";
	rename -uid "B7C608BC-43D2-2381-A179-868EBA3907D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "CURVE812";
	rename -uid "FB702A2A-4472-B565-893B-DFAA9A131C1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "CURVE813";
	rename -uid "CF5438F4-4149-1F36-B66C-A9819CAD11CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "CURVE814";
	rename -uid "78A87F78-4C54-8D23-0C25-6BA394C7CD01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3 8 3 12 3 13 3 17 3 20 3 22 3;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 9 18 18 18 9;
	setAttr -s 7 ".kot[1:6]"  1 5 18 18 18 5;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 0 1 1 1 0;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "CURVE816";
	rename -uid "13FC10A5-4E67-C781-0F2E-669EAB741AE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE817";
	rename -uid "9693B713-469C-2972-6A64-3789F683C630";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE818";
	rename -uid "CCF2D750-4244-C01B-3F7A-0387553E845E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE819";
	rename -uid "FDF642AA-4F59-9BD9-DC44-02AA1F5823B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE820";
	rename -uid "C2FA35A0-414F-B363-A57E-868A4F89001F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE821";
	rename -uid "0FE85419-4936-4067-1C51-73B8D44E16C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE822";
	rename -uid "718AC042-4559-B9BC-F8B5-1BA2C380A29F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE823";
	rename -uid "8253F29A-4EC5-1588-55D8-FC80774F1301";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE824";
	rename -uid "53390DCC-4E6C-6DA7-8543-2EA28AE7C230";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE826";
	rename -uid "B827A948-4A92-AA1A-DC71-2BA8FA95E806";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE827";
	rename -uid "0AAC8749-453D-FEFB-3C30-CABA5AD1A994";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE828";
	rename -uid "951A4BF2-4147-8413-8B1C-BB85B9B22581";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE829";
	rename -uid "8AAB540E-4B37-6238-391A-1A86EE2D5563";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE830";
	rename -uid "040F9430-4A4E-BAB8-936E-3D96F0238C8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE831";
	rename -uid "AE6A966E-4D73-DD8A-3C93-D68B50BA8F29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE832";
	rename -uid "EA3BEDCD-484F-B527-EFD7-7D8677126BDF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE833";
	rename -uid "41AD29EE-432E-E476-E3B7-0F82484C173D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE834";
	rename -uid "C008BCAE-4098-2B1C-44A0-8E9E68D3B791";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE836";
	rename -uid "66F9B88A-466B-11D6-CB6D-A98FBCF3CC43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE837";
	rename -uid "1BE1AAA0-4BB3-E309-718A-6A87C0DEA483";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE838";
	rename -uid "E0D7B1E0-46AA-1110-3DFE-369CE7652B84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE839";
	rename -uid "0A11F5DA-49C4-557A-13C3-78B254A114E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE840";
	rename -uid "4418008E-47CF-7649-5112-60AB6B5F258F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE841";
	rename -uid "098F647D-47EA-A1B4-68C8-6A8B5CDF30F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE842";
	rename -uid "0BC46055-4BEC-62DC-AE4E-518AFDB33A07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE843";
	rename -uid "AC4FD934-4422-7774-6F1D-B298CDD6C187";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 -6.4878833929407156 17 -6.4878833929407156 20 -0.64878833929407143 22 -0.64878833929407143;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE844";
	rename -uid "748B5CAF-4F57-6B21-6E4C-FB902628DD0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -26.84838271008033 1 -26.84838271008033
		 2 -26.84838271008033 3 -26.84838271008033 4 -26.84838271008033 5 -26.84838271008033
		 6 -26.84838271008033 7 -26.84838271008033 8 -26.84838271008033 9 -26.84838271008033
		 10 -26.84838271008033 11 -26.84838271008033 13 11.783532863754623 17 11.783532863754623
		 20 -8.5467846394450628 22 -8.5467846394450628;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE845";
	rename -uid "5675997C-419C-13F3-1AF0-7799B8507A91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE847";
	rename -uid "A131916F-4EA0-3EE1-4E32-5394DE3E21E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE848";
	rename -uid "54B1B89D-40DE-E3F5-EC37-DD901505C92E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE849";
	rename -uid "B0687A57-42D8-EB18-946D-F1AE0B49C3BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE850";
	rename -uid "AFC14EF1-4226-09DF-399E-F395DEE86E8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE851";
	rename -uid "B4AC4D7A-46E9-B7E6-1D40-11A66F1DDAA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1.0000000000000002 13 1.0000000000000002
		 15 1.0000000000000002 17 1.0000000000000002 24 1.0000000000000002 26 1.0000000000000002
		 27 1.0000000000000002;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE852";
	rename -uid "EAA2AE46-43EF-1F15-3928-6EADD2EE3347";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE853";
	rename -uid "6A2DA111-4D76-0ECD-75A0-A6BC613DD804";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE854";
	rename -uid "A8E956E5-4C38-5A3F-61F9-70B643B9ECFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE855";
	rename -uid "70683376-4106-B8AA-C5E5-7A889C1984FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE857";
	rename -uid "DBE26AEB-4DCE-4228-E19E-E2835EB3EB60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE858";
	rename -uid "7FA19BB5-4793-D899-720D-7BBA6CF5EE14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE859";
	rename -uid "02C56E3C-48A6-2FE1-3545-ADA77205298D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE860";
	rename -uid "B2488A6D-48D2-BE02-04C4-08B9A60EF398";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE861";
	rename -uid "025D6840-4859-52F1-F2B3-14BA1C5FBF0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE862";
	rename -uid "C87555D9-4114-8576-6E98-4CB44EA9B6D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE863";
	rename -uid "6ACAD477-468A-CA5F-BB58-48BB53C3AD48";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -5.3695981608349861 1 -5.3695981608349861
		 2 -5.3695981608349861 3 -5.3695981608349861 4 -5.3695981608349861 5 -5.3695981608349861
		 6 -5.3695981608349861 7 -5.3695981608349861 8 -5.3695981608349861 9 -5.3695981608349861
		 10 -5.3695981608349861 11 -5.3695981608349861 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE864";
	rename -uid "AC84F707-47C9-27A5-E5FB-B68F1BD5597E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -3.0352384715510929 1 -3.0352384715510929
		 2 -3.0352384715510929 3 -3.0352384715510929 4 -3.0352384715510929 5 -3.0352384715510929
		 6 -3.0352384715510929 7 -3.0352384715510929 8 -3.0352384715510929 9 -3.0352384715510929
		 10 -3.0352384715510929 11 -3.0352384715510929 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE865";
	rename -uid "A779B818-4C5B-543F-FC61-6DAC3EDF0F8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -61.018792667859707 1 -61.018792667859707
		 2 -61.018792667859707 3 -61.018792667859707 4 -61.018792667859707 5 -61.018792667859707
		 6 -61.018792667859707 7 -61.018792667859707 8 -61.018792667859707 9 -61.018792667859707
		 10 -61.018792667859707 11 -61.018792667859707 13 9.0787634046676047 17 9.0787634046675976
		 20 -9.8271564549654311 22 -27.121261517687902 24 2.3416757917055437 27 -12.907192077937484
		 30 -5.7977209897552475;
createNode animCurveTL -n "CURVE867";
	rename -uid "3F34D6F1-48F2-9A5E-7F16-578C5B031C17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE868";
	rename -uid "D600F746-4CA6-7029-7350-C4AE95401414";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE869";
	rename -uid "6CD792AF-45BF-0AD2-64B7-44BBB577141C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE870";
	rename -uid "CCAC6EBC-461C-D5A7-141C-79B29A0AE940";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE871";
	rename -uid "ADF9A422-4674-D009-72CF-91A4D168FE96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1.0000000000000002 13 1.0000000000000002
		 15 1.0000000000000002 17 1.0000000000000002 24 1.0000000000000002 26 1.0000000000000002
		 27 1.0000000000000002;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE872";
	rename -uid "2EE82CB6-4988-6873-6042-16A6A9224390";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE873";
	rename -uid "E7B2BC19-4F47-CD88-2954-6197E4A4BB22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE874";
	rename -uid "65FD8E37-49C8-100B-ECA4-C283897074CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE875";
	rename -uid "898279E6-46D0-1FDE-E41C-76B058ED77BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE877";
	rename -uid "25403928-4FAA-CB15-DC26-DFBC5F6D5F7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE878";
	rename -uid "37FC73D8-487B-310D-6C05-69AAAA6D55A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE879";
	rename -uid "76CBAB8F-4D9D-4FD9-4485-5DA2F7E2F1AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE880";
	rename -uid "86DABC15-4F7B-7405-6117-07B3E241D139";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000004 13 1.0000000000000004
		 17 1.0000000000000004 19 1.0000000000000004 20 1.0000000000000004 21 1.0000000000000004;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE881";
	rename -uid "DBFE9051-47F0-7370-87DB-A6B24830DF74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000009 13 1.0000000000000009
		 17 1.0000000000000009 19 1.0000000000000009 20 1.0000000000000009 21 1.0000000000000009;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE882";
	rename -uid "78AAF3FF-40EB-5212-43BB-CBA8B487D7AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000007 13 1.0000000000000007
		 17 1.0000000000000007 19 1.0000000000000007 20 1.0000000000000007 21 1.0000000000000007;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE883";
	rename -uid "7EE44560-40D5-9E58-2E7B-529693851AC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE884";
	rename -uid "22AC86B0-47E4-349D-2C8D-13B5C620DDD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE885";
	rename -uid "CF22C9DE-4E47-AAAE-2984-359E210F5EC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE887";
	rename -uid "A40D862B-4A4D-26CF-2916-08BE222942BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE888";
	rename -uid "DF1238D8-48E0-DF01-A00A-B4981FC0E39C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE889";
	rename -uid "228FC1C9-4005-FEF9-6F53-E88A04E92065";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE890";
	rename -uid "266029A1-47EE-A29B-7A05-53B9C74D8D71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE891";
	rename -uid "40D3B1CA-4CA6-CBCC-99BA-BCA6DE654457";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE892";
	rename -uid "34576D0F-4045-0868-4B96-D9B56C8AB460";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE893";
	rename -uid "3580335B-4B3F-CD02-E657-5E87F0E5E007";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1.5613366149229946 1 1.5613366149229946
		 2 1.5613366149229946 3 1.5613366149229946 4 1.5613366149229946 5 1.5613366149229946
		 6 1.5613366149229946 7 1.5613366149229946 8 1.5613366149229946 9 1.5613366149229946
		 10 1.5613366149229946 11 1.5613366149229946 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE894";
	rename -uid "0DDC0863-4F2E-5DF3-4E9F-708AA9F80815";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -1.7139970998927803 1 -1.7139970998927803
		 2 -1.7139970998927803 3 -1.7139970998927803 4 -1.7139970998927803 5 -1.7139970998927803
		 6 -1.7139970998927803 7 -1.7139970998927803 8 -1.7139970998927803 9 -1.7139970998927803
		 10 -1.7139970998927803 11 -1.7139970998927803 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE895";
	rename -uid "5D7F694B-4EF9-FFB2-AAA6-B1ADC88FA5C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -69.072678163694661 1 -69.072678163694661
		 2 -69.072678163694661 3 -69.072678163694661 4 -69.072678163694661 5 -69.072678163694661
		 6 -69.072678163694661 7 -69.072678163694661 8 -69.072678163694661 9 -69.072678163694661
		 10 -69.072678163694661 11 -69.072678163694661 13 4.5891792455676494 17 4.5891792455676548
		 20 -5.688731940694062 22 -22.982837003416531 24 6.4801003059769045 27 -8.7687675636661133
		 30 -1.6592964754838682;
createNode animCurveTL -n "CURVE897";
	rename -uid "C2B326E6-4BB2-3080-63AA-868A4559737C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE898";
	rename -uid "7D281C76-4BC6-2ACC-1B33-00BEE4317582";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE899";
	rename -uid "34E230BC-40F1-FBB6-DEE6-838ED0137EAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE900";
	rename -uid "1B3A6C3D-47E0-C592-ECF6-62A8DD5D633A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE901";
	rename -uid "F0E0C327-461B-CAA7-5DCF-98B73737FECE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE902";
	rename -uid "5D6E4793-4235-7443-E021-2E88580154B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE903";
	rename -uid "EAEE5201-4E73-C37A-FEE2-CD9C554884A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE904";
	rename -uid "ECCE6322-4D3A-2CBF-19CC-1BAE62FE2623";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE905";
	rename -uid "278A1C14-464A-2192-3743-4EA79B0EA799";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE907";
	rename -uid "B338032A-4B62-6C28-ED9A-54B054261069";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 1 0 2 0 3 -7.1054273576010019e-015 4 -7.1054273576010019e-015
		 5 0 6 0 7 -7.1054273576010019e-015 8 0 9 0 10 -7.1054273576010019e-015 11 -7.1054273576010019e-015
		 12 -7.1054273576010019e-015 13 0 14 -7.1054273576010019e-015 15 -7.1054273576010019e-015
		 16 0 17 0 21 -7.1054273576010019e-015 22 -7.1054273576010019e-015 23 0 24 0 25 0
		 26 0 27 0 28 0 29 0 30 0;
createNode animCurveTL -n "CURVE908";
	rename -uid "172E03AA-49DF-4322-FBA9-E7AD17C4930C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 -8.8817841970012523e-016 1 8.8817841970012523e-016
		 2 8.8817841970012523e-016 3 -8.8817841970012523e-016 4 -8.8817841970012523e-016 5 8.8817841970012523e-016
		 6 8.8817841970012523e-016 7 -8.8817841970012523e-016 8 8.8817841970012523e-016 9 8.8817841970012523e-016
		 10 -8.8817841970012523e-016 11 -8.8817841970012523e-016 12 -8.8817841970012523e-016
		 13 8.8817841970012523e-016 14 -1.7763568394002505e-015 15 -1.7763568394002505e-015
		 16 0 17 0 21 -8.8817841970012523e-016 22 -1.7763568394002505e-015 23 0 24 0 25 -8.8817841970012523e-016
		 26 0 27 -8.8817841970012523e-016 28 -8.8817841970012523e-016 29 -8.8817841970012523e-016
		 30 -8.8817841970012523e-016;
createNode animCurveTL -n "CURVE909";
	rename -uid "BF4A29C6-4D30-BE8F-8513-23B65528DF0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 1 -7.9936057773011271e-015 2 -9.7699626167013776e-015
		 3 -1.1546319456101628e-014 4 -1.1546319456101628e-014 5 -1.0658141036401503e-014
		 6 -9.7699626167013776e-015 7 -1.2434497875801753e-014 8 -1.0658141036401503e-014
		 9 -1.0658141036401503e-014 10 -1.2434497875801753e-014 11 -1.3322676295501878e-014
		 12 -1.1546319456101628e-014 13 0 14 1.4210854715202004e-014 15 1.6875389974302379e-014
		 16 8.8817841970012523e-015 17 1.1546319456101628e-014 21 1.5099033134902129e-014
		 22 1.5099033134902129e-014 23 1.0658141036401503e-014 24 8.8817841970012523e-016
		 25 -1.7763568394002505e-015 26 8.8817841970012523e-016 27 8.8817841970012523e-016
		 28 8.8817841970012523e-016 29 0 30 0;
createNode animCurveTA -n "CURVE910";
	rename -uid "3FE3CF30-4701-12BF-AB3A-D0B66F199F0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 -0.01558684913943789 1 0.32233934001611275
		 2 0.12814722008371593 3 -0.18225710638842527 4 0.074316453731281235 5 0.22529084854016307
		 6 0.80422250313576504 7 -0.24642932429444742 8 0.0022597509360655897 9 0.45940487047870815
		 10 -0.32270413356639199 11 -0.47573869088333004 12 0.089153066315515381 13 0.72263929917293623
		 14 2.4578829512751006 15 3.6821471682523281 16 -0.47853025547619071 17 -0.27705939136207047
		 21 -1.8258451442710462 22 0.45957667846100114 23 0.3073479380393892 24 -0.14425449395393214
		 25 -0.19863274372402076 26 -0.01003378945344249 27 0.046905238841683836 28 0.0026238417086396622
		 29 -0.010171256918017195 30 -0.013966438448054546;
createNode animCurveTA -n "CURVE911";
	rename -uid "64D7568B-497A-0EE9-D170-ECADDC822DBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 -0.24458187570296147 1 22.289223590421283
		 2 27.460895428019295 3 32.810857014717307 4 31.399218046757625 5 30.134446706867095
		 6 29.634329788135808 7 33.611205832064407 8 31.227054480261483 9 30.064910484382882
		 10 33.286840999006174 11 37.720996793250634 12 31.887197199990435 13 -0.24270983641675531
		 14 -43.010952851637441 15 -52.16361559351018 16 -23.718876591876509 17 -31.792847785112446
		 21 -46.24974063233195 22 -45.269819176640468 23 -28.613769041859577 24 -1.980154138916379
		 25 4.8478566086581854 26 -1.2359459169986231 27 -3.0565204846428533 28 -1.0880686223093003
		 29 -0.49762534041943823 30 -0.32049484602161649;
createNode animCurveTA -n "CURVE912";
	rename -uid "4FA3478D-4C0F-DC84-E534-8B8646EAF1D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0.00050819675513656356 1 1.4157444396191945
		 2 1.0335315743718407 3 0.742317831142014 4 0.86838892700146342 5 0.97330208756386472
		 6 2.0266603476490506 7 -0.086658415511317435 8 0.5357046828014338 9 1.5909187986183495
		 10 0.5285708223169524 11 0.37672473174162346 12 0.78432057177624848 13 4.0237889829012232
		 14 -1.6593860461538112 15 -4.0780210909574812 16 1.5298650402498413 17 -0.17077354974038131
		 21 2.7245514637806005 22 -0.49276103786606174 23 -0.21623628317108926 24 0.022167455586262215
		 25 0.0029338699361693551 26 0.010245371735379573 27 0.0067509063437464463 28 0.0023791558152678016
		 29 0.0010694172041148177 30 0.00067655951854373787;
createNode animCurveTL -n "CURVE914";
	rename -uid "91502EC3-4BA3-1E67-B373-C590DDCBE32E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE915";
	rename -uid "7293ADAC-4A6A-1DF9-A5C3-53AAF5A14399";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE916";
	rename -uid "B28AC3BF-41DA-A9D3-AEE7-5686E2F71D1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE917";
	rename -uid "FFE47D3B-4D0C-6DC4-36AC-B68AFA487C5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE918";
	rename -uid "438A536F-4EC4-75C9-2C40-78B25B2AFDC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE919";
	rename -uid "5FBB302A-4E8E-8EE6-4547-3681DE489392";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE920";
	rename -uid "748CF428-4230-B0BC-0A7B-8A9A33EBB657";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE921";
	rename -uid "55176E3A-4219-8A8C-3DB4-5383F592C724";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE922";
	rename -uid "784CCB90-4528-28D8-7440-DDA03E4ACAB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE924";
	rename -uid "DC236769-438C-BF30-5657-478FD59A43AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE925";
	rename -uid "89E59360-4768-1FF5-DB21-E88A3985B50A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE926";
	rename -uid "F67FAE7B-4B3B-EA80-CEF2-929DC3E27621";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE928";
	rename -uid "25D611A4-40CE-1E78-BC0C-C3B27AB6CADC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE929";
	rename -uid "CB24D982-45DD-A63F-A872-A4A6D869CF7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0.30934934514813461 15 0.27841441063332117
		 17 -0.51480632577259944 24 -0.51480632577259944 27 -0.16024699873262666 29 -0.12085151795040744;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE930";
	rename -uid "14E9419B-4D6F-F2AF-0ED7-D885328DCD57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE931";
	rename -uid "7A06CB14-4ACC-DF99-1F48-839161BD767A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE932";
	rename -uid "82E75982-4487-1E54-ADEE-5483CE346BF3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE933";
	rename -uid "9807F1A0-4E2A-36A5-B9E4-B58582D6439D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE934";
	rename -uid "F799375E-4DC9-D22A-460F-11882EF93457";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE935";
	rename -uid "B57640ED-4F79-0B53-D856-12A17412B11C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE936";
	rename -uid "DFB48F6D-41A1-8E1D-4452-23BF6BE59239";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE937";
	rename -uid "640B85FA-4422-3019-09CD-32BB85A71836";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE938";
	rename -uid "EA358AA6-4A84-8748-2D0C-89A8B110F05D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE940";
	rename -uid "AE4E980F-4544-8C09-4929-D9B8BC9FBFD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE941";
	rename -uid "A066EF38-4EE7-2F3B-AC46-D69BD800F8CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE942";
	rename -uid "2A82E466-454D-CEA1-A28A-D5BE36B6E12F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE943";
	rename -uid "2ED2AF93-4831-69E6-A99C-7A8579A7CDB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE944";
	rename -uid "2D3771E6-42B2-6BE8-693E-56B29CAD0D01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE945";
	rename -uid "D766ED74-4A65-20BB-1D45-C4989404AA1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE947";
	rename -uid "646AA062-43E0-9734-3CCB-FD87FF2CC7EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE948";
	rename -uid "2AE91106-4DDC-3CED-9C88-2898838DB931";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE949";
	rename -uid "D7A9428B-40E0-1265-0E76-66A56AC47CA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE950";
	rename -uid "457B0C27-45F1-8A49-56DF-219653B79FF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE951";
	rename -uid "EE25387A-41E6-8848-948C-B1AD2B412AD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE952";
	rename -uid "2F6C5B6B-4D85-D628-FE10-49A4043CE068";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE953";
	rename -uid "4EF3EA25-46FF-5321-14C8-67A748FAEE85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE954";
	rename -uid "C6813618-4221-4531-CF14-86956C6C9605";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE955";
	rename -uid "D57933E0-4823-A2C1-258D-34BEEC07592A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE957";
	rename -uid "81A08253-46FB-6A58-1506-8E884E59199A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE958";
	rename -uid "A7F87CE7-4CB6-BDBB-8D44-2CAB38575BA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE959";
	rename -uid "EFFF4940-46AB-B1C5-E309-139964ADD66E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE961";
	rename -uid "DCF0DBA1-4D45-B17D-8E27-0099D2158321";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 -1.5154220690005531 20 -6.5769317794623987 21 -9.3865242953894157
		 22 -9.6987012416035281;
	setAttr -s 20 ".kyts[18:19]" yes no;
createNode animCurveTA -n "CURVE962";
	rename -uid "BFCA787E-49CF-8259-26AC-77BF5DA01115";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE963";
	rename -uid "4ED809F5-4DAE-1DAF-1DA7-B99A607A6EA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE964";
	rename -uid "96CA7D7D-42D3-6ECA-F730-21B58CD5AA7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE966";
	rename -uid "5D0E4D49-490D-9281-8F1F-BDA4220E54D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE967";
	rename -uid "DE499263-47E9-9FCD-8010-62A3E1AC47DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE968";
	rename -uid "8F1D193C-4749-9598-D3F0-0FA6EBC32C4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE969";
	rename -uid "56F329B7-402D-3FB8-7BB6-6CBC624C0D96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE970";
	rename -uid "F1BF2B80-45B3-0AC1-E8EF-C082CA45886B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE971";
	rename -uid "0CCBA46D-48C0-014E-833E-C4901AD14D11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE972";
	rename -uid "A5E6BAD5-4689-3797-3A36-B49FBE1CE133";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.1612403310172905 1 1.1612403310172905
		 2 1.1612403310172905 3 1.1612403310172905 4 1.1612403310172905 5 1.1612403310172905
		 6 1.1612403310172905 7 1.1612403310172905 8 1.1612403310172905 9 1.1612403310172905
		 10 1.1612403310172905 11 1.1612403310172905 13 0 17 0 20 -0.66953471551856902 22 0.51150982325010741
		 24 -1.4702207227396082 27 -0.46058487793583075 30 -0.93985124452438429;
createNode animCurveTA -n "CURVE973";
	rename -uid "C87B8D3F-4C3E-9E0F-11E8-A793CBB37F90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.0179844702118932 1 -2.0179844702118932
		 2 -2.0179844702118932 3 -2.0179844702118932 4 -2.0179844702118932 5 -2.0179844702118932
		 6 -2.0179844702118932 7 -2.0179844702118932 8 -2.0179844702118932 9 -2.0179844702118932
		 10 -2.0179844702118932 11 -2.0179844702118932 13 0 17 0 20 -3.8650661189239601 22 -3.8890991635741248
		 24 -3.6369888398867962 27 -3.8954487786905712 30 -3.8084529155853182;
createNode animCurveTA -n "CURVE974";
	rename -uid "7FD9999E-4219-D424-413D-E287310039ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -55.518995782593379 1 -55.518995782593379
		 2 -55.518995782593379 3 -55.518995782593379 4 -55.518995782593379 5 -55.518995782593379
		 6 -55.518995782593379 7 -55.518995782593379 8 -55.518995782593379 9 -55.518995782593379
		 10 -55.518995782593379 11 -55.518995782593379 13 8.9805868613495079 17 8.9805868613495132
		 20 1.8113542084002823 22 -15.522709268031839 24 14.004276001156891 27 -1.2756096845151741
		 30 5.8494462513032364;
createNode animCurveTL -n "CURVE976";
	rename -uid "B3C78BC0-4BAC-7E3C-921A-70B9D7483226";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE977";
	rename -uid "909C3211-4CFA-4F6E-E89C-E99798D5807E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE978";
	rename -uid "6B774CC5-49C8-037B-E8C0-64AD4471A2BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE979";
	rename -uid "2865C37F-4F57-22B2-6E0E-0A92CF1D92F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE980";
	rename -uid "189ECCD5-4EB5-4918-2C2F-669B44474A46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE981";
	rename -uid "CF1B3523-431B-4332-9848-7DBE2814803C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE982";
	rename -uid "762181E6-4058-4FB0-8779-9CB8AB87EDF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.299294202861847 1 1.299294202861847
		 2 1.299294202861847 3 1.299294202861847 4 1.299294202861847 5 1.299294202861847 6 1.299294202861847
		 7 1.299294202861847 8 1.299294202861847 9 1.299294202861847 10 1.299294202861847
		 11 1.299294202861847 13 0 17 0 20 -0.19297624054043855 22 -0.28047898517373038 24 -0.12040700043746168
		 27 -0.21008995372834871 30 -0.16975338178469082;
createNode animCurveTA -n "CURVE983";
	rename -uid "EC0B46FB-4D83-165D-498B-179F8E319709";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.7368249534599136 1 -1.7368249534599136
		 2 -1.7368249534599136 3 -1.7368249534599136 4 -1.7368249534599136 5 -1.7368249534599136
		 6 -1.7368249534599136 7 -1.7368249534599136 8 -1.7368249534599136 9 -1.7368249534599136
		 10 -1.7368249534599136 11 -1.7368249534599136 13 0 17 0 20 0.32369481189684429 22 0.25169388028647988
		 24 0.35709957495210159 27 0.31285845757819042 30 0.33645487819600239;
createNode animCurveTA -n "CURVE984";
	rename -uid "501F0AC7-4B94-166B-EEAD-F4AB0DFF9BA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -55.555255690280639 1 -55.555255690280639
		 2 -55.555255690280639 3 -55.555255690280639 4 -55.555255690280639 5 -55.555255690280639
		 6 -55.555255690280639 7 -55.555255690280639 8 -55.555255690280639 9 -55.555255690280639
		 10 -55.555255690280639 11 -55.555255690280639 13 13.981899745578964 17 13.981899745578961
		 20 -3.1555875623886656 22 -20.449763568081202 24 9.0134145762844344 27 -6.2356516606060497
		 30 0.87389459974954431;
createNode animCurveTL -n "CURVE986";
	rename -uid "C17793DE-445E-2F96-0A41-F584AE872BCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE987";
	rename -uid "3A652CBF-4D40-3ECA-0C2D-D49305B0FEC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE988";
	rename -uid "E02EDDC0-4A30-7C24-FB74-F685AF68C7C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE989";
	rename -uid "B9A08A09-48EB-5DE6-739F-719FE36567BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE990";
	rename -uid "D34E6480-4DD7-B855-BC21-5AAE3AF4DBA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE991";
	rename -uid "B6BB3E58-4FFA-8087-F7F4-828643E0D5C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE992";
	rename -uid "8C17CDDB-420F-8CF0-B745-F1A87D734A2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.0073308671294629582 1 0.0073308671294629582
		 2 0.0073308671294629582 3 0.0073308671294629582 4 0.0073308671294629582 5 0.0073308671294629582
		 6 0.0073308671294629582 7 0.0073308671294629582 8 0.0073308671294629582 9 0.0073308671294629582
		 10 0.0073308671294629582 11 0.0073308671294629582 13 17.66497488649108 17 17.66497488649108
		 20 37.028262095520134 22 37.028262095520134;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE993";
	rename -uid "CA354E57-46A9-4E0C-35F5-11AA46ED2BA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 27.725075825355617 1 27.725075825355617
		 2 27.725075825355617 3 27.725075825355617 4 27.725075825355617 5 27.725075825355617
		 6 27.725075825355617 7 27.725075825355617 8 27.725075825355617 9 27.725075825355617
		 10 27.725075825355617 11 27.725075825355617 13 9.2384139461291852 17 9.2384139461291852
		 20 -3.0696729986939002 22 -3.0696729986939002;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE994";
	rename -uid "9CF2A902-4B30-5953-3ADE-919683B649FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 10.310549983406517 1 10.310549983406517
		 2 10.310549983406517 3 10.310549983406517 4 10.310549983406517 5 10.310549983406517
		 6 10.310549983406517 7 10.310549983406517 8 10.310549983406517 9 10.310549983406517
		 10 10.310549983406517 11 10.310549983406517 13 0 17 0 20 43.179868612410999 22 43.179868612410999;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE995";
	rename -uid "C6EE5769-42ED-361B-59CB-EABB7D0E0D8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE997";
	rename -uid "E21DBAED-430C-63FE-3483-3E9C4B822756";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 8 1 12 1 13 1 15 1 19 1 21 1;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTU -n "CURVE998";
	rename -uid "0571906B-498C-68A1-8137-7D80454A64C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 5 1 5 2 5 3 5 4 5 5 5 6 5 7 5 8 5 9 5
		 11 5 12 5 13 5 15 5 19 5 21 5;
	setAttr -s 16 ".kyts[15]" yes;
createNode animCurveTL -n "CURVE999";
	rename -uid "25D3143A-4757-99EF-F70D-D49C7B1B384D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 11 0 12 0 13 0 15 0 19 0 21 0;
	setAttr -s 16 ".kyts[15]" yes;
createNode animCurveTL -n "CURVE1000";
	rename -uid "57799C51-4ABF-DDEC-1500-CE97D665DF21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -0.89366689832830237 1 -0.88395167774650918
		 2 -0.87559586891988039 3 -0.89861196784259068 4 -0.89160839915249723 5 -0.88165595420365594
		 6 -0.87568449290277361 7 -0.90072638699207674 8 -0.89366689832830237 9 -0.88395167774650918
		 11 -0.89861196784259068 12 0 13 0 15 0 19 0 21 0;
	setAttr -s 16 ".kyts[15]" yes;
createNode animCurveTL -n "CURVE1001";
	rename -uid "10503B29-4D4A-67B1-B4F5-1FA2C932667B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 11 0 12 0 13 0 15 0 19 0 21 0;
createNode animCurveTU -n "CURVE1002";
	rename -uid "BAC68F32-4485-9207-5D04-268DCF7F2573";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 10 1 10 2 10 3 10 4 10 5 10 6 10 7 10
		 8 10 9 10 11 10 12 10 13 10 15 10 19 10 21 10;
	setAttr -s 16 ".kyts[15]" yes;
createNode animCurveTU -n "CURVE1003";
	rename -uid "82D7556E-4E5E-0063-5488-F19D523B0A8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.5 8 0.5 12 0.5 13 0.5 15 0.5 19 0.5
		 21 0.5;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTU -n "CURVE1004";
	rename -uid "912D842F-499C-26AE-8D35-43AC8F4412D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 11 1 12 1 13 1 15 1 19 1 21 1;
	setAttr -s 16 ".kyts[15]" yes;
createNode animCurveTU -n "CURVE1005";
	rename -uid "C01CC24D-4B81-699A-47FB-01BCDB9A79EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 11 1 12 1 13 1 15 1 19 1 21 1;
	setAttr -s 16 ".kyts[15]" yes;
createNode animCurveTU -n "CURVE1006";
	rename -uid "11732BE1-4FDE-7C58-5965-12BA99B3414F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 11 1 12 1 13 1 15 1 19 1 21 1;
	setAttr -s 16 ".kyts[15]" yes;
createNode animCurveTU -n "CURVE1007";
	rename -uid "0AE1EF70-4FFC-20A9-907C-D1B74D3C50F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 5 1 5 2 5 3 5 4 5 5 5 6 5 7 5 8 5 9 5
		 11 5 12 5 13 5 15 5 19 5 21 5;
	setAttr -s 16 ".kyts[15]" yes;
	setAttr -s 16 ".kit[11:15]"  9 18 18 18 18;
	setAttr -s 16 ".kot[11:15]"  5 18 18 18 18;
createNode animCurveTA -n "CURVE1008";
	rename -uid "521E3FA6-48EB-C56B-2E6B-0AABF5081E34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -0.5 1 -0.41493054916743188 2 -0.24074072749526343
		 3 0.45850480148192357 4 0.5 5 0.42592587625538747 6 0.22296298995931002 7 -0.46241975072887104
		 8 -0.5 9 -0.41493054916743188 11 0.44320137300562396 12 0.25099626449523466 13 -0.51064533360049058
		 15 -0.79628947404627903 19 -0.64287161787055558 21 -0.78330290619717724 23 -1.1895569150238623
		 25 -1.0183403469750392 27 -1.105219847427853;
createNode animCurveTA -n "CURVE1009";
	rename -uid "8594A44C-4BA7-0FF7-60A0-5C8753C5E4D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.26246910950280772 1 0.016798727961070119
		 2 -0.1906914091486091 3 -0.31022287207217231 4 -0.18141930704814813 5 0.016798727961070119
		 6 0.21904220175644215 7 0.3606224194201979 8 0.26246910950280772 9 0.016798727961070119
		 11 -0.3088680647711235 12 -0.16984102018880756 13 0.36919432995120738 15 0.51838740134035899
		 19 0.42953311091905932 21 0.50914236548723968 23 0.84736632910475918 25 0.69598717779077224
		 27 0.77176517169984082;
createNode animCurveTA -n "CURVE1010";
	rename -uid "25640F85-4DF2-861B-28FF-06A3C0DD4406";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -6.7797188743833861 1 -6.9398960053211161
		 2 -6.9866857335073087 3 -6.4883578342332449 4 -6.6562907619014897 5 -6.8164678928392215
		 6 -6.9188270636548701 7 -6.488 8 -6.7797188743833861 9 -6.9398960053211161 11 -3.6666045966280549
		 12 -4.4377675307589888 13 -13.945199862073755 15 -46.273910960448589 23 -59.682400242140467
		 25 -56.697025315190714 27 -58.35819739052652;
createNode animCurveTU -n "CURVE1011";
	rename -uid "148BD54B-43B6-523A-A1D8-68AFD5CE3716";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 11 1 12 1 13 1 15 1 19 1 21 1;
	setAttr -s 16 ".kyts[15]" yes;
	setAttr -s 16 ".kit[11:15]"  9 18 18 18 18;
	setAttr -s 16 ".kot[11:15]"  5 18 18 18 18;
createNode animCurveTU -n "CURVE1012";
	rename -uid "08E999FF-409D-8108-8A49-648DF39CFDB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.5 8 0.5 12 0.5 13 0.5 15 0.5 19 0.5
		 21 0.5;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTL -n "CURVE1014";
	rename -uid "2A02CE80-4534-E80C-16F5-AA8532B8243E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1015";
	rename -uid "B29FCAA0-4B66-FF6A-130F-78A2F1565394";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1016";
	rename -uid "58C7A574-45B9-7B5B-C336-008D116CAFC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1017";
	rename -uid "826C8C2D-4328-7246-1B74-D0BCC7A4007A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1018";
	rename -uid "A33AD77B-40D1-0509-51E0-689B689BAC69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1019";
	rename -uid "64DBF855-4FF6-4080-ABAC-A6B94A8E177E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1020";
	rename -uid "AD4648D3-4483-6332-CAE5-50B8D3A285F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1021";
	rename -uid "1CC8F161-4028-18E1-5681-69ADACA8F423";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE1022";
	rename -uid "4770FBD8-4AB1-45EF-7BEE-A29EE7A06AE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1024";
	rename -uid "4E250008-4489-902F-AD5F-87909BE43118";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1025";
	rename -uid "7179AD5F-4D2F-0596-835B-6FA0106C99E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1026";
	rename -uid "7E1E5021-452A-9F32-819E-54B2345FCC81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1027";
	rename -uid "833499D9-4ADE-7126-B033-3EBF60BC1F23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1028";
	rename -uid "91EFA190-4B34-454D-8D34-7FB8023D1ABE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1029";
	rename -uid "171BF0C4-499F-FA98-E815-7283865A732E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1030";
	rename -uid "40781375-43A7-3FDA-4C40-AC8940B8292A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1031";
	rename -uid "4E55DC80-4171-D8AA-9F58-B8944E265C17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE1032";
	rename -uid "C0515B6C-4618-FCDA-5322-A2BD6FCCEAB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1034";
	rename -uid "7C842CD8-4894-9A49-73EA-BCA040392640";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1035";
	rename -uid "426C1E5F-4DDB-55F2-3D71-B6AB2046E17A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1036";
	rename -uid "1D666BE6-42A2-9281-1062-65B1275DE61C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1037";
	rename -uid "E7D5783F-4108-9CA1-83E2-D39812CF41D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1038";
	rename -uid "67239338-490C-178C-F409-449892569E47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1039";
	rename -uid "E09830CC-4230-ED65-05C5-0AAFA3737B2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1040";
	rename -uid "2184A571-4831-EDA2-30A2-93BE55B0B332";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.0011401916485129424 1 0.0011401916485129424
		 2 0.0011401916485129424 3 0.0011401916485129424 4 0.0011401916485129424 5 0.0011401916485129424
		 6 0.0011401916485129424 7 0.0011401916485129424 8 0.0011401916485129424 9 0.0011401916485129424
		 10 0.0011401916485129424 11 0.0011401916485129424 13 0 17 0 20 5.8186857274252572
		 22 5.8186857274252572;
createNode animCurveTA -n "CURVE1041";
	rename -uid "A2E53C0B-4729-6C98-ED5D-1BA3C323A1B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 11.940934559386662 1 11.940934559386662
		 2 11.940934559386662 3 11.940934559386662 4 11.940934559386662 5 11.940934559386662
		 6 11.940934559386662 7 11.940934559386662 8 11.940934559386662 9 11.940934559386662
		 10 11.940934559386662 11 11.940934559386662 13 -7.3745208630627426 17 -7.3745208630627426
		 20 1.5551130822104862 22 1.5551130822104862;
createNode animCurveTA -n "CURVE1042";
	rename -uid "2363700A-4BAC-9CA8-4CB3-598688210317";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -0.001232047838077727 1 -0.001232047838077727
		 2 -0.001232047838077727 3 -0.001232047838077727 4 -0.001232047838077727 5 -0.001232047838077727
		 6 -0.001232047838077727 7 -0.001232047838077727 8 -0.001232047838077727 9 -0.001232047838077727
		 10 -0.001232047838077727 11 -0.001232047838077727 13 6.9289262578342301 17 6.9289262578342301
		 20 10.46422100851782 22 10.46422100851782;
createNode animCurveTL -n "CURVE1044";
	rename -uid "15C9E721-4F6C-83BF-1E07-F4A69DC72836";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1045";
	rename -uid "C5596BDA-4ABB-116C-C582-ED83957499BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1046";
	rename -uid "FC6AB2C4-4350-F17C-CECE-A28345BF9534";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1047";
	rename -uid "806F6C9A-4136-52FE-1A97-59913C2953A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1048";
	rename -uid "43DC9B02-4123-CB3F-468D-F3AF13028A92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1049";
	rename -uid "CC99AFA8-4D80-2BB0-8221-8E94B9D5D8DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1050";
	rename -uid "8F105CC5-4392-6971-009C-77BCAC9E40E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1051";
	rename -uid "AB9349BC-42F8-FCE0-8145-FCA2703F7768";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE1052";
	rename -uid "7D3A39C8-4E43-20D2-F616-328E0A0FA742";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1054";
	rename -uid "D718DA2D-47A2-72C1-4CAB-88AEA7A15AC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 1 -1.4210854715202004e-014 2 -2.1316282072803006e-014
		 3 -7.1054273576010019e-015 4 -1.4210854715202004e-014 5 -1.4210854715202004e-014
		 6 -2.1316282072803006e-014 7 -7.1054273576010019e-015 8 -2.8421709430404007e-014
		 9 -7.1054273576010019e-015 10 -1.4210854715202004e-014 11 0 12 -1.4210854715202004e-014
		 13 -1.4210854715202004e-014 14 -2.1316282072803006e-014 15 -2.1316282072803006e-014
		 16 -2.1316282072803006e-014 17 -2.8421709430404007e-014 21 -2.1316282072803006e-014
		 22 -2.1316282072803006e-014 23 -7.1054273576010019e-015 24 -1.4210854715202004e-014
		 25 -7.1054273576010019e-015 26 -2.1316282072803006e-014 27 7.1054273576010019e-015
		 28 -7.1054273576010019e-015 29 -7.1054273576010019e-015 30 -7.1054273576010019e-015;
createNode animCurveTL -n "CURVE1055";
	rename -uid "957ACD0A-413B-521A-0AD9-0E8C565B78C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 -1.6653345369377348e-015 1 -4.1078251911130792e-015
		 2 -2.8310687127941492e-015 3 -2.7200464103316335e-015 4 -5.2735593669694936e-016
		 5 -2.6645352591003757e-015 6 -6.6613381477509392e-016 7 -2.2204460492503131e-016
		 8 -1.27675647831893e-015 9 -3.1641356201816961e-015 10 4.4408920985006262e-016 11 -2.3314683517128287e-015
		 12 -9.9920072216264089e-016 13 -2.6645352591003757e-015 14 -1.3322676295501878e-015
		 15 -1.3322676295501878e-015 16 1.3322676295501878e-015 17 -1.4432899320127035e-015
		 21 2.2204460492503131e-016 22 -8.8817841970012523e-016 23 -1.4363510381087963e-015
		 24 -3.6637359812630166e-015 25 -4.4408920985006262e-015 26 -3.9968028886505635e-015
		 27 -1.6653345369377348e-015 28 -1.8873791418627661e-015 29 -4.4408920985006262e-016
		 30 -3.219646771412954e-015;
createNode animCurveTL -n "CURVE1056";
	rename -uid "E3BC618A-4AE3-E95E-0CE1-44B1E06816FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1.7763568394002505e-015 1 -3.5527136788005009e-015
		 2 3.5527136788005009e-015 3 7.1054273576010019e-015 4 7.1054273576010019e-015 5 3.5527136788005009e-015
		 6 -3.5527136788005009e-015 7 7.1054273576010019e-015 8 0 9 3.5527136788005009e-015
		 10 0 11 3.5527136788005009e-015 12 0 13 8.8817841970012523e-016 14 3.5527136788005009e-015
		 15 -3.5527136788005009e-015 16 -1.7763568394002505e-015 17 -3.5527136788005009e-015
		 21 3.5527136788005009e-015 22 -3.5527136788005009e-015 23 -3.5527136788005009e-015
		 24 -4.4408920985006262e-016 25 0 26 -8.8817841970012523e-016 27 0 28 0 29 1.7763568394002505e-015
		 30 8.8817841970012523e-016;
createNode animCurveTA -n "CURVE1057";
	rename -uid "7C586063-4085-97B7-551B-C2835FE43DC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 -7.5118862276557773e-015 1 -1.2649227480722824e-014
		 2 -5.5349105882499876e-015 3 -1.978528644621348e-015 4 -3.975693351829396e-016 5 -6.7198535677210139e-015
		 6 -1.0672251841317035e-014 7 -1.5809593094384082e-014 8 -1.5019113439664877e-014
		 9 -7.9063495524075992e-015 10 -3.955504284027137e-015 11 -5.5364635934655458e-015
		 12 -1.1464284501251797e-014 13 -8.3008128771594227e-015 14 -7.1174229029039538e-015
		 15 -3.9912234039849796e-016 16 -4.7459839387463414e-015 17 -5.9309269182173685e-015
		 21 -9.487308861846008e-015 22 -4.7459839387463414e-015 23 -5.1404472634981641e-015
		 24 -8.3023658823749809e-015 25 -7.9063495524075992e-015 26 -8.6968292071268044e-015
		 27 -8.3008128771594227e-015 28 -8.3008128771594227e-015 29 -8.3008128771594227e-015
		 30 -8.6983822123423627e-015;
createNode animCurveTA -n "CURVE1058";
	rename -uid "84181830-4F44-7C2C-72F6-FFB5630E5CCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1.1430118386509521e-015 1 1.9133024255678991e-015
		 2 8.4483483726374699e-016 3 2.9817700138720499e-016 4 4.9696166897867493e-017 5 1.0187714214062833e-015
		 6 1.6151254241806935e-015 7 2.4102640945465737e-015 8 2.3108717607508391e-015 9 1.1927080055488196e-015
		 10 5.9635400277440979e-016 11 8.1998675381481343e-016 12 1.7145177579764277e-015
		 13 1.2424041724466877e-015 14 1.0684675883041504e-015 15 2.4848083448933746e-017
		 16 6.9574633657014479e-016 17 8.9453100416161439e-016 21 1.4411888400381563e-015
		 22 6.9574633657014469e-016 23 7.7029058691694594e-016 24 1.2424041724466871e-015
		 25 1.1927080055488192e-015 26 1.3169484227934875e-015 27 1.2672522558956206e-015
		 28 1.2672522558956206e-015 29 1.2672522558956206e-015 30 1.3169484227934883e-015;
createNode animCurveTA -n "CURVE1059";
	rename -uid "F6FD56CA-44ED-46C5-1FAA-29AB5D03190F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 9.5439935522138877e-015 1 2.0679429199071203e-014
		 2 6.3626623681425918e-015 3 1.7498098014999906e-014 4 1.1135047395553425e-014 5 1.1135047395553425e-014
		 6 1.4316766830928611e-014 7 1.9088763607035556e-014 8 2.0679817450375094e-014 9 1.2726101238892963e-014
		 10 1.1135047395553425e-014 11 1.2725712987589074e-014 12 6.3622741168387022e-015
		 13 1.9089151858339443e-014 14 3.1805546814635168e-015 15 6.3622741168387022e-015
		 16 1.2725712987589074e-014 17 7.9533279601782405e-015 21 1.5898890894278686e-015
		 22 7.9533279601782405e-015 23 9.544381803517778e-015 24 1.2725712987589074e-014 25 6.3626623681425918e-015
		 26 3.1809429327674063e-015 27 9.544381803517778e-015 28 9.544381803517778e-015 29 9.544381803517778e-015
		 30 1.2725712987589074e-014;
createNode animCurveTL -n "CURVE1061";
	rename -uid "98BEF5FF-4B13-194D-237A-3F8AF5C4C41C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1062";
	rename -uid "A5DB9501-41EB-ED4C-0CF1-D7A8B3842705";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1063";
	rename -uid "6639F815-4FE3-3EE5-39C3-FDB3F04B496C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1064";
	rename -uid "3E107425-42E1-83B8-9975-70BBD8D893E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1065";
	rename -uid "3892661E-43EA-8DC3-5A7A-94B18B9D41B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1066";
	rename -uid "917CF145-4D85-8D29-1A28-31A93CCF2015";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1067";
	rename -uid "A230E56E-4D1C-F88F-792B-42B159C698B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.81698611148474898 1 0.81698611148474898
		 2 0.81698611148474898 3 0.81698611148474898 4 0.81698611148474898 5 0.81698611148474898
		 6 0.81698611148474898 7 0.81698611148474898 8 0.81698611148474898 9 0.81698611148474898
		 10 0.81698611148474898 11 0.81698611148474898 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1068";
	rename -uid "24BF61E2-4A9A-C7DD-1C8A-C793640E8E4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -2.0483849095097799 1 -2.0483849095097799
		 2 -2.0483849095097799 3 -2.0483849095097799 4 -2.0483849095097799 5 -2.0483849095097799
		 6 -2.0483849095097799 7 -2.0483849095097799 8 -2.0483849095097799 9 -2.0483849095097799
		 10 -2.0483849095097799 11 -2.0483849095097799 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1069";
	rename -uid "A65EEA69-4453-59AB-FCF7-83B9A3ABC245";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -55.5521554466034 1 -55.5521554466034
		 2 -55.5521554466034 3 -55.5521554466034 4 -55.5521554466034 5 -55.5521554466034 6 -55.5521554466034
		 7 -55.5521554466034 8 -55.5521554466034 9 -55.5521554466034 10 -55.5521554466034
		 11 -55.5521554466034 13 18.419191807234366 17 18.419191807234366 20 2.7326230987381686
		 22 -14.561481963984269 24 14.901455345409165 27 -0.34741252423384905 30 6.7620585639484103;
createNode animCurveTL -n "CURVE1071";
	rename -uid "4CE26EB4-4E32-45AD-D05A-31B60A895E5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1072";
	rename -uid "A09AFE57-42C6-92B0-74B4-21A8C9074365";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1073";
	rename -uid "2AFDA21B-4E79-9A0E-0F17-FA83B49E9A43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1074";
	rename -uid "EB6E568F-498B-FC54-E396-9A89EC175AE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1075";
	rename -uid "F0FD8507-429E-42E8-94DC-B1A75F5255DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1076";
	rename -uid "1FC73E9A-48D9-E302-2AFA-3188E2E4A348";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1077";
	rename -uid "5E1FCB84-48AF-FF93-6366-D1B7E99E8EDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1078";
	rename -uid "94E59343-4658-3610-CEA0-13ACC5824FD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1079";
	rename -uid "C1D792EB-41E5-9783-2549-0382F7FACAB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1081";
	rename -uid "E244930F-4607-5064-E149-73B744F68CC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 14 0.0080409704506665819 19 0.0057230090597115363
		 22 -0.0036653036105735912 25 0;
createNode animCurveTL -n "CURVE1082";
	rename -uid "7FD7EAA7-4566-C0A3-5079-D394DF2D2D62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 14 -0.77907841551840407 19 -0.48524743587263464
		 22 0.087868391489055453 25 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  0.35448022517580979 0.34627557989682711 
		1 1;
	setAttr -s 5 ".kiy[1:4]"  -0.93506351119017961 0.93813283855065865 
		0 0;
	setAttr -s 5 ".kox[1:4]"  0.35448028976848744 0.34627557989682711 
		1 1;
	setAttr -s 5 ".koy[1:4]"  -0.93506348670325545 0.93813283855065877 
		0 0;
createNode animCurveTL -n "CURVE1083";
	rename -uid "2C019834-4B74-663B-C520-418526FB6B8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 14 1.1021860354724788 19 0.2720609409446566
		 22 -0.50194482957979392 25 0;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.10327971112036882 1 1;
	setAttr -s 5 ".kiy[2:4]"  -0.99465235196569723 0 0;
	setAttr -s 5 ".kox[2:4]"  0.10327970466132454 1 1;
	setAttr -s 5 ".koy[2:4]"  -0.99465235263637197 0 0;
createNode animCurveTU -n "CURVE1084";
	rename -uid "C8876ED0-4BC0-CDC5-D055-7C8D84DA2E06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0.3;
createNode animCurveTU -n "CURVE1085";
	rename -uid "9B927167-4623-6D6F-D2E8-8C8DE3B36605";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0.5;
createNode animCurveTA -n "CURVE1086";
	rename -uid "4E1D9E3C-4D85-1CEF-93B2-E9AF50AB4FD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "CURVE1087";
	rename -uid "285CBACB-485B-9A7A-0CA8-0AB79E0C77F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "CURVE1088";
	rename -uid "EBDC0F13-415A-48A1-B15E-C5A43E340E0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "CURVE1089";
	rename -uid "68229151-4CEB-0A24-95BA-AB86BD7D9144";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0.1;
createNode animCurveTL -n "CURVE1091";
	rename -uid "8E75DC30-4B9C-9E5D-CED7-C89CE3B5458A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1092";
	rename -uid "5DF99331-42D3-44F2-A96C-07A189A2CEE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1093";
	rename -uid "CFA2FDEF-41D9-3C84-C924-CFA28E74E2BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1094";
	rename -uid "59D3EA81-47DF-440B-6EBE-21A145D7F01E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1095";
	rename -uid "0F5ECBF8-468A-6B1D-7FDC-02A8FB1CFCD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1096";
	rename -uid "61155967-4EBE-551F-2190-669361C7AE53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1097";
	rename -uid "69D5832E-4989-0B90-1D22-D6B52E4F1B9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.406927725182894 1 1.406927725182894
		 2 1.406927725182894 3 1.406927725182894 4 1.406927725182894 5 1.406927725182894 6 1.406927725182894
		 7 1.406927725182894 8 1.406927725182894 9 1.406927725182894 10 1.406927725182894
		 11 1.406927725182894 13 0 17 0 20 -0.21049674364214363 22 -0.29390454475051919 24 -0.13987584779722217
		 27 -0.22698817001832414 30 -0.1880113006963815;
createNode animCurveTA -n "CURVE1098";
	rename -uid "7E4C9E78-4E64-A6A0-1DE0-14A057D489DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -1.4472692582559255 1 -1.4472692582559255
		 2 -1.4472692582559255 3 -1.4472692582559255 4 -1.4472692582559255 5 -1.4472692582559255
		 6 -1.4472692582559255 7 -1.4472692582559255 8 -1.4472692582559255 9 -1.4472692582559255
		 10 -1.4472692582559255 11 -1.4472692582559255 13 0 17 0 20 0.31258490583767617 22 0.23587786970117611
		 24 0.34993249822036993 27 0.30082321544089263 30 0.32660357700440285;
createNode animCurveTA -n "CURVE1099";
	rename -uid "C1B9D5A5-401E-72E3-B8C9-42ABE13CE9B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -55.588924694720085 1 -55.588924694720085
		 2 -55.588924694720085 3 -55.588924694720085 4 -55.588924694720085 5 -55.588924694720085
		 6 -55.588924694720085 7 -55.588924694720085 8 -55.588924694720085 9 -55.588924694720085
		 10 -55.588924694720085 11 -55.588924694720085 13 9.5049667464280034 17 9.5049667464280034
		 20 3.15557958649477 22 -14.138556259348798 24 15.324558886411385 27 0.075522275927552784
		 30 7.1850533874893729;
createNode animCurveTA -n "CURVE1101";
	rename -uid "214C623C-4E12-AA1E-A77F-E5BCF2C14D18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 24.862772166400539 1 26.378014489684507
		 2 30.773683563665895 3 69.215639693686654 4 89.949239198964023 5 90.990242340339577
		 6 79.239771547913733 7 29.549347762837602 8 24.862772166400539 9 26.378014489684507
		 10 30.773683563665895 11 69.215639693686654 12 89.949239198964023 13 128.6671405799523
		 14 131.58629709740339 15 125.82717891845567 16 120.58771640714129 17 117.62677414181114
		 18 103.06068196902444 19 72.317130795153545 20 45.600518081668731 21 18.978411844439602
		 22 13.163485940813478 23 14.327881547282463 24 16.989154041597228 25 18.96399622936368
		 26 17.487075586728135 27 13.901507602881601 28 11.249439068014821 29 12.81450441795411
		 30 13.719944892439974 31 12.856073575540512 32 12.227202227398294;
createNode animCurveTL -n "CURVE1102";
	rename -uid "D23C849D-44F5-253D-D6C6-EDB067E8A4F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -7.4859426326575464 1 -7.5665895773174734
		 2 -7.5055832573172152 3 -6.2362010158982546 4 -5.902289748075586 5 -5.70711963040449
		 6 -5.5867443964205021 7 -7.0326859700747013 8 -7.4859426326575464 9 -7.5665895773174734
		 10 -7.5055832573172152 11 -6.2362010158982546 12 -5.9022897480755878 13 -2.2496982062655206
		 14 -1.6342414754016819 15 -1.4048398452715407 16 -1.1442923139097658 17 -0.94345833072711827
		 18 -0.65868377313519666 19 -0.53098974225804874 20 -0.42336729225998937 21 -0.35108869702913026
		 22 -0.67331965599896293 23 -0.68743677286161819 24 -0.76508804548413067 25 -0.83420282458322959
		 26 -0.73898421275505299 27 -0.68537060316355358 28 -0.69158496926645441 29 -0.69904218348469982
		 30 -0.6891652891348734 31 -0.68160940094865197 32 -0.68160940094865197;
createNode animCurveTL -n "CURVE1103";
	rename -uid "42B3EB6C-48EA-0923-C79F-4F8D5A4DB578";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -3.9387109644282852 1 -4.246327234577203
		 2 -4.7427409250524288 3 -4.4997214105919827 4 -4.451575197461521 5 -4.5963954606984458
		 6 -4.8701791493647537 7 -4.1008971000754446 8 -3.9387109644282816 9 -4.246327234577203
		 10 -4.7427409250524324 11 -4.4997214105919792 12 -4.4515751974615103 13 -0.31168364700523554
		 14 3.0529227758094564 15 4.4562710964088339 16 2.5998643843104006 17 -0.4548819158110895
		 18 -4.1723924964282322 19 -8.3675175585558179 20 -11.581266830491938 21 -17.438188477812133
		 22 -19.002737002988368 23 -18.74643171768804 24 -18.272989989249638 25 -18.02182834767936
		 26 -18.393050669671748 27 -18.769471404055324 28 -18.704659243103023 29 -18.639898462670462
		 30 -18.728384876784958 31 -18.816952692409718 32 -18.816952692409718;
createNode animCurveTL -n "CURVE1104";
	rename -uid "87D9BB1F-4420-7FF2-7521-6CA48169EACC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 6.1912285470495521 1 6.0871342135799544
		 2 5.76314810051813 3 4.6218268328022365 4 4.3118134919783238 5 4.4531996339938438
		 6 4.8610392279092665 7 5.931184698389611 8 6.1912285470495583 9 6.0871342135799509
		 10 5.7631481005181371 11 4.6218268328022418 12 4.3118134919783273 13 6.9526648657746009
		 14 5.3430494738914902 15 0.1248035587437073 16 -4.768672907034599 17 -7.9179835552411859
		 18 -7.1496651600515762 19 -5.3622586054631043 20 -4.8024176703112786 21 -6.5089286787851677
		 22 -6.1780844216355533 23 -6.1185872948034685 24 -6.2958246956441073 25 -6.3856343583050403
		 26 -6.2518468604870421 27 -6.1097036139045642 28 -6.1346332928842529 29 -6.1593548365510031
		 30 -6.1255292047886201 31 -6.0913206900862775 32 -6.0913206900862775;
createNode animCurveTU -n "CURVE1105";
	rename -uid "79C4F4F1-411D-6B5D-7342-D1BD5A21C16F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1106";
	rename -uid "DD01CB06-4FAF-227E-F8D8-28B4E533C033";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 100 8 100 12 100 13 100 17 100 20 100
		 22 100;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1107";
	rename -uid "B7284BCE-4F19-8365-64AB-6A85A62B7B32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1108";
	rename -uid "33023657-4755-31DC-A70F-B79E05639A46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "CURVE1109";
	rename -uid "569366BB-474B-3821-1898-6FB553DE05E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 8 1 12 1 13 1 17 1 20 1 22 1;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1110";
	rename -uid "B324E6AE-4D36-8FDB-F80A-A2AC608A6E92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -59.524211775660952 1 -61.413677858717861
		 2 -64.915348224815205 3 -96.512176792425436 4 -116.02077485511158 5 -116.01360853032378
		 6 -103.92303026280111 7 -62.34903553544131 8 -59.524211775660952 9 -61.413677858717861
		 10 -64.915348224815205 11 -96.512176792425436 12 -116.02077485511158 13 -113.74059020561863
		 14 -117.54741322516209 15 -122.70542110178232 16 -129.63593889793364 17 -135.02448483388562
		 18 -134.95804569827803 19 -136.57429960285893 20 -140.21955539326885 21 -159.71089754112106
		 22 -173.94945725684732 23 -168.81276515307553 24 -158.74004004159866 25 -152.09707961559991
		 26 -157.07259272141275 27 -171.17902823595983 28 -178.45766307527705 29 -173.36826153682665
		 30 -170.72222278630446 31 -174.13759709653672 32 -176.17720841808756;
createNode animCurveTU -n "CURVE1111";
	rename -uid "16AD4D0F-49FF-C995-CAAA-5E91D3A74604";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "CURVE1112";
	rename -uid "B2CDCEE1-4EB3-BB29-A4B8-5A9ED19A9BFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -113.38557343737766 1 -112.1043956129881
		 2 -108.34976289153691 3 -98.459270720254523 4 -97.760868295315674 5 -97.286199438029158
		 6 -97.151068924711993 7 -109.41841284506125 8 -113.38557343737766 9 -112.1043956129881
		 10 -108.34976289153691 11 -98.459270720254523 12 -97.760868295315674 13 -147.4666130817549
		 14 -172.76877707386882 15 -194.25677689837954 16 -205.41594005355802 17 -210.98186977658122
		 18 -201.45915977593543 19 -185.51493332507101 20 -185.36300846850008 21 -198.97333221590063
		 22 -195.55305662738536 23 -196.67413378672859 24 -198.37956004946267 25 -198.75834841950913
		 26 -196.77879938531191 27 -196.94857910074748 28 -199.14921187876928 29 -198.68476840853862
		 30 -197.30751718090733 31 -197.27138055166324 32 -197.70833356732598;
createNode animCurveTU -n "CURVE1113";
	rename -uid "EDE98369-4E32-6F0F-2FD8-DD9A3DBA72F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 8 1 12 1 13 1 17 1 20 1 22 1;
	setAttr -s 7 ".kyts[5:6]" yes no;
	setAttr -s 7 ".kit[1:6]"  1 9 18 18 18 9;
	setAttr -s 7 ".kot[1:6]"  1 5 18 18 18 5;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 0 1 1 1 0;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "CURVE1115";
	rename -uid "044593EB-43FD-78C7-ACD5-E7A10C95C213";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1116";
	rename -uid "EA804B18-4129-F3ED-AF37-0F88DAC16B6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1117";
	rename -uid "8EC0091D-46CD-2A5C-606B-5C872BBC875A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1118";
	rename -uid "25DC4C05-4E2E-69C7-1BED-598E453FBF43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1119";
	rename -uid "E8B61601-4A50-C815-9431-68A49E5F2082";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1.0000000000000002 13 1.0000000000000002
		 15 1.0000000000000002 17 1.0000000000000002 24 1.0000000000000002 26 1.0000000000000002
		 27 1.0000000000000002;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1120";
	rename -uid "807C15B6-43B2-81F1-09A8-7DB1626671E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1121";
	rename -uid "76594873-48C5-D4E8-5511-F982FB03AE99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1122";
	rename -uid "C6AA7BEE-460A-7C42-1EB8-65A900F8B931";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1123";
	rename -uid "2EBF856C-4EFE-096E-CBA1-D58C947F3D01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1125";
	rename -uid "743BBF72-4033-0FB4-6AA1-64A6660AD04C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1126";
	rename -uid "16A8E559-4E06-31D4-2B41-C78632BD912E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1127";
	rename -uid "0ABA5F3C-4DD6-5112-AD09-3DAA5DD94AA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1128";
	rename -uid "69B97E6E-47B1-7F2D-1C4D-53AD6264A607";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0.05 13 0.05 15 0.05 17 0.05 24 0.05
		 26 0.05 27 0.05;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1129";
	rename -uid "0A1D5F3D-4AF7-360F-E4B6-7EB4AD7A7394";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1130";
	rename -uid "88CA62B8-4C71-3AE6-1A53-E7B01EC97B05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1131";
	rename -uid "6AEB2A5A-4778-FEFB-0314-E59769165115";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 1 24 1 26 0.28 27 0.2;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1132";
	rename -uid "A1A04652-4290-648F-14CD-5C8C78B0846A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1133";
	rename -uid "90F94BCD-44DA-F49F-A500-88AB10409022";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1134";
	rename -uid "38795805-4A44-C8D8-E7A8-E09A3A5A2AD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1135";
	rename -uid "64379172-4087-16E2-35DC-36B75E100B8F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
	setAttr -s 7 ".kit[0:6]"  9 9 18 9 9 18 9;
createNode animCurveTU -n "CURVE1136";
	rename -uid "1200BF24-47E4-F1D9-B725-E2B1E4CD8B2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 1 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[5:6]" yes no;
createNode animCurveTU -n "CURVE1137";
	rename -uid "B531FB82-4E10-A48A-D008-9088224FCB19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 1 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[5:6]" yes no;
createNode animCurveTU -n "CURVE1138";
	rename -uid "3CA1454C-4BCC-6BA9-8AAB-0B88EB3873EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1139";
	rename -uid "A5EA67A2-476C-2FE9-B05E-0ABCD44FF4BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1140";
	rename -uid "B8E63454-45E5-932E-6CDC-07808A0E444C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1141";
	rename -uid "CC192AB6-4DFD-25EB-2ED7-5FB1DA884C32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0.05 13 0.05 15 0.05 17 0.05 24 0.05
		 26 0.05 27 0.05;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1143";
	rename -uid "0C2A2F75-4ABD-BAA9-75EB-7AB825C176EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -4.7822582194461773 1 -4.7822582194461773
		 2 -4.7822582194461773 3 -4.7822582194461773 4 -4.7822582194461773 5 -4.7822582194461773
		 6 -4.7822582194461773 7 -4.7822582194461773 8 -4.7822582194461773 9 -4.7822582194461773
		 10 -4.7822582194461773 11 -4.7822582194461773 12 -4.7822582194461773 13 11.009109552024537
		 15 15.863443192702379 21 3.6475719593793254;
createNode animCurveTA -n "CURVE1144";
	rename -uid "727FCFBF-42CA-D987-338F-5F96456FC9C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 21 0;
	setAttr -s 16 ".kyts[15]" yes;
createNode animCurveTA -n "CURVE1145";
	rename -uid "A7B365CC-4B05-81D8-337D-468560C75BE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 21 0;
	setAttr -s 16 ".kyts[15]" yes;
createNode animCurveTU -n "CURVE1146";
	rename -uid "156476DC-41D4-831F-0297-D080BC73A0D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 21 0;
	setAttr -s 16 ".kyts[15]" yes;
createNode animCurveTL -n "CURVE1148";
	rename -uid "78AD37DC-45DA-4052-DE82-E69DD4BB6D41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE1149";
	rename -uid "A3661594-4F30-91EF-9322-499434204080";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE1150";
	rename -uid "2C72E20A-4FE5-9047-6B21-3DB5F75B0F35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE1151";
	rename -uid "34EFA2F8-4B25-EA69-96C6-868AB0117128";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE1152";
	rename -uid "38310CE8-41FA-727D-6C96-D5B712733330";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE1153";
	rename -uid "15332363-4D8D-0BDF-B020-9D939325B2AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE1155";
	rename -uid "D754FABC-4DDC-0C8C-0E14-A3B4BFDC1484";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1156";
	rename -uid "AFE9954F-46A0-ACE7-542B-22A08952DC9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1157";
	rename -uid "1D76C178-4FB3-C165-0C4D-04B63DF0E149";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1158";
	rename -uid "32D815D3-4117-79BD-4097-31B5775D8A4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1159";
	rename -uid "FDF300D9-446E-7990-9670-6AA231FCA92F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0.99999999999999989 13 0.99999999999999989
		 17 0.99999999999999989 20 0.99999999999999989 22 0.99999999999999989;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1160";
	rename -uid "89E8CE71-4643-F155-46F0-1E87FE71CBBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0.99999999999999989 13 0.99999999999999989
		 17 0.99999999999999989 20 0.99999999999999989 22 0.99999999999999989;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1161";
	rename -uid "C867D4CB-4CBD-BB65-9B70-B4AD8C1C587C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1162";
	rename -uid "24F00621-4165-9FD8-4BA6-34A4CC7D89DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE1163";
	rename -uid "17BE8937-45DF-197F-8DFB-9BB23BC6F0A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1165";
	rename -uid "9E56FEDB-4FCC-18D3-8D5B-C499808F75E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1166";
	rename -uid "52684AD7-4FAE-BC57-87B6-288BE0F05B3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1167";
	rename -uid "59A9768D-419D-9519-0681-75AC92591A85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1168";
	rename -uid "CD63E9E8-4C2E-954D-88F7-6198EB183786";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1169";
	rename -uid "EE9242C5-4836-2596-D499-E18920C22051";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1170";
	rename -uid "B996CB65-45D0-96B5-15C9-F7A5BDA5795C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1171";
	rename -uid "06CCB922-4496-7F9B-EF67-978C3D28297A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1172";
	rename -uid "7F81F9D9-445A-A440-BAEB-72987AAFF736";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE1173";
	rename -uid "52767790-49B3-2E31-55BD-FF86FC3382C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1175";
	rename -uid "0D13FDEE-4B0D-2FE1-4333-35862D86FCA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1176";
	rename -uid "284B93B3-4432-FDFA-7199-28A15BFAE6DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1177";
	rename -uid "6A1076C8-459C-31C6-50ED-239DF4222F33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1178";
	rename -uid "E88362FC-4AD1-B02F-34E9-ABA4D13287E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1179";
	rename -uid "9415AA6C-47E1-9F64-F7A9-BA91923D1D40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1180";
	rename -uid "DF57705B-4889-91D4-D63E-D98E79A897CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1181";
	rename -uid "DC5EC481-4769-7D9D-C98F-B9B5136BC722";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1182";
	rename -uid "C36715FB-4CF2-7FF1-F7E6-65AA65F28F79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE1183";
	rename -uid "243550E5-44C4-DD8C-1E65-08BFB7745F1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1185";
	rename -uid "F47F6BF7-4636-9581-35C6-588FD000EE21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTA -n "CURVE1186";
	rename -uid "17278DE9-4251-0CD6-D100-A6968F25AE77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -93.347951784689883 1 -91.654822568564157
		 2 -88.510439738616384 3 -92.327539087471251 4 -93.347951784689883 5 -93.347951784689883
		 6 -93.347951784689883 7 -93.347951784689883 8 -93.347951784689883 9 -91.654822568564157
		 10 -88.510439738616384 11 -92.327539087471251 12 -93.347951784689883 13 -42.955925717528061
		 17 -12.592223267686396 20 -36.221939621923411 22 0 25 -15.803621684051521 27 -3.7288543330309598
		 29 -5.801823826437805 31 -2.9698524577096856;
createNode animCurveTA -n "CURVE1187";
	rename -uid "F07B0619-4CC9-2708-2E43-2FA9AB5F6490";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTL -n "CURVE1189";
	rename -uid "1F83CED2-4ED3-30EA-DE78-D08B66243B5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1190";
	rename -uid "1312DE3A-44AB-DFD3-E798-218E6D2DCBFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1191";
	rename -uid "075210B7-4A90-C352-6405-6786C2C7A943";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1192";
	rename -uid "FEDCAD72-4ECB-1889-6170-41920D1D7C9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1193";
	rename -uid "34B4F7EC-4E21-D787-29ED-CDB9B3F2EEB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1194";
	rename -uid "A0B69B6A-4098-CED2-8E44-71B648D5639B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1196";
	rename -uid "61FDEC96-4269-B3F0-4D8C-0EB0252DB363";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1197";
	rename -uid "FF130FC9-4831-3905-B899-CCAD5B7CD178";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1198";
	rename -uid "1F736E83-4471-80ED-DF85-CAA3B1CEA704";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1199";
	rename -uid "ACE530E2-4345-9149-DBEA-06A81C817BFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1200";
	rename -uid "FBDD9A2F-4996-A39C-4CAB-64B632BFD293";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1201";
	rename -uid "77627C8C-4F47-F2C3-4EAC-78BB512D78DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1202";
	rename -uid "A466B4B3-49F7-DF52-7D09-CA8B4D76F54E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1203";
	rename -uid "5F36BE83-43A0-CBE9-B54E-3781B3C10528";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1204";
	rename -uid "FCB40332-45BA-401C-ADAC-39AE2230133A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1206";
	rename -uid "FA776839-4EAA-12D1-6CBC-49B553BF09F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 15 1 17 1 19 1 20 1 21 1;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE1207";
	rename -uid "054D0DEF-4C43-33A0-26B8-4987953AC816";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE1208";
	rename -uid "4B5C8DA5-4692-BF01-28F0-9E865FBAB4B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE1209";
	rename -uid "673545A3-4FB2-609D-4913-5FB84EB99035";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE1210";
	rename -uid "0747E27D-4608-3E51-D817-7F899F0BA722";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8 1 12 1 13 1 15 1 17 1 19 1 20 1 21 1;
	setAttr -s 9 ".kyts[8]" yes;
	setAttr -s 9 ".kit[2:8]"  9 9 18 18 18 18 18;
	setAttr -s 9 ".kot[2:8]"  5 5 18 18 18 18 18;
createNode animCurveTU -n "CURVE1211";
	rename -uid "AE59D3BB-4FD2-EB7F-678D-5EB7D5DA1505";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 15 1 17 1 19 1 20 1 21 1;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE1212";
	rename -uid "1969A58B-4E91-701A-7EEB-D9ADFE691C93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE1213";
	rename -uid "7939C2D1-41B3-ADD4-44EE-85AD9F15DE28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE1214";
	rename -uid "1015F745-4996-569F-5F66-33910F41C4DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE1216";
	rename -uid "29230297-4A74-C0BB-5CAA-9FBF179B7340";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1217";
	rename -uid "1549A915-49DE-C322-5D2E-B0A2C412997F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1218";
	rename -uid "A868ECFD-4F25-6A07-0D16-89ADD71CDCF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1219";
	rename -uid "82B3518D-49CC-ACAA-DC7C-809898A5BBDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1220";
	rename -uid "DDB9E2EC-48EF-4E55-4BA1-92A648E0E05A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1221";
	rename -uid "206B3041-4998-E1BF-B98B-7D8F91B440C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1222";
	rename -uid "12B61646-44BB-CBE0-6F57-5FA4F97F143C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1223";
	rename -uid "7F4DC954-47FE-8709-D604-789B4912EC81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE1224";
	rename -uid "C8599DB6-46EE-E52F-6635-588AFE11EDB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1226";
	rename -uid "1B301062-42B7-80E8-3E05-F4B8C96BE9A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 10.111412234535175 1 10.111412234535175
		 2 10.111412234535175 3 10.111412234535175 4 10.111412234535175 5 10.111412234535175
		 6 10.111412234535175 7 10.111412234535175 8 10.111412234535175 9 10.111412234535175
		 10 10.111412234535175 11 10.111412234535175 12 10.111412234535175 13 10.111412234535175
		 14 10.111412234535175 15 10.111412234535175 16 10.111412234535175 17 10.111412234535175
		 18 -7.7431075489584762 19 -40.901501432589676 20 -58.756021216083411 21 -58.756021216083411
		 22 -58.756021216083411 23 -58.755896348221455 24 -58.75502227318777 25 -58.752649783810639
		 26 -58.748029672918314 27 -58.473314476676485 28 -58.201596109121567 29 -58.462850913073495
		 30 -58.724105717025424 31 -58.623285291786175 32 -58.52246486654694;
createNode animCurveTA -n "CURVE1227";
	rename -uid "BBF5C83A-4974-7B83-E657-13BE1E4B4CFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -11.090639424979853 1 -11.090639424979853
		 2 -11.090639424979853 3 -11.090639424979853 4 -11.090639424979853 5 -11.090639424979853
		 6 -11.090639424979853 7 -11.090639424979853 8 -11.090639424979853 9 -11.090639424979853
		 10 -11.090639424979853 11 -11.090639424979853 12 -11.090639424979853 13 -11.090639424979853
		 14 -11.090639424979853 15 -11.090639424979853 16 -11.090639424979853 17 -11.090639424979853
		 18 -7.447047037237545 19 -0.68037546000180238 20 2.9632169277405263 21 2.9632169277405263
		 22 2.9632169277405263 23 1.9990329442457289 24 -0.12217181944281885 25 -2.243376583131373
		 26 -3.20756056662617 27 3.6815139565959489 28 10.570588479818072 29 7.2087053620395753
		 30 3.8468222442610522 31 5.5482336366548228 32 7.2496450290485939;
createNode animCurveTU -n "CURVE1228";
	rename -uid "B3892400-4599-77A8-CE28-A8884A0F2903";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0;
createNode animCurveTU -n "CURVE1229";
	rename -uid "9B60659A-4C2D-D131-1DDF-06BD46B474E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0;
createNode animCurveTA -n "CURVE1230";
	rename -uid "645515AE-4FF3-77A4-8FE7-328F05E32B8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 32.961129487108487 1 32.961129487108487
		 2 32.961129487108487 3 32.961129487108487 4 32.961129487108487 5 32.961129487108487
		 6 32.961129487108487 7 32.961129487108487 8 32.961129487108487 9 32.961129487108487
		 10 32.961129487108487 11 32.961129487108487 12 32.961129487108487 13 32.961129487108487
		 14 32.961129487108487 15 32.961129487108487 16 32.961129487108487 17 32.961129487108487
		 18 25.952244492800958 19 12.935743789086917 20 5.9268587947793501 21 5.9268587947793501
		 22 5.9268587947793501 23 5.3423133716973172 24 4.0563134409168473 25 2.7703135101363752
		 26 2.1857680870543423 27 6.4024784075946899 28 10.619188728135036 29 8.5416907133200368
		 30 6.4641926985050207 31 7.5064054776591682 32 8.5486182568133167;
createNode animCurveTU -n "CURVE1231";
	rename -uid "80B0392F-4FAE-76D7-E085-55AB88FEFAB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0;
createNode animCurveTL -n "CURVE1233";
	rename -uid "F10BFB15-49FC-F2D2-B725-E18DCD1D26C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1234";
	rename -uid "5DC6B0E8-4FA7-7CAA-A78A-1FA4268D8496";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1235";
	rename -uid "02D9D6B4-4EE3-D6DA-D10A-4D85402E3C8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1236";
	rename -uid "E2634EEE-49AA-5135-BA3F-2D8D6EDAD275";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1237";
	rename -uid "5650885F-4136-3E0B-4EE8-EDBD05888FA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000009 13 1.0000000000000009
		 17 1.0000000000000009 20 1.0000000000000009 22 1.0000000000000009;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1238";
	rename -uid "398EF353-4DBE-C882-A331-0387A2637168";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000009 13 1.0000000000000009
		 17 1.0000000000000009 20 1.0000000000000009 22 1.0000000000000009;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1239";
	rename -uid "B565E605-42CD-C174-9404-E49AE212FC70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1240";
	rename -uid "F34F27F1-4AEA-782F-B63F-2B900779FCFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE1241";
	rename -uid "4EF13DC9-425D-5686-2F7D-3F8C205FE43F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1243";
	rename -uid "EC37CECF-4333-FC7E-51F5-F9827DB5C6F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1244";
	rename -uid "36D85F17-4E38-E5DC-C6EB-669B77A1F695";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1245";
	rename -uid "D1427A48-4DF5-6C88-BC7E-6B9D156B261B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1246";
	rename -uid "2C13A199-4038-7132-564B-3789CDE9D16B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000004 13 1.0000000000000004
		 17 1.0000000000000004 19 1.0000000000000004 20 1.0000000000000004 21 1.0000000000000004;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1247";
	rename -uid "BBBDB3BA-4478-2BB1-DB37-538FDAAF8454";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000007 13 1.0000000000000007
		 17 1.0000000000000007 19 1.0000000000000007 20 1.0000000000000007 21 1.0000000000000007;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1248";
	rename -uid "A35326C6-427C-C3E2-4FA1-329FFC11CADF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000004 13 1.0000000000000004
		 17 1.0000000000000004 19 1.0000000000000004 20 1.0000000000000004 21 1.0000000000000004;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1249";
	rename -uid "54E99C8A-4DF2-3491-58AC-56822D15AFB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1250";
	rename -uid "93ACEDD8-41C1-E541-62A7-4CB91582DF39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1251";
	rename -uid "5CC85322-4DEC-A79D-753B-C7AECBEF8F63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1253";
	rename -uid "8473F567-4F2B-AE35-AD65-18A019CABEC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1254";
	rename -uid "1EC4F347-44DF-FE97-F7E4-4CBA8F5049F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1255";
	rename -uid "6A3D3B26-4E61-26B8-22FB-74B88A31C40C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1256";
	rename -uid "B5FFDFFE-41F5-22A1-C85E-57B055EC5D61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1257";
	rename -uid "5946F1C9-45CC-F319-AE22-CE8379C54A3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1258";
	rename -uid "BF47A298-42A1-81AC-E74B-89B78D892AC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1259";
	rename -uid "E816AF5F-48F7-43BB-F3C5-5AA4CFB6F3C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 23.095810660738763 1 23.095810660738763
		 2 23.095810660738763 3 23.095810660738763 4 23.095810660738763 5 23.095810660738763
		 6 23.095810660738763 7 23.095810660738763 8 23.095810660738763 9 23.095810660738763
		 10 23.095810660738763 11 23.095810660738763 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1260";
	rename -uid "6403D66A-453E-C830-664D-4CA9124F15DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 22.87232953125114 1 22.87232953125114
		 2 22.87232953125114 3 22.87232953125114 4 22.87232953125114 5 22.87232953125114 6 22.87232953125114
		 7 22.87232953125114 8 22.87232953125114 9 22.87232953125114 10 22.87232953125114
		 11 22.87232953125114 13 -18.07908499940843 17 -18.079084999408433 20 -1.8079084999408432
		 22 -1.8079084999408432;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1261";
	rename -uid "1589AA4C-47E5-E587-648B-15B01CD3D471";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -46.4791238070502 1 -46.4791238070502
		 2 -46.4791238070502 3 -46.4791238070502 4 -46.4791238070502 5 -46.4791238070502 6 -46.4791238070502
		 7 -46.4791238070502 8 -46.4791238070502 9 -46.4791238070502 10 -46.4791238070502
		 11 -46.4791238070502 13 11.783532863754623 17 11.783532863754617 20 -8.5467846394450628
		 22 -8.5467846394450628;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1262";
	rename -uid "4F20DBB8-4C41-3FFF-200A-39B872E35E6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1264";
	rename -uid "33F9654A-43DF-DB2D-8EC2-C1BEF0077DC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1265";
	rename -uid "3B1C7CB6-40C8-0A1B-F58B-1CB0DE36B44B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0.44532265766311402 15 0.4007903918968026
		 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1266";
	rename -uid "8F0CC555-4637-17A6-FDBE-DEA606BB643C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1267";
	rename -uid "CBA4A74B-442F-A82A-B464-6E8F42BC0590";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1268";
	rename -uid "468CA6FC-47EF-F9E2-3978-4D81001FCB87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1269";
	rename -uid "6A733432-4B25-3631-F4D5-6EBB93444405";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1271";
	rename -uid "F58258C5-4951-559F-C590-0C9DA89834AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 15 1 17 1 19 1 20 1 21 1;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE1272";
	rename -uid "138A65CD-4E4D-1597-AF4C-29AD0AF50128";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE1273";
	rename -uid "27244EC4-4CE9-5FB7-E1E7-EF8B665DCBEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE1274";
	rename -uid "FF65FBB7-4610-ED66-6565-01A2A1A2497E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE1275";
	rename -uid "BB157238-4751-BA0E-1AA0-20AC0220EE75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8 1 12 1 13 1 15 1 17 1 19 1 20 1 21 1;
	setAttr -s 9 ".kyts[8]" yes;
	setAttr -s 9 ".kit[2:8]"  9 9 18 18 18 18 18;
	setAttr -s 9 ".kot[2:8]"  5 5 18 18 18 18 18;
createNode animCurveTU -n "CURVE1276";
	rename -uid "D6C7427A-4DAD-49FF-0969-E387633FBE79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 15 1 17 1 19 1 20 1 21 1;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE1277";
	rename -uid "C3249445-4DA6-B8A5-7CE3-4C8676A5ABB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE1278";
	rename -uid "F2D79A27-4CBE-01DD-4D3F-D8929AF47B4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE1279";
	rename -uid "7B8DDD05-4971-3CA6-6C06-51A08E0B6CB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE1281";
	rename -uid "3F1A1966-42C0-2EF4-69CD-A89714C4AB3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE1282";
	rename -uid "0C9CC644-4C49-AD6E-26B1-A482F5EA8B9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE1283";
	rename -uid "2142B823-44E6-C0AB-0013-B5AB03A65C7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.3613750657971132 1 0.54500184965406095
		 2 0.53054099987767456 3 0.3642412274492306 4 0.34978037767284426 5 0.81716656511278241
		 6 0.15473368588804681 7 0.45915086410702188 8 0.3613750657971132 9 0.54500184965406095
		 10 0.53054099987767456 11 0.3642412274492306 12 0.34978037767284426 13 0.45915086410702188
		 15 0.45915086410702188 17 0.45915086410702188 19 0.45915086410702188 20 0.45915086410702188
		 21 0.45915086410702188;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE1284";
	rename -uid "D4F91E34-4B06-5FF7-16BA-0AAFCD1EBE0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1.0000000000000002 1 1.0000000000000002
		 2 1.0000000000000002 3 1.0000000000000002 4 1.0000000000000002 5 1.0000000000000002
		 6 1.0000000000000002 7 1.0000000000000002 8 1.0000000000000002 9 1.0000000000000002
		 10 1.0000000000000002 11 1.0000000000000002 12 1.0000000000000002 13 1.0000000000000002
		 15 1.0000000000000002 17 1.0000000000000002 19 1.0000000000000002 20 1.0000000000000002
		 21 1.0000000000000002;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE1285";
	rename -uid "D89893A7-4E30-2A8B-6AF8-C8ADE553EA63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.99999999999999933 1 0.99999999999999933
		 2 0.99999999999999933 3 0.99999999999999933 4 0.99999999999999933 5 0.99999999999999933
		 6 0.99999999999999933 7 0.99999999999999933 8 0.99999999999999933 9 0.99999999999999933
		 10 0.99999999999999933 11 0.99999999999999933 12 0.99999999999999933 13 0.99999999999999933
		 15 0.99999999999999933 17 0.99999999999999933 19 0.99999999999999933 20 0.99999999999999933
		 21 0.99999999999999933;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE1286";
	rename -uid "B4B97F69-47DB-722A-6036-72A8B4F62AE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 15 1 17 1 19 1 20 1 21 1;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE1287";
	rename -uid "C752C417-4E91-142E-7CAC-B68F9D9CAD8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE1288";
	rename -uid "E8F12AE9-4F0D-0977-A724-CD8E77B19854";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE1289";
	rename -uid "DEFCE65C-451F-376D-C5A2-00B491706C25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE1291";
	rename -uid "F1A600CE-41FB-EE75-52F4-D8B20EA9F671";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1292";
	rename -uid "93E0DDD1-4F62-53CF-BF0D-6FBAAC3322FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1293";
	rename -uid "D228CA96-419A-FB79-E294-93ABA24121FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1294";
	rename -uid "A964CC3A-411D-9352-0293-A698387BC104";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 19 1.0000000000000002 20 1.0000000000000002 21 1.0000000000000002;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1295";
	rename -uid "5945989A-4AC7-5C9C-92A1-33AC4A2056C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 19 1.0000000000000002 20 1.0000000000000002 21 1.0000000000000002;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1296";
	rename -uid "DF718C60-4089-5A83-23E0-E1956B8AF4CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1297";
	rename -uid "002FD066-4213-B528-EB37-66975959D4B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1298";
	rename -uid "7A1677AA-4082-6FA5-299C-939D95BFFD52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1299";
	rename -uid "4137A970-4C9B-A933-AD32-2BAB287ABB44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1301";
	rename -uid "CBA4E95A-4A75-9A47-0942-3A8326275428";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1302";
	rename -uid "4D6DEF18-477B-8206-5C75-97BFBA358F90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1303";
	rename -uid "5F7E041C-451E-6BA7-C088-C18968911082";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1305";
	rename -uid "38FA5DF7-4AF7-1CDB-BC5F-52A67F021A9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1306";
	rename -uid "E80D13C5-4364-C1AB-436A-C49E15DEDDD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1307";
	rename -uid "C28A4386-4F38-3A8E-781A-32930E73FA1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1308";
	rename -uid "CEA0B977-40D1-5367-B292-1580C8F73DEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1309";
	rename -uid "7C99FBC8-469E-7367-EB2D-549DA6619E56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1310";
	rename -uid "B06C8E9E-41AD-4C22-E625-5E91204CA686";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1312";
	rename -uid "B098B10F-4ECE-DB87-3E7B-E59D418DD893";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1313";
	rename -uid "254F17A0-4672-B1FB-4D71-BCBDC94007F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1314";
	rename -uid "995D5CB7-4857-D0B8-8E7D-E8BCC5018CDF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1315";
	rename -uid "BFA8B731-4DF0-ECAC-BDF3-2ABC997C798E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1316";
	rename -uid "0F0C38BC-48C0-AC24-3C2E-39B5009ABC4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1317";
	rename -uid "75DF342E-4813-1BE9-2695-F2A197BD88A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1318";
	rename -uid "8B3586E4-4456-FB09-2323-7CA91EE108FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.00022195932735754407 1 0.00022195932735754407
		 2 0.00022195932735754407 3 0.00022195932735754407 4 0.00022195932735754407 5 0.00022195932735754407
		 6 0.00022195932735754407 7 0.00022195932735754407 8 0.00022195932735754407 9 0.00022195932735754407
		 10 0.00022195932735754407 11 0.00022195932735754407 13 0 17 0 20 -21.456775651016315
		 22 -21.456775651016315;
createNode animCurveTA -n "CURVE1319";
	rename -uid "5794EFB8-4AA8-FFF6-922C-0C92D56951C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -5.8888289115810339 1 -5.8888289115810339
		 2 -5.8888289115810339 3 -5.8888289115810339 4 -5.8888289115810339 5 -5.8888289115810339
		 6 -5.8888289115810339 7 -5.8888289115810339 8 -5.8888289115810339 9 -5.8888289115810339
		 10 -5.8888289115810339 11 -5.8888289115810339 13 0.73585697484704404 17 0.73585697484704382
		 20 -4.9246107318731864 22 -4.9246107318731864;
createNode animCurveTA -n "CURVE1320";
	rename -uid "EC42FDD3-420E-1A8A-3DBD-F18C33C188EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -0.00059422916798486218 1 -0.00059422916798486218
		 2 -0.00059422916798486218 3 -0.00059422916798486218 4 -0.00059422916798486218 5 -0.00059422916798486218
		 6 -0.00059422916798486218 7 -0.00059422916798486218 8 -0.00059422916798486218 9 -0.00059422916798486218
		 10 -0.00059422916798486218 11 -0.00059422916798486218 13 0 17 0 20 8.8893322747674262
		 22 8.8893322747674262;
createNode animCurveTL -n "CURVE1322";
	rename -uid "8FC6FFC7-4600-CB0E-F25A-E2A063B05F8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0.30934934514813472 15 0.27841441063332123
		 17 -0.58822566676846366 24 -0.58822566676846366 27 -0.58822566676846366 29 -0.58822566676846366;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1323";
	rename -uid "4D3BE292-46C6-6818-8489-83B17AA9CC08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1324";
	rename -uid "711DE339-4771-9076-B791-BB9C8F805F81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1325";
	rename -uid "FFB5900F-4C1A-D76C-8978-F1B22F228AA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1326";
	rename -uid "1BBFDA18-4248-4D51-2BB8-B4BF4271CF3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1327";
	rename -uid "4A54ACBF-418A-3517-D3DA-6DAE3E650385";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1328";
	rename -uid "917E5849-4FA6-2C22-A083-D4B0283CC538";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1329";
	rename -uid "A6E4F1F5-4EF1-B03E-48AF-2592AEC5013F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1330";
	rename -uid "6AA306B0-47F5-A13C-06CD-16BAB73CA80C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1331";
	rename -uid "36F9B7BA-4999-E72D-2990-759F40F8CA33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1333";
	rename -uid "FA36752E-4E0A-52C8-FA17-578153EEC5B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1334";
	rename -uid "CB17FF68-443E-2AAA-D2DA-29A55BAE51C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1335";
	rename -uid "C9E07A19-4EE6-31A4-0466-6F9C043E23BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1336";
	rename -uid "947F99B4-4FB5-65C5-F4C8-E9AE7CF0C430";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000004 13 1.0000000000000004
		 17 1.0000000000000004 19 1.0000000000000004 20 1.0000000000000004 21 1.0000000000000004;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1337";
	rename -uid "0422B9D3-4F65-F23C-2A5E-E68C63BD4369";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000007 13 1.0000000000000007
		 17 1.0000000000000007 19 1.0000000000000007 20 1.0000000000000007 21 1.0000000000000007;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1338";
	rename -uid "525770A5-46F2-DC60-E0E2-6F810826D8C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000007 13 1.0000000000000007
		 17 1.0000000000000007 19 1.0000000000000007 20 1.0000000000000007 21 1.0000000000000007;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1339";
	rename -uid "4FEC9F6D-4927-17E3-70FC-05A1705E6CF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1340";
	rename -uid "62FBEF47-4A0F-43EF-3854-4D98F10465F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1341";
	rename -uid "5C916027-44F2-F342-FFC0-4CAEEB7DD58D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1343";
	rename -uid "EF2BAC3F-4E25-DF73-37C8-5581F1032912";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1344";
	rename -uid "35E53928-4C3A-C5E7-6738-F9B75DC7EC1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1345";
	rename -uid "22704B04-4E60-817F-CA77-72AC01313928";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1346";
	rename -uid "B852A69C-475A-5655-DDC9-D0A49DEDB644";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1347";
	rename -uid "2C590D16-4BB6-1DC6-C36A-3D980A6CC877";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1348";
	rename -uid "112BBDFF-4A1F-3765-DFE2-8D9E5C3F98FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1349";
	rename -uid "E1D6E5B5-4FEF-C702-D338-BCA7207A6E89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1350";
	rename -uid "346F8A13-4E6A-D432-6926-49902073CABE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1351";
	rename -uid "260C1DC3-4374-D5FE-F225-3BB3C73C2CD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1353";
	rename -uid "8BAD8F9B-4033-61C0-AD6C-6F994B832430";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1354";
	rename -uid "A205902D-4504-EC85-5B48-47BEAF6A672B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1355";
	rename -uid "0DA2C63B-4727-55A0-9230-BC8F99887806";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1356";
	rename -uid "A28A37D0-40B5-A386-32E4-D1A59765FE2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1357";
	rename -uid "8691C2CA-4B00-9615-3C98-05A7464471F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1358";
	rename -uid "96BE649C-4BFA-C7EF-B2C6-6B8254646E55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1359";
	rename -uid "DE3FD812-4E93-8ECF-02F6-95B047166F7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1360";
	rename -uid "B7792F28-4553-6E3C-257E-778C4FED4E24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE1361";
	rename -uid "990A08EB-4111-A8E9-5A02-C8B652312D71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1363";
	rename -uid "4A11308E-4927-4B8C-E23A-7EB8100C3682";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1364";
	rename -uid "B4892861-4C65-1691-4F03-9E9A726DEA14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1365";
	rename -uid "B384356C-4BB2-6F75-EE48-ACAA3C025FA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1366";
	rename -uid "2B178A55-4450-5349-BB25-388AB29C8D2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1367";
	rename -uid "04719EA9-4F7B-85B4-2C65-679EE57963A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 19 1.0000000000000002 20 1.0000000000000002 21 1.0000000000000002;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1368";
	rename -uid "9D84CE57-479F-BF58-3735-F688FF616789";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1369";
	rename -uid "40B50AC2-470C-31FB-9B78-C787B27BA54B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1370";
	rename -uid "2798FA1A-4766-3FA0-E24F-69A37296BB4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1371";
	rename -uid "AEFA3F61-4DEC-CAC1-1799-6F95A9A49BC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1373";
	rename -uid "F6CE9BE5-450D-B3E5-3B80-77ACB0ACD882";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1374";
	rename -uid "6F7A9C66-45A6-9354-5CFE-6AAFA1C27659";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1375";
	rename -uid "A6482744-48E7-45C1-CC92-0E9BF7377493";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1376";
	rename -uid "70986034-4D87-3523-F6AA-8DBC98BB534A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0.05 13 0.05 15 0.05 17 0.05 24 0.05
		 26 0.05 27 0.05;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1377";
	rename -uid "57DBEE82-4D0B-8077-EB14-4590AC9C2E23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1378";
	rename -uid "49C658B6-4CCC-CCAF-1392-F99C622920F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1379";
	rename -uid "4FB5A155-4563-0654-A873-6FAB6C1D5A21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 1 24 1 26 0.28 27 0.2;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1380";
	rename -uid "A7D08C71-4628-B143-B92D-58A460F801C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1381";
	rename -uid "5805E78A-4DD5-1641-C55F-309B5A6472C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1382";
	rename -uid "4A342D7A-4EFF-AA78-D257-ADAB0198141E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1383";
	rename -uid "D890E4FE-4D53-C2BD-A392-E89033BDE4E9";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
	setAttr -s 7 ".kit[0:6]"  9 9 18 9 9 18 9;
createNode animCurveTU -n "CURVE1384";
	rename -uid "3D3FCB22-4A1A-1D9A-0CEC-54BAFB54738B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0.70000000000000007 15 0 17 0 24 0
		 26 0 27 0;
	setAttr -s 7 ".kyts[5:6]" yes no;
createNode animCurveTU -n "CURVE1385";
	rename -uid "67B9FECB-4BF5-E808-3545-5CAEE0BFA0CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0.70000000000000007 15 0 17 0 24 0
		 26 0 27 0;
	setAttr -s 7 ".kyts[5:6]" yes no;
createNode animCurveTU -n "CURVE1386";
	rename -uid "8053219E-4BEA-CB2C-8571-2DBF0B21135C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1387";
	rename -uid "D607A689-4999-3133-1F5A-B9859C5E80F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1388";
	rename -uid "3A1DF10B-4C99-5B61-6A06-989FA9C2356B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1389";
	rename -uid "AB0AF1E7-4BB5-7A69-3225-88A359FC0C7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0.05 13 0.05 15 0.05 17 0.05 24 0.05
		 26 0.05 27 0.05;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1391";
	rename -uid "9B109720-474C-1450-7490-79AF810120B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1392";
	rename -uid "CA123161-4717-437B-64AF-55821C66FD23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1393";
	rename -uid "B56CCB61-4B74-F6C5-D4A2-1BAB63C3E5DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1394";
	rename -uid "CA93D3A1-440B-D6C1-ABAA-28BCEDA9D9AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1395";
	rename -uid "8AA1061C-4226-044E-BC3C-33AC5348F99A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1396";
	rename -uid "1595D091-4256-892A-3A98-B2BB5B1C2259";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1397";
	rename -uid "A8C9588E-42A0-1C47-4D2F-A5996A339967";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -5.2166431158189797 1 -5.2166431158189797
		 2 -5.2166431158189797 3 -5.2166431158189797 4 -5.2166431158189797 5 -5.2166431158189797
		 6 -5.2166431158189797 7 -5.2166431158189797 8 -5.2166431158189797 9 -5.2166431158189797
		 10 -5.2166431158189797 11 -5.2166431158189797 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1398";
	rename -uid "3C1293E3-4875-512C-555C-5B82E363EC53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -4.4441570310702652 1 -4.4441570310702652
		 2 -4.4441570310702652 3 -4.4441570310702652 4 -4.4441570310702652 5 -4.4441570310702652
		 6 -4.4441570310702652 7 -4.4441570310702652 8 -4.4441570310702652 9 -4.4441570310702652
		 10 -4.4441570310702652 11 -4.4441570310702652 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1399";
	rename -uid "F1CAA3EB-4299-11BE-FBBC-918232F92789";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -60.616392982227104 1 -60.616392982227104
		 2 -60.616392982227104 3 -60.616392982227104 4 -60.616392982227104 5 -60.616392982227104
		 6 -60.616392982227104 7 -60.616392982227104 8 -60.616392982227104 9 -60.616392982227104
		 10 -60.616392982227104 11 -60.616392982227104 13 4.6018304055166439 17 4.6018304055166412
		 20 -10.274849754880512 22 -27.568954817602975 24 1.8939824917904731 27 -13.354885377852558
		 30 -6.2454142896703244;
createNode animCurveTL -n "CURVE1401";
	rename -uid "262A0436-4C42-80C1-301B-9CB2FA72FD5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1402";
	rename -uid "7429037B-4F5F-2EDF-B41B-2CAC48C2DF5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1403";
	rename -uid "8F867897-4887-1BEE-F8F8-D39A8DD4CD69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1404";
	rename -uid "ED361A62-4647-8E3F-EA7A-8988A5BF366A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1405";
	rename -uid "FD1991B3-4AA3-9545-697A-C690FCBCBF73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1406";
	rename -uid "875B5471-4620-B461-EBD2-44BE2773CF5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1407";
	rename -uid "053FFF6E-4D86-681B-359C-B1B5C8370AE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1408";
	rename -uid "743FCD1D-4BA4-E3EC-71BF-9C900FA3D9B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1409";
	rename -uid "9886A53E-408D-CAEF-B109-68B4B15BCA99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1411";
	rename -uid "B7ACC686-476D-1E4C-967A-FDA2AC1F6181";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE1412";
	rename -uid "3CE46066-4B89-B0DB-4F35-779FD2CB1B12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 1.6847667625112765
		 6 1.9623616818871088 7 0 8 0 9 0 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE1413";
	rename -uid "6F728C97-4175-594B-86EB-8480D6799A1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE1414";
	rename -uid "7B8D3B84-4D3A-09AF-01F7-E68D70D93F84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTU -n "CURVE1415";
	rename -uid "8EC47FD0-4005-1328-C36B-A5BC75B9DDF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 5 1 5 2 5 3 5 4 5 5 5 6 5 7 5 8 5 9 5
		 10 5 11 5 12 5 13 5 15 5 17 5 19 5 20 5 21 5;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE1417";
	rename -uid "23A8396D-44A2-0106-9321-649122D9D858";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1418";
	rename -uid "3DD4D8EC-48AF-EFAE-86CC-B88F927662C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1419";
	rename -uid "77A7C708-472B-5B59-A303-7CBE49EE39E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1420";
	rename -uid "837B9973-412E-1537-4355-BEB7A8CF9D4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1421";
	rename -uid "3CFDB2F7-42BE-131D-8ECB-3FBF144BFC97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1422";
	rename -uid "ED3E04EF-4A7B-6E3E-398D-2080FBE448D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1423";
	rename -uid "983E3715-43F8-6624-49B8-0DAC7B6FB8F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -13.933028456276512 1 -13.933028456276512
		 2 -13.933028456276512 3 -13.933028456276512 4 -13.933028456276512 5 -13.933028456276512
		 6 -13.933028456276512 7 -13.933028456276512 8 -13.933028456276512 9 -13.933028456276512
		 10 -13.933028456276512 11 -13.933028456276512 13 0 17 0 20 0.23069705160696286 22 -0.010197930658720667
		 24 0.38892812624559248 27 0.18870896453338673 30 0.28460240110319224;
createNode animCurveTA -n "CURVE1424";
	rename -uid "9A172869-4DAA-3C8E-C540-CFADF2899796";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -3.7576407542504282 1 -3.7576407542504282
		 2 -3.7576407542504282 3 -3.7576407542504282 4 -3.7576407542504282 5 -3.7576407542504282
		 6 -3.7576407542504282 7 -3.7576407542504282 8 -3.7576407542504282 9 -3.7576407542504282
		 10 -3.7576407542504282 11 -3.7576407542504282 13 8.088033215896747 17 8.088033215896747
		 20 0.77520637959227223 22 0.80873903215538179 24 0.70915826866884646 27 0.78648202547117896
		 30 0.75707925635546636;
createNode animCurveTA -n "CURVE1425";
	rename -uid "A489BDE1-47D3-DF6C-9763-E2AB9FA8D242";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -61.144562622671323 1 -61.144562622671323
		 2 -61.144562622671323 3 -61.144562622671323 4 -61.144562622671323 5 -61.144562622671323
		 6 -61.144562622671323 7 -61.144562622671323 8 -61.144562622671323 9 -61.144562622671323
		 10 -61.144562622671323 11 -61.144562622671323 13 4.2226883671562732 17 4.2226883671562705
		 20 -3.5523142191397095 22 -20.848051936126353 24 8.617364297375822 27 -6.6326153252149185
		 30 0.47744089750557261;
createNode animCurveTL -n "CURVE1427";
	rename -uid "4258A533-4D89-6321-7666-8F874B6E3169";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1428";
	rename -uid "8B19ACC7-472B-A894-668A-9D8069ED19C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1429";
	rename -uid "E8A1B221-4F49-C63C-4F7D-119E503C62F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1430";
	rename -uid "0F7CBEC8-40D4-7A9B-60DD-9AADC28EB871";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000007 13 1.0000000000000007
		 17 1.0000000000000007 19 1.0000000000000007 20 1.0000000000000007 21 1.0000000000000007;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1431";
	rename -uid "E54F9551-4CD9-F3CA-C60A-0088944EA42D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1432";
	rename -uid "A0AEC15E-43FB-8AA7-B663-AC808ADA6DF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0.99999999999999978 13 0.99999999999999978
		 17 0.99999999999999978 19 0.99999999999999978 20 0.99999999999999978 21 0.99999999999999978;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1433";
	rename -uid "44CCC9B2-4E4C-61B3-6B92-EC920B99B36C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1434";
	rename -uid "8FC6C76A-46B2-88C4-4FE7-4888F34383AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1435";
	rename -uid "467E932F-491B-0B14-AB53-5986B9F8549D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1437";
	rename -uid "6C746633-444A-7F52-F1A4-DBB2B629403A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1438";
	rename -uid "7B498EA4-42B6-5296-11E0-41AA85F1CA7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1439";
	rename -uid "680AD572-41D7-606F-2CE1-CA8CDFC35B8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1440";
	rename -uid "EAA25AE5-4B0F-767D-7DAE-0989BE587B8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1442";
	rename -uid "70012EA3-4A43-D3AB-9992-F689BADEB172";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1443";
	rename -uid "C73F0E89-4633-78E6-C6EA-149E613388A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1444";
	rename -uid "62D6C95B-4EA6-866E-0E97-CD92DB3E4A03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1445";
	rename -uid "0E1A17F7-47BE-ACD3-FD6A-9798143A3945";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1446";
	rename -uid "04BA4D61-4250-6F09-05C3-528F89D5F987";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1447";
	rename -uid "37025075-407B-E99D-22A9-D0ADDA3578DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1448";
	rename -uid "E39D4BE6-4725-4479-BCD4-1981328B36B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -5.2166431158189797 1 -5.2166431158189797
		 2 -5.2166431158189797 3 -5.2166431158189797 4 -5.2166431158189797 5 -5.2166431158189797
		 6 -5.2166431158189797 7 -5.2166431158189797 8 -5.2166431158189797 9 -5.2166431158189797
		 10 -5.2166431158189797 11 -5.2166431158189797 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1449";
	rename -uid "5DC822CF-4F09-F0B3-C981-45B9E1AF3433";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -4.4441570310702652 1 -4.4441570310702652
		 2 -4.4441570310702652 3 -4.4441570310702652 4 -4.4441570310702652 5 -4.4441570310702652
		 6 -4.4441570310702652 7 -4.4441570310702652 8 -4.4441570310702652 9 -4.4441570310702652
		 10 -4.4441570310702652 11 -4.4441570310702652 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1450";
	rename -uid "E6E577C3-4AB4-EB55-0ED8-2F93530EDB36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -60.616392982227104 1 -60.616392982227104
		 2 -60.616392982227104 3 -60.616392982227104 4 -60.616392982227104 5 -60.616392982227104
		 6 -60.616392982227104 7 -60.616392982227104 8 -60.616392982227104 9 -60.616392982227104
		 10 -60.616392982227104 11 -60.616392982227104 13 4.6018304055166439 17 4.6018304055166412
		 20 -3.5159606956668537 22 -20.810065758389289 24 8.6528715510041465 27 -6.5959963186388784
		 30 0.51347476954337123;
createNode animCurveTL -n "CURVE1452";
	rename -uid "F262F436-46F7-62B3-E44E-8EB34FD1D388";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1453";
	rename -uid "5C63E17A-4BD4-62F2-EF81-DA95BAEEF412";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1454";
	rename -uid "95E5F1AE-41D3-4B5C-26A0-47AEA1C622A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1455";
	rename -uid "1464B6DA-43D6-6EEF-6DA9-48A6FEAD04E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1456";
	rename -uid "CD0D9BB6-4671-3A21-A9BA-F78A811DD101";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1457";
	rename -uid "20141D1E-49C0-976B-8433-F990A652D7A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1458";
	rename -uid "5DEE724B-436C-0D4B-6B8F-EE816E012BDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1459";
	rename -uid "5BEC610D-4D38-9995-BCE8-FA805395D7EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE1460";
	rename -uid "C44FCEAF-44D6-2038-0F50-6B9C2EE7D1CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1462";
	rename -uid "1298ECEC-434D-D01E-A1C8-86B9D241E28D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1463";
	rename -uid "A1D8D7E3-43B8-5033-77C8-829F57552F7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1464";
	rename -uid "C332A871-4ADE-F2E1-579F-22875A275A15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1465";
	rename -uid "355ED8A4-43E0-FD83-BA99-46AC020D13E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1466";
	rename -uid "15674A04-4043-C2A6-1B89-F8960EB468A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1467";
	rename -uid "F746D4DC-4CE4-3C11-D37A-FBB46D158152";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1468";
	rename -uid "5F369C98-4261-7ADA-1A38-8D8329369141";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.00058195610874512706 1 0.00058195610874512706
		 2 0.00058195610874512706 3 0.00058195610874512706 4 0.00058195610874512706 5 0.00058195610874512706
		 6 0.00058195610874512706 7 0.00058195610874512706 8 0.00058195610874512706 9 0.00058195610874512706
		 10 0.00058195610874512706 11 0.00058195610874512706 13 0 17 0 20 -21.914546896152736
		 22 -21.914546896152736;
createNode animCurveTA -n "CURVE1469";
	rename -uid "F34BDA29-4583-9C28-86DE-6EB6D6E21DD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -14.543101881846322 1 -14.543101881846322
		 2 -14.543101881846322 3 -14.543101881846322 4 -14.543101881846322 5 -14.543101881846322
		 6 -14.543101881846322 7 -14.543101881846322 8 -14.543101881846322 9 -14.543101881846322
		 10 -14.543101881846322 11 -14.543101881846322 13 -0.68948270784543553 17 -0.68948270784543542
		 20 -14.813476014310606 22 -14.813476014310606;
createNode animCurveTA -n "CURVE1470";
	rename -uid "C4CA054D-4E35-C45A-35E6-7AA006CFC803";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -3.0840132208518769 1 -3.0840132208518769
		 2 -3.0840132208518769 3 -3.0840132208518769 4 -3.0840132208518769 5 -3.0840132208518769
		 6 -3.0840132208518769 7 -3.0840132208518769 8 -3.0840132208518769 9 -3.0840132208518769
		 10 -3.0840132208518769 11 -3.0840132208518769 13 -7.6765608866401065 17 -7.6765608866401065
		 20 9.9894872804064914 22 9.9894872804064914;
createNode animCurveTL -n "CURVE1472";
	rename -uid "8161666D-42C2-C94D-AC8C-D299BD495CC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1473";
	rename -uid "ADC2974D-49EE-6BA7-2274-10B351417DBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1474";
	rename -uid "3FA12776-443D-997F-D0DB-3682D6DFA3FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1475";
	rename -uid "F976E5FE-4BAC-9892-6529-62AA4F55A0FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1476";
	rename -uid "11FF2C42-404C-D544-5D53-599927B5533B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1477";
	rename -uid "06CE27CA-457F-979D-7B94-B2B09FD4367E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1478";
	rename -uid "7E12A16A-4D83-429F-E4EF-9E85B1371B9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.67359674344172071 1 0.67359674344172071
		 2 0.67359674344172071 3 0.67359674344172071 4 0.67359674344172071 5 0.67359674344172071
		 6 0.67359674344172071 7 0.67359674344172071 8 0.67359674344172071 9 0.67359674344172071
		 10 0.67359674344172071 11 0.67359674344172071 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1479";
	rename -uid "4A369D75-4F87-8DC8-A696-9AAD631FD47C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -2.2266708258924282 1 -2.2266708258924282
		 2 -2.2266708258924282 3 -2.2266708258924282 4 -2.2266708258924282 5 -2.2266708258924282
		 6 -2.2266708258924282 7 -2.2266708258924282 8 -2.2266708258924282 9 -2.2266708258924282
		 10 -2.2266708258924282 11 -2.2266708258924282 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1480";
	rename -uid "D69DA141-409C-097E-F126-32B0581E62BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -17.719197314933581 1 -17.719197314933581
		 2 -17.719197314933581 3 -17.719197314933581 4 -17.719197314933581 5 -17.719197314933581
		 6 -17.719197314933581 7 -17.719197314933581 8 -17.719197314933581 9 -17.719197314933581
		 10 -17.719197314933581 11 -17.719197314933581 13 18.419191807234355 17 18.419191807234355
		 20 2.7326230987381717 22 -14.561481963984264 24 14.901455345409172 27 -0.34741252423384344
		 30 6.762058563948413;
createNode animCurveTA -n "CURVE1482";
	rename -uid "FB0C51FD-4229-7EE3-012C-6C91AC951B04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1483";
	rename -uid "449E013F-43C0-FD83-EFAB-A3852080D1FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1484";
	rename -uid "9326CC6B-4382-E214-51E2-4BB5750F094E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1486";
	rename -uid "549D136F-4991-AD3C-4F24-D9A1F6E177DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1487";
	rename -uid "2AC71AA2-497F-0E8C-6BAB-B688F414DD90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1488";
	rename -uid "1E3007E0-449A-7038-CDF2-F48A13E2DE9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1489";
	rename -uid "D6E14247-4D36-57C7-695E-A0A933744CFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0.99999999999999967 13 0.99999999999999967
		 17 0.99999999999999967 19 0.99999999999999967 20 0.99999999999999967 21 0.99999999999999967;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1490";
	rename -uid "C950008A-402D-D32A-7652-739F09964BD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1491";
	rename -uid "039A2EC8-4D15-34CE-3B5A-E2918108C3BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1492";
	rename -uid "C385B0BB-4F90-B985-86F8-4C90A99643E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1493";
	rename -uid "A12CDF51-4A08-9C4C-C796-95979C282839";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1494";
	rename -uid "A44D6BAA-4959-1059-11E4-1E9CEBE71F73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1496";
	rename -uid "2B244791-4F5A-38DE-0376-F4922C43BB7E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 6 7 6 11 6 13 6 15 6 17 6 24 6 26 6 27 6;
	setAttr -s 9 ".kyts[4:8]" yes no no yes no;
	setAttr -s 9 ".kit[0:8]"  18 18 9 9 18 9 9 18 
		9;
	setAttr -s 9 ".kot[0:8]"  18 18 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "CURVE1497";
	rename -uid "5A4473E0-454C-D8D7-6DC5-AAAD42E4C1F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 7 0 11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 9 ".kyts[4:8]" yes no no yes no;
createNode animCurveTL -n "CURVE1498";
	rename -uid "F5F78201-4245-A84A-4BD3-1E963EB3A143";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 7 0 11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 9 ".kyts[4:8]" yes no no yes no;
createNode animCurveTL -n "CURVE1499";
	rename -uid "5C67C952-4DDA-FC5D-5E9C-8D8E1A370766";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 7 0 11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 9 ".kyts[4:8]" yes no no yes no;
createNode animCurveTA -n "CURVE1500";
	rename -uid "B147DF8B-4DF1-D095-DA8F-1281B87CF76D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 7 0 11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 9 ".kyts[4:8]" yes no no yes no;
createNode animCurveTA -n "CURVE1501";
	rename -uid "12658572-4EE6-94A6-890F-7D9389E731DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 7 0 11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 9 ".kyts[4:8]" yes no no yes no;
createNode animCurveTA -n "CURVE1502";
	rename -uid "868B0734-4F5A-AA25-A3B4-C29794881717";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 7 0 11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 9 ".kyts[4:8]" yes no no yes no;
createNode animCurveTL -n "CURVE1504";
	rename -uid "779425D5-4784-733C-8209-66843BAD701E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1505";
	rename -uid "CE934A66-40FE-ABA1-A747-BA84A966F6B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1506";
	rename -uid "0225D60E-49EB-3E65-C607-AAB15A776666";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1507";
	rename -uid "70434778-4AE2-8059-6C12-64B608C6879E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1508";
	rename -uid "7B9DC596-4033-D8F0-ED00-628420ED6043";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000004 13 1.0000000000000004
		 17 1.0000000000000004 20 1.0000000000000004 22 1.0000000000000004;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1509";
	rename -uid "1F2566E4-416B-2CD6-610F-76B3848DCA26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1510";
	rename -uid "2A15F4AA-4F13-9AE1-3371-339A0C898797";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1511";
	rename -uid "574CBF61-413D-DE60-4B87-DCA47AD2644D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE1512";
	rename -uid "8F758FA5-4D91-2E13-3D38-608B8C51539C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1514";
	rename -uid "D28487E5-4D77-914F-7B6D-01A53B1856C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1515";
	rename -uid "215F14BB-4723-4E31-9FB8-83B7A6983451";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1516";
	rename -uid "14C885A6-4EF6-7731-BF3B-7DA6658005BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1517";
	rename -uid "AB45D95B-4FDB-DB33-7982-92862237D666";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1518";
	rename -uid "6811D22F-4B11-51D9-78BA-1A8973B0746C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1519";
	rename -uid "4B39BA6D-45C4-C4C6-E845-7A96B65C8593";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1520";
	rename -uid "6D32A5C6-4B44-F14F-FAF6-D39993E2B3CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1521";
	rename -uid "7C3C1AA5-4042-35DA-BE30-969E8D4439D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1522";
	rename -uid "2D416725-4D3D-7317-00E8-B7A04F84D1F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1524";
	rename -uid "D33BB054-41D2-1233-9F7F-67AD790053C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1525";
	rename -uid "B8B26715-4397-8689-A696-7A8228AC1416";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1526";
	rename -uid "11D257AE-4428-370E-57BD-588A1C44769C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1527";
	rename -uid "E0E69AE4-4D9D-0B28-8A4E-6AAD7F2FF199";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1528";
	rename -uid "AB19400E-4CD4-B55C-379F-63979BDF0C38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1529";
	rename -uid "311F8338-4F83-55CC-D7CA-D5AF5FF01303";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1530";
	rename -uid "A9C7D0C6-4073-7783-DA46-66B372FBD813";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1531";
	rename -uid "8657025E-40CE-5C8F-D888-15A7E1DF044D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE1532";
	rename -uid "68DCAF53-4258-F562-135A-18BF94FDFC09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1534";
	rename -uid "E87D40E1-4300-2A43-D59B-ED84C59BAB76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1535";
	rename -uid "EEF9F731-44E4-A910-7DF8-5B8139D28336";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1536";
	rename -uid "E2F9B898-4F92-1B0D-7E81-4E8958549312";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1537";
	rename -uid "655E7CA2-4764-EEBF-E39C-07B6401C3A89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1538";
	rename -uid "449CA24F-4927-ABAA-A089-4793EC061DD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1539";
	rename -uid "A5FDD7B4-459B-5D0C-E18A-61B5E449E5F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000004 13 1.0000000000000004
		 17 1.0000000000000004 20 1.0000000000000004 22 1.0000000000000004;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1540";
	rename -uid "72610FDC-4430-0C69-8835-AA95D28A42F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1541";
	rename -uid "A95DD29C-450B-BE62-3818-AA915E2477D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE1542";
	rename -uid "FC55541B-420E-0952-84AB-7FB38254873B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1544";
	rename -uid "FC9AA403-4398-B52F-3A6E-43B3D7921488";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1545";
	rename -uid "5ED6074C-4946-FD5C-F312-1C8F7F07898F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1546";
	rename -uid "59D9DBFE-45EA-31D8-B054-769C41713B05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1547";
	rename -uid "A0364D8F-4F19-8485-7F3C-B582EE74EC63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1548";
	rename -uid "AC8D0D20-4EC6-A395-25D7-3B96248F3740";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1549";
	rename -uid "B888DC22-4284-22C7-8484-95ABC70E9CCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1550";
	rename -uid "3308BF25-4E8A-7E97-D38C-689F954255BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 23.095810660738763 1 23.095810660738763
		 2 23.095810660738763 3 23.095810660738763 4 23.095810660738763 5 23.095810660738763
		 6 23.095810660738763 7 23.095810660738763 8 23.095810660738763 9 23.095810660738763
		 10 23.095810660738763 11 23.095810660738763 13 0 17 0 20 -0.59828237551534014 22 -0.59828237551534014;
createNode animCurveTA -n "CURVE1551";
	rename -uid "578FEC98-4D60-7FED-80E4-B5A73CC0DD37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 22.87232953125114 1 22.87232953125114
		 2 22.87232953125114 3 22.87232953125114 4 22.87232953125114 5 22.87232953125114 6 22.87232953125114
		 7 22.87232953125114 8 22.87232953125114 9 22.87232953125114 10 22.87232953125114
		 11 22.87232953125114 13 -18.07908499940843 17 -18.079084999408433 20 6.8203916319263493
		 22 6.8203916319263493;
createNode animCurveTA -n "CURVE1552";
	rename -uid "A7880E4A-45C5-885A-C898-E6AABAD94C26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -46.4791238070502 1 -46.4791238070502
		 2 -46.4791238070502 3 -46.4791238070502 4 -46.4791238070502 5 -46.4791238070502 6 -46.4791238070502
		 7 -46.4791238070502 8 -46.4791238070502 9 -46.4791238070502 10 -46.4791238070502
		 11 -46.4791238070502 13 11.783532863754623 17 11.783532863754617 20 13.776466975485079
		 22 13.776466975485079;
createNode animCurveTU -n "CURVE1553";
	rename -uid "5D0C521D-46F6-7AB2-1B8B-519602C94D29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1555";
	rename -uid "5C414DDF-4612-6C6E-07A4-798563479A68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1556";
	rename -uid "0CCA57B7-424A-09C0-04F6-51A9814EE22E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1557";
	rename -uid "4A0A5158-4238-3BC5-ADFF-52894C782D96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1559";
	rename -uid "6ED4CA07-4D4F-0A63-034C-CB88F10D17B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1560";
	rename -uid "6BC15B8E-4EC6-4D25-4EDB-35BA20B26970";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1561";
	rename -uid "3EF321CF-40B5-85B6-48A8-B8AE9740FC73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1562";
	rename -uid "29D0E5C2-4282-4630-12AC-72A6ECFBEAE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1563";
	rename -uid "7289204A-442C-2EDC-947F-4CA1B4C2BB40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1564";
	rename -uid "2B5686DE-4D23-6ACB-EA39-D79F6D6E6766";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000004 13 1.0000000000000004
		 17 1.0000000000000004 20 1.0000000000000004 22 1.0000000000000004;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1565";
	rename -uid "3C6BB07C-4510-0593-7234-5FA81F80D9D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1566";
	rename -uid "7466D4B9-42AF-9231-9D5C-059BCA2F3E2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE1567";
	rename -uid "78610C86-461D-F444-70B0-B2ACFCDD8A6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1569";
	rename -uid "30728342-4B9A-5F86-5A29-16B892BF0310";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1570";
	rename -uid "A093535D-49AF-7F54-83B0-BB89D5E30D02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1571";
	rename -uid "70383926-4E31-E10D-9797-34BD70CF6600";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1572";
	rename -uid "18947D07-46B0-509D-7F5B-248677A0088E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1573";
	rename -uid "D0E73EDD-4AFC-B6C6-F3E0-7B95C827B015";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000004 13 1.0000000000000004
		 17 1.0000000000000004 20 1.0000000000000004 22 1.0000000000000004;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1574";
	rename -uid "430D9A44-4521-9911-8A9F-9EBB9C28D983";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 20 1.0000000000000002 22 1.0000000000000002;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1575";
	rename -uid "EE08F18D-455E-2822-1DE5-50ADB10199E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1576";
	rename -uid "26FD0767-43E0-E515-5781-1CAE6053DFCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE1577";
	rename -uid "541855A9-4BB6-475F-8919-63B88F2016A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1579";
	rename -uid "6A443176-4BE3-B613-4C3F-13868E5FD881";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 20.036155540969375 1 20.036155540969375
		 2 20.036155540969375 3 20.036155540969375 4 20.036155540969375 5 20.036155540969375
		 6 20.036155540969375 7 20.036155540969375 8 20.036155540969375 9 20.036155540969375
		 10 20.036155540969375 11 20.036155540969375 12 20.036155540969375 13 20.036155540969375
		 14 20.036155540969375 15 20.036155540969375 16 20.036155540969375 17 20.036155540969375
		 18 0.049675098303874794 19 -37.068074295217905 20 -57.054554737883528 21 -57.054554737883528
		 22 -57.054554737883528 23 -56.907968711710119 24 -56.585479454128624 25 -56.262990196547129
		 26 -56.116404170373727 27 -56.860257284854086 28 -57.604110399334452 29 -57.37792596816093
		 30 -57.151741536987416 31 -57.297549450968482 32 -57.443357364949549;
createNode animCurveTA -n "CURVE1580";
	rename -uid "22FA297F-45B9-CF81-D296-598CF94C889F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -7.7359940321533482 1 -7.7359940321533482
		 2 -7.7359940321533482 3 -7.7359940321533482 4 -7.7359940321533482 5 -7.7359940321533482
		 6 -7.7359940321533482 7 -7.7359940321533482 8 -7.7359940321533482 9 -7.7359940321533482
		 10 -7.7359940321533482 11 -7.7359940321533482 12 -7.7359940321533482 13 -7.7359940321533482
		 14 -7.7359940321533482 15 -7.7359940321533482 16 -7.7359940321533482 17 -7.7359940321533482
		 18 -8.3890464281077524 19 -9.6018580205945074 20 -10.254910416548915 21 -10.254910416548915
		 22 -10.254910416548915 23 -11.196362317260565 24 -13.267556498826186 25 -15.338750680391819
		 26 -16.280202581103463 27 -9.5112984810712291 28 -2.7423943810389888 29 -6.0646908269696809
		 30 -9.3869872729004005 31 -7.7100206679947059 32 -6.0330540630890086;
createNode animCurveTU -n "CURVE1581";
	rename -uid "7AE15E4E-4C3C-1401-3348-B0B07EBF2E40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0;
createNode animCurveTU -n "CURVE1582";
	rename -uid "53C3939E-454F-61F6-2739-1FB55898B08F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0;
createNode animCurveTA -n "CURVE1583";
	rename -uid "9A5BAA1E-4C7A-FA50-753A-15B2534593D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 23.362030383248769 1 23.362030383248769
		 2 23.362030383248769 3 23.362030383248769 4 23.362030383248769 5 23.362030383248769
		 6 23.362030383248769 7 23.362030383248769 8 23.362030383248769 9 23.362030383248769
		 10 23.362030383248769 11 23.362030383248769 12 23.362030383248769 13 23.362030383248769
		 14 23.362030383248769 15 23.362030383248769 16 23.362030383248769 17 23.362030383248769
		 18 18.458396664196275 19 9.3516483288130381 20 4.4480146097605209 21 4.4480146097605209
		 22 4.4480146097605209 23 3.8104298811679125 24 2.4077434782641789 25 1.0050570753604406
		 26 0.36747234676783236 27 4.828902692843994 28 9.2903330389201546 29 7.1540520560230902
		 30 5.017771073126009 31 6.1040028956375023 32 7.1902347181489938;
createNode animCurveTU -n "CURVE1584";
	rename -uid "0D0BA56F-4886-6F56-5772-BA9D20B6AD86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0;
createNode animCurveTL -n "CURVE1586";
	rename -uid "78F763BC-4D28-6CA9-DE68-839531DDDC21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1587";
	rename -uid "2F0CA831-4776-9705-9D6D-5E8C7BDFDDCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1588";
	rename -uid "1825C184-45E3-F86C-92BE-6BA002FD720E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1589";
	rename -uid "B4C2CDBD-4E23-34F8-4B29-C59C46472065";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1590";
	rename -uid "2A7CF314-44D5-484F-DD87-20890A18AB86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1591";
	rename -uid "66995D07-4B40-435E-BFC4-38A4EB127EF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1592";
	rename -uid "99CF1C36-45D3-ABCC-2C2C-C1A3F3E65AE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.95371453478861135 1 0.95371453478861135
		 2 0.95371453478861135 3 0.95371453478861135 4 0.95371453478861135 5 0.95371453478861135
		 6 0.95371453478861135 7 0.95371453478861135 8 0.95371453478861135 9 0.95371453478861135
		 10 0.95371453478861135 11 0.95371453478861135 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1593";
	rename -uid "1DD55190-4B8D-638E-CB22-F3BED61859A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -1.7673735111469118 1 -1.7673735111469118
		 2 -1.7673735111469118 3 -1.7673735111469118 4 -1.7673735111469118 5 -1.7673735111469118
		 6 -1.7673735111469118 7 -1.7673735111469118 8 -1.7673735111469118 9 -1.7673735111469118
		 10 -1.7673735111469118 11 -1.7673735111469118 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1594";
	rename -uid "0FA3A889-4D10-35EB-20BA-C28A15DDBA85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -55.593027124816999 1 -55.593027124816999
		 2 -55.593027124816999 3 -55.593027124816999 4 -55.593027124816999 5 -55.593027124816999
		 6 -55.593027124816999 7 -55.593027124816999 8 -55.593027124816999 9 -55.593027124816999
		 10 -55.593027124816999 11 -55.593027124816999 13 13.942258808083395 17 13.942258808083396
		 20 2.2849297988230775 22 -15.009175263899387 24 14.45376204549407 27 -0.79510582414894826
		 30 6.3143652640333068;
createNode animCurveTL -n "CURVE1596";
	rename -uid "D2D7B284-40D6-6CCA-F472-BAA1D805ECD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1597";
	rename -uid "4EBEB5F7-4CE9-F2DB-A07B-CE906776619B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1598";
	rename -uid "FEDF2004-4513-3171-BA84-B29493DCE8DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1599";
	rename -uid "6B24B138-4030-DF4A-ACE2-439A3B5CA64A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1600";
	rename -uid "E2FA8AA5-464D-7006-C1CD-70BE08E07CEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1601";
	rename -uid "A521F83A-4F8C-DBDB-1A96-93A0BB5852DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1602";
	rename -uid "C1C1CD4E-4343-C6F6-F92F-84B02183FD6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1603";
	rename -uid "7976BA88-4E93-E1DA-6E93-639B4AB537E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE1604";
	rename -uid "A0968DAB-43EF-BC47-B71E-34A137907F1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1606";
	rename -uid "4FC041EA-4E01-9329-E875-0CAC9E672EC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1607";
	rename -uid "73D06962-4D7D-63AD-47C1-D5BBA6BDBDF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1608";
	rename -uid "FE21C81F-4D5D-4A9C-CF66-C0861B2BFB90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1609";
	rename -uid "F4CD61B0-4723-35E1-A125-2C8F2BD5ADD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1610";
	rename -uid "C735C85B-4185-8277-FB64-6CB75680B5F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1611";
	rename -uid "59DBC842-4665-5D02-3486-0F9535F4F2D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1612";
	rename -uid "2545E19D-4574-96F9-A4EE-818567670B8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1613";
	rename -uid "751816CA-48BD-D5DD-6433-558EA5C1F539";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1615";
	rename -uid "A9948D42-4BB2-E5F0-10C4-1A8995C6EF6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1616";
	rename -uid "BE679C60-4C7D-BCBC-8D25-44917526E835";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1617";
	rename -uid "1C27E5CA-4FDE-02AD-A665-75AE4DDD4E28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1618";
	rename -uid "26903E01-4E29-544A-8133-F398EE3DA8C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1619";
	rename -uid "A67303A1-4FB3-9007-FFD5-55A3443CBC9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1620";
	rename -uid "D5AA344E-4DB0-67B2-35B4-7CBB4AC1DF9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1621";
	rename -uid "93661A49-4FDB-9DF1-6C20-3990162B3CF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1622";
	rename -uid "BA42ECCD-4EE9-7233-5DE3-2D892EFDCB25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1624";
	rename -uid "B62EA2D6-494B-2AC4-AFD4-3E8196707286";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1625";
	rename -uid "03E0F34E-4E09-D5B9-86BB-2091FCFBC0A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1626";
	rename -uid "A9AE1949-4824-6CC7-1294-CBAD660A9D7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1627";
	rename -uid "699C8BAF-4B12-546F-9446-95B120437799";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1628";
	rename -uid "4C04A2F0-4CC5-D5F7-804E-C08FA1E3AE56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000009 13 1.0000000000000009
		 17 1.0000000000000009 19 1.0000000000000009 20 1.0000000000000009 21 1.0000000000000009;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1629";
	rename -uid "AF71FC41-4122-0A6E-02E6-E79A7A5379E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1630";
	rename -uid "D572D2B1-4789-5009-1A74-D9A496BF89EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1631";
	rename -uid "04D5EE81-43C8-779D-234C-59849909BC49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1632";
	rename -uid "E6A836F7-4D86-D491-B781-A2BE027F4076";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1634";
	rename -uid "7BB0ECE2-443C-E970-399F-6B8C57CC3427";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE1635";
	rename -uid "FA6D6C49-42D5-3252-ACB6-9DBC9CDBEB15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE1636";
	rename -uid "5F35FC91-4088-D53E-70BF-239893EBB276";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE1637";
	rename -uid "13629DEF-44B0-39BC-E550-00821F935FEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 -22.906401307316546 22 -25.451557008129495;
	setAttr -s 20 ".kyts[18:19]" yes no;
createNode animCurveTA -n "CURVE1638";
	rename -uid "9A7992AB-4F84-5C49-8ADE-C994A6774B82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 10.818566014621251 1 9.6199927368775118
		 2 6.5289353363804992 3 -9.6202625111140989 4 -10.818835788857841 5 -9.6202625111141007
		 6 -6.5292051106170854 7 9.6199927368775153 8 10.818566014621251 9 9.6199927368775118
		 10 6.5289353363804992 11 -9.6202625111140989 12 -10.818835788857841 13 9.6199927368775153
		 15 9.6199927368775153 17 9.6199927368775153 19 9.6199927368775153 20 9.6199927368775153
		 21 9.6199927368775153;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE1639";
	rename -uid "05B011DB-464A-CE75-E190-89B126050A82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE1641";
	rename -uid "BEA3200B-4A84-36B5-533F-B2A12C71663A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 1 7.1054273576010019e-015 2 7.1054273576010019e-015
		 3 7.1054273576010019e-015 4 7.1054273576010019e-015 5 7.1054273576010019e-015 6 7.1054273576010019e-015
		 7 7.1054273576010019e-015 8 7.1054273576010019e-015 9 7.1054273576010019e-015 10 7.1054273576010019e-015
		 11 7.1054273576010019e-015 12 7.1054273576010019e-015 13 0 14 0 15 -7.1054273576010019e-015
		 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0;
createNode animCurveTL -n "CURVE1642";
	rename -uid "B5195767-4BFE-408F-2087-BE8F224AD098";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 8.8817841970012523e-016 1 2.6645352591003757e-015
		 2 2.6645352591003757e-015 3 2.6645352591003757e-015 4 2.6645352591003757e-015 5 2.6645352591003757e-015
		 6 2.6645352591003757e-015 7 2.6645352591003757e-015 8 2.6645352591003757e-015 9 2.6645352591003757e-015
		 10 2.6645352591003757e-015 11 2.6645352591003757e-015 12 2.6645352591003757e-015
		 13 8.8817841970012523e-016 14 2.6645352591003757e-015 15 8.8817841970012523e-016
		 16 2.6645352591003757e-015 17 2.6645352591003757e-015 21 2.6645352591003757e-015
		 22 2.6645352591003757e-015 23 2.6645352591003757e-015 24 8.8817841970012523e-016
		 25 8.8817841970012523e-016 26 8.8817841970012523e-016 27 8.8817841970012523e-016
		 28 8.8817841970012523e-016 29 8.8817841970012523e-016 30 8.8817841970012523e-016;
createNode animCurveTL -n "CURVE1643";
	rename -uid "35B8E482-4BFD-AB62-4484-2A9E027B980B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 2.6645352591003757e-015 1 2.6645352591003757e-015
		 2 1.7763568394002505e-015 3 8.8817841970012523e-016 4 8.8817841970012523e-016 5 1.7763568394002505e-015
		 6 1.7763568394002505e-015 7 8.8817841970012523e-016 8 8.8817841970012523e-016 9 1.7763568394002505e-015
		 10 8.8817841970012523e-016 11 8.8817841970012523e-016 12 8.8817841970012523e-016
		 13 2.6645352591003757e-015 14 2.6645352591003757e-015 15 8.8817841970012523e-016
		 16 3.5527136788005009e-015 17 2.6645352591003757e-015 21 2.6645352591003757e-015
		 22 2.6645352591003757e-015 23 3.5527136788005009e-015 24 2.6645352591003757e-015
		 25 2.6645352591003757e-015 26 2.6645352591003757e-015 27 2.6645352591003757e-015
		 28 2.6645352591003757e-015 29 2.6645352591003757e-015 30 2.6645352591003757e-015;
createNode animCurveTA -n "CURVE1644";
	rename -uid "92857DDE-46B9-E141-795B-54A99420DFA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 -0.015212091715358741 1 -1.2234061380254182
		 2 178.84909437597486 3 177.20442969045536 4 177.47437308875689 5 177.99482311755938
		 6 177.83503331565021 7 177.21077459923021 8 177.59816977044892 9 177.76095511748866
		 10 178.0094727453442 11 175.72303653074758 12 176.80859570382225 13 -1.0092880830874511
		 14 -1.9400051742533735 15 -2.0547039993603362 16 -2.8976977561760884 17 -2.8267343779588776
		 21 -6.2533185213868663 22 -4.6576880725990284 23 -2.928496026528169 24 -1.4831494281517554
		 25 -0.65183293959008148 26 -0.17605307442056131 27 -0.024822937326335143 28 -0.022850219219847916
		 29 -0.017931419701620547 30 -0.016066405505485836;
createNode animCurveTA -n "CURVE1645";
	rename -uid "587FDEA3-4E51-7B29-1B86-9687D8CC2BCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 -0.24588634590031552 1 22.392179744074777
		 2 152.18686216562926 3 146.60421017043075 4 148.49232866045276 5 149.93676980125417
		 6 150.74422165710584 7 146.96625284884823 8 148.87267978635791 9 149.85600011609259
		 10 146.05434404738594 11 141.94260771750311 12 148.30508185387075 13 -0.92139022108186197
		 14 -43.256091410241382 15 -52.138234951598193 16 -23.570407864834291 17 -31.731448241182314
		 21 -46.304366876520589 22 -45.334627269368823 23 -28.643009343462008 24 -1.9616414032394511
		 25 4.8838054389277996 26 -1.2416511730731823 27 -3.073437930609721 28 -1.094055391331298
		 29 -0.50033445681420619 30 -0.32222070886574461;
createNode animCurveTA -n "CURVE1646";
	rename -uid "E519609F-4AEA-7258-8A3C-C8ABF13FBE36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0.00075277189257422477 1 0.55368094637222265
		 2 181.85696466364828 3 -180.09439180261614 4 -179.38833118292013 5 181.50664839088756
		 6 181.00701813519595 7 -179.15953214689571 8 -178.97529890759745 9 180.85950498150027
		 10 -177.93829190012127 11 -180.74971095953521 12 -179.92099849930571 13 4.4126509773740192
		 14 -1.3140033707085887 15 -4.3863577127211704 16 -0.23034799458601363 17 -0.86715677306128958
		 21 3.2472965004196426 22 -0.12820304178170228 23 -0.15371660676277177 24 -0.0057577073200593149
		 25 -0.037790322586590534 26 0.0053591256482794095 27 0.011297717057237906 28 0.0039130654370644309
		 29 0.0017007429301237856 30 0.0010371572536930686;
createNode animCurveTL -n "CURVE1648";
	rename -uid "2996790F-43C6-784F-E5B5-C0B1A7B94FDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1649";
	rename -uid "A603D405-44A9-F433-FA3C-07B8D952B9CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1650";
	rename -uid "AD66335D-4B09-E11E-CB4E-F89E2E677552";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1651";
	rename -uid "3B9C78A0-4B00-B8E4-F256-DC94B9300CDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1652";
	rename -uid "E8BB8B0A-43C1-FCA1-2278-748BCB866A7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "CURVE1653";
	rename -uid "6F138FBB-4205-A8A9-5603-4BB1BD9ECBEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 13 1 17 1 20 1 22 1;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1654";
	rename -uid "F5BF2B59-40DF-8DDF-648B-0FA219888AC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "CURVE1655";
	rename -uid "038C6BBD-4A11-CAD3-108B-BEB70CEE0F9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
createNode animCurveTA -n "CURVE1656";
	rename -uid "69845968-4E82-5B98-02A4-9290560918FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 13 0 17 0 20 0 22 0;
	setAttr -s 5 ".kyts[3:4]" yes no;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "CURVE1658";
	rename -uid "26E622EB-49AA-B566-0816-C3BA4D537353";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1659";
	rename -uid "190C2F5E-40C2-A2C8-09D5-2F815D7DA9E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1660";
	rename -uid "4AA9BEE6-4972-1BC4-78D4-38B92C3E935E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1661";
	rename -uid "849C72EF-4B95-5866-E6CF-0E8BB40C04EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1662";
	rename -uid "9F840E77-4F54-6C87-E6DC-CB8D6B141B49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1663";
	rename -uid "47FE97FC-4C5E-A0FF-6F02-87B44AE887BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1664";
	rename -uid "86BD578E-45E9-7367-8684-0C95186EA28E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.95371453478861135 1 0.95371453478861135
		 2 0.95371453478861135 3 0.95371453478861135 4 0.95371453478861135 5 0.95371453478861135
		 6 0.95371453478861135 7 0.95371453478861135 8 0.95371453478861135 9 0.95371453478861135
		 10 0.95371453478861135 11 0.95371453478861135 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1665";
	rename -uid "8F945CCF-43D6-5525-6780-C1A355052CEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -1.7673735111469118 1 -1.7673735111469118
		 2 -1.7673735111469118 3 -1.7673735111469118 4 -1.7673735111469118 5 -1.7673735111469118
		 6 -1.7673735111469118 7 -1.7673735111469118 8 -1.7673735111469118 9 -1.7673735111469118
		 10 -1.7673735111469118 11 -1.7673735111469118 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1666";
	rename -uid "186619FD-4E76-FFB7-A3A8-889A44D8D620";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -55.593027124816999 1 -55.593027124816999
		 2 -55.593027124816999 3 -55.593027124816999 4 -55.593027124816999 5 -55.593027124816999
		 6 -55.593027124816999 7 -55.593027124816999 8 -55.593027124816999 9 -55.593027124816999
		 10 -55.593027124816999 11 -55.593027124816999 13 13.942258808083395 17 13.942258808083396
		 20 9.0438188580367402 22 -8.2502862046857253 24 21.212651104707728 27 5.9637832350647191
		 30 13.07325432324699;
createNode animCurveTL -n "CURVE1668";
	rename -uid "68AC41F9-4FE3-11CC-9179-7DB9F2353EBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1669";
	rename -uid "28EC1B57-4124-C0F5-F93A-ACAA75E39798";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1670";
	rename -uid "EC5E6D15-43F7-2B8D-6B00-66B013FE3DE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1671";
	rename -uid "EC6CD62F-4E36-0B41-10B7-848A07A02CB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1672";
	rename -uid "4CFEF1A4-4F44-CB51-7380-27B042CE9869";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1673";
	rename -uid "5AD2A56A-4B86-F3E6-0437-2F888346DDF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1674";
	rename -uid "A91630A3-4E83-B65A-1EE3-B2B16174ECE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1.5613366149229946 1 1.5613366149229946
		 2 1.5613366149229946 3 1.5613366149229946 4 1.5613366149229946 5 1.5613366149229946
		 6 1.5613366149229946 7 1.5613366149229946 8 1.5613366149229946 9 1.5613366149229946
		 10 1.5613366149229946 11 1.5613366149229946 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1675";
	rename -uid "FD2874C4-492D-E2CF-3618-BBB7910F0D29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -1.7139970998927803 1 -1.7139970998927803
		 2 -1.7139970998927803 3 -1.7139970998927803 4 -1.7139970998927803 5 -1.7139970998927803
		 6 -1.7139970998927803 7 -1.7139970998927803 8 -1.7139970998927803 9 -1.7139970998927803
		 10 -1.7139970998927803 11 -1.7139970998927803 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1676";
	rename -uid "82B77594-46A1-1C50-87F3-9FB5001672D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -69.072678163694661 1 -69.072678163694661
		 2 -69.072678163694661 3 -69.072678163694661 4 -69.072678163694661 5 -69.072678163694661
		 6 -69.072678163694661 7 -69.072678163694661 8 -69.072678163694661 9 -69.072678163694661
		 10 -69.072678163694661 11 -69.072678163694661 13 4.5891792455676494 17 4.5891792455676548
		 20 1.0701571185195964 22 -16.22394794420283 24 13.238989365190609 27 -2.0098785044524141
		 30 5.0995925837298417;
createNode animCurveTA -n "CURVE1678";
	rename -uid "1E592059-4153-DFCA-2E0A-2CB5DA26D1C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 15.809467235499859 1 15.840497384583413
		 2 15.920522505904156 3 16.338612935661516 4 16.369643084745068 5 16.338612935661516
		 6 16.258587814340768 7 15.840497384583413 8 15.809467235499859 9 15.840497384583413
		 10 15.920522505904156 11 16.338612935661516 12 16.369643084745068 13 -2.5189783410252424
		 17 -35.177652707673353 20 -34.188364664346928 22 -33.418318192416066;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTA -n "CURVE1679";
	rename -uid "57ED3B4F-4659-B5CB-7D60-8ABAD4D18843";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -7.9394590978384745 1 -8.4293631987701367
		 2 -10.286773608440086 3 -15.501648549650126 4 -16.783517340973216 5 -16.293613240041555
		 6 -14.683691796118909 7 -9.1223323028626186 8 -7.9394590978384745 9 -8.4293631987701367
		 10 -10.286773608440086 11 -15.501648549650126 12 -16.783517340973216 13 -28.072267753265567
		 17 -24.118113460421853 20 7.1389455581275385 22 -0.20463000654443658;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTU -n "CURVE1680";
	rename -uid "18A2531D-4D11-88AB-3E00-CB9DD92F098B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTU -n "CURVE1681";
	rename -uid "9B6A0E39-4306-DA0F-505F-CEAFDFB2E667";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTA -n "CURVE1682";
	rename -uid "D52AD20E-45CE-EC6E-CA65-4594DAA15E52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -54.359044907290937 1 -54.5035369374719
		 2 -54.876174278464909 3 -56.82301426406103 4 -56.967506294241993 5 -56.82301426406103
		 6 -56.450376923068028 7 -54.5035369374719 8 -54.359044907290937 9 -54.5035369374719
		 10 -54.876174278464909 11 -56.82301426406103 12 -56.967506294241993 13 -11.518626115778197
		 17 14.60788461831938 20 8.2562261177891507 22 14.786955260073416;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTU -n "CURVE1683";
	rename -uid "8EC29264-4914-E42D-34E1-799A03B0C4E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTU -n "CURVE1684";
	rename -uid "2F05E5AB-49B2-A1B2-B5D6-0FBDF751A948";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 3 1 3 2 3 3 3 4 3 5 3 6 3 7 3 8 3 9 3
		 10 3 11 3 12 3 13 3 17 3 20 3 22 3;
	setAttr -s 17 ".kyts[15:16]" yes no;
	setAttr -s 17 ".kit[16]"  9;
	setAttr -s 17 ".kot[16]"  5;
createNode animCurveTL -n "CURVE1686";
	rename -uid "B2085E8A-4EA9-D0FF-4E4E-F08B937C5727";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1687";
	rename -uid "781E001E-48E1-52DB-16C6-528B06FA97C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0.44532265766311402 15 0.4007903918968026
		 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1688";
	rename -uid "7E05EFCE-4080-6734-A1EF-FC8AD0FFABF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1689";
	rename -uid "D5FB735E-447A-D1A2-C47C-7A8CF493031C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1690";
	rename -uid "7F41CF5B-4380-C64C-CCCA-69AC73F872F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1691";
	rename -uid "F6228DE2-4E39-07E1-3EA0-FCA2C944E6FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1693";
	rename -uid "9D679470-448F-260D-0203-758E16541312";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0.30934934514813472 15 0.27841441063332123
		 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1694";
	rename -uid "3740EE72-4F32-3554-9579-EA9ED438835E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1695";
	rename -uid "FE9C03B5-4984-1F63-2066-D3AFAD91ECB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1696";
	rename -uid "22DE92F1-47CB-142D-2B0C-4F9E4EA9F031";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1697";
	rename -uid "2CC5ED1C-49FD-B542-A272-10A02F6045D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1698";
	rename -uid "7C6B1DBC-4385-FC5D-7BD2-27A111192027";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1699";
	rename -uid "6389C50E-4BB4-B8FE-1144-01A73A7ECCED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1700";
	rename -uid "29DF264E-4045-AD98-E954-C1B3512EFA61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1701";
	rename -uid "34CB16D3-4467-FBC7-DD79-1C97A1A730B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1702";
	rename -uid "5667C850-48E1-AA02-9696-2FAD41A305CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1704";
	rename -uid "6F73A7E8-4B45-65D6-BA98-6DABACC888B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1705";
	rename -uid "58D977D0-4855-6BD7-F6C4-75B157D39394";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1706";
	rename -uid "CB1D7469-48D3-720C-1229-AEBA6947622D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1708";
	rename -uid "E2102D79-4E84-B818-E46E-4EA246EEE14B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1709";
	rename -uid "67EA5C78-405D-D2AB-39D4-51B9C608A0BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1710";
	rename -uid "953B71B1-4E9B-669A-7521-AB9A415807B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1711";
	rename -uid "E44326B5-4A42-5E8E-3842-E2B1DA3B70A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1712";
	rename -uid "C81A9805-44B3-4CA8-84F4-7B825BA3961B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1713";
	rename -uid "B3FA6DC0-4130-392C-B6F6-6E8917097414";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1714";
	rename -uid "F098C633-4C51-934F-5C3A-80AEF2C7E622";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1715";
	rename -uid "B12B67FB-4476-5864-6DFC-738C3285A2CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1716";
	rename -uid "EBDA740A-48E1-6FB2-22C9-8E9A7304CE7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1718";
	rename -uid "EEB60144-42EB-6C59-8320-30AB8A145D2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0.30934934514813461 15 0.27841441063332117
		 17 -0.58822566676846344 24 -0.58822566676846344 27 -0.58822566676846344 29 -0.58822566676846344;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1719";
	rename -uid "D3EB1D8E-45A8-6D9C-4938-59B9F7D98E67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1720";
	rename -uid "B12C3229-42DC-AEFE-70AB-A7BFE633793E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1721";
	rename -uid "72F57E44-4086-CD92-C2AF-94B34BCC8509";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1722";
	rename -uid "816F4381-43F4-E0F8-8224-2ABB409CB591";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1723";
	rename -uid "1FCD98A1-4F1D-FEBC-62F6-608F9D84B12A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1724";
	rename -uid "9D71CD50-45DE-3F6D-31D4-688155B5CDAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1725";
	rename -uid "030FC6B4-48F6-CD47-B0C2-58ACD5523D8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1726";
	rename -uid "0B8DCF85-4AB9-0D78-040C-CB835828EBEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1727";
	rename -uid "AE288E30-4579-BD86-E3BC-EDA6C1DAAD07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1729";
	rename -uid "3C3159BC-4B2B-18E2-6818-E1AC37A15E97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1730";
	rename -uid "DFDFB0C5-4A7A-0DFD-124B-A98A12D2CE2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1731";
	rename -uid "3BD678B7-4B58-5AE1-8543-8D9182D2FED1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1732";
	rename -uid "8CB5196B-4BBA-679B-FE95-C69F874BF9A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1733";
	rename -uid "42C29831-44D6-66B0-46A9-A8A8242DB631";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1734";
	rename -uid "5C3C5B30-41F8-1917-2313-99B0FE788D28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 26 1 27 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1735";
	rename -uid "051A95B6-4663-9661-A8AD-0FA6FBD6A4B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1736";
	rename -uid "246EE095-4A96-64E3-E29B-E7B211D96CA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1737";
	rename -uid "91E2AAD8-4B3C-7F46-6CF9-AF8FD1F24E00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1739";
	rename -uid "42B02812-4A97-2960-2371-1AA86DA8FBC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1740";
	rename -uid "9545237B-4224-256B-277D-98994A081E34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 -0.24206111863614285 15 -0.21785500677252856
		 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1741";
	rename -uid "F31304FF-445A-F30C-7C88-AAB8D0D5376C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1742";
	rename -uid "34C0C0EF-4917-63CC-B09B-4196213FE830";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1743";
	rename -uid "DA6E778A-40F2-4E61-13E0-E2A72997CFEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1744";
	rename -uid "428196AE-4B91-553D-BA4D-53A6E5F63603";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1746";
	rename -uid "FF6BFF6E-464D-33F7-0982-0A8CC00EE781";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTL -n "CURVE1747";
	rename -uid "E266D94A-41C5-B3B6-AC17-4B96ACB0DF60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTL -n "CURVE1748";
	rename -uid "56FDD282-44DA-EE3B-44A0-439C47450362";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTU -n "CURVE1749";
	rename -uid "07A7E3E9-4E19-36F7-D7B8-49A7A3014DA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTA -n "CURVE1750";
	rename -uid "3E9834D4-412D-FD2F-C4E2-4EB7A2187731";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 0;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTA -n "CURVE1751";
	rename -uid "258E7483-450C-6791-BC66-8C9B45F68E17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 17 0 20 0 22 23.343303568963425;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTA -n "CURVE1752";
	rename -uid "A0D10D60-4399-4F3D-76CF-9FB7BCA5880D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -10.790232091969441 1 -10.790232091969441
		 2 -10.790232091969441 3 -10.790232091969441 4 -10.790232091969441 5 -10.790232091969441
		 6 -10.790232091969441 7 -10.790232091969441 8 -10.790232091969441 9 -10.790232091969441
		 10 -10.790232091969441 11 -10.790232091969441 12 -10.790232091969441 13 -10.790232091969441
		 17 6.8400332541502697 20 6.8400332541502689 22 6.8400332541502689;
	setAttr -s 17 ".kyts[15:16]" yes no;
createNode animCurveTL -n "CURVE1754";
	rename -uid "30E8ED20-4307-273F-7821-85B92672DCBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1755";
	rename -uid "7A2F5C4B-4834-013B-F326-4B8FE131821F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1756";
	rename -uid "888862A2-4E09-8E28-0197-B9B7C7DFF208";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1757";
	rename -uid "824A1EE6-44AC-1BAB-A6E8-2CAF804A9839";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1758";
	rename -uid "A905EE60-4BEE-C3FF-E382-3182754D82E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1759";
	rename -uid "205D6222-4324-676E-8022-F887CE995805";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1760";
	rename -uid "49A12031-4B10-ECAA-C057-97BED55F9DF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1.4223904519776722 1 1.4223904519776722
		 2 1.4223904519776722 3 1.4223904519776722 4 1.4223904519776722 5 1.4223904519776722
		 6 1.4223904519776722 7 1.4223904519776722 8 1.4223904519776722 9 1.4223904519776722
		 10 1.4223904519776722 11 1.4223904519776722 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1761";
	rename -uid "CFD27189-4EAF-F0E5-5915-A3B67437F1A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -1.995231681194664 1 -1.995231681194664
		 2 -1.995231681194664 3 -1.995231681194664 4 -1.995231681194664 5 -1.995231681194664
		 6 -1.995231681194664 7 -1.995231681194664 8 -1.995231681194664 9 -1.995231681194664
		 10 -1.995231681194664 11 -1.995231681194664 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1762";
	rename -uid "4015F80E-4996-64A7-83D4-EE99B4224F8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -69.039953561355489 1 -69.039953561355489
		 2 -69.039953561355489 3 -69.039953561355489 4 -69.039953561355489 5 -69.039953561355489
		 6 -69.039953561355489 7 -69.039953561355489 8 -69.039953561355489 9 -69.039953561355489
		 10 -69.039953561355489 11 -69.039953561355489 13 9.066112244718596 17 9.0661122447185978
		 20 1.5178504184347008 22 -15.776254644287746 24 13.686682665105723 27 -1.5621852045372948
		 30 5.5472858836449452;
createNode animCurveTL -n "CURVE1764";
	rename -uid "5190C638-4D54-8131-6CEA-3A944BB89C0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1765";
	rename -uid "C6821AC8-43B3-7023-5360-7C89151A349F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1766";
	rename -uid "AB6F22CF-4256-16E1-3A69-FBA6D485AE9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1767";
	rename -uid "5FDA9359-42CB-901E-7F18-52A2334EC8CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1768";
	rename -uid "2F03F893-4D09-31CF-4DFC-6ABCDBE12C4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1769";
	rename -uid "43DD6A69-4B7A-3DF2-36AD-7F9EFE0FEF7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1770";
	rename -uid "29A0DEB8-47EE-8992-446D-A9BD0D530CF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.81698611148474898 1 0.81698611148474898
		 2 0.81698611148474898 3 0.81698611148474898 4 0.81698611148474898 5 0.81698611148474898
		 6 0.81698611148474898 7 0.81698611148474898 8 0.81698611148474898 9 0.81698611148474898
		 10 0.81698611148474898 11 0.81698611148474898 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1771";
	rename -uid "1565A56E-4CDF-284B-F438-1484DA4D8078";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -2.0483849095097799 1 -2.0483849095097799
		 2 -2.0483849095097799 3 -2.0483849095097799 4 -2.0483849095097799 5 -2.0483849095097799
		 6 -2.0483849095097799 7 -2.0483849095097799 8 -2.0483849095097799 9 -2.0483849095097799
		 10 -2.0483849095097799 11 -2.0483849095097799 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1772";
	rename -uid "153A18CD-45E7-3151-39D4-218C4BDB217E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -55.5521554466034 1 -55.5521554466034
		 2 -55.5521554466034 3 -55.5521554466034 4 -55.5521554466034 5 -55.5521554466034 6 -55.5521554466034
		 7 -55.5521554466034 8 -55.5521554466034 9 -55.5521554466034 10 -55.5521554466034
		 11 -55.5521554466034 13 18.419191807234366 17 18.419191807234366 20 9.4915121579518331
		 22 -7.8025929047705986 24 21.660344404622865 27 6.4114765349798519 30 13.520947623162122;
createNode animCurveTL -n "CURVE1774";
	rename -uid "022874E2-4502-3ECD-43C6-E6A814422BA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1775";
	rename -uid "675F7BC2-4753-44E3-D14C-698852A8F35D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1776";
	rename -uid "D915E36B-48FF-27BF-4E8D-45BAD589A323";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1777";
	rename -uid "38C2E336-4FE4-A312-DB44-728EC4714F8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 19 1.0000000000000002 20 1.0000000000000002 21 1.0000000000000002;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1778";
	rename -uid "781B6757-4C81-5622-B823-F0B14D185EA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 19 1.0000000000000002 20 1.0000000000000002 21 1.0000000000000002;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1779";
	rename -uid "511176B7-4B54-72B5-2D26-A88DF05382E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 19 1.0000000000000002 20 1.0000000000000002 21 1.0000000000000002;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1780";
	rename -uid "3C2A3E54-4E5B-3ED2-33DD-F3AC84221B32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1781";
	rename -uid "D68D9409-433B-EA01-AD4F-22AF5A4427F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1782";
	rename -uid "7C253C40-42BD-ED5A-7839-67B38781A6A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1784";
	rename -uid "D3CF026F-4D82-D1C6-0F3F-46833617CB90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1785";
	rename -uid "05DF3480-49D5-426E-A4E2-2191FB6C28A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1786";
	rename -uid "FD38E784-4F99-D8CA-0863-0C88BC271FA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1787";
	rename -uid "CF857D73-4B73-DF2A-AA46-62AC0CA8597B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 19 1.0000000000000002 20 1.0000000000000002 21 1.0000000000000002;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1788";
	rename -uid "2D48C71E-4808-0579-0135-26900287B1DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000002 13 1.0000000000000002
		 17 1.0000000000000002 19 1.0000000000000002 20 1.0000000000000002 21 1.0000000000000002;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1789";
	rename -uid "682B3CF6-4A68-D27D-108D-EF9F53D1B225";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1790";
	rename -uid "9A135E80-4249-4635-A456-87ACEEA0F0DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1791";
	rename -uid "BF642731-4F30-EE70-C10D-FC978A5627C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1792";
	rename -uid "E1B0093D-400E-8371-7A81-BCA66B48DFEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1794";
	rename -uid "CCB0FB93-4EFF-FFEB-8AB2-EF818AADA2E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1795";
	rename -uid "64E11D25-4735-DCCD-71DE-398140C5CD03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1796";
	rename -uid "AC5C94C5-4E40-6D90-D15A-489946FF846C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1797";
	rename -uid "67B42FB3-49C2-19C5-33A9-249841CF02BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000007 13 1.0000000000000007
		 17 1.0000000000000007 19 1.0000000000000007 20 1.0000000000000007 21 1.0000000000000007;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1798";
	rename -uid "232AA467-43B6-40D1-9496-1B9B63CD029C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0.99999999999999989 13 0.99999999999999989
		 17 0.99999999999999989 19 0.99999999999999989 20 0.99999999999999989 21 0.99999999999999989;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1799";
	rename -uid "3C86A8DF-4A47-813E-FC7D-868EFD0C1544";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0.99999999999999978 13 0.99999999999999978
		 17 0.99999999999999978 19 0.99999999999999978 20 0.99999999999999978 21 0.99999999999999978;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1800";
	rename -uid "9EF18E0F-452A-7B4B-2A13-B58006EDB0FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1801";
	rename -uid "3764B3C7-445A-08B4-4DA5-388D0231D34B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1802";
	rename -uid "0A63A8AC-4164-4361-11A7-3C9E44CAE10C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1804";
	rename -uid "9D1C4D6D-44D8-2DBC-2127-61AD32F1A58B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1805";
	rename -uid "31E6B97B-450A-563F-63F4-699F6745085F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1806";
	rename -uid "6BC8A0D5-4D20-DA61-9BD6-78B296BDC8DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1807";
	rename -uid "C9ADE3A2-4CD5-8596-B0F5-17A61D367530";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1808";
	rename -uid "0E1452C1-4F75-0DA6-2146-E4A5700C491B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1809";
	rename -uid "E96EA89B-420D-86E0-87E6-6C810F85DA0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1811";
	rename -uid "5E6611C9-4F71-4C26-91FF-06A2F093AE73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE1812";
	rename -uid "9DBD21CA-4874-097F-A1CB-72A93A57C54C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE1813";
	rename -uid "BFEA3B46-4ECF-6BB2-C5B6-33B8D198A598";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE1814";
	rename -uid "C187F76B-42DB-CE67-4B76-BE8E3A98E337";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE1815";
	rename -uid "860EE253-4073-0F05-776C-93B9A0937629";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTA -n "CURVE1816";
	rename -uid "29402980-422C-F936-111A-09A4D919A7C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 19 ".kyts[18]" yes;
createNode animCurveTL -n "CURVE1818";
	rename -uid "5307D914-45DC-A59B-A6E4-0CBB5C9D3CD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1819";
	rename -uid "05B9AED9-4751-7DC0-0B60-E1B4B346FC4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1820";
	rename -uid "CD310E16-442B-C263-C652-2591009622FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1821";
	rename -uid "68C27020-4109-3D7E-E9BF-4499EA0C3664";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1822";
	rename -uid "8D5477EF-44BA-FD2F-1C4B-7EAF89CA3F7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1823";
	rename -uid "2633F0D0-4235-4071-A7B9-B0988544A4A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1825";
	rename -uid "C1990AEE-41C7-BD7C-9A0A-0991EE3C340B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1826";
	rename -uid "F5AD44C3-4CAF-13D1-737B-4F9965B1EEA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1827";
	rename -uid "2A407BDD-4FA6-60E2-FEFF-19BBD2C9E2C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1828";
	rename -uid "D4AFE0F0-47D3-D359-65E4-0AACBB3BCA35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1829";
	rename -uid "1AB4850A-40F9-4E1E-3A9F-239CE5FE692F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1830";
	rename -uid "ECA669C2-4B9C-475C-BC66-87A27246851A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1831";
	rename -uid "9741B094-42E3-F594-0D67-C6A7961DE83E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.00022195932735754407 1 0.00022195932735754407
		 2 0.00022195932735754407 3 0.00022195932735754407 4 0.00022195932735754407 5 0.00022195932735754407
		 6 0.00022195932735754407 7 0.00022195932735754407 8 0.00022195932735754407 9 0.00022195932735754407
		 10 0.00022195932735754407 11 0.00022195932735754407 13 0 17 0 20 -20.380571967522297
		 22 -20.380571967522297;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1832";
	rename -uid "F5FCA7F3-4215-01B1-CD62-299B2D046FE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -5.8888289115810339 1 -5.8888289115810339
		 2 -5.8888289115810339 3 -5.8888289115810339 4 -5.8888289115810339 5 -5.8888289115810339
		 6 -5.8888289115810339 7 -5.8888289115810339 8 -5.8888289115810339 9 -5.8888289115810339
		 10 -5.8888289115810339 11 -5.8888289115810339 13 0.73585697484704404 17 0.73585697484704382
		 20 -8.4358493816818658 22 -8.4358493816818658;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1833";
	rename -uid "B21636EF-4828-4669-4AB6-0BAF7F428BE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -0.00059422916798486218 1 -0.00059422916798486218
		 2 -0.00059422916798486218 3 -0.00059422916798486218 4 -0.00059422916798486218 5 -0.00059422916798486218
		 6 -0.00059422916798486218 7 -0.00059422916798486218 8 -0.00059422916798486218 9 -0.00059422916798486218
		 10 -0.00059422916798486218 11 -0.00059422916798486218 13 0 17 0 20 -0.33805693105660711
		 22 -0.33805693105660711;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1835";
	rename -uid "C542157A-437C-66DA-FF5E-B9BAC306FF14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1836";
	rename -uid "8FBCC874-4D8E-8091-E43D-33A5BAA2F56B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTL -n "CURVE1837";
	rename -uid "3B7FDD87-4790-5556-FEEA-D3B668B7B983";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 13 0 17 0 20 0 22 0;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1838";
	rename -uid "10FC78B3-48D5-C02B-7289-019DABB68966";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1839";
	rename -uid "19627598-4C1F-E634-8A09-9C9FB4C358AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTU -n "CURVE1840";
	rename -uid "C41325EC-41A0-C948-5DE4-13A72D2D3F12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 13 1 17 1 20 1 22 1;
	setAttr -s 16 ".kyts[14:15]" yes no;
createNode animCurveTA -n "CURVE1841";
	rename -uid "02A08003-4EAB-4705-2D9A-3D950D25E070";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -13.933028456276512 1 -13.933028456276512
		 2 -13.933028456276512 3 -13.933028456276512 4 -13.933028456276512 5 -13.933028456276512
		 6 -13.933028456276512 7 -13.933028456276512 8 -13.933028456276512 9 -13.933028456276512
		 10 -13.933028456276512 11 -13.933028456276512 13 0 17 0 20 0.13785324668972068 22 -0.1053149426508886
		 24 0.30276021162164207 27 0.094829530749578214 30 0.19351801138746874;
createNode animCurveTA -n "CURVE1842";
	rename -uid "76676709-4F70-99AD-FA35-979D7D44B6D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -3.7576407542504282 1 -3.7576407542504282
		 2 -3.7576407542504282 3 -3.7576407542504282 4 -3.7576407542504282 5 -3.7576407542504282
		 6 -3.7576407542504282 7 -3.7576407542504282 8 -3.7576407542504282 9 -3.7576407542504282
		 10 -3.7576407542504282 11 -3.7576407542504282 13 8.0880332158967452 17 8.0880332158967452
		 20 0.79696958600322398 22 0.80191788862897984 24 0.75000286854650444 27 0.80322522509488936
		 30 0.78531263673436025;
createNode animCurveTA -n "CURVE1843";
	rename -uid "ED88DB29-4B14-D47F-1B32-4B98B9F1AF43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -61.144562622671323 1 -61.144562622671323
		 2 -61.144562622671323 3 -61.144562622671323 4 -61.144562622671323 5 -61.144562622671323
		 6 -61.144562622671323 7 -61.144562622671323 8 -61.144562622671323 9 -61.144562622671323
		 10 -61.144562622671323 11 -61.144562622671323 13 4.2226883671562732 17 4.2226883671562705
		 20 -10.311805191157184 22 -27.607606033306418 24 1.8580498893908062 27 -13.392134866619633
		 30 -6.282002264378014;
createNode animCurveTL -n "CURVE1845";
	rename -uid "C658593F-4211-A9EF-F197-1797FA646964";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1846";
	rename -uid "593AB8C0-4E33-CD1C-CD25-54A7DAF111BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 -0.24206111863614285 15 -0.21785500677252856
		 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1847";
	rename -uid "5167C6BC-452B-E053-4BE0-20BBB66A873A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1848";
	rename -uid "2937C203-4F02-4ABE-2D23-46BDB0F836E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1849";
	rename -uid "F155E0F6-4EF0-3B8E-A545-FE9A1967E6E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1850";
	rename -uid "5DB72E02-43F6-2D69-FE1C-71944A1810AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 26 0 27 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTL -n "CURVE1852";
	rename -uid "65B262A7-45D2-D3BF-78D5-49B8FF06FE34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1853";
	rename -uid "6567C939-47CE-B46B-0356-7CBBEDDFE003";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1854";
	rename -uid "89CAD957-4BAB-32E4-9C08-1CA0C2850120";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1855";
	rename -uid "3B7D83C7-477C-C04D-9581-45ABB564706F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1856";
	rename -uid "B299F63F-475C-C8D3-398D-29A2A8A92805";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1 13 1 17 1 19 1 20 1 21 1;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTU -n "CURVE1857";
	rename -uid "AB507886-4A51-A645-7530-B0AE6646B18C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 1.0000000000000004 13 1.0000000000000004
		 17 1.0000000000000004 19 1.0000000000000004 20 1.0000000000000004 21 1.0000000000000004;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1858";
	rename -uid "C15465CF-45D4-3632-9C73-AEAE14789A54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTA -n "CURVE1859";
	rename -uid "BA93309E-4EBA-8485-1A98-8CA1E55F67FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 13 0 15 0 17 0 19 0 20 0 21 0;
	setAttr -s 7 ".kyts[6]" yes;
createNode animCurveTA -n "CURVE1860";
	rename -uid "0C672834-4093-37C2-3821-B0BEC4A19F71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 13 0 17 0 19 0 20 0 21 0;
	setAttr -s 6 ".kyts[5]" yes;
createNode animCurveTL -n "CURVE1862";
	rename -uid "FCDF5B15-46D1-5ADD-A49C-05A7CFC26164";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0.30934934514813478 15 0.27841441063332129
		 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1863";
	rename -uid "4E72EF9F-4413-0E8D-39E1-2AA24E3C673B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1864";
	rename -uid "D0CE1264-4A79-D24D-8404-5DB58E4EFC60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1865";
	rename -uid "C28D94AC-4730-3428-2E2E-A2B292F05122";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1866";
	rename -uid "74B4457B-4EA7-0B06-C1BF-55B2B679B688";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1867";
	rename -uid "F1976068-4521-F5E3-4BBF-54B5C7FDAC84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTU -n "CURVE1868";
	rename -uid "4F24FCFF-4BFA-1896-F604-A2934FBFF90F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 1 13 1 15 1 17 1 24 1 27 1 29 1;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1869";
	rename -uid "15CF08CE-40CB-4A9C-FD56-9C84F9567C2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1870";
	rename -uid "B8E53CEF-4A79-384C-1120-9790D8766096";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
createNode animCurveTA -n "CURVE1871";
	rename -uid "183A011B-4536-6AAF-4E74-BEA1FA96C6FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  11 0 13 0 15 0 17 0 24 0 27 0 29 0;
	setAttr -s 7 ".kyts[2:6]" yes no no yes no;
// End
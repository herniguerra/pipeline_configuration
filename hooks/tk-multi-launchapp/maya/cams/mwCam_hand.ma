//Maya ASCII 2018ff09 scene
//Name: JP_handCam2.ma
//Last modified: Thu, Aug 13, 2020 03:16:40 PM
//Codeset: 1252
requires maya "2018ff09";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201903222215-65bada0e52";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "EDEDA8EA-4FD1-7DD0-466E-849EFC5ACCCA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.2277018291709432 8.7513333679056746 -6.5055139109261475 ;
	setAttr ".r" -type "double3" 141.86164726997814 -298.20000000000044 180.00000000000696 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1E67277B-442A-FA09-AFAE-808A48C76F82";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 16.391016129210826;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 0 -5.0000000000000036 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "2F644D0A-4A98-B592-1D1F-E1A51344A0E1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.2851520536849623 100.1 -0.2228398001269889 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "35190374-4FDA-6386-7F9B-1DB22294A9AC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 19.552979381888214;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "D9089E98-4D2C-9951-0162-93BAF70A8E60";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "20704A9E-4985-51F6-FC11-669E570F1A8E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 31.802575107296143;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "8E4F618E-4BB4-0DA8-9F9B-65A578B311CE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 -0.1276675139087507 -0.41234298326098295 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "FA69ECBC-433F-5B56-D065-C5BF300987BF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 14.171477904461256;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "mwCam_grp";
	rename -uid "758030F4-4DC1-DF04-F6F2-518C3BAFFEEE";
	addAttr -ci true -k true -sn "_____________________________" -ln "_____________________________" 
		-min 0 -max 0 -en "VISIBILITY" -at "enum";
	addAttr -ci true -k true -sn "Joints" -ln "Joints" -min 0 -max 1 -en "off:on" -at "enum";
	addAttr -ci true -k true -sn "Geo" -ln "Geo" -min 0 -max 1 -en "off:on" -at "enum";
	addAttr -ci true -k true -sn "Ctrls" -ln "Ctrls" -min 0 -max 1 -en "off:on" -at "enum";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on "._____________________________";
	setAttr -k on ".Joints" 1;
	setAttr -k on ".Geo" 1;
	setAttr -k on ".Ctrls" 1;
	setAttr ".nts" -type "string" "Rig by Joakim Palmkvist\r\nwww.cgjoker.com\r\ncontact me at jocke@cgjoker.com";
createNode transform -n "camCtls_grp" -p "mwCam_grp";
	rename -uid "8266FCC2-4216-E4FC-16DA-26910A9594FB";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "camera_ctrl_TOP" -p "camCtls_grp";
	rename -uid "82F89F45-4436-539A-B391-01BA12D23686";
	setAttr -k off ".v";
	setAttr ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "camera_ctl" -p "camera_ctrl_TOP";
	rename -uid "2873C4E2-49F1-0472-18B0-EF9549BE4C50";
	addAttr -ci true -k true -sn "_____________________________" -ln "_____________________________" 
		-min 0 -max 0 -en "cam" -at "enum";
	addAttr -ci true -sn "camTilt" -ln "camTilt" -at "double";
	addAttr -ci true -sn "camPan" -ln "camPan" -at "double";
	addAttr -ci true -sn "camTwist" -ln "camTwist" -at "double";
	addAttr -ci true -sn "focalLength" -ln "focalLength" -dv 35 -min 0 -at "double";
	addAttr -ci true -sn "aim" -ln "aim" -min 0 -max 1 -en "off:on" -at "enum";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on "._____________________________";
	setAttr -k on ".camTilt";
	setAttr -k on ".camPan";
	setAttr -k on ".camTwist";
	setAttr -k on ".focalLength";
	setAttr -k on ".aim";
	setAttr ".nts" -type "string" "Rig by Joakim Palmkvist\r\nwww.cgjoker.com\r\ncontact me at jocke@cgjoker.com";
createNode nurbsCurve -n "camera_ctlShape" -p "camera_ctl";
	rename -uid "9CFD90B2-41CC-B9FC-65EC-75BC18B2B799";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 86 1 no 3
		91 0.75818310889999996 0.75818310889999996 0.75818310889999996 1 1 1 2 2 2
		 3 3 3 4 4 4 5 5 5 5.2522060960000001 5.2522060960000001 5.2522060960000001 5.8698444379999994
		 6.5136447799999999 6.5136447799999999 6.5136447799999999 6.7554616711 6.7554616711
		 6.7554616711 7.7554616711 7.7554616711 7.7554616711 8.7554616711000008 8.7554616711000008
		 8.7554616711000008 9.7554616711000008 9.7554616711000008 9.7554616711000008 10.755461671100001
		 10.755461671100001 10.755461671100001 11.007667767099999 11.007667767099999 11.007667767099999
		 11.6253061091 12.269106450799999 12.269106450799999 12.269106450799999 12.5109233419
		 12.5109233419 12.5109233419 13.5109233419 13.5109233419 13.5109233419 14.5109233419
		 14.5109233419 14.5109233419 15.5109233419 15.5109233419 15.5109233419 16.5109233419
		 16.5109233419 16.5109233419 16.763129437899998 16.763129437899998 16.763129437899998
		 17.380767779899998 18.024568121899996 18.024568121899996 18.024568121899996 18.266385012999997
		 18.266385012999997 18.266385012999997 19.266385012999997 19.266385012999997 19.266385012999997
		 20.266385012999997 20.266385012999997 20.266385012999997 21.266385012999997 21.266385012999997
		 21.266385012999997 22.266385012999997 22.266385012999997 22.266385012999997 22.518591108999999
		 22.518591108999999 22.518591108999999 23.136229450999998 23.780029792999997 23.780029792999997
		 23.780029792999997
		89
		0.2484735436319106 -0.86553231468128744 1.9218678086325435e-16
		0.2484735436319106 -0.90701901652755701 2.0139867918435184e-16
		0.2484735436319106 -0.94850571837382647 2.1061057750544931e-16
		0.2484735436319106 -0.98999242022009593 2.1982247582654678e-16
		0.33149193819167577 -0.98999242022009615 2.1982247582654683e-16
		0.41451033275144095 -0.98999242022009615 2.1982247582654683e-16
		0.49752872731120612 -0.98999242022009615 2.1982247582654683e-16
		0.32872910039511 -1.2150585894415571 2.6979720445331636e-16
		0.15992947347901393 -1.4401247586630184 3.1977193308008597e-16
		-0.0088701534370829241 -1.6651909278844794 3.6974666170685553e-16
		-0.17766978035317901 -1.4401247586630179 3.1977193308008587e-16
		-0.34646940726927511 -1.2150585894415571 2.6979720445331636e-16
		-0.51526903418537195 -0.98999242022009593 2.1982247582654678e-16
		-0.43225063962560756 -0.98999242022009593 2.1982247582654678e-16
		-0.34923224506584161 -0.98999242022009593 2.1982247582654678e-16
		-0.26621385050607721 -0.98999242022009593 2.1982247582654678e-16
		-0.26621385050607721 -0.9467233207747775 2.1021480573474915e-16
		-0.26621385050607721 -0.90345422132945918 2.0060713564295156e-16
		-0.26621385050607721 -0.86018512188414076 1.9099946555115394e-16
		-0.40540322125318995 -0.81670250804625932 1.8134438574041385e-16
		-0.66913481554556187 -0.66042388294199661 1.4664356017091076e-16
		-0.8231376876818377 -0.39441653568163554 8.7578063841328277e-17
		-0.86553231475574011 -0.24847354340726058 5.5172209780187793e-17
		-0.90701901652755745 -0.24847354363191052 5.5172209830070099e-17
		-0.94850571837382669 -0.24847354363191052 5.5172209830070099e-17
		-0.98999242022009515 -0.24847354363191052 5.5172209830070099e-17
		-0.98999242022009515 -0.33149193819167549 7.3605996451603483e-17
		-0.98999242022009515 -0.4145103327514405 9.2039783073136872e-17
		-0.98999242022009515 -0.49752872731120557 1.1047356969467027e-16
		-1.2150585894415564 -0.32872910039510905 7.2992523224592943e-17
		-1.4401247586630181 -0.1599294734790126 3.5511476754515624e-17
		-1.6651909278844792 0.0088701534370839059 -1.9695697155617044e-18
		-1.4401247586630181 0.17766978035318021 -3.9450616185638988e-17
		-1.2150585894415573 0.3464694072692765 -7.693166265571627e-17
		-0.98999242022009515 0.51526903418537273 -1.1441270912579354e-16
		-0.98999242022009515 0.43225063962560756 -9.5978922504260113e-17
		-0.98999242022009515 0.34923224506584233 -7.7545135882726674e-17
		-0.98999242022009515 0.2662138505060771 -5.9111349261193235e-17
		-0.9467233207747765 0.2662138505060771 -5.9111349261193235e-17
		-0.90345422132945863 0.2662138505060771 -5.9111349261193235e-17
		-0.86018512188413998 0.2662138505060771 -5.9111349261193235e-17
		-0.81670250804626032 0.40540322125318967 -9.0017598098499556e-17
		-0.6604238829791631 0.66913481548284115 -1.4857777574547119e-16
		-0.39441653580816027 0.8231376876085863 -1.8277328264395238e-16
		-0.24847354361128035 0.86553231469647529 -1.9218678086662673e-16
		-0.24847354363190985 0.90701901652755701 -2.0139867918435184e-16
		-0.24847354363190985 0.94850571837382647 -2.1061057750544931e-16
		-0.24847354363190985 0.98999242022009593 -2.1982247582654678e-16
		-0.331491938191675 0.98999242022009593 -2.1982247582654678e-16
		-0.41451033275144017 0.98999242022009593 -2.1982247582654678e-16
		-0.49752872731120534 0.98999242022009593 -2.1982247582654678e-16
		-0.3287291003951085 1.2150585894415571 -2.6979720445331636e-16
		-0.15992947347901318 1.4401247586630184 -3.1977193308008597e-16
		0.008870153437083677 1.6651909278844794 -3.6974666170685553e-16
		0.17766978035318054 1.4401247586630179 -3.1977193308008587e-16
		0.34646940726927589 1.2150585894415571 -2.6979720445331636e-16
		0.51526903418537273 0.98999242022009593 -2.1982247582654678e-16
		0.43225063962560756 0.98999242022009593 -2.1982247582654678e-16
		0.34923224506584238 0.98999242022009593 -2.1982247582654678e-16
		0.26621385050607721 0.98999242022009593 -2.1982247582654678e-16
		0.26621385050607721 0.9467233207747775 -2.1021480573474915e-16
		0.26621385050607721 0.90345422132945918 -2.0060713564295156e-16
		0.26621385050607721 0.86018512188414076 -1.9099946555115394e-16
		0.40540322125318917 0.81670250804625932 -1.8134438574041385e-16
		0.66913481554556264 0.66042388294199661 -1.4664356017091076e-16
		0.82313768768183926 0.39441653568163554 -8.7578063841328277e-17
		0.86553231475574166 0.24847354340726066 -5.5172209780187811e-17
		0.90701901652755745 0.24847354363191052 -5.5172209830070099e-17
		0.94850571837382736 0.24847354363191052 -5.5172209830070099e-17
		0.98999242022009593 0.24847354363191052 -5.5172209830070099e-17
		0.98999242022009593 0.33149193819167549 -7.3605996451603483e-17
		0.98999242022009593 0.4145103327514405 -9.2039783073136872e-17
		0.98999242022009593 0.49752872731120557 -1.1047356969467027e-16
		1.2150585894415569 0.32872910039510944 -7.2992523224593029e-17
		1.4401247586630179 0.15992947347901337 -3.5511476754515797e-17
		1.6651909278844788 -0.0088701534370827367 1.9695697155614448e-18
		1.4401247586630179 -0.17766978035317946 3.9450616185638822e-17
		1.2150585894415569 -0.34646940726927611 7.6931662655716184e-17
		0.98999242022009593 -0.51526903418537273 1.1441270912579354e-16
		0.98999242022009593 -0.43225063962560756 9.5978922504260113e-17
		0.98999242022009593 -0.34923224506584233 7.7545135882726674e-17
		0.98999242022009593 -0.2662138505060771 5.9111349261193235e-17
		0.94672332077477805 -0.2662138505060771 5.9111349261193235e-17
		0.90345422132945941 -0.2662138505060771 5.9111349261193235e-17
		0.86018512188414076 -0.2662138505060771 5.9111349261193235e-17
		0.81670250804625955 -0.40540322125318978 9.0017598098499581e-17
		0.66042388294199772 -0.66913481554556264 1.4857777575939816e-16
		0.39441653568163537 -0.82313768768183759 1.8277328266021744e-16
		0.2484735434072595 -0.86553231475574088 1.9218678087978633e-16
		;
createNode transform -n "camera_ctrl_hand_cam_INH_PGRP" -p "camera_ctl";
	rename -uid "27326D0A-498A-2209-1DB4-A5851CA1F297";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "camera_ctrl_aim_ctrl_INH_PGRP" -p "camera_ctl";
	rename -uid "50F8F668-4050-3356-C13F-D19830B8A15D";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -8.8817841970012523e-16 0 -5.0000000000000044 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-16 0 -5.0000000000000044 ;
createNode transform -n "aim_ctrl_INH" -p "camCtls_grp";
	rename -uid "25B3C327-4BFC-AF7E-458C-6997860CF2B7";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -8.8817841970012523e-16 0 -5.0000000000000044 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-16 0 -5.0000000000000044 ;
createNode transform -n "aim_ctrl_TOP" -p "aim_ctrl_INH";
	rename -uid "25C6C3B4-4B89-31FF-A808-3BB315608F9A";
	setAttr -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -8.8817841970012523e-16 0 -5.0000000000000044 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-16 0 -5.0000000000000044 ;
createNode transform -n "aim_ctrl" -p "aim_ctrl_TOP";
	rename -uid "02088CBE-4A30-0D74-3652-BDB753F23D10";
	setAttr -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -8.8817841970012523e-16 0 -5.0000000000000044 ;
	setAttr ".sp" -type "double3" 0 0 -5.0000000000000044 ;
createNode nurbsCurve -n "aim_ctrlShape" -p "aim_ctrl";
	rename -uid "30D6BEA1-48E7-A134-ECD4-1D9FEA1642E5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0.35962817435574923 -3.8329678029471804e-15 -5.0000000000000044
		0.7144827829553746 0.35485460859962242 -5.0000000000000044
		0.7144827829553746 0.1774273042998093 -5.0000000000000044
		1.2467646958548135 0.1774273042998096 -5.0000000000000044
		1.2467646958548135 -0.17742730429981632 -5.0000000000000044
		0.71448278295537548 -0.17742730429981662 -5.0000000000000044
		0.71448278295537548 -0.35485460859962975 -5.0000000000000044
		0.35962817435574923 -3.8329678029471804e-15 -5.0000000000000044
		;
createNode nurbsCurve -n "aim_ctrlShape1" -p "aim_ctrl";
	rename -uid "3308BEDE-4BED-6438-401F-06B8A5EC8C55";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
createNode nurbsCurve -n "aim_ctrlShape2" -p "aim_ctrl";
	rename -uid "59C94171-4343-7352-9CB3-F985656EB9A3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		3.5527136788005009e-15 0.35962817435574951 -5.0000000000000044
		-0.3548546085996227 0.71448278295537526 -5.0000000000000044
		-0.17742730429980957 0.71448278295537526 -5.0000000000000044
		-0.17742730429980957 1.246764695854814 -5.0000000000000044
		0.17742730429981712 1.246764695854814 -5.0000000000000044
		0.17742730429981712 0.71448278295537526 -5.0000000000000044
		0.35485460859962892 0.71448278295537526 -5.0000000000000044
		3.5527136788005009e-15 0.35962817435574951 -5.0000000000000044
		;
createNode nurbsCurve -n "aim_ctrlShape3" -p "aim_ctrl";
	rename -uid "CC23C08A-48AD-F8C9-C4EE-A0A8E3F25FE0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		-0.35962817435575012 3.8329678029471804e-15 -5.0000000000000044
		-0.71448278295537593 -0.35485460859962242 -5.0000000000000044
		-0.71448278295537593 -0.1774273042998093 -5.0000000000000044
		-1.2467646958548144 -0.17742730429980896 -5.0000000000000044
		-1.2467646958548144 0.17742730429981696 -5.0000000000000044
		-0.71448278295537593 0.17742730429981662 -5.0000000000000044
		-0.71448278295537593 0.35485460859962975 -5.0000000000000044
		-0.35962817435575012 3.8329678029471804e-15 -5.0000000000000044
		;
createNode nurbsCurve -n "aim_ctrlShape4" -p "aim_ctrl";
	rename -uid "49025FB6-4682-DA8D-BBE5-CB8F31EFB6B8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		-3.9968028886505635e-15 -0.35962817435574951 -5.0000000000000044
		0.35485460859962181 -0.71448278295537537 -5.0000000000000044
		0.17742730429980913 -0.71448278295537526 -5.0000000000000044
		0.17742730429980913 -1.246764695854814 -5.0000000000000044
		-0.17742730429981712 -1.2467646958548138 -5.0000000000000044
		-0.17742730429981712 -0.71448278295537526 -5.0000000000000044
		-0.35485460859962981 -0.71448278295537515 -5.0000000000000044
		-3.9968028886505635e-15 -0.35962817435574951 -5.0000000000000044
		;
createNode transform -n "aim_ctrl_camAimLoc_INH_PGRP" -p "aim_ctrl";
	rename -uid "A1CB3385-474B-DD57-95F5-51B701A2817A";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".nts" -type "string" "Rig by Joakim Palmkvist\r\nwww.cgjoker.com\r\ncontact me at jocke@cgjoker.com";
createNode parentConstraint -n "aim_ctrl_INH_parentConstraint1" -p "aim_ctrl_INH";
	rename -uid "92606334-4ABC-41E7-B57E-D19DA8DCF66D";
	addAttr -ci true -k true -sn "w0" -ln "camera_ctrl_aim_ctrl_INH_PGRPW0" -dv 1 -min 
		0 -at "double";
	setAttr -l on -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -l on ".int";
	setAttr -k on ".w0";
createNode transform -n "camExtras_grp" -p "mwCam_grp";
	rename -uid "C4FDC7E9-478A-3031-DE92-03A965622904";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "hand_cam_INH" -p "camExtras_grp";
	rename -uid "CADAFF44-4DD3-1265-D0A8-D985500F6B27";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode parentConstraint -n "hand_cam_INH_parentConstraint1" -p "hand_cam_INH";
	rename -uid "7044BC56-4503-49CF-7833-28A8EF2D6B2D";
	addAttr -ci true -k true -sn "w0" -ln "camera_ctrl_hand_cam_INH_PGRPW0" -dv 1 -min 
		0 -at "double";
	setAttr -l on -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -l on ".int";
	setAttr -l on -k on ".w0";
createNode transform -n "aim_INH" -p "hand_cam_INH";
	rename -uid "E52BAEB7-4642-EA08-EE25-15B1AA4E60C1";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "mwCam" -p "aim_INH";
	rename -uid "02737500-48CB-7410-403E-09A204AC07C3";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode camera -n "mwCamShape" -p "mwCam";
	rename -uid "F39154C8-4C72-C683-48C0-BABA5EA50259";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 18.119551714714749;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
createNode transform -n "aimCam_GRP" -p "hand_cam_INH";
	rename -uid "FE3A38C5-47B5-B584-43A2-1BAAFE946E9A";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode aimConstraint -n "aimCam_GRP_aimConstraint1" -p "aimCam_GRP";
	rename -uid "205CCD0B-450E-CC19-F19A-5EB177DABE92";
	addAttr -ci true -sn "w0" -ln "camAim_LOCW0" -dv 1 -at "double";
	setAttr -l on -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0 -90 0 ;
	setAttr -l on ".ox";
	setAttr -l on ".oy";
	setAttr -l on ".oz";
	setAttr ".rsrr" -type "double3" 0 89.999999999999986 0 ;
	setAttr -l on -k on ".w0";
createNode transform -n "camAimLoc_INH" -p "camExtras_grp";
	rename -uid "D3B350E2-4565-63C9-11C3-AABFB2EB8ECC";
	setAttr -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "camAim_LOC" -p "camAimLoc_INH";
	rename -uid "26FF9A1E-4C96-7BB0-719A-6B8EF0259470";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 0 -5.0000000000000036 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "camAim_LOCShape" -p "camAim_LOC";
	rename -uid "AEFFD939-422B-6DEB-0D09-BC91B4EFFD5C";
	setAttr -k off ".v";
createNode parentConstraint -n "camAimLoc_INH_parentConstraint1" -p "camAimLoc_INH";
	rename -uid "1CA268D0-4A70-4D17-CECA-D9831EDD0C11";
	addAttr -ci true -k true -sn "w0" -ln "aim_ctrl_camAimLoc_INH_PGRPW0" -dv 1 -min 
		0 -at "double";
	setAttr -l on -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -l on ".int";
	setAttr -l on -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E083227B-4212-80DB-B54A-9DA970EED24A";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "5E76FBC8-4C69-4D50-F694-D0AC38851CA3";
createNode displayLayer -n "defaultLayer";
	rename -uid "12A3C7AB-4A02-B6BD-7693-4CBA2D0C9D30";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7AD0B70C-4CD3-F880-AE34-3DA21C57AE92";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C044BF85-4FA0-A628-2C9E-84A0C5AB7DE0";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "AF9B4326-4EB2-E38F-BFE1-C19B57D4878A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"mwCam\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 478\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 1\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 477\n            -height 333\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 478\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 962\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n"
		+ "                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"multiListerPanel\" (localizedPanelLabel(\"Multilister\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"devicePanel\" (localizedPanelLabel(\"Devices\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tdevicePanel -edit -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"pgYetiGraphPanelType\" (localizedPanelLabel(\"Yeti - Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Yeti - Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 962\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 962\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "4C45E2F3-4C81-CBA4-9821-E18EF0E1F039";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 24 -ast 0 -aet 48 ";
	setAttr ".st" 6;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "963FEFB5-4401-97C6-565F-9FBA3542B521";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".tol" 0;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "F35DB4A9-46AD-3015-78BC-8E901B2EC04D";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.000000000000011 0 0 1;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "2D602070-4EBF-5B7A-CAB8-2B9F335AF9DF";
	setAttr ".txf" -type "matrix" 0.35962817435575062 0 0 0 0 7.9853495894732922e-17 0.35962817435575062 0
		 0 -0.35962817435575062 7.9853495894732922e-17 0 -3.9559099179132602 0 -5.0000000000000044 1;
createNode animCurveUU -n "aim_ctrl_INH_parentConstraint1_camera_ctrl_aim_ctrl_INH_PGRPW0";
	rename -uid "524281A4-4F6C-BC0E-5074-9289506B579F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode unitConversion -n "unitConversion1";
	rename -uid "3FAD6304-421E-AFCF-623F-5DA8C3C428FF";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion2";
	rename -uid "FEFB9886-4C0D-7E88-3D10-289E41BCD0B8";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion3";
	rename -uid "BBD188AB-48B8-089B-04C0-FDB2F76218DF";
	setAttr ".cf" 0.017453292519943295;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "61DE55FE-4F32-481F-0279-55AA1177434B";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "105808CA-4DFC-1210-640E-76A2EF453B11";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "FD040221-4F4C-E770-D930-D2B5E7CB1EDA";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -622.61902287839052 -389.28569881689037 ;
	setAttr ".tgi[0].vh" -type "double2" 592.85711929911758 407.14284096445425 ;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".vac" 2;
	setAttr ".etmr" no;
	setAttr ".tmr" 4096;
	setAttr ".msaa" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ep" 1;
	setAttr ".pram" -type "string" "";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".w" 640;
	setAttr -av ".h" 480;
	setAttr -av -k on ".pa";
	setAttr -av -k on ".al";
	setAttr -av ".dar" 1.3333332538604736;
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
connectAttr "mwCam_grp.Ctrls" "camCtls_grp.v";
connectAttr "aim_ctrl_INH_parentConstraint1.ctx" "aim_ctrl_INH.tx" -l on;
connectAttr "aim_ctrl_INH_parentConstraint1.cty" "aim_ctrl_INH.ty" -l on;
connectAttr "aim_ctrl_INH_parentConstraint1.ctz" "aim_ctrl_INH.tz" -l on;
connectAttr "aim_ctrl_INH_parentConstraint1.crx" "aim_ctrl_INH.rx" -l on;
connectAttr "aim_ctrl_INH_parentConstraint1.cry" "aim_ctrl_INH.ry" -l on;
connectAttr "aim_ctrl_INH_parentConstraint1.crz" "aim_ctrl_INH.rz" -l on;
connectAttr "camera_ctl.aim" "aim_ctrl.v";
connectAttr "transformGeometry2.og" "aim_ctrlShape1.cr";
connectAttr "aim_ctrl_INH.ro" "aim_ctrl_INH_parentConstraint1.cro";
connectAttr "aim_ctrl_INH.pim" "aim_ctrl_INH_parentConstraint1.cpim";
connectAttr "aim_ctrl_INH.rp" "aim_ctrl_INH_parentConstraint1.crp";
connectAttr "aim_ctrl_INH.rpt" "aim_ctrl_INH_parentConstraint1.crt";
connectAttr "camera_ctrl_aim_ctrl_INH_PGRP.t" "aim_ctrl_INH_parentConstraint1.tg[0].tt"
		;
connectAttr "camera_ctrl_aim_ctrl_INH_PGRP.rp" "aim_ctrl_INH_parentConstraint1.tg[0].trp"
		;
connectAttr "camera_ctrl_aim_ctrl_INH_PGRP.rpt" "aim_ctrl_INH_parentConstraint1.tg[0].trt"
		;
connectAttr "camera_ctrl_aim_ctrl_INH_PGRP.r" "aim_ctrl_INH_parentConstraint1.tg[0].tr"
		;
connectAttr "camera_ctrl_aim_ctrl_INH_PGRP.ro" "aim_ctrl_INH_parentConstraint1.tg[0].tro"
		;
connectAttr "camera_ctrl_aim_ctrl_INH_PGRP.s" "aim_ctrl_INH_parentConstraint1.tg[0].ts"
		;
connectAttr "camera_ctrl_aim_ctrl_INH_PGRP.pm" "aim_ctrl_INH_parentConstraint1.tg[0].tpm"
		;
connectAttr "aim_ctrl_INH_parentConstraint1.w0" "aim_ctrl_INH_parentConstraint1.tg[0].tw"
		;
connectAttr "aim_ctrl_INH_parentConstraint1_camera_ctrl_aim_ctrl_INH_PGRPW0.o" "aim_ctrl_INH_parentConstraint1.w0"
		 -l on;
connectAttr "hand_cam_INH_parentConstraint1.ctx" "hand_cam_INH.tx" -l on;
connectAttr "hand_cam_INH_parentConstraint1.cty" "hand_cam_INH.ty" -l on;
connectAttr "hand_cam_INH_parentConstraint1.ctz" "hand_cam_INH.tz" -l on;
connectAttr "hand_cam_INH_parentConstraint1.crx" "hand_cam_INH.rx" -l on;
connectAttr "hand_cam_INH_parentConstraint1.cry" "hand_cam_INH.ry" -l on;
connectAttr "hand_cam_INH_parentConstraint1.crz" "hand_cam_INH.rz" -l on;
connectAttr "hand_cam_INH.ro" "hand_cam_INH_parentConstraint1.cro";
connectAttr "hand_cam_INH.pim" "hand_cam_INH_parentConstraint1.cpim";
connectAttr "hand_cam_INH.rp" "hand_cam_INH_parentConstraint1.crp";
connectAttr "hand_cam_INH.rpt" "hand_cam_INH_parentConstraint1.crt";
connectAttr "camera_ctrl_hand_cam_INH_PGRP.t" "hand_cam_INH_parentConstraint1.tg[0].tt"
		;
connectAttr "camera_ctrl_hand_cam_INH_PGRP.rp" "hand_cam_INH_parentConstraint1.tg[0].trp"
		;
connectAttr "camera_ctrl_hand_cam_INH_PGRP.rpt" "hand_cam_INH_parentConstraint1.tg[0].trt"
		;
connectAttr "camera_ctrl_hand_cam_INH_PGRP.r" "hand_cam_INH_parentConstraint1.tg[0].tr"
		;
connectAttr "camera_ctrl_hand_cam_INH_PGRP.ro" "hand_cam_INH_parentConstraint1.tg[0].tro"
		;
connectAttr "camera_ctrl_hand_cam_INH_PGRP.s" "hand_cam_INH_parentConstraint1.tg[0].ts"
		;
connectAttr "camera_ctrl_hand_cam_INH_PGRP.pm" "hand_cam_INH_parentConstraint1.tg[0].tpm"
		;
connectAttr "hand_cam_INH_parentConstraint1.w0" "hand_cam_INH_parentConstraint1.tg[0].tw"
		;
connectAttr "aimCam_GRP.r" "aim_INH.r";
connectAttr "unitConversion1.o" "mwCam.ry" -l on;
connectAttr "unitConversion2.o" "mwCam.rx" -l on;
connectAttr "unitConversion3.o" "mwCam.rz" -l on;
connectAttr "camera_ctl.focalLength" "mwCamShape.fl";
connectAttr "aimCam_GRP_aimConstraint1.crx" "aimCam_GRP.rx" -l on;
connectAttr "aimCam_GRP_aimConstraint1.cry" "aimCam_GRP.ry" -l on;
connectAttr "aimCam_GRP_aimConstraint1.crz" "aimCam_GRP.rz" -l on;
connectAttr "aimCam_GRP.pim" "aimCam_GRP_aimConstraint1.cpim";
connectAttr "aimCam_GRP.t" "aimCam_GRP_aimConstraint1.ct";
connectAttr "aimCam_GRP.rp" "aimCam_GRP_aimConstraint1.crp";
connectAttr "aimCam_GRP.rpt" "aimCam_GRP_aimConstraint1.crt";
connectAttr "aimCam_GRP.ro" "aimCam_GRP_aimConstraint1.cro";
connectAttr "camAim_LOC.t" "aimCam_GRP_aimConstraint1.tg[0].tt";
connectAttr "camAim_LOC.rp" "aimCam_GRP_aimConstraint1.tg[0].trp";
connectAttr "camAim_LOC.rpt" "aimCam_GRP_aimConstraint1.tg[0].trt";
connectAttr "camAim_LOC.pm" "aimCam_GRP_aimConstraint1.tg[0].tpm";
connectAttr "aimCam_GRP_aimConstraint1.w0" "aimCam_GRP_aimConstraint1.tg[0].tw";
connectAttr "camAimLoc_INH_parentConstraint1.ctx" "camAimLoc_INH.tx" -l on;
connectAttr "camAimLoc_INH_parentConstraint1.cty" "camAimLoc_INH.ty" -l on;
connectAttr "camAimLoc_INH_parentConstraint1.ctz" "camAimLoc_INH.tz" -l on;
connectAttr "camAimLoc_INH_parentConstraint1.crx" "camAimLoc_INH.rx" -l on;
connectAttr "camAimLoc_INH_parentConstraint1.cry" "camAimLoc_INH.ry" -l on;
connectAttr "camAimLoc_INH_parentConstraint1.crz" "camAimLoc_INH.rz" -l on;
connectAttr "camAimLoc_INH.ro" "camAimLoc_INH_parentConstraint1.cro";
connectAttr "camAimLoc_INH.pim" "camAimLoc_INH_parentConstraint1.cpim";
connectAttr "camAimLoc_INH.rp" "camAimLoc_INH_parentConstraint1.crp";
connectAttr "camAimLoc_INH.rpt" "camAimLoc_INH_parentConstraint1.crt";
connectAttr "aim_ctrl_camAimLoc_INH_PGRP.t" "camAimLoc_INH_parentConstraint1.tg[0].tt"
		;
connectAttr "aim_ctrl_camAimLoc_INH_PGRP.rp" "camAimLoc_INH_parentConstraint1.tg[0].trp"
		;
connectAttr "aim_ctrl_camAimLoc_INH_PGRP.rpt" "camAimLoc_INH_parentConstraint1.tg[0].trt"
		;
connectAttr "aim_ctrl_camAimLoc_INH_PGRP.r" "camAimLoc_INH_parentConstraint1.tg[0].tr"
		;
connectAttr "aim_ctrl_camAimLoc_INH_PGRP.ro" "camAimLoc_INH_parentConstraint1.tg[0].tro"
		;
connectAttr "aim_ctrl_camAimLoc_INH_PGRP.s" "camAimLoc_INH_parentConstraint1.tg[0].ts"
		;
connectAttr "aim_ctrl_camAimLoc_INH_PGRP.pm" "camAimLoc_INH_parentConstraint1.tg[0].tpm"
		;
connectAttr "camAimLoc_INH_parentConstraint1.w0" "camAimLoc_INH_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "makeNurbCircle1.oc" "transformGeometry1.ig";
connectAttr "transformGeometry1.og" "transformGeometry2.ig";
connectAttr "camera_ctl.aim" "aim_ctrl_INH_parentConstraint1_camera_ctrl_aim_ctrl_INH_PGRPW0.i"
		;
connectAttr "camera_ctl.camPan" "unitConversion1.i";
connectAttr "camera_ctl.camTilt" "unitConversion2.i";
connectAttr "camera_ctl.camTwist" "unitConversion3.i";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of JP_handCam2.ma

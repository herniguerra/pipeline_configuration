//Maya ASCII 2018ff09 scene
//Name: mwCam_circle.ma
//Last modified: Thu, Aug 20, 2020 06:53:52 PM
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
	rename -uid "F91AEF55-499B-F24B-3D90-5681C05CEF17";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 13.060032975253421 34.2206510200417 44.686935813400247 ;
	setAttr ".r" -type "double3" -33.938352729615573 7.3999999999431418 8.0181687289864746e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CC1347DE-45AF-6DBA-0F2F-268B65CEA07B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".fcp" 100000;
	setAttr ".coi" 57.718463782860688;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.959817372009903 0.97295145311140296 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "D0231725-45D4-2B40-7DE6-B09B8B737B8B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -38.658420479817963 100.1 0.76649676804109257 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "277D49D3-47C7-E4DB-DA74-EAB74C2C14D1";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 120.32761395362699;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "2EB72A32-4E43-0898-E376-5A9E131A8BDA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.8936716782849943 6.4410298556288392 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C13582D6-4448-55CC-6FA5-F8B56799BC26";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 33.605750473552419;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "1ABB5D03-4C34-B982-E5F8-1EBB63C1205C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 10.526356457184178 0.44571625247498642 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1409ED1E-4FA9-A88F-A50C-E5A6C1942445";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 50.100786870574275;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "mwCam_grp";
	rename -uid "CDE064ED-4BEF-395D-6686-18898DEB0045";
	addAttr -ci true -k true -sn "_____________________________" -ln "_____________________________" 
		-min 0 -max 0 -en "VISIBILITY" -at "enum";
	addAttr -ci true -k true -sn "Joints" -ln "Joints" -min 0 -max 1 -en "off:on" -at "enum";
	addAttr -ci true -sn "Geo" -ln "Geo" -min 0 -max 1 -en "off:on" -at "enum";
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
	setAttr -k on ".Joints";
	setAttr -l on ".Geo" 1;
	setAttr -k on ".Ctrls" 1;
	setAttr ".nts" -type "string" "Rig by Joakim Palmkvist\r\nwww.cgjoker.com\r\ncontact me at jocke@cgjoker.com";
createNode transform -n "camCtls_grp" -p "mwCam_grp";
	rename -uid "8058D9E3-41DE-21A7-BBEC-B091FCBA2E13";
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
createNode transform -n "master_ctrl_TOP" -p "camCtls_grp";
	rename -uid "9D5D84FC-4A1A-B02E-66BC-03B829054C0C";
	setAttr -k off ".v";
	setAttr ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "master_ctrl" -p "master_ctrl_TOP";
	rename -uid "203189E8-476D-7EAB-0577-9CBB3084EF29";
	addAttr -ci true -k true -sn "_____________________________" -ln "_____________________________" 
		-min 0 -max 0 -en "Scale" -at "enum";
	addAttr -ci true -k true -sn "uniformScale" -ln "uniformScale" -dv 1 -min 0.01 -at "float";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ro" 2;
	setAttr -l on -k on "._____________________________";
	setAttr -k on ".uniformScale";
	setAttr ".nts" -type "string" "Rig by Joakim Palmkvist\r\nwww.cgjoker.com\r\ncontact me at jocke@cgjoker.com";
createNode nurbsCurve -n "master_ctrlShape" -p "master_ctrl";
	rename -uid "BD882FCA-4D64-ABCF-F21B-D6B2BEDBF722";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 86 0 no 3
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
		1.0574613016634256 0 6.394299681623175
		1.0574613016634256 0 6.5861798273352772
		1.0574613016634256 0 6.7780599730473767
		1.0574613016634256 0 6.9699401187594807
		1.3913715247021554 0 6.9699401187594807
		1.7252817477408851 0 6.9699401187594807
		2.0591919707796151 0 6.9699401187594807
		1.3802590502949683 0 8.0108936634665344
		0.70132612981031872 0 9.0518472081735837
		0.022393209325670162 0 10.092800752880636
		-0.65653971115897769 0 9.0518472081735801
		-1.335472631643625 0 8.0108936634665344
		-2.0144055521282742 0 6.9699401187594807
		-1.6804953290895437 0 6.9699401187594807
		-1.3465851060508152 0 6.9699401187594807
		-1.012674883012086 0 6.9699401187594807
		-1.012674883012086 0 6.7698162058689251
		-1.012674883012086 0 6.5696922929783765
		-1.012674883012086 0 6.3695683800878218
		-2.7183629075048437 0 6.0131729197399668
		-4.5245476014759554 0 4.8923566810473824
		-6.0525078604593281 0 2.8011869664743698
		-6.4352209423391189 0 1.0190421004943491
		-6.6020855741502764 0 1.0190421014405786
		-6.7689502062608948 0 1.0190421014405786
		-6.9358148383715079 0 1.0190421014405786
		-6.9358148383715079 0 1.3687170751594508
		-6.9358148383715079 0 1.7183920488783218
		-6.9358148383715079 0 2.068067022597194
		-8.0117827552399561 0 1.3570799525792459
		-9.0382355074566441 0 0.64609288256129571
		-10.080365255980198 0 -0.064894187456653013
		-9.0382355074566441 0 -0.77588125747460168
		-8.0117827552399561 0 -1.48686832749255
		-6.9358148383715079 0 -2.1978553975104971
		-6.9358148383715079 0 -1.8481804237916253
		-6.9358148383715079 0 -1.4985054500727528
		-6.9358148383715079 0 -1.1488304763538799
		-6.7617811832630599 0 -1.1488304763538799
		-6.5877475281546136 0 -1.1488304763538799
		-6.413713873046162 0 -1.1488304763538799
		-6.0084360722766457 0 -2.93504836962251
		-4.4648901565124151 0 -4.9922817219623266
		-2.6431198061178747 0 -6.0553329433602681
		-0.94132118045701363 0 -6.3942996816934201
		-0.94132118053998293 0 -6.5861798273352772
		-0.94132118053998293 0 -6.7780599730473794
		-0.94132118053998293 0 -6.9699401187594816
		-1.2752314035787191 0 -6.9699401187594816
		-1.6091416266174414 0 -6.9699401187594816
		-1.9430518496561742 0 -6.9699401187594816
		-1.2641189291715205 0 -8.0108936634665362
		-0.58518600868688242 0 -9.0518472081735837
		0.093746911797768936 0 -10.092800752880636
		0.77267983228241544 0 -9.0518472081735801
		1.4516127527670619 0 -8.0108936634665362
		2.130545673251711 0 -6.9699401187594816
		1.7966354502129807 0 -6.9699401187594816
		1.4627252271742515 0 -6.9699401187594816
		1.1288150041355201 0 -6.9699401187594816
		1.1288150041355201 0 -6.769816205868926
		1.1288150041355201 0 -6.5696922929783774
		1.1288150041355201 0 -6.3695683800878236
		2.834503028628272 0 -6.0091804145192489
		4.6406877225993952 0 -4.9298076975113156
		6.1091127237736682 0 -2.8562528491871868
		6.4352209423391349 0 -1.0741079832071645
		6.602085574150288 0 -1.0741079841533938
		6.7689502062609064 0 -1.0741079841533938
		6.9358148383715168 0 -1.0741079841533938
		6.9358148383715168 0 -1.4237829578722665
		6.9358148383715168 0 -1.7734579315911383
		6.9358148383715168 0 -2.1231329053100096
		8.0117827552399525 0 -1.4121458352920615
		9.0382355074566494 0 -0.7011587652741138
		10.080365255980198 0 0.0098283047438332896
		9.0382355074566494 0 0.72081537476178303
		8.0117827552399525 0 1.4318024447797324
		6.9358148383715168 0 2.1427895147976819
		6.9358148383715168 0 1.7931145410788087
		6.9358148383715168 0 1.4434395673599381
		6.9358148383715168 0 1.0937645936410649
		6.7617811832630705 0 1.0937645936410649
		6.5877475281546225 0 1.0937645936410649
		6.4137138730461718 0 1.0937645936410649
		6.1479279789602677 0 2.8799824869096962
		4.5810302773813198 0 4.9548307059482255
		2.7592599263747939 0 6.0593254491063355
		1.0574613007598497 0 6.3942996819675262
		;
createNode transform -n "dollyCtrlRot_GRP" -p "master_ctrl";
	rename -uid "991A13B0-42C6-0602-D424-A9B651694D0C";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -k off ".ry";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "dollyCtrl_INH" -p "dollyCtrlRot_GRP";
	rename -uid "5A079220-4FE2-6120-BB51-2597027C97A1";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "dollyCam_ctrl" -p "dollyCtrl_INH";
	rename -uid "A1CB9F89-4F0F-EDD8-D615-7F9FBA08A077";
	addAttr -ci true -sn "_____________________________" -ln "_____________________________" 
		-min 0 -max 0 -en "Scale" -at "enum";
	addAttr -ci true -sn "uniformScale" -ln "uniformScale" -dv 1 -min 0.01 -at "float";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -k true -sn "_________________________________" -ln "_________________________________" 
		-min 0 -max 0 -en "circle" -at "enum";
	addAttr -ci true -sn "circleRadius" -ln "circleRadius" -at "double";
	addAttr -ci true -sn "dollyMove" -ln "dollyMove" -at "double";
	addAttr -ci true -k true -sn "______________________________" -ln "______________________________" 
		-min 0 -max 0 -en "Boom1" -at "enum";
	addAttr -ci true -sn "height" -ln "height" -dv 10 -min 0 -at "double";
	addAttr -ci true -k true -sn "_______________________________" -ln "_______________________________" 
		-min 0 -max 0 -en "Boom2" -at "enum";
	addAttr -ci true -sn "length" -ln "length" -dv 7 -min 0 -at "double";
	addAttr -ci true -sn "boomPan" -ln "boomPan" -at "double";
	addAttr -ci true -sn "boomTilt" -ln "boomTilt" -at "double";
	addAttr -ci true -k true -sn "________________________________" -ln "________________________________" 
		-min 0 -max 0 -en "Cam" -at "enum";
	addAttr -ci true -sn "camPan" -ln "camPan" -at "double";
	addAttr -ci true -sn "camTilt" -ln "camTilt" -at "double";
	addAttr -ci true -sn "camTwist" -ln "camTwist" -at "double";
	addAttr -ci true -sn "focalLength" -ln "focalLength" -dv 35 -min 0 -at "double";
	addAttr -ci true -sn "aim" -ln "aim" -min 0 -max 1 -en "off:on" -at "enum";
	addAttr -ci true -k true -sn "__________________________________" -ln "__________________________________" 
		-min 0 -max 0 -en "Curves" -at "enum";
	addAttr -ci true -sn "rail" -ln "rail" -min 0 -max 1 -en "off:on" -at "enum";
	addAttr -ci true -sn "graphicalCamCurves" -ln "graphicalCamCurves" -min 0 -max 1 
		-en "off:on" -at "enum";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".ro" 2;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on "._____________________________";
	setAttr -l on ".uniformScale";
	setAttr ".aal" -type "attributeAlias" {"tZ","translateZ"} ;
	setAttr -l on -k on "._________________________________";
	setAttr -k on ".circleRadius" 10;
	setAttr -k on ".dollyMove";
	setAttr -l on -k on ".______________________________";
	setAttr -k on ".height";
	setAttr -l on -k on "._______________________________";
	setAttr -k on ".length";
	setAttr -k on ".boomPan";
	setAttr -k on ".boomTilt";
	setAttr -l on -k on ".________________________________";
	setAttr -k on ".camPan";
	setAttr -k on ".camTilt";
	setAttr -k on ".camTwist";
	setAttr -k on ".focalLength";
	setAttr -k on ".aim";
	setAttr -l on -k on ".__________________________________";
	setAttr -k on ".rail" 1;
	setAttr -k on ".graphicalCamCurves" 1;
	setAttr ".nts" -type "string" "Rig by Joakim Palmkvist\r\nwww.cgjoker.com\r\ncontact me at jocke@cgjoker.com";
createNode nurbsCurve -n "dollyCam_ctrlShape" -p "dollyCam_ctrl";
	rename -uid "6C55C871-40A8-B621-30DC-809CA174A3F2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 10 0 no 3
		11 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0 6.4531496324510069
		-2.0000000000000018 0 4.9616233208854545
		-1.6802701844742804 0 4.9616233208854545
		-1.6802701844742804 0 -4.9616233208854421
		-2.0000000000000018 0 -4.9616233208854421
		0 0 -6.4531496324510069
		2.0000000000000018 0 -4.9616233208854421
		1.6802701844742804 0 -4.9616233208854421
		1.6802701844742804 0 4.9616233208854545
		2.0000000000000018 0 4.9616233208854545
		0 0 6.4531496324510069
		;
createNode nurbsCurve -n "dollyCam_ctrlShape1" -p "dollyCam_ctrl";
	rename -uid "86606E0E-40AD-C495-AE62-AB87F3CD63D3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 10 0 no 3
		11 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0 -7.0000000000000018
		-4.0000000000000036 0 -4
		-2.0000000000000018 0 -4
		-2.0000000000000018 0 4.0000000000000009
		-4.0000000000000036 0 4.0000000000000009
		0 0 7.0000000000000018
		4.0000000000000036 0 4.0000000000000009
		2.0000000000000018 0 4.0000000000000009
		2.0000000000000018 0 -4
		4.0000000000000036 0 -4
		0 0 -7.0000000000000018
		;
createNode transform -n "master_ctrl_dollyJnt_GRP_PGRP" -p "dollyCam_ctrl";
	rename -uid "26A31AF5-41A5-07B3-DFC8-46BB34FC9A5F";
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
createNode nurbsCurve -n "dollyCam_ctrlShape4" -p "dollyCam_ctrl";
	rename -uid "77ECD95E-4AEC-2DB6-1073-D7BD7A1AB0CD";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.3 0.89180581244561252 1.6081941875543886
		1.3 0.49999999999999994 1.4459029062228064
		1.3 0.10819418755438787 1.6081941875543884
		1.2999999999999998 -0.054097093777193961 2.0000000000000004
		1.3 0.10819418755438776 2.3918058124456123
		1.3 0.49999999999999983 2.5540970937771945
		1.3 0.89180581244561186 2.3918058124456127
		1.3000000000000003 1.0540970937771941 2.0000000000000009
		1.3 0.89180581244561252 1.6081941875543886
		1.3 0.49999999999999994 1.4459029062228064
		1.3 0.10819418755438787 1.6081941875543884
		;
createNode nurbsCurve -n "dollyCam_ctrlShape5" -p "dollyCam_ctrl";
	rename -uid "F06B4F9E-4CA6-7F6E-AE7B-8B86AA7C421C";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5 0.89180581244561252 1.6081941875543886
		1.5 0.49999999999999994 1.4459029062228064
		1.5 0.10819418755438787 1.6081941875543884
		1.4999999999999998 -0.054097093777193961 2.0000000000000004
		1.5 0.10819418755438776 2.3918058124456123
		1.5 0.49999999999999983 2.5540970937771945
		1.5 0.89180581244561186 2.3918058124456127
		1.5000000000000002 1.0540970937771941 2.0000000000000009
		1.5 0.89180581244561252 1.6081941875543886
		1.5 0.49999999999999994 1.4459029062228064
		1.5 0.10819418755438787 1.6081941875543884
		;
createNode nurbsCurve -n "dollyCam_ctrlShape6" -p "dollyCam_ctrl";
	rename -uid "4E4BB62F-4073-7A91-A10E-3DB6E34EB316";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.3999999999999999 0.89180581244561252 1.6081941875543886
		1.3999999999999999 0.49999999999999994 1.4459029062228064
		1.3999999999999999 0.10819418755438787 1.6081941875543884
		1.3999999999999997 -0.054097093777193961 2.0000000000000004
		1.3999999999999999 0.10819418755438776 2.3918058124456123
		1.3999999999999999 0.49999999999999983 2.5540970937771945
		1.3999999999999999 0.89180581244561186 2.3918058124456127
		1.4000000000000001 1.0540970937771941 2.0000000000000009
		1.3999999999999999 0.89180581244561252 1.6081941875543886
		1.3999999999999999 0.49999999999999994 1.4459029062228064
		1.3999999999999999 0.10819418755438787 1.6081941875543884
		;
createNode nurbsCurve -n "dollyCam_ctrlShape7" -p "dollyCam_ctrl";
	rename -uid "E29AE6C7-4A7D-01F2-7946-468D8B226B37";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.5 0.89180581244561252 1.6081941875543886
		-1.5 0.49999999999999994 1.4459029062228064
		-1.5 0.10819418755438787 1.6081941875543884
		-1.5000000000000002 -0.054097093777193961 2.0000000000000004
		-1.5 0.10819418755438776 2.3918058124456123
		-1.5 0.49999999999999983 2.5540970937771945
		-1.5 0.89180581244561186 2.3918058124456127
		-1.4999999999999998 1.0540970937771941 2.0000000000000009
		-1.5 0.89180581244561252 1.6081941875543886
		-1.5 0.49999999999999994 1.4459029062228064
		-1.5 0.10819418755438787 1.6081941875543884
		;
createNode nurbsCurve -n "dollyCam_ctrlShape8" -p "dollyCam_ctrl";
	rename -uid "06432477-4C2E-C0EF-9885-4789FE6C52DF";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.3 0.89180581244561252 1.6081941875543886
		-1.3 0.49999999999999994 1.4459029062228064
		-1.3 0.10819418755438787 1.6081941875543884
		-1.3000000000000003 -0.054097093777193961 2.0000000000000004
		-1.3 0.10819418755438776 2.3918058124456123
		-1.3 0.49999999999999983 2.5540970937771945
		-1.3 0.89180581244561186 2.3918058124456127
		-1.2999999999999998 1.0540970937771941 2.0000000000000009
		-1.3 0.89180581244561252 1.6081941875543886
		-1.3 0.49999999999999994 1.4459029062228064
		-1.3 0.10819418755438787 1.6081941875543884
		;
createNode nurbsCurve -n "dollyCam_ctrlShape9" -p "dollyCam_ctrl";
	rename -uid "3728406B-4406-42C2-1193-8F9B2E4C1672";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.3999999999999999 0.89180581244561252 1.6081941875543886
		-1.3999999999999999 0.49999999999999994 1.4459029062228064
		-1.3999999999999999 0.10819418755438787 1.6081941875543884
		-1.4000000000000001 -0.054097093777193961 2.0000000000000004
		-1.3999999999999999 0.10819418755438776 2.3918058124456123
		-1.3999999999999999 0.49999999999999983 2.5540970937771945
		-1.3999999999999999 0.89180581244561186 2.3918058124456127
		-1.3999999999999997 1.0540970937771941 2.0000000000000009
		-1.3999999999999999 0.89180581244561252 1.6081941875543886
		-1.3999999999999999 0.49999999999999994 1.4459029062228064
		-1.3999999999999999 0.10819418755438787 1.6081941875543884
		;
createNode nurbsCurve -n "dollyCam_ctrlShape10" -p "dollyCam_ctrl";
	rename -uid "917513EB-4300-741E-8401-AEB58AC1F568";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		-1.1665876109095219 2 -2.6726441244674568
		-1.1665876109095219 0 -2.6726441244674568
		1.166587610909513 0 -2.6726441244674568
		1.166587610909513 2 -2.6726441244674568
		-1.1665876109095219 2 -2.6726441244674568
		-1.1665876109095272 2 2.6726441244674586
		-1.1665876109095183 0 2.6726441244674408
		-1.1665876109095219 0 -2.6726441244674568
		-1.1665876109095183 0 2.6726441244674408
		1.1665876109095183 0 2.6726441244674408
		1.166587610909513 0 -2.6726441244674568
		1.1665876109095183 0 2.6726441244674408
		1.1665876109095095 2 2.6726441244674586
		1.166587610909513 2 -2.6726441244674568
		1.1665876109095095 2 2.6726441244674586
		-1.1665876109095272 2 2.6726441244674586
		;
createNode nurbsCurve -n "dollyCam_ctrlShape11" -p "dollyCam_ctrl";
	rename -uid "FB9D6304-4AA1-A23D-2251-8D9E068FCAAE";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.3 0.89180581244561252 -2.3918058124456119
		1.3 0.49999999999999994 -2.5540970937771941
		1.3 0.10819418755438787 -2.3918058124456123
		1.2999999999999998 -0.054097093777193961 -2
		1.3 0.10819418755438776 -1.6081941875543879
		1.3 0.49999999999999983 -1.4459029062228059
		1.3 0.89180581244561186 -1.6081941875543877
		1.3000000000000003 1.0540970937771941 -1.9999999999999998
		1.3 0.89180581244561252 -2.3918058124456119
		1.3 0.49999999999999994 -2.5540970937771941
		1.3 0.10819418755438787 -2.3918058124456123
		;
createNode nurbsCurve -n "dollyCam_ctrlShape12" -p "dollyCam_ctrl";
	rename -uid "538805E8-4A3F-5538-D689-84BBBCA53B6C";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5 0.89180581244561252 -2.3918058124456119
		1.5 0.49999999999999994 -2.5540970937771941
		1.5 0.10819418755438787 -2.3918058124456123
		1.4999999999999998 -0.054097093777193961 -2
		1.5 0.10819418755438776 -1.6081941875543879
		1.5 0.49999999999999983 -1.4459029062228059
		1.5 0.89180581244561186 -1.6081941875543877
		1.5000000000000002 1.0540970937771941 -1.9999999999999998
		1.5 0.89180581244561252 -2.3918058124456119
		1.5 0.49999999999999994 -2.5540970937771941
		1.5 0.10819418755438787 -2.3918058124456123
		;
createNode nurbsCurve -n "dollyCam_ctrlShape13" -p "dollyCam_ctrl";
	rename -uid "462A69EA-4F7D-77C3-69AA-9598646E7727";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.3999999999999999 0.89180581244561252 -2.3918058124456119
		1.3999999999999999 0.49999999999999994 -2.5540970937771941
		1.3999999999999999 0.10819418755438787 -2.3918058124456123
		1.3999999999999997 -0.054097093777193961 -2
		1.3999999999999999 0.10819418755438776 -1.6081941875543879
		1.3999999999999999 0.49999999999999983 -1.4459029062228059
		1.3999999999999999 0.89180581244561186 -1.6081941875543877
		1.4000000000000001 1.0540970937771941 -1.9999999999999998
		1.3999999999999999 0.89180581244561252 -2.3918058124456119
		1.3999999999999999 0.49999999999999994 -2.5540970937771941
		1.3999999999999999 0.10819418755438787 -2.3918058124456123
		;
createNode nurbsCurve -n "dollyCam_ctrlShape14" -p "dollyCam_ctrl";
	rename -uid "327AB832-434A-D115-0CBA-36800570ECDD";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.5 0.89180581244561252 -2.3918058124456119
		-1.5 0.49999999999999994 -2.5540970937771941
		-1.5 0.10819418755438787 -2.3918058124456123
		-1.5000000000000002 -0.054097093777193961 -2
		-1.5 0.10819418755438776 -1.6081941875543879
		-1.5 0.49999999999999983 -1.4459029062228059
		-1.5 0.89180581244561186 -1.6081941875543877
		-1.4999999999999998 1.0540970937771941 -1.9999999999999998
		-1.5 0.89180581244561252 -2.3918058124456119
		-1.5 0.49999999999999994 -2.5540970937771941
		-1.5 0.10819418755438787 -2.3918058124456123
		;
createNode nurbsCurve -n "dollyCam_ctrlShape15" -p "dollyCam_ctrl";
	rename -uid "EE8269B5-442B-E90A-105D-D7B378CD1FF3";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.3 0.89180581244561252 -2.3918058124456119
		-1.3 0.49999999999999994 -2.5540970937771941
		-1.3 0.10819418755438787 -2.3918058124456123
		-1.3000000000000003 -0.054097093777193961 -2
		-1.3 0.10819418755438776 -1.6081941875543879
		-1.3 0.49999999999999983 -1.4459029062228059
		-1.3 0.89180581244561186 -1.6081941875543877
		-1.2999999999999998 1.0540970937771941 -1.9999999999999998
		-1.3 0.89180581244561252 -2.3918058124456119
		-1.3 0.49999999999999994 -2.5540970937771941
		-1.3 0.10819418755438787 -2.3918058124456123
		;
createNode nurbsCurve -n "dollyCam_ctrlShape16" -p "dollyCam_ctrl";
	rename -uid "439DBF94-4ADD-BF58-EF2C-038895FA5456";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.3999999999999999 0.89180581244561252 -2.3918058124456119
		-1.3999999999999999 0.49999999999999994 -2.5540970937771941
		-1.3999999999999999 0.10819418755438787 -2.3918058124456123
		-1.4000000000000001 -0.054097093777193961 -2
		-1.3999999999999999 0.10819418755438776 -1.6081941875543879
		-1.3999999999999999 0.49999999999999983 -1.4459029062228059
		-1.3999999999999999 0.89180581244561186 -1.6081941875543877
		-1.3999999999999997 1.0540970937771941 -1.9999999999999998
		-1.3999999999999999 0.89180581244561252 -2.3918058124456119
		-1.3999999999999999 0.49999999999999994 -2.5540970937771941
		-1.3999999999999999 0.10819418755438787 -2.3918058124456123
		;
	setAttr ".nts" -type "string" "Rig by Joakim Palmkvist\r\nwww.cgjoker.com\r\ncontact me at jocke@cgjoker.com";
createNode transform -n "master_ctrl_dollyJnt_GRP_SGRP" -p "master_ctrl";
	rename -uid "0F1C2702-4427-AF92-7972-5683E7CCEB29";
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
	setAttr ".rp" -type "double3" -20 0 0 ;
	setAttr ".sp" -type "double3" -20 0 0 ;
createNode transform -n "master_ctrl_dollyCam_GRP_SGRP" -p "master_ctrl";
	rename -uid "8184522D-4F49-106B-449A-FAA9FCDFA0A3";
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
	setAttr ".rp" -type "double3" -12.999999999999996 10 0 ;
	setAttr ".sp" -type "double3" -12.999999999999996 10 0 ;
	setAttr ".nts" -type "string" "Rig by Joakim Palmkvist\r\nwww.cgjoker.com\r\ncontact me at jocke@cgjoker.com";
createNode transform -n "master_ctrl_camAimLoc_GRP_SGRP" -p "master_ctrl";
	rename -uid "F2DAC63F-4107-5538-ECB7-609CDD1C89CD";
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
	setAttr ".rp" -type "double3" -12.999999999999995 9.9999999999999982 -9.0000000000000036 ;
	setAttr ".sp" -type "double3" -12.999999999999995 9.9999999999999982 -9.0000000000000036 ;
createNode transform -n "master_ctrl_camAim_ctrl_INH_SGRP" -p "master_ctrl";
	rename -uid "C030945C-449B-659E-1A98-2C8DCC1B4571";
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
	setAttr ".rp" -type "double3" 7.0000000000000053 10 -9.0000000000000018 ;
	setAttr ".sp" -type "double3" 7.0000000000000053 10 -9.0000000000000018 ;
createNode transform -n "master_ctrl_boom2Crv_2_CLS_GRP_SGRP" -p "master_ctrl";
	rename -uid "021015D4-4FDF-ECA4-BECB-9E8379CBBFA0";
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
	setAttr ".rp" -type "double3" 3.9443045261050599e-31 10.000000000000002 0 ;
	setAttr ".sp" -type "double3" 3.9443045261050599e-31 10.000000000000002 0 ;
createNode transform -n "master_ctrl_weight_CRV_SGRP" -p "master_ctrl";
	rename -uid "79748B25-43D9-C636-3752-C5B7CF51F551";
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
	setAttr ".rp" -type "double3" -2 10 0 ;
	setAttr ".sp" -type "double3" -2 10 0 ;
	setAttr ".nts" -type "string" "Rig by Joakim Palmkvist\r\nwww.cgjoker.com\r\ncontact me at jocke@cgjoker.com";
createNode transform -n "master_ctrl_railCrv_GRP_SGRP" -p "master_ctrl";
	rename -uid "520448D9-4074-F75C-C724-EEA88CEA1DD6";
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
createNode transform -n "camAim_ctrl_INH" -p "camCtls_grp";
	rename -uid "BD67E6AB-4A8E-067C-255B-80801EF6CE90";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 10 -9.0000000000000018 ;
	setAttr ".sp" -type "double3" 0 10 -9.0000000000000018 ;
createNode transform -n "camAim_ctrl_TOP" -p "camAim_ctrl_INH";
	rename -uid "CE4F3284-4F39-1303-F7BD-AD8049C50BBF";
	setAttr -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 10 -9.0000000000000018 ;
	setAttr ".sp" -type "double3" 0 10 -9.0000000000000018 ;
createNode transform -n "camAim_ctrl" -p "camAim_ctrl_TOP";
	rename -uid "DBB91930-4213-1833-FB44-7FBE4F38F2A9";
	setAttr -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 10 -9.0000000000000018 ;
	setAttr ".sp" -type "double3" 0 10 -9.0000000000000018 ;
createNode nurbsCurve -n "camAim_ctrlShape" -p "camAim_ctrl";
	rename -uid "01044AAC-42D6-2623-9DEF-DEBFC36F80E1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		-1.7763568394002505e-15 9.549350789836561 -9.0000000000000018
		0.4608341518645922 9.0885166379719688 -9.0000000000000018
		0.23041707593229521 9.0885166379719688 -9.0000000000000018
		0.23041707593229521 8.1668483342427827 -9.0000000000000018
		-0.23041707593229788 8.1668483342427827 -9.0000000000000018
		-0.23041707593229788 9.0885166379719688 -9.0000000000000018
		-0.46083415186459487 9.0885166379719688 -9.0000000000000018
		-1.7763568394002505e-15 9.549350789836561 -9.0000000000000018
		;
createNode nurbsCurve -n "camAim_ctrlShape5" -p "camAim_ctrl";
	rename -uid "9BB9239C-432B-C19F-E399-B0A9462CA720";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.35313395983211393 10.353133959832119 -9.0000000000000018
		-4.4408920985006262e-15 10.499406835329099 -9.0000000000000018
		-0.35313395983212281 10.353133959832119 -9.0000000000000018
		-0.49940683532910235 10 -9.0000000000000018
		-0.35313395983212281 9.6468660401678807 -9.0000000000000018
		-4.4408920985006262e-15 9.5005931646709012 -9.0000000000000018
		0.35313395983211304 9.6468660401678807 -9.0000000000000018
		0.49940683532909258 10 -9.0000000000000018
		0.35313395983211393 10.353133959832119 -9.0000000000000018
		-4.4408920985006262e-15 10.499406835329099 -9.0000000000000018
		-0.35313395983212281 10.353133959832119 -9.0000000000000018
		;
createNode nurbsCurve -n "camAim_ctrlShape6" -p "camAim_ctrl";
	rename -uid "BB261CA0-446C-D655-6636-A4972670CE6D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 10.450649210163439 -9.0000000000000018
		-0.4608341518645922 10.911483362028031 -9.0000000000000018
		-0.2304170759322961 10.911483362028031 -9.0000000000000018
		-0.2304170759322961 11.833151665757217 -9.0000000000000018
		0.23041707593229699 11.833151665757217 -9.0000000000000018
		0.23041707593229699 10.911483362028031 -9.0000000000000018
		0.46083415186459398 10.911483362028031 -9.0000000000000018
		0 10.450649210163439 -9.0000000000000018
		;
createNode nurbsCurve -n "camAim_ctrlShape7" -p "camAim_ctrl";
	rename -uid "F5249BFF-4DAD-5BB0-0778-0B98DC1A2982";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0.45064921016343806 10 -9.0000000000000018
		0.91148336202803115 10.460834151864592 -9.0000000000000018
		0.91148336202803115 10.230417075932296 -9.0000000000000018
		1.8331516657572173 10.230417075932296 -9.0000000000000018
		1.8331516657572173 9.7695829240677039 -9.0000000000000018
		0.91148336202803115 9.7695829240677039 -9.0000000000000018
		0.91148336202803115 9.539165848135406 -9.0000000000000018
		0.45064921016343806 10 -9.0000000000000018
		;
createNode nurbsCurve -n "camAim_ctrlShape8" -p "camAim_ctrl";
	rename -uid "45E02E81-417A-548C-B006-A3ABAE48CFFC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		-0.45064921016343895 10 -9.0000000000000018
		-0.91148336202803204 9.5391658481354078 -9.0000000000000018
		-0.91148336202803204 9.7695829240677039 -9.0000000000000018
		-1.8331516657572173 9.7695829240677039 -9.0000000000000018
		-1.8331516657572173 10.230417075932298 -9.0000000000000018
		-0.91148336202803204 10.230417075932296 -9.0000000000000018
		-0.91148336202803204 10.460834151864594 -9.0000000000000018
		-0.45064921016343895 10 -9.0000000000000018
		;
createNode transform -n "camAim_ctrl_camAimLoc_GRP_PGRP" -p "camAim_ctrl";
	rename -uid "7B17C20E-46A4-6924-F39B-4DB767DEDBF2";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -7.0000000000000053 0 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.0000000000000053 10 -9.0000000000000036 ;
	setAttr ".sp" -type "double3" 7.0000000000000053 10 -9.0000000000000036 ;
createNode pointConstraint -n "camAim_ctrl_INH_pointConstraint1" -p "camAim_ctrl_INH";
	rename -uid "91168CFD-4F65-E5B3-B8A8-999F0C8C6B2C";
	addAttr -ci true -k true -sn "w0" -ln "dolly_3_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr -l on ".o" -type "double3" 1.7763568394002505e-15 0 -9.0000000000000018 ;
	setAttr -l on ".o";
	setAttr -l on ".ox";
	setAttr -l on ".oy";
	setAttr -l on ".oz";
	setAttr ".rst" -type "double3" 7.0000000000000053 0 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "camAim_ctrl_INH_scaleConstraint1" -p "camAim_ctrl_INH";
	rename -uid "0918350D-4DD1-0172-F571-6B82068FED29";
	addAttr -ci true -k true -sn "w0" -ln "master_ctrl_camAim_ctrl_INH_SGRPW0" -dv 
		1 -min 0 -at "double";
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
	setAttr -l on ".o";
	setAttr -l on ".ox";
	setAttr -l on ".oy";
	setAttr -l on ".oz";
	setAttr -l on -k on ".w0";
createNode transform -n "camJnts_grp" -p "mwCam_grp";
	rename -uid "759E5A3E-4F5C-446F-9C25-37A67D436450";
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
createNode transform -n "dollyJnt_GRP" -p "camJnts_grp";
	rename -uid "50D222D4-43DF-3398-1DC8-E7AE3DC5D10F";
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
createNode joint -n "dolly_1_JNT" -p "dollyJnt_GRP";
	rename -uid "00FC753F-41F2-1CF1-2171-C7BA8A567B6B";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr -l on -cb off ".radi" 0;
createNode joint -n "dolly_2_JNT" -p "dolly_1_JNT";
	rename -uid "C2D3ED9E-42F7-7189-5076-DCB6211A5C31";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 10 2.2204460492503123e-15 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -l on -k off -cb on ".rx";
	setAttr ".ro" 3;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr -l on -cb off ".radi" 0;
createNode joint -n "dolly_3_JNT" -p "dolly_2_JNT";
	rename -uid "144291C4-485C-F02E-CD5A-5DAC3EF61AD3";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 7 -1.7763568394002505e-15 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on -cb off ".radi" 0;
createNode transform -n "dolly_3_JNT_dollyCam_GRP_PGRP" -p "dolly_3_JNT";
	rename -uid "D638A5DB-4F59-8CE7-78F8-7A9AAD0AF20B";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -6.9999999999999956 -9.9999999999999947 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 6.9999999999999964 9.9999999999999964 0 ;
	setAttr ".sp" -type "double3" 6.9999999999999991 10 0 ;
	setAttr ".spt" -type "double3" -2.6645352591003745e-15 -3.5527136788004994e-15 0 ;
createNode transform -n "boom2Crv_2_CLS1_GRP" -p "dolly_3_JNT";
	rename -uid "B7CC973A-47F4-F833-61A7-0F849A69DB58";
	setAttr -k off ".v" no;
	setAttr ".t" -type "double3" -7.0000000000000009 -9.9999999999999947 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 6.9999999999999956 9.9999999999999964 0 ;
	setAttr ".sp" -type "double3" 6.9999999999999982 10.000000000000002 0 ;
	setAttr ".spt" -type "double3" -2.6645352591003745e-15 -5.329070518200749e-15 0 ;
createNode transform -n "boom2Crv_2_CLS1" -p "boom2Crv_2_CLS1_GRP";
	rename -uid "AE6BEED3-40C0-70D2-95E7-D39A275F7ED7";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 6.9999999999999982 10.000000000000002 0 ;
	setAttr ".sp" -type "double3" 6.9999999999999982 10.000000000000002 0 ;
createNode clusterHandle -n "boom2Crv_2_CLS1Shape" -p "boom2Crv_2_CLS1";
	rename -uid "3CEE617E-4857-B625-C4ED-80A59631714A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 6.9999999999999982 10.000000000000002 0 ;
createNode transform -n "boom2Crv_1_CLS1_GRP" -p "dolly_2_JNT";
	rename -uid "F813C9A2-4FF1-6F4C-0B9A-FF9AC2281180";
	setAttr -k off ".v" no;
	setAttr ".t" -type "double3" -3.9443045261050573e-31 -9.9999999999999982 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -0.40101151064302637 9.9999999999999964 -4.163336342344337e-16 ;
	setAttr ".sp" -type "double3" -0.40101151064302654 10 -4.163336342344337e-16 ;
	setAttr ".spt" -type "double3" 1.6653345369377341e-16 -3.5527136788004994e-15 0 ;
createNode transform -n "boom2Crv_1_CLS1" -p "boom2Crv_1_CLS1_GRP";
	rename -uid "8A820DEB-45E1-9395-1CDE-868A742C7B3B";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -0.40101151064302654 10 -4.163336342344337e-16 ;
	setAttr ".sp" -type "double3" -0.40101151064302654 10 -4.163336342344337e-16 ;
createNode clusterHandle -n "boom2Crv_1_CLS1Shape" -p "boom2Crv_1_CLS1";
	rename -uid "C67D6606-47BB-C6C1-A62B-6DB63D46CD27";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" -0.40101151064302654 10 -4.163336342344337e-16 ;
createNode transform -n "boom2Crv_1_CLS_GRP" -p "dolly_1_JNT";
	rename -uid "EFA79E3F-4DD0-82AC-A56D-5AACBF866C9B";
	setAttr -k off ".v" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 0 -89.999999999999986 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.7902346272080645e-15 2 -3.4694469519536142e-16 ;
	setAttr ".rpt" -type "double3" 1.9999999999999987 -2.0000000000000022 0 ;
	setAttr ".sp" -type "double3" 1.7902346272080649e-15 2.0000000000000004 -3.4694469519536142e-16 ;
	setAttr ".spt" -type "double3" -3.9443045261050582e-31 -4.4408920985006252e-16 0 ;
createNode transform -n "boom2Crv_1_CLS" -p "boom2Crv_1_CLS_GRP";
	rename -uid "DA0AC1E2-44B8-FB49-C33A-9E94420C530E";
	setAttr -k off ".v" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.7902346272080649e-15 2.0000000000000004 -3.4694469519536142e-16 ;
	setAttr ".sp" -type "double3" 1.7902346272080649e-15 2.0000000000000004 -3.4694469519536142e-16 ;
createNode clusterHandle -n "boom2Crv_1_CLSShape" -p "boom2Crv_1_CLS";
	rename -uid "DCA7D48A-49E6-C741-C529-748468892106";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1.7902346272080649e-15 2.0000000000000004 -3.4694469519536142e-16 ;
createNode parentConstraint -n "dollyJnt_GRP_parentConstraint1" -p "dollyJnt_GRP";
	rename -uid "CAB9B44C-4D47-2BA0-C2B8-0A817C5DF119";
	addAttr -ci true -k true -sn "w0" -ln "master_ctrl_dollyJnt_GRP_PGRPW0" -dv 1 -min 
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
createNode scaleConstraint -n "dollyJnt_GRP_scaleConstraint1" -p "dollyJnt_GRP";
	rename -uid "E4710B19-475B-9DE6-F0C5-1EAE06F621DF";
	addAttr -ci true -k true -sn "w0" -ln "master_ctrl_dollyJnt_GRP_SGRPW0" -dv 1 -min 
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
	setAttr -l on ".o";
	setAttr -l on ".ox";
	setAttr -l on ".oy";
	setAttr -l on ".oz";
	setAttr -l on -k on ".w0";
createNode transform -n "camExtras_grp" -p "mwCam_grp";
	rename -uid "1F923E76-49F8-FFD8-609C-C08E71617B3B";
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
createNode transform -n "dollyCam_GRP" -p "camExtras_grp";
	rename -uid "6529C9C2-4C7C-051A-D099-AD903A28234C";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode pointConstraint -n "dollyCam_GRP_pointConstraint1" -p "dollyCam_GRP";
	rename -uid "1B6A888C-42EC-1AC7-DB3C-499B38FCE84B";
	addAttr -ci true -k true -sn "w0" -ln "dolly_3_JNT_dollyCam_GRP_PGRPW0" -dv 1 -min 
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
	setAttr -l on ".o" -type "double3" -8.8817841970012523e-16 -1.7763568394002505e-15 
		0 ;
	setAttr -l on ".o";
	setAttr -l on ".ox";
	setAttr -l on ".oy";
	setAttr -l on ".oz";
	setAttr ".rst" -type "double3" 6.9999999999999991 10 0 ;
	setAttr -l on -k on ".w0";
createNode transform -n "dollyCamAim_INH" -p "dollyCam_GRP";
	rename -uid "AAA3DEF5-440A-28CB-C98D-1098AF51EED3";
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
	setAttr ".rp" -type "double3" 0 -1.1368683772161603e-13 -0.48647515566585747 ;
	setAttr ".sp" -type "double3" 0 -1.1368683772161603e-13 -0.48647515566585747 ;
createNode transform -n "mwCam" -p "dollyCamAim_INH";
	rename -uid "A339C7E8-4ACB-AD64-D052-50BF70D17CA6";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 -1.1368683772161603e-13 -0.48647515566585747 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode camera -n "mwCamShape" -p "mwCam";
	rename -uid "2330C7A1-4615-6C41-8E74-E3B8020D4BBC";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr -av ".fl" 35;
	setAttr ".ncp" 0.01;
	setAttr ".fcp" 100000;
	setAttr ".coi" 45.424155482471605;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".tp" -type "double3" 2.9590290622280602 5.1848704041169418 8.8817841970012523e-16 ;
createNode aimConstraint -n "dollyCamAim_INH_aimConstraint1" -p "dollyCamAim_INH";
	rename -uid "011306F8-4B26-4753-701C-0FA6846125F3";
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
	setAttr ".rsrr" -type "double3" -7.5315434618103107e-13 89.999999999999247 0 ;
	setAttr -l on -k on ".w0";
createNode scaleConstraint -n "dollyCam_GRP_scaleConstraint1" -p "dollyCam_GRP";
	rename -uid "8F2DAFE9-418B-3908-C8E3-A7914C12CE01";
	addAttr -ci true -k true -sn "w0" -ln "master_ctrl_dollyCam_GRP_SGRPW0" -dv 1 -min 
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
	setAttr -l on ".o";
	setAttr -l on ".ox";
	setAttr -l on ".oy";
	setAttr -l on ".oz";
	setAttr -l on -k on ".w0";
createNode transform -n "camAimLoc_GRP" -p "camExtras_grp";
	rename -uid "FE904147-4FF9-46F7-06E0-EE85E0AD56B7";
	setAttr -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 10 -9.0000000000000018 ;
	setAttr ".sp" -type "double3" 0 10 -9.0000000000000018 ;
createNode transform -n "camAim_LOC" -p "camAimLoc_GRP";
	rename -uid "EA295DB5-463C-2812-9FCD-A19E571EB493";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 10 -9.0000000000000018 ;
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
	rename -uid "9B42494D-495B-7C44-648A-228D9F43DAD7";
	setAttr -k off ".v";
createNode parentConstraint -n "camAimLoc_GRP_parentConstraint1" -p "camAimLoc_GRP";
	rename -uid "04F9A2EC-4834-733C-3797-C8B90B3B8AE5";
	addAttr -ci true -k true -sn "w0" -ln "camAim_ctrl_camAimLoc_GRP_PGRPW0" -dv 1 
		-min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rst" -type "double3" 7.0000000000000053 -1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr -l on ".int";
	setAttr -l on -k on ".w0";
createNode scaleConstraint -n "camAimLoc_GRP_scaleConstraint1" -p "camAimLoc_GRP";
	rename -uid "AA2F5826-4D10-6593-BE48-82A441D1E54B";
	addAttr -ci true -k true -sn "w0" -ln "master_ctrl_camAimLoc_GRP_SGRPW0" -dv 1 
		-min 0 -at "double";
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
	setAttr -l on ".o";
	setAttr -l on ".ox";
	setAttr -l on ".oy";
	setAttr -l on ".oz";
	setAttr -l on -k on ".w0";
createNode transform -n "Crv_GRP" -p "camExtras_grp";
	rename -uid "050D8293-4C9D-9A1D-6F33-BF90E837791E";
	setAttr -k off ".v";
createNode transform -n "boom2_CRV" -p "Crv_GRP";
	rename -uid "A633E284-4455-3B62-C1BF-D0A39CA866B1";
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
	setAttr ".rp" -type "double3" 0 10 -2.7755575615628914e-17 ;
	setAttr ".sp" -type "double3" 0 10 0 ;
createNode nurbsCurve -n "boom2_CRVShape" -p "boom2_CRV";
	rename -uid "6E5B2E63-4001-2701-7B3F-6B9DE047DD5A";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "boom2_CRVShapeOrig" -p "boom2_CRV";
	rename -uid "8DF89C00-4CE8-D8FC-2D74-96A03621D05E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		6.9999999999999973 10.118999914093015 -0.11899991409301412
		-0.40101151064302654 10.118999914093013 -0.11899991409301421
		-0.40101151064302654 9.8810000859069866 -0.11899991409301421
		6.9999999999999973 9.8810000859069884 -0.11899991409301412
		6.9999999999999973 10.118999914093015 -0.11899991409301412
		6.9999999999999991 10.118999914093015 0.11899991409301412
		-0.40101151064302654 10.118999914093013 0.11899991409301337
		-0.40101151064302654 10.118999914093013 -0.11899991409301421
		-0.40101151064302654 10.118999914093013 0.11899991409301337
		-0.40101151064302654 9.8810000859069866 0.11899991409301337
		-0.40101151064302654 9.8810000859069866 -0.11899991409301421
		-0.40101151064302654 9.8810000859069866 0.11899991409301337
		6.9999999999999991 9.8810000859069884 0.11899991409301412
		6.9999999999999973 9.8810000859069884 -0.11899991409301412
		6.9999999999999991 9.8810000859069884 0.11899991409301412
		6.9999999999999991 10.118999914093015 0.11899991409301412
		;
createNode transform -n "boom1_CRV" -p "Crv_GRP";
	rename -uid "491710F9-42A8-59DC-084A-80954255E12B";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 1.5668977075724193e-15 -3.4792118243585499e-31 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 3.0566799319508315 -2.7755575615628914e-17 ;
	setAttr ".sp" -type "double3" 0 3.0566799319508307 0 ;
	setAttr ".spt" -type "double3" 0 8.8817841970012543e-16 0 ;
createNode nurbsCurve -n "boom1_CRVShape" -p "boom1_CRV";
	rename -uid "3C7E31B9-46D7-ACA5-2D0D-C28E6483AB59";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "boom1_CRVShapeOrig" -p "boom1_CRV";
	rename -uid "B85D20A5-4D64-7D03-1BF8-28989271EFB7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		-0.1189999140930138 9.8816154239305352 -0.11899991409301412
		-0.1189999140930138 2 -0.11899991409301412
		0.1189999140930138 2 -0.11899991409301412
		0.1189999140930138 9.8816154239305352 -0.11899991409301412
		-0.1189999140930138 9.8816154239305352 -0.11899991409301412
		-0.11899991409301425 9.8816154239305369 0.11899991409301412
		-0.11899991409301336 2 0.11899991409301343
		-0.1189999140930138 2 -0.11899991409301412
		-0.11899991409301336 2 0.11899991409301343
		0.11899991409301425 2 0.11899991409301343
		0.1189999140930138 2 -0.11899991409301412
		0.11899991409301425 2 0.11899991409301343
		0.11899991409301336 9.8816154239305369 0.11899991409301412
		0.1189999140930138 9.8816154239305352 -0.11899991409301412
		0.11899991409301336 9.8816154239305369 0.11899991409301412
		-0.11899991409301425 9.8816154239305369 0.11899991409301412
		;
createNode transform -n "weight_CRV" -p "Crv_GRP";
	rename -uid "D4EF38F4-4B92-3129-3911-1BA848EF4FE3";
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
	setAttr ".rp" -type "double3" -2 10 0 ;
	setAttr ".sp" -type "double3" -2 10 0 ;
createNode nurbsCurve -n "weight_CRVShape" -p "weight_CRV";
	rename -uid "042494BA-4237-16F3-5AC9-6DB806AFC71F";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		-2.1273620822225325 10.42383790201108 -0.42383790201108246
		-2.1273620822225325 9.5761620979889184 -0.42383790201108246
		-0.39806686279066028 9.5761620979889184 -0.42383790201108246
		-0.39806686279066028 10.42383790201108 -0.42383790201108246
		-2.1273620822225325 10.42383790201108 -0.42383790201108246
		-2.1273620822225396 10.42383790201108 0.42383790201108246
		-2.1273620822225254 9.5761620979889184 0.42383790201108001
		-2.1273620822225325 9.5761620979889184 -0.42383790201108246
		-2.1273620822225254 9.5761620979889184 0.42383790201108001
		-0.39806686279065318 9.5761620979889184 0.42383790201108001
		-0.39806686279066028 9.5761620979889184 -0.42383790201108246
		-0.39806686279065318 9.5761620979889184 0.42383790201108001
		-0.39806686279066383 10.42383790201108 0.42383790201108246
		-0.39806686279066028 10.42383790201108 -0.42383790201108246
		-0.39806686279066383 10.42383790201108 0.42383790201108246
		-2.1273620822225396 10.42383790201108 0.42383790201108246
		;
createNode parentConstraint -n "weight_CRV_parentConstraint1" -p "weight_CRV";
	rename -uid "40FEFD7D-4C24-A00F-1662-78B995F29721";
	addAttr -ci true -k true -sn "w0" -ln "dolly_2_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.9999999999999991 -1.7763568394002505e-15 
		0 ;
	setAttr -l on ".int";
	setAttr -l on -k on ".w0";
createNode scaleConstraint -n "weight_CRV_scaleConstraint1" -p "weight_CRV";
	rename -uid "23DAC36E-4866-D78A-61B6-5F8FA6637DF7";
	addAttr -ci true -k true -sn "w0" -ln "master_ctrl_weight_CRV_SGRPW0" -dv 1 -min 
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
	setAttr -l on ".o";
	setAttr -l on ".ox";
	setAttr -l on ".oy";
	setAttr -l on ".oz";
	setAttr -l on -k on ".w0";
createNode transform -n "boom2Crv_2_CLS_GRP" -p "Crv_GRP";
	rename -uid "736B9DDE-462F-EB8B-51BF-C3A0DA48853E";
	setAttr -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 1.3461454173580023e-15 9.8816154239305369 0 ;
	setAttr ".sp" -type "double3" 1.3461454173580023e-15 9.8816154239305369 0 ;
createNode transform -n "boom2Crv_2_CLS" -p "boom2Crv_2_CLS_GRP";
	rename -uid "914861D6-4A05-4D0D-1F22-87B9C983D6E9";
	setAttr -k off ".v" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.3461454173580023e-15 9.8816154239305369 0 ;
	setAttr ".sp" -type "double3" 1.3461454173580023e-15 9.8816154239305369 0 ;
createNode clusterHandle -n "boom2Crv_2_CLSShape" -p "boom2Crv_2_CLS";
	rename -uid "99BD1AC5-4726-2340-9E08-6A880F607C47";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1.3461454173580023e-15 9.8816154239305369 0 ;
createNode pointConstraint -n "boom2Crv_2_CLS_GRP_pointConstraint1" -p "boom2Crv_2_CLS_GRP";
	rename -uid "111E1EA2-422E-0546-E94C-BFB3A7DA6375";
	addAttr -ci true -k true -sn "w0" -ln "dolly_2_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr -l on ".o";
	setAttr -l on ".ox";
	setAttr -l on ".oy";
	setAttr -l on ".oz";
	setAttr ".rst" -type "double3" -1.3461454173580019e-15 0.11838457606946484 0 ;
	setAttr -l on -k on ".w0";
createNode scaleConstraint -n "boom2Crv_2_CLS_GRP_scaleConstraint1" -p "boom2Crv_2_CLS_GRP";
	rename -uid "C46E535D-45DB-BEEE-FDA5-52BFECBE74E0";
	addAttr -ci true -k true -sn "w0" -ln "master_ctrl_boom2Crv_2_CLS_GRP_SGRPW0" -dv 
		1 -min 0 -at "double";
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
	setAttr -l on ".o";
	setAttr -l on ".ox";
	setAttr -l on ".oy";
	setAttr -l on ".oz";
	setAttr -l on -k on ".w0";
createNode transform -n "railCrv_GRP" -p "Crv_GRP";
	rename -uid "5319CFAD-46B7-F8C9-46A6-EDB37AE33680";
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
createNode transform -n "rail_CRV" -p "railCrv_GRP";
	rename -uid "9E1164C2-4981-5194-529A-E79A4246A3BD";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode nurbsCurve -n "rail_CRVShape" -p "rail_CRV";
	rename -uid "909C3BD3-4FDF-A5E6-075C-7DA515AEE253";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-32 -3.2112695072372299e-16
		-0.78361162489122449 -4.7982373409884694e-17 0.78361162489122405
		-3.3392053635905195e-16 -6.7857323231109146e-17 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-32 5.9521325992805852e-16
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		;
createNode parentConstraint -n "railCrv_GRP_parentConstraint1" -p "railCrv_GRP";
	rename -uid "904D6E47-4C7A-F9A3-6FB8-038FB26FADC4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "master_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
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
	setAttr -k on ".w0";
createNode scaleConstraint -n "railCrv_GRP_scaleConstraint1" -p "railCrv_GRP";
	rename -uid "9C1A7094-4193-38E8-E832-808BB80CA7B9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "master_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
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
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "0EEA10C1-4426-722C-D0B1-9DB2930E9C6F";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "72F1BB68-49DD-D722-261B-2C9E19F34469";
createNode displayLayer -n "defaultLayer";
	rename -uid "3336CD89-416E-9395-2B8C-79A82545EFBC";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0D2783F3-4945-8C37-A500-7C877CB6DFC7";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4105C337-469F-DB1B-91B1-CEA82AA858A6";
	setAttr ".g" yes;
createNode unitConversion -n "unitConversion1";
	rename -uid "CD78385E-432C-77B9-11EF-71A242BDE347";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion2";
	rename -uid "C35476E7-4A70-9759-07E4-FDA8C1942B3A";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion3";
	rename -uid "C288DC5C-4050-F73F-3020-788F4A77DCA1";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion4";
	rename -uid "8023BD7E-4F29-3379-EA52-CC9F2D821E20";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion5";
	rename -uid "C388244C-4913-E6A7-6620-57ACEBF987BB";
	setAttr ".cf" 0.017453292519943295;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "064640D6-4067-6431-49B6-6697C5797DA4";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"mwCam\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 418\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 417\n            -height 333\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 418\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 842\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n"
		+ "                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"multiListerPanel\" (localizedPanelLabel(\"Multilister\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"devicePanel\" (localizedPanelLabel(\"Devices\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tdevicePanel -edit -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"pgYetiGraphPanelType\" (localizedPanelLabel(\"Yeti - Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Yeti - Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 842\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 842\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F0A9CB16-4BCD-480B-9425-2DA3DCD3A0AC";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 100 -ast 1 -aet 100 ";
	setAttr ".st" 6;
createNode unitConversion -n "unitConversion6";
	rename -uid "AF0BE3AC-4DA7-16B3-31F7-6FA0373AB047";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion7";
	rename -uid "3B67DF14-489E-B365-50C2-F58CE178515F";
	setAttr ".cf" 0.017453292519943295;
createNode animCurveUU -n "camAim_ctrl_INH_pointConstraint1_dolly_3_JNTW0";
	rename -uid "5C6EA12B-4F24-1EA1-9AE6-76800C6DCB98";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode cluster -n "boom2Crv_2_CLS1Cluster";
	rename -uid "7A3F1DE3-4301-4D06-77C1-178CB6846755";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ait" 0;
createNode tweak -n "tweak1";
	rename -uid "4F373D79-418F-E101-CCCA-7C8FEE06C31B";
createNode objectSet -n "cluster1Set";
	rename -uid "61CF8F58-4AEA-F344-7C36-F7B09D18A564";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster1GroupId";
	rename -uid "8E7C8B67-4F6B-6A2B-4086-E681AD2E1DF9";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster1GroupParts";
	rename -uid "F6713DF5-4B3B-B5BA-F4BE-34BE725CED6B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "cv[0]" "cv[3:5]" "cv[12:15]";
createNode objectSet -n "tweakSet1";
	rename -uid "1B7D0BB3-400F-9BB1-39D6-12AB110C2FE1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "AD969762-497F-8B07-7BDF-179B58DFCBE0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "1C288D0E-42F2-492B-2E01-9CA0A8EF0170";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "boom2Crv_1_CLS1Cluster";
	rename -uid "9CD3A2D1-4E4B-72F5-C9A5-808982801A9C";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "cluster2Set";
	rename -uid "E5C79260-48BD-6CDF-6A0F-9C9DCD7416A3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster2GroupId";
	rename -uid "38E8441E-41AB-8A2C-95DF-A18067ACC6FF";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster2GroupParts";
	rename -uid "28891206-4D05-9653-3BB8-1BAD9A0C7F79";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "cv[1:2]" "cv[6:11]";
createNode cluster -n "boom2Crv_2_CLSCluster";
	rename -uid "F94CDF02-49A0-D04D-6A1F-09814FC06309";
	setAttr ".gm[0]" -type "matrix" 1.0000000000000002 0 0 0 0 1.0000000000000002 0 0
		 0 0 1 0 1.5668977075724193e-15 0 0 1;
	setAttr ".ait" 0;
createNode tweak -n "tweak2";
	rename -uid "437D1C0A-4397-1C29-6B38-28BCB70D9E07";
createNode objectSet -n "cluster3Set";
	rename -uid "26093C75-45F6-E265-F79D-02931817BE38";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster3GroupId";
	rename -uid "4936029C-412D-8884-4D26-63AF2215A645";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster3GroupParts";
	rename -uid "18E3FFB1-4A1D-B260-6749-69B906019D0D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "cv[0]" "cv[3:5]" "cv[12:15]";
createNode objectSet -n "tweakSet2";
	rename -uid "FA8769EC-4099-EFAE-7B8A-8B9804F5F0CC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "BCD10AFA-4F9F-BB46-9260-A3B0EAC7DD8E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "5A9FED17-42E9-F010-7F7B-42A6BE5A5A55";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "boom2Crv_1_CLSCluster";
	rename -uid "24A8085F-484C-5A98-E1DE-EB8BD05BCBD0";
	setAttr ".gm[0]" -type "matrix" 1.0000000000000002 0 0 0 0 1.0000000000000002 0 0
		 0 0 1 0 1.5668977075724193e-15 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "cluster4Set";
	rename -uid "291257E7-402A-1F53-D92B-E5897EB38D9B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster4GroupId";
	rename -uid "D64CA174-4612-8A6D-48DB-94899B4E42B9";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster4GroupParts";
	rename -uid "5826948B-4A0C-02CB-D25A-2F9444119013";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "cv[1:2]" "cv[6:11]";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0FEA91DC-425A-B596-684B-85BB664C5007";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "F672050E-4D03-CC62-A521-8B9868615939";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "6759D846-4A4A-5624-58B7-3FA6ED81C745";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -622.61902287839052 -389.28569881689037 ;
	setAttr ".tgi[0].vh" -type "double2" 592.85711929911758 407.14284096445425 ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "635B9014-44CD-63AA-8D55-1C90A7FCF305";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -611.90473758985229 -240.47618092052559 ;
	setAttr ".tgi[0].vh" -type "double2" 611.90473758985229 240.47618092052559 ;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".vac" 2;
	setAttr ".etmr" no;
	setAttr ".tmr" 4096;
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
connectAttr "master_ctrl.uniformScale" "master_ctrl.sx" -l on;
connectAttr "master_ctrl.uniformScale" "master_ctrl.sy" -l on;
connectAttr "master_ctrl.uniformScale" "master_ctrl.sz" -l on;
connectAttr "unitConversion7.o" "dollyCtrlRot_GRP.ry" -l on;
connectAttr "dollyCam_ctrl.circleRadius" "dollyCtrl_INH.tx" -l on;
connectAttr "dollyCam_ctrl.uniformScale" "dollyCam_ctrl.sx" -l on;
connectAttr "dollyCam_ctrl.uniformScale" "dollyCam_ctrl.sy" -l on;
connectAttr "dollyCam_ctrl.uniformScale" "dollyCam_ctrl.sz" -l on;
connectAttr "dollyCam_ctrl.graphicalCamCurves" "dollyCam_ctrlShape4.lodv";
connectAttr "dollyCam_ctrl.graphicalCamCurves" "dollyCam_ctrlShape5.lodv";
connectAttr "dollyCam_ctrl.graphicalCamCurves" "dollyCam_ctrlShape6.lodv";
connectAttr "dollyCam_ctrl.graphicalCamCurves" "dollyCam_ctrlShape7.lodv";
connectAttr "dollyCam_ctrl.graphicalCamCurves" "dollyCam_ctrlShape8.lodv";
connectAttr "dollyCam_ctrl.graphicalCamCurves" "dollyCam_ctrlShape9.lodv";
connectAttr "dollyCam_ctrl.graphicalCamCurves" "dollyCam_ctrlShape10.lodv";
connectAttr "dollyCam_ctrl.graphicalCamCurves" "dollyCam_ctrlShape11.lodv";
connectAttr "dollyCam_ctrl.graphicalCamCurves" "dollyCam_ctrlShape12.lodv";
connectAttr "dollyCam_ctrl.graphicalCamCurves" "dollyCam_ctrlShape13.lodv";
connectAttr "dollyCam_ctrl.graphicalCamCurves" "dollyCam_ctrlShape14.lodv";
connectAttr "dollyCam_ctrl.graphicalCamCurves" "dollyCam_ctrlShape15.lodv";
connectAttr "dollyCam_ctrl.graphicalCamCurves" "dollyCam_ctrlShape16.lodv";
connectAttr "dollyCam_ctrl.aim" "camAim_ctrl_INH.v";
connectAttr "camAim_ctrl_INH_pointConstraint1.ctx" "camAim_ctrl_INH.tx" -l on;
connectAttr "camAim_ctrl_INH_pointConstraint1.cty" "camAim_ctrl_INH.ty" -l on;
connectAttr "camAim_ctrl_INH_pointConstraint1.ctz" "camAim_ctrl_INH.tz" -l on;
connectAttr "camAim_ctrl_INH_scaleConstraint1.csx" "camAim_ctrl_INH.sx" -l on;
connectAttr "camAim_ctrl_INH_scaleConstraint1.csy" "camAim_ctrl_INH.sy" -l on;
connectAttr "camAim_ctrl_INH_scaleConstraint1.csz" "camAim_ctrl_INH.sz" -l on;
connectAttr "camAim_ctrl_INH.pim" "camAim_ctrl_INH_pointConstraint1.cpim";
connectAttr "camAim_ctrl_INH.rp" "camAim_ctrl_INH_pointConstraint1.crp";
connectAttr "camAim_ctrl_INH.rpt" "camAim_ctrl_INH_pointConstraint1.crt";
connectAttr "dolly_3_JNT.t" "camAim_ctrl_INH_pointConstraint1.tg[0].tt";
connectAttr "dolly_3_JNT.rp" "camAim_ctrl_INH_pointConstraint1.tg[0].trp";
connectAttr "dolly_3_JNT.rpt" "camAim_ctrl_INH_pointConstraint1.tg[0].trt";
connectAttr "dolly_3_JNT.pm" "camAim_ctrl_INH_pointConstraint1.tg[0].tpm";
connectAttr "camAim_ctrl_INH_pointConstraint1.w0" "camAim_ctrl_INH_pointConstraint1.tg[0].tw"
		;
connectAttr "camAim_ctrl_INH_pointConstraint1_dolly_3_JNTW0.o" "camAim_ctrl_INH_pointConstraint1.w0"
		 -l on;
connectAttr "camAim_ctrl_INH.pim" "camAim_ctrl_INH_scaleConstraint1.cpim";
connectAttr "master_ctrl_camAim_ctrl_INH_SGRP.s" "camAim_ctrl_INH_scaleConstraint1.tg[0].ts"
		;
connectAttr "master_ctrl_camAim_ctrl_INH_SGRP.pm" "camAim_ctrl_INH_scaleConstraint1.tg[0].tpm"
		;
connectAttr "camAim_ctrl_INH_scaleConstraint1.w0" "camAim_ctrl_INH_scaleConstraint1.tg[0].tw"
		;
connectAttr "mwCam_grp.Joints" "camJnts_grp.v";
connectAttr "dollyJnt_GRP_parentConstraint1.ctx" "dollyJnt_GRP.tx" -l on;
connectAttr "dollyJnt_GRP_parentConstraint1.cty" "dollyJnt_GRP.ty" -l on;
connectAttr "dollyJnt_GRP_parentConstraint1.ctz" "dollyJnt_GRP.tz" -l on;
connectAttr "dollyJnt_GRP_parentConstraint1.crx" "dollyJnt_GRP.rx" -l on;
connectAttr "dollyJnt_GRP_parentConstraint1.cry" "dollyJnt_GRP.ry" -l on;
connectAttr "dollyJnt_GRP_parentConstraint1.crz" "dollyJnt_GRP.rz" -l on;
connectAttr "dollyJnt_GRP_scaleConstraint1.csx" "dollyJnt_GRP.sx" -l on;
connectAttr "dollyJnt_GRP_scaleConstraint1.csy" "dollyJnt_GRP.sy" -l on;
connectAttr "dollyJnt_GRP_scaleConstraint1.csz" "dollyJnt_GRP.sz" -l on;
connectAttr "dollyCam_ctrl.height" "dolly_2_JNT.tx" -l on;
connectAttr "unitConversion1.o" "dolly_2_JNT.ry" -l on;
connectAttr "unitConversion2.o" "dolly_2_JNT.rz" -l on;
connectAttr "dolly_1_JNT.s" "dolly_2_JNT.is";
connectAttr "dollyCam_ctrl.length" "dolly_3_JNT.tx";
connectAttr "dolly_2_JNT.s" "dolly_3_JNT.is";
connectAttr "dollyJnt_GRP.ro" "dollyJnt_GRP_parentConstraint1.cro";
connectAttr "dollyJnt_GRP.pim" "dollyJnt_GRP_parentConstraint1.cpim";
connectAttr "dollyJnt_GRP.rp" "dollyJnt_GRP_parentConstraint1.crp";
connectAttr "dollyJnt_GRP.rpt" "dollyJnt_GRP_parentConstraint1.crt";
connectAttr "master_ctrl_dollyJnt_GRP_PGRP.t" "dollyJnt_GRP_parentConstraint1.tg[0].tt"
		;
connectAttr "master_ctrl_dollyJnt_GRP_PGRP.rp" "dollyJnt_GRP_parentConstraint1.tg[0].trp"
		;
connectAttr "master_ctrl_dollyJnt_GRP_PGRP.rpt" "dollyJnt_GRP_parentConstraint1.tg[0].trt"
		;
connectAttr "master_ctrl_dollyJnt_GRP_PGRP.r" "dollyJnt_GRP_parentConstraint1.tg[0].tr"
		;
connectAttr "master_ctrl_dollyJnt_GRP_PGRP.ro" "dollyJnt_GRP_parentConstraint1.tg[0].tro"
		;
connectAttr "master_ctrl_dollyJnt_GRP_PGRP.s" "dollyJnt_GRP_parentConstraint1.tg[0].ts"
		;
connectAttr "master_ctrl_dollyJnt_GRP_PGRP.pm" "dollyJnt_GRP_parentConstraint1.tg[0].tpm"
		;
connectAttr "dollyJnt_GRP_parentConstraint1.w0" "dollyJnt_GRP_parentConstraint1.tg[0].tw"
		;
connectAttr "dollyJnt_GRP.pim" "dollyJnt_GRP_scaleConstraint1.cpim";
connectAttr "master_ctrl_dollyJnt_GRP_SGRP.s" "dollyJnt_GRP_scaleConstraint1.tg[0].ts"
		;
connectAttr "master_ctrl_dollyJnt_GRP_SGRP.pm" "dollyJnt_GRP_scaleConstraint1.tg[0].tpm"
		;
connectAttr "dollyJnt_GRP_scaleConstraint1.w0" "dollyJnt_GRP_scaleConstraint1.tg[0].tw"
		;
connectAttr "dollyCam_GRP_pointConstraint1.ctx" "dollyCam_GRP.tx" -l on;
connectAttr "dollyCam_GRP_pointConstraint1.cty" "dollyCam_GRP.ty" -l on;
connectAttr "dollyCam_GRP_pointConstraint1.ctz" "dollyCam_GRP.tz" -l on;
connectAttr "dollyCam_GRP_scaleConstraint1.csx" "dollyCam_GRP.sx" -l on;
connectAttr "dollyCam_GRP_scaleConstraint1.csy" "dollyCam_GRP.sy" -l on;
connectAttr "dollyCam_GRP_scaleConstraint1.csz" "dollyCam_GRP.sz" -l on;
connectAttr "dollyCam_GRP.pim" "dollyCam_GRP_pointConstraint1.cpim";
connectAttr "dollyCam_GRP.rp" "dollyCam_GRP_pointConstraint1.crp";
connectAttr "dollyCam_GRP.rpt" "dollyCam_GRP_pointConstraint1.crt";
connectAttr "dolly_3_JNT_dollyCam_GRP_PGRP.t" "dollyCam_GRP_pointConstraint1.tg[0].tt"
		;
connectAttr "dolly_3_JNT_dollyCam_GRP_PGRP.rp" "dollyCam_GRP_pointConstraint1.tg[0].trp"
		;
connectAttr "dolly_3_JNT_dollyCam_GRP_PGRP.rpt" "dollyCam_GRP_pointConstraint1.tg[0].trt"
		;
connectAttr "dolly_3_JNT_dollyCam_GRP_PGRP.pm" "dollyCam_GRP_pointConstraint1.tg[0].tpm"
		;
connectAttr "dollyCam_GRP_pointConstraint1.w0" "dollyCam_GRP_pointConstraint1.tg[0].tw"
		;
connectAttr "dollyCamAim_INH_aimConstraint1.crx" "dollyCamAim_INH.rx" -l on;
connectAttr "dollyCamAim_INH_aimConstraint1.cry" "dollyCamAim_INH.ry" -l on;
connectAttr "dollyCamAim_INH_aimConstraint1.crz" "dollyCamAim_INH.rz" -l on;
connectAttr "unitConversion3.o" "mwCam.ry" -l on;
connectAttr "unitConversion4.o" "mwCam.rz" -l on;
connectAttr "unitConversion5.o" "mwCam.rx" -l on;
connectAttr "dollyCam_ctrl.graphicalCamCurves" "mwCam.lodv";
connectAttr "dollyCam_ctrl.focalLength" "mwCamShape.fl";
connectAttr "dollyCamAim_INH.pim" "dollyCamAim_INH_aimConstraint1.cpim";
connectAttr "dollyCamAim_INH.t" "dollyCamAim_INH_aimConstraint1.ct";
connectAttr "dollyCamAim_INH.rp" "dollyCamAim_INH_aimConstraint1.crp";
connectAttr "dollyCamAim_INH.rpt" "dollyCamAim_INH_aimConstraint1.crt";
connectAttr "dollyCamAim_INH.ro" "dollyCamAim_INH_aimConstraint1.cro";
connectAttr "camAim_LOC.t" "dollyCamAim_INH_aimConstraint1.tg[0].tt";
connectAttr "camAim_LOC.rp" "dollyCamAim_INH_aimConstraint1.tg[0].trp";
connectAttr "camAim_LOC.rpt" "dollyCamAim_INH_aimConstraint1.tg[0].trt";
connectAttr "camAim_LOC.pm" "dollyCamAim_INH_aimConstraint1.tg[0].tpm";
connectAttr "dollyCamAim_INH_aimConstraint1.w0" "dollyCamAim_INH_aimConstraint1.tg[0].tw"
		;
connectAttr "dollyCam_GRP.pim" "dollyCam_GRP_scaleConstraint1.cpim";
connectAttr "master_ctrl_dollyCam_GRP_SGRP.s" "dollyCam_GRP_scaleConstraint1.tg[0].ts"
		;
connectAttr "master_ctrl_dollyCam_GRP_SGRP.pm" "dollyCam_GRP_scaleConstraint1.tg[0].tpm"
		;
connectAttr "dollyCam_GRP_scaleConstraint1.w0" "dollyCam_GRP_scaleConstraint1.tg[0].tw"
		;
connectAttr "camAimLoc_GRP_parentConstraint1.ctx" "camAimLoc_GRP.tx" -l on;
connectAttr "camAimLoc_GRP_parentConstraint1.cty" "camAimLoc_GRP.ty" -l on;
connectAttr "camAimLoc_GRP_parentConstraint1.ctz" "camAimLoc_GRP.tz" -l on;
connectAttr "camAimLoc_GRP_parentConstraint1.crx" "camAimLoc_GRP.rx" -l on;
connectAttr "camAimLoc_GRP_parentConstraint1.cry" "camAimLoc_GRP.ry" -l on;
connectAttr "camAimLoc_GRP_parentConstraint1.crz" "camAimLoc_GRP.rz" -l on;
connectAttr "camAimLoc_GRP_scaleConstraint1.csx" "camAimLoc_GRP.sx" -l on;
connectAttr "camAimLoc_GRP_scaleConstraint1.csy" "camAimLoc_GRP.sy" -l on;
connectAttr "camAimLoc_GRP_scaleConstraint1.csz" "camAimLoc_GRP.sz" -l on;
connectAttr "camAimLoc_GRP.ro" "camAimLoc_GRP_parentConstraint1.cro";
connectAttr "camAimLoc_GRP.pim" "camAimLoc_GRP_parentConstraint1.cpim";
connectAttr "camAimLoc_GRP.rp" "camAimLoc_GRP_parentConstraint1.crp";
connectAttr "camAimLoc_GRP.rpt" "camAimLoc_GRP_parentConstraint1.crt";
connectAttr "camAim_ctrl_camAimLoc_GRP_PGRP.t" "camAimLoc_GRP_parentConstraint1.tg[0].tt"
		;
connectAttr "camAim_ctrl_camAimLoc_GRP_PGRP.rp" "camAimLoc_GRP_parentConstraint1.tg[0].trp"
		;
connectAttr "camAim_ctrl_camAimLoc_GRP_PGRP.rpt" "camAimLoc_GRP_parentConstraint1.tg[0].trt"
		;
connectAttr "camAim_ctrl_camAimLoc_GRP_PGRP.r" "camAimLoc_GRP_parentConstraint1.tg[0].tr"
		;
connectAttr "camAim_ctrl_camAimLoc_GRP_PGRP.ro" "camAimLoc_GRP_parentConstraint1.tg[0].tro"
		;
connectAttr "camAim_ctrl_camAimLoc_GRP_PGRP.s" "camAimLoc_GRP_parentConstraint1.tg[0].ts"
		;
connectAttr "camAim_ctrl_camAimLoc_GRP_PGRP.pm" "camAimLoc_GRP_parentConstraint1.tg[0].tpm"
		;
connectAttr "camAimLoc_GRP_parentConstraint1.w0" "camAimLoc_GRP_parentConstraint1.tg[0].tw"
		;
connectAttr "camAimLoc_GRP.pim" "camAimLoc_GRP_scaleConstraint1.cpim";
connectAttr "master_ctrl_camAimLoc_GRP_SGRP.s" "camAimLoc_GRP_scaleConstraint1.tg[0].ts"
		;
connectAttr "master_ctrl_camAimLoc_GRP_SGRP.pm" "camAimLoc_GRP_scaleConstraint1.tg[0].tpm"
		;
connectAttr "camAimLoc_GRP_scaleConstraint1.w0" "camAimLoc_GRP_scaleConstraint1.tg[0].tw"
		;
connectAttr "dollyCam_ctrl.graphicalCamCurves" "boom2_CRV.lodv";
connectAttr "boom2Crv_1_CLS1Cluster.og[0]" "boom2_CRVShape.cr";
connectAttr "tweak1.pl[0].cp[0]" "boom2_CRVShape.twl";
connectAttr "cluster1GroupId.id" "boom2_CRVShape.iog.og[7].gid";
connectAttr "cluster1Set.mwc" "boom2_CRVShape.iog.og[7].gco";
connectAttr "groupId2.id" "boom2_CRVShape.iog.og[8].gid";
connectAttr "tweakSet1.mwc" "boom2_CRVShape.iog.og[8].gco";
connectAttr "cluster2GroupId.id" "boom2_CRVShape.iog.og[9].gid";
connectAttr "cluster2Set.mwc" "boom2_CRVShape.iog.og[9].gco";
connectAttr "dollyCam_ctrl.graphicalCamCurves" "boom1_CRV.lodv";
connectAttr "boom2Crv_1_CLSCluster.og[0]" "boom1_CRVShape.cr";
connectAttr "tweak2.pl[0].cp[0]" "boom1_CRVShape.twl";
connectAttr "cluster3GroupId.id" "boom1_CRVShape.iog.og[8].gid";
connectAttr "cluster3Set.mwc" "boom1_CRVShape.iog.og[8].gco";
connectAttr "groupId4.id" "boom1_CRVShape.iog.og[9].gid";
connectAttr "tweakSet2.mwc" "boom1_CRVShape.iog.og[9].gco";
connectAttr "cluster4GroupId.id" "boom1_CRVShape.iog.og[10].gid";
connectAttr "cluster4Set.mwc" "boom1_CRVShape.iog.og[10].gco";
connectAttr "weight_CRV_parentConstraint1.ctx" "weight_CRV.tx" -l on;
connectAttr "weight_CRV_parentConstraint1.cty" "weight_CRV.ty" -l on;
connectAttr "weight_CRV_parentConstraint1.ctz" "weight_CRV.tz" -l on;
connectAttr "weight_CRV_parentConstraint1.crx" "weight_CRV.rx" -l on;
connectAttr "weight_CRV_parentConstraint1.cry" "weight_CRV.ry" -l on;
connectAttr "weight_CRV_parentConstraint1.crz" "weight_CRV.rz" -l on;
connectAttr "weight_CRV_scaleConstraint1.csx" "weight_CRV.sx" -l on;
connectAttr "weight_CRV_scaleConstraint1.csy" "weight_CRV.sy" -l on;
connectAttr "weight_CRV_scaleConstraint1.csz" "weight_CRV.sz" -l on;
connectAttr "dollyCam_ctrl.graphicalCamCurves" "weight_CRV.lodv";
connectAttr "weight_CRV.ro" "weight_CRV_parentConstraint1.cro";
connectAttr "weight_CRV.pim" "weight_CRV_parentConstraint1.cpim";
connectAttr "weight_CRV.rp" "weight_CRV_parentConstraint1.crp";
connectAttr "weight_CRV.rpt" "weight_CRV_parentConstraint1.crt";
connectAttr "dolly_2_JNT.t" "weight_CRV_parentConstraint1.tg[0].tt";
connectAttr "dolly_2_JNT.rp" "weight_CRV_parentConstraint1.tg[0].trp";
connectAttr "dolly_2_JNT.rpt" "weight_CRV_parentConstraint1.tg[0].trt";
connectAttr "dolly_2_JNT.r" "weight_CRV_parentConstraint1.tg[0].tr";
connectAttr "dolly_2_JNT.ro" "weight_CRV_parentConstraint1.tg[0].tro";
connectAttr "dolly_2_JNT.s" "weight_CRV_parentConstraint1.tg[0].ts";
connectAttr "dolly_2_JNT.pm" "weight_CRV_parentConstraint1.tg[0].tpm";
connectAttr "dolly_2_JNT.jo" "weight_CRV_parentConstraint1.tg[0].tjo";
connectAttr "weight_CRV_parentConstraint1.w0" "weight_CRV_parentConstraint1.tg[0].tw"
		;
connectAttr "weight_CRV.pim" "weight_CRV_scaleConstraint1.cpim";
connectAttr "master_ctrl_weight_CRV_SGRP.s" "weight_CRV_scaleConstraint1.tg[0].ts"
		;
connectAttr "master_ctrl_weight_CRV_SGRP.pm" "weight_CRV_scaleConstraint1.tg[0].tpm"
		;
connectAttr "weight_CRV_scaleConstraint1.w0" "weight_CRV_scaleConstraint1.tg[0].tw"
		;
connectAttr "boom2Crv_2_CLS_GRP_pointConstraint1.ctx" "boom2Crv_2_CLS_GRP.tx" -l
		 on;
connectAttr "boom2Crv_2_CLS_GRP_pointConstraint1.cty" "boom2Crv_2_CLS_GRP.ty" -l
		 on;
connectAttr "boom2Crv_2_CLS_GRP_pointConstraint1.ctz" "boom2Crv_2_CLS_GRP.tz" -l
		 on;
connectAttr "boom2Crv_2_CLS_GRP_scaleConstraint1.csx" "boom2Crv_2_CLS_GRP.sx" -l
		 on;
connectAttr "boom2Crv_2_CLS_GRP_scaleConstraint1.csy" "boom2Crv_2_CLS_GRP.sy" -l
		 on;
connectAttr "boom2Crv_2_CLS_GRP_scaleConstraint1.csz" "boom2Crv_2_CLS_GRP.sz" -l
		 on;
connectAttr "boom2Crv_2_CLS_GRP.pim" "boom2Crv_2_CLS_GRP_pointConstraint1.cpim";
connectAttr "boom2Crv_2_CLS_GRP.rp" "boom2Crv_2_CLS_GRP_pointConstraint1.crp";
connectAttr "boom2Crv_2_CLS_GRP.rpt" "boom2Crv_2_CLS_GRP_pointConstraint1.crt";
connectAttr "dolly_2_JNT.t" "boom2Crv_2_CLS_GRP_pointConstraint1.tg[0].tt";
connectAttr "dolly_2_JNT.rp" "boom2Crv_2_CLS_GRP_pointConstraint1.tg[0].trp";
connectAttr "dolly_2_JNT.rpt" "boom2Crv_2_CLS_GRP_pointConstraint1.tg[0].trt";
connectAttr "dolly_2_JNT.pm" "boom2Crv_2_CLS_GRP_pointConstraint1.tg[0].tpm";
connectAttr "boom2Crv_2_CLS_GRP_pointConstraint1.w0" "boom2Crv_2_CLS_GRP_pointConstraint1.tg[0].tw"
		;
connectAttr "boom2Crv_2_CLS_GRP.pim" "boom2Crv_2_CLS_GRP_scaleConstraint1.cpim";
connectAttr "master_ctrl_boom2Crv_2_CLS_GRP_SGRP.s" "boom2Crv_2_CLS_GRP_scaleConstraint1.tg[0].ts"
		;
connectAttr "master_ctrl_boom2Crv_2_CLS_GRP_SGRP.pm" "boom2Crv_2_CLS_GRP_scaleConstraint1.tg[0].tpm"
		;
connectAttr "boom2Crv_2_CLS_GRP_scaleConstraint1.w0" "boom2Crv_2_CLS_GRP_scaleConstraint1.tg[0].tw"
		;
connectAttr "dollyCam_ctrl.rail" "railCrv_GRP.v";
connectAttr "railCrv_GRP_parentConstraint1.ctx" "railCrv_GRP.tx";
connectAttr "railCrv_GRP_parentConstraint1.cty" "railCrv_GRP.ty";
connectAttr "railCrv_GRP_parentConstraint1.ctz" "railCrv_GRP.tz";
connectAttr "railCrv_GRP_parentConstraint1.crx" "railCrv_GRP.rx";
connectAttr "railCrv_GRP_parentConstraint1.cry" "railCrv_GRP.ry";
connectAttr "railCrv_GRP_parentConstraint1.crz" "railCrv_GRP.rz";
connectAttr "railCrv_GRP_scaleConstraint1.csx" "railCrv_GRP.sx";
connectAttr "railCrv_GRP_scaleConstraint1.csy" "railCrv_GRP.sy";
connectAttr "railCrv_GRP_scaleConstraint1.csz" "railCrv_GRP.sz";
connectAttr "dollyCam_ctrl.circleRadius" "rail_CRV.sx" -l on;
connectAttr "dollyCam_ctrl.circleRadius" "rail_CRV.sy" -l on;
connectAttr "dollyCam_ctrl.circleRadius" "rail_CRV.sz" -l on;
connectAttr "railCrv_GRP.ro" "railCrv_GRP_parentConstraint1.cro";
connectAttr "railCrv_GRP.pim" "railCrv_GRP_parentConstraint1.cpim";
connectAttr "railCrv_GRP.rp" "railCrv_GRP_parentConstraint1.crp";
connectAttr "railCrv_GRP.rpt" "railCrv_GRP_parentConstraint1.crt";
connectAttr "master_ctrl.t" "railCrv_GRP_parentConstraint1.tg[0].tt";
connectAttr "master_ctrl.rp" "railCrv_GRP_parentConstraint1.tg[0].trp";
connectAttr "master_ctrl.rpt" "railCrv_GRP_parentConstraint1.tg[0].trt";
connectAttr "master_ctrl.r" "railCrv_GRP_parentConstraint1.tg[0].tr";
connectAttr "master_ctrl.ro" "railCrv_GRP_parentConstraint1.tg[0].tro";
connectAttr "master_ctrl.s" "railCrv_GRP_parentConstraint1.tg[0].ts";
connectAttr "master_ctrl.pm" "railCrv_GRP_parentConstraint1.tg[0].tpm";
connectAttr "railCrv_GRP_parentConstraint1.w0" "railCrv_GRP_parentConstraint1.tg[0].tw"
		;
connectAttr "railCrv_GRP.pim" "railCrv_GRP_scaleConstraint1.cpim";
connectAttr "master_ctrl.s" "railCrv_GRP_scaleConstraint1.tg[0].ts";
connectAttr "master_ctrl.pm" "railCrv_GRP_scaleConstraint1.tg[0].tpm";
connectAttr "railCrv_GRP_scaleConstraint1.w0" "railCrv_GRP_scaleConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "dollyCam_ctrl.boomPan" "unitConversion1.i";
connectAttr "dollyCam_ctrl.boomTilt" "unitConversion2.i";
connectAttr "dollyCam_ctrl.camPan" "unitConversion3.i";
connectAttr "dollyCam_ctrl.camTwist" "unitConversion4.i";
connectAttr "dollyCam_ctrl.camTilt" "unitConversion5.i";
connectAttr "dollyCam_ctrl.circleRadius" "unitConversion6.i";
connectAttr "dollyCam_ctrl.dollyMove" "unitConversion7.i";
connectAttr "dollyCam_ctrl.aim" "camAim_ctrl_INH_pointConstraint1_dolly_3_JNTW0.i"
		;
connectAttr "cluster1GroupParts.og" "boom2Crv_2_CLS1Cluster.ip[0].ig";
connectAttr "cluster1GroupId.id" "boom2Crv_2_CLS1Cluster.ip[0].gi";
connectAttr "boom2Crv_2_CLS1.wm" "boom2Crv_2_CLS1Cluster.ma";
connectAttr "boom2Crv_2_CLS1Shape.x" "boom2Crv_2_CLS1Cluster.x";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "cluster1GroupId.msg" "cluster1Set.gn" -na;
connectAttr "boom2_CRVShape.iog.og[7]" "cluster1Set.dsm" -na;
connectAttr "boom2Crv_2_CLS1Cluster.msg" "cluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "cluster1GroupParts.ig";
connectAttr "cluster1GroupId.id" "cluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "boom2_CRVShape.iog.og[8]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "boom2_CRVShapeOrig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "cluster2GroupParts.og" "boom2Crv_1_CLS1Cluster.ip[0].ig";
connectAttr "cluster2GroupId.id" "boom2Crv_1_CLS1Cluster.ip[0].gi";
connectAttr "boom2Crv_1_CLS1.wm" "boom2Crv_1_CLS1Cluster.ma";
connectAttr "boom2Crv_1_CLS1Shape.x" "boom2Crv_1_CLS1Cluster.x";
connectAttr "cluster2GroupId.msg" "cluster2Set.gn" -na;
connectAttr "boom2_CRVShape.iog.og[9]" "cluster2Set.dsm" -na;
connectAttr "boom2Crv_1_CLS1Cluster.msg" "cluster2Set.ub[0]";
connectAttr "boom2Crv_2_CLS1Cluster.og[0]" "cluster2GroupParts.ig";
connectAttr "cluster2GroupId.id" "cluster2GroupParts.gi";
connectAttr "cluster3GroupParts.og" "boom2Crv_2_CLSCluster.ip[0].ig";
connectAttr "cluster3GroupId.id" "boom2Crv_2_CLSCluster.ip[0].gi";
connectAttr "boom2Crv_2_CLS.wm" "boom2Crv_2_CLSCluster.ma";
connectAttr "boom2Crv_2_CLSShape.x" "boom2Crv_2_CLSCluster.x";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "cluster3GroupId.msg" "cluster3Set.gn" -na;
connectAttr "boom1_CRVShape.iog.og[8]" "cluster3Set.dsm" -na;
connectAttr "boom2Crv_2_CLSCluster.msg" "cluster3Set.ub[0]";
connectAttr "tweak2.og[0]" "cluster3GroupParts.ig";
connectAttr "cluster3GroupId.id" "cluster3GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "boom1_CRVShape.iog.og[9]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "boom1_CRVShapeOrig.ws" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "cluster4GroupParts.og" "boom2Crv_1_CLSCluster.ip[0].ig";
connectAttr "cluster4GroupId.id" "boom2Crv_1_CLSCluster.ip[0].gi";
connectAttr "boom2Crv_1_CLS.wm" "boom2Crv_1_CLSCluster.ma";
connectAttr "boom2Crv_1_CLSShape.x" "boom2Crv_1_CLSCluster.x";
connectAttr "cluster4GroupId.msg" "cluster4Set.gn" -na;
connectAttr "boom1_CRVShape.iog.og[10]" "cluster4Set.dsm" -na;
connectAttr "boom2Crv_1_CLSCluster.msg" "cluster4Set.ub[0]";
connectAttr "boom2Crv_2_CLSCluster.og[0]" "cluster4GroupParts.ig";
connectAttr "cluster4GroupId.id" "cluster4GroupParts.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of mwCam_circle.ma

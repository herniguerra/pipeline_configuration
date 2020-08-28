//Maya ASCII 2018ff09 scene
//Name: mwCam_dollyCam.ma
//Last modified: Thu, Aug 20, 2020 06:06:37 PM
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
	rename -uid "1AE0F1EA-46B7-4309-3F95-A5A3CA774EE6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 24.110187296032706 22.102610515057389 37.988590808442474 ;
	setAttr ".r" -type "double3" -26.138352729754782 32.999999999752617 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "FF38FFB7-4F4B-0E1A-E06F-4A8B7018156E";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".fcp" 100000;
	setAttr ".coi" 47.813427550609049;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 0.97295145311140296 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "809E3BD9-47A5-B492-7D6F-939DE102F541";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.14352652533098076 100.1 -0.67183544015472108 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "AE000C0C-4D1A-4B7B-91D8-D388E17282DA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 24.865280294458167;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "B241F865-4677-7B79-D17B-12847C234D74";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.43025747929261704 8.4711154686495789 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E2C4119B-41BA-EF3B-6A8F-1B89BAAD092F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 20.167365741940856;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "13AFAA8D-4625-F74B-59D3-648A8FCAD527";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 7.5706070165676138 0.69724751776076643 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "DB59045D-40B5-10FD-48B1-8AB7B834AA61";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 20.135859146727412;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "mwCam_grp";
	rename -uid "72D2329B-4E57-B4D9-25AD-DA967245B3D1";
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
	rename -uid "071A88EC-4984-3ADE-DFD0-1781C422391A";
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
	rename -uid "623AC58B-472E-8252-9E6D-779F0E3E824C";
	setAttr -k off ".v";
	setAttr ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "master_ctrl" -p "master_ctrl_TOP";
	rename -uid "C5D0B6CD-4304-0C71-FEBB-08AFD316FF4B";
	addAttr -ci true -k true -sn "_____________________________" -ln "_____________________________" 
		-min 0 -max 0 -en "Scale" -at "enum";
	addAttr -ci true -k true -sn "uniformScale" -ln "uniformScale" -dv 1 -min 0.01 -at "float";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ro" 2;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on -k on "._____________________________";
	setAttr -k on ".uniformScale";
	setAttr ".nts" -type "string" "Rig by Joakim Palmkvist\r\nwww.cgjoker.com\r\ncontact me at jocke@cgjoker.com";
createNode nurbsCurve -n "master_ctrlShape" -p "master_ctrl";
	rename -uid "3F960193-4939-13BD-DD81-F39681D19476";
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
createNode transform -n "dollyCam_ctrl" -p "master_ctrl";
	rename -uid "1840A9B2-4753-58BE-ABD3-8F9E47033F4F";
	addAttr -ci true -sn "_____________________________" -ln "_____________________________" 
		-min 0 -max 0 -en "Scale" -at "enum";
	addAttr -ci true -sn "uniformScale" -ln "uniformScale" -dv 1 -min 0.01 -at "float";
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
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "aim" -ln "aim" -min 0 -max 1 -en "off:on" -at "enum";
	addAttr -ci true -k true -sn "_________________________________" -ln "_________________________________" 
		-min 0 -max 0 -en "Curves" -at "enum";
	addAttr -ci true -sn "rail" -ln "rail" -min 0 -max 1 -en "off:on" -at "enum";
	addAttr -ci true -sn "graphicCamCurves" -ln "graphicCamCurves" -min 0 -max 1 -en 
		"off:on" -at "enum";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".ro" 2;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on "._____________________________";
	setAttr -l on ".uniformScale";
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
	setAttr ".aal" -type "attributeAlias" {"dollyMove","translateZ"} ;
	setAttr -k on ".aim";
	setAttr -l on -k on "._________________________________";
	setAttr -k on ".rail" 1;
	setAttr -k on ".graphicCamCurves" 1;
	setAttr ".nts" -type "string" "Rig by Joakim Palmkvist\r\nwww.cgjoker.com\r\ncontact me at jocke@cgjoker.com";
createNode nurbsCurve -n "dollyCam_ctrlShape" -p "dollyCam_ctrl";
	rename -uid "B44653AB-418C-CFE0-342A-2385B0A8EF86";
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
	rename -uid "16757143-47F2-1AD1-9F4E-E284E848F2CB";
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
	rename -uid "AF3B2E5A-4EED-5C59-C35B-119CB8D5CB02";
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
createNode nurbsCurve -n "dollyCam_ctrlShape2" -p "dollyCam_ctrl";
	rename -uid "0F0EE3C1-4AE3-DAE9-BB7A-A4AAC50798B5";
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
createNode nurbsCurve -n "dollyCam_ctrlShape3" -p "dollyCam_ctrl";
	rename -uid "3B40232A-447E-ADB0-A580-3AA92106FC0A";
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
createNode nurbsCurve -n "dollyCam_ctrlShape4" -p "dollyCam_ctrl";
	rename -uid "93850E07-4D3C-45BB-0188-CDB166C919EA";
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
createNode nurbsCurve -n "dollyCam_ctrlShape5" -p "dollyCam_ctrl";
	rename -uid "5F9A11EE-47EA-827F-6EC1-06999571313E";
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
createNode nurbsCurve -n "dollyCam_ctrlShape6" -p "dollyCam_ctrl";
	rename -uid "9DF23935-421C-C028-5EF9-4FB3D1576B7A";
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
createNode nurbsCurve -n "dollyCam_ctrlShape7" -p "dollyCam_ctrl";
	rename -uid "608B7854-4D7B-98C2-D548-129CAE7CD190";
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
createNode nurbsCurve -n "dollyCam_ctrlShape8" -p "dollyCam_ctrl";
	rename -uid "6BCA63E6-4EFA-FC65-324E-A4ACBA12AD38";
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
createNode nurbsCurve -n "dollyCam_ctrlShape9" -p "dollyCam_ctrl";
	rename -uid "834CDBAB-4621-9395-15A4-FEB04BBEB7A5";
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
createNode nurbsCurve -n "dollyCam_ctrlShape10" -p "dollyCam_ctrl";
	rename -uid "2006A648-4A8B-AF26-8858-34B5B19B5BB9";
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
createNode nurbsCurve -n "dollyCam_ctrlShape11" -p "dollyCam_ctrl";
	rename -uid "3E8B1657-4C0B-315E-3857-4D890E2DBE7A";
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
createNode nurbsCurve -n "dollyCam_ctrlShape12" -p "dollyCam_ctrl";
	rename -uid "D6CF9A12-4C40-379E-8BED-B1BADEA2B6A5";
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
createNode nurbsCurve -n "dollyCam_ctrlShape13" -p "dollyCam_ctrl";
	rename -uid "72CF276C-4159-80A0-5D6D-A29C60F88F62";
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
createNode nurbsCurve -n "dollyCam_ctrlShape14" -p "dollyCam_ctrl";
	rename -uid "3FCA3B2B-42B9-DCFD-7988-D6AE691CA9C8";
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
createNode nurbsCurve -n "dollyCam_ctrlShape15" -p "dollyCam_ctrl";
	rename -uid "C5F2EEC3-4E77-E253-6AD6-72AF3D184FE2";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		1.1755959300946777 0 -42.05280972688174
		1.1755959300946777 0 42.05280972688174
		1.6244040699053204 0 42.05280972688174
		1.6244040699053204 0 -42.05280972688174
		1.1755959300946777 0 -42.05280972688174
		;
createNode nurbsCurve -n "dollyCam_ctrlShape16" -p "dollyCam_ctrl";
	rename -uid "D0140255-4298-B5F0-2D4D-3CB268E2620C";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1.6244040699053222 0 -42.05280972688174
		-1.6244040699053222 0 42.05280972688174
		-1.1755959300946794 0 42.05280972688174
		-1.1755959300946794 0 -42.05280972688174
		-1.6244040699053222 0 -42.05280972688174
		;
createNode transform -n "master_ctrl_camAimCtrl_INH_SGRP" -p "master_ctrl";
	rename -uid "13EB84D5-4ED6-B3E2-71EF-259A4A67160C";
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
	setAttr ".rp" -type "double3" 7 9.9999999999999964 -9.2799047707459188 ;
	setAttr ".sp" -type "double3" 7 9.9999999999999964 -9.2799047707459188 ;
createNode transform -n "master_ctrl_dollyJnt_GRP_SGRP" -p "master_ctrl";
	rename -uid "B53A01F5-45E6-DC2E-4C06-4EB04C36D07B";
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
createNode transform -n "master_ctrl_camAimLoc_GRP_SGRP" -p "master_ctrl";
	rename -uid "C595B0C6-46D7-7BD3-6013-9FA62834588A";
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
	setAttr ".rp" -type "double3" 7 9.9999999999999929 -9.2799047707459188 ;
	setAttr ".sp" -type "double3" 7 9.9999999999999929 -9.2799047707459188 ;
createNode transform -n "master_ctrl_dollyCam_GRP_SGRP" -p "master_ctrl";
	rename -uid "99D05B1C-4007-BABF-15F8-5ABE40AB2F78";
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
	setAttr ".rp" -type "double3" 7.0000000000000036 10 0 ;
	setAttr ".sp" -type "double3" 7.0000000000000036 10 0 ;
createNode transform -n "master_ctrl_boom1Crv_2_CLS_GRP_SGRP" -p "master_ctrl";
	rename -uid "2919F216-430C-F3B3-3C94-348499F5F163";
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
	rename -uid "8430DFA9-46FF-3C43-8369-2BA8F81C88C5";
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
createNode transform -n "camAimCtrl_INH" -p "camCtls_grp";
	rename -uid "94066B3E-4C9C-B0F0-0E99-71B61118AB9F";
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
	setAttr ".rp" -type "double3" 7 10 -9.0000000000000071 ;
	setAttr ".sp" -type "double3" 7 10 -9.0000000000000071 ;
createNode transform -n "camAimCtrl_TOP" -p "camAimCtrl_INH";
	rename -uid "37FC98FC-4368-037C-86C5-519A85BC3844";
	setAttr -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7 10 -9.0000000000000071 ;
	setAttr ".sp" -type "double3" 7 10 -9.0000000000000071 ;
createNode transform -n "camAim_ctrl" -p "camAimCtrl_TOP";
	rename -uid "DE3410BA-410D-BAAD-C0AC-13B1EA8DC0F4";
	setAttr -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7 10 -9.0000000000000071 ;
	setAttr ".sp" -type "double3" 7 10 -9.0000000000000071 ;
createNode nurbsCurve -n "camAim_ctrlShape" -p "camAim_ctrl";
	rename -uid "57A0746A-4A4F-F32C-73FC-20BD41416CB9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		6.9999999999999982 9.549350789836561 -9.0000000000000071
		7.4608341518645922 9.0885166379719688 -9.0000000000000071
		7.2304170759322952 9.0885166379719688 -9.0000000000000071
		7.2304170759322952 8.1668483342427827 -9.0000000000000071
		6.7695829240677021 8.1668483342427827 -9.0000000000000071
		6.7695829240677021 9.0885166379719688 -9.0000000000000071
		6.5391658481354051 9.0885166379719688 -9.0000000000000071
		6.9999999999999982 9.549350789836561 -9.0000000000000071
		;
createNode nurbsCurve -n "camAim_ctrlShape1" -p "camAim_ctrl";
	rename -uid "73ED8B02-4C2E-5A08-3F0E-D7A9CA9F0B31";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
createNode nurbsCurve -n "camAim_ctrlShape2" -p "camAim_ctrl";
	rename -uid "F9956BB2-4A5B-E32A-0F41-CB882D1722A3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		7 10.450649210163439 -9.0000000000000071
		6.5391658481354078 10.911483362028031 -9.0000000000000071
		6.7695829240677039 10.911483362028031 -9.0000000000000071
		6.7695829240677039 11.833151665757217 -9.0000000000000071
		7.230417075932297 11.833151665757217 -9.0000000000000071
		7.230417075932297 10.911483362028031 -9.0000000000000071
		7.460834151864594 10.911483362028031 -9.0000000000000071
		7 10.450649210163439 -9.0000000000000071
		;
createNode nurbsCurve -n "camAim_ctrlShape3" -p "camAim_ctrl";
	rename -uid "FFD550CE-4F2B-1DFA-8EF0-719F03DBC175";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		7.4506492101634381 10 -9.0000000000000071
		7.9114833620280312 10.460834151864592 -9.0000000000000071
		7.9114833620280312 10.230417075932296 -9.0000000000000071
		8.8331516657572173 10.230417075932296 -9.0000000000000071
		8.8331516657572173 9.7695829240677039 -9.0000000000000071
		7.9114833620280312 9.7695829240677039 -9.0000000000000071
		7.9114833620280312 9.539165848135406 -9.0000000000000071
		7.4506492101634381 10 -9.0000000000000071
		;
createNode nurbsCurve -n "camAim_ctrlShape4" -p "camAim_ctrl";
	rename -uid "87DCA1CF-462C-278A-B352-C4AC89523E62";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		6.549350789836561 10 -9.0000000000000071
		6.088516637971968 9.5391658481354078 -9.0000000000000071
		6.088516637971968 9.7695829240677039 -9.0000000000000071
		5.1668483342427827 9.7695829240677039 -9.0000000000000071
		5.1668483342427827 10.230417075932298 -9.0000000000000071
		6.088516637971968 10.230417075932296 -9.0000000000000071
		6.088516637971968 10.460834151864594 -9.0000000000000071
		6.549350789836561 10 -9.0000000000000071
		;
createNode transform -n "camAim_ctrl_camAimLoc_GRP_PGRP" -p "camAim_ctrl";
	rename -uid "F1B4662F-4A7C-5D5B-9818-7A8517D6ED04";
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
	setAttr ".rp" -type "double3" 7 10 -9.0000000000000071 ;
	setAttr ".sp" -type "double3" 7 10 -9.0000000000000071 ;
createNode pointConstraint -n "camAimCtrl_INH_pointConstraint1" -p "camAimCtrl_INH";
	rename -uid "9C16A8A1-4D60-C2B0-CC95-4BA05B2B451F";
	addAttr -ci true -k true -sn "w0" -ln "dolly_3_JNT_camAimCtrl_INH_PGRPW0" -dv 1 
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
	setAttr -l on ".o" -type "double3" 8.8817841970012523e-16 -1.7763568394002505e-15 
		0 ;
	setAttr -l on ".o";
	setAttr -l on ".ox";
	setAttr -l on ".oy";
	setAttr -l on ".oz";
	setAttr ".rst" -type "double3" 0 -3.5527136788005009e-15 -0.27990477074591169 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "camAimCtrl_INH_scaleConstraint1" -p "camAimCtrl_INH";
	rename -uid "CDB300A6-4321-88C1-D10C-31B6BA7E3A9C";
	addAttr -ci true -k true -sn "w0" -ln "master_ctrl_camAimCtrl_INH_SGRPW0" -dv 1 
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
createNode transform -n "camJnts_grp" -p "mwCam_grp";
	rename -uid "E3F07CE3-4277-5187-0B44-60B4EABB517B";
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
	rename -uid "6CDD7DF7-4161-01F3-2DA4-37B86D1B7C75";
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
	rename -uid "5BE01F09-40F6-45DC-73ED-ABAE49172FFE";
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
	rename -uid "0AAEECF0-4AD7-B267-6434-71AB943B51CF";
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
	rename -uid "D00EDE00-43AE-8727-5F93-3AA85B18DDE9";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 7 -1.7763568394002505e-15 0 ;
	setAttr -k off -cb on ".tx";
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
	setAttr -l on -cb off ".radi" 0;
createNode transform -n "dolly_3_JNT_dollyCam_GRP_PGRP" -p "dolly_3_JNT";
	rename -uid "32F01C9C-4EC1-B107-C9B8-3BBA8A25A33C";
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
createNode transform -n "dolly_3_JNT_camAimCtrl_INH_PGRP" -p "dolly_3_JNT";
	rename -uid "91B1B451-4CA7-08B6-2E17-6688FD962485";
	setAttr -k off ".v";
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
	setAttr ".rp" -type "double3" 6.9999999999999964 9.9999999999999929 -9.2799047707459188 ;
	setAttr ".sp" -type "double3" 7 9.9999999999999964 -9.2799047707459188 ;
	setAttr ".spt" -type "double3" -3.5527136788004994e-15 -3.5527136788004994e-15 0 ;
createNode transform -n "boom2Crv_2_CLS_GRP" -p "dolly_3_JNT";
	rename -uid "DF7DF3CA-41AE-9E38-6016-29B91AF35213";
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
createNode transform -n "boom2Crv_2_CLS" -p "boom2Crv_2_CLS_GRP";
	rename -uid "CA9F2FF6-40A4-12C7-92C3-8B9F5C52B6D6";
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
	setAttr ".rp" -type "double3" 6.9999999999999982 10.000000000000002 0 ;
	setAttr ".sp" -type "double3" 6.9999999999999982 10.000000000000002 0 ;
createNode clusterHandle -n "boom2Crv_2_CLSShape" -p "boom2Crv_2_CLS";
	rename -uid "AB01DC03-490A-E1C8-BCEA-BF9544318087";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 6.9999999999999982 10.000000000000002 0 ;
createNode transform -n "boom2Crv_1_CLS_GRP" -p "dolly_2_JNT";
	rename -uid "6C67C6DD-470E-6AC8-0902-D2BD20C55428";
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
createNode transform -n "boom2Crv_1_CLS" -p "boom2Crv_1_CLS_GRP";
	rename -uid "A0573F63-44CA-3D65-7F1D-A4BB2FFE7BA6";
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
	setAttr ".rp" -type "double3" -0.40101151064302654 10 -4.163336342344337e-16 ;
	setAttr ".sp" -type "double3" -0.40101151064302654 10 -4.163336342344337e-16 ;
createNode clusterHandle -n "boom2Crv_1_CLSShape" -p "boom2Crv_1_CLS";
	rename -uid "ECE6E5B5-4303-D53A-06A5-D08E0BE2CD3B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" -0.40101151064302654 10 -4.163336342344337e-16 ;
createNode transform -n "boom1Crv_1_CLS_GRP" -p "dolly_1_JNT";
	rename -uid "5AFA58CF-4C9B-9477-8BBD-59B464B5DAF5";
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
createNode transform -n "boom1Crv_1_CLS" -p "boom1Crv_1_CLS_GRP";
	rename -uid "D6728FAF-4A27-FDD4-D490-1C80F58DF100";
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
createNode clusterHandle -n "boom1Crv_1_CLSShape" -p "boom1Crv_1_CLS";
	rename -uid "545504CC-4EB4-959A-7CC2-909B3DD8067E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1.7902346272080649e-15 2.0000000000000004 -3.4694469519536142e-16 ;
createNode parentConstraint -n "dollyJnt_GRP_parentConstraint1" -p "dollyJnt_GRP";
	rename -uid "856003B9-4D2A-2551-0A9B-D4B3D1344D2E";
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
	rename -uid "3D619117-442F-41E5-0F22-D5A6ED5CD46A";
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
	rename -uid "9F699A45-49D1-C9D9-36E2-8386BB0D24C6";
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
createNode transform -n "camAimLoc_GRP" -p "camExtras_grp";
	rename -uid "E760A81B-4EF8-1FC5-E22C-709C863EBD56";
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
	setAttr ".rp" -type "double3" 7 10 -9.0000000000000071 ;
	setAttr ".sp" -type "double3" 7 10 -9.0000000000000071 ;
createNode transform -n "camAim_LOC" -p "camAimLoc_GRP";
	rename -uid "0B40E943-48C9-0534-3BBC-B09C00FFE802";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 7 10 -9.0000000000000071 ;
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
	rename -uid "3D1B91FE-4D5B-DECE-5014-A7AF15E990B5";
	setAttr -k off ".v";
createNode parentConstraint -n "camAimLoc_GRP_parentConstraint1" -p "camAimLoc_GRP";
	rename -uid "C7C7B6A2-40B4-3B40-6335-F9AFC0E98D3C";
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
	setAttr ".tg[0].tot" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr ".rst" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr -l on ".int";
	setAttr -l on -k on ".w0";
createNode scaleConstraint -n "camAimLoc_GRP_scaleConstraint1" -p "camAimLoc_GRP";
	rename -uid "B04BCAFD-4C6B-50F0-DF88-0185AE1D8425";
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
createNode transform -n "dollyCam_GRP" -p "camExtras_grp";
	rename -uid "9B925DD4-4BC6-5293-7482-C2BDEEC5419E";
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
	rename -uid "F75AECD1-46E3-02E1-F91C-4D88EC7E772E";
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
	rename -uid "07EE25A1-475C-D5D7-9F28-38B9870CBF5E";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -7.0000000000000036 -10 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.0000000000000036 10 0.27990477074591169 ;
	setAttr ".sp" -type "double3" 7.0000000000000036 10 0.27990477074591169 ;
createNode transform -n "mwCam" -p "dollyCamAim_INH";
	rename -uid "F89A6EF6-4F67-DEED-4C7E-7F82F9B051D4";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 7.0000000000000036 9.9999999999998863 -0.48647515566585747 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".rx";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode camera -n "mwCamShape" -p "mwCam";
	rename -uid "150E30F4-4F19-441F-A371-3A88A004EEA4";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ncp" 0.01;
	setAttr ".fcp" 100000;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
createNode aimConstraint -n "dollyCamAim_INH_aimConstraint1" -p "dollyCamAim_INH";
	rename -uid "111CB5D8-47E0-22D8-81FD-B6A06B4A50BB";
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
	setAttr ".rsrr" -type "double3" 4.3870169930052721e-14 89.999999999999943 0 ;
	setAttr -l on -k on ".w0";
createNode scaleConstraint -n "dollyCam_GRP_scaleConstraint1" -p "dollyCam_GRP";
	rename -uid "867027E9-4982-2C57-7B9F-0F9151609601";
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
createNode transform -n "Crv_GRP" -p "camExtras_grp";
	rename -uid "99ED82D0-4EE3-AD6B-9FA9-A584AF251F71";
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
createNode transform -n "boom2_CRV" -p "Crv_GRP";
	rename -uid "54A2F07C-482B-BB3C-9FB3-F58D1AE1E450";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
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
	rename -uid "737192FF-4D82-77A1-3FFC-BFBF483DBB08";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "boom2_CRVShapeOrig" -p "boom2_CRV";
	rename -uid "FABF97E8-4E0D-1640-EA09-7DA24E3C92D3";
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
	rename -uid "DC80FD0E-49C1-7185-4DEE-F0B4AB662CF0";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
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
	rename -uid "6620BD34-4C0B-9636-6B9C-008DF6FB5D62";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "boom1_CRVShapeOrig" -p "boom1_CRV";
	rename -uid "6471171A-4350-4B8A-FA6D-F29E7C370B6B";
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
createNode transform -n "boom1Crv_2_CLS_GRP" -p "Crv_GRP";
	rename -uid "1B906855-45FE-83CA-F227-DDA60C2F6BA1";
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
createNode transform -n "boom1Crv_2_CLS" -p "boom1Crv_2_CLS_GRP";
	rename -uid "7D0A87D1-4199-C5B5-376E-DEAFE7BD3450";
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
createNode clusterHandle -n "boom1Crv_2_CLSShape" -p "boom1Crv_2_CLS";
	rename -uid "2AF3585D-45C1-FD94-A51F-8A9F99006715";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1.3461454173580023e-15 9.8816154239305369 0 ;
createNode pointConstraint -n "boom1Crv_2_CLS_GRP_pointConstraint1" -p "boom1Crv_2_CLS_GRP";
	rename -uid "51C1938C-4633-EF2B-DE6C-D28DEDEA4FAA";
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
createNode scaleConstraint -n "boom1Crv_2_CLS_GRP_scaleConstraint1" -p "boom1Crv_2_CLS_GRP";
	rename -uid "88C292BB-4B9A-9D57-0519-CB9BAB839A48";
	addAttr -ci true -k true -sn "w0" -ln "master_ctrl_boom1Crv_2_CLS_GRP_SGRPW0" -dv 
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
createNode transform -n "weight_CRV" -p "Crv_GRP";
	rename -uid "10AC1D2A-4B06-BC2C-8AEB-32BD2ACAD5F0";
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
	rename -uid "7529B689-400E-1745-ECCB-4FB36566B0FD";
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
	rename -uid "899900DB-42B9-9401-8929-C98EEA989FBC";
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
	rename -uid "9AAF16C8-48FE-6EF8-4D8A-8FB05473D147";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B0A3DE33-43D5-9CC3-71CF-8AB2FE78FDE4";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "AA12B7B9-4A29-9C0E-4F5D-8689BDC42A52";
createNode displayLayer -n "defaultLayer";
	rename -uid "930E644B-4B4C-EF39-9658-7687DD6A76F0";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "884B0DB8-4711-3165-4E66-73913282DB4A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "43DF5375-4A78-896C-DE94-B8A07041189B";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "1579516D-4527-318F-BC87-87AC2FFC5AFA";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 483\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 482\n            -height 333\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 844\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"mwCam\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 844\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"mwCam\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 844\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"mwCam\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 844\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "2332B378-4B60-DDD2-1AB5-19808D721B39";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 100 -ast 1 -aet 100 ";
	setAttr ".st" 6;
createNode cluster -n "boom2Crv_2_CLSCluster";
	rename -uid "1A4330F2-4CFC-2469-46C4-A7BB245C4CD0";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ait" 0;
createNode tweak -n "tweak1";
	rename -uid "14D50188-4AC3-2E5F-AEB2-F892DA31D0F8";
createNode objectSet -n "cluster1Set";
	rename -uid "B1B83544-4523-3913-074D-11B50E04700D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster1GroupId";
	rename -uid "80016190-45F1-F772-B041-3EA1944695DF";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster1GroupParts";
	rename -uid "164B8500-4E0F-AE54-1F94-65BEFD21A35F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "cv[0]" "cv[3:5]" "cv[12:15]";
createNode objectSet -n "tweakSet1";
	rename -uid "48ED9DCB-40DF-48DE-633A-35AD8247197E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "AE217F5B-4880-3F68-B42E-B3A63900C3BD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "BE1D4A6E-4BC6-2FF0-7ACE-A9AE669197EE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "boom2Crv_1_CLSCluster";
	rename -uid "9AB8F967-482E-9DB2-BA38-B982A5A9C66A";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "cluster2Set";
	rename -uid "8277691F-4B71-895E-5F52-F38F32CBB2E0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster2GroupId";
	rename -uid "990B3F50-4B61-4050-C37D-9DB0F245A081";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster2GroupParts";
	rename -uid "5A03C4A9-42E3-D006-69F0-5AB5E5FBB5AF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "cv[1:2]" "cv[6:11]";
createNode cluster -n "boom1Crv_2_CLSCluster";
	rename -uid "4B84B698-4850-B882-D4FF-13990324CFDA";
	setAttr ".gm[0]" -type "matrix" 1.0000000000000002 0 0 0 0 1.0000000000000002 0 0
		 0 0 1 0 1.5668977075724193e-15 0 0 1;
	setAttr ".ait" 0;
createNode tweak -n "tweak2";
	rename -uid "A2688B76-42BB-40CA-3AEE-179D28338027";
createNode objectSet -n "cluster3Set";
	rename -uid "2EC67993-4321-865E-7AF5-BCA784BFE26C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster3GroupId";
	rename -uid "4927C503-4F9E-1D56-CA07-778F5F438E70";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster3GroupParts";
	rename -uid "63C8C5B3-4354-5E30-46FD-8FA7301B2ABC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "cv[0]" "cv[3:5]" "cv[12:15]";
createNode objectSet -n "tweakSet2";
	rename -uid "D0E35046-464E-BE9A-0F51-5D9550ADB1DB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "E0F67020-4979-9479-F4AA-FBB8FA27D763";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "8A14483A-4954-76C7-FB48-DEB7645F0803";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "boom1Crv_1_CLSCluster";
	rename -uid "5CEC55F4-47A6-9359-B677-63B074F5C581";
	setAttr ".gm[0]" -type "matrix" 1.0000000000000002 0 0 0 0 1.0000000000000002 0 0
		 0 0 1 0 1.5668977075724193e-15 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "cluster4Set";
	rename -uid "DA9F91AB-4016-6B8B-5284-E69CEE31C804";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster4GroupId";
	rename -uid "D95134F1-43B2-AC52-53FF-35BDED12CCFF";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster4GroupParts";
	rename -uid "E537C807-42B2-3082-EDE7-19B813668E70";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "cv[1:2]" "cv[6:11]";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "5B9623A1-42F1-93E3-1A11-0488D93BAD69";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "DB8DCE28-46B2-07AD-52B8-CBA84444ADD7";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "2ED4B7DB-4A81-CDD0-BC00-F090D030DFC0";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -622.61902287839052 -389.28569881689037 ;
	setAttr ".tgi[0].vh" -type "double2" 592.85711929911758 407.14284096445425 ;
createNode unitConversion -n "unitConversion5";
	rename -uid "B55003E3-4DC0-93A2-DEA8-E29F5C74A79E";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion4";
	rename -uid "E77858AA-410D-0C57-6AD3-4ABC4D594A23";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion3";
	rename -uid "6FADDD49-4F6D-8D70-F7E3-90A078D79BC0";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion2";
	rename -uid "CB9FC02D-4848-89A3-0083-148A151B801A";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion1";
	rename -uid "C9080020-449C-2F85-6502-C6A3456A2412";
	setAttr ".cf" 0.017453292519943295;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "E921CF76-4D4A-013D-EFDC-C3A7FC783848";
	setAttr ".txf" -type "matrix" 0.45064921016343817 0 0 0 0 1.0006422583051803e-16 0.45064921016343817 0
		 0 -0.45064921016343817 1.0006422583051803e-16 0 1.592209478038737 10 -9.0000000000000071 1;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "5BBD95BD-4431-006B-253D-00A3BA1FF9E7";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 12 0 0 1;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "D02E03FC-4B95-F974-15A0-FFB09623AE7F";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".tol" 0;
createNode animCurveUU -n "camAimCtrl_INH_pointConstraint1_dolly_3_JNT_camAimCtrl_INH_PGRPW0";
	rename -uid "90763FC4-4AFB-B6DD-56B1-3EACC885EAC7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
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
connectAttr "dollyCam_ctrl.uniformScale" "dollyCam_ctrl.sx" -l on;
connectAttr "dollyCam_ctrl.uniformScale" "dollyCam_ctrl.sy" -l on;
connectAttr "dollyCam_ctrl.uniformScale" "dollyCam_ctrl.sz" -l on;
connectAttr "dollyCam_ctrl.graphicCamCurves" "dollyCam_ctrlShape2.lodv";
connectAttr "dollyCam_ctrl.graphicCamCurves" "dollyCam_ctrlShape3.lodv";
connectAttr "dollyCam_ctrl.graphicCamCurves" "dollyCam_ctrlShape4.lodv";
connectAttr "dollyCam_ctrl.graphicCamCurves" "dollyCam_ctrlShape5.lodv";
connectAttr "dollyCam_ctrl.graphicCamCurves" "dollyCam_ctrlShape6.lodv";
connectAttr "dollyCam_ctrl.graphicCamCurves" "dollyCam_ctrlShape7.lodv";
connectAttr "dollyCam_ctrl.graphicCamCurves" "dollyCam_ctrlShape8.lodv";
connectAttr "dollyCam_ctrl.graphicCamCurves" "dollyCam_ctrlShape9.lodv";
connectAttr "dollyCam_ctrl.graphicCamCurves" "dollyCam_ctrlShape10.lodv";
connectAttr "dollyCam_ctrl.graphicCamCurves" "dollyCam_ctrlShape11.lodv";
connectAttr "dollyCam_ctrl.graphicCamCurves" "dollyCam_ctrlShape12.lodv";
connectAttr "dollyCam_ctrl.graphicCamCurves" "dollyCam_ctrlShape13.lodv";
connectAttr "dollyCam_ctrl.graphicCamCurves" "dollyCam_ctrlShape14.lodv";
connectAttr "dollyCam_ctrl.rail" "dollyCam_ctrlShape15.lodv";
connectAttr "dollyCam_ctrl.rail" "dollyCam_ctrlShape16.lodv";
connectAttr "camAimCtrl_INH_pointConstraint1.ctx" "camAimCtrl_INH.tx" -l on;
connectAttr "camAimCtrl_INH_pointConstraint1.cty" "camAimCtrl_INH.ty" -l on;
connectAttr "camAimCtrl_INH_pointConstraint1.ctz" "camAimCtrl_INH.tz" -l on;
connectAttr "camAimCtrl_INH_scaleConstraint1.csx" "camAimCtrl_INH.sx" -l on;
connectAttr "camAimCtrl_INH_scaleConstraint1.csy" "camAimCtrl_INH.sy" -l on;
connectAttr "camAimCtrl_INH_scaleConstraint1.csz" "camAimCtrl_INH.sz" -l on;
connectAttr "dollyCam_ctrl.aim" "camAim_ctrl.v";
connectAttr "transformGeometry2.og" "camAim_ctrlShape1.cr";
connectAttr "camAimCtrl_INH.pim" "camAimCtrl_INH_pointConstraint1.cpim";
connectAttr "camAimCtrl_INH.rp" "camAimCtrl_INH_pointConstraint1.crp";
connectAttr "camAimCtrl_INH.rpt" "camAimCtrl_INH_pointConstraint1.crt";
connectAttr "dolly_3_JNT_camAimCtrl_INH_PGRP.t" "camAimCtrl_INH_pointConstraint1.tg[0].tt"
		;
connectAttr "dolly_3_JNT_camAimCtrl_INH_PGRP.rp" "camAimCtrl_INH_pointConstraint1.tg[0].trp"
		;
connectAttr "dolly_3_JNT_camAimCtrl_INH_PGRP.rpt" "camAimCtrl_INH_pointConstraint1.tg[0].trt"
		;
connectAttr "dolly_3_JNT_camAimCtrl_INH_PGRP.pm" "camAimCtrl_INH_pointConstraint1.tg[0].tpm"
		;
connectAttr "camAimCtrl_INH_pointConstraint1.w0" "camAimCtrl_INH_pointConstraint1.tg[0].tw"
		;
connectAttr "camAimCtrl_INH_pointConstraint1_dolly_3_JNT_camAimCtrl_INH_PGRPW0.o" "camAimCtrl_INH_pointConstraint1.w0"
		 -l on;
connectAttr "camAimCtrl_INH.pim" "camAimCtrl_INH_scaleConstraint1.cpim";
connectAttr "master_ctrl_camAimCtrl_INH_SGRP.s" "camAimCtrl_INH_scaleConstraint1.tg[0].ts"
		;
connectAttr "master_ctrl_camAimCtrl_INH_SGRP.pm" "camAimCtrl_INH_scaleConstraint1.tg[0].tpm"
		;
connectAttr "camAimCtrl_INH_scaleConstraint1.w0" "camAimCtrl_INH_scaleConstraint1.tg[0].tw"
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
connectAttr "dollyCam_ctrl.length" "dolly_3_JNT.tx" -l on;
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
connectAttr "dollyCam_ctrl.graphicCamCurves" "mwCamShape.v";
connectAttr "dollyCam_ctrl.focalLength" "mwCamShape.fl";
connectAttr "dollyCam_ctrl.graphicCamCurves" "mwCamShape.lodv";
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
connectAttr "dollyCam_ctrl.graphicCamCurves" "Crv_GRP.v";
connectAttr "boom2Crv_1_CLSCluster.og[0]" "boom2_CRVShape.cr";
connectAttr "tweak1.pl[0].cp[0]" "boom2_CRVShape.twl";
connectAttr "cluster1GroupId.id" "boom2_CRVShape.iog.og[4].gid";
connectAttr "cluster1Set.mwc" "boom2_CRVShape.iog.og[4].gco";
connectAttr "groupId2.id" "boom2_CRVShape.iog.og[5].gid";
connectAttr "tweakSet1.mwc" "boom2_CRVShape.iog.og[5].gco";
connectAttr "cluster2GroupId.id" "boom2_CRVShape.iog.og[6].gid";
connectAttr "cluster2Set.mwc" "boom2_CRVShape.iog.og[6].gco";
connectAttr "boom1Crv_1_CLSCluster.og[0]" "boom1_CRVShape.cr";
connectAttr "tweak2.pl[0].cp[0]" "boom1_CRVShape.twl";
connectAttr "cluster3GroupId.id" "boom1_CRVShape.iog.og[5].gid";
connectAttr "cluster3Set.mwc" "boom1_CRVShape.iog.og[5].gco";
connectAttr "groupId4.id" "boom1_CRVShape.iog.og[6].gid";
connectAttr "tweakSet2.mwc" "boom1_CRVShape.iog.og[6].gco";
connectAttr "cluster4GroupId.id" "boom1_CRVShape.iog.og[7].gid";
connectAttr "cluster4Set.mwc" "boom1_CRVShape.iog.og[7].gco";
connectAttr "boom1Crv_2_CLS_GRP_pointConstraint1.ctx" "boom1Crv_2_CLS_GRP.tx" -l
		 on;
connectAttr "boom1Crv_2_CLS_GRP_pointConstraint1.cty" "boom1Crv_2_CLS_GRP.ty" -l
		 on;
connectAttr "boom1Crv_2_CLS_GRP_pointConstraint1.ctz" "boom1Crv_2_CLS_GRP.tz" -l
		 on;
connectAttr "boom1Crv_2_CLS_GRP_scaleConstraint1.csx" "boom1Crv_2_CLS_GRP.sx" -l
		 on;
connectAttr "boom1Crv_2_CLS_GRP_scaleConstraint1.csy" "boom1Crv_2_CLS_GRP.sy" -l
		 on;
connectAttr "boom1Crv_2_CLS_GRP_scaleConstraint1.csz" "boom1Crv_2_CLS_GRP.sz" -l
		 on;
connectAttr "boom1Crv_2_CLS_GRP.pim" "boom1Crv_2_CLS_GRP_pointConstraint1.cpim";
connectAttr "boom1Crv_2_CLS_GRP.rp" "boom1Crv_2_CLS_GRP_pointConstraint1.crp";
connectAttr "boom1Crv_2_CLS_GRP.rpt" "boom1Crv_2_CLS_GRP_pointConstraint1.crt";
connectAttr "dolly_2_JNT.t" "boom1Crv_2_CLS_GRP_pointConstraint1.tg[0].tt";
connectAttr "dolly_2_JNT.rp" "boom1Crv_2_CLS_GRP_pointConstraint1.tg[0].trp";
connectAttr "dolly_2_JNT.rpt" "boom1Crv_2_CLS_GRP_pointConstraint1.tg[0].trt";
connectAttr "dolly_2_JNT.pm" "boom1Crv_2_CLS_GRP_pointConstraint1.tg[0].tpm";
connectAttr "boom1Crv_2_CLS_GRP_pointConstraint1.w0" "boom1Crv_2_CLS_GRP_pointConstraint1.tg[0].tw"
		;
connectAttr "boom1Crv_2_CLS_GRP.pim" "boom1Crv_2_CLS_GRP_scaleConstraint1.cpim";
connectAttr "master_ctrl_boom1Crv_2_CLS_GRP_SGRP.s" "boom1Crv_2_CLS_GRP_scaleConstraint1.tg[0].ts"
		;
connectAttr "master_ctrl_boom1Crv_2_CLS_GRP_SGRP.pm" "boom1Crv_2_CLS_GRP_scaleConstraint1.tg[0].tpm"
		;
connectAttr "boom1Crv_2_CLS_GRP_scaleConstraint1.w0" "boom1Crv_2_CLS_GRP_scaleConstraint1.tg[0].tw"
		;
connectAttr "weight_CRV_parentConstraint1.ctx" "weight_CRV.tx" -l on;
connectAttr "weight_CRV_parentConstraint1.cty" "weight_CRV.ty" -l on;
connectAttr "weight_CRV_parentConstraint1.ctz" "weight_CRV.tz" -l on;
connectAttr "weight_CRV_parentConstraint1.crx" "weight_CRV.rx" -l on;
connectAttr "weight_CRV_parentConstraint1.cry" "weight_CRV.ry" -l on;
connectAttr "weight_CRV_parentConstraint1.crz" "weight_CRV.rz" -l on;
connectAttr "weight_CRV_scaleConstraint1.csx" "weight_CRV.sx" -l on;
connectAttr "weight_CRV_scaleConstraint1.csy" "weight_CRV.sy" -l on;
connectAttr "weight_CRV_scaleConstraint1.csz" "weight_CRV.sz" -l on;
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
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "cluster1GroupParts.og" "boom2Crv_2_CLSCluster.ip[0].ig";
connectAttr "cluster1GroupId.id" "boom2Crv_2_CLSCluster.ip[0].gi";
connectAttr "boom2Crv_2_CLS.wm" "boom2Crv_2_CLSCluster.ma";
connectAttr "boom2Crv_2_CLSShape.x" "boom2Crv_2_CLSCluster.x";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "cluster1GroupId.msg" "cluster1Set.gn" -na;
connectAttr "boom2_CRVShape.iog.og[4]" "cluster1Set.dsm" -na;
connectAttr "boom2Crv_2_CLSCluster.msg" "cluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "cluster1GroupParts.ig";
connectAttr "cluster1GroupId.id" "cluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "boom2_CRVShape.iog.og[5]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "boom2_CRVShapeOrig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "cluster2GroupParts.og" "boom2Crv_1_CLSCluster.ip[0].ig";
connectAttr "cluster2GroupId.id" "boom2Crv_1_CLSCluster.ip[0].gi";
connectAttr "boom2Crv_1_CLS.wm" "boom2Crv_1_CLSCluster.ma";
connectAttr "boom2Crv_1_CLSShape.x" "boom2Crv_1_CLSCluster.x";
connectAttr "cluster2GroupId.msg" "cluster2Set.gn" -na;
connectAttr "boom2_CRVShape.iog.og[6]" "cluster2Set.dsm" -na;
connectAttr "boom2Crv_1_CLSCluster.msg" "cluster2Set.ub[0]";
connectAttr "boom2Crv_2_CLSCluster.og[0]" "cluster2GroupParts.ig";
connectAttr "cluster2GroupId.id" "cluster2GroupParts.gi";
connectAttr "cluster3GroupParts.og" "boom1Crv_2_CLSCluster.ip[0].ig";
connectAttr "cluster3GroupId.id" "boom1Crv_2_CLSCluster.ip[0].gi";
connectAttr "boom1Crv_2_CLS.wm" "boom1Crv_2_CLSCluster.ma";
connectAttr "boom1Crv_2_CLSShape.x" "boom1Crv_2_CLSCluster.x";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "cluster3GroupId.msg" "cluster3Set.gn" -na;
connectAttr "boom1_CRVShape.iog.og[5]" "cluster3Set.dsm" -na;
connectAttr "boom1Crv_2_CLSCluster.msg" "cluster3Set.ub[0]";
connectAttr "tweak2.og[0]" "cluster3GroupParts.ig";
connectAttr "cluster3GroupId.id" "cluster3GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "boom1_CRVShape.iog.og[6]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "boom1_CRVShapeOrig.ws" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "cluster4GroupParts.og" "boom1Crv_1_CLSCluster.ip[0].ig";
connectAttr "cluster4GroupId.id" "boom1Crv_1_CLSCluster.ip[0].gi";
connectAttr "boom1Crv_1_CLS.wm" "boom1Crv_1_CLSCluster.ma";
connectAttr "boom1Crv_1_CLSShape.x" "boom1Crv_1_CLSCluster.x";
connectAttr "cluster4GroupId.msg" "cluster4Set.gn" -na;
connectAttr "boom1_CRVShape.iog.og[7]" "cluster4Set.dsm" -na;
connectAttr "boom1Crv_1_CLSCluster.msg" "cluster4Set.ub[0]";
connectAttr "boom1Crv_2_CLSCluster.og[0]" "cluster4GroupParts.ig";
connectAttr "cluster4GroupId.id" "cluster4GroupParts.gi";
connectAttr "dollyCam_ctrl.camTilt" "unitConversion5.i";
connectAttr "dollyCam_ctrl.camTwist" "unitConversion4.i";
connectAttr "dollyCam_ctrl.camPan" "unitConversion3.i";
connectAttr "dollyCam_ctrl.boomTilt" "unitConversion2.i";
connectAttr "dollyCam_ctrl.boomPan" "unitConversion1.i";
connectAttr "transformGeometry1.og" "transformGeometry2.ig";
connectAttr "makeNurbCircle1.oc" "transformGeometry1.ig";
connectAttr "dollyCam_ctrl.aim" "camAimCtrl_INH_pointConstraint1_dolly_3_JNT_camAimCtrl_INH_PGRPW0.i"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of mwCam_dollyCam.ma

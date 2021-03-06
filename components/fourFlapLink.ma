//Maya ASCII 2016 scene
//Name: fourFlapLink.ma
//Last modified: Sun, Jun 17, 2018 11:12:54 AM
//Codeset: 1252
requires maya "2016";
requires -nodeType "decomposeMatrix" -nodeType "composeMatrix" -nodeType "inverseMatrix"
		 "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "quatToEuler" "quatNodes" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201603180400-990260";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "C0EFDD4D-44E1-E52F-9791-1482D903FBCF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.6117967064723127 18.606532520336867 1.9239555833694015 ;
	setAttr ".r" -type "double3" -14.738352728605976 393.39999999939312 9.5243541410304601e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "01094DA5-418A-91BA-AAEA-C29A88918CEB";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 8.9164431758942957;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.96533673521049623 16.217535797277844 -6.039743026214774 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A3757C1B-4368-E3FC-40DD-0FAE0CD33AD4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.57156220767072019 100.45595281310459 -0.89662744325732624 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "75858DB8-4465-9D67-6547-66AC47F890F7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 5.2565614472210642;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "1923CF4C-4811-C14F-5F11-E4A2E22BA347";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1.6000000000000014 105.12896907516341 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "AC477CAD-4120-C2E3-CE80-7D900BFF1E75";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 9.4526315789473685;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "8723419B-4AC5-F875-88E3-48B503E7BEA8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 113.32572422649712 -0.32328114450319434 -1.2269164103559669 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "950758FD-468D-2068-74AC-BCAF91A18C89";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 3.6636666547794285;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "fourFlapLink_cmpt";
	rename -uid "DCCBACB9-4908-F974-03E7-778FE86D3A77";
createNode transform -n "input" -p "fourFlapLink_cmpt";
	rename -uid "4E786DDD-47AE-74AB-C2D6-619D96176BFC";
createNode transform -n "parent_srt" -p "input";
	rename -uid "E476642D-4FCC-EB10-F1AE-A8B0822D6F8E";
	setAttr ".t" -type "double3" 0 16.565300007661182 -3.6897564133008323 ;
createNode transform -n "topFlap_srtOffset" -p "parent_srt";
	rename -uid "289B0772-42C5-18B8-07D2-71A189BBA576";
createNode transform -n "btmFlap_srtOffset" -p "parent_srt";
	rename -uid "09C2006A-40DE-6EBA-4690-87B2FC271F27";
createNode transform -n "leftFlap_srtOffset" -p "parent_srt";
	rename -uid "4B40CA7F-4006-F7CC-30F5-1B8EBFC826F8";
createNode transform -n "rightFlap_srtOffset" -p "parent_srt";
	rename -uid "087B9AAB-41AB-0B3C-F321-58BE6AE55C70";
createNode transform -n "this_srt" -p "input";
	rename -uid "6440E0C9-4BC8-620D-DBB9-1CA65CD7B2DC";
	setAttr ".t" -type "double3" 3.4507668944527836e-010 16.565331775525312 -5.6897564133008327 ;
createNode transform -n "child_srtOffset" -p "this_srt";
	rename -uid "1FFEF03A-4544-A977-83CE-32903FB10527";
	setAttr ".t" -type "double3" 3.4507668944527836e-010 1.4310330698208418e-011 -2.0000000002523 ;
createNode transform -n "child_srt" -p "input";
	rename -uid "83C6DC3A-4FEF-5AA4-CFA6-549B1263E6B9";
	setAttr ".t" -type "double3" 3.907887347054384e-010 16.565335983790039 -7.4897563656171169 ;
createNode transform -n "settings" -p "input";
	rename -uid "8DB2F52F-45AC-0CCB-1A5E-8A8CEA8A668A";
	addAttr -ci true -k true -sn "direction" -ln "direction" -min 0 -max 1 -en "Positive Z:Negative Z" 
		-at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "guided" -p "fourFlapLink_cmpt";
	rename -uid "C5262498-412E-94CB-D9A9-9BBD829C42FE";
createNode transform -n "parent_guided_srt" -p "guided";
	rename -uid "D7AA42DF-45F0-9523-0DD2-39A9CFC3D38D";
createNode transform -n "topFlap_guided_srtOffset" -p "parent_guided_srt";
	rename -uid "78E264AA-4643-1138-5E15-69B29D5BBEFE";
createNode aimConstraint -n "topFlap_guided_srtOffset_aimConstraint1" -p "topFlap_guided_srtOffset";
	rename -uid "E98951CA-4F3C-3D83-2892-44A6B8F7553C";
	addAttr -dcb 0 -ci true -sn "w0" -ln "topFlap_guide_aim_srtW0" -dv 1 -at "double";
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
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" 45.000001920990734 -45.000001920990755 -89.999999999999972 ;
	setAttr -k on ".w0";
createNode transform -n "btmFlap_guided_srtOffset" -p "parent_guided_srt";
	rename -uid "5F9AC667-49A4-6C39-EDEF-95AC7FDC30BD";
createNode aimConstraint -n "btmFlap_guided_srtOffset_aimConstraint1" -p "btmFlap_guided_srtOffset";
	rename -uid "1A67E271-4344-52C1-A5D7-02A610AEFE35";
	addAttr -dcb 0 -ci true -sn "w0" -ln "btmFlap_guide_aim_srtW0" -dv 1 -at "double";
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
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" -179.99999971540885 89.999998861635177 0 ;
	setAttr -k on ".w0";
createNode transform -n "leftFlap_guided_srtOffset" -p "parent_guided_srt";
	rename -uid "C1EA7D58-48D2-8FA2-14BA-0CB3506AB286";
	setAttr ".oclr" -type "float3" 0.64393449 -0.10172653 -1.1820369 ;
createNode aimConstraint -n "leftFlap_guided_srtOffset_aimConstraint1" -p "leftFlap_guided_srtOffset";
	rename -uid "4109DDEA-4682-C9F7-E9A7-F383FD3BAFD2";
	addAttr -dcb 0 -ci true -sn "w0" -ln "leftFlap_guide_aim_srtW0" -dv 1 -at "double";
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
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" 89.99996243727395 89.999962398481841 0 ;
	setAttr -k on ".w0";
createNode transform -n "rightFlap_guided_srtOffset" -p "parent_guided_srt";
	rename -uid "84E755D0-488B-0742-4A85-F8B297474C51";
createNode aimConstraint -n "rightFlap_guided_srtOffset_aimConstraint1" -p "rightFlap_guided_srtOffset";
	rename -uid "364A7110-4727-62C5-FEC5-1FB2787D47B9";
	addAttr -dcb 0 -ci true -sn "w0" -ln "rightFlap_guide_aim_srtW0" -dv 1 -at "double";
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
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" -89.999962437670092 89.99996243770704 0 ;
	setAttr -k on ".w0";
createNode transform -n "this_guided_srt" -p "guided";
	rename -uid "4D285BF2-467D-B411-38A7-C3AABCE4EDEE";
	setAttr ".ro" 5;
createNode transform -n "child_srtOffset" -p "this_guided_srt";
	rename -uid "3FE4B384-4869-B860-1571-B0BAC280F9D9";
createNode transform -n "child_guided_srt" -p "guided";
	rename -uid "1B26A559-487E-D948-49CD-DD83A6611C22";
createNode transform -n "guides" -p "fourFlapLink_cmpt";
	rename -uid "0C9F872C-485E-9C5E-3034-30BDE05851BA";
createNode transform -n "topFlap_guide_srt" -p "guides";
	rename -uid "5D8CF86B-4B40-1DA7-F881-939E34E75CDF";
	addAttr -ci true -sn "aimVector" -ln "aimVector" -at "double3" -nc 3;
	addAttr -ci true -sn "aimVectorX" -ln "aimVectorX" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorY" -ln "aimVectorY" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorZ" -ln "aimVectorZ" -at "double" -p "aimVector";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0.00027799999224953353 16.985956192016602 -4.6923069953918457 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".aimVector" -type "double3" 0 0 -1 ;
	setAttr -k on ".aimVector";
	setAttr -k on ".aimVectorX";
	setAttr -k on ".aimVectorY";
	setAttr -k on ".aimVectorZ";
	setAttr -k on ".upVector" -type "double3" 0 1 0 ;
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode nurbsCurve -n "curveShape2" -p "topFlap_guide_srt";
	rename -uid "FFDA5ACB-4F28-53AD-4B79-E991AC8AD58B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 27;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.25 0 4.163336342344337e-017
		0 0 0.25
		-0.25 0 4.163336342344337e-017
		0 0 -0.24999999999999997
		0.25 0 4.163336342344337e-017
		0 0.25 4.163336342344337e-017
		-0.25 0 4.163336342344337e-017
		0 -0.25 4.163336342344337e-017
		0.25 0 4.163336342344337e-017
		0 0 0.25
		0 -0.25 4.163336342344337e-017
		0 0 -0.24999999999999997
		0 0.25 4.163336342344337e-017
		0 0 0.25
		;
createNode transform -n "topFlap_guide_aim_srt" -p "topFlap_guide_srt";
	rename -uid "20A77726-4CFB-1F02-95A4-69B499C90C21";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 -1 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "topFlap_guide_aim_srt";
	rename -uid "4DE43CC5-474C-45BC-A344-D69DF4B2868A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 27;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.0625 0 1.0408340855860843e-017
		0 0 0.0625
		-0.0625 0 1.0408340855860843e-017
		0 0 -0.062499999999999993
		0.0625 0 1.0408340855860843e-017
		0 0.0625 1.0408340855860843e-017
		-0.0625 0 1.0408340855860843e-017
		0 -0.0625 1.0408340855860843e-017
		0.0625 0 1.0408340855860843e-017
		0 0 0.0625
		0 -0.0625 1.0408340855860843e-017
		0 0 -0.062499999999999993
		0 0.0625 1.0408340855860843e-017
		0 0 0.0625
		;
createNode transform -n "topFlap_guide_up_srt" -p "topFlap_guide_srt";
	rename -uid "9734568B-40EE-4C7D-2A89-6089F41F5B39";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "topFlap_guide_up_srt";
	rename -uid "70209196-4DBB-EF01-3EEF-9AA232B11EE9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 27;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.0625 0 1.0408340855860843e-017
		0 0 0.0625
		-0.0625 0 1.0408340855860843e-017
		0 0 -0.062499999999999993
		0.0625 0 1.0408340855860843e-017
		0 0.0625 1.0408340855860843e-017
		-0.0625 0 1.0408340855860843e-017
		0 -0.0625 1.0408340855860843e-017
		0.0625 0 1.0408340855860843e-017
		0 0 0.0625
		0 -0.0625 1.0408340855860843e-017
		0 0 -0.062499999999999993
		0 0.0625 1.0408340855860843e-017
		0 0 0.0625
		;
createNode transform -n "btmFlap_guide_srt" -p "guides";
	rename -uid "4FD440DA-4417-5FB2-2C2C-C69056DF8D20";
	addAttr -ci true -sn "aimVector" -ln "aimVector" -at "double3" -nc 3;
	addAttr -ci true -sn "aimVectorX" -ln "aimVectorX" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorY" -ln "aimVectorY" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorZ" -ln "aimVectorZ" -at "double" -p "aimVector";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0.00027799999224953353 15.962250709533691 -4.9835667610168457 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".aimVector" -type "double3" 0 0 1 ;
	setAttr -k on ".aimVector";
	setAttr -k on ".aimVectorX";
	setAttr -k on ".aimVectorY";
	setAttr -k on ".aimVectorZ";
	setAttr -k on ".upVector" -type "double3" 0 -1 0 ;
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode nurbsCurve -n "curveShape2" -p "btmFlap_guide_srt";
	rename -uid "BEBDA5B3-4D03-A5C2-5E85-E8A80AC215CD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 27;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.25 0 0
		0 0 0.25
		-0.25 0 0
		0 0 -0.25
		0.25 0 0
		0 0.25 0
		-0.25 0 0
		0 -0.25 0
		0.25 0 0
		0 0 0.25
		0 -0.25 0
		0 0 -0.25
		0 0.25 0
		0 0 0.25
		;
createNode transform -n "btmFlap_guide_aim_srt" -p "btmFlap_guide_srt";
	rename -uid "6EE7E8FF-4949-1C70-421A-D3A520503563";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 -1 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "btmFlap_guide_aim_srt";
	rename -uid "A0381E99-433D-81E3-B059-A48F19E18369";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 27;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.0625 0 0
		0 0 0.0625
		-0.0625 0 0
		0 0 -0.0625
		0.0625 0 0
		0 0.0625 0
		-0.0625 0 0
		0 -0.0625 0
		0.0625 0 0
		0 0 0.0625
		0 -0.0625 0
		0 0 -0.0625
		0 0.0625 0
		0 0 0.0625
		;
createNode transform -n "btmFlap_guide_up_srt" -p "btmFlap_guide_srt";
	rename -uid "C374F0E5-4FEC-FDE8-7E32-F188CB0036A8";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -1 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "btmFlap_guide_up_srt";
	rename -uid "4816B364-4DCB-FA8C-8752-99BF058CCD30";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 27;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.0625 0 0
		0 0 0.0625
		-0.0625 0 0
		0 0 -0.0625
		0.0625 0 0
		0 0.0625 0
		-0.0625 0 0
		0 -0.0625 0
		0.0625 0 0
		0 0 0.0625
		0 -0.0625 0
		0 0 -0.0625
		0 0.0625 0
		0 0 0.0625
		;
createNode transform -n "leftFlap_guide_srt" -p "guides";
	rename -uid "6E2126FA-43D0-74FE-429A-93BE1F944030";
	addAttr -ci true -sn "aimVector" -ln "aimVector" -at "double3" -nc 3;
	addAttr -ci true -sn "aimVectorX" -ln "aimVectorX" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorY" -ln "aimVectorY" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorZ" -ln "aimVectorZ" -at "double" -p "aimVector";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0.64393451809883118 16.463593204758471 -4.8717953824687914 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".aimVector" -type "double3" 0 0 -1 ;
	setAttr -k on ".aimVector";
	setAttr -k on ".aimVectorX";
	setAttr -k on ".aimVectorY";
	setAttr -k on ".aimVectorZ";
	setAttr -k on ".upVector" -type "double3" 0 1 0 ;
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode nurbsCurve -n "curveShape2" -p "leftFlap_guide_srt";
	rename -uid "6BA7EA84-4955-15CF-EDA3-91A65980660A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 27;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.25 0 4.163336342344337e-017
		0 0 0.25
		-0.25 0 4.163336342344337e-017
		0 0 -0.24999999999999997
		0.25 0 4.163336342344337e-017
		0 0.25 4.163336342344337e-017
		-0.25 0 4.163336342344337e-017
		0 -0.25 4.163336342344337e-017
		0.25 0 4.163336342344337e-017
		0 0 0.25
		0 -0.25 4.163336342344337e-017
		0 0 -0.24999999999999997
		0 0.25 4.163336342344337e-017
		0 0 0.25
		;
createNode transform -n "leftFlap_guide_aim_srt" -p "leftFlap_guide_srt";
	rename -uid "A3CF8DE5-4D31-DAEF-DA46-43BD402C10C4";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 -1 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "leftFlap_guide_aim_srt";
	rename -uid "9C36C4BC-47DD-3AEE-3FF8-17AD60C1DE8E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 27;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.0625 0 1.0408340855860843e-017
		0 0 0.0625
		-0.0625 0 1.0408340855860843e-017
		0 0 -0.062499999999999993
		0.0625 0 1.0408340855860843e-017
		0 0.0625 1.0408340855860843e-017
		-0.0625 0 1.0408340855860843e-017
		0 -0.0625 1.0408340855860843e-017
		0.0625 0 1.0408340855860843e-017
		0 0 0.0625
		0 -0.0625 1.0408340855860843e-017
		0 0 -0.062499999999999993
		0 0.0625 1.0408340855860843e-017
		0 0 0.0625
		;
createNode transform -n "leftFlap_guide_up_srt" -p "leftFlap_guide_srt";
	rename -uid "AD6FEE40-45D0-20D9-CFAB-35ADD7149868";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "leftFlap_guide_up_srt";
	rename -uid "C21B27BF-4981-C775-ED3E-4CBC4E8A2611";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 27;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.0625 0 1.0408340855860843e-017
		0 0 0.0625
		-0.0625 0 1.0408340855860843e-017
		0 0 -0.062499999999999993
		0.0625 0 1.0408340855860843e-017
		0 0.0625 1.0408340855860843e-017
		-0.0625 0 1.0408340855860843e-017
		0 -0.0625 1.0408340855860843e-017
		0.0625 0 1.0408340855860843e-017
		0 0 0.0625
		0 -0.0625 1.0408340855860843e-017
		0 0 -0.062499999999999993
		0 0.0625 1.0408340855860843e-017
		0 0 0.0625
		;
createNode transform -n "rightFlap_guide_srt" -p "guides";
	rename -uid "5689C52E-4ADF-5623-7BC1-ECB4F5E7A9CF";
	addAttr -ci true -sn "aimVector" -ln "aimVector" -at "double3" -nc 3;
	addAttr -ci true -sn "aimVectorX" -ln "aimVectorX" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorY" -ln "aimVectorY" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorZ" -ln "aimVectorZ" -at "double" -p "aimVector";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -0.64393502473831177 16.463593204750897 -4.8717949056316332 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".aimVector" -type "double3" 0 0 1 ;
	setAttr -k on ".aimVector";
	setAttr -k on ".aimVectorX";
	setAttr -k on ".aimVectorY";
	setAttr -k on ".aimVectorZ";
	setAttr -k on ".upVector" -type "double3" 0 -1 0 ;
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode nurbsCurve -n "curveShape2" -p "rightFlap_guide_srt";
	rename -uid "DA287F2D-492D-F8BF-9715-C6807E8449EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 27;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.25 0 4.163336342344337e-017
		0 0 0.25
		-0.25 0 4.163336342344337e-017
		0 0 -0.24999999999999997
		0.25 0 4.163336342344337e-017
		0 0.25 4.163336342344337e-017
		-0.25 0 4.163336342344337e-017
		0 -0.25 4.163336342344337e-017
		0.25 0 4.163336342344337e-017
		0 0 0.25
		0 -0.25 4.163336342344337e-017
		0 0 -0.24999999999999997
		0 0.25 4.163336342344337e-017
		0 0 0.25
		;
createNode transform -n "rightFlap_guide_aim_srt" -p "rightFlap_guide_srt";
	rename -uid "4B8D8886-4064-E932-52D6-EF82C25F0BA7";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 -1 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "rightFlap_guide_aim_srt";
	rename -uid "2058C136-4D66-A322-A913-5E96692F2E92";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 27;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.0625 0 1.0408340855860843e-017
		0 0 0.0625
		-0.0625 0 1.0408340855860843e-017
		0 0 -0.062499999999999993
		0.0625 0 1.0408340855860843e-017
		0 0.0625 1.0408340855860843e-017
		-0.0625 0 1.0408340855860843e-017
		0 -0.0625 1.0408340855860843e-017
		0.0625 0 1.0408340855860843e-017
		0 0 0.0625
		0 -0.0625 1.0408340855860843e-017
		0 0 -0.062499999999999993
		0 0.0625 1.0408340855860843e-017
		0 0 0.0625
		;
createNode transform -n "rightFlap_guide_up_srt" -p "rightFlap_guide_srt";
	rename -uid "2249D535-45BD-FF92-DD87-D988A9B9CA35";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "rightFlap_guide_up_srt";
	rename -uid "5C4F8580-43CA-41F9-51DA-938424A8DD08";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 27;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.0625 0 1.0408340855860843e-017
		0 0 0.0625
		-0.0625 0 1.0408340855860843e-017
		0 0 -0.062499999999999993
		0.0625 0 1.0408340855860843e-017
		0 0.0625 1.0408340855860843e-017
		-0.0625 0 1.0408340855860843e-017
		0 -0.0625 1.0408340855860843e-017
		0.0625 0 1.0408340855860843e-017
		0 0 0.0625
		0 -0.0625 1.0408340855860843e-017
		0 0 -0.062499999999999993
		0 0.0625 1.0408340855860843e-017
		0 0 0.0625
		;
createNode transform -n "control" -p "fourFlapLink_cmpt";
	rename -uid "1D78A84C-41A7-44AE-EF44-0C88085CD707";
createNode transform -n "top_flap_ctrl_srtOffset" -p "control";
	rename -uid "C9760C77-4BA0-DACC-A349-CAA97D47B22C";
createNode transform -n "top_flap_ctrl" -p "top_flap_ctrl_srtOffset";
	rename -uid "611DD962-46DB-68DD-014E-7A9FFBC779FA";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape3" -p "top_flap_ctrl";
	rename -uid "7E48D6BD-4337-B6EE-4DAE-EF9C007275A1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0 0.5776546768655868 -1.9378600127918817
		0.14901359152468102 0.55361676209868405 -1.5220498176448651
		0.46328454197992625 0.30561352805958025 -0.74743993782215168
		0.44244617684501042 0.35082267375730641 -0.27462739309233886
		0.27742541340910298 0.54465287767668469 -0.3535632959639522
		0.18672600388526917 0.54465287767668469 -0.38503429885091123
		0.097382001578807831 0.54465287767668469 -0.34946262418918927
		-0.097382001578807831 0.54465287767668469 -0.34946262418918927
		-0.18030199408531189 0.54465287767668469 -0.38503429885091123
		-0.27742432869405192 0.54465287767668469 -0.3535632959639522
		-0.44244617684501042 0.35082267375730641 -0.27462739309233886
		-0.46328454197992625 0.30561352805958025 -0.74743993782215168
		-0.14901359152468102 0.55361676208268018 -1.5220508385531484
		0 0.5776546768655868 -1.9378600127918817
		;
createNode transform -n "btm_flap_ctrl_srtOffset" -p "control";
	rename -uid "DAFF49CB-4A3A-F5E4-6952-0897B3539782";
createNode transform -n "btm_flap_ctrl" -p "btm_flap_ctrl_srtOffset";
	rename -uid "C52BF594-477B-F3CF-3885-308DD0A3DCC4";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "btm_flap_ctrl";
	rename -uid "78FA2FE6-43FA-65F5-3087-5198F635A0FF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		-3.3306690738754696e-016 -0.39274341820252456 1.3386512805717847
		0.22923951695284844 -0.39274323197124955 1.3386508053020267
		0.46328454197992597 0.00089146265827905191 0.72139826800998275
		0.44244617684501031 0.00089146265827907967 1.1102230246251565e-016
		0.27742541340910298 -0.2092685345646996 8.3266726846886741e-017
		0.18672600388526897 -0.20926853456469788 0.056590439891834987
		0.097382001578807678 -0.20786529266403792 0.13894707727045505
		-0.097382001578807748 -0.20786529266403769 0.13894707727045486
		-0.18030199408531183 -0.20926853456469777 0.056590439891834633
		-0.27742432869405159 -0.2092685345646996 -1.2490009027033011e-016
		-0.44244617684501036 0.00089146265827907967 -2.7755575615628914e-016
		-0.4632845419799263 0.00089146265827905191 0.7213982680099823
		-0.22923951695284955 -0.39274360443379958 1.3386517558415421
		-3.3306690738754696e-016 -0.39274341820252456 1.3386512805717847
		;
createNode transform -n "left_flap_ctrl_srtOffset" -p "control";
	rename -uid "A7AA1EB6-4D5E-76D6-F9A6-53A25FE961B2";
createNode transform -n "left_flap_ctrl" -p "left_flap_ctrl_srtOffset";
	rename -uid "51A14DA7-4B04-659B-8E14-E8BF73EEE23A";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape4" -p "left_flap_ctrl";
	rename -uid "67C875B3-4FC7-973D-48E0-379095689F03";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		1 18 0 no 3
		19 0 1 2 3 4 5 6 7 9 10 11 12 13 14 15 16 17 19 20
		19
		-0.19778534003869908 0.38302465304523747 0.11303206193381649
		-0.19778534003869908 0.38302465304523747 -0.31696839012033312
		-0.19778534003869908 0.38302465304523747 -0.54175170911205017
		-0.17673636686122329 0.38302465304523747 -0.80109477320227795
		-0.12607212758358075 0.38302465304523742 -1.1378783440418918
		-0.041421539291735442 0.38302465304523742 -1.5017248803954031
		0.075851311268487279 0.38302465304523742 -1.8264804665621737
		0.20815914266976387 0.38302465304523736 -2.1602570412335771
		0.61711062154643792 0.38302465304523725 -2.4489286733818174
		0.5207254856941026 0.33720839661250512 -2.2651035038431488
		0.42079266351081818 0.30131818640236285 -2.0224095071123154
		0.28945238292707282 0.25631939988910973 -1.6883483586710497
		0.2005240810600972 0.23132345873411903 -1.381932300453188
		0.11966696409723837 0.21040890772940465 -1.0521644133344705
		0.059972717360013056 0.19748410984464546 -0.75867197572125722
		0.037984528899638118 0.18717751097412402 -0.50140813373043058
		0.026771821759582273 0.18940357751436651 -0.30642018905077301
		0.029627045250533071 0.19059517816626825 -0.060870968828988174
		-0.19778534003869908 0.38302465304523747 0.11303206193381649
		;
createNode transform -n "right_flap_ctrl_srtOffset" -p "control";
	rename -uid "8EFB41A6-4D4E-8F84-62DE-C79E6091D920";
createNode transform -n "right_flap_ctrl" -p "right_flap_ctrl_srtOffset";
	rename -uid "4FE2020A-4CA9-7DD7-C1C8-28873AE19D49";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "right_flap_ctrl";
	rename -uid "57574423-4B68-2941-EE2F-E79EC41B2EE6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		1 18 0 no 3
		19 0 1 2 3 4 5 6 7 9 10 11 12 13 14 15 16 17 19 20
		19
		0.086046270320384616 -0.40534244595001073 -0.11303206193381643
		0.086046270320384477 -0.40534244595001073 0.31696839012033312
		0.08604627032038456 -0.40534244595001073 0.54175170911205006
		0.064997297142908556 -0.40534244595001073 0.80109477320227773
		0.014333057865266008 -0.40534244595001068 1.1378783440418916
		-0.070317530426579608 -0.40534244595001068 1.5017248803954029
		-0.18759038098680225 -0.40534244595001068 1.8264804665621728
		-0.31989821238807881 -0.40534244595001062 2.1602570412335766
		-0.72884969126475285 -0.40534244595001051 2.4489286733818165
		-0.63246455541241742 -0.35952618951727838 2.2651035038431475
		-0.53253173322913261 -0.32363597930713611 2.0224095071123136
		-0.40119145264538775 -0.27863719279388299 1.6883483586710495
		-0.31226315077841243 -0.25364125163889228 1.3819323004531876
		-0.23140603381555333 -0.23272670063417789 1.0521644133344699
		-0.17171178707832749 -0.21980190274941869 0.75867197572125689
		-0.1497235986179527 -0.20949530387889725 0.50140813373043047
		-0.1385108914778968 -0.21172137041913974 0.30642018905077284
		-0.14136611496884752 -0.21291297107104151 0.060870968828988126
		0.086046270320384616 -0.40534244595001073 -0.11303206193381643
		;
createNode transform -n "deform" -p "fourFlapLink_cmpt";
	rename -uid "8C75072F-4ADB-4632-A3F0-9CBBD1656F65";
createNode transform -n "axle_srt" -p "deform";
	rename -uid "2E717B7D-47C3-F14C-C94E-6FB0DE0914B3";
createNode transform -n "hinge_srt" -p "deform";
	rename -uid "3610F882-4A46-FB1E-973B-7A917F83C55A";
createNode transform -n "swivel_srt" -p "deform";
	rename -uid "30D44CBF-42B5-AC9E-DA2D-B099815A032B";
createNode transform -n "top_flap_srt" -p "deform";
	rename -uid "628947DD-4049-5C37-95EF-BCACFBFF1C80";
createNode transform -n "btm_flap_srt" -p "deform";
	rename -uid "6865457C-4287-930F-6C4E-0E9BC9B01BE6";
createNode transform -n "left_flap_srt" -p "deform";
	rename -uid "8458E8EB-4227-B5DC-62FA-E9A16B1BFC68";
createNode transform -n "right_flap_srt" -p "deform";
	rename -uid "19E1F2BC-4517-BD82-F8B4-2890635C5705";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "99438ECA-4BFC-70A3-CE22-F6B9FB1E9272";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "21344AD1-42DB-E5D1-4971-76A2580B4BFF";
createNode displayLayer -n "defaultLayer";
	rename -uid "922BB33E-4724-CD36-A43D-95B0AB693DE9";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2E1EC189-4E96-20FF-4469-9587111BF5C3";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F625866E-432D-03ED-624F-BB9757A3F342";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "5DC01E04-4C40-64AA-B3D4-6389686B2F87";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1069\n                -height 841\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1069\n            -height 841\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n"
		+ "                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 0\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 0\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 27 100 -ps 2 73 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1069\\n    -height 841\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1069\\n    -height 841\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 1 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C4026EC1-4BF2-EF2D-C4D6-52BB6BC33DE8";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 110 -ast 0 -aet 111 ";
	setAttr ".st" 6;
createNode multMatrix -n "matrix_localTo_parent";
	rename -uid "ABB5E3CC-41D4-21A2-B79F-1781E739AA7B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "srt_localTo_parent";
	rename -uid "04B8B629-4D64-2093-E48A-56B3E1677315";
	setAttr ".ot" -type "double3" 3.4507668944527836e-010 3.1767864129506052e-005 -2.0000000000000004 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode quatToEuler -n "rotation_localTo_parent";
	rename -uid "783CC662-4EF1-921D-328E-05A1B34B90C7";
	setAttr ".iro" 5;
createNode composeMatrix -n "hinge_srt_localTo_parent";
	rename -uid "4F93757D-4C90-8EE7-D6FA-758E00D57BC5";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.4507668944527836e-010 3.1767864129506052e-005 -2.0000000000000004 1;
createNode composeMatrix -n "axle_srt_localTo_parent";
	rename -uid "DD3357EB-411A-627F-B667-13B8AEE83740";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.4507668944527836e-010 3.1767864129506052e-005 -2.0000000000000004 1;
createNode composeMatrix -n "swivel_srt_localTo_parent";
	rename -uid "EF8D1C1C-44EF-2FE9-EFC6-1D984F87B97A";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.4507668944527836e-010 3.1767864129506052e-005 -2.0000000000000004 1;
createNode multMatrix -n "swivel_parentMatrix";
	rename -uid "80899F82-49CB-4CEE-FEB2-22A93D80842D";
	setAttr -s 2 ".i";
createNode multMatrix -n "axle_worldMatrix";
	rename -uid "4BB7875E-4335-EE8C-98D6-98AE9F9AB485";
	setAttr -s 2 ".i";
createNode multMatrix -n "hinge_worldMatrix";
	rename -uid "A397E386-412D-6548-5A5B-1086407ED348";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "axle_srt_inWorld";
	rename -uid "13EDD797-4DE3-F2F2-88B4-3ABE482F73FC";
	setAttr ".ot" -type "double3" 3.4507668944527836e-010 16.565331775525312 -5.6897564133008327 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode decomposeMatrix -n "hinge_srt_inWorld";
	rename -uid "457788B9-45CC-85E4-DFCF-3599F70A2B12";
	setAttr ".ot" -type "double3" 3.4507668944527836e-010 16.565331775525312 -5.6897564133008327 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode decomposeMatrix -n "swivel_srt_inWorld";
	rename -uid "59D580EE-43E7-6D4D-B0B9-E38ECA66B6C1";
	setAttr ".ot" -type "double3" 4.5712045260160039e-011 16.565335983775729 -5.4897563653648174 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode multMatrix -n "child_matrix_localTo_swivelParent";
	rename -uid "5B5220D4-4CEC-7BA0-C62D-7FBF09959025";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "child_transform_localTo_swivelParent";
	rename -uid "A53350CC-430E-C1CF-81A3-EDB6CFA4A6A8";
	setAttr ".ot" -type "double3" 4.5712045260160039e-011 4.2082647269126028e-006 -1.7999999523162842 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode composeMatrix -n "swivel_matrix";
	rename -uid "BE41FA84-4129-0E5F-137B-B6B84936CBEF";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.5712045260160039e-011 4.2082647269126028e-006 -1.7999999523162842 1;
createNode inverseMatrix -n "swivel_parentInverseMatrix";
	rename -uid "8DCFC935-41BB-2EE1-1BC4-2B9447101E16";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.4507668944527836e-010 -16.565331775525312 5.6897564133008327 1;
createNode multMatrix -n "swivel_worldMatrix";
	rename -uid "97A0D422-44A4-EEF3-8303-44832AF69B31";
	setAttr -s 3 ".i";
createNode vectorProduct -n "btmFlap_guided_position_localTo_parent";
	rename -uid "A73E87B1-4FB2-C048-CA61-37A4114CE928";
	setAttr ".op" 4;
createNode vectorProduct -n "topFlap_guided_position_localTo_parent";
	rename -uid "993E3F2A-4D31-37D5-1C05-4DAC1438FBC9";
	setAttr ".op" 4;
createNode vectorProduct -n "btmFlap_guided_worldPosition";
	rename -uid "C25F6D76-420B-4D2D-76C5-D69EF724FA02";
	setAttr ".op" 4;
createNode vectorProduct -n "topFlap_guided_worldPosition";
	rename -uid "B7BB2294-448A-CC00-7E0F-8CBB48799F58";
	setAttr ".op" 4;
createNode clamp -n "clamp1";
	rename -uid "362D0D53-4994-1793-3CA5-9C94FDF9001F";
	setAttr ".mn" -type "float3" 0 -9001 -9001 ;
	setAttr ".mx" -type "float3" 9001 9001 9001 ;
createNode clamp -n "clamp2";
	rename -uid "7C4420A1-4F36-B2FE-3B43-87B8DB611F15";
	setAttr ".mn" -type "float3" -9001 -9001 -9001 ;
	setAttr ".mx" -type "float3" 0 9001 9001 ;
createNode multMatrix -n "top_flap_parentMatrix";
	rename -uid "A9B34D8C-4743-034F-7511-60AA3B618F05";
	setAttr -s 2 ".i";
createNode multMatrix -n "btm_flap_parentMatrix";
	rename -uid "B44768E2-4B2E-8CA8-D34B-069A786F703C";
	setAttr -s 2 ".i";
createNode multMatrix -n "left_flap_parentMatrix";
	rename -uid "59EB0375-4F8E-90A7-E53F-30B0C6DCB948";
	setAttr -s 2 ".i";
createNode multMatrix -n "right_flap_parentMatrix";
	rename -uid "C0626714-46FB-C783-EBB4-A5806DD604CC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "top_flap_ctrl_srtOffset_inWorld";
	rename -uid "347B48F4-44A7-A59B-A887-B9AD67C959B7";
	setAttr ".ot" -type "double3" 0.00027799999224953353 16.985956211884815 -4.6923070152600612 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode decomposeMatrix -n "btm_flap_ctrl_srtOffset_inWorld";
	rename -uid "CF60D1BF-4BB4-5225-A662-4AAE72F516CF";
	setAttr ".ot" -type "double3" 0.00027799999224953353 15.962250729401905 -4.9835667808850612 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode decomposeMatrix -n "right_flap_ctrl_srtOffset_inWorld";
	rename -uid "88B89B13-49A8-59D6-B9D1-2E8D584CE4D7";
	setAttr ".ot" -type "double3" -0.64393502473831177 16.463592549165089 -4.8717947204907741 ;
	setAttr ".or" -type "double3" 179.99992488139449 -3.7562292944880576e-005 89.999962437657786 ;
	setAttr ".os" -type "double3" 1 0.99999999999999989 1 ;
createNode decomposeMatrix -n "left_flap_ctrl_srtOffset_inWorld";
	rename -uid "8427495E-4A4E-A476-8D83-BBBEE100C7DD";
	setAttr ".ot" -type "double3" 0.64393448829650879 16.463592549165089 -4.8717951973279323 ;
	setAttr ".or" -type "double3" -3.5855155322881531e-005 3.9270272782034511e-005 -89.999962437249295 ;
	setAttr ".os" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode multMatrix -n "btm_flap_worldMatrix";
	rename -uid "6F9D14FE-4AC1-3079-739F-8FA137F6DF86";
createNode vectorProduct -n "rightFlap_guided_position_localTo_parent";
	rename -uid "9386672C-4052-AE8B-074C-79B3A958D085";
	setAttr -k on ".op" 4;
createNode vectorProduct -n "leftFlap_guided_worldPosition";
	rename -uid "95DB562A-4E52-5FDE-CACF-6DB8F68D2B3C";
	setAttr -k on ".op" 4;
createNode vectorProduct -n "rightFlap_guided_worldPosition";
	rename -uid "6B44FFC8-48C4-E95A-0498-1D8F12C40D20";
	setAttr -k on ".op" 4;
createNode vectorProduct -n "leftFlap_guided_position_localTo_parent";
	rename -uid "5A06AB02-4230-C759-C2F3-4C8286CF6516";
	setAttr -k on ".op" 4;
createNode decomposeMatrix -n "top_flap_srt_inWorld";
	rename -uid "4E94A8A4-4042-4069-E748-6E9EAD7719B8";
	setAttr ".ot" -type "double3" 0.00027799999224953353 16.985956211884815 -4.6923070152600612 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode decomposeMatrix -n "btm_flap_srt_inWorld";
	rename -uid "66F90E80-4DE6-3C6F-9042-77B8FCB5B322";
	setAttr ".ot" -type "double3" 0.00027799999224953353 15.962250729401905 -4.9835667808850612 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode decomposeMatrix -n "left_flap_srt_inWorld";
	rename -uid "C0B6DC81-478D-DDC9-C09E-8080C96F2BF5";
	setAttr ".ot" -type "double3" 0.64393448829650879 16.463592549165089 -4.8717951973279323 ;
	setAttr ".or" -type "double3" -3.5855155322881538e-005 3.9270272782034518e-005 -89.999962437249295 ;
	setAttr ".os" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode decomposeMatrix -n "right_flap_srt_inWorld";
	rename -uid "58221413-440F-F4C5-2B97-ACB5458E9D60";
	setAttr ".ot" -type "double3" -0.64393502473831177 16.463592549165089 -4.8717947204907741 ;
	setAttr ".or" -type "double3" 179.99992488139449 -3.7562292944880576e-005 89.999962437657786 ;
	setAttr ".os" -type "double3" 1 0.99999999999999989 1 ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "B1C3D274-4383-C1DF-DAAE-FC8E88DCB48C";
	setAttr -s 3 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "guides";
	setAttr ".tgi[0].vl" -type "double2" -878.03841660252056 -921.73962876519579 ;
	setAttr ".tgi[0].vh" -type "double2" 2000.1559889663181 775.74909172615162 ;
	setAttr -s 21 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 184.28572082519531;
	setAttr ".tgi[0].ni[0].y" -74.285713195800781;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 1010.3154907226562;
	setAttr ".tgi[0].ni[1].y" 254.79913330078125;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 353.69354248046875;
	setAttr ".tgi[0].ni[2].y" 299.87631225585937;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 412.0777587890625;
	setAttr ".tgi[0].ni[3].y" -448.67852783203125;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 669.55364990234375;
	setAttr ".tgi[0].ni[4].y" 279.86032104492188;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 1018.8008422851562;
	setAttr ".tgi[0].ni[5].y" -443.18222045898437;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -184.60835266113281;
	setAttr ".tgi[0].ni[6].y" 427.97232055664062;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 695.27935791015625;
	setAttr ".tgi[0].ni[7].y" -497.32852172851563;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 324.35986328125;
	setAttr ".tgi[0].ni[8].y" 428.88143920898437;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -511.01010131835938;
	setAttr ".tgi[0].ni[9].y" 426.53244018554687;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 70.702560424804687;
	setAttr ".tgi[0].ni[10].y" 426.99411010742187;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 1121.51220703125;
	setAttr ".tgi[0].ni[11].y" 35.925949096679688;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 789.22998046875;
	setAttr ".tgi[0].ni[12].y" -167.38308715820313;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 808.96868896484375;
	setAttr ".tgi[0].ni[13].y" 8.291712760925293;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 1147.2877197265625;
	setAttr ".tgi[0].ni[14].y" -217.90231323242187;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 461.886474609375;
	setAttr ".tgi[0].ni[15].y" -242.65177917480469;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 492.84591674804687;
	setAttr ".tgi[0].ni[16].y" 71.585403442382812;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1498.1939697265625;
	setAttr ".tgi[0].ni[17].y" -458.951171875;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 1492.03515625;
	setAttr ".tgi[0].ni[18].y" 246.59852600097656;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 1572.35009765625;
	setAttr ".tgi[0].ni[19].y" -214.13763427734375;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 1467.3997802734375;
	setAttr ".tgi[0].ni[20].y" 26.783859252929687;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[1].tn" -type "string" "linkage";
	setAttr ".tgi[1].vl" -type "double2" -1138.0494053274351 -467.85712426617175 ;
	setAttr ".tgi[1].vh" -type "double2" 3191.6207522972604 704.76187675718336 ;
	setAttr -s 33 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 1514.2857666015625;
	setAttr ".tgi[1].ni[0].y" 267.14285278320313;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" 1778.5714111328125;
	setAttr ".tgi[1].ni[1].y" -62.857143402099609;
	setAttr ".tgi[1].ni[1].nvs" 18304;
	setAttr ".tgi[1].ni[2].x" 3508.571533203125;
	setAttr ".tgi[1].ni[2].y" 348.57144165039063;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" 1537.142822265625;
	setAttr ".tgi[1].ni[3].y" 177.14285278320312;
	setAttr ".tgi[1].ni[3].nvs" 18304;
	setAttr ".tgi[1].ni[4].x" 4095.71435546875;
	setAttr ".tgi[1].ni[4].y" -505.71429443359375;
	setAttr ".tgi[1].ni[4].nvs" 18304;
	setAttr ".tgi[1].ni[5].x" 1257.142822265625;
	setAttr ".tgi[1].ni[5].y" 224.28572082519531;
	setAttr ".tgi[1].ni[5].nvs" 18304;
	setAttr ".tgi[1].ni[6].x" 4095.71435546875;
	setAttr ".tgi[1].ni[6].y" -411.42855834960937;
	setAttr ".tgi[1].ni[6].nvs" 18304;
	setAttr ".tgi[1].ni[7].x" 1778.5714111328125;
	setAttr ".tgi[1].ni[7].y" 108.57142639160156;
	setAttr ".tgi[1].ni[7].nvs" 18304;
	setAttr ".tgi[1].ni[8].x" 1000;
	setAttr ".tgi[1].ni[8].y" -32.857143402099609;
	setAttr ".tgi[1].ni[8].nvs" 18304;
	setAttr ".tgi[1].ni[9].x" 2378.571533203125;
	setAttr ".tgi[1].ni[9].y" 108.57142639160156;
	setAttr ".tgi[1].ni[9].nvs" 18304;
	setAttr ".tgi[1].ni[10].x" 3861.428466796875;
	setAttr ".tgi[1].ni[10].y" -600;
	setAttr ".tgi[1].ni[10].nvs" 18304;
	setAttr ".tgi[1].ni[11].x" 442.85714721679687;
	setAttr ".tgi[1].ni[11].y" 52.857143402099609;
	setAttr ".tgi[1].ni[11].nvs" 18304;
	setAttr ".tgi[1].ni[12].x" 3508.571533203125;
	setAttr ".tgi[1].ni[12].y" 262.85714721679687;
	setAttr ".tgi[1].ni[12].nvs" 18304;
	setAttr ".tgi[1].ni[13].x" 3251.428466796875;
	setAttr ".tgi[1].ni[13].y" 177.14285278320312;
	setAttr ".tgi[1].ni[13].nvs" 18304;
	setAttr ".tgi[1].ni[14].x" -177.14285278320312;
	setAttr ".tgi[1].ni[14].y" 48.571430206298828;
	setAttr ".tgi[1].ni[14].nvs" 18304;
	setAttr ".tgi[1].ni[15].x" 4330;
	setAttr ".tgi[1].ni[15].y" -600;
	setAttr ".tgi[1].ni[15].nvs" 18304;
	setAttr ".tgi[1].ni[16].x" 3251.428466796875;
	setAttr ".tgi[1].ni[16].y" 348.57144165039063;
	setAttr ".tgi[1].ni[16].nvs" 18304;
	setAttr ".tgi[1].ni[17].x" 3861.428466796875;
	setAttr ".tgi[1].ni[17].y" -317.14285278320312;
	setAttr ".tgi[1].ni[17].nvs" 18304;
	setAttr ".tgi[1].ni[18].x" 1514.2857666015625;
	setAttr ".tgi[1].ni[18].y" 352.85714721679687;
	setAttr ".tgi[1].ni[18].nvs" 18304;
	setAttr ".tgi[1].ni[19].x" -177.14285278320312;
	setAttr ".tgi[1].ni[19].y" 348.57144165039063;
	setAttr ".tgi[1].ni[19].nvs" 18304;
	setAttr ".tgi[1].ni[20].x" 3861.428466796875;
	setAttr ".tgi[1].ni[20].y" -505.71429443359375;
	setAttr ".tgi[1].ni[20].nvs" 18304;
	setAttr ".tgi[1].ni[21].x" 1257.142822265625;
	setAttr ".tgi[1].ni[21].y" 52.857143402099609;
	setAttr ".tgi[1].ni[21].nvs" 18304;
	setAttr ".tgi[1].ni[22].x" 2994.28564453125;
	setAttr ".tgi[1].ni[22].y" 177.14285278320312;
	setAttr ".tgi[1].ni[22].nvs" 18304;
	setAttr ".tgi[1].ni[23].x" 3508.571533203125;
	setAttr ".tgi[1].ni[23].y" 177.14285278320312;
	setAttr ".tgi[1].ni[23].nvs" 18304;
	setAttr ".tgi[1].ni[24].x" 1257.142822265625;
	setAttr ".tgi[1].ni[24].y" 138.57142639160156;
	setAttr ".tgi[1].ni[24].nvs" 18304;
	setAttr ".tgi[1].ni[25].x" 2726.671630859375;
	setAttr ".tgi[1].ni[25].y" 5.0133519172668457;
	setAttr ".tgi[1].ni[25].nvs" 18304;
	setAttr ".tgi[1].ni[26].x" 4095.71435546875;
	setAttr ".tgi[1].ni[26].y" -600;
	setAttr ".tgi[1].ni[26].nvs" 18304;
	setAttr ".tgi[1].ni[27].x" 2721.428466796875;
	setAttr ".tgi[1].ni[27].y" 108.57142639160156;
	setAttr ".tgi[1].ni[27].nvs" 18304;
	setAttr ".tgi[1].ni[28].x" 3861.428466796875;
	setAttr ".tgi[1].ni[28].y" -411.42855834960937;
	setAttr ".tgi[1].ni[28].nvs" 18304;
	setAttr ".tgi[1].ni[29].x" 742.85711669921875;
	setAttr ".tgi[1].ni[29].y" 52.857143402099609;
	setAttr ".tgi[1].ni[29].nvs" 18304;
	setAttr ".tgi[1].ni[30].x" 4095.71435546875;
	setAttr ".tgi[1].ni[30].y" -317.14285278320312;
	setAttr ".tgi[1].ni[30].nvs" 18304;
	setAttr ".tgi[1].ni[31].x" 2035.7142333984375;
	setAttr ".tgi[1].ni[31].y" 108.57142639160156;
	setAttr ".tgi[1].ni[31].nvs" 18304;
	setAttr ".tgi[1].ni[32].x" 3251.428466796875;
	setAttr ".tgi[1].ni[32].y" 262.85714721679687;
	setAttr ".tgi[1].ni[32].nvs" 18304;
	setAttr ".tgi[2].tn" -type "string" "flaps";
	setAttr ".tgi[2].vl" -type "double2" 817.35162069214311 -1057.3619079060591 ;
	setAttr ".tgi[2].vh" -type "double2" 3188.0613224227309 340.8247366308085 ;
	setAttr -s 30 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" 2592.913330078125;
	setAttr ".tgi[2].ni[0].y" -228.94673156738281;
	setAttr ".tgi[2].ni[0].nvs" 18304;
	setAttr ".tgi[2].ni[1].x" -75.217910766601563;
	setAttr ".tgi[2].ni[1].y" -445.31622314453125;
	setAttr ".tgi[2].ni[1].nvs" 18304;
	setAttr ".tgi[2].ni[2].x" 606.31634521484375;
	setAttr ".tgi[2].ni[2].y" -407.89157104492187;
	setAttr ".tgi[2].ni[2].nvs" 18304;
	setAttr ".tgi[2].ni[3].x" 1070.738037109375;
	setAttr ".tgi[2].ni[3].y" 148.68760681152344;
	setAttr ".tgi[2].ni[3].nvs" 18304;
	setAttr ".tgi[2].ni[4].x" 306.23031616210937;
	setAttr ".tgi[2].ni[4].y" -213.083251953125;
	setAttr ".tgi[2].ni[4].nvs" 18304;
	setAttr ".tgi[2].ni[5].x" 2604.543212890625;
	setAttr ".tgi[2].ni[5].y" 91.046226501464844;
	setAttr ".tgi[2].ni[5].nvs" 18304;
	setAttr ".tgi[2].ni[6].x" 84.635421752929688;
	setAttr ".tgi[2].ni[6].y" -99.77423095703125;
	setAttr ".tgi[2].ni[6].nvs" 18304;
	setAttr ".tgi[2].ni[7].x" 287.74911499023437;
	setAttr ".tgi[2].ni[7].y" 113.33046722412109;
	setAttr ".tgi[2].ni[7].nvs" 18304;
	setAttr ".tgi[2].ni[8].x" 812.86474609375;
	setAttr ".tgi[2].ni[8].y" -49.325149536132812;
	setAttr ".tgi[2].ni[8].nvs" 18304;
	setAttr ".tgi[2].ni[9].x" -560.54608154296875;
	setAttr ".tgi[2].ni[9].y" -41.680271148681641;
	setAttr ".tgi[2].ni[9].nvs" 18304;
	setAttr ".tgi[2].ni[10].x" 2574.716064453125;
	setAttr ".tgi[2].ni[10].y" -430.41421508789062;
	setAttr ".tgi[2].ni[10].nvs" 18304;
	setAttr ".tgi[2].ni[11].x" 598.490234375;
	setAttr ".tgi[2].ni[11].y" -217.84805297851563;
	setAttr ".tgi[2].ni[11].nvs" 18304;
	setAttr ".tgi[2].ni[12].x" 1093.5545654296875;
	setAttr ".tgi[2].ni[12].y" -0.08884904533624649;
	setAttr ".tgi[2].ni[12].nvs" 18304;
	setAttr ".tgi[2].ni[13].x" 2644.082763671875;
	setAttr ".tgi[2].ni[13].y" -67.746665954589844;
	setAttr ".tgi[2].ni[13].nvs" 18304;
	setAttr ".tgi[2].ni[14].x" 49.1251220703125;
	setAttr ".tgi[2].ni[14].y" -274.79840087890625;
	setAttr ".tgi[2].ni[14].nvs" 18304;
	setAttr ".tgi[2].ni[15].x" 299.52731323242187;
	setAttr ".tgi[2].ni[15].y" -395.98687744140625;
	setAttr ".tgi[2].ni[15].nvs" 18304;
	setAttr ".tgi[2].ni[16].x" 311.0047607421875;
	setAttr ".tgi[2].ni[16].y" -40.48236083984375;
	setAttr ".tgi[2].ni[16].nvs" 18304;
	setAttr ".tgi[2].ni[17].x" -34.923805236816406;
	setAttr ".tgi[2].ni[17].y" 186.96688842773437;
	setAttr ".tgi[2].ni[17].nvs" 18304;
	setAttr ".tgi[2].ni[18].x" 1926.0926513671875;
	setAttr ".tgi[2].ni[18].y" 142.89886474609375;
	setAttr ".tgi[2].ni[18].nvs" 18304;
	setAttr ".tgi[2].ni[19].x" 1992.6026611328125;
	setAttr ".tgi[2].ni[19].y" -11.218034744262695;
	setAttr ".tgi[2].ni[19].nvs" 18304;
	setAttr ".tgi[2].ni[20].x" 1982.4254150390625;
	setAttr ".tgi[2].ni[20].y" -142.45372009277344;
	setAttr ".tgi[2].ni[20].nvs" 18304;
	setAttr ".tgi[2].ni[21].x" 2005.3115234375;
	setAttr ".tgi[2].ni[21].y" -359.00216674804687;
	setAttr ".tgi[2].ni[21].nvs" 18304;
	setAttr ".tgi[2].ni[22].x" 1326.3134765625;
	setAttr ".tgi[2].ni[22].y" 120.11203002929687;
	setAttr ".tgi[2].ni[22].nvs" 18304;
	setAttr ".tgi[2].ni[23].x" 1336.6595458984375;
	setAttr ".tgi[2].ni[23].y" -39.818008422851562;
	setAttr ".tgi[2].ni[23].nvs" 18304;
	setAttr ".tgi[2].ni[24].x" 854.07000732421875;
	setAttr ".tgi[2].ni[24].y" -250.09886169433594;
	setAttr ".tgi[2].ni[24].nvs" 18304;
	setAttr ".tgi[2].ni[25].x" 851.8759765625;
	setAttr ".tgi[2].ni[25].y" -476.23263549804687;
	setAttr ".tgi[2].ni[25].nvs" 18304;
	setAttr ".tgi[2].ni[26].x" 2211.104248046875;
	setAttr ".tgi[2].ni[26].y" 132.42694091796875;
	setAttr ".tgi[2].ni[26].nvs" 18304;
	setAttr ".tgi[2].ni[27].x" 2252.48828125;
	setAttr ".tgi[2].ni[27].y" -19.806913375854492;
	setAttr ".tgi[2].ni[27].nvs" 18304;
	setAttr ".tgi[2].ni[28].x" 2208.148193359375;
	setAttr ".tgi[2].ni[28].y" -167.60676574707031;
	setAttr ".tgi[2].ni[28].nvs" 18304;
	setAttr ".tgi[2].ni[29].x" 2255.4443359375;
	setAttr ".tgi[2].ni[29].y" -361.22457885742187;
	setAttr ".tgi[2].ni[29].nvs" 18304;
createNode multMatrix -n "child_matrix_localTo_this";
	rename -uid "1FC39F8B-44FA-C0CC-8596-0DABA2E5BBF2";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "child_srt_localTo_this";
	rename -uid "7CFCC311-4A8F-9915-FEC9-4FA39B7DC309";
	setAttr ".ot" -type "double3" 4.5712045260160039e-011 4.2082647269126028e-006 -1.7999999523162842 ;
select -ne :time1;
	setAttr ".o" 77;
	setAttr ".unw" 77;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 42 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "topFlap_guided_srtOffset.t" "topFlap_srtOffset.t";
connectAttr "topFlap_guided_srtOffset.r" "topFlap_srtOffset.r";
connectAttr "btmFlap_guided_srtOffset.t" "btmFlap_srtOffset.t";
connectAttr "btmFlap_guided_srtOffset.r" "btmFlap_srtOffset.r";
connectAttr "leftFlap_guided_srtOffset.t" "leftFlap_srtOffset.t";
connectAttr "leftFlap_guided_srtOffset.r" "leftFlap_srtOffset.r";
connectAttr "rightFlap_guided_srtOffset.t" "rightFlap_srtOffset.t";
connectAttr "rightFlap_guided_srtOffset.r" "rightFlap_srtOffset.r";
connectAttr "parent_srt.t" "parent_guided_srt.t";
connectAttr "parent_srt.r" "parent_guided_srt.r";
connectAttr "parent_srt.s" "parent_guided_srt.s";
connectAttr "topFlap_guided_position_localTo_parent.o" "topFlap_guided_srtOffset.t"
		;
connectAttr "topFlap_guided_srtOffset_aimConstraint1.crx" "topFlap_guided_srtOffset.rx"
		;
connectAttr "topFlap_guided_srtOffset_aimConstraint1.cry" "topFlap_guided_srtOffset.ry"
		;
connectAttr "topFlap_guided_srtOffset_aimConstraint1.crz" "topFlap_guided_srtOffset.rz"
		;
connectAttr "topFlap_guided_srtOffset.pim" "topFlap_guided_srtOffset_aimConstraint1.cpim"
		;
connectAttr "topFlap_guided_srtOffset.t" "topFlap_guided_srtOffset_aimConstraint1.ct"
		;
connectAttr "topFlap_guided_srtOffset.rp" "topFlap_guided_srtOffset_aimConstraint1.crp"
		;
connectAttr "topFlap_guided_srtOffset.rpt" "topFlap_guided_srtOffset_aimConstraint1.crt"
		;
connectAttr "topFlap_guided_srtOffset.ro" "topFlap_guided_srtOffset_aimConstraint1.cro"
		;
connectAttr "topFlap_guide_aim_srt.t" "topFlap_guided_srtOffset_aimConstraint1.tg[0].tt"
		;
connectAttr "topFlap_guide_aim_srt.rp" "topFlap_guided_srtOffset_aimConstraint1.tg[0].trp"
		;
connectAttr "topFlap_guide_aim_srt.rpt" "topFlap_guided_srtOffset_aimConstraint1.tg[0].trt"
		;
connectAttr "topFlap_guide_aim_srt.pm" "topFlap_guided_srtOffset_aimConstraint1.tg[0].tpm"
		;
connectAttr "topFlap_guided_srtOffset_aimConstraint1.w0" "topFlap_guided_srtOffset_aimConstraint1.tg[0].tw"
		;
connectAttr "topFlap_guide_up_srt.wm" "topFlap_guided_srtOffset_aimConstraint1.wum"
		;
connectAttr "topFlap_guide_srt.aimVector" "topFlap_guided_srtOffset_aimConstraint1.a"
		;
connectAttr "topFlap_guide_srt.upVector" "topFlap_guided_srtOffset_aimConstraint1.u"
		;
connectAttr "btmFlap_guided_position_localTo_parent.o" "btmFlap_guided_srtOffset.t"
		;
connectAttr "btmFlap_guided_srtOffset_aimConstraint1.crx" "btmFlap_guided_srtOffset.rx"
		;
connectAttr "btmFlap_guided_srtOffset_aimConstraint1.cry" "btmFlap_guided_srtOffset.ry"
		;
connectAttr "btmFlap_guided_srtOffset_aimConstraint1.crz" "btmFlap_guided_srtOffset.rz"
		;
connectAttr "btmFlap_guided_srtOffset.pim" "btmFlap_guided_srtOffset_aimConstraint1.cpim"
		;
connectAttr "btmFlap_guided_srtOffset.t" "btmFlap_guided_srtOffset_aimConstraint1.ct"
		;
connectAttr "btmFlap_guided_srtOffset.rp" "btmFlap_guided_srtOffset_aimConstraint1.crp"
		;
connectAttr "btmFlap_guided_srtOffset.rpt" "btmFlap_guided_srtOffset_aimConstraint1.crt"
		;
connectAttr "btmFlap_guided_srtOffset.ro" "btmFlap_guided_srtOffset_aimConstraint1.cro"
		;
connectAttr "btmFlap_guide_aim_srt.t" "btmFlap_guided_srtOffset_aimConstraint1.tg[0].tt"
		;
connectAttr "btmFlap_guide_aim_srt.rp" "btmFlap_guided_srtOffset_aimConstraint1.tg[0].trp"
		;
connectAttr "btmFlap_guide_aim_srt.rpt" "btmFlap_guided_srtOffset_aimConstraint1.tg[0].trt"
		;
connectAttr "btmFlap_guide_aim_srt.pm" "btmFlap_guided_srtOffset_aimConstraint1.tg[0].tpm"
		;
connectAttr "btmFlap_guided_srtOffset_aimConstraint1.w0" "btmFlap_guided_srtOffset_aimConstraint1.tg[0].tw"
		;
connectAttr "btmFlap_guide_up_srt.wm" "btmFlap_guided_srtOffset_aimConstraint1.wum"
		;
connectAttr "btmFlap_guide_srt.aimVector" "btmFlap_guided_srtOffset_aimConstraint1.a"
		;
connectAttr "btmFlap_guide_srt.upVector" "btmFlap_guided_srtOffset_aimConstraint1.u"
		;
connectAttr "leftFlap_guided_position_localTo_parent.o" "leftFlap_guided_srtOffset.t"
		;
connectAttr "leftFlap_guided_srtOffset_aimConstraint1.crx" "leftFlap_guided_srtOffset.rx"
		;
connectAttr "leftFlap_guided_srtOffset_aimConstraint1.cry" "leftFlap_guided_srtOffset.ry"
		;
connectAttr "leftFlap_guided_srtOffset_aimConstraint1.crz" "leftFlap_guided_srtOffset.rz"
		;
connectAttr "leftFlap_guided_srtOffset.pim" "leftFlap_guided_srtOffset_aimConstraint1.cpim"
		;
connectAttr "leftFlap_guided_srtOffset.t" "leftFlap_guided_srtOffset_aimConstraint1.ct"
		;
connectAttr "leftFlap_guided_srtOffset.rp" "leftFlap_guided_srtOffset_aimConstraint1.crp"
		;
connectAttr "leftFlap_guided_srtOffset.rpt" "leftFlap_guided_srtOffset_aimConstraint1.crt"
		;
connectAttr "leftFlap_guided_srtOffset.ro" "leftFlap_guided_srtOffset_aimConstraint1.cro"
		;
connectAttr "leftFlap_guide_aim_srt.t" "leftFlap_guided_srtOffset_aimConstraint1.tg[0].tt"
		;
connectAttr "leftFlap_guide_aim_srt.rp" "leftFlap_guided_srtOffset_aimConstraint1.tg[0].trp"
		;
connectAttr "leftFlap_guide_aim_srt.rpt" "leftFlap_guided_srtOffset_aimConstraint1.tg[0].trt"
		;
connectAttr "leftFlap_guide_aim_srt.pm" "leftFlap_guided_srtOffset_aimConstraint1.tg[0].tpm"
		;
connectAttr "leftFlap_guided_srtOffset_aimConstraint1.w0" "leftFlap_guided_srtOffset_aimConstraint1.tg[0].tw"
		;
connectAttr "leftFlap_guide_up_srt.wm" "leftFlap_guided_srtOffset_aimConstraint1.wum"
		;
connectAttr "leftFlap_guide_srt.aimVector" "leftFlap_guided_srtOffset_aimConstraint1.a"
		;
connectAttr "leftFlap_guide_srt.upVector" "leftFlap_guided_srtOffset_aimConstraint1.u"
		;
connectAttr "rightFlap_guided_position_localTo_parent.o" "rightFlap_guided_srtOffset.t"
		;
connectAttr "rightFlap_guided_srtOffset_aimConstraint1.crx" "rightFlap_guided_srtOffset.rx"
		;
connectAttr "rightFlap_guided_srtOffset_aimConstraint1.cry" "rightFlap_guided_srtOffset.ry"
		;
connectAttr "rightFlap_guided_srtOffset_aimConstraint1.crz" "rightFlap_guided_srtOffset.rz"
		;
connectAttr "rightFlap_guided_srtOffset.pim" "rightFlap_guided_srtOffset_aimConstraint1.cpim"
		;
connectAttr "rightFlap_guided_srtOffset.t" "rightFlap_guided_srtOffset_aimConstraint1.ct"
		;
connectAttr "rightFlap_guided_srtOffset.rp" "rightFlap_guided_srtOffset_aimConstraint1.crp"
		;
connectAttr "rightFlap_guided_srtOffset.rpt" "rightFlap_guided_srtOffset_aimConstraint1.crt"
		;
connectAttr "rightFlap_guided_srtOffset.ro" "rightFlap_guided_srtOffset_aimConstraint1.cro"
		;
connectAttr "rightFlap_guide_aim_srt.t" "rightFlap_guided_srtOffset_aimConstraint1.tg[0].tt"
		;
connectAttr "rightFlap_guide_aim_srt.rp" "rightFlap_guided_srtOffset_aimConstraint1.tg[0].trp"
		;
connectAttr "rightFlap_guide_aim_srt.rpt" "rightFlap_guided_srtOffset_aimConstraint1.tg[0].trt"
		;
connectAttr "rightFlap_guide_aim_srt.pm" "rightFlap_guided_srtOffset_aimConstraint1.tg[0].tpm"
		;
connectAttr "rightFlap_guided_srtOffset_aimConstraint1.w0" "rightFlap_guided_srtOffset_aimConstraint1.tg[0].tw"
		;
connectAttr "rightFlap_guide_up_srt.wm" "rightFlap_guided_srtOffset_aimConstraint1.wum"
		;
connectAttr "rightFlap_guide_srt.aimVector" "rightFlap_guided_srtOffset_aimConstraint1.a"
		;
connectAttr "rightFlap_guide_srt.upVector" "rightFlap_guided_srtOffset_aimConstraint1.u"
		;
connectAttr "this_srt.t" "this_guided_srt.t";
connectAttr "this_srt.r" "this_guided_srt.r";
connectAttr "this_srt.s" "this_guided_srt.s";
connectAttr "child_srt_localTo_this.ot" "|fourFlapLink_cmpt|guided|this_guided_srt|child_srtOffset.t"
		;
connectAttr "child_srt.t" "child_guided_srt.t";
connectAttr "child_srt.r" "child_guided_srt.r";
connectAttr "child_srt.s" "child_guided_srt.s";
connectAttr "top_flap_ctrl_srtOffset_inWorld.ot" "top_flap_ctrl_srtOffset.t";
connectAttr "top_flap_ctrl_srtOffset_inWorld.or" "top_flap_ctrl_srtOffset.r";
connectAttr "top_flap_ctrl_srtOffset_inWorld.os" "top_flap_ctrl_srtOffset.s";
connectAttr "btm_flap_ctrl_srtOffset_inWorld.ot" "btm_flap_ctrl_srtOffset.t";
connectAttr "btm_flap_ctrl_srtOffset_inWorld.or" "btm_flap_ctrl_srtOffset.r";
connectAttr "btm_flap_ctrl_srtOffset_inWorld.os" "btm_flap_ctrl_srtOffset.s";
connectAttr "left_flap_ctrl_srtOffset_inWorld.ot" "left_flap_ctrl_srtOffset.t";
connectAttr "left_flap_ctrl_srtOffset_inWorld.or" "left_flap_ctrl_srtOffset.r";
connectAttr "left_flap_ctrl_srtOffset_inWorld.os" "left_flap_ctrl_srtOffset.s";
connectAttr "right_flap_ctrl_srtOffset_inWorld.ot" "right_flap_ctrl_srtOffset.t"
		;
connectAttr "right_flap_ctrl_srtOffset_inWorld.or" "right_flap_ctrl_srtOffset.r"
		;
connectAttr "right_flap_ctrl_srtOffset_inWorld.os" "right_flap_ctrl_srtOffset.s"
		;
connectAttr "axle_srt_inWorld.ot" "axle_srt.t";
connectAttr "axle_srt_inWorld.or" "axle_srt.r";
connectAttr "axle_srt_inWorld.os" "axle_srt.s";
connectAttr "hinge_srt_inWorld.ot" "hinge_srt.t";
connectAttr "hinge_srt_inWorld.or" "hinge_srt.r";
connectAttr "hinge_srt_inWorld.os" "hinge_srt.s";
connectAttr "swivel_srt_inWorld.ot" "swivel_srt.t";
connectAttr "swivel_srt_inWorld.or" "swivel_srt.r";
connectAttr "swivel_srt_inWorld.os" "swivel_srt.s";
connectAttr "top_flap_srt_inWorld.ot" "top_flap_srt.t";
connectAttr "top_flap_srt_inWorld.or" "top_flap_srt.r";
connectAttr "top_flap_srt_inWorld.os" "top_flap_srt.s";
connectAttr "btm_flap_srt_inWorld.ot" "btm_flap_srt.t";
connectAttr "btm_flap_srt_inWorld.or" "btm_flap_srt.r";
connectAttr "btm_flap_srt_inWorld.os" "btm_flap_srt.s";
connectAttr "left_flap_srt_inWorld.ot" "left_flap_srt.t";
connectAttr "left_flap_srt_inWorld.or" "left_flap_srt.r";
connectAttr "left_flap_srt_inWorld.os" "left_flap_srt.s";
connectAttr "right_flap_srt_inWorld.ot" "right_flap_srt.t";
connectAttr "right_flap_srt_inWorld.or" "right_flap_srt.r";
connectAttr "right_flap_srt_inWorld.os" "right_flap_srt.s";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "this_srt.wm" "matrix_localTo_parent.i[0]";
connectAttr "parent_srt.wim" "matrix_localTo_parent.i[1]";
connectAttr "matrix_localTo_parent.o" "srt_localTo_parent.imat";
connectAttr "srt_localTo_parent.oq" "rotation_localTo_parent.iq";
connectAttr "rotation_localTo_parent.iro" "hinge_srt_localTo_parent.ro";
connectAttr "rotation_localTo_parent.orx" "hinge_srt_localTo_parent.irx";
connectAttr "rotation_localTo_parent.ory" "hinge_srt_localTo_parent.iry";
connectAttr "srt_localTo_parent.ot" "hinge_srt_localTo_parent.it";
connectAttr "rotation_localTo_parent.iro" "axle_srt_localTo_parent.ro";
connectAttr "rotation_localTo_parent.orx" "axle_srt_localTo_parent.irx";
connectAttr "srt_localTo_parent.ot" "axle_srt_localTo_parent.it";
connectAttr "rotation_localTo_parent.iro" "swivel_srt_localTo_parent.ro";
connectAttr "rotation_localTo_parent.orx" "swivel_srt_localTo_parent.irx";
connectAttr "rotation_localTo_parent.ory" "swivel_srt_localTo_parent.iry";
connectAttr "rotation_localTo_parent.orz" "swivel_srt_localTo_parent.irz";
connectAttr "srt_localTo_parent.ot" "swivel_srt_localTo_parent.it";
connectAttr "swivel_srt_localTo_parent.omat" "swivel_parentMatrix.i[0]";
connectAttr "parent_srt.wm" "swivel_parentMatrix.i[1]";
connectAttr "axle_srt_localTo_parent.omat" "axle_worldMatrix.i[0]";
connectAttr "parent_srt.wm" "axle_worldMatrix.i[1]";
connectAttr "hinge_srt_localTo_parent.omat" "hinge_worldMatrix.i[0]";
connectAttr "parent_srt.wm" "hinge_worldMatrix.i[1]";
connectAttr "axle_worldMatrix.o" "axle_srt_inWorld.imat";
connectAttr "hinge_worldMatrix.o" "hinge_srt_inWorld.imat";
connectAttr "swivel_worldMatrix.o" "swivel_srt_inWorld.imat";
connectAttr "child_srt.wm" "child_matrix_localTo_swivelParent.i[1]";
connectAttr "swivel_parentInverseMatrix.omat" "child_matrix_localTo_swivelParent.i[2]"
		;
connectAttr "child_matrix_localTo_swivelParent.o" "child_transform_localTo_swivelParent.imat"
		;
connectAttr "child_transform_localTo_swivelParent.ot" "swivel_matrix.it";
connectAttr "swivel_parentMatrix.o" "swivel_parentInverseMatrix.imat";
connectAttr "|fourFlapLink_cmpt|input|this_srt|child_srtOffset.im" "swivel_worldMatrix.i[0]"
		;
connectAttr "swivel_matrix.omat" "swivel_worldMatrix.i[1]";
connectAttr "swivel_parentMatrix.o" "swivel_worldMatrix.i[2]";
connectAttr "btmFlap_guided_worldPosition.o" "btmFlap_guided_position_localTo_parent.i1"
		;
connectAttr "parent_guided_srt.wim" "btmFlap_guided_position_localTo_parent.m";
connectAttr "topFlap_guided_worldPosition.o" "topFlap_guided_position_localTo_parent.i1"
		;
connectAttr "parent_guided_srt.wim" "topFlap_guided_position_localTo_parent.m";
connectAttr "btmFlap_guide_srt.wm" "btmFlap_guided_worldPosition.m";
connectAttr "topFlap_guide_srt.wm" "topFlap_guided_worldPosition.m";
connectAttr "topFlap_srtOffset.m" "top_flap_parentMatrix.i[0]";
connectAttr "parent_srt.wm" "top_flap_parentMatrix.i[1]";
connectAttr "btmFlap_srtOffset.m" "btm_flap_parentMatrix.i[0]";
connectAttr "parent_srt.wm" "btm_flap_parentMatrix.i[1]";
connectAttr "leftFlap_srtOffset.m" "left_flap_parentMatrix.i[0]";
connectAttr "parent_srt.wm" "left_flap_parentMatrix.i[1]";
connectAttr "rightFlap_srtOffset.m" "right_flap_parentMatrix.i[0]";
connectAttr "parent_srt.wm" "right_flap_parentMatrix.i[1]";
connectAttr "top_flap_parentMatrix.o" "top_flap_ctrl_srtOffset_inWorld.imat";
connectAttr "btm_flap_parentMatrix.o" "btm_flap_ctrl_srtOffset_inWorld.imat";
connectAttr "right_flap_parentMatrix.o" "right_flap_ctrl_srtOffset_inWorld.imat"
		;
connectAttr "left_flap_parentMatrix.o" "left_flap_ctrl_srtOffset_inWorld.imat";
connectAttr "btm_flap_parentMatrix.o" "btm_flap_worldMatrix.i[1]";
connectAttr "parent_guided_srt.wim" "rightFlap_guided_position_localTo_parent.m"
		;
connectAttr "rightFlap_guided_worldPosition.o" "rightFlap_guided_position_localTo_parent.i1"
		;
connectAttr "leftFlap_guide_srt.wm" "leftFlap_guided_worldPosition.m";
connectAttr "rightFlap_guide_srt.wm" "rightFlap_guided_worldPosition.m";
connectAttr "parent_guided_srt.wim" "leftFlap_guided_position_localTo_parent.m";
connectAttr "leftFlap_guided_worldPosition.o" "leftFlap_guided_position_localTo_parent.i1"
		;
connectAttr "top_flap_ctrl.wm" "top_flap_srt_inWorld.imat";
connectAttr "btm_flap_ctrl.wm" "btm_flap_srt_inWorld.imat";
connectAttr "left_flap_ctrl.wm" "left_flap_srt_inWorld.imat";
connectAttr "right_flap_ctrl.wm" "right_flap_srt_inWorld.imat";
connectAttr "parent_guided_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "btmFlap_guided_position_localTo_parent.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "btmFlap_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "topFlap_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "btmFlap_guided_worldPosition.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "topFlap_guided_position_localTo_parent.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "child_matrix_localTo_this.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "topFlap_guided_worldPosition.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "|fourFlapLink_cmpt|guided|this_guided_srt|child_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "this_guided_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "child_srt_localTo_this.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "rightFlap_guided_position_localTo_parent.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "leftFlap_guided_worldPosition.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "rightFlap_guided_worldPosition.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "leftFlap_guided_position_localTo_parent.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "leftFlap_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "rightFlap_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "topFlap_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "btmFlap_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "leftFlap_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "rightFlap_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "hinge_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "child_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn";
connectAttr "axle_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn";
connectAttr "swivel_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "axle_srt_localTo_parent.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "swivel_parentInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "rotation_localTo_parent.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "child_transform_localTo_swivelParent.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "matrix_localTo_parent.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[11].dn"
		;
connectAttr "hinge_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[12].dn";
connectAttr "swivel_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[13].dn"
		;
connectAttr "this_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[14].dn";
connectAttr "axle_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[16].dn"
		;
connectAttr "axle_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[18].dn"
		;
connectAttr "parent_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[19].dn";
connectAttr "swivel_srt_localTo_parent.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[21].dn"
		;
connectAttr "swivel_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[22].dn"
		;
connectAttr "swivel_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[23].dn";
connectAttr "hinge_srt_localTo_parent.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[24].dn"
		;
connectAttr "|fourFlapLink_cmpt|input|this_srt|child_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[25].dn"
		;
connectAttr "swivel_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[27].dn";
connectAttr "srt_localTo_parent.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[29].dn"
		;
connectAttr "child_matrix_localTo_swivelParent.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[31].dn"
		;
connectAttr "hinge_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[32].dn"
		;
connectAttr "left_flap_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[0].dn";
connectAttr "rightFlap_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "right_flap_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "top_flap_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[3].dn"
		;
connectAttr "left_flap_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[4].dn"
		;
connectAttr "top_flap_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[5].dn";
connectAttr "btmFlap_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[6].dn"
		;
connectAttr "top_flap_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[7].dn"
		;
connectAttr "btm_flap_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[8].dn"
		;
connectAttr "parent_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[9].dn";
connectAttr "right_flap_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[10].dn";
connectAttr "left_flap_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[11].dn"
		;
connectAttr "btm_flap_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[12].dn"
		;
connectAttr "btm_flap_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[13].dn";
connectAttr "leftFlap_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[14].dn"
		;
connectAttr "right_flap_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[15].dn"
		;
connectAttr "btm_flap_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[16].dn"
		;
connectAttr "topFlap_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[17].dn"
		;
connectAttr "top_flap_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[18].dn";
connectAttr "btm_flap_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[19].dn";
connectAttr "left_flap_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[20].dn";
connectAttr "right_flap_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[21].dn"
		;
connectAttr "top_flap_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[22].dn"
		;
connectAttr "btm_flap_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[23].dn"
		;
connectAttr "left_flap_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[24].dn"
		;
connectAttr "right_flap_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[25].dn"
		;
connectAttr "top_flap_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[26].dn"
		;
connectAttr "btm_flap_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[27].dn"
		;
connectAttr "left_flap_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[28].dn"
		;
connectAttr "right_flap_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[29].dn"
		;
connectAttr "child_guided_srt.wm" "child_matrix_localTo_this.i[0]";
connectAttr "this_guided_srt.wim" "child_matrix_localTo_this.i[1]";
connectAttr "child_matrix_localTo_this.o" "child_srt_localTo_this.imat";
connectAttr "matrix_localTo_parent.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "srt_localTo_parent.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rotation_localTo_parent.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hinge_srt_localTo_parent.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "axle_srt_localTo_parent.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "swivel_srt_localTo_parent.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "swivel_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "axle_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hinge_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "axle_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hinge_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "swivel_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "child_matrix_localTo_swivelParent.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "child_transform_localTo_swivelParent.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "swivel_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "swivel_parentInverseMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "swivel_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "child_matrix_localTo_this.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "child_srt_localTo_this.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "btmFlap_guided_position_localTo_parent.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "topFlap_guided_position_localTo_parent.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "btmFlap_guided_worldPosition.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "topFlap_guided_worldPosition.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "clamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "clamp2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "top_flap_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "btm_flap_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "left_flap_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "right_flap_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "top_flap_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "btm_flap_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "right_flap_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "left_flap_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "btm_flap_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rightFlap_guided_position_localTo_parent.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leftFlap_guided_worldPosition.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "rightFlap_guided_worldPosition.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "leftFlap_guided_position_localTo_parent.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "top_flap_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "btm_flap_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "left_flap_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "right_flap_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of fourFlapLink.ma

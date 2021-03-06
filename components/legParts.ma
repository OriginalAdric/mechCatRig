//Maya ASCII 2016 scene
//Name: legParts.ma
//Last modified: Sat, Jun 16, 2018 01:08:18 PM
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
	setAttr ".t" -type "double3" 19.881554282320696 9.8467080490478747 33.86212912488768 ;
	setAttr ".r" -type "double3" -5.138349578297551 -7873.4000000008527 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "01094DA5-418A-91BA-AAEA-C29A88918CEB";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 25.545956075368974;
	setAttr ".ncp" 0.01;
	setAttr ".fcp" 1000;
	setAttr ".coi" 31.322935066610338;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 4.4999998807907096 4.8432892560958862 13.306610722541441 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A3757C1B-4368-E3FC-40DD-0FAE0CD33AD4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.1263234019279462 103.3806819144145 7.734394980439526 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "75858DB8-4465-9D67-6547-66AC47F890F7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 4.9796885318041868;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "1923CF4C-4811-C14F-5F11-E4A2E22BA347";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.2115409466360756 6.6702001979420258 105.09583392504325 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "AC477CAD-4120-C2E3-CE80-7D900BFF1E75";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 10.811930612081559;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "8723419B-4AC5-F875-88E3-48B503E7BEA8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 110.0314414302503 3.4076536625069997 13.510779676265491 ;
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
	setAttr ".rp" -type "double3" 0 0 -1.4210854715202004e-014 ;
	setAttr ".rpt" -type "double3" -1.421085471520201e-014 0 1.4210854715202019e-014 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "950758FD-468D-2068-74AC-BCAF91A18C89";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000008;
	setAttr ".ow" 13.048360228697295;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "legParts_cmpt";
	rename -uid "DB550280-46BE-9C97-9F5B-DCA5E21FB28E";
createNode transform -n "input" -p "legParts_cmpt";
	rename -uid "8560D035-4468-6F82-98E9-D69464F98866";
createNode transform -n "shoulder_srt" -p "input";
	rename -uid "B24CF460-4FF6-5BB1-207B-119248DD142E";
	setAttr ".t" -type "double3" -4.5 14.629999995231628 6.7500000000000009 ;
	setAttr ".r" -type "double3" -180 0 0 ;
createNode transform -n "hip_srt" -p "input";
	rename -uid "41593809-4A8D-F4FE-91B6-9CBF7F9EF5D6";
	setAttr ".t" -type "double3" -4.5 14.629999995231628 6.7500000000000009 ;
	setAttr ".r" -type "double3" -180 0 0 ;
createNode transform -n "hipHinge_srtOffset" -p "hip_srt";
	rename -uid "0494C5EB-495A-88B6-DC53-48BB875B52D2";
createNode transform -n "hipSwivel_srtOffset" -p "hipHinge_srtOffset";
	rename -uid "57300000-405E-EF2C-0DC7-63A9F684CB11";
createNode transform -n "hipAxle_srtOffset" -p "hipSwivel_srtOffset";
	rename -uid "CE7CF9BC-4EF9-E20A-20E2-FC90696CEFFB";
createNode transform -n "kneeSwivel_base_srtOffset" -p "hipAxle_srtOffset";
	rename -uid "7B506343-499F-4757-BCAA-B5B314D6B69F";
createNode transform -n "kneeSwivel_worldUpObject" -p "hipSwivel_srtOffset";
	rename -uid "6FD0B697-4C45-69B0-B97C-0680DA9A0D94";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "knee_srt" -p "input";
	rename -uid "61B29A2A-4423-A1BD-A0F1-0EBA4B855ABE";
	setAttr ".t" -type "double3" -4.5 4.8432892560958862 8.2718186378478986 ;
	setAttr ".r" -type "double3" -180 0 0 ;
createNode transform -n "kneeAxle_srtOffset" -p "knee_srt";
	rename -uid "ED39F8B9-488F-1F34-7354-EE9FA74C475F";
createNode transform -n "kneeHinge_srtOffset" -p "kneeAxle_srtOffset";
	rename -uid "024F4BE2-430D-6A84-4B00-6293032D981F";
createNode transform -n "ankleAxle_worldUpObject" -p "kneeAxle_srtOffset";
	rename -uid "6A09DFEB-46B9-C3CF-BA17-D4A1ECCBF070";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "kneeSwivel_end_srtOffset" -p "knee_srt";
	rename -uid "64D1A1B8-4F33-113C-3909-2C8A834B85F0";
createNode transform -n "ankle_srt" -p "input";
	rename -uid "382EBF80-4AD1-D3F2-F182-82A6BB260226";
	setAttr ".t" -type "double3" -4.5 4.155896278155006 15.331996277834573 ;
	setAttr ".r" -type "double3" -180 0 0 ;
createNode transform -n "kneeAxle_worldUpObject" -p "ankle_srt";
	rename -uid "590A8338-4DB1-BA5B-FA40-F8B21371BAF0";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "ankleSwivel_srtOffset" -p "ankle_srt";
	rename -uid "C6DC58EF-4DB1-43B4-6BB2-FE925A70FEA7";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "legEnd_srtOffset" -p "ankleSwivel_srtOffset";
	rename -uid "505C582B-449F-BFCE-E214-90BA783A9754";
createNode transform -n "footAxle_worldUpObject" -p "ankle_srt";
	rename -uid "0EB73D81-42A7-C523-E5D8-3A85DA179743";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "foot_srt" -p "input";
	rename -uid "B453CF94-4B46-2F39-4929-7DB5F1BAA825";
	setAttr ".t" -type "double3" -4.5 1.2687521773430808 15.34678085234324 ;
	setAttr ".r" -type "double3" -180 0 0 ;
createNode transform -n "footHinge_srtOffset" -p "foot_srt";
	rename -uid "9834CC14-4724-3A0B-7644-B48110A655E5";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "ankleAxle_srtOffset" -p "footHinge_srtOffset";
	rename -uid "353076AB-48F8-5DEA-323A-6CB13D2698C7";
	addAttr -ci true -sn "aimVector" -ln "aimVector" -at "double3" -nc 3;
	addAttr -ci true -sn "aimVectorX" -ln "aimVectorX" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorY" -ln "aimVectorY" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorZ" -ln "aimVectorZ" -at "double" -p "aimVector";
	setAttr -k on ".aimVector";
	setAttr -k on ".aimVectorX";
	setAttr -k on ".aimVectorY";
	setAttr -k on ".aimVectorZ";
createNode transform -n "footAxle_srtOffset" -p "foot_srt";
	rename -uid "E2772FA4-4DB6-F60A-41A3-308398FB8291";
createNode transform -n "guided" -p "legParts_cmpt";
	rename -uid "82E4ECE0-437A-6C3F-E2C2-2FB54ABB22EB";
createNode transform -n "shoulder_guided_srt" -p "guided";
	rename -uid "43EBFA70-4682-2D35-CE1C-DA97E88B9AAC";
createNode transform -n "hip_guided_srt" -p "guided";
	rename -uid "7DA9C1A2-471A-2EA1-0FB7-FBA1E2E3A86D";
createNode transform -n "hipHinge_guided_srtOffset" -p "hip_guided_srt";
	rename -uid "23E9A906-484B-BAE4-26CB-079B18B3C05B";
createNode transform -n "hipSwivel_guided_srtOffset" -p "hipHinge_guided_srtOffset";
	rename -uid "C2423B43-4CBD-C082-50EC-CCB72264A9FD";
createNode transform -n "hipAxle_guided_srtOffset" -p "hipSwivel_guided_srtOffset";
	rename -uid "9913251C-4358-7595-2F2D-8ABA2C74355C";
createNode transform -n "kneeSwivel_base_guided_srtOffset" -p "hipAxle_guided_srtOffset";
	rename -uid "6BA419C7-406D-FEC6-8EDA-91A8A88C0ACA";
createNode transform -n "kneeSwivel_guided_worldUpObject" -p "hipSwivel_guided_srtOffset";
	rename -uid "8ECC573E-4C69-FF66-F128-D0BAC0C747B6";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "knee_guided_srt" -p "guided";
	rename -uid "549F6E6A-418D-D548-9DDE-9D901973E887";
createNode transform -n "kneeAxle_guided_srtOffset" -p "knee_guided_srt";
	rename -uid "69F32475-4A50-31C8-39B0-45B866D4EBE2";
createNode transform -n "kneeHinge_guided_srtOffset" -p "kneeAxle_guided_srtOffset";
	rename -uid "13B75A48-46D1-E5E2-6C40-16916D132E86";
createNode transform -n "ankleAxle_guided_worldUpObject" -p "kneeAxle_guided_srtOffset";
	rename -uid "E9B18521-4F5A-7D16-9138-80958A908659";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "kneeSwivel_end_guided_srtOffset" -p "knee_guided_srt";
	rename -uid "BCDCC341-4254-9426-54DA-10A6E770186B";
	setAttr ".oclr" -type "float3" 0 7.7100449 -0.94260788 ;
createNode transform -n "ankle_guided_srt" -p "guided";
	rename -uid "2735A25D-45AC-FDCE-F9A6-EF87926C6A58";
createNode transform -n "kneeAxle_guided_worldUpObject" -p "ankle_guided_srt";
	rename -uid "A9328FB0-4092-C77C-0319-4288AFDC5F30";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "ankleSwivel_guided_srtOffset" -p "ankle_guided_srt";
	rename -uid "BA39C680-437A-CD2F-4019-AE853DA00D33";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "legEnd_guided_srtOffset" -p "ankleSwivel_guided_srtOffset";
	rename -uid "A7C470A9-423A-8EB7-4CDA-28BC2CC0872E";
createNode transform -n "footAxle_guided_worldUpObject" -p "ankle_guided_srt";
	rename -uid "253634AF-4054-6C0E-D575-C6BC67DE7803";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "foot_guided_srt" -p "guided";
	rename -uid "B4AAABEC-422B-9B07-F128-5489D3E730FF";
createNode transform -n "footHinge_guided_srtOffset" -p "foot_guided_srt";
	rename -uid "269F33B1-4CDD-E5A0-5629-ADB9A557AE29";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "ankleAxle_guided_srtOffset" -p "footHinge_guided_srtOffset";
	rename -uid "4B658E9A-4C2D-AFF2-58F3-A2ACCCBE51E4";
	addAttr -ci true -sn "aimVector" -ln "aimVector" -at "double3" -nc 3;
	addAttr -ci true -sn "aimVectorX" -ln "aimVectorX" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorY" -ln "aimVectorY" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorZ" -ln "aimVectorZ" -at "double" -p "aimVector";
	setAttr -k on ".aimVector";
	setAttr -k on ".aimVectorX";
	setAttr -k on ".aimVectorY";
	setAttr -k on ".aimVectorZ";
createNode transform -n "footAxle_guided_srtOffset" -p "foot_guided_srt";
	rename -uid "5FDC20E9-4A53-FAA3-77D1-0E80823A2127";
createNode transform -n "guides" -p "legParts_cmpt";
	rename -uid "B32513AE-446B-7235-1A8A-5788C2F71A08";
createNode transform -n "hipHinge_guide_srt" -p "guides";
	rename -uid "52ACDE63-4AE2-99DE-4B38-CA9EA4B37860";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.5 14.629999995231628 6.75 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "hipHinge_guide_srt";
	rename -uid "E3FE3CB7-434F-C4A1-A6F2-06A50B3A5868";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		1 0 0
		0 0 1
		-1 0 0
		0 0 -1
		1 0 0
		0 1 0
		-1 0 0
		0 -1 0
		1 0 0
		0 0 1
		0 -1 0
		0 0 -1
		0 1 0
		0 0 1
		;
createNode transform -n "hipSwivel_guide_srt" -p "guides";
	rename -uid "6E9DF678-4EDB-FA9C-9EF6-27ACE909D44E";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.5 13.737309451103211 6.75 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "hipSwivel_guide_srt";
	rename -uid "36434341-44AB-ACFF-C1CC-E6B4761275EB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		1 0 0
		0 0 1
		-1 0 0
		0 0 -1
		1 0 0
		0 1 0
		-1 0 0
		0 -1 0
		1 0 0
		0 0 1
		0 -1 0
		0 0 -1
		0 1 0
		0 0 1
		;
createNode transform -n "hipAxle_guide_srt" -p "guides";
	rename -uid "F03FFE7E-42B4-103B-63F3-1B9042705254";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.5 12.55333384990692 7.3292103886604307 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "hipAxle_guide_srt";
	rename -uid "E5462226-435F-4869-E144-0D8417838A4B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		1 0 0
		0 0 1
		-1 0 0
		0 0 -1
		1 0 0
		0 1 0
		-1 0 0
		0 -1 0
		1 0 0
		0 0 1
		0 -1 0
		0 0 -1
		0 1 0
		0 0 1
		;
createNode transform -n "kneeSwivel_guide_srt" -p "guides";
	rename -uid "C76212F4-4FB6-9C32-609E-E3862E4068A2";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.5 8.6854143111943394 7.8020653863131235 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "kneeSwivel_guide_srt";
	rename -uid "12E44F22-411C-AD67-5008-E1A8811C35F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		1 0 0
		0 0 1
		-1 0 0
		0 0 -1
		1 0 0
		0 1 0
		-1 0 0
		0 -1 0
		1 0 0
		0 0 1
		0 -1 0
		0 0 -1
		0 1 0
		0 0 1
		;
createNode transform -n "kneeAxle_guide_srt" -p "guides";
	rename -uid "44167C1F-4593-3322-01EC-C3AD8A2B4988";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.5 4.8432892560958862 8.2718186378478986 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "kneeAxle_guide_srt";
	rename -uid "B4804682-434E-CD04-E81A-04B0AF612581";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		1 0 0
		0 0 1
		-1 0 0
		0 0 -1
		1 0 0
		0 1 0
		-1 0 0
		0 -1 0
		1 0 0
		0 0 1
		0 -1 0
		0 0 -1
		0 1 0
		0 0 1
		;
createNode transform -n "kneeHinge_guide_srt" -p "guides";
	rename -uid "1E37568E-47BA-A098-7226-66881828F5F6";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.5 4.8432892464993182 9.4614768035412364 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "kneeHinge_guide_srt";
	rename -uid "14449CE4-4564-FD56-A608-AF907FDF5C7A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		1 0 0
		0 0 1
		-1 0 0
		0 0 -1
		1 0 0
		0 1 0
		-1 0 0
		0 -1 0
		1 0 0
		0 0 1
		0 -1 0
		0 0 -1
		0 1 0
		0 0 1
		;
createNode transform -n "ankleSwivel_guide_srt" -p "guides";
	rename -uid "98B4D30A-49A1-BAA6-684F-F09AAD383A86";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.5 4.8432892560958862 13.306610722541441 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "ankleSwivel_guide_srt";
	rename -uid "331EB972-48D8-6A59-2B36-BF916C0D40B4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		1 0 0
		0 0 1
		-1 0 0
		0 0 -1
		1 0 0
		0 1 0
		-1 0 0
		0 -1 0
		1 0 0
		0 0 1
		0 -1 0
		0 0 -1
		0 1 0
		0 0 1
		;
createNode transform -n "ankleAxle_guide_srt" -p "guides";
	rename -uid "7E0C0641-46D2-DBB7-7E47-33B1A2B4771A";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.5 4.155896278155006 15.331573659525088 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "ankleAxle_guide_srt";
	rename -uid "D9A330EA-40EE-3B7E-7277-F79729307EB3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		1 0 0
		0 0 1
		-1 0 0
		0 0 -1
		1 0 0
		0 1 0
		-1 0 0
		0 -1 0
		1 0 0
		0 0 1
		0 -1 0
		0 0 -1
		0 1 0
		0 0 1
		;
createNode transform -n "footHinge_guide_srt" -p "guides";
	rename -uid "E6EA6169-4D65-9BAB-4263-54866CF8ADA8";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.5 1.7276144326549947 15.374646918336309 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "footHinge_guide_srt";
	rename -uid "981CC20E-49AC-D705-0027-34B30B7849EB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		1 0 0
		0 0 1
		-1 0 0
		0 0 -1
		1 0 0
		0 1 0
		-1 0 0
		0 -1 0
		1 0 0
		0 0 1
		0 -1 0
		0 0 -1
		0 1 0
		0 0 1
		;
createNode transform -n "footAxle_guide_srt" -p "guides";
	rename -uid "FB0F2F13-4118-6058-C125-C09E342B2E10";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.5 1.2687521773430808 15.34678085234324 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape2" -p "footAxle_guide_srt";
	rename -uid "813472CE-4138-D315-9FE8-1AA54BEC8C79";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		1 0 0
		0 0 1
		-1 0 0
		0 0 -1
		1 0 0
		0 1 0
		-1 0 0
		0 -1 0
		1 0 0
		0 0 1
		0 -1 0
		0 0 -1
		0 1 0
		0 0 1
		;
createNode transform -n "internal" -p "legParts_cmpt";
	rename -uid "6BB4EDE8-40A0-A41B-BBCB-99855A5576F4";
createNode aimConstraint -n "ankleAxle_aimConstraint" -p "internal";
	rename -uid "14652B90-4494-F6F2-98A9-4892ACCFBF6C";
	setAttr ".s" -type "double3" 1 1.0000000001426106 1.0000000001426106 ;
	setAttr ".wut" 1;
createNode aimConstraint -n "ankleSwivel_aimConstraint" -p "internal";
	rename -uid "DE1B694C-4B5C-03F8-9F19-9DA9CF5F6CB3";
	setAttr ".s" -type "double3" 1 1.0000000000052784 1.0000000000052784 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
createNode aimConstraint -n "kneeAxle_aimConstraint1" -p "internal";
	rename -uid "DF9ED7A5-4334-470C-A700-9C961EE983CB";
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
createNode aimConstraint -n "kneeSwivel_aimConstraint" -p "internal";
	rename -uid "623EBD71-4448-4760-0668-ACA981A4A5ED";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".wut" 1;
createNode aimConstraint -n "footAxle_aimConstraint" -p "internal";
	rename -uid "16CAB48F-47A9-FFCB-104B-E286A871E009";
	setAttr ".wut" 1;
createNode aimConstraint -n "footHinge_aimConstraint" -p "internal";
	rename -uid "FE012181-48BC-080F-7962-A4922714680F";
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
createNode transform -n "deform" -p "legParts_cmpt";
	rename -uid "719D7F52-4A21-A9D0-F80E-AEA8790E3127";
createNode transform -n "footAxle_srt" -p "deform";
	rename -uid "7CB0A467-4099-BC30-2638-D1BC98702233";
	setAttr ".dla" yes;
createNode transform -n "footHinge_srt" -p "deform";
	rename -uid "150E14C6-4F20-E171-2C26-51ABCD087DD7";
	setAttr ".dla" yes;
createNode transform -n "footSwivel_srt" -p "deform";
	rename -uid "BB35EF1F-47F0-68D4-60E0-7B93FA607A6A";
	setAttr ".dla" yes;
createNode transform -n "ankleAxle_srt" -p "deform";
	rename -uid "B3190DAC-49EC-F6E9-A143-A5B225CE5D54";
	setAttr ".dla" yes;
createNode transform -n "ankleSwivel_srt" -p "deform";
	rename -uid "8F292A23-4BEA-D632-2007-CF81DF025FE6";
	setAttr ".dla" yes;
createNode transform -n "kneeHinge_end_srt" -p "deform";
	rename -uid "6912A79D-4EDB-3B3C-E977-23BE268FA853";
	setAttr ".dla" yes;
createNode transform -n "kneeHinge_base_srt" -p "deform";
	rename -uid "9BC79A97-4393-D42E-6146-969BA977AE7A";
	setAttr ".dla" yes;
createNode transform -n "kneeAxle_srt" -p "deform";
	rename -uid "2167CB52-412E-9CC4-AEFA-E99DB687E19F";
	setAttr ".dla" yes;
createNode transform -n "kneeSwivel_end_srt" -p "deform";
	rename -uid "89E37F0C-4116-F250-A17C-B190CBA6E78F";
	setAttr ".dla" yes;
createNode transform -n "kneeSwivel_base_srt" -p "deform";
	rename -uid "BFE4AF4B-4337-4CD7-F7E1-AD808805FBFE";
	setAttr ".dla" yes;
createNode transform -n "hipAxle_srt" -p "deform";
	rename -uid "ED29F643-4575-7168-8ED2-5ABDFBDD4A18";
	setAttr ".dla" yes;
createNode transform -n "hipSwivel_srt" -p "deform";
	rename -uid "FE75C1F9-4C26-A4E5-A3DC-8E9478DB116F";
	setAttr ".dla" yes;
createNode transform -n "hipHinge_srt" -p "deform";
	rename -uid "4A2D8C53-4CA2-B69E-8CC2-05AD8CD2BCA6";
	setAttr ".dla" yes;
createNode transform -n "legAxle_srt" -p "deform";
	rename -uid "818586DC-4642-527C-2DD6-30B32258DB7C";
	setAttr ".dla" yes;
createNode transform -n "output" -p "legParts_cmpt";
	rename -uid "5DD7DD9E-49F8-CDD2-7A3D-3BB5E5E5B393";
createNode transform -n "hipSwivel_srt" -p "output";
	rename -uid "D4904CEB-492F-BCB7-B611-7EB00D162C70";
createNode transform -n "hipAxle_srt" -p "output";
	rename -uid "9E6555CA-40FB-14F7-58D7-C8A759A06ADE";
createNode transform -n "kneeSwivel_end_srt" -p "output";
	rename -uid "E260CC77-4906-4210-D71F-DAA3168A53EB";
createNode transform -n "kneeSwivel_base_srt" -p "output";
	rename -uid "58A7BA2D-4B3E-6CC1-E98F-9580D9676BCE";
createNode transform -n "kneeAxle_srt" -p "output";
	rename -uid "6B0E7275-4BB7-7F64-390A-13ADFD12EB37";
createNode transform -n "kneeHinge_base_srt" -p "output";
	rename -uid "972B130A-4F43-0039-1176-AE9372988C3E";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "50838296-4468-9B52-6750-E38B6255AC7E";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "1614BF70-46AD-ADB8-89B2-B4A74E06823E";
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "922BB33E-4724-CD36-A43D-95B0AB693DE9";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "940078D0-43DE-C0F5-68D8-ECB9952F62D2";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F625866E-432D-03ED-624F-BB9757A3F342";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "26333FC5-402F-3177-AB47-F48A8120D29F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
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
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1372\n                -height 841\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1372\n            -height 841\n"
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
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 1\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 0\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 1\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 0\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 17 100 -ps 2 83 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1372\\n    -height 841\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1372\\n    -height 841\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "DA70BDE1-4704-CF62-6238-A69A79427D54";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 60 -ast 0 -aet 60 ";
	setAttr ".st" 6;
createNode composeMatrix -n "hipHinge_srt_localTo_shoulderEnd";
	rename -uid "2D7BE9EB-49B9-9B36-4FB1-E7B8ED21148D";
	setAttr -k on ".uer";
	setAttr -k on ".irx";
	setAttr -k on ".iry";
	setAttr -k on ".irz";
	setAttr ".iqz" 0.17677669529663695;
	setAttr ".iqw" 0.91855865354369193;
createNode multMatrix -n "hipHinge_worldMatrix";
	rename -uid "3BC86092-46FA-7889-E3A4-C59670FFE980";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "hipHinge_srt_inWorld";
	rename -uid "674769BE-4892-DBD8-92E0-9686F3E7D2D7";
	setAttr ".ot" -type "double3" -4.5 14.629999995231628 6.7500000000000009 ;
	setAttr ".or" -type "double3" -180 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 6.123233995736766e-017;
createNode decomposeMatrix -n "hipSwivel_srt_inWorld";
	rename -uid "71591C45-4D86-7B7F-80B3-84BFD14EF8C1";
	setAttr ".ot" -type "double3" -4.5 13.737309336662292 6.7500000000000009 ;
	setAttr ".or" -type "double3" -180 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 6.123233995736766e-017;
createNode inverseMatrix -n "hipSwivel_worldInverseMatrix";
	rename -uid "ABD291C7-4B49-8214-6C33-0C953AC65453";
	setAttr ".omat" -type "matrix" 0.99999999999999989 -3.8128692804901523e-016 3.4694469519536167e-017 0
		 0 -1 1.1102230246251565e-016 0 0 -1.2246467991473532e-016 -1 0 4.5 13.737309336662291 6.75 1;
createNode multMatrix -n "kneeSwivel_base_worldMatrix";
	rename -uid "4EF8000B-4D63-352F-85E7-02B0497CB47D";
	setAttr -s 2 ".i";
createNode inverseMatrix -n "hipHinge_worldInverseMatrix";
	rename -uid "FDE4B976-4F23-36D5-BFF7-878103AA026A";
	setAttr ".omat" -type "matrix" 0.99999999999999989 -4.0606407112430206e-016 -1.8735013540549514e-016 0
		 0 -1 1.1102230246251565e-016 0 0 -1.2246467991473532e-016 -1 0 4.5 14.629999995231627 6.7499999999999991 1;
createNode decomposeMatrix -n "hip_srt_localTo_shoulder";
	rename -uid "38855EF1-441B-E941-E6D0-D2B290243107";
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode network -n "hipSwivel_pass";
	rename -uid "908B2A58-431F-0318-DC3F-8196BBFB4F53";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode decomposeMatrix -n "footAxle_srt_inWorld";
	rename -uid "BF04D9DF-4759-8C2E-560B-0D837A3CD1A5";
	setAttr ".ot" -type "double3" -4.5 1.2687521773430808 15.34678085234324 ;
	setAttr ".or" -type "double3" -180 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 6.123233995736766e-017;
createNode composeMatrix -n "footHinge_matrix_localTo_footAxle";
	rename -uid "6C0FA02F-4C8D-29EB-EBE2-488BE326945D";
	setAttr -k on ".irx";
	setAttr -k on ".iry";
	setAttr -k on ".irz";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.45886218547821045 -0.027866363525390625 1;
createNode multMatrix -n "footHinge_worldMatrix";
	rename -uid "6B22C55D-4321-933C-D77A-74A95DC4C806";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "footHinge_srt_inWorld";
	rename -uid "E6D18470-4408-3972-1F96-7D9C99A038EA";
	setAttr ".ot" -type "double3" -4.5 1.7276143628212912 15.374647215868631 ;
	setAttr ".or" -type "double3" -180 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 6.123233995736766e-017;
createNode decomposeMatrix -n "footSwivel_srt_inWorld";
	rename -uid "842EBB91-4CCE-7341-F270-2E8F8956D614";
	setAttr ".ot" -type "double3" -4.5 1.7276143628212912 15.374647215868631 ;
	setAttr ".or" -type "double3" -180 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 6.123233995736766e-017;
createNode composeMatrix -n "ankleOffsetByFoot_matrix_localTo_foot";
	rename -uid "B376CF7B-45A1-56AB-6EE3-B9BE9197E777";
	setAttr -k on ".ity";
	setAttr -k on ".itx";
	setAttr -k on ".itz";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -2.8871441008119252 0.014784574508666992 1;
createNode multMatrix -n "ankleOffsetByFoot_worldMatrix";
	rename -uid "1CC11CB5-4AD4-9E99-AFD3-EF9DB10858AD";
	setAttr -s 2 ".i";
createNode inverseMatrix -n "ankleOffsetByFoot_worldInverseMatrix";
	rename -uid "C628C7C7-4F19-C92C-AEEA-43A73FBEAA82";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.1102230246251565e-016 -1 0
		 4.5000000000000009 4.1558962781550077 15.331996277834573 1;
createNode network -n "ankleOffsetByFoot_pass";
	rename -uid "7814A83C-433A-7DFE-7E2D-8390696CD6C4";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode inverseMatrix -n "footHinge_worldInverseMatrix";
	rename -uid "4F942992-446A-8FA3-2D24-B2A35F50D268";
	setAttr ".omat" -type "matrix" 1 -5.5511151231257827e-017 0 0 0 -1 1.2246467991473532e-016 0
		 0 -1.2490009027033011e-016 -1 0 4.5 1.7276143628212932 15.374647215868631 1;
createNode network -n "footHinge_pass";
	rename -uid "822A8AD8-47CF-B357-237C-5893D9327D21";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode multMatrix -n "ankleOffsetByFoot_matrix_localTo_knee";
	rename -uid "D221CECD-4B7F-6BD4-1174-E0A8DD8929DF";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "ankleOffsetByFoot_srt_localTo_knee";
	rename -uid "EACEC518-4AD1-9BF6-6F0B-A186664BD54B";
	setAttr ".ot" -type "double3" 0 0.68739297794087939 -7.0601776399866747 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode quatToEuler -n "ankleOffsetByFoot_rotation_localTo_knee";
	rename -uid "5AEDCA90-4BDB-0C94-0699-15AEF7E0F5E7";
	setAttr ".iro" 4;
createNode composeMatrix -n "ankleSwivelOffsetByFoot_matrix_localTo_knee";
	rename -uid "4B8B53DB-4EED-4031-139B-198866665D0F";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.68739297794087939 -7.0601776399866747 1;
createNode multMatrix -n "ankleSwivelOffsetByFoot_worldMatrix";
	rename -uid "0E1DCCAE-49A6-3953-3C49-6E8F5F70FFBD";
	setAttr -s 2 ".i";
createNode composeMatrix -n "footAxle_matrix_localTo_foot";
	rename -uid "A6477CB4-498E-B7F9-BC66-3A89997A7E00";
createNode multMatrix -n "footAxle_worldMatrix";
	rename -uid "FA306A00-40F3-BCA3-8B32-E0B86D74B09D";
	setAttr -s 2 ".i";
createNode inverseMatrix -n "footAxle_worldInverseMatrix";
	rename -uid "7720EAF1-4EBC-AE62-0469-7CA8A53B77A8";
	setAttr ".omat" -type "matrix" 1 -2.0296204235518068e-017 4.2595873640369885e-016 0
		 0 -1 1.2246467991473532e-016 0 0 -1.3877787807814457e-016 -1 0 4.5000000000000009 1.2687521773430828 15.346780852343244 1;
createNode network -n "footAxle_pass";
	rename -uid "710E22DA-4CF0-D442-2B01-0D9FDA45754B";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode displayLayer -n "layer1";
	rename -uid "F505881C-4E39-6430-334C-5EADCD51B12E";
	setAttr ".do" 1;
createNode multMatrix -n "ankleAxle_worldMatrix";
	rename -uid "4C135191-4298-4CB9-1BC1-25946E986A0A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "ankleAxle_srt_inWorld";
	rename -uid "48EEE587-41BD-D4A7-9B61-E0B41D5CCF76";
	setAttr ".ot" -type "double3" -4.5 4.1558961468789084 15.331573561693826 ;
	setAttr ".or" -type "double3" -180 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 6.123233995736766e-017;
createNode inverseMatrix -n "ankleAxle_worldInverseMatrix";
	rename -uid "31AB6E4D-4247-82DD-9A0C-D0811B1A4C2D";
	setAttr ".omat" -type "matrix" 1 1.1534928975539844e-016 4.255366492981701e-016 0
		 0 -1 1.2246467991473532e-016 0 5.5511151231257827e-017 -5.5511151231257827e-017 -1 0
		 4.5 4.1558961468789102 15.331573561693826 1;
createNode network -n "ankleAxle_pass";
	rename -uid "4031E3BA-46BD-89E6-6B0D-50B3A251C6EC";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode decomposeMatrix -n "ankleSwivel_srt_inWorld";
	rename -uid "265D1B22-4787-4F63-76B7-5FBE65A3F97D";
	setAttr ".ot" -type "double3" -4.4999999999999991 4.84328933535547 15.331573561693824 ;
	setAttr ".or" -type "double3" -180 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 6.123233995736766e-017;
createNode inverseMatrix -n "legEnd_worldInverseMatrix";
	rename -uid "EF11C8A3-4828-738C-42B7-F399D62E36A9";
	setAttr ".omat" -type "matrix" 1 7.3955709864469857e-032 4.4408920985006262e-016 0
		 1.2490009027033009e-016 -0.99999999999999989 3.6932092547347425e-016 0 -5.5511151231257827e-017 -1.6653345369377348e-016 -1 0
		 4.4999999999999991 4.8432893353554718 13.306188658739723 1;
createNode multMatrix -n "legEnd_worldMatrix";
	rename -uid "C231759A-4276-8B37-7ED4-00A8B0AB86CE";
	setAttr -s 2 ".i";
createNode network -n "legEnd_pass";
	rename -uid "5A71D08D-4862-7899-A5B1-4EAA0BF03DBC";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode multMatrix -n "legEnd_matrix_localTo_kneeAxle";
	rename -uid "5C4272FF-4268-B4A2-994A-32810740397E";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "legEnd_srt_localTo_knee";
	rename -uid "35467FFB-420A-61C3-C5C3-AFBE1B266EC0";
	setAttr ".ot" -type "double3" 0 -7.9259583785074028e-008 -3.8447109022394805 ;
	setAttr ".os" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".oqw" 1;
createNode quatToEuler -n "legEnd_rotation_localTo_knee";
	rename -uid "F3E9FED1-4164-17D9-6254-438BB6EF8C1C";
	setAttr ".iro" 2;
createNode multMatrix -n "kneeHinge_end_worldMatrix";
	rename -uid "895F188E-477F-838C-32FA-AAAFFA7DC651";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "kneeHinge_end_srt_inWorld";
	rename -uid "5ECE4FB2-4B74-D8DE-CDEB-F29A02F6AD65";
	setAttr ".ot" -type "double3" -4.4999999999999991 4.8432893353554691 13.306188658739721 ;
	setAttr ".or" -type "double3" -180 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 6.123233995736766e-017;
createNode multMatrix -n "kneeHinge_base_worldMatrix";
	rename -uid "D625A984-4CD1-0601-7DD8-B1B659156EC1";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "kneeHinge_base_srt_inWorld";
	rename -uid "136E7E8E-4406-2F12-A473-C08CB5280BD7";
	setAttr ".ot" -type "double3" -4.4999999999999991 4.84328933535547 9.4614777565002406 ;
	setAttr ".or" -type "double3" -180 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 6.123233995736766e-017;
createNode inverseMatrix -n "kneeHinge_base_worldInverseMatrix";
	rename -uid "F35D6E36-4DC8-EE55-8E74-E8938E164AB7";
	setAttr ".omat" -type "matrix" 1 0 0 0 1.3877787807814452e-016 -1 5.2521752261226677e-016 -6.1629758220391547e-033
		 -5.5511151231257827e-017 -2.2204460492503131e-016 -1 1.3877787807814457e-017 4.4999999999999991 4.8432893353554718 9.4614777565002388 0.99999999999999989;
createNode network -n "kneeHinge_pass";
	rename -uid "01FC9D12-49AF-D172-6C9A-E29F2B83BB64";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode network -n "kneeAxle_pass";
	rename -uid "5267D23C-43BD-4761-328E-5B8DB676B66C";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode multMatrix -n "kneeSwivel_end_worldMatrix";
	rename -uid "05F5A082-4783-5914-7A72-2A8670E7ADC6";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "kneeSwivel_end_srt_inWorld";
	rename -uid "D533FAB4-4CC4-423B-2D28-A68A697CE399";
	setAttr ".ot" -type "double3" -4.5 4.8432892560958862 7.3292107582092267 ;
	setAttr ".or" -type "double3" -180 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 6.123233995736766e-017;
createNode multMatrix -n "hip_matrix_localTo_shoulder";
	rename -uid "98049F52-4566-DEB8-68D5-A184EA275DB2";
	setAttr -s 2 ".i";
createNode composeMatrix -n "legBase_matrix_localTo_shoulder";
	rename -uid "8F09DB7E-479F-C841-6754-DB997191006E";
createNode multMatrix -n "legBase_worldMatrix";
	rename -uid "76F74E4B-4805-082C-D9B3-349188334679";
	setAttr -s 2 ".i";
createNode inverseMatrix -n "legBase_worldInverseMatrix";
	rename -uid "566BF19C-4BA8-4CDA-9E80-A8B924A1F311";
	setAttr ".omat" -type "matrix" 0.99999999999999989 -4.0606407112430206e-016 -1.8735013540549514e-016 0
		 0 -1 1.1102230246251565e-016 0 0 -1.2246467991473532e-016 -1 0 4.5 14.629999995231627 6.7499999999999991 1;
createNode network -n "legBase_pass";
	rename -uid "BBA1B602-4E0E-B6B5-C0C4-E1AF41CE1023";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode multMatrix -n "kneeAxle_matrix_localTo_legBase";
	rename -uid "9BF27B68-4026-7D8F-7D08-38AD87936BAC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "kneeAxle_srt_localTo_legBase";
	rename -uid "7AB16C5F-4A6E-D4D2-8129-0AABCF24A656";
	setAttr ".ot" -type "double3" 8.8817841970012523e-016 9.7867107391357422 -1.5218186378478977 ;
	setAttr ".or" -type "double3" 6.5559993560784272e-016 1.073437204993937e-014 -2.3265757487322594e-014 ;
	setAttr ".os" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".oqw" 1;
createNode composeMatrix -n "kneeAxle_twist_matrix_localTo_legBase";
	rename -uid "0EB9F024-42B0-C568-7D7B-618392C662FC";
	setAttr -k on ".iry";
	setAttr -k on ".irx";
	setAttr -k on ".irz";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.89269065856933594 0 1;
createNode quatToEuler -n "kneeAxle_rotation_localTo_legBase";
	rename -uid "6863797F-4985-5265-7640-EE9C4E8F90E2";
	setAttr ".iro" 3;
createNode multMatrix -n "hipSwivel_worldMatrix";
	rename -uid "FE01E877-4CEC-7580-9E1E-70AE263A3F52";
	setAttr -s 2 ".i";
createNode multMatrix -n "knee_matrix_localTo_legBase";
	rename -uid "C6DFE578-4C92-9489-7046-E08FEA45765F";
	setAttr -s 2 ".i";
createNode multMatrix -n "kneeHinge_parentMatrix";
	rename -uid "1ACEE962-485E-2331-A1E2-7AA83AD6F8EB";
	setAttr -s 3 ".i";
createNode plusMinusAverage -n "ankleAxle_aim_targetTranslate";
	rename -uid "C4C9868C-43F9-1E18-6540-7BA0F034CEA8";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode composeMatrix -n "kneeHinge_parentMatrix_localTo_legBase";
	rename -uid "3E1BA25D-4D2A-4059-899F-4189F81648FB";
	setAttr -k on ".irx";
	setAttr -k on ".iry";
	setAttr -k on ".irz";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.8817841970012523e-016 9.7867107391357422 -1.5218186378478977 1;
createNode decomposeMatrix -n "knee_srt_localTo_legBase";
	rename -uid "A64D5674-4D36-97DC-158C-2BBDDB5D7182";
	setAttr ".ot" -type "double3" 8.8817841970012523e-016 9.7867107391357422 -1.5218186378478977 ;
	setAttr ".or" -type "double3" 6.5559993560784272e-016 1.073437204993937e-014 -2.3265757487322594e-014 ;
	setAttr ".os" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".oqw" 1;
createNode inverseMatrix -n "kneeHinge_parentInverseMatrix";
	rename -uid "7CD7C421-4166-A9D7-98A1-1C845125C01C";
	setAttr ".omat" -type "matrix" 1 0 0 0 -9.7144514654701222e-017 -1 2.6260876130613339e-016 -3.0814879110195774e-033
		 5.5511151231257827e-017 -1.1102230246251565e-016 -0.99999999999999989 1.3877787807814457e-017
		 4.4999999999999991 4.843289256095888 9.4614777565002388 0.99999999999999989;
createNode network -n "kneeHinge_parent_pass";
	rename -uid "3BBBA795-4244-8693-25DA-60B78504BBDE";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode composeMatrix -n "kneeHinge_end_position_matrix_localTo_knee";
	rename -uid "111840E2-4232-D062-313E-82B2239920A6";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -7.9259583785074028e-008 -3.8447109022394805 1;
createNode composeMatrix -n "kneeHinge_rotation_matrix_localTo_knee";
	rename -uid "68391747-46B0-DAE7-7BD9-6095CC5985B1";
	setAttr -k on ".irx";
	setAttr -k on ".iry";
	setAttr -k on ".irz";
createNode composeMatrix -n "kneeHinge_base_position_matrix_localTo_kneeHinge_end";
	rename -uid "66CEBE6F-4010-22F3-77E6-70A6B3968AA1";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 3.8447109022394814 1;
createNode distanceBetween -n "legEnd_distance_to_knee";
	rename -uid "EF4226B6-4706-2FAF-6D14-16BB7F0960D1";
createNode multDoubleLinear -n "kneeHinge_base_translateZ_sign";
	rename -uid "6E1436B9-4B27-750A-1A99-7380E8A04C23";
	setAttr -k on ".i1";
	setAttr -k on ".i2";
createNode multMatrix -n "ankleSwivel_worldUpMatrix";
	rename -uid "F8C12BE8-4C08-210C-0278-2D923D1681A2";
	setAttr -s 2 ".i";
createNode quatToEuler -n "knee_rotation_localTo_legBase";
	rename -uid "AAC0BFBE-4048-8502-87A0-EAB0FFBA3D8D";
	setAttr ".iro" 5;
createNode network -n "hipHinge_pass";
	rename -uid "53BDC5DC-48BD-B827-22D2-79AAB926D47C";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode inverseMatrix -n "kneeSwivel_end_worldInverseMatrix";
	rename -uid "68908220-43B4-C105-BDE2-C3BCE9D190F5";
	setAttr ".omat" -type "matrix" 1 2.4651903288156619e-032 2.2204460492503131e-016 0
		 1.2490009027033014e-016 -1 2.0342646340235711e-016 0 -1.1102230246251565e-016 -1.1102230246251565e-016 -1 0
		 4.5000000000000009 4.843289256095888 7.3292107582092267 1;
createNode network -n "kneeSwivel_end_pass";
	rename -uid "230AF113-4F77-0B7F-C769-6BA216EDD0E0";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode multMatrix -n "hipAxle_parentMatrix_localTo_kneeSwivel_end";
	rename -uid "BEF776D1-44D6-69CC-1238-BDA6E2E81C2B";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "hipAxle_srtOffset_localTo_kneeSwivel_end";
	rename -uid "25DB6FD2-4154-D40E-257B-2AA312EB8BD7";
	setAttr ".ot" -type "double3" 1.7763568394002505e-015 -7.710044860839842 4.7683715731494658e-007 ;
	setAttr ".or" -type "double3" -4.6387684956926874e-015 -1.2722218725854067e-014 
		1.4124500153760508e-030 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode composeMatrix -n "hipAxle_matrix_localTo_kneeSwivel_end";
	rename -uid "86D1C6C1-4987-15B1-A16F-7FB546F55693";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.7763568394002505e-015 -7.710044860839842 4.7683715731494658e-007 1;
createNode decomposeMatrix -n "kneeSwivel_base_srt_inWorld";
	rename -uid "0387DC27-4486-BA47-9F68-11864C657C16";
	setAttr ".ot" -type "double3" -4.4999999999999982 8.6854141950607282 7.8020653724670401 ;
	setAttr ".or" -type "double3" -180 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 6.123233995736766e-017;
createNode multMatrix -n "kneeAxle_matrix_localTo_hip";
	rename -uid "DC9D1CD8-4B95-C699-B733-F88E9F38F3AF";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "kneeSwivel_parentSRT_localTo_hip";
	rename -uid "0AE93F5C-44E7-C371-33F4-92BBF0800202";
	setAttr ".ot" -type "double3" 0 9.7867107391357422 -1.5218186378478995 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode composeMatrix -n "kneeSwivel_parentMatrix_localTo_hip";
	rename -uid "4D739E59-40AA-26C3-EAE6-BAA3A6237F8C";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 9.7867107391357422 -1.5218186378478995 1;
createNode quatToEuler -n "kneeSwivel_parentRotation_localTo_hip";
	rename -uid "F632E650-4041-F936-A256-DCAF205FE4A1";
	setAttr ".iro" 5;
createNode multMatrix -n "kneeSwivel_parentMatrix";
	rename -uid "50DE9270-4C20-8E69-02FD-70B63D4DE300";
	setAttr -s 2 ".i";
createNode inverseMatrix -n "kneeSwivel_parentInverseMatrix";
	rename -uid "5EAE018E-4744-EAE9-2B05-1E993B003600";
	setAttr ".omat" -type "matrix" 1 0 0 0 -9.7144514654701173e-017 -1 2.2958908768155591e-016 0
		 0 -1.1102230246251565e-016 -1 0 4.5000000000000009 4.843289256095888 8.2718186378478986 1;
createNode multMatrix -n "ankleAxle_worldUpMatrix";
	rename -uid "2F49C91B-42F2-56E4-A4D5-018D7A43A401";
	setAttr -s 2 ".i";
createNode multMatrix -n "knee_matrix_localTo_hip";
	rename -uid "7E36FE85-498F-2DA7-69C3-FBA6FF1170D1";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "knee_srt_localTo_hip";
	rename -uid "2DA878BC-4AF2-426F-9117-09BFA448A4FE";
	setAttr ".ot" -type "double3" 0 9.7867107391357422 -1.5218186378478995 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode composeMatrix -n "kneeAxle_parentMatrix_localTo_hip";
	rename -uid "98F3F287-4C78-4FB5-D82C-73B1A4BD4C5B";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 9.7867107391357422 -1.5218186378478995 1;
createNode multMatrix -n "kneeAxle_parentMatrix";
	rename -uid "3B32FC75-4CA5-4E97-E14C-6B93FF4FDC0C";
	setAttr -s 2 ".i";
createNode inverseMatrix -n "kneeAxle_parentInverseMatrix";
	rename -uid "21772715-4263-B480-3D72-E4851A8A385D";
	setAttr ".omat" -type "matrix" 1 0 0 0 -9.7144514654701173e-017 -1 2.2958908768155591e-016 0
		 0 -1.1102230246251565e-016 -1 0 4.5000000000000009 4.843289256095888 8.2718186378478986 1;
createNode composeMatrix -n "kneeAxle_matrix";
	rename -uid "95ACE926-465D-7A2D-5A43-71B853E10A77";
createNode multMatrix -n "kneeAxle_worldMatrix";
	rename -uid "FE72D89E-496D-2FA2-DFF4-61A1400365FD";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "kneeAxle_srt_inWorld";
	rename -uid "51746E1C-405B-175A-9BBD-0C98FB3B5306";
	setAttr ".ot" -type "double3" -4.5 4.8432892560958862 8.2718186378478986 ;
	setAttr ".or" -type "double3" -180 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 6.123233995736766e-017;
createNode inverseMatrix -n "kneeAxle_worldInverseMatrix";
	rename -uid "87C38FFB-4C80-B443-DCC1-FB8255608B4C";
	setAttr ".omat" -type "matrix" 1 0 0 0 -9.7144514654701173e-017 -1 2.2958908768155591e-016 0
		 0 -1.1102230246251565e-016 -1 0 4.5000000000000009 4.843289256095888 8.2718186378478986 1;
createNode multMatrix -n "ankle_matrix_localTo_kneeAxle_parent";
	rename -uid "5742309E-40E2-F9AA-4CCE-1286A1682E0D";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "ankle_srt_localTo_kneeAxle_parent";
	rename -uid "760CCADF-4BD8-E3A4-F4FE-D9A9355CAA09";
	setAttr ".ot" -type "double3" 8.8817841970012523e-016 0.68739297794088028 -7.0601776399866729 ;
	setAttr ".or" -type "double3" -6.1377764478772762e-015 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode composeMatrix -n "ankleSwivel_matrix_localTo_kneeAxle_parent";
	rename -uid "B9C3A103-4029-3C79-04F9-CD9A7B706705";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.8817841970012523e-016 0.68739297794088028 -7.0601776399866729 1;
createNode quatToEuler -n "ankle_rotation_localTo_kneeAxle_parent";
	rename -uid "7455FF2E-45A3-C2B3-94A6-DBB95DCCCE27";
	setAttr ".iro" 4;
createNode multMatrix -n "kneeAxle_worldUpMatrix";
	rename -uid "F603957D-46D3-1C2A-FCED-8388B7043362";
	setAttr -s 3 ".i";
createNode network -n "kneeAxle_parent_pass";
	rename -uid "6A1CC9A9-4789-B939-DDC0-D7B1119E24CE";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode quatToEuler -n "knee_rotation_localTo_hip";
	rename -uid "E00E9CB4-4884-AFAB-FE14-58B22E760761";
	setAttr ".iro" 2;
createNode plusMinusAverage -n "leg_LFkneeAxle_aim_targetTranslate";
	rename -uid "8DDCA025-48B0-DD1C-49EE-9DAFC5E9C48A";
	setAttr -s 2 ".i3[1]" -type "float3"  1 0 0;
createNode multMatrix -n "ankleSwivel_parentMatrix";
	rename -uid "1AF02970-458E-C055-15DB-0E882D0E16CA";
	setAttr -s 2 ".i";
createNode inverseMatrix -n "ankleSwivel_parentInverseMatrix";
	rename -uid "59797A5C-46D2-CE32-108A-74802683996C";
	setAttr ".omat" -type "matrix" 1 1.1102230246251565e-016 0 0 6.1629758220391547e-033 -1 1.2246467991473532e-016 0
		 -5.5511151231257827e-017 -1.1102230246251565e-016 -1 0 4.5 4.1558961468789102 15.331573561693824 1;
createNode multMatrix -n "ankleSwivel_worldMatrix";
	rename -uid "26C4C113-4FF6-BF9D-9243-1C8585876114";
	setAttr -s 2 ".i";
createNode multMatrix -n "ankleSwivel_parentMatrix_localTo_kneeAxle";
	rename -uid "52D8659A-42D4-7640-87CB-F8860333FCE5";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "ankleSwivel_parentSRT_localTo_kneeAxle";
	rename -uid "518C9280-4E76-FD44-4D1E-EDB64CBEF5FF";
	setAttr ".ot" -type "double3" 8.8817841970012523e-016 0.68739310921697783 -7.0597549238459258 ;
	setAttr ".or" -type "double3" -6.1377764478772762e-015 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode quatToEuler -n "ankleSwivel_parentRotation_localTo_kneeAxle";
	rename -uid "2284DFE5-41D8-786D-96CB-4887279689A0";
createNode composeMatrix -n "ankleSwivel_parentMatrix_localTo_kneeAxle1";
	rename -uid "BA8935A0-4BF6-77AA-D877-55A3B401B000";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.8817841970012523e-016 0.68739310921697783 -7.0597549238459258 1;
createNode composeMatrix -n "kneeSwivel_end_positionMatrix";
	rename -uid "556D60C5-4DFB-6AF1-3E74-2D9CF764E4E8";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.94260787963867188 1;
createNode composeMatrix -n "kneeSwivel_end_rotationMatrix";
	rename -uid "733DD819-4284-3782-9F52-EDB59FA42B45";
createNode multMatrix -n "kneeSwivel_end_matrix";
	rename -uid "D650E84D-4C76-1591-72FD-E7B17BB8AB0C";
	setAttr -s 2 ".i";
createNode multMatrix -n "ankleSwivel_upMatrix";
	rename -uid "BFD426B1-41BF-0C77-E756-8484A7E6347B";
	setAttr -s 2 ".i";
createNode network -n "ankleSwivel_parent_pass";
	rename -uid "AD90B307-449E-9F35-E369-FB89B87191BC";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode vectorProduct -n "ankleSwivel_upPosition";
	rename -uid "95DE047C-4CE1-A073-89FD-3AB56194F934";
	setAttr ".op" 4;
createNode plusMinusAverage -n "ankleSwivel_target_zVector";
	rename -uid "2DB62D30-46CB-54F8-3683-2DB70E0930E1";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "ankleSwivel_aim_targetTranslate";
	rename -uid "6D25BAFD-413C-CA4A-8871-639AA8540ECC";
	setAttr -s 2 ".i3[1]" -type "float3"  1 0 0;
createNode composeMatrix -n "ankleSwivel_rotationMatrix";
	rename -uid "CC67A14B-451A-1943-0D9B-838A6D8E98A5";
createNode multMatrix -n "ankleSwivel_matrix";
	rename -uid "367DC19E-4FE5-BE5C-B1A2-619D42EF4A80";
	setAttr -s 2 ".i";
createNode vectorProduct -n "ankleSwivel_position";
	rename -uid "135F69EA-4956-ED8F-53E2-0EB06D486C99";
	setAttr ".op" 4;
createNode composeMatrix -n "ankleSwivel_positionMatrix";
	rename -uid "4B651D03-495D-16B6-3137-78ADF1F06824";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.6873931884765625 0 1;
createNode plusMinusAverage -n "kneeSwivel_aim_targetTranslate";
	rename -uid "50C8AC11-4A95-D8F6-7212-29BBFC708EC6";
	setAttr -s 2 ".i3[1]" -type "float3"  1 0 0;
createNode multMatrix -n "kneeSwivel_worldUpMatrix";
	rename -uid "EB58A472-4DB8-2CAB-C695-CCBD416EF936";
	setAttr -s 2 ".i";
createNode network -n "kneeSwivel_parent_pass";
	rename -uid "8483B067-4A10-B224-E9F2-9F96D80B869C";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode multMatrix -n "hipAxle_worldMatrix";
	rename -uid "9F50DE4F-4E9C-9CDD-C270-81B6F0F83A65";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "hipAxle_srt_inWorld";
	rename -uid "4FEAA319-46CF-72D6-1782-C0BF2B9C3918";
	setAttr ".ot" -type "double3" -4.4999999999999982 12.553334116935728 7.3292102813720703 ;
	setAttr ".or" -type "double3" -180 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 6.123233995736766e-017;
createNode composeMatrix -n "ankleAxle_translation_matrix_localTo_foot";
	rename -uid "ADC9DB30-4842-CBB2-17E5-85A96D097411";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -2.4282817840576172 0.043073654174804688 1;
createNode composeMatrix -n "ankleAxle_rotation_matrix_localTo_foot";
	rename -uid "B58995BF-438B-7268-292E-2297A317E2BD";
createNode multMatrix -n "ankleAxle_matrix_localTo_foot";
	rename -uid "1D021400-40FE-E68B-3EC3-34BE0F48B8BA";
	setAttr -s 2 ".i";
createNode multMatrix -n "ankle_matrix_localTo_foot";
	rename -uid "363F0E41-4568-4A7B-00A5-FAB67C2BA7EF";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "ankle_srt_localTo_foot";
	rename -uid "B123B20C-48B7-4E39-9AB0-FBB58B1E442F";
	setAttr ".ot" -type "double3" 0 -2.8871441008119252 0.014784574508666992 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode plusMinusAverage -n "footAxle_aim_targetTranslate";
	rename -uid "AD1742D0-4BD5-050B-E5B9-02BED197F15B";
	setAttr -s 2 ".i3[1]" -type "float3"  1 0 0;
createNode plusMinusAverage -n "footHinge_aim_targetTranslate";
	rename -uid "E8A93289-4C4C-BD65-F78D-2CB7C619B32D";
	setAttr -s 2 ".i3[1]" -type "float3"  0 0 1;
createNode angleBetween -n "ankleSwivel_stable_aim_rotation";
	rename -uid "F5EB9197-4856-99D2-6D63-148E1D574A5A";
createNode composeMatrix -n "ankleSwivel_matrix_adjusted";
	rename -uid "AE9C8979-413C-6BE4-6274-B08B668E5E1C";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.6873931884765625 0 1;
createNode condition -n "kneeHinge_base_translateZ_isNegative";
	rename -uid "CDAE1495-4E61-B2F3-F06C-F3AE2315B864";
	setAttr ".op" 2;
	setAttr ".ct" -type "float3" -1 0 0 ;
	setAttr ".cf" -type "float3" 1 0 0 ;
createNode multMatrix -n "footAxle_worldUpMatrix";
	rename -uid "C5BF550A-4E86-8CAF-7E5A-85B04FC219F9";
	setAttr -s 2 ".i";
createNode vectorProduct -n "hipHinge_guided_position";
	rename -uid "28F7DBF9-4D4C-73FE-BA0A-2E83B00CAD74";
	setAttr ".op" 4;
createNode vectorProduct -n "hipSwivel_guided_position";
	rename -uid "E11FECB2-4B46-AFA9-A32A-1283362922CA";
	setAttr ".op" 4;
createNode vectorProduct -n "hipAxle_guided_position";
	rename -uid "0459756C-4464-35A4-33EE-A48AC7FCA155";
	setAttr ".op" 4;
createNode vectorProduct -n "kneeSwivel_base_guided_position";
	rename -uid "26331ACD-49BE-5452-948E-F0BA953FA8D3";
	setAttr ".op" 4;
createNode vectorProduct -n "kneeSwivel_end_guided_upVector";
	rename -uid "6067BB29-48B6-D412-0B2A-6AAED1A2F857";
	setAttr ".op" 4;
createNode vectorProduct -n "kneeSwivel_end_guided_upVector_normal";
	rename -uid "C2AE4070-4A77-FB4E-A573-0DBCE6D6AC5E";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode vectorProduct -n "kneeSwivel_end_guided_position";
	rename -uid "ADCB2F08-493F-0B66-C1DB-BEAA97EF01BF";
	setAttr ".op" 4;
createNode vectorProduct -n "kneeAxle_guided_position";
	rename -uid "3048C4DA-488C-B5EF-8C74-19A440855843";
	setAttr ".op" 4;
createNode vectorProduct -n "kneeHinge_guided_position";
	rename -uid "DB43F727-4110-65ED-932A-C5A8EBDF81D9";
	setAttr ".op" 4;
createNode vectorProduct -n "ankleSwivel_guided_upVector";
	rename -uid "21C599FA-43D7-1F39-CE7E-6B8918F87230";
	setAttr ".op" 4;
createNode vectorProduct -n "ankleSwivel_guided_upVector_normal";
	rename -uid "338AD00C-4D69-8DE8-1751-78B1903CC4B8";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode vectorProduct -n "kneeAxle_worldUpObject_guided_position";
	rename -uid "195C87C9-414F-A4CE-4FA2-F6B8221C76B1";
	setAttr ".op" 4;
createNode vectorProduct -n "ankleSwivel_guided_position";
	rename -uid "92C5214D-407B-622D-7D79-BB9805C84436";
	setAttr ".op" 4;
createNode vectorProduct -n "ankleAxle_guided_upVector";
	rename -uid "86EDE679-4F0C-FDE7-24C9-50BF590BFF40";
	setAttr ".op" 4;
createNode vectorProduct -n "ankleAxle_guided_upVector_normal";
	rename -uid "0691A797-40AE-140E-19DE-B09548D937BA";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode vectorProduct -n "footAxle_upObject_guided_position";
	rename -uid "7BD203AC-4F8F-DC1C-393C-AC90925C4B98";
	setAttr ".op" 4;
createNode vectorProduct -n "legEnd_guided_position";
	rename -uid "F711A109-4EB4-F245-B4EF-429803C0611D";
	setAttr ".op" 4;
createNode vectorProduct -n "footAxle_guided_position";
	rename -uid "510BA9E6-4173-7FA4-A5B0-2491833D592C";
	setAttr ".op" 4;
createNode vectorProduct -n "footHinge_guided_upVector";
	rename -uid "4FFAA436-456C-26B4-B014-2F9BE698C624";
	setAttr ".op" 4;
createNode vectorProduct -n "footHinge_guided_upVector_normal";
	rename -uid "25715B19-41DE-D4AE-281C-C3B119866D45";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode vectorProduct -n "footHinge_guided_position";
	rename -uid "E645664C-49BD-B848-CB23-F38DB1232FD0";
	setAttr ".op" 4;
createNode vectorProduct -n "footAxle_guided_upVecotr";
	rename -uid "16BE6597-445E-B62E-6296-B7ACB7709EBB";
	setAttr ".op" 4;
createNode vectorProduct -n "footAxle_guided_upVector_normal";
	rename -uid "33882458-49A3-9124-6C73-DCAB4F3E27BF";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode vectorProduct -n "ankleAxle_guided_aimVector";
	rename -uid "8186B705-4DBE-53A6-15B5-BFB3DA87079F";
	setAttr ".op" 4;
	setAttr ".no" yes;
createNode vectorProduct -n "ankleAxle_guided_aimVector_normal";
	rename -uid "F078E61C-48DB-BE83-1F88-2FB79E92F34A";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode vectorProduct -n "ankeAxle_guided_position";
	rename -uid "5DF7F185-41AC-30A6-4E7C-0FA16541154D";
	setAttr ".op" 4;
createNode vectorProduct -n "ankleAxle_guided_aimVector_inWorld";
	rename -uid "74450FFE-4656-C1FB-6C4C-CFAF92A7719A";
	setAttr ".op" 4;
	setAttr ".i1" -type "float3" 0 1 0 ;
createNode vectorProduct -n "foot_guided_upVector_inWorld";
	rename -uid "3D6D84AE-4C6F-C9AC-0C40-9DBB82C1BA1C";
	setAttr ".op" 4;
	setAttr ".i1" -type "float3" 0 1 0 ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "E373CF3C-4E33-BC5D-BFE9-07AAC5C723AC";
	setAttr -s 12 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "guides";
	setAttr ".tgi[0].vl" -type "double2" -120.81764654004506 -2242.1244530305266 ;
	setAttr ".tgi[0].vh" -type "double2" 4423.6563033994271 438.09522068689262 ;
	setAttr -s 61 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 912.85711669921875;
	setAttr ".tgi[0].ni[0].y" 311.42855834960937;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 1298.5714111328125;
	setAttr ".tgi[0].ni[1].y" -74.285713195800781;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 1000;
	setAttr ".tgi[0].ni[2].y" -1532.857177734375;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 1727.142822265625;
	setAttr ".tgi[0].ni[3].y" 311.42855834960937;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 1257.142822265625;
	setAttr ".tgi[0].ni[4].y" -1404.2857666015625;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 2457.142822265625;
	setAttr ".tgi[0].ni[5].y" -1361.4285888671875;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 957.14288330078125;
	setAttr ".tgi[0].ni[6].y" -975.71429443359375;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 398.57144165039062;
	setAttr ".tgi[0].ni[7].y" 397.14285278320312;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 655.71429443359375;
	setAttr ".tgi[0].ni[8].y" 11.428571701049805;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 957.14288330078125;
	setAttr ".tgi[0].ni[9].y" -1190;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 2328.571533203125;
	setAttr ".tgi[0].ni[10].y" 310;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 3024.28564453125;
	setAttr ".tgi[0].ni[11].y" -1057.142822265625;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 1255.7142333984375;
	setAttr ".tgi[0].ni[12].y" -1188.5714111328125;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 2157.142822265625;
	setAttr ".tgi[0].ni[13].y" -1404.2857666015625;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 655.71429443359375;
	setAttr ".tgi[0].ni[14].y" 482.85714721679687;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 2542.857177734375;
	setAttr ".tgi[0].ni[15].y" 181.42857360839844;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 955.71429443359375;
	setAttr ".tgi[0].ni[16].y" -74.285713195800781;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1428.5714111328125;
	setAttr ".tgi[0].ni[17].y" -1618.5714111328125;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 3100;
	setAttr ".tgi[0].ni[18].y" -1190;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 2371.428466796875;
	setAttr ".tgi[0].ni[19].y" -504.28570556640625;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 1728.5714111328125;
	setAttr ".tgi[0].ni[20].y" -1575.7142333984375;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 1170;
	setAttr ".tgi[0].ni[21].y" 397.14285278320312;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 2628.571533203125;
	setAttr ".tgi[0].ni[22].y" 310;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 1224.2857666015625;
	setAttr ".tgi[0].ni[23].y" -1271.4285888671875;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 2027.142822265625;
	setAttr ".tgi[0].ni[24].y" 11.428571701049805;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 1814.2857666015625;
	setAttr ".tgi[0].ni[25].y" -632.85711669921875;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 1041.4285888671875;
	setAttr ".tgi[0].ni[26].y" -631.4285888671875;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 1414.6805419921875;
	setAttr ".tgi[0].ni[27].y" -1514.320068359375;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 3442.857177734375;
	setAttr ".tgi[0].ni[28].y" -1361.4285888671875;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 1600;
	setAttr ".tgi[0].ni[29].y" -804.28570556640625;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 2028.5714111328125;
	setAttr ".tgi[0].ni[30].y" 395.71429443359375;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 1257.142822265625;
	setAttr ".tgi[0].ni[31].y" -1061.4285888671875;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 741.4285888671875;
	setAttr ".tgi[0].ni[32].y" -502.85714721679687;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 1000;
	setAttr ".tgi[0].ni[33].y" -375.71429443359375;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 1814.2857666015625;
	setAttr ".tgi[0].ni[34].y" -761.4285888671875;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 2028.5714111328125;
	setAttr ".tgi[0].ni[35].y" -504.28570556640625;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 2457.142822265625;
	setAttr ".tgi[0].ni[36].y" -1275.7142333984375;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 2157.142822265625;
	setAttr ".tgi[0].ni[37].y" -1190;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 1427.142822265625;
	setAttr ".tgi[0].ni[38].y" 397.14285278320312;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 1298.5714111328125;
	setAttr ".tgi[0].ni[39].y" -245.71427917480469;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 2028.5714111328125;
	setAttr ".tgi[0].ni[40].y" 95.714286804199219;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 741.4285888671875;
	setAttr ".tgi[0].ni[41].y" -760;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 2681.428466796875;
	setAttr ".tgi[0].ni[42].y" -1014.2857055664062;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 912.85711669921875;
	setAttr ".tgi[0].ni[43].y" 482.85714721679687;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 655.71429443359375;
	setAttr ".tgi[0].ni[44].y" -160;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 1598.5714111328125;
	setAttr ".tgi[0].ni[45].y" -160;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 2542.857177734375;
	setAttr ".tgi[0].ni[46].y" 10;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 1471.4285888671875;
	setAttr ".tgi[0].ni[47].y" -975.71429443359375;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 1814.2857666015625;
	setAttr ".tgi[0].ni[48].y" -975.71429443359375;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 398.57144165039062;
	setAttr ".tgi[0].ni[49].y" 568.5714111328125;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 2071.428466796875;
	setAttr ".tgi[0].ni[50].y" 310;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 3281.428466796875;
	setAttr ".tgi[0].ni[51].y" -1057.142822265625;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 2285.71435546875;
	setAttr ".tgi[0].ni[52].y" 95.714286804199219;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 2800;
	setAttr ".tgi[0].ni[53].y" -1190;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 484.28570556640625;
	setAttr ".tgi[0].ni[54].y" -1145.7142333984375;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 1427.142822265625;
	setAttr ".tgi[0].ni[55].y" 225.71427917480469;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 1898.5714111328125;
	setAttr ".tgi[0].ni[56].y" -160;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 1300;
	setAttr ".tgi[0].ni[57].y" -375.71429443359375;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 1041.4285888671875;
	setAttr ".tgi[0].ni[58].y" -760;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 1707.104248046875;
	setAttr ".tgi[0].ni[59].y" -1465.861328125;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 1300;
	setAttr ".tgi[0].ni[60].y" -804.28570556640625;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[1].tn" -type "string" "ankleOffsetByFoot";
	setAttr ".tgi[1].vl" -type "double2" 2610.8498967470214 -1160.3900254006405 ;
	setAttr ".tgi[1].vh" -type "double2" 4883.7418331545268 180.10609170752667 ;
	setAttr -s 14 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 2084.28564453125;
	setAttr ".tgi[1].ni[0].y" -272.85714721679687;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" 1312.857177734375;
	setAttr ".tgi[1].ni[1].y" -187.14285278320312;
	setAttr ".tgi[1].ni[1].nvs" 18304;
	setAttr ".tgi[1].ni[2].x" 1655.7142333984375;
	setAttr ".tgi[1].ni[2].y" -272.85714721679687;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" 1055.7142333984375;
	setAttr ".tgi[1].ni[3].y" -187.14285278320312;
	setAttr ".tgi[1].ni[3].nvs" 18304;
	setAttr ".tgi[1].ni[4].x" 2384.28564453125;
	setAttr ".tgi[1].ni[4].y" -272.85714721679687;
	setAttr ".tgi[1].ni[4].nvs" 18304;
	setAttr ".tgi[1].ni[5].x" 498.57144165039062;
	setAttr ".tgi[1].ni[5].y" -187.14285278320312;
	setAttr ".tgi[1].ni[5].nvs" 18304;
	setAttr ".tgi[1].ni[6].x" 3712.857177734375;
	setAttr ".tgi[1].ni[6].y" -530;
	setAttr ".tgi[1].ni[6].nvs" 18304;
	setAttr ".tgi[1].ni[7].x" 2684.28564453125;
	setAttr ".tgi[1].ni[7].y" -187.14285278320312;
	setAttr ".tgi[1].ni[7].nvs" 18304;
	setAttr ".tgi[1].ni[8].x" 3327.142822265625;
	setAttr ".tgi[1].ni[8].y" -401.42855834960937;
	setAttr ".tgi[1].ni[8].nvs" 18304;
	setAttr ".tgi[1].ni[9].x" 2984.28564453125;
	setAttr ".tgi[1].ni[9].y" -272.85714721679687;
	setAttr ".tgi[1].ni[9].nvs" 18304;
	setAttr ".tgi[1].ni[10].x" 498.57144165039062;
	setAttr ".tgi[1].ni[10].y" -272.85714721679687;
	setAttr ".tgi[1].ni[10].nvs" 18304;
	setAttr ".tgi[1].ni[11].x" 1698.5714111328125;
	setAttr ".tgi[1].ni[11].y" -401.42855834960937;
	setAttr ".tgi[1].ni[11].nvs" 18304;
	setAttr ".tgi[1].ni[12].x" 798.5714111328125;
	setAttr ".tgi[1].ni[12].y" -187.14285278320312;
	setAttr ".tgi[1].ni[12].nvs" 18304;
	setAttr ".tgi[1].ni[13].x" 4141.4287109375;
	setAttr ".tgi[1].ni[13].y" -401.42855834960937;
	setAttr ".tgi[1].ni[13].nvs" 18304;
	setAttr ".tgi[2].tn" -type "string" "footAxle";
	setAttr ".tgi[2].vl" -type "double2" -516.33689419010636 -470.04039528941809 ;
	setAttr ".tgi[2].vh" -type "double2" 1630.4523411786042 796.08343055771434 ;
	setAttr -s 13 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" 545.71429443359375;
	setAttr ".tgi[2].ni[0].y" -111.42857360839844;
	setAttr ".tgi[2].ni[0].nvs" 18304;
	setAttr ".tgi[2].ni[1].x" 1145.7142333984375;
	setAttr ".tgi[2].ni[1].y" -25.714284896850586;
	setAttr ".tgi[2].ni[1].nvs" 18304;
	setAttr ".tgi[2].ni[2].x" 245.71427917480469;
	setAttr ".tgi[2].ni[2].y" -25.714284896850586;
	setAttr ".tgi[2].ni[2].nvs" 18304;
	setAttr ".tgi[2].ni[3].x" -268.57144165039063;
	setAttr ".tgi[2].ni[3].y" 317.14285278320312;
	setAttr ".tgi[2].ni[3].nvs" 18304;
	setAttr ".tgi[2].ni[4].x" 888.5714111328125;
	setAttr ".tgi[2].ni[4].y" -197.14285278320312;
	setAttr ".tgi[2].ni[4].nvs" 18304;
	setAttr ".tgi[2].ni[5].x" 888.5714111328125;
	setAttr ".tgi[2].ni[5].y" -25.714284896850586;
	setAttr ".tgi[2].ni[5].nvs" 18304;
	setAttr ".tgi[2].ni[6].x" -11.428571701049805;
	setAttr ".tgi[2].ni[6].y" 102.85713958740234;
	setAttr ".tgi[2].ni[6].nvs" 18336;
	setAttr ".tgi[2].ni[7].x" -782.85711669921875;
	setAttr ".tgi[2].ni[7].y" 17.142856597900391;
	setAttr ".tgi[2].ni[7].nvs" 18304;
	setAttr ".tgi[2].ni[8].x" -525.71429443359375;
	setAttr ".tgi[2].ni[8].y" 231.42857360839844;
	setAttr ".tgi[2].ni[8].nvs" 18304;
	setAttr ".tgi[2].ni[9].x" 1145.7142333984375;
	setAttr ".tgi[2].ni[9].y" -111.42857360839844;
	setAttr ".tgi[2].ni[9].nvs" 18304;
	setAttr ".tgi[2].ni[10].x" -654.28570556640625;
	setAttr ".tgi[2].ni[10].y" -111.42857360839844;
	setAttr ".tgi[2].ni[10].nvs" 18304;
	setAttr ".tgi[2].ni[11].x" -525.71429443359375;
	setAttr ".tgi[2].ni[11].y" 102.85713958740234;
	setAttr ".tgi[2].ni[11].nvs" 18304;
	setAttr ".tgi[2].ni[12].x" -525.71429443359375;
	setAttr ".tgi[2].ni[12].y" 317.14285278320312;
	setAttr ".tgi[2].ni[12].nvs" 18304;
	setAttr ".tgi[3].tn" -type "string" "footHinge";
	setAttr ".tgi[3].vl" -type "double2" -505.00350525575675 -887.73514284777798 ;
	setAttr ".tgi[3].vh" -type "double2" 2508.507990107049 889.56029020285428 ;
	setAttr -s 13 ".tgi[3].ni";
	setAttr ".tgi[3].ni[0].x" 1515.7142333984375;
	setAttr ".tgi[3].ni[0].y" -50;
	setAttr ".tgi[3].ni[0].nvs" 18304;
	setAttr ".tgi[3].ni[1].x" 572.85711669921875;
	setAttr ".tgi[3].ni[1].y" -92.857139587402344;
	setAttr ".tgi[3].ni[1].nvs" 18304;
	setAttr ".tgi[3].ni[2].x" -20;
	setAttr ".tgi[3].ni[2].y" 55.714286804199219;
	setAttr ".tgi[3].ni[2].nvs" 18304;
	setAttr ".tgi[3].ni[3].x" 1215.7142333984375;
	setAttr ".tgi[3].ni[3].y" -307.14285278320312;
	setAttr ".tgi[3].ni[3].nvs" 18304;
	setAttr ".tgi[3].ni[4].x" 315.71429443359375;
	setAttr ".tgi[3].ni[4].y" -92.857139587402344;
	setAttr ".tgi[3].ni[4].nvs" 18304;
	setAttr ".tgi[3].ni[5].x" 1515.7142333984375;
	setAttr ".tgi[3].ni[5].y" -221.42857360839844;
	setAttr ".tgi[3].ni[5].nvs" 18304;
	setAttr ".tgi[3].ni[6].x" 915.71429443359375;
	setAttr ".tgi[3].ni[6].y" -221.42857360839844;
	setAttr ".tgi[3].ni[6].nvs" 18304;
	setAttr ".tgi[3].ni[7].x" -327.14285278320312;
	setAttr ".tgi[3].ni[7].y" -221.42857360839844;
	setAttr ".tgi[3].ni[7].nvs" 18304;
	setAttr ".tgi[3].ni[8].x" -320;
	setAttr ".tgi[3].ni[8].y" 12.857142448425293;
	setAttr ".tgi[3].ni[8].nvs" 18304;
	setAttr ".tgi[3].ni[9].x" 1215.7142333984375;
	setAttr ".tgi[3].ni[9].y" -135.71427917480469;
	setAttr ".tgi[3].ni[9].nvs" 18304;
	setAttr ".tgi[3].ni[10].x" 1215.7142333984375;
	setAttr ".tgi[3].ni[10].y" -50;
	setAttr ".tgi[3].ni[10].nvs" 18304;
	setAttr ".tgi[3].ni[11].x" 1515.7142333984375;
	setAttr ".tgi[3].ni[11].y" -135.71427917480469;
	setAttr ".tgi[3].ni[11].nvs" 18304;
	setAttr ".tgi[3].ni[12].x" -327.14285278320312;
	setAttr ".tgi[3].ni[12].y" -92.857139587402344;
	setAttr ".tgi[3].ni[12].nvs" 18304;
	setAttr ".tgi[4].tn" -type "string" "kneeAxle";
	setAttr ".tgi[4].vl" -type "double2" 969.5820847962666 -164.73133313205577 ;
	setAttr ".tgi[4].vh" -type "double2" 2534.70187739324 758.3380707312466 ;
	setAttr -s 26 ".tgi[4].ni";
	setAttr ".tgi[4].ni[0].x" -2304.28564453125;
	setAttr ".tgi[4].ni[0].y" 20;
	setAttr ".tgi[4].ni[0].nvs" 18304;
	setAttr ".tgi[4].ni[1].x" 867.14288330078125;
	setAttr ".tgi[4].ni[1].y" 191.42857360839844;
	setAttr ".tgi[4].ni[1].nvs" 18304;
	setAttr ".tgi[4].ni[2].x" -418.57144165039062;
	setAttr ".tgi[4].ni[2].y" 577.14288330078125;
	setAttr ".tgi[4].ni[2].nvs" 18304;
	setAttr ".tgi[4].ni[3].x" 610;
	setAttr ".tgi[4].ni[3].y" 491.42855834960937;
	setAttr ".tgi[4].ni[3].nvs" 18304;
	setAttr ".tgi[4].ni[4].x" -1704.2857666015625;
	setAttr ".tgi[4].ni[4].y" 20;
	setAttr ".tgi[4].ni[4].nvs" 18304;
	setAttr ".tgi[4].ni[5].x" -3290;
	setAttr ".tgi[4].ni[5].y" 105.71428680419922;
	setAttr ".tgi[4].ni[5].nvs" 18304;
	setAttr ".tgi[4].ni[6].x" 1381.4285888671875;
	setAttr ".tgi[4].ni[6].y" 105.71428680419922;
	setAttr ".tgi[4].ni[6].nvs" 18304;
	setAttr ".tgi[4].ni[7].x" -161.42857360839844;
	setAttr ".tgi[4].ni[7].y" 234.28572082519531;
	setAttr ".tgi[4].ni[7].nvs" 18304;
	setAttr ".tgi[4].ni[8].x" -2561.428466796875;
	setAttr ".tgi[4].ni[8].y" -65.714286804199219;
	setAttr ".tgi[4].ni[8].nvs" 18304;
	setAttr ".tgi[4].ni[9].x" 1681.4285888671875;
	setAttr ".tgi[4].ni[9].y" 20;
	setAttr ".tgi[4].ni[9].nvs" 18304;
	setAttr ".tgi[4].ni[10].x" -3290;
	setAttr ".tgi[4].ni[10].y" -22.857143402099609;
	setAttr ".tgi[4].ni[10].nvs" 18304;
	setAttr ".tgi[4].ni[11].x" 1681.4285888671875;
	setAttr ".tgi[4].ni[11].y" 234.28572082519531;
	setAttr ".tgi[4].ni[11].nvs" 18304;
	setAttr ".tgi[4].ni[12].x" -2818.571533203125;
	setAttr ".tgi[4].ni[12].y" 20;
	setAttr ".tgi[4].ni[12].nvs" 18304;
	setAttr ".tgi[4].ni[13].x" 138.57142639160156;
	setAttr ".tgi[4].ni[13].y" 320;
	setAttr ".tgi[4].ni[13].nvs" 18304;
	setAttr ".tgi[4].ni[14].x" -2004.2857666015625;
	setAttr ".tgi[4].ni[14].y" 105.71428680419922;
	setAttr ".tgi[4].ni[14].nvs" 18304;
	setAttr ".tgi[4].ni[15].x" 1124.2857666015625;
	setAttr ".tgi[4].ni[15].y" 191.42857360839844;
	setAttr ".tgi[4].ni[15].nvs" 18304;
	setAttr ".tgi[4].ni[16].x" 352.85714721679687;
	setAttr ".tgi[4].ni[16].y" 448.57144165039062;
	setAttr ".tgi[4].ni[16].nvs" 18304;
	setAttr ".tgi[4].ni[17].x" -675.71429443359375;
	setAttr ".tgi[4].ni[17].y" 448.57144165039062;
	setAttr ".tgi[4].ni[17].nvs" 18304;
	setAttr ".tgi[4].ni[18].x" -975.71429443359375;
	setAttr ".tgi[4].ni[18].y" 448.57144165039062;
	setAttr ".tgi[4].ni[18].nvs" 18304;
	setAttr ".tgi[4].ni[19].x" 2067.142822265625;
	setAttr ".tgi[4].ni[19].y" 105.71428680419922;
	setAttr ".tgi[4].ni[19].nvs" 18304;
	setAttr ".tgi[4].ni[20].x" 2067.142822265625;
	setAttr ".tgi[4].ni[20].y" 320;
	setAttr ".tgi[4].ni[20].nvs" 18304;
	setAttr ".tgi[4].ni[21].x" -161.42857360839844;
	setAttr ".tgi[4].ni[21].y" 448.57144165039062;
	setAttr ".tgi[4].ni[21].nvs" 18304;
	setAttr ".tgi[4].ni[22].x" 2067.142822265625;
	setAttr ".tgi[4].ni[22].y" 234.28572082519531;
	setAttr ".tgi[4].ni[22].nvs" 18304;
	setAttr ".tgi[4].ni[23].x" -3032.857177734375;
	setAttr ".tgi[4].ni[23].y" 20;
	setAttr ".tgi[4].ni[23].nvs" 18304;
	setAttr ".tgi[4].ni[24].x" -1275.7142333984375;
	setAttr ".tgi[4].ni[24].y" 448.57144165039062;
	setAttr ".tgi[4].ni[24].nvs" 18304;
	setAttr ".tgi[4].ni[25].x" -1404.2857666015625;
	setAttr ".tgi[4].ni[25].y" 105.71428680419922;
	setAttr ".tgi[4].ni[25].nvs" 18304;
	setAttr ".tgi[5].tn" -type "string" "ankleAxle";
	setAttr ".tgi[5].vl" -type "double2" -366.58289579516799 -125.0270503787127 ;
	setAttr ".tgi[5].vh" -type "double2" 1371.4395913001708 900.01613714759071 ;
	setAttr -s 15 ".tgi[5].ni";
	setAttr ".tgi[5].ni[0].x" 738.5714111328125;
	setAttr ".tgi[5].ni[0].y" 518.5714111328125;
	setAttr ".tgi[5].ni[0].nvs" 18304;
	setAttr ".tgi[5].ni[1].x" 1038.5714111328125;
	setAttr ".tgi[5].ni[1].y" 518.5714111328125;
	setAttr ".tgi[5].ni[1].nvs" 18304;
	setAttr ".tgi[5].ni[2].x" 2281.428466796875;
	setAttr ".tgi[5].ni[2].y" 647.14288330078125;
	setAttr ".tgi[5].ni[2].nvs" 18304;
	setAttr ".tgi[5].ni[3].x" 1681.4285888671875;
	setAttr ".tgi[5].ni[3].y" 647.14288330078125;
	setAttr ".tgi[5].ni[3].nvs" 18304;
	setAttr ".tgi[5].ni[4].x" 1295.7142333984375;
	setAttr ".tgi[5].ni[4].y" 475.71429443359375;
	setAttr ".tgi[5].ni[4].nvs" 18304;
	setAttr ".tgi[5].ni[5].x" 52.857143402099609;
	setAttr ".tgi[5].ni[5].y" 518.5714111328125;
	setAttr ".tgi[5].ni[5].nvs" 18304;
	setAttr ".tgi[5].ni[6].x" 1981.4285888671875;
	setAttr ".tgi[5].ni[6].y" 561.4285888671875;
	setAttr ".tgi[5].ni[6].nvs" 18304;
	setAttr ".tgi[5].ni[7].x" 1981.4285888671875;
	setAttr ".tgi[5].ni[7].y" 775.71429443359375;
	setAttr ".tgi[5].ni[7].nvs" 18304;
	setAttr ".tgi[5].ni[8].x" -204.28572082519531;
	setAttr ".tgi[5].ni[8].y" 518.5714111328125;
	setAttr ".tgi[5].ni[8].nvs" 18304;
	setAttr ".tgi[5].ni[9].x" 1038.5714111328125;
	setAttr ".tgi[5].ni[9].y" 390;
	setAttr ".tgi[5].ni[9].nvs" 18304;
	setAttr ".tgi[5].ni[10].x" -204.28572082519531;
	setAttr ".tgi[5].ni[10].y" 647.14288330078125;
	setAttr ".tgi[5].ni[10].nvs" 18304;
	setAttr ".tgi[5].ni[11].x" 81.428573608398438;
	setAttr ".tgi[5].ni[11].y" 344.28570556640625;
	setAttr ".tgi[5].ni[11].nvs" 18304;
	setAttr ".tgi[5].ni[12].x" 395.71429443359375;
	setAttr ".tgi[5].ni[12].y" 647.14288330078125;
	setAttr ".tgi[5].ni[12].nvs" 18304;
	setAttr ".tgi[5].ni[13].x" 378.57144165039062;
	setAttr ".tgi[5].ni[13].y" 248.57142639160156;
	setAttr ".tgi[5].ni[13].nvs" 18304;
	setAttr ".tgi[5].ni[14].x" 2281.428466796875;
	setAttr ".tgi[5].ni[14].y" 775.71429443359375;
	setAttr ".tgi[5].ni[14].nvs" 18304;
	setAttr ".tgi[6].tn" -type "string" "ankleSwivel";
	setAttr ".tgi[6].vl" -type "double2" -1272.2982396026885 -31.20302094165303 ;
	setAttr ".tgi[6].vh" -type "double2" 672.84876953419143 1115.9971477887011 ;
	setAttr -s 30 ".tgi[6].ni";
	setAttr ".tgi[6].ni[0].x" -1297.142822265625;
	setAttr ".tgi[6].ni[0].y" 470;
	setAttr ".tgi[6].ni[0].nvs" 18304;
	setAttr ".tgi[6].ni[1].x" -1554.2857666015625;
	setAttr ".tgi[6].ni[1].y" 641.4285888671875;
	setAttr ".tgi[6].ni[1].nvs" 18304;
	setAttr ".tgi[6].ni[2].x" -48.571430206298828;
	setAttr ".tgi[6].ni[2].y" 470;
	setAttr ".tgi[6].ni[2].nvs" 18304;
	setAttr ".tgi[6].ni[3].x" -1211.4285888671875;
	setAttr ".tgi[6].ni[3].y" 770;
	setAttr ".tgi[6].ni[3].nvs" 18304;
	setAttr ".tgi[6].ni[4].x" -740;
	setAttr ".tgi[6].ni[4].y" 641.4285888671875;
	setAttr ".tgi[6].ni[4].nvs" 18304;
	setAttr ".tgi[6].ni[5].x" 1188.5714111328125;
	setAttr ".tgi[6].ni[5].y" 255.71427917480469;
	setAttr ".tgi[6].ni[5].nvs" 18304;
	setAttr ".tgi[6].ni[6].x" 251.42857360839844;
	setAttr ".tgi[6].ni[6].y" 341.42855834960937;
	setAttr ".tgi[6].ni[6].nvs" 18304;
	setAttr ".tgi[6].ni[7].x" 2645.71435546875;
	setAttr ".tgi[6].ni[7].y" 770;
	setAttr ".tgi[6].ni[7].nvs" 18304;
	setAttr ".tgi[6].ni[8].x" 251.42857360839844;
	setAttr ".tgi[6].ni[8].y" 512.85711669921875;
	setAttr ".tgi[6].ni[8].nvs" 18304;
	setAttr ".tgi[6].ni[9].x" -782.85711669921875;
	setAttr ".tgi[6].ni[9].y" 298.57144165039062;
	setAttr ".tgi[6].ni[9].nvs" 18304;
	setAttr ".tgi[6].ni[10].x" -1768.5714111328125;
	setAttr ".tgi[6].ni[10].y" 770;
	setAttr ".tgi[6].ni[10].nvs" 18304;
	setAttr ".tgi[6].ni[11].x" -2282.857177734375;
	setAttr ".tgi[6].ni[11].y" 770;
	setAttr ".tgi[6].ni[11].nvs" 18304;
	setAttr ".tgi[6].ni[12].x" -48.571430206298828;
	setAttr ".tgi[6].ni[12].y" 341.42855834960937;
	setAttr ".tgi[6].ni[12].nvs" 18304;
	setAttr ".tgi[6].ni[13].x" 3288.571533203125;
	setAttr ".tgi[6].ni[13].y" 641.4285888671875;
	setAttr ".tgi[6].ni[13].nvs" 18304;
	setAttr ".tgi[6].ni[14].x" -1291.4285888671875;
	setAttr ".tgi[6].ni[14].y" 255.71427917480469;
	setAttr ".tgi[6].ni[14].nvs" 18304;
	setAttr ".tgi[6].ni[15].x" -48.571430206298828;
	setAttr ".tgi[6].ni[15].y" 555.71429443359375;
	setAttr ".tgi[6].ni[15].nvs" 18304;
	setAttr ".tgi[6].ni[16].x" 2988.571533203125;
	setAttr ".tgi[6].ni[16].y" 555.71429443359375;
	setAttr ".tgi[6].ni[16].nvs" 18304;
	setAttr ".tgi[6].ni[17].x" -482.85714721679687;
	setAttr ".tgi[6].ni[17].y" 555.71429443359375;
	setAttr ".tgi[6].ni[17].nvs" 18304;
	setAttr ".tgi[6].ni[18].x" -2925.71435546875;
	setAttr ".tgi[6].ni[18].y" 770;
	setAttr ".tgi[6].ni[18].nvs" 18304;
	setAttr ".tgi[6].ni[19].x" 1622.857177734375;
	setAttr ".tgi[6].ni[19].y" 512.85711669921875;
	setAttr ".tgi[6].ni[19].nvs" 18304;
	setAttr ".tgi[6].ni[20].x" 594.28570556640625;
	setAttr ".tgi[6].ni[20].y" 512.85711669921875;
	setAttr ".tgi[6].ni[20].nvs" 18304;
	setAttr ".tgi[6].ni[21].x" -1040;
	setAttr ".tgi[6].ni[21].y" 555.71429443359375;
	setAttr ".tgi[6].ni[21].nvs" 18304;
	setAttr ".tgi[6].ni[22].x" -2625.71435546875;
	setAttr ".tgi[6].ni[22].y" 770;
	setAttr ".tgi[6].ni[22].nvs" 18304;
	setAttr ".tgi[6].ni[23].x" -2925.71435546875;
	setAttr ".tgi[6].ni[23].y" 641.4285888671875;
	setAttr ".tgi[6].ni[23].nvs" 18304;
	setAttr ".tgi[6].ni[24].x" 2645.71435546875;
	setAttr ".tgi[6].ni[24].y" 641.4285888671875;
	setAttr ".tgi[6].ni[24].nvs" 18304;
	setAttr ".tgi[6].ni[25].x" 888.5714111328125;
	setAttr ".tgi[6].ni[25].y" 341.42855834960937;
	setAttr ".tgi[6].ni[25].nvs" 18304;
	setAttr ".tgi[6].ni[26].x" 1960;
	setAttr ".tgi[6].ni[26].y" 641.4285888671875;
	setAttr ".tgi[6].ni[26].nvs" 18304;
	setAttr ".tgi[6].ni[27].x" -2025.7142333984375;
	setAttr ".tgi[6].ni[27].y" 855.71429443359375;
	setAttr ".tgi[6].ni[27].nvs" 18304;
	setAttr ".tgi[6].ni[28].x" 2345.71435546875;
	setAttr ".tgi[6].ni[28].y" 555.71429443359375;
	setAttr ".tgi[6].ni[28].nvs" 18304;
	setAttr ".tgi[6].ni[29].x" 3288.571533203125;
	setAttr ".tgi[6].ni[29].y" 770;
	setAttr ".tgi[6].ni[29].nvs" 18304;
	setAttr ".tgi[7].tn" -type "string" "kneeHinge";
	setAttr ".tgi[7].vl" -type "double2" 248.32441020271796 -147.96712616151532 ;
	setAttr ".tgi[7].vh" -type "double2" 1778.5885595858197 754.54527116792008 ;
	setAttr -s 28 ".tgi[7].ni";
	setAttr ".tgi[7].ni[0].x" 781.4285888671875;
	setAttr ".tgi[7].ni[0].y" 178.57142639160156;
	setAttr ".tgi[7].ni[0].nvs" 18304;
	setAttr ".tgi[7].ni[1].x" 1895.7142333984375;
	setAttr ".tgi[7].ni[1].y" 264.28570556640625;
	setAttr ".tgi[7].ni[1].nvs" 18304;
	setAttr ".tgi[7].ni[2].x" 4062.857177734375;
	setAttr ".tgi[7].ni[2].y" -275.71429443359375;
	setAttr ".tgi[7].ni[2].nvs" 18304;
	setAttr ".tgi[7].ni[3].x" 3548.571533203125;
	setAttr ".tgi[7].ni[3].y" -190;
	setAttr ".tgi[7].ni[3].nvs" 18304;
	setAttr ".tgi[7].ni[4].x" 1852.857177734375;
	setAttr ".tgi[7].ni[4].y" 92.857139587402344;
	setAttr ".tgi[7].ni[4].nvs" 18304;
	setAttr ".tgi[7].ni[5].x" 4381.4287109375;
	setAttr ".tgi[7].ni[5].y" 178.57142639160156;
	setAttr ".tgi[7].ni[5].nvs" 18304;
	setAttr ".tgi[7].ni[6].x" 4326.61865234375;
	setAttr ".tgi[7].ni[6].y" -346.65908813476562;
	setAttr ".tgi[7].ni[6].nvs" 20688;
	setAttr ".tgi[7].ni[7].x" 3872.857177734375;
	setAttr ".tgi[7].ni[7].y" 1.4285714626312256;
	setAttr ".tgi[7].ni[7].nvs" 18304;
	setAttr ".tgi[7].ni[8].x" 5501.4287109375;
	setAttr ".tgi[7].ni[8].y" -41.428569793701172;
	setAttr ".tgi[7].ni[8].nvs" 18304;
	setAttr ".tgi[7].ni[9].x" 2758.571533203125;
	setAttr ".tgi[7].ni[9].y" 172.85714721679687;
	setAttr ".tgi[7].ni[9].nvs" 18304;
	setAttr ".tgi[7].ni[10].x" 3810;
	setAttr ".tgi[7].ni[10].y" -361.42855834960937;
	setAttr ".tgi[7].ni[10].nvs" 18304;
	setAttr ".tgi[7].ni[11].x" 2458.571533203125;
	setAttr ".tgi[7].ni[11].y" 87.142860412597656;
	setAttr ".tgi[7].ni[11].nvs" 18304;
	setAttr ".tgi[7].ni[12].x" 5501.4287109375;
	setAttr ".tgi[7].ni[12].y" 172.85714721679687;
	setAttr ".tgi[7].ni[12].nvs" 18304;
	setAttr ".tgi[7].ni[13].x" 1038.5714111328125;
	setAttr ".tgi[7].ni[13].y" 92.857139587402344;
	setAttr ".tgi[7].ni[13].nvs" 18304;
	setAttr ".tgi[7].ni[14].x" 1595.7142333984375;
	setAttr ".tgi[7].ni[14].y" 7.1428570747375488;
	setAttr ".tgi[7].ni[14].nvs" 18304;
	setAttr ".tgi[7].ni[15].x" 5501.4287109375;
	setAttr ".tgi[7].ni[15].y" -170;
	setAttr ".tgi[7].ni[15].nvs" 18304;
	setAttr ".tgi[7].ni[16].x" 3205.71435546875;
	setAttr ".tgi[7].ni[16].y" -190;
	setAttr ".tgi[7].ni[16].nvs" 18304;
	setAttr ".tgi[7].ni[17].x" 4130;
	setAttr ".tgi[7].ni[17].y" 1.4285714626312256;
	setAttr ".tgi[7].ni[17].nvs" 18304;
	setAttr ".tgi[7].ni[18].x" 5201.4287109375;
	setAttr ".tgi[7].ni[18].y" 172.85714721679687;
	setAttr ".tgi[7].ni[18].nvs" 18304;
	setAttr ".tgi[7].ni[19].x" 2195.71435546875;
	setAttr ".tgi[7].ni[19].y" 178.57142639160156;
	setAttr ".tgi[7].ni[19].nvs" 18304;
	setAttr ".tgi[7].ni[20].x" 3805.71435546875;
	setAttr ".tgi[7].ni[20].y" -275.71429443359375;
	setAttr ".tgi[7].ni[20].nvs" 18304;
	setAttr ".tgi[7].ni[21].x" 5158.5712890625;
	setAttr ".tgi[7].ni[21].y" -255.71427917480469;
	setAttr ".tgi[7].ni[21].nvs" 18304;
	setAttr ".tgi[7].ni[22].x" 5201.4287109375;
	setAttr ".tgi[7].ni[22].y" 87.142860412597656;
	setAttr ".tgi[7].ni[22].nvs" 18304;
	setAttr ".tgi[7].ni[23].x" 5501.4287109375;
	setAttr ".tgi[7].ni[23].y" 87.142860412597656;
	setAttr ".tgi[7].ni[23].nvs" 18304;
	setAttr ".tgi[7].ni[24].x" 2820;
	setAttr ".tgi[7].ni[24].y" -190;
	setAttr ".tgi[7].ni[24].nvs" 18304;
	setAttr ".tgi[7].ni[25].x" 1338.5714111328125;
	setAttr ".tgi[7].ni[25].y" 92.857139587402344;
	setAttr ".tgi[7].ni[25].nvs" 18304;
	setAttr ".tgi[7].ni[26].x" 3872.857177734375;
	setAttr ".tgi[7].ni[26].y" 87.142860412597656;
	setAttr ".tgi[7].ni[26].nvs" 18304;
	setAttr ".tgi[7].ni[27].x" 4858.5712890625;
	setAttr ".tgi[7].ni[27].y" -170;
	setAttr ".tgi[7].ni[27].nvs" 18304;
	setAttr ".tgi[8].tn" -type "string" "hipSwivel";
	setAttr ".tgi[8].vl" -type "double2" -1874.6336251424652 -1007.7959461787007 ;
	setAttr ".tgi[8].vh" -type "double2" 4023.5346386538827 2470.7995510478236 ;
	setAttr -s 12 ".tgi[8].ni";
	setAttr ".tgi[8].ni[0].x" 1927.142822265625;
	setAttr ".tgi[8].ni[0].y" 708.5714111328125;
	setAttr ".tgi[8].ni[0].nvs" 18304;
	setAttr ".tgi[8].ni[1].x" 598.5714111328125;
	setAttr ".tgi[8].ni[1].y" 965.71429443359375;
	setAttr ".tgi[8].ni[1].nvs" 18304;
	setAttr ".tgi[8].ni[2].x" -172.85714721679687;
	setAttr ".tgi[8].ni[2].y" 708.5714111328125;
	setAttr ".tgi[8].ni[2].nvs" 18304;
	setAttr ".tgi[8].ni[3].x" 1541.4285888671875;
	setAttr ".tgi[8].ni[3].y" 622.85711669921875;
	setAttr ".tgi[8].ni[3].nvs" 18304;
	setAttr ".tgi[8].ni[4].x" -172.85714721679687;
	setAttr ".tgi[8].ni[4].y" 922.85711669921875;
	setAttr ".tgi[8].ni[4].nvs" 18304;
	setAttr ".tgi[8].ni[5].x" 855.71429443359375;
	setAttr ".tgi[8].ni[5].y" 922.85711669921875;
	setAttr ".tgi[8].ni[5].nvs" 18304;
	setAttr ".tgi[8].ni[6].x" 1198.5714111328125;
	setAttr ".tgi[8].ni[6].y" 708.5714111328125;
	setAttr ".tgi[8].ni[6].nvs" 18304;
	setAttr ".tgi[8].ni[7].x" 84.285713195800781;
	setAttr ".tgi[8].ni[7].y" 922.85711669921875;
	setAttr ".tgi[8].ni[7].nvs" 18304;
	setAttr ".tgi[8].ni[8].x" 1927.142822265625;
	setAttr ".tgi[8].ni[8].y" 794.28570556640625;
	setAttr ".tgi[8].ni[8].nvs" 18304;
	setAttr ".tgi[8].ni[9].x" 341.42855834960937;
	setAttr ".tgi[8].ni[9].y" 922.85711669921875;
	setAttr ".tgi[8].ni[9].nvs" 18304;
	setAttr ".tgi[8].ni[10].x" 598.5714111328125;
	setAttr ".tgi[8].ni[10].y" 880;
	setAttr ".tgi[8].ni[10].nvs" 18304;
	setAttr ".tgi[8].ni[11].x" 1541.4285888671875;
	setAttr ".tgi[8].ni[11].y" 794.28570556640625;
	setAttr ".tgi[8].ni[11].nvs" 18304;
	setAttr ".tgi[9].tn" -type "string" "kneeSwivel";
	setAttr ".tgi[9].vl" -type "double2" 101.40657322330429 -318.38665795469103 ;
	setAttr ".tgi[9].vh" -type "double2" 3309.970417473095 1573.9458836041008 ;
	setAttr -s 23 ".tgi[9].ni";
	setAttr ".tgi[9].ni[0].x" 2785.71435546875;
	setAttr ".tgi[9].ni[0].y" 454.28570556640625;
	setAttr ".tgi[9].ni[0].nvs" 18304;
	setAttr ".tgi[9].ni[1].x" 3428.571533203125;
	setAttr ".tgi[9].ni[1].y" 925.71429443359375;
	setAttr ".tgi[9].ni[1].nvs" 18304;
	setAttr ".tgi[9].ni[2].x" 3428.571533203125;
	setAttr ".tgi[9].ni[2].y" 840;
	setAttr ".tgi[9].ni[2].nvs" 18304;
	setAttr ".tgi[9].ni[3].x" 642.85711669921875;
	setAttr ".tgi[9].ni[3].y" 454.28570556640625;
	setAttr ".tgi[9].ni[3].nvs" 18304;
	setAttr ".tgi[9].ni[4].x" 3428.571533203125;
	setAttr ".tgi[9].ni[4].y" 711.4285888671875;
	setAttr ".tgi[9].ni[4].nvs" 18304;
	setAttr ".tgi[9].ni[5].x" 4928.5712890625;
	setAttr ".tgi[9].ni[5].y" 454.28570556640625;
	setAttr ".tgi[9].ni[5].nvs" 18304;
	setAttr ".tgi[9].ni[6].x" 1885.7142333984375;
	setAttr ".tgi[9].ni[6].y" 540;
	setAttr ".tgi[9].ni[6].nvs" 18304;
	setAttr ".tgi[9].ni[7].x" 5528.5712890625;
	setAttr ".tgi[9].ni[7].y" 540;
	setAttr ".tgi[9].ni[7].nvs" 18304;
	setAttr ".tgi[9].ni[8].x" 4242.85693359375;
	setAttr ".tgi[9].ni[8].y" 582.85711669921875;
	setAttr ".tgi[9].ni[8].nvs" 18304;
	setAttr ".tgi[9].ni[9].x" 2228.571533203125;
	setAttr ".tgi[9].ni[9].y" 454.28570556640625;
	setAttr ".tgi[9].ni[9].nvs" 18304;
	setAttr ".tgi[9].ni[10].x" 3942.857177734375;
	setAttr ".tgi[9].ni[10].y" 668.5714111328125;
	setAttr ".tgi[9].ni[10].nvs" 18304;
	setAttr ".tgi[9].ni[11].x" 1028.5714111328125;
	setAttr ".tgi[9].ni[11].y" 540;
	setAttr ".tgi[9].ni[11].nvs" 18304;
	setAttr ".tgi[9].ni[12].x" 3685.71435546875;
	setAttr ".tgi[9].ni[12].y" 882.85711669921875;
	setAttr ".tgi[9].ni[12].nvs" 18304;
	setAttr ".tgi[9].ni[13].x" 3128.571533203125;
	setAttr ".tgi[9].ni[13].y" 668.5714111328125;
	setAttr ".tgi[9].ni[13].nvs" 18304;
	setAttr ".tgi[9].ni[14].x" 5228.5712890625;
	setAttr ".tgi[9].ni[14].y" 540;
	setAttr ".tgi[9].ni[14].nvs" 18304;
	setAttr ".tgi[9].ni[15].x" 1285.7142333984375;
	setAttr ".tgi[9].ni[15].y" 540;
	setAttr ".tgi[9].ni[15].nvs" 18304;
	setAttr ".tgi[9].ni[16].x" 4628.5712890625;
	setAttr ".tgi[9].ni[16].y" 582.85711669921875;
	setAttr ".tgi[9].ni[16].nvs" 18304;
	setAttr ".tgi[9].ni[17].x" 1585.7142333984375;
	setAttr ".tgi[9].ni[17].y" 625.71429443359375;
	setAttr ".tgi[9].ni[17].nvs" 18304;
	setAttr ".tgi[9].ni[18].x" 642.85711669921875;
	setAttr ".tgi[9].ni[18].y" 625.71429443359375;
	setAttr ".tgi[9].ni[18].nvs" 18304;
	setAttr ".tgi[9].ni[19].x" 4242.85693359375;
	setAttr ".tgi[9].ni[19].y" 668.5714111328125;
	setAttr ".tgi[9].ni[19].nvs" 18304;
	setAttr ".tgi[9].ni[20].x" 2485.71435546875;
	setAttr ".tgi[9].ni[20].y" 368.57144165039063;
	setAttr ".tgi[9].ni[20].nvs" 18304;
	setAttr ".tgi[9].ni[21].x" 5228.5712890625;
	setAttr ".tgi[9].ni[21].y" 368.57144165039063;
	setAttr ".tgi[9].ni[21].nvs" 18304;
	setAttr ".tgi[9].ni[22].x" 5528.5712890625;
	setAttr ".tgi[9].ni[22].y" 454.28570556640625;
	setAttr ".tgi[9].ni[22].nvs" 18304;
	setAttr ".tgi[10].tn" -type "string" "hipAxle";
	setAttr ".tgi[10].vl" -type "double2" 1509.3863869088209 -74.999997019767761 ;
	setAttr ".tgi[10].vh" -type "double2" 8063.2322803285369 1699.9999324480718 ;
	setAttr -s 14 ".tgi[10].ni";
	setAttr ".tgi[10].ni[0].x" 5782.85693359375;
	setAttr ".tgi[10].ni[0].y" 732.85711669921875;
	setAttr ".tgi[10].ni[0].nvs" 18304;
	setAttr ".tgi[10].ni[1].x" 3511.428466796875;
	setAttr ".tgi[10].ni[1].y" 861.4285888671875;
	setAttr ".tgi[10].ni[1].nvs" 18304;
	setAttr ".tgi[10].ni[2].x" 5782.85693359375;
	setAttr ".tgi[10].ni[2].y" 947.14288330078125;
	setAttr ".tgi[10].ni[2].nvs" 18304;
	setAttr ".tgi[10].ni[3].x" 4197.14306640625;
	setAttr ".tgi[10].ni[3].y" 861.4285888671875;
	setAttr ".tgi[10].ni[3].nvs" 18304;
	setAttr ".tgi[10].ni[4].x" 4925.71435546875;
	setAttr ".tgi[10].ni[4].y" 732.85711669921875;
	setAttr ".tgi[10].ni[4].nvs" 18304;
	setAttr ".tgi[10].ni[5].x" 3854.28564453125;
	setAttr ".tgi[10].ni[5].y" 861.4285888671875;
	setAttr ".tgi[10].ni[5].nvs" 18304;
	setAttr ".tgi[10].ni[6].x" 5525.71435546875;
	setAttr ".tgi[10].ni[6].y" 947.14288330078125;
	setAttr ".tgi[10].ni[6].nvs" 18304;
	setAttr ".tgi[10].ni[7].x" 5782.85693359375;
	setAttr ".tgi[10].ni[7].y" 818.5714111328125;
	setAttr ".tgi[10].ni[7].nvs" 18304;
	setAttr ".tgi[10].ni[8].x" 5525.71435546875;
	setAttr ".tgi[10].ni[8].y" 732.85711669921875;
	setAttr ".tgi[10].ni[8].nvs" 18304;
	setAttr ".tgi[10].ni[9].x" 5268.5712890625;
	setAttr ".tgi[10].ni[9].y" 947.14288330078125;
	setAttr ".tgi[10].ni[9].nvs" 18304;
	setAttr ".tgi[10].ni[10].x" 4497.14306640625;
	setAttr ".tgi[10].ni[10].y" 947.14288330078125;
	setAttr ".tgi[10].ni[10].nvs" 18304;
	setAttr ".tgi[10].ni[11].x" 3511.428466796875;
	setAttr ".tgi[10].ni[11].y" 732.85711669921875;
	setAttr ".tgi[10].ni[11].nvs" 18304;
	setAttr ".tgi[10].ni[12].x" 3511.428466796875;
	setAttr ".tgi[10].ni[12].y" 947.14288330078125;
	setAttr ".tgi[10].ni[12].nvs" 18304;
	setAttr ".tgi[10].ni[13].x" 4497.14306640625;
	setAttr ".tgi[10].ni[13].y" 861.4285888671875;
	setAttr ".tgi[10].ni[13].nvs" 18304;
	setAttr ".tgi[11].tn" -type "string" "hipHinge";
	setAttr ".tgi[11].vl" -type "double2" -2726.0229964797527 -1040.4761491313832 ;
	setAttr ".tgi[11].vh" -type "double2" 1539.1182817383474 1474.9999413887685 ;
	setAttr -s 14 ".tgi[11].ni";
	setAttr ".tgi[11].ni[0].x" -624.28570556640625;
	setAttr ".tgi[11].ni[0].y" 75.714286804199219;
	setAttr ".tgi[11].ni[0].nvs" 18304;
	setAttr ".tgi[11].ni[1].x" -1524.2857666015625;
	setAttr ".tgi[11].ni[1].y" 75.714286804199219;
	setAttr ".tgi[11].ni[1].nvs" 18304;
	setAttr ".tgi[11].ni[2].x" -2252.857177734375;
	setAttr ".tgi[11].ni[2].y" 75.714286804199219;
	setAttr ".tgi[11].ni[2].nvs" 18304;
	setAttr ".tgi[11].ni[3].x" -324.28570556640625;
	setAttr ".tgi[11].ni[3].y" 247.14285278320312;
	setAttr ".tgi[11].ni[3].nvs" 18304;
	setAttr ".tgi[11].ni[4].x" -2252.857177734375;
	setAttr ".tgi[11].ni[4].y" 332.85714721679687;
	setAttr ".tgi[11].ni[4].nvs" 18304;
	setAttr ".tgi[11].ni[5].x" -1910;
	setAttr ".tgi[11].ni[5].y" 75.714286804199219;
	setAttr ".tgi[11].ni[5].nvs" 18304;
	setAttr ".tgi[11].ni[6].x" 618.5714111328125;
	setAttr ".tgi[11].ni[6].y" 247.14285278320312;
	setAttr ".tgi[11].ni[6].nvs" 18304;
	setAttr ".tgi[11].ni[7].x" 618.5714111328125;
	setAttr ".tgi[11].ni[7].y" 461.42855834960937;
	setAttr ".tgi[11].ni[7].nvs" 18304;
	setAttr ".tgi[11].ni[8].x" 875.71429443359375;
	setAttr ".tgi[11].ni[8].y" 332.85714721679687;
	setAttr ".tgi[11].ni[8].nvs" 18304;
	setAttr ".tgi[11].ni[9].x" -881.4285888671875;
	setAttr ".tgi[11].ni[9].y" 247.14285278320312;
	setAttr ".tgi[11].ni[9].nvs" 18304;
	setAttr ".tgi[11].ni[10].x" 361.42855834960937;
	setAttr ".tgi[11].ni[10].y" 332.85714721679687;
	setAttr ".tgi[11].ni[10].nvs" 18304;
	setAttr ".tgi[11].ni[11].x" 875.71429443359375;
	setAttr ".tgi[11].ni[11].y" 461.42855834960937;
	setAttr ".tgi[11].ni[11].nvs" 18304;
	setAttr ".tgi[11].ni[12].x" -624.28570556640625;
	setAttr ".tgi[11].ni[12].y" 161.42857360839844;
	setAttr ".tgi[11].ni[12].nvs" 18304;
	setAttr ".tgi[11].ni[13].x" -1181.4285888671875;
	setAttr ".tgi[11].ni[13].y" 161.42857360839844;
	setAttr ".tgi[11].ni[13].nvs" 18304;
createNode vectorProduct -n "kneeAxle_guided_upVector";
	rename -uid "F8DCC93A-4FFF-AA1B-63DB-B5B87D81B8B8";
	setAttr ".op" 4;
createNode vectorProduct -n "kneeAxle_guided_upVector_normal";
	rename -uid "E5C5474B-45A6-5C83-260A-D8B89AD248AA";
	setAttr ".op" 0;
	setAttr ".no" yes;
select -ne :time1;
	setAttr ".o" 0;
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
	setAttr -s 154 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".ovt" no;
	setAttr ".povt" no;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "hipHinge_guided_srtOffset.t" "hipHinge_srtOffset.t";
connectAttr "hipSwivel_guided_srtOffset.t" "hipSwivel_srtOffset.t";
connectAttr "hipAxle_guided_srtOffset.t" "hipAxle_srtOffset.t";
connectAttr "kneeSwivel_base_guided_srtOffset.t" "kneeSwivel_base_srtOffset.t";
connectAttr "kneeSwivel_guided_worldUpObject.upVector" "kneeSwivel_worldUpObject.upVector"
		;
connectAttr "kneeSwivel_guided_worldUpObject.t" "kneeSwivel_worldUpObject.t";
connectAttr "kneeAxle_guided_srtOffset.t" "kneeAxle_srtOffset.t";
connectAttr "kneeHinge_guided_srtOffset.t" "kneeHinge_srtOffset.t";
connectAttr "ankleAxle_guided_worldUpObject.upVector" "ankleAxle_worldUpObject.upVector"
		;
connectAttr "ankleAxle_guided_worldUpObject.t" "ankleAxle_worldUpObject.t";
connectAttr "kneeSwivel_end_guided_srtOffset.t" "kneeSwivel_end_srtOffset.t";
connectAttr "kneeAxle_guided_worldUpObject.upVector" "kneeAxle_worldUpObject.upVector"
		;
connectAttr "kneeAxle_guided_worldUpObject.t" "kneeAxle_worldUpObject.t";
connectAttr "ankleSwivel_guided_srtOffset.upVector" "ankleSwivel_srtOffset.upVector"
		;
connectAttr "ankleSwivel_guided_srtOffset.t" "ankleSwivel_srtOffset.t";
connectAttr "legEnd_guided_srtOffset.t" "legEnd_srtOffset.t";
connectAttr "footAxle_guided_worldUpObject.upVector" "footAxle_worldUpObject.upVector"
		;
connectAttr "footAxle_guided_worldUpObject.t" "footAxle_worldUpObject.t";
connectAttr "footHinge_guided_srtOffset.upVector" "footHinge_srtOffset.upVector"
		;
connectAttr "footHinge_guided_srtOffset.t" "footHinge_srtOffset.t";
connectAttr "ankleAxle_guided_srtOffset.aimVector" "ankleAxle_srtOffset.aimVector"
		;
connectAttr "ankleAxle_guided_srtOffset.t" "ankleAxle_srtOffset.t";
connectAttr "footAxle_guided_srtOffset.t" "footAxle_srtOffset.t";
connectAttr "shoulder_srt.t" "shoulder_guided_srt.t";
connectAttr "shoulder_srt.r" "shoulder_guided_srt.r";
connectAttr "shoulder_srt.s" "shoulder_guided_srt.s";
connectAttr "hip_srt.t" "hip_guided_srt.t";
connectAttr "hip_srt.r" "hip_guided_srt.r";
connectAttr "hip_srt.s" "hip_guided_srt.s";
connectAttr "hipHinge_guided_position.o" "hipHinge_guided_srtOffset.t";
connectAttr "hipSwivel_guided_position.o" "hipSwivel_guided_srtOffset.t";
connectAttr "hipAxle_guided_position.o" "hipAxle_guided_srtOffset.t";
connectAttr "kneeSwivel_base_guided_position.o" "kneeSwivel_base_guided_srtOffset.t"
		;
connectAttr "kneeSwivel_end_guided_upVector_normal.o" "kneeSwivel_guided_worldUpObject.upVector"
		;
connectAttr "hipAxle_guided_position.o" "kneeSwivel_guided_worldUpObject.t";
connectAttr "knee_srt.t" "knee_guided_srt.t";
connectAttr "knee_srt.r" "knee_guided_srt.r";
connectAttr "knee_srt.s" "knee_guided_srt.s";
connectAttr "kneeAxle_guided_position.o" "kneeAxle_guided_srtOffset.t";
connectAttr "kneeHinge_guided_position.o" "kneeHinge_guided_srtOffset.t";
connectAttr "ankleAxle_guided_upVector_normal.o" "ankleAxle_guided_worldUpObject.upVector"
		;
connectAttr "kneeHinge_guided_position.o" "ankleAxle_guided_worldUpObject.t";
connectAttr "kneeSwivel_end_guided_position.ox" "kneeSwivel_end_guided_srtOffset.tx"
		;
connectAttr "kneeSwivel_end_guided_position.oz" "kneeSwivel_end_guided_srtOffset.tz"
		;
connectAttr "ankle_srt.t" "ankle_guided_srt.t";
connectAttr "ankle_srt.r" "ankle_guided_srt.r";
connectAttr "ankle_srt.s" "ankle_guided_srt.s";
connectAttr "kneeAxle_guided_upVector_normal.o" "kneeAxle_guided_worldUpObject.upVector"
		;
connectAttr "kneeAxle_worldUpObject_guided_position.ox" "kneeAxle_guided_worldUpObject.tx"
		;
connectAttr "kneeAxle_worldUpObject_guided_position.oy" "kneeAxle_guided_worldUpObject.ty"
		;
connectAttr "ankleSwivel_guided_upVector_normal.o" "ankleSwivel_guided_srtOffset.upVector"
		;
connectAttr "ankleSwivel_guided_position.ox" "ankleSwivel_guided_srtOffset.tx";
connectAttr "ankleSwivel_guided_position.oy" "ankleSwivel_guided_srtOffset.ty";
connectAttr "legEnd_guided_position.o" "legEnd_guided_srtOffset.t";
connectAttr "footAxle_guided_upVector_normal.o" "footAxle_guided_worldUpObject.upVector"
		;
connectAttr "footAxle_upObject_guided_position.oz" "footAxle_guided_worldUpObject.tz"
		;
connectAttr "foot_srt.t" "foot_guided_srt.t";
connectAttr "foot_srt.r" "foot_guided_srt.r";
connectAttr "foot_srt.s" "foot_guided_srt.s";
connectAttr "footHinge_guided_upVector_normal.o" "footHinge_guided_srtOffset.upVector"
		;
connectAttr "footHinge_guided_position.o" "footHinge_guided_srtOffset.t";
connectAttr "ankleAxle_guided_aimVector_normal.o" "ankleAxle_guided_srtOffset.aimVector"
		;
connectAttr "ankeAxle_guided_position.o" "ankleAxle_guided_srtOffset.t";
connectAttr "footAxle_guided_position.o" "footAxle_guided_srtOffset.t";
connectAttr "ankleAxle_aim_targetTranslate.o3" "ankleAxle_aimConstraint.tg[0].tt"
		;
connectAttr "footHinge_pass.worldMatrix" "ankleAxle_aimConstraint.tg[0].tpm";
connectAttr "ankleAxle_worldUpMatrix.o" "ankleAxle_aimConstraint.wum";
connectAttr "footHinge_pass.worldInverseMatrix" "ankleAxle_aimConstraint.cpim";
connectAttr "ankleAxle_srtOffset.t" "ankleAxle_aimConstraint.ct";
connectAttr "ankleAxle_worldUpObject.upVector" "ankleAxle_aimConstraint.u";
connectAttr "ankleAxle_srtOffset.aimVector" "ankleAxle_aimConstraint.a";
connectAttr "ankleSwivel_srtOffset.t" "ankleSwivel_aimConstraint.ct";
connectAttr "ankleSwivel_parent_pass.worldInverseMatrix" "ankleSwivel_aimConstraint.cpim"
		;
connectAttr "ankleSwivel_worldUpMatrix.o" "ankleSwivel_aimConstraint.wum";
connectAttr "ankleSwivel_aim_targetTranslate.o3" "ankleSwivel_aimConstraint.tg[0].tt"
		;
connectAttr "ankleSwivel_parent_pass.worldMatrix" "ankleSwivel_aimConstraint.tg[0].tpm"
		;
connectAttr "ankleSwivel_srtOffset.upVector" "ankleSwivel_aimConstraint.u";
connectAttr "kneeAxle_parent_pass.worldInverseMatrix" "kneeAxle_aimConstraint1.cpim"
		;
connectAttr "kneeAxle_worldUpMatrix.o" "kneeAxle_aimConstraint1.wum";
connectAttr "kneeAxle_parent_pass.worldMatrix" "kneeAxle_aimConstraint1.tg[0].tpm"
		;
connectAttr "leg_LFkneeAxle_aim_targetTranslate.o3" "kneeAxle_aimConstraint1.tg[0].tt"
		;
connectAttr "kneeAxle_srtOffset.t" "kneeAxle_aimConstraint1.ct";
connectAttr "kneeAxle_worldUpObject.upVector" "kneeAxle_aimConstraint1.u";
connectAttr "kneeSwivel_end_srtOffset.t" "kneeSwivel_aimConstraint.ct";
connectAttr "kneeSwivel_aim_targetTranslate.o3" "kneeSwivel_aimConstraint.tg[0].tt"
		;
connectAttr "kneeSwivel_parent_pass.worldMatrix" "kneeSwivel_aimConstraint.tg[0].tpm"
		;
connectAttr "kneeSwivel_parent_pass.worldInverseMatrix" "kneeSwivel_aimConstraint.cpim"
		;
connectAttr "kneeSwivel_worldUpMatrix.o" "kneeSwivel_aimConstraint.wum";
connectAttr "kneeSwivel_worldUpObject.upVector" "kneeSwivel_aimConstraint.u";
connectAttr "footAxle_worldUpMatrix.o" "footAxle_aimConstraint.wum";
connectAttr "foot_srt.wim" "footAxle_aimConstraint.cpim";
connectAttr "foot_srt.wm" "footAxle_aimConstraint.tg[0].tpm";
connectAttr "footAxle_aim_targetTranslate.o3" "footAxle_aimConstraint.tg[0].tt";
connectAttr "footAxle_srtOffset.t" "footAxle_aimConstraint.ct";
connectAttr "footAxle_worldUpObject.upVector" "footAxle_aimConstraint.u";
connectAttr "footHinge_srtOffset.t" "footHinge_aimConstraint.ct";
connectAttr "footHinge_aim_targetTranslate.o3" "footHinge_aimConstraint.tg[0].tt"
		;
connectAttr "footAxle_pass.worldMatrix" "footHinge_aimConstraint.tg[0].tpm";
connectAttr "footAxle_pass.worldInverseMatrix" "footHinge_aimConstraint.cpim";
connectAttr "ankleOffsetByFoot_pass.worldMatrix" "footHinge_aimConstraint.wum";
connectAttr "footHinge_srtOffset.upVector" "footHinge_aimConstraint.u";
connectAttr "footAxle_srt_inWorld.ot" "footAxle_srt.t";
connectAttr "footAxle_srt_inWorld.or" "footAxle_srt.r";
connectAttr "footAxle_srt_inWorld.os" "footAxle_srt.s";
connectAttr "footHinge_srt_inWorld.ot" "footHinge_srt.t";
connectAttr "footHinge_srt_inWorld.or" "footHinge_srt.r";
connectAttr "footHinge_srt_inWorld.os" "footHinge_srt.s";
connectAttr "footSwivel_srt_inWorld.ot" "footSwivel_srt.t";
connectAttr "footSwivel_srt_inWorld.or" "footSwivel_srt.r";
connectAttr "footSwivel_srt_inWorld.os" "footSwivel_srt.s";
connectAttr "ankleAxle_srt_inWorld.ot" "ankleAxle_srt.t";
connectAttr "ankleAxle_srt_inWorld.or" "ankleAxle_srt.r";
connectAttr "ankleAxle_srt_inWorld.os" "ankleAxle_srt.s";
connectAttr "ankleSwivel_srt_inWorld.ot" "ankleSwivel_srt.t";
connectAttr "ankleSwivel_srt_inWorld.or" "ankleSwivel_srt.r";
connectAttr "ankleSwivel_srt_inWorld.os" "ankleSwivel_srt.s";
connectAttr "kneeHinge_end_srt_inWorld.ot" "kneeHinge_end_srt.t";
connectAttr "kneeHinge_end_srt_inWorld.or" "kneeHinge_end_srt.r";
connectAttr "kneeHinge_end_srt_inWorld.os" "kneeHinge_end_srt.s";
connectAttr "kneeHinge_base_srt_inWorld.ot" "|legParts_cmpt|deform|kneeHinge_base_srt.t"
		;
connectAttr "kneeHinge_base_srt_inWorld.or" "|legParts_cmpt|deform|kneeHinge_base_srt.r"
		;
connectAttr "kneeHinge_base_srt_inWorld.os" "|legParts_cmpt|deform|kneeHinge_base_srt.s"
		;
connectAttr "kneeAxle_srt_inWorld.ot" "|legParts_cmpt|deform|kneeAxle_srt.t";
connectAttr "kneeAxle_srt_inWorld.or" "|legParts_cmpt|deform|kneeAxle_srt.r";
connectAttr "kneeAxle_srt_inWorld.os" "|legParts_cmpt|deform|kneeAxle_srt.s";
connectAttr "kneeSwivel_end_srt_inWorld.ot" "|legParts_cmpt|deform|kneeSwivel_end_srt.t"
		;
connectAttr "kneeSwivel_end_srt_inWorld.or" "|legParts_cmpt|deform|kneeSwivel_end_srt.r"
		;
connectAttr "kneeSwivel_end_srt_inWorld.os" "|legParts_cmpt|deform|kneeSwivel_end_srt.s"
		;
connectAttr "kneeSwivel_base_srt_inWorld.ot" "|legParts_cmpt|deform|kneeSwivel_base_srt.t"
		;
connectAttr "kneeSwivel_base_srt_inWorld.or" "|legParts_cmpt|deform|kneeSwivel_base_srt.r"
		;
connectAttr "kneeSwivel_base_srt_inWorld.os" "|legParts_cmpt|deform|kneeSwivel_base_srt.s"
		;
connectAttr "hipAxle_srt_inWorld.ot" "|legParts_cmpt|deform|hipAxle_srt.t";
connectAttr "hipAxle_srt_inWorld.or" "|legParts_cmpt|deform|hipAxle_srt.r";
connectAttr "hipAxle_srt_inWorld.os" "|legParts_cmpt|deform|hipAxle_srt.s";
connectAttr "hipSwivel_srt_inWorld.ot" "|legParts_cmpt|deform|hipSwivel_srt.t";
connectAttr "hipSwivel_srt_inWorld.or" "|legParts_cmpt|deform|hipSwivel_srt.r";
connectAttr "hipSwivel_srt_inWorld.os" "|legParts_cmpt|deform|hipSwivel_srt.s";
connectAttr "hipHinge_srt_inWorld.ot" "hipHinge_srt.t";
connectAttr "hipHinge_srt_inWorld.or" "hipHinge_srt.r";
connectAttr "hipHinge_srt_inWorld.os" "hipHinge_srt.s";
connectAttr "shoulder_srt.t" "legAxle_srt.t";
connectAttr "shoulder_srt.r" "legAxle_srt.r";
connectAttr "shoulder_srt.s" "legAxle_srt.s";
connectAttr "hipSwivel_srt_inWorld.ot" "|legParts_cmpt|output|hipSwivel_srt.t";
connectAttr "hipSwivel_srt_inWorld.or" "|legParts_cmpt|output|hipSwivel_srt.r";
connectAttr "hipSwivel_srt_inWorld.os" "|legParts_cmpt|output|hipSwivel_srt.s";
connectAttr "hipAxle_srt_inWorld.ot" "|legParts_cmpt|output|hipAxle_srt.t";
connectAttr "hipAxle_srt_inWorld.or" "|legParts_cmpt|output|hipAxle_srt.r";
connectAttr "hipAxle_srt_inWorld.os" "|legParts_cmpt|output|hipAxle_srt.s";
connectAttr "kneeSwivel_end_srt_inWorld.ot" "|legParts_cmpt|output|kneeSwivel_end_srt.t"
		;
connectAttr "kneeSwivel_end_srt_inWorld.or" "|legParts_cmpt|output|kneeSwivel_end_srt.r"
		;
connectAttr "kneeSwivel_end_srt_inWorld.os" "|legParts_cmpt|output|kneeSwivel_end_srt.s"
		;
connectAttr "kneeSwivel_base_srt_inWorld.ot" "|legParts_cmpt|output|kneeSwivel_base_srt.t"
		;
connectAttr "kneeSwivel_base_srt_inWorld.or" "|legParts_cmpt|output|kneeSwivel_base_srt.r"
		;
connectAttr "kneeSwivel_base_srt_inWorld.os" "|legParts_cmpt|output|kneeSwivel_base_srt.s"
		;
connectAttr "kneeAxle_srt_inWorld.ot" "|legParts_cmpt|output|kneeAxle_srt.t";
connectAttr "kneeAxle_srt_inWorld.or" "|legParts_cmpt|output|kneeAxle_srt.r";
connectAttr "kneeAxle_srt_inWorld.os" "|legParts_cmpt|output|kneeAxle_srt.s";
connectAttr "kneeHinge_base_srt_inWorld.ot" "|legParts_cmpt|output|kneeHinge_base_srt.t"
		;
connectAttr "kneeHinge_base_srt_inWorld.or" "|legParts_cmpt|output|kneeHinge_base_srt.r"
		;
connectAttr "kneeHinge_base_srt_inWorld.os" "|legParts_cmpt|output|kneeHinge_base_srt.s"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "hip_srt_localTo_shoulder.orz" "hipHinge_srt_localTo_shoulderEnd.irz"
		;
connectAttr "hip_srt_localTo_shoulder.ot" "hipHinge_srt_localTo_shoulderEnd.it";
connectAttr "hipHinge_srt_localTo_shoulderEnd.omat" "hipHinge_worldMatrix.i[0]";
connectAttr "shoulder_srt.wm" "hipHinge_worldMatrix.i[1]";
connectAttr "hipHinge_worldMatrix.o" "hipHinge_srt_inWorld.imat";
connectAttr "hipSwivel_worldMatrix.o" "hipSwivel_srt_inWorld.imat";
connectAttr "hipSwivel_worldMatrix.o" "hipSwivel_worldInverseMatrix.imat";
connectAttr "kneeSwivel_base_srtOffset.m" "kneeSwivel_base_worldMatrix.i[0]";
connectAttr "hipAxle_worldMatrix.o" "kneeSwivel_base_worldMatrix.i[1]";
connectAttr "hipHinge_worldMatrix.o" "hipHinge_worldInverseMatrix.imat";
connectAttr "hip_matrix_localTo_shoulder.o" "hip_srt_localTo_shoulder.imat";
connectAttr "hipSwivel_worldMatrix.o" "hipSwivel_pass.worldMatrix";
connectAttr "hipSwivel_worldInverseMatrix.omat" "hipSwivel_pass.worldInverseMatrix"
		;
connectAttr "footAxle_worldMatrix.o" "footAxle_srt_inWorld.imat";
connectAttr "footHinge_aimConstraint.cr" "footHinge_matrix_localTo_footAxle.ir";
connectAttr "footHinge_aimConstraint.ct" "footHinge_matrix_localTo_footAxle.it";
connectAttr "footHinge_matrix_localTo_footAxle.omat" "footHinge_worldMatrix.i[0]"
		;
connectAttr "footAxle_pass.worldMatrix" "footHinge_worldMatrix.i[1]";
connectAttr "footHinge_worldMatrix.o" "footHinge_srt_inWorld.imat";
connectAttr "footHinge_worldMatrix.o" "footSwivel_srt_inWorld.imat";
connectAttr "ankle_srt_localTo_foot.ot" "ankleOffsetByFoot_matrix_localTo_foot.it"
		;
connectAttr "ankleOffsetByFoot_matrix_localTo_foot.omat" "ankleOffsetByFoot_worldMatrix.i[0]"
		;
connectAttr "foot_srt.wm" "ankleOffsetByFoot_worldMatrix.i[1]";
connectAttr "ankleSwivelOffsetByFoot_worldMatrix.o" "ankleOffsetByFoot_worldInverseMatrix.imat"
		;
connectAttr "ankleSwivelOffsetByFoot_worldMatrix.o" "ankleOffsetByFoot_pass.worldMatrix"
		;
connectAttr "ankleOffsetByFoot_worldInverseMatrix.omat" "ankleOffsetByFoot_pass.worldInverseMatrix"
		;
connectAttr "footHinge_worldMatrix.o" "footHinge_worldInverseMatrix.imat";
connectAttr "footHinge_worldMatrix.o" "footHinge_pass.worldMatrix";
connectAttr "footHinge_worldInverseMatrix.omat" "footHinge_pass.worldInverseMatrix"
		;
connectAttr "ankleOffsetByFoot_worldMatrix.o" "ankleOffsetByFoot_matrix_localTo_knee.i[0]"
		;
connectAttr "knee_srt.wim" "ankleOffsetByFoot_matrix_localTo_knee.i[1]";
connectAttr "ankleOffsetByFoot_matrix_localTo_knee.o" "ankleOffsetByFoot_srt_localTo_knee.imat"
		;
connectAttr "ankleOffsetByFoot_srt_localTo_knee.oq" "ankleOffsetByFoot_rotation_localTo_knee.iq"
		;
connectAttr "ankleOffsetByFoot_rotation_localTo_knee.orz" "ankleSwivelOffsetByFoot_matrix_localTo_knee.irz"
		;
connectAttr "ankleOffsetByFoot_srt_localTo_knee.ot" "ankleSwivelOffsetByFoot_matrix_localTo_knee.it"
		;
connectAttr "ankleSwivelOffsetByFoot_matrix_localTo_knee.omat" "ankleSwivelOffsetByFoot_worldMatrix.i[0]"
		;
connectAttr "knee_srt.wm" "ankleSwivelOffsetByFoot_worldMatrix.i[1]";
connectAttr "footAxle_aimConstraint.ct" "footAxle_matrix_localTo_foot.it";
connectAttr "footAxle_aimConstraint.cr" "footAxle_matrix_localTo_foot.ir";
connectAttr "footAxle_matrix_localTo_foot.omat" "footAxle_worldMatrix.i[0]";
connectAttr "foot_srt.wm" "footAxle_worldMatrix.i[1]";
connectAttr "footAxle_worldMatrix.o" "footAxle_worldInverseMatrix.imat";
connectAttr "footAxle_worldMatrix.o" "footAxle_pass.worldMatrix";
connectAttr "footAxle_worldInverseMatrix.omat" "footAxle_pass.worldInverseMatrix"
		;
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "ankleAxle_matrix_localTo_foot.o" "ankleAxle_worldMatrix.i[1]";
connectAttr "footHinge_pass.worldMatrix" "ankleAxle_worldMatrix.i[2]";
connectAttr "ankleAxle_worldMatrix.o" "ankleAxle_srt_inWorld.imat";
connectAttr "ankleAxle_worldMatrix.o" "ankleAxle_worldInverseMatrix.imat";
connectAttr "ankleAxle_worldInverseMatrix.omat" "ankleAxle_pass.worldInverseMatrix"
		;
connectAttr "ankleAxle_worldMatrix.o" "ankleAxle_pass.worldMatrix";
connectAttr "ankleSwivel_worldMatrix.o" "ankleSwivel_srt_inWorld.imat";
connectAttr "legEnd_worldMatrix.o" "legEnd_worldInverseMatrix.imat";
connectAttr "legEnd_srtOffset.m" "legEnd_worldMatrix.i[0]";
connectAttr "ankleSwivel_worldMatrix.o" "legEnd_worldMatrix.i[1]";
connectAttr "legEnd_worldInverseMatrix.omat" "legEnd_pass.worldInverseMatrix";
connectAttr "legEnd_worldMatrix.o" "legEnd_pass.worldMatrix";
connectAttr "legEnd_pass.worldMatrix" "legEnd_matrix_localTo_kneeAxle.i[0]";
connectAttr "kneeHinge_parent_pass.worldInverseMatrix" "legEnd_matrix_localTo_kneeAxle.i[1]"
		;
connectAttr "legEnd_matrix_localTo_kneeAxle.o" "legEnd_srt_localTo_knee.imat";
connectAttr "legEnd_srt_localTo_knee.oq" "legEnd_rotation_localTo_knee.iq";
connectAttr "kneeHinge_rotation_matrix_localTo_knee.omat" "kneeHinge_end_worldMatrix.i[0]"
		;
connectAttr "kneeHinge_end_position_matrix_localTo_knee.omat" "kneeHinge_end_worldMatrix.i[1]"
		;
connectAttr "kneeHinge_parent_pass.worldMatrix" "kneeHinge_end_worldMatrix.i[2]"
		;
connectAttr "kneeHinge_end_worldMatrix.o" "kneeHinge_end_srt_inWorld.imat";
connectAttr "kneeHinge_base_position_matrix_localTo_kneeHinge_end.omat" "kneeHinge_base_worldMatrix.i[0]"
		;
connectAttr "kneeHinge_end_worldMatrix.o" "kneeHinge_base_worldMatrix.i[1]";
connectAttr "kneeHinge_base_worldMatrix.o" "kneeHinge_base_srt_inWorld.imat";
connectAttr "kneeHinge_base_worldMatrix.o" "kneeHinge_base_worldInverseMatrix.imat"
		;
connectAttr "kneeHinge_base_worldMatrix.o" "kneeHinge_pass.worldMatrix";
connectAttr "kneeHinge_base_worldInverseMatrix.omat" "kneeHinge_pass.worldInverseMatrix"
		;
connectAttr "kneeAxle_worldMatrix.o" "kneeAxle_pass.worldMatrix";
connectAttr "kneeAxle_worldInverseMatrix.omat" "kneeAxle_pass.worldInverseMatrix"
		;
connectAttr "kneeSwivel_end_matrix.o" "kneeSwivel_end_worldMatrix.i[0]";
connectAttr "kneeSwivel_parent_pass.worldMatrix" "kneeSwivel_end_worldMatrix.i[1]"
		;
connectAttr "kneeSwivel_end_worldMatrix.o" "kneeSwivel_end_srt_inWorld.imat";
connectAttr "hip_srt.wm" "hip_matrix_localTo_shoulder.i[0]";
connectAttr "shoulder_srt.wim" "hip_matrix_localTo_shoulder.i[1]";
connectAttr "hip_srt_localTo_shoulder.orz" "legBase_matrix_localTo_shoulder.irz"
		;
connectAttr "hip_srt_localTo_shoulder.ory" "legBase_matrix_localTo_shoulder.iry"
		;
connectAttr "hip_srt_localTo_shoulder.ot" "legBase_matrix_localTo_shoulder.it";
connectAttr "legBase_matrix_localTo_shoulder.omat" "legBase_worldMatrix.i[0]";
connectAttr "shoulder_srt.wm" "legBase_worldMatrix.i[1]";
connectAttr "legBase_worldMatrix.o" "legBase_worldInverseMatrix.imat";
connectAttr "legBase_worldInverseMatrix.omat" "legBase_pass.worldInverseMatrix";
connectAttr "legBase_worldMatrix.o" "legBase_pass.worldMatrix";
connectAttr "kneeAxle_pass.worldMatrix" "kneeAxle_matrix_localTo_legBase.i[1]";
connectAttr "legBase_pass.worldInverseMatrix" "kneeAxle_matrix_localTo_legBase.i[2]"
		;
connectAttr "kneeAxle_matrix_localTo_legBase.o" "kneeAxle_srt_localTo_legBase.imat"
		;
connectAttr "kneeAxle_rotation_localTo_legBase.ory" "kneeAxle_twist_matrix_localTo_legBase.iry"
		;
connectAttr "kneeAxle_rotation_localTo_legBase.iro" "kneeAxle_twist_matrix_localTo_legBase.ro"
		;
connectAttr "hipSwivel_srtOffset.t" "kneeAxle_twist_matrix_localTo_legBase.it";
connectAttr "kneeAxle_srt_localTo_legBase.oq" "kneeAxle_rotation_localTo_legBase.iq"
		;
connectAttr "kneeAxle_twist_matrix_localTo_legBase.omat" "hipSwivel_worldMatrix.i[0]"
		;
connectAttr "legBase_pass.worldMatrix" "hipSwivel_worldMatrix.i[1]";
connectAttr "knee_srt.wm" "knee_matrix_localTo_legBase.i[0]";
connectAttr "legBase_pass.worldInverseMatrix" "knee_matrix_localTo_legBase.i[1]"
		;
connectAttr "kneeHinge_srtOffset.m" "kneeHinge_parentMatrix.i[0]";
connectAttr "kneeHinge_parentMatrix_localTo_legBase.omat" "kneeHinge_parentMatrix.i[1]"
		;
connectAttr "legBase_pass.worldMatrix" "kneeHinge_parentMatrix.i[2]";
connectAttr "ankleAxle_srtOffset.t" "ankleAxle_aim_targetTranslate.i3[0]";
connectAttr "ankleAxle_srtOffset.aimVector" "ankleAxle_aim_targetTranslate.i3[1]"
		;
connectAttr "knee_rotation_localTo_legBase.orx" "kneeHinge_parentMatrix_localTo_legBase.irx"
		;
connectAttr "knee_srt_localTo_legBase.ot" "kneeHinge_parentMatrix_localTo_legBase.it"
		;
connectAttr "knee_matrix_localTo_legBase.o" "knee_srt_localTo_legBase.imat";
connectAttr "kneeHinge_parentMatrix.o" "kneeHinge_parentInverseMatrix.imat";
connectAttr "kneeHinge_parentInverseMatrix.omat" "kneeHinge_parent_pass.worldInverseMatrix"
		;
connectAttr "kneeHinge_parentMatrix.o" "kneeHinge_parent_pass.worldMatrix";
connectAttr "legEnd_srt_localTo_knee.ot" "kneeHinge_end_position_matrix_localTo_knee.it"
		;
connectAttr "legEnd_rotation_localTo_knee.orx" "kneeHinge_rotation_matrix_localTo_knee.irx"
		;
connectAttr "legEnd_rotation_localTo_knee.ory" "kneeHinge_rotation_matrix_localTo_knee.iry"
		;
connectAttr "legEnd_rotation_localTo_knee.iro" "kneeHinge_rotation_matrix_localTo_knee.ro"
		;
connectAttr "kneeHinge_base_translateZ_sign.o" "kneeHinge_base_position_matrix_localTo_kneeHinge_end.itz"
		;
connectAttr "legEnd_srt_localTo_knee.ot" "legEnd_distance_to_knee.p2";
connectAttr "kneeHinge_base_translateZ_isNegative.ocr" "kneeHinge_base_translateZ_sign.i1"
		;
connectAttr "legEnd_distance_to_knee.d" "kneeHinge_base_translateZ_sign.i2";
connectAttr "kneeHinge_srtOffset.m" "ankleSwivel_worldUpMatrix.i[1]";
connectAttr "kneeAxle_pass.worldMatrix" "ankleSwivel_worldUpMatrix.i[2]";
connectAttr "knee_srt_localTo_legBase.oq" "knee_rotation_localTo_legBase.iq";
connectAttr "hipHinge_worldMatrix.o" "hipHinge_pass.worldMatrix";
connectAttr "hipHinge_worldInverseMatrix.omat" "hipHinge_pass.worldInverseMatrix"
		;
connectAttr "kneeSwivel_end_worldMatrix.o" "kneeSwivel_end_worldInverseMatrix.imat"
		;
connectAttr "kneeSwivel_end_worldMatrix.o" "kneeSwivel_end_pass.worldMatrix";
connectAttr "kneeSwivel_end_worldInverseMatrix.omat" "kneeSwivel_end_pass.worldInverseMatrix"
		;
connectAttr "hipAxle_srtOffset.m" "hipAxle_parentMatrix_localTo_kneeSwivel_end.i[0]"
		;
connectAttr "hipSwivel_pass.worldMatrix" "hipAxle_parentMatrix_localTo_kneeSwivel_end.i[1]"
		;
connectAttr "kneeSwivel_end_pass.worldInverseMatrix" "hipAxle_parentMatrix_localTo_kneeSwivel_end.i[2]"
		;
connectAttr "hipAxle_parentMatrix_localTo_kneeSwivel_end.o" "hipAxle_srtOffset_localTo_kneeSwivel_end.imat"
		;
connectAttr "hipAxle_srtOffset_localTo_kneeSwivel_end.ot" "hipAxle_matrix_localTo_kneeSwivel_end.it"
		;
connectAttr "kneeSwivel_base_worldMatrix.o" "kneeSwivel_base_srt_inWorld.imat";
connectAttr "kneeAxle_pass.worldMatrix" "kneeAxle_matrix_localTo_hip.i[1]";
connectAttr "hip_srt.wim" "kneeAxle_matrix_localTo_hip.i[2]";
connectAttr "kneeAxle_matrix_localTo_hip.o" "kneeSwivel_parentSRT_localTo_hip.imat"
		;
connectAttr "kneeSwivel_parentRotation_localTo_hip.iro" "kneeSwivel_parentMatrix_localTo_hip.ro"
		;
connectAttr "kneeSwivel_parentRotation_localTo_hip.ory" "kneeSwivel_parentMatrix_localTo_hip.iry"
		;
connectAttr "kneeSwivel_parentRotation_localTo_hip.orz" "kneeSwivel_parentMatrix_localTo_hip.irz"
		;
connectAttr "kneeSwivel_parentSRT_localTo_hip.ot" "kneeSwivel_parentMatrix_localTo_hip.it"
		;
connectAttr "kneeSwivel_parentSRT_localTo_hip.oq" "kneeSwivel_parentRotation_localTo_hip.iq"
		;
connectAttr "kneeSwivel_parentMatrix_localTo_hip.omat" "kneeSwivel_parentMatrix.i[0]"
		;
connectAttr "hip_srt.wm" "kneeSwivel_parentMatrix.i[1]";
connectAttr "kneeSwivel_parentMatrix.o" "kneeSwivel_parentInverseMatrix.imat";
connectAttr "ankleAxle_worldUpObject.m" "ankleAxle_worldUpMatrix.i[0]";
connectAttr "kneeAxle_pass.worldMatrix" "ankleAxle_worldUpMatrix.i[1]";
connectAttr "knee_srt.wm" "knee_matrix_localTo_hip.i[0]";
connectAttr "hip_srt.wim" "knee_matrix_localTo_hip.i[1]";
connectAttr "knee_matrix_localTo_hip.o" "knee_srt_localTo_hip.imat";
connectAttr "knee_srt_localTo_hip.ot" "kneeAxle_parentMatrix_localTo_hip.it";
connectAttr "knee_rotation_localTo_hip.orx" "kneeAxle_parentMatrix_localTo_hip.irx"
		;
connectAttr "knee_rotation_localTo_hip.iro" "kneeAxle_parentMatrix_localTo_hip.ro"
		;
connectAttr "kneeAxle_parentMatrix_localTo_hip.omat" "kneeAxle_parentMatrix.i[0]"
		;
connectAttr "hip_srt.wm" "kneeAxle_parentMatrix.i[1]";
connectAttr "kneeAxle_parentMatrix.o" "kneeAxle_parentInverseMatrix.imat";
connectAttr "kneeAxle_aimConstraint1.ct" "kneeAxle_matrix.it";
connectAttr "kneeAxle_aimConstraint1.cr" "kneeAxle_matrix.ir";
connectAttr "kneeAxle_matrix.omat" "kneeAxle_worldMatrix.i[0]";
connectAttr "kneeAxle_parent_pass.worldMatrix" "kneeAxle_worldMatrix.i[1]";
connectAttr "kneeAxle_worldMatrix.o" "kneeAxle_srt_inWorld.imat";
connectAttr "kneeAxle_worldMatrix.o" "kneeAxle_worldInverseMatrix.imat";
connectAttr "ankle_srt.wm" "ankle_matrix_localTo_kneeAxle_parent.i[0]";
connectAttr "kneeAxle_parent_pass.worldInverseMatrix" "ankle_matrix_localTo_kneeAxle_parent.i[1]"
		;
connectAttr "ankle_matrix_localTo_kneeAxle_parent.o" "ankle_srt_localTo_kneeAxle_parent.imat"
		;
connectAttr "ankle_rotation_localTo_kneeAxle_parent.iro" "ankleSwivel_matrix_localTo_kneeAxle_parent.ro"
		;
connectAttr "ankle_rotation_localTo_kneeAxle_parent.orz" "ankleSwivel_matrix_localTo_kneeAxle_parent.irz"
		;
connectAttr "ankle_srt_localTo_kneeAxle_parent.ot" "ankleSwivel_matrix_localTo_kneeAxle_parent.it"
		;
connectAttr "ankle_srt_localTo_kneeAxle_parent.oq" "ankle_rotation_localTo_kneeAxle_parent.iq"
		;
connectAttr "kneeAxle_worldUpObject.m" "kneeAxle_worldUpMatrix.i[0]";
connectAttr "ankleSwivel_matrix_localTo_kneeAxle_parent.omat" "kneeAxle_worldUpMatrix.i[1]"
		;
connectAttr "kneeAxle_parent_pass.worldMatrix" "kneeAxle_worldUpMatrix.i[2]";
connectAttr "kneeAxle_parentInverseMatrix.omat" "kneeAxle_parent_pass.worldInverseMatrix"
		;
connectAttr "kneeAxle_parentMatrix.o" "kneeAxle_parent_pass.worldMatrix";
connectAttr "knee_srt_localTo_hip.oq" "knee_rotation_localTo_hip.iq";
connectAttr "kneeAxle_srtOffset.t" "leg_LFkneeAxle_aim_targetTranslate.i3[0]";
connectAttr "ankleSwivel_parentMatrix_localTo_kneeAxle1.omat" "ankleSwivel_parentMatrix.i[0]"
		;
connectAttr "kneeAxle_pass.worldMatrix" "ankleSwivel_parentMatrix.i[1]";
connectAttr "ankleSwivel_parentMatrix.o" "ankleSwivel_parentInverseMatrix.imat";
connectAttr "ankleSwivel_matrix_adjusted.omat" "ankleSwivel_worldMatrix.i[1]";
connectAttr "ankleSwivel_parent_pass.worldMatrix" "ankleSwivel_worldMatrix.i[2]"
		;
connectAttr "ankleAxle_pass.worldMatrix" "ankleSwivel_parentMatrix_localTo_kneeAxle.i[1]"
		;
connectAttr "kneeAxle_pass.worldInverseMatrix" "ankleSwivel_parentMatrix_localTo_kneeAxle.i[2]"
		;
connectAttr "ankleSwivel_parentMatrix_localTo_kneeAxle.o" "ankleSwivel_parentSRT_localTo_kneeAxle.imat"
		;
connectAttr "ankleSwivel_parentSRT_localTo_kneeAxle.oq" "ankleSwivel_parentRotation_localTo_kneeAxle.iq"
		;
connectAttr "ankleSwivel_parentRotation_localTo_kneeAxle.orz" "ankleSwivel_parentMatrix_localTo_kneeAxle1.irz"
		;
connectAttr "ankleSwivel_parentRotation_localTo_kneeAxle.ory" "ankleSwivel_parentMatrix_localTo_kneeAxle1.iry"
		;
connectAttr "ankleSwivel_parentRotation_localTo_kneeAxle.iro" "ankleSwivel_parentMatrix_localTo_kneeAxle1.ro"
		;
connectAttr "ankleSwivel_parentSRT_localTo_kneeAxle.ot" "ankleSwivel_parentMatrix_localTo_kneeAxle1.it"
		;
connectAttr "kneeSwivel_aimConstraint.ct" "kneeSwivel_end_positionMatrix.it";
connectAttr "kneeSwivel_aimConstraint.cr" "kneeSwivel_end_rotationMatrix.ir";
connectAttr "kneeSwivel_end_positionMatrix.omat" "kneeSwivel_end_matrix.i[0]";
connectAttr "kneeSwivel_end_rotationMatrix.omat" "kneeSwivel_end_matrix.i[1]";
connectAttr "ankleSwivel_aimConstraint.wum" "ankleSwivel_upMatrix.i[0]";
connectAttr "ankleSwivel_aimConstraint.cpim" "ankleSwivel_upMatrix.i[1]";
connectAttr "ankleSwivel_parentInverseMatrix.omat" "ankleSwivel_parent_pass.worldInverseMatrix"
		;
connectAttr "ankleSwivel_parentMatrix.o" "ankleSwivel_parent_pass.worldMatrix";
connectAttr "ankleSwivel_upMatrix.o" "ankleSwivel_upPosition.m";
connectAttr "ankleSwivel_upPosition.o" "ankleSwivel_target_zVector.i3[0]";
connectAttr "ankleSwivel_position.o" "ankleSwivel_target_zVector.i3[1]";
connectAttr "ankleSwivel_srtOffset.t" "ankleSwivel_aim_targetTranslate.i3[0]";
connectAttr "ankleSwivel_aimConstraint.cr" "ankleSwivel_rotationMatrix.ir";
connectAttr "ankleSwivel_positionMatrix.omat" "ankleSwivel_matrix.i[0]";
connectAttr "ankleSwivel_rotationMatrix.omat" "ankleSwivel_matrix.i[1]";
connectAttr "ankleSwivel_matrix.o" "ankleSwivel_position.m";
connectAttr "ankleSwivel_aimConstraint.ct" "ankleSwivel_positionMatrix.it";
connectAttr "kneeSwivel_end_srtOffset.t" "kneeSwivel_aim_targetTranslate.i3[0]";
connectAttr "kneeSwivel_worldUpObject.m" "kneeSwivel_worldUpMatrix.i[0]";
connectAttr "hipSwivel_pass.worldMatrix" "kneeSwivel_worldUpMatrix.i[1]";
connectAttr "kneeSwivel_parentMatrix.o" "kneeSwivel_parent_pass.worldMatrix";
connectAttr "kneeSwivel_parentInverseMatrix.omat" "kneeSwivel_parent_pass.worldInverseMatrix"
		;
connectAttr "hipAxle_matrix_localTo_kneeSwivel_end.omat" "hipAxle_worldMatrix.i[0]"
		;
connectAttr "kneeSwivel_end_pass.worldMatrix" "hipAxle_worldMatrix.i[1]";
connectAttr "hipAxle_worldMatrix.o" "hipAxle_srt_inWorld.imat";
connectAttr "ankleAxle_aimConstraint.ct" "ankleAxle_translation_matrix_localTo_foot.it"
		;
connectAttr "ankleAxle_aimConstraint.cr" "ankleAxle_rotation_matrix_localTo_foot.ir"
		;
connectAttr "ankleAxle_translation_matrix_localTo_foot.omat" "ankleAxle_matrix_localTo_foot.i[0]"
		;
connectAttr "ankleAxle_rotation_matrix_localTo_foot.omat" "ankleAxle_matrix_localTo_foot.i[1]"
		;
connectAttr "ankle_srt.wm" "ankle_matrix_localTo_foot.i[0]";
connectAttr "foot_srt.wim" "ankle_matrix_localTo_foot.i[1]";
connectAttr "ankle_matrix_localTo_foot.o" "ankle_srt_localTo_foot.imat";
connectAttr "footAxle_srtOffset.t" "footAxle_aim_targetTranslate.i3[0]";
connectAttr "footHinge_srtOffset.t" "footHinge_aim_targetTranslate.i3[0]";
connectAttr "ankleSwivel_target_zVector.o3" "ankleSwivel_stable_aim_rotation.v2"
		;
connectAttr "ankleSwivel_srtOffset.upVector" "ankleSwivel_stable_aim_rotation.v1"
		;
connectAttr "ankleSwivel_stable_aim_rotation.eu" "ankleSwivel_matrix_adjusted.ir"
		;
connectAttr "ankleSwivel_position.o" "ankleSwivel_matrix_adjusted.it";
connectAttr "legEnd_srt_localTo_knee.otz" "kneeHinge_base_translateZ_isNegative.ft"
		;
connectAttr "footAxle_worldUpObject.m" "footAxle_worldUpMatrix.i[0]";
connectAttr "ankleOffsetByFoot_pass.worldMatrix" "footAxle_worldUpMatrix.i[1]";
connectAttr "hipHinge_guide_srt.t" "hipHinge_guided_position.i1";
connectAttr "hip_guided_srt.wim" "hipHinge_guided_position.m";
connectAttr "hipSwivel_guide_srt.t" "hipSwivel_guided_position.i1";
connectAttr "hipHinge_guided_srtOffset.wim" "hipSwivel_guided_position.m";
connectAttr "hipAxle_guide_srt.t" "hipAxle_guided_position.i1";
connectAttr "hipSwivel_guided_srtOffset.wim" "hipAxle_guided_position.m";
connectAttr "hipAxle_guided_srtOffset.wim" "kneeSwivel_base_guided_position.m";
connectAttr "kneeSwivel_guide_srt.t" "kneeSwivel_base_guided_position.i1";
connectAttr "hipAxle_guide_srt.t" "kneeSwivel_end_guided_upVector.i1";
connectAttr "knee_guided_srt.wim" "kneeSwivel_end_guided_upVector.m";
connectAttr "kneeSwivel_end_guided_upVector.oy" "kneeSwivel_end_guided_upVector_normal.i1y"
		;
connectAttr "hipAxle_guide_srt.t" "kneeSwivel_end_guided_position.i1";
connectAttr "knee_guided_srt.wim" "kneeSwivel_end_guided_position.m";
connectAttr "kneeAxle_guide_srt.t" "kneeAxle_guided_position.i1";
connectAttr "knee_guided_srt.wim" "kneeAxle_guided_position.m";
connectAttr "kneeHinge_guide_srt.t" "kneeHinge_guided_position.i1";
connectAttr "kneeAxle_guided_srtOffset.wim" "kneeHinge_guided_position.m";
connectAttr "ankle_guided_srt.wim" "ankleSwivel_guided_upVector.m";
connectAttr "kneeAxle_guide_srt.t" "ankleSwivel_guided_upVector.i1";
connectAttr "ankleSwivel_guided_upVector.oz" "ankleSwivel_guided_upVector_normal.i1z"
		;
connectAttr "ankleSwivel_guide_srt.t" "kneeAxle_worldUpObject_guided_position.i1"
		;
connectAttr "ankle_guided_srt.wim" "kneeAxle_worldUpObject_guided_position.m";
connectAttr "ankleSwivel_guide_srt.t" "ankleSwivel_guided_position.i1";
connectAttr "ankle_guided_srt.wim" "ankleSwivel_guided_position.m";
connectAttr "kneeAxle_guide_srt.t" "ankleAxle_guided_upVector.i1";
connectAttr "ankle_guided_srt.wim" "ankleAxle_guided_upVector.m";
connectAttr "ankleAxle_guided_upVector.oz" "ankleAxle_guided_upVector_normal.i1z"
		;
connectAttr "footAxle_guide_srt.t" "footAxle_upObject_guided_position.i1";
connectAttr "ankle_guided_srt.wim" "footAxle_upObject_guided_position.m";
connectAttr "ankleSwivel_guided_srtOffset.wim" "legEnd_guided_position.m";
connectAttr "ankleSwivel_guide_srt.t" "legEnd_guided_position.i1";
connectAttr "footAxle_guide_srt.t" "footAxle_guided_position.i1";
connectAttr "foot_guided_srt.wim" "footAxle_guided_position.m";
connectAttr "foot_guided_upVector_inWorld.o" "footHinge_guided_upVector.i1";
connectAttr "foot_guided_srt.wim" "footHinge_guided_upVector.m";
connectAttr "footHinge_guided_upVector.oy" "footHinge_guided_upVector_normal.i1y"
		;
connectAttr "footHinge_guide_srt.t" "footHinge_guided_position.i1";
connectAttr "foot_guided_srt.wim" "footHinge_guided_position.m";
connectAttr "ankleSwivel_guide_srt.t" "footAxle_guided_upVecotr.i1";
connectAttr "foot_guided_srt.wim" "footAxle_guided_upVecotr.m";
connectAttr "footAxle_guided_upVecotr.oy" "footAxle_guided_upVector_normal.i1y";
connectAttr "ankleAxle_guided_aimVector_inWorld.o" "ankleAxle_guided_aimVector.i1"
		;
connectAttr "footHinge_guided_srtOffset.wim" "ankleAxle_guided_aimVector.m";
connectAttr "ankleAxle_guided_aimVector.oy" "ankleAxle_guided_aimVector_normal.i1y"
		;
connectAttr "ankleAxle_guide_srt.t" "ankeAxle_guided_position.i1";
connectAttr "footHinge_guided_srtOffset.wim" "ankeAxle_guided_position.m";
connectAttr "ankleAxle_guide_srt.wm" "ankleAxle_guided_aimVector_inWorld.m";
connectAttr "footHinge_guide_srt.wm" "foot_guided_upVector_inWorld.m";
connectAttr "hipSwivel_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "kneeAxle_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "footAxle_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "hipAxle_guided_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "footAxle_upObject_guided_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "ankeAxle_guided_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "foot_guided_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "hipHinge_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "knee_guided_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "footHinge_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "kneeSwivel_base_guided_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "ankleAxle_guided_upVector_normal.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "footHinge_guided_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "footAxle_guided_worldUpObject.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "hipHinge_guided_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "kneeSwivel_guided_worldUpObject.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "kneeAxle_guided_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "footAxle_guided_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "ankleAxle_guided_aimVector_normal.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "legEnd_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "footAxle_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "hipSwivel_guided_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "kneeSwivel_base_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "ankleAxle_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "kneeSwivel_end_guided_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "ankleSwivel_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "ankleSwivel_guided_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "footAxle_guided_upVecotr.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "ankleAxle_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "kneeAxle_guided_upVector_normal.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "hipAxle_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "foot_guided_upVector_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "ankleSwivel_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "ankleSwivel_guided_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "kneeAxle_guided_worldUpObject.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "legEnd_guided_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "ankleAxle_guided_aimVector_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "footHinge_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "hipSwivel_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "kneeHinge_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "kneeSwivel_end_guided_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "ankle_guided_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "ankleAxle_guided_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "hipHinge_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "kneeAxle_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "kneeHinge_guided_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "kneeSwivel_end_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "footHinge_guided_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "footHinge_guided_upVector_normal.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "hip_guided_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn";
connectAttr "kneeSwivel_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "ankleAxle_guided_worldUpObject.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "kneeSwivel_end_guided_upVector_normal.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "ankleAxle_guided_aimVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "shoulder_guided_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "hipAxle_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "kneeHinge_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "ankleSwivel_guided_upVector_normal.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "kneeAxle_worldUpObject_guided_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "footAxle_guided_upVector_normal.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "kneeAxle_guided_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "ankleOffsetByFoot_matrix_localTo_knee.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "ankleOffsetByFoot_matrix_localTo_foot.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "ankleOffsetByFoot_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "ankle_srt_localTo_foot.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "ankleOffsetByFoot_srt_localTo_knee.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "ankle_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn";
connectAttr "ankleOffsetByFoot_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "ankleOffsetByFoot_rotation_localTo_knee.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "ankleSwivelOffsetByFoot_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "ankleSwivelOffsetByFoot_matrix_localTo_knee.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "foot_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[10].dn";
connectAttr "knee_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[11].dn";
connectAttr "ankle_matrix_localTo_foot.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[12].dn"
		;
connectAttr "ankleOffsetByFoot_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[13].dn"
		;
connectAttr "footAxle_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[0].dn"
		;
connectAttr "footAxle_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[1].dn";
connectAttr "footAxle_matrix_localTo_foot.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "footAxle_worldUpMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[3].dn"
		;
connectAttr "footAxle_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[4].dn"
		;
connectAttr "footAxle_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[5].dn"
		;
connectAttr "footAxle_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[6].dn"
		;
connectAttr "footAxle_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[7].dn"
		;
connectAttr "footAxle_worldUpObject.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[8].dn"
		;
connectAttr "footAxle_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[9].dn";
connectAttr "foot_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[10].dn";
connectAttr "footAxle_aim_targetTranslate.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[11].dn"
		;
connectAttr "ankleOffsetByFoot_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[12].dn"
		;
connectAttr "footHinge_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[0].dn";
connectAttr "footHinge_matrix_localTo_footAxle.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[1].dn"
		;
connectAttr "footHinge_aim_targetTranslate.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[2].dn"
		;
connectAttr "footHinge_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[3].dn"
		;
connectAttr "footHinge_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[4].dn"
		;
connectAttr "footHinge_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[5].dn";
connectAttr "footHinge_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[6].dn"
		;
connectAttr "footAxle_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[7].dn";
connectAttr "footHinge_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[8].dn"
		;
connectAttr "footSwivel_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[9].dn"
		;
connectAttr "footHinge_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[10].dn"
		;
connectAttr "footSwivel_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[11].dn";
connectAttr "ankleOffsetByFoot_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[12].dn"
		;
connectAttr "kneeAxle_parentMatrix_localTo_hip.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[0].dn"
		;
connectAttr "kneeAxle_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[1].dn"
		;
connectAttr "ankle_rotation_localTo_kneeAxle_parent.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[2].dn"
		;
connectAttr "leg_LFkneeAxle_aim_targetTranslate.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[3].dn"
		;
connectAttr "kneeAxle_parentInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[4].dn"
		;
connectAttr "hip_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[5].dn";
connectAttr "kneeAxle_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[6].dn"
		;
connectAttr "kneeAxle_worldUpObject.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[7].dn"
		;
connectAttr "knee_rotation_localTo_hip.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[8].dn"
		;
connectAttr "kneeAxle_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[9].dn"
		;
connectAttr "knee_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[10].dn";
connectAttr "kneeAxle_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[11].dn"
		;
connectAttr "knee_srt_localTo_hip.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[12].dn"
		;
connectAttr "kneeAxle_worldUpMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[13].dn"
		;
connectAttr "kneeAxle_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[14].dn"
		;
connectAttr "kneeAxle_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[15].dn"
		;
connectAttr "kneeAxle_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[16].dn"
		;
connectAttr "ankle_srt_localTo_kneeAxle_parent.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[17].dn"
		;
connectAttr "ankle_matrix_localTo_kneeAxle_parent.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[18].dn"
		;
connectAttr "kneeAxle_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[19].dn";
connectAttr "|legParts_cmpt|output|kneeAxle_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[20].dn"
		;
connectAttr "ankleSwivel_matrix_localTo_kneeAxle_parent.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[21].dn"
		;
connectAttr "|legParts_cmpt|deform|kneeAxle_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[22].dn"
		;
connectAttr "knee_matrix_localTo_hip.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[23].dn"
		;
connectAttr "ankle_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[24].dn";
connectAttr "kneeAxle_parent_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[25].dn"
		;
connectAttr "ankleAxle_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[0].dn"
		;
connectAttr "ankleAxle_translation_matrix_localTo_foot.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[1].dn"
		;
connectAttr "ankleAxle_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[2].dn";
connectAttr "ankleAxle_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[3].dn"
		;
connectAttr "ankleAxle_matrix_localTo_foot.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[4].dn"
		;
connectAttr "ankleAxle_worldUpMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[5].dn"
		;
connectAttr "ankleAxle_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[6].dn"
		;
connectAttr "ankleAxle_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[7].dn"
		;
connectAttr "kneeAxle_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[8].dn";
connectAttr "ankleAxle_rotation_matrix_localTo_foot.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[9].dn"
		;
connectAttr "ankleAxle_worldUpObject.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[10].dn"
		;
connectAttr "ankleAxle_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[11].dn"
		;
connectAttr "footHinge_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[12].dn";
connectAttr "ankleAxle_aim_targetTranslate.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[13].dn"
		;
connectAttr "ankleAxle_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[14].dn";
connectAttr "kneeHinge_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[0].dn"
		;
connectAttr "ankleSwivel_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[1].dn"
		;
connectAttr "ankleSwivel_positionMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[2].dn"
		;
connectAttr "ankleSwivel_parentInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[3].dn"
		;
connectAttr "ankleSwivel_parent_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[4].dn"
		;
connectAttr "ankleSwivel_stable_aim_rotation.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[5].dn"
		;
connectAttr "ankleSwivel_upPosition.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[6].dn"
		;
connectAttr "ankleSwivel_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[7].dn"
		;
connectAttr "ankleSwivel_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[8].dn"
		;
connectAttr "ankleSwivel_aim_targetTranslate.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[9].dn"
		;
connectAttr "ankleSwivel_parentMatrix_localTo_kneeAxle1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[10].dn"
		;
connectAttr "ankleSwivel_parentSRT_localTo_kneeAxle.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[11].dn"
		;
connectAttr "ankleSwivel_upMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[12].dn"
		;
connectAttr "legEnd_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[13].dn";
connectAttr "ankleSwivel_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[14].dn"
		;
connectAttr "ankleSwivel_rotationMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[15].dn"
		;
connectAttr "legEnd_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[16].dn"
		;
connectAttr "ankleSwivel_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[17].dn"
		;
connectAttr "ankleAxle_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[18].dn";
connectAttr "ankleSwivel_matrix_adjusted.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[19].dn"
		;
connectAttr "ankleSwivel_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[20].dn"
		;
connectAttr "ankleSwivel_worldUpMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[21].dn"
		;
connectAttr "ankleSwivel_parentMatrix_localTo_kneeAxle.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[22].dn"
		;
connectAttr "kneeAxle_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[23].dn";
connectAttr "legEnd_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[24].dn"
		;
connectAttr "ankleSwivel_target_zVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[25].dn"
		;
connectAttr "ankleSwivel_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[26].dn"
		;
connectAttr "ankleSwivel_parentRotation_localTo_kneeAxle.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[27].dn"
		;
connectAttr "legEnd_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[28].dn"
		;
connectAttr "ankleSwivel_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[29].dn"
		;
connectAttr "legBase_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[0].dn";
connectAttr "kneeHinge_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[1].dn"
		;
connectAttr "kneeHinge_base_translateZ_sign.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[2].dn"
		;
connectAttr "legEnd_srt_localTo_knee.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[3].dn"
		;
connectAttr "kneeHinge_parentMatrix_localTo_legBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[4].dn"
		;
connectAttr "kneeHinge_end_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[5].dn"
		;
connectAttr "kneeHinge_base_position_matrix_localTo_kneeHinge_end.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[6].dn"
		;
connectAttr "legEnd_rotation_localTo_knee.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[7].dn"
		;
connectAttr "|legParts_cmpt|output|kneeHinge_base_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[8].dn"
		;
connectAttr "kneeHinge_parent_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[9].dn"
		;
connectAttr "kneeHinge_base_translateZ_isNegative.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[10].dn"
		;
connectAttr "kneeHinge_parentInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[11].dn"
		;
connectAttr "kneeHinge_end_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[12].dn"
		;
connectAttr "knee_matrix_localTo_legBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[13].dn"
		;
connectAttr "knee_rotation_localTo_legBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[14].dn"
		;
connectAttr "kneeHinge_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[15].dn";
connectAttr "legEnd_matrix_localTo_kneeAxle.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[16].dn"
		;
connectAttr "kneeHinge_rotation_matrix_localTo_knee.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[17].dn"
		;
connectAttr "kneeHinge_end_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[18].dn"
		;
connectAttr "kneeHinge_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[19].dn"
		;
connectAttr "legEnd_distance_to_knee.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[20].dn"
		;
connectAttr "kneeHinge_base_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[21].dn"
		;
connectAttr "kneeHinge_base_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[22].dn"
		;
connectAttr "|legParts_cmpt|deform|kneeHinge_base_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[23].dn"
		;
connectAttr "legEnd_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[24].dn";
connectAttr "knee_srt_localTo_legBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[25].dn"
		;
connectAttr "kneeHinge_end_position_matrix_localTo_knee.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[26].dn"
		;
connectAttr "kneeHinge_base_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[27].dn"
		;
connectAttr "hipSwivel_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[0].dn";
connectAttr "kneeAxle_rotation_localTo_legBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[1].dn"
		;
connectAttr "legBase_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[2].dn";
connectAttr "hipSwivel_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[3].dn"
		;
connectAttr "kneeAxle_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[4].dn";
connectAttr "kneeAxle_twist_matrix_localTo_legBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[5].dn"
		;
connectAttr "hipSwivel_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[6].dn"
		;
connectAttr "kneeAxle_matrix_localTo_legBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[7].dn"
		;
connectAttr "|legParts_cmpt|deform|hipSwivel_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[8].dn"
		;
connectAttr "kneeAxle_srt_localTo_legBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[9].dn"
		;
connectAttr "hipSwivel_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[10].dn"
		;
connectAttr "hipSwivel_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[11].dn"
		;
connectAttr "kneeSwivel_parent_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[0].dn"
		;
connectAttr "hipSwivel_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[1].dn";
connectAttr "kneeSwivel_worldUpObject.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[2].dn"
		;
connectAttr "hip_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[3].dn";
connectAttr "kneeSwivel_aim_targetTranslate.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[4].dn"
		;
connectAttr "kneeSwivel_end_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[5].dn"
		;
connectAttr "kneeSwivel_parentMatrix_localTo_hip.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[6].dn"
		;
connectAttr "|legParts_cmpt|deform|kneeSwivel_end_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[7].dn"
		;
connectAttr "kneeSwivel_end_rotationMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[8].dn"
		;
connectAttr "kneeSwivel_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[9].dn"
		;
connectAttr "kneeSwivel_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[10].dn"
		;
connectAttr "kneeAxle_matrix_localTo_hip.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[11].dn"
		;
connectAttr "kneeSwivel_worldUpMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[12].dn"
		;
connectAttr "kneeSwivel_end_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[13].dn"
		;
connectAttr "kneeSwivel_end_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[14].dn"
		;
connectAttr "kneeSwivel_parentSRT_localTo_hip.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[15].dn"
		;
connectAttr "kneeSwivel_end_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[16].dn"
		;
connectAttr "kneeSwivel_parentRotation_localTo_hip.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[17].dn"
		;
connectAttr "kneeAxle_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[18].dn";
connectAttr "kneeSwivel_end_positionMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[19].dn"
		;
connectAttr "kneeSwivel_parentInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[20].dn"
		;
connectAttr "kneeSwivel_end_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[21].dn"
		;
connectAttr "kneeSwivel_end_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[22].dn"
		;
connectAttr "|legParts_cmpt|deform|hipAxle_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[0].dn"
		;
connectAttr "hipSwivel_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[1].dn";
connectAttr "|legParts_cmpt|deform|kneeSwivel_base_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[2].dn"
		;
connectAttr "hipAxle_srtOffset_localTo_kneeSwivel_end.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[3].dn"
		;
connectAttr "hipAxle_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[4].dn"
		;
connectAttr "hipAxle_parentMatrix_localTo_kneeSwivel_end.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[5].dn"
		;
connectAttr "kneeSwivel_base_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[6].dn"
		;
connectAttr "|legParts_cmpt|output|hipAxle_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[7].dn"
		;
connectAttr "hipAxle_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[8].dn"
		;
connectAttr "kneeSwivel_base_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[9].dn"
		;
connectAttr "kneeSwivel_base_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[10].dn"
		;
connectAttr "kneeSwivel_end_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[11].dn"
		;
connectAttr "hipAxle_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[12].dn"
		;
connectAttr "hipAxle_matrix_localTo_kneeSwivel_end.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[13].dn"
		;
connectAttr "hipHinge_srt_localTo_shoulderEnd.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[0].dn"
		;
connectAttr "hip_srt_localTo_shoulder.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[1].dn"
		;
connectAttr "hip_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[2].dn";
connectAttr "legBase_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[3].dn";
connectAttr "shoulder_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[4].dn";
connectAttr "hip_matrix_localTo_shoulder.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[5].dn"
		;
connectAttr "hipHinge_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[6].dn"
		;
connectAttr "hipHinge_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[7].dn"
		;
connectAttr "hipHinge_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[8].dn";
connectAttr "legBase_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[9].dn"
		;
connectAttr "hipHinge_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[10].dn"
		;
connectAttr "hipHinge_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[11].dn";
connectAttr "legBase_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[12].dn"
		;
connectAttr "legBase_matrix_localTo_shoulder.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[13].dn"
		;
connectAttr "ankle_guided_srt.t" "kneeAxle_guided_upVector.i1";
connectAttr "knee_guided_srt.wim" "kneeAxle_guided_upVector.m";
connectAttr "kneeAxle_guided_upVector.oz" "kneeAxle_guided_upVector_normal.i1z";
connectAttr "hipHinge_srt_localTo_shoulderEnd.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hipHinge_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hipHinge_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hipSwivel_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hipSwivel_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "kneeSwivel_base_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "hipHinge_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "hip_srt_localTo_shoulder.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "footAxle_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "footHinge_matrix_localTo_footAxle.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "footHinge_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "footHinge_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "footSwivel_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankleOffsetByFoot_matrix_localTo_foot.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleOffsetByFoot_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ankleOffsetByFoot_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "footHinge_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ankleOffsetByFoot_matrix_localTo_knee.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleOffsetByFoot_srt_localTo_knee.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleOffsetByFoot_rotation_localTo_knee.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleSwivelOffsetByFoot_matrix_localTo_knee.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleSwivelOffsetByFoot_worldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "footAxle_matrix_localTo_foot.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "footAxle_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "footAxle_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ankleAxle_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankleAxle_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankleAxle_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ankleSwivel_aim_targetTranslate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleSwivel_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankleSwivel_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "legEnd_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "legEnd_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "legEnd_matrix_localTo_kneeAxle.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "legEnd_srt_localTo_knee.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "legEnd_rotation_localTo_knee.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "kneeHinge_end_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeHinge_end_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeHinge_base_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeHinge_base_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeHinge_base_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "kneeSwivel_end_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeSwivel_end_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hip_matrix_localTo_shoulder.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "legBase_matrix_localTo_shoulder.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "legBase_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "legBase_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeAxle_matrix_localTo_legBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "kneeAxle_srt_localTo_legBase.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "kneeAxle_twist_matrix_localTo_legBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "kneeAxle_rotation_localTo_legBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hipSwivel_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "knee_matrix_localTo_legBase.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "kneeHinge_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankleAxle_aim_targetTranslate.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "kneeHinge_parentMatrix_localTo_legBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "knee_srt_localTo_legBase.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeHinge_parentInverseMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "kneeHinge_end_position_matrix_localTo_knee.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "kneeHinge_rotation_matrix_localTo_knee.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "kneeHinge_base_position_matrix_localTo_kneeHinge_end.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "legEnd_distance_to_knee.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeHinge_base_translateZ_sign.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ankleSwivel_worldUpMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "knee_rotation_localTo_legBase.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "kneeSwivel_end_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hipAxle_parentMatrix_localTo_kneeSwivel_end.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hipAxle_srtOffset_localTo_kneeSwivel_end.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hipAxle_matrix_localTo_kneeSwivel_end.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "kneeSwivel_base_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "kneeAxle_matrix_localTo_hip.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "kneeSwivel_parentSRT_localTo_hip.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "kneeSwivel_parentMatrix_localTo_hip.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "kneeSwivel_parentRotation_localTo_hip.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "kneeSwivel_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeSwivel_parentInverseMatrix.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ankleAxle_worldUpMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "knee_matrix_localTo_hip.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "knee_srt_localTo_hip.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeAxle_parentMatrix_localTo_hip.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "kneeAxle_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeAxle_parentInverseMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "kneeAxle_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeAxle_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeAxle_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeAxle_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ankle_matrix_localTo_kneeAxle_parent.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankle_srt_localTo_kneeAxle_parent.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleSwivel_matrix_localTo_kneeAxle_parent.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankle_rotation_localTo_kneeAxle_parent.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "kneeAxle_worldUpMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "knee_rotation_localTo_hip.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_LFkneeAxle_aim_targetTranslate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleSwivel_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankleSwivel_parentInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleSwivel_parentMatrix_localTo_kneeAxle.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleSwivel_parentSRT_localTo_kneeAxle.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleSwivel_parentRotation_localTo_kneeAxle.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleSwivel_parentMatrix_localTo_kneeAxle1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleSwivel_positionMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankleSwivel_rotationMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankleSwivel_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeSwivel_end_positionMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "kneeSwivel_end_rotationMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "kneeSwivel_end_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankleSwivel_upMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankleSwivel_position.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankleSwivel_upPosition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankleSwivel_target_zVector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeSwivel_aim_targetTranslate.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "kneeSwivel_worldUpMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hipAxle_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hipAxle_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankleAxle_translation_matrix_localTo_foot.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleAxle_rotation_matrix_localTo_foot.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleAxle_matrix_localTo_foot.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ankle_matrix_localTo_foot.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankle_srt_localTo_foot.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "footAxle_aim_targetTranslate.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "hipHinge_guided_position.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hipSwivel_guided_position.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hipAxle_guided_position.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeSwivel_base_guided_position.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "kneeAxle_guided_position.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeHinge_guided_position.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeSwivel_end_guided_position.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "kneeAxle_worldUpObject_guided_position.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "footHinge_guided_position.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankeAxle_guided_position.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankleSwivel_guided_position.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "legEnd_guided_position.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "foot_guided_upVector_inWorld.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "footHinge_guided_upVector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "footHinge_guided_upVector_normal.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleAxle_guided_aimVector_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleAxle_guided_aimVector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankleAxle_guided_aimVector_normal.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "footHinge_aim_targetTranslate.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "kneeSwivel_end_guided_upVector.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "kneeSwivel_end_guided_upVector_normal.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleSwivel_stable_aim_rotation.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleSwivel_matrix_adjusted.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "kneeHinge_base_translateZ_isNegative.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ankleSwivel_guided_upVector.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ankleSwivel_guided_upVector_normal.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "kneeAxle_guided_upVector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "kneeAxle_guided_upVector_normal.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "footAxle_worldUpMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "footAxle_upObject_guided_position.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "footAxle_guided_upVector_normal.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "footAxle_guided_upVecotr.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "footAxle_guided_position.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankleAxle_guided_upVector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankleAxle_guided_upVector_normal.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of legParts.ma

//Maya ASCII 2024 scene
//Name: brairANIMS.ma
//Last modified: Thu, Oct 22, 2026 03:16:27 PM
//Codeset: 1252
file -rdi 1 -ns "briar_v06" -rfn "briar_v06RN" -op "v=0;" -typ "mayaAscii" "E:/Briar's Thicket/BriarRig//scenes/briar_v06.ma";
file -rdi 2 -ns "model" -rfn "briar_v06:modelRN" -op "v=0;" -typ "mayaAscii"
		 "/Users/jkroeze2/Desktop/Briar//scenes/briar_model_cleaned.ma";
file -r -ns "briar_v06" -dr 1 -rfn "briar_v06RN" -op "v=0;" -typ "mayaAscii" "E:/Briar's Thicket/BriarRig//scenes/briar_v06.ma";
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Enterprise v2009 (Build: 26200)";
fileInfo "UUID" "9F5F3D6C-4606-3E65-2909-09A65024CA3D";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "1CA20DA3-40FF-F168-1F44-6480EFA6CBB7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.4292613743379938 30.159377135452452 58.410030817988009 ;
	setAttr ".r" -type "double3" -17.738352729287126 366.99999999983157 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CBA2F00B-4A8A-8FB9-8571-DE841F4BB881";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 64.496324455652868;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "49828BC6-4B70-8998-5B60-6CBD9F908E1A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "BF15B1D2-426E-1BF1-5579-1E972384E862";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "93BB3307-44BB-4039-391C-E8A051552E69";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C63B7393-4A95-9997-43FA-09BB54CD5A49";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "2C7EA034-483A-3D56-64E6-C2A7C36B7E00";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "61248F91-4606-7F8F-66E7-39B7AED3CE51";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "552A878A-47CA-C805-3374-4F8E2D1E6A5D";
	setAttr -s 31 ".lnk";
	setAttr -s 31 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "83374E32-4523-F1E6-5B0D-8F80FF4859FC";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6CB5567F-421B-24E8-0B39-B3BB5D49449A";
createNode displayLayerManager -n "layerManager";
	rename -uid "4FCBD560-4C49-C59B-F418-9CA2ACA5A2CA";
createNode displayLayer -n "defaultLayer";
	rename -uid "5602E6C8-4919-3CF1-0745-FC89425277F9";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C684661C-468D-5CB9-CB1C-929A8307351B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "1D27116F-45E8-6062-974E-7E85BC658A1F";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "C65306C6-4016-55C1-3A77-9190AC293365";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "3C654AEC-479F-0062-8B4A-639B355D130C";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "2AC4A8EB-4A70-05E7-9358-0EB2466AB7CA";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "2C4383F5-4941-F1B5-B6F3-96A0E37DE2B5";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode reference -n "briar_v06RN";
	rename -uid "2E3E4A9B-4CA3-CBB9-C44E-85AF0D1416F7";
	setAttr -s 107 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"briar_v06RN"
		"briar_v06RN" 0
		"briar_v06:modelRN" 0
		"briar_v06RN" 137
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKExtraRoot_M|briar_v06:FKRoot_M|briar_v06:HipSwingerOffset_M|briar_v06:HipSwinger_M" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R" 
		"followMain" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R" 
		"followRoot" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R" 
		"swivel" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R" 
		"roll" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R" 
		"rollStartAngle" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R" 
		"rollEndAngle" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R" 
		"rock" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R" 
		"stretchy" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R" 
		"antiPop" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R" 
		"Lenght1" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R" 
		"Lenght2" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R" 
		"Fatness1" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R" 
		"Fatness2" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R" 
		"volume" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L" 
		"followMain" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L" 
		"followRoot" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L" 
		"swivel" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L" 
		"roll" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L" 
		"rollStartAngle" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L" 
		"rollEndAngle" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L" 
		"rock" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L" 
		"stretchy" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L" 
		"antiPop" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L" 
		"Lenght1" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L" 
		"Lenght2" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L" 
		"Fatness1" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L" 
		"Fatness2" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L" 
		"volume" " -k 1"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:DrivingSystem|briar_v06:Fingers_R" 
		"indexCurl" " -k 1 0"
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R.scaleX" 
		"briar_v06RN.placeHolderList[1]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R.scaleY" 
		"briar_v06RN.placeHolderList[2]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R.scaleZ" 
		"briar_v06RN.placeHolderList[3]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R.rotateY" 
		"briar_v06RN.placeHolderList[4]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R.rotateX" 
		"briar_v06RN.placeHolderList[5]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R.rotateZ" 
		"briar_v06RN.placeHolderList[6]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R.translateX" 
		"briar_v06RN.placeHolderList[7]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R.translateY" 
		"briar_v06RN.placeHolderList[8]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R.translateZ" 
		"briar_v06RN.placeHolderList[9]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R.scaleX" 
		"briar_v06RN.placeHolderList[10]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R.scaleY" 
		"briar_v06RN.placeHolderList[11]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R.scaleZ" 
		"briar_v06RN.placeHolderList[12]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R.rotateX" 
		"briar_v06RN.placeHolderList[13]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R.rotateY" 
		"briar_v06RN.placeHolderList[14]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R.rotateZ" 
		"briar_v06RN.placeHolderList[15]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R.translateX" 
		"briar_v06RN.placeHolderList[16]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R.translateY" 
		"briar_v06RN.placeHolderList[17]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R.translateZ" 
		"briar_v06RN.placeHolderList[18]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R|briar_v06:FKXElbow_R|briar_v06:FKOffsetWrist_R|briar_v06:FKExtraWrist_R|briar_v06:FKWrist_R.scaleX" 
		"briar_v06RN.placeHolderList[19]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R|briar_v06:FKXElbow_R|briar_v06:FKOffsetWrist_R|briar_v06:FKExtraWrist_R|briar_v06:FKWrist_R.scaleY" 
		"briar_v06RN.placeHolderList[20]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R|briar_v06:FKXElbow_R|briar_v06:FKOffsetWrist_R|briar_v06:FKExtraWrist_R|briar_v06:FKWrist_R.scaleZ" 
		"briar_v06RN.placeHolderList[21]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R|briar_v06:FKXElbow_R|briar_v06:FKOffsetWrist_R|briar_v06:FKExtraWrist_R|briar_v06:FKWrist_R.rotateX" 
		"briar_v06RN.placeHolderList[22]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R|briar_v06:FKXElbow_R|briar_v06:FKOffsetWrist_R|briar_v06:FKExtraWrist_R|briar_v06:FKWrist_R.rotateY" 
		"briar_v06RN.placeHolderList[23]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R|briar_v06:FKXElbow_R|briar_v06:FKOffsetWrist_R|briar_v06:FKExtraWrist_R|briar_v06:FKWrist_R.rotateZ" 
		"briar_v06RN.placeHolderList[24]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R|briar_v06:FKXElbow_R|briar_v06:FKOffsetWrist_R|briar_v06:FKExtraWrist_R|briar_v06:FKWrist_R.translateX" 
		"briar_v06RN.placeHolderList[25]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R|briar_v06:FKXElbow_R|briar_v06:FKOffsetWrist_R|briar_v06:FKExtraWrist_R|briar_v06:FKWrist_R.translateY" 
		"briar_v06RN.placeHolderList[26]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R|briar_v06:FKXElbow_R|briar_v06:FKOffsetWrist_R|briar_v06:FKExtraWrist_R|briar_v06:FKWrist_R.translateZ" 
		"briar_v06RN.placeHolderList[27]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L.scaleX" 
		"briar_v06RN.placeHolderList[28]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L.scaleY" 
		"briar_v06RN.placeHolderList[29]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L.scaleZ" 
		"briar_v06RN.placeHolderList[30]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L.rotateY" 
		"briar_v06RN.placeHolderList[31]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L.rotateX" 
		"briar_v06RN.placeHolderList[32]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L.rotateZ" 
		"briar_v06RN.placeHolderList[33]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L.translateX" 
		"briar_v06RN.placeHolderList[34]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L.translateY" 
		"briar_v06RN.placeHolderList[35]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L.translateZ" 
		"briar_v06RN.placeHolderList[36]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L.scaleX" 
		"briar_v06RN.placeHolderList[37]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L.scaleY" 
		"briar_v06RN.placeHolderList[38]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L.scaleZ" 
		"briar_v06RN.placeHolderList[39]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L.rotateX" 
		"briar_v06RN.placeHolderList[40]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L.rotateY" 
		"briar_v06RN.placeHolderList[41]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L.rotateZ" 
		"briar_v06RN.placeHolderList[42]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L.translateX" 
		"briar_v06RN.placeHolderList[43]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L.translateY" 
		"briar_v06RN.placeHolderList[44]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L.translateZ" 
		"briar_v06RN.placeHolderList[45]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L|briar_v06:FKXElbow_L|briar_v06:FKOffsetWrist_L|briar_v06:FKExtraWrist_L|briar_v06:FKWrist_L.scaleX" 
		"briar_v06RN.placeHolderList[46]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L|briar_v06:FKXElbow_L|briar_v06:FKOffsetWrist_L|briar_v06:FKExtraWrist_L|briar_v06:FKWrist_L.scaleY" 
		"briar_v06RN.placeHolderList[47]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L|briar_v06:FKXElbow_L|briar_v06:FKOffsetWrist_L|briar_v06:FKExtraWrist_L|briar_v06:FKWrist_L.scaleZ" 
		"briar_v06RN.placeHolderList[48]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L|briar_v06:FKXElbow_L|briar_v06:FKOffsetWrist_L|briar_v06:FKExtraWrist_L|briar_v06:FKWrist_L.rotateX" 
		"briar_v06RN.placeHolderList[49]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L|briar_v06:FKXElbow_L|briar_v06:FKOffsetWrist_L|briar_v06:FKExtraWrist_L|briar_v06:FKWrist_L.rotateY" 
		"briar_v06RN.placeHolderList[50]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L|briar_v06:FKXElbow_L|briar_v06:FKOffsetWrist_L|briar_v06:FKExtraWrist_L|briar_v06:FKWrist_L.rotateZ" 
		"briar_v06RN.placeHolderList[51]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L|briar_v06:FKXElbow_L|briar_v06:FKOffsetWrist_L|briar_v06:FKExtraWrist_L|briar_v06:FKWrist_L.translateX" 
		"briar_v06RN.placeHolderList[52]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L|briar_v06:FKXElbow_L|briar_v06:FKOffsetWrist_L|briar_v06:FKExtraWrist_L|briar_v06:FKWrist_L.translateY" 
		"briar_v06RN.placeHolderList[53]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L|briar_v06:FKXElbow_L|briar_v06:FKOffsetWrist_L|briar_v06:FKExtraWrist_L|briar_v06:FKWrist_L.translateZ" 
		"briar_v06RN.placeHolderList[54]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.scaleY" 
		"briar_v06RN.placeHolderList[55]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.scaleZ" 
		"briar_v06RN.placeHolderList[56]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.scaleX" 
		"briar_v06RN.placeHolderList[57]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.followMain" 
		"briar_v06RN.placeHolderList[58]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.followRoot" 
		"briar_v06RN.placeHolderList[59]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.swivel" 
		"briar_v06RN.placeHolderList[60]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.rock" 
		"briar_v06RN.placeHolderList[61]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.roll" 
		"briar_v06RN.placeHolderList[62]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.rollStartAngle" 
		"briar_v06RN.placeHolderList[63]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.rollEndAngle" 
		"briar_v06RN.placeHolderList[64]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.stretchy" 
		"briar_v06RN.placeHolderList[65]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.antiPop" 
		"briar_v06RN.placeHolderList[66]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.Lenght1" 
		"briar_v06RN.placeHolderList[67]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.Lenght2" 
		"briar_v06RN.placeHolderList[68]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.Fatness1" 
		"briar_v06RN.placeHolderList[69]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.Fatness2" 
		"briar_v06RN.placeHolderList[70]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.volume" 
		"briar_v06RN.placeHolderList[71]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.translateY" 
		"briar_v06RN.placeHolderList[72]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.translateX" 
		"briar_v06RN.placeHolderList[73]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.translateZ" 
		"briar_v06RN.placeHolderList[74]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.rotateY" 
		"briar_v06RN.placeHolderList[75]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.rotateX" 
		"briar_v06RN.placeHolderList[76]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.rotateZ" 
		"briar_v06RN.placeHolderList[77]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.scaleY" 
		"briar_v06RN.placeHolderList[78]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.scaleZ" 
		"briar_v06RN.placeHolderList[79]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.scaleX" 
		"briar_v06RN.placeHolderList[80]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.followMain" 
		"briar_v06RN.placeHolderList[81]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.followRoot" 
		"briar_v06RN.placeHolderList[82]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.swivel" 
		"briar_v06RN.placeHolderList[83]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.rock" 
		"briar_v06RN.placeHolderList[84]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.roll" 
		"briar_v06RN.placeHolderList[85]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.rollStartAngle" 
		"briar_v06RN.placeHolderList[86]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.rollEndAngle" 
		"briar_v06RN.placeHolderList[87]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.stretchy" 
		"briar_v06RN.placeHolderList[88]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.antiPop" 
		"briar_v06RN.placeHolderList[89]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.Lenght1" 
		"briar_v06RN.placeHolderList[90]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.Lenght2" 
		"briar_v06RN.placeHolderList[91]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.Fatness1" 
		"briar_v06RN.placeHolderList[92]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.Fatness2" 
		"briar_v06RN.placeHolderList[93]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.volume" 
		"briar_v06RN.placeHolderList[94]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.translateY" 
		"briar_v06RN.placeHolderList[95]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.translateZ" 
		"briar_v06RN.placeHolderList[96]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.translateX" 
		"briar_v06RN.placeHolderList[97]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.rotateY" 
		"briar_v06RN.placeHolderList[98]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.rotateX" 
		"briar_v06RN.placeHolderList[99]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.rotateZ" 
		"briar_v06RN.placeHolderList[100]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:RootSystem|briar_v06:RootFollowMain|briar_v06:RootOffsetX_M|briar_v06:RootExtraX_M|briar_v06:RootX_M.translateY" 
		"briar_v06RN.placeHolderList[101]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:RootSystem|briar_v06:RootFollowMain|briar_v06:RootOffsetX_M|briar_v06:RootExtraX_M|briar_v06:RootX_M.translateX" 
		"briar_v06RN.placeHolderList[102]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:RootSystem|briar_v06:RootFollowMain|briar_v06:RootOffsetX_M|briar_v06:RootExtraX_M|briar_v06:RootX_M.translateZ" 
		"briar_v06RN.placeHolderList[103]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:RootSystem|briar_v06:RootFollowMain|briar_v06:RootOffsetX_M|briar_v06:RootExtraX_M|briar_v06:RootX_M.rotateX" 
		"briar_v06RN.placeHolderList[104]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:RootSystem|briar_v06:RootFollowMain|briar_v06:RootOffsetX_M|briar_v06:RootExtraX_M|briar_v06:RootX_M.rotateY" 
		"briar_v06RN.placeHolderList[105]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:RootSystem|briar_v06:RootFollowMain|briar_v06:RootOffsetX_M|briar_v06:RootExtraX_M|briar_v06:RootX_M.rotateZ" 
		"briar_v06RN.placeHolderList[106]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:RootSystem|briar_v06:RootFollowMain|briar_v06:RootOffsetX_M|briar_v06:RootExtraX_M|briar_v06:RootX_M.visibility" 
		"briar_v06RN.placeHolderList[107]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTA -n "FKShoulder_R_rotateX";
	rename -uid "99BC0146-45C8-DFD0-AAA2-ED84146B6EBA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 15 -53.362901678813088 20 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[1:2]"  1 18;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "FKShoulder_R_rotateY";
	rename -uid "690BD1BE-4CCD-24E6-9F4E-6C8E66717B7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 26.613403910213016 15 7.9661511873815609
		 20 26.613;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[1:2]"  1 18;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "FKShoulder_R_rotateZ";
	rename -uid "4FE4D497-4845-F8C9-BC34-0CA316C6BADA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 15 33.852568493774378 20 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[1:2]"  1 18;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "FKShoulder_R_translateX";
	rename -uid "4D515A69-4441-6031-7FB9-839257715049";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTL -n "FKShoulder_R_translateY";
	rename -uid "B1B6A794-47D8-4147-4A01-92B1E9FE2A69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTL -n "FKShoulder_R_translateZ";
	rename -uid "6B089303-4E28-93D0-C2CB-F691787BB101";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "FKShoulder_R_scaleX";
	rename -uid "0D3FC193-43FF-BD9E-5AE1-E0B652B99EE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "FKShoulder_R_scaleY";
	rename -uid "6CD79DF3-4A15-F1D9-B08D-41BE034B29CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "FKShoulder_R_scaleZ";
	rename -uid "777FC29F-4C7E-B723-1681-3EAC06FF60FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTA -n "FKShoulder_L_rotateX";
	rename -uid "2F621CA1-4160-7060-7FFD-ABA0AD3A3468";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 15 -36.261574402115215 20 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[1:2]"  1 18;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "FKShoulder_L_rotateY";
	rename -uid "7E2DA22C-48DF-3229-7EB2-108AA766C383";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 32.666326850256283 15 17.026672162479972
		 20 32.666;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[1:2]"  1 18;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "FKShoulder_L_rotateZ";
	rename -uid "D8EA881B-4081-2984-DF30-DBADB717EB84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 15 45.000632429574196 20 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[1:2]"  1 18;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "FKShoulder_L_translateX";
	rename -uid "2D2935F0-4E50-E6AE-1D03-BD9922500497";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTL -n "FKShoulder_L_translateY";
	rename -uid "38074757-4C93-2590-FDC4-79A7C4751B3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTL -n "FKShoulder_L_translateZ";
	rename -uid "E45AACA5-4E02-252A-A77C-F0A07C7D50AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "FKShoulder_L_scaleX";
	rename -uid "162309AF-4340-2559-4104-1FB9D25E5C2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "FKShoulder_L_scaleY";
	rename -uid "D6D451D0-4301-EFD0-5A63-069D45066A92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "FKShoulder_L_scaleZ";
	rename -uid "A61C2DD3-4139-1141-0344-76978D4AE3C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTA -n "FKElbow_R_rotateX";
	rename -uid "2BE650FE-4457-E8F5-3BA5-BABB60BE04D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FKElbow_R_rotateY";
	rename -uid "B2608380-45FB-5FF4-0D2C-10B21DD33A5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FKElbow_R_rotateZ";
	rename -uid "9AF443D1-4B87-98DD-6DF7-60AA142C3AA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 15 30.874146534446417 20 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[1:2]"  1 18;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "FKElbow_R_translateX";
	rename -uid "8CB0F93C-441A-9B42-B381-CB8356BDA60C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "FKElbow_R_translateY";
	rename -uid "59B31E54-45C5-7303-0327-3EBB1FE5F69B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "FKElbow_R_translateZ";
	rename -uid "6C5FF835-4B59-7FAC-A5B1-3D991EA60C2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "FKElbow_R_scaleX";
	rename -uid "76E58031-4BD7-9E3C-A95F-7A84C4663B8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FKElbow_R_scaleY";
	rename -uid "3E887D92-4D37-D5DE-8C05-A48B94C0553C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FKElbow_R_scaleZ";
	rename -uid "338CC1F1-4445-4A62-51DC-A395C695957B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "FKElbow_L_rotateX";
	rename -uid "3042FEDE-4146-31CC-6A97-14B33874F2E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FKElbow_L_rotateY";
	rename -uid "C9C8F390-48E3-9B86-3913-97965CA90BFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FKElbow_L_rotateZ";
	rename -uid "BE9037D4-426B-D43A-D16F-37ACABC2E82C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 15 18.087335454695495 20 -6.9644466151740785;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[1:2]"  1 18;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "FKElbow_L_translateX";
	rename -uid "9D94AAD3-4303-526A-EEB6-37A2F47C3F1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "FKElbow_L_translateY";
	rename -uid "362B54C0-4B63-C001-A0F3-01B8EC4D0022";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "FKElbow_L_translateZ";
	rename -uid "B463F168-4C29-E169-822E-15AEB0BC05DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "FKElbow_L_scaleX";
	rename -uid "339D4127-4ACA-8F6B-26A4-8FAF9A78011F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FKElbow_L_scaleY";
	rename -uid "1E40516E-4987-0B34-28B0-399AA7DE5C2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FKElbow_L_scaleZ";
	rename -uid "7FC55FEA-41A9-CD9B-781C-A6946FDB4E07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "FKWrist_L_rotateX";
	rename -uid "7F01B34B-4E56-C157-7225-0F9C950AAF8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FKWrist_L_rotateY";
	rename -uid "4382FDDD-488D-2C0D-840F-C3B0FB86570C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FKWrist_L_rotateZ";
	rename -uid "1951FD4C-42AB-6C06-CE8A-31BFF41D226D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "FKWrist_L_translateX";
	rename -uid "06B1C698-4BCA-FD9B-31DC-A696770715F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "FKWrist_L_translateY";
	rename -uid "8DA9F4B3-4DD2-241D-A481-B68146B3830D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "FKWrist_L_translateZ";
	rename -uid "C0F3F4E4-490E-2EC7-0FEC-2E9AC8CCF83D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "FKWrist_L_scaleX";
	rename -uid "53668E63-4470-EEFC-D679-CEA2D20BE547";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FKWrist_L_scaleY";
	rename -uid "90208630-4ED9-D266-3776-E6B1A2ECBF2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FKWrist_L_scaleZ";
	rename -uid "167F679A-4489-4482-03D3-E6B69ABF6666";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "FKWrist_R_rotateX";
	rename -uid "A700259F-4CB8-0DA7-8B54-9D9B1B5D33E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FKWrist_R_rotateY";
	rename -uid "D5C4FECD-4A7A-39A4-4EE9-F082FE8D86C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FKWrist_R_rotateZ";
	rename -uid "0AE0A09E-444F-0DA4-D569-D6A38333FC4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "FKWrist_R_translateX";
	rename -uid "9A7E71B9-4171-E764-A18B-1E8F7B0FE7DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "FKWrist_R_translateY";
	rename -uid "9711FB5B-4E3B-C9AA-CB5B-0580DDCA66FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "FKWrist_R_translateZ";
	rename -uid "1318E440-4B00-2620-32CC-B2AD5E9B5685";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "FKWrist_R_scaleX";
	rename -uid "1D0021EC-456A-E6E1-9214-B3837A06D84F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FKWrist_R_scaleY";
	rename -uid "035CFE11-4308-0299-79A0-FFBD325B9597";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FKWrist_R_scaleZ";
	rename -uid "CEB7AE48-49FD-9628-E9A8-49870CC0D77E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTL -n "IKLeg_L_translateX";
	rename -uid "235CBFFB-48C2-8665-5D6C-D79BDD60A543";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.48380866639755815 20 0.48380866639755815;
createNode animCurveTL -n "IKLeg_L_translateY";
	rename -uid "25B50C76-4235-EEEF-CE22-09B56F792045";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTL -n "IKLeg_L_translateZ";
	rename -uid "03CB4A77-41CD-48AF-6618-DBB54AE71375";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.78599442814600717 20 -0.78599442814600717;
createNode animCurveTA -n "IKLeg_L_rotateX";
	rename -uid "BFABF103-4015-740F-1D51-28B74B593EF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTA -n "IKLeg_L_rotateY";
	rename -uid "370FFAE5-40C1-0748-33C4-FCB4844D9BF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 25.97631681800846 20 25.97631681800846;
createNode animCurveTA -n "IKLeg_L_rotateZ";
	rename -uid "4B8B771F-4E5A-5440-5E3F-4183891D35B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "IKLeg_L_scaleX";
	rename -uid "041C789E-4B03-BE18-FBB5-B9A159F50F25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "IKLeg_L_scaleY";
	rename -uid "F32E4C6D-4477-C820-6C68-87B6192C49C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "IKLeg_L_scaleZ";
	rename -uid "27DE920F-4D5E-886F-1B59-9499877037DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "IKLeg_L_followMain";
	rename -uid "DC884EF9-43CB-9B74-3F8B-11837F640326";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 20 10;
createNode animCurveTU -n "IKLeg_L_followRoot";
	rename -uid "C37A49B4-4445-116D-EE8E-D8992CC14FEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "IKLeg_L_swivel";
	rename -uid "D4C750EF-4F33-E94C-CF26-E59D65AF3A03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "IKLeg_L_roll";
	rename -uid "8FE71E2E-44A4-8A4E-2959-369E2962BE20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "IKLeg_L_rollStartAngle";
	rename -uid "8C060C22-493E-F676-7607-1D94558939C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 30 20 30;
createNode animCurveTU -n "IKLeg_L_rollEndAngle";
	rename -uid "421C9C8F-4CC1-4335-0F06-2F803CDD8827";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 60 20 60;
createNode animCurveTU -n "IKLeg_L_rock";
	rename -uid "7CFC000D-407F-699D-8D76-F59BF8D31CA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "IKLeg_L_stretchy";
	rename -uid "8252252D-4C0D-F59D-FA88-08888198CAB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "IKLeg_L_antiPop";
	rename -uid "0C3C5D59-469B-CA2A-6953-588630FA1E3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "IKLeg_L_Lenght1";
	rename -uid "BCB4C8EA-4877-8FBE-2560-0D835864492A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "IKLeg_L_Lenght2";
	rename -uid "92C79127-4D76-3A03-BFE0-0B8AC7CA2FDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "IKLeg_L_Fatness1";
	rename -uid "3AF45FBC-437F-395B-7A0D-33849B250DF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "IKLeg_L_Fatness2";
	rename -uid "1D3423BE-4410-DA10-FD56-E1A63D83DE5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "IKLeg_L_volume";
	rename -uid "C6C1FDBB-4133-48F6-579A-ED85CCD68008";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 20 10;
createNode animCurveTL -n "IKLeg_R_translateX";
	rename -uid "885BBB6B-4BE1-D902-D0A6-3BA27AD8A9A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.87652204648718512 20 -0.87652204648718512;
createNode animCurveTL -n "IKLeg_R_translateY";
	rename -uid "1A9327F7-411A-F467-E1FC-A082A4854AD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTL -n "IKLeg_R_translateZ";
	rename -uid "6409E80E-4A22-A48F-2A2D-3D86EDD181BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.88294572173492725 20 0.88294572173492725;
createNode animCurveTA -n "IKLeg_R_rotateX";
	rename -uid "BBE67FFE-477B-A1ED-81A8-8381595587E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTA -n "IKLeg_R_rotateY";
	rename -uid "428DB108-4286-1F15-97E1-808695370EAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -10.831392438955469 20 -10.831392438955469;
createNode animCurveTA -n "IKLeg_R_rotateZ";
	rename -uid "64FEBB72-4C09-4730-CF93-D3BBAD051968";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "IKLeg_R_scaleX";
	rename -uid "64724928-46EB-CDB7-4486-8F868124D963";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "IKLeg_R_scaleY";
	rename -uid "D781A363-4F17-AC3D-6EC1-1099B8060326";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "IKLeg_R_scaleZ";
	rename -uid "27E2B8F7-4259-7FEA-2399-BE8C4AAC0CFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "IKLeg_R_followMain";
	rename -uid "356E729D-482A-F6AB-1432-7590EFC823D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 20 10;
createNode animCurveTU -n "IKLeg_R_followRoot";
	rename -uid "BFA014FD-4476-6AE7-686C-3A843D6C622E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "IKLeg_R_swivel";
	rename -uid "3A6E2246-423D-74A7-F06D-62BF19FB4E14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "IKLeg_R_roll";
	rename -uid "28376AA8-48CA-0105-8A09-0C9F684E9B24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "IKLeg_R_rollStartAngle";
	rename -uid "20013265-4FE7-4243-ED78-F9B08A2F3A98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 30 20 30;
createNode animCurveTU -n "IKLeg_R_rollEndAngle";
	rename -uid "2550FF78-499D-0DE0-47F4-DC8653783F54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 60 20 60;
createNode animCurveTU -n "IKLeg_R_rock";
	rename -uid "EBD839B2-4D21-BC8F-8168-A8BF2E70A0DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "IKLeg_R_stretchy";
	rename -uid "88115C83-41E6-9340-DD7C-C7BFB0D834C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "IKLeg_R_antiPop";
	rename -uid "A146F197-48CC-CA39-1836-D1B29D0019F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "IKLeg_R_Lenght1";
	rename -uid "285A0F85-4113-6506-B28C-BCA3DA48131A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "IKLeg_R_Lenght2";
	rename -uid "C89616C1-4225-C79A-330C-B1B034F2E51D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "IKLeg_R_Fatness1";
	rename -uid "E3B209DB-43B8-8F9C-E3B0-C3847BBD76D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "IKLeg_R_Fatness2";
	rename -uid "87579E6A-4D12-0FE7-44A1-858AAC0F63B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "IKLeg_R_volume";
	rename -uid "53C26082-4313-2408-2C44-D3AD6E9A05D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 20 10;
createNode animCurveTL -n "RootX_M_translateX";
	rename -uid "7F7DEBAB-4C6D-8931-11BE-AC8F5CEF9B64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "RootX_M_translateY";
	rename -uid "A1E1036A-44EB-C0FC-FEB9-B7BABB54CFE1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 15 -0.25902970908576961 30 0;
	setAttr -s 3 ".kit[0:2]"  18 1 1;
	setAttr -s 3 ".kot[0:2]"  18 1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "RootX_M_translateZ";
	rename -uid "FF97EE7F-4659-5F4D-CC8E-78A86DFB6DE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "RootX_M_visibility";
	rename -uid "E51A6745-4B2F-A205-763C-85B4326D286C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "RootX_M_rotateX";
	rename -uid "9B22DD48-4A4C-80F2-1347-0A9828799D01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "RootX_M_rotateY";
	rename -uid "A2691935-412A-13C5-93C2-F5B38F7CA142";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "RootX_M_rotateZ";
	rename -uid "0FAE483E-4AF7-3AA5-ED84-D7AE5FC97B57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "16A542D5-4F56-0D6B-FEBC-61A8026F0D1B";
	setAttr ".sst" -type "string" "";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9DDA55DF-4CF7-61EC-EC4C-B383EB84F51F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|:persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n"
		+ "                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "39AF091B-4512-99BC-0DC4-7B91B80981CE";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 30 -ast 1 -aet 30 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 20;
	setAttr ".unw" 20;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 31 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 28 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 12 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 3 ".sol";
connectAttr "FKShoulder_R_scaleX.o" "briar_v06RN.phl[1]";
connectAttr "FKShoulder_R_scaleY.o" "briar_v06RN.phl[2]";
connectAttr "FKShoulder_R_scaleZ.o" "briar_v06RN.phl[3]";
connectAttr "FKShoulder_R_rotateY.o" "briar_v06RN.phl[4]";
connectAttr "FKShoulder_R_rotateX.o" "briar_v06RN.phl[5]";
connectAttr "FKShoulder_R_rotateZ.o" "briar_v06RN.phl[6]";
connectAttr "FKShoulder_R_translateX.o" "briar_v06RN.phl[7]";
connectAttr "FKShoulder_R_translateY.o" "briar_v06RN.phl[8]";
connectAttr "FKShoulder_R_translateZ.o" "briar_v06RN.phl[9]";
connectAttr "FKElbow_R_scaleX.o" "briar_v06RN.phl[10]";
connectAttr "FKElbow_R_scaleY.o" "briar_v06RN.phl[11]";
connectAttr "FKElbow_R_scaleZ.o" "briar_v06RN.phl[12]";
connectAttr "FKElbow_R_rotateX.o" "briar_v06RN.phl[13]";
connectAttr "FKElbow_R_rotateY.o" "briar_v06RN.phl[14]";
connectAttr "FKElbow_R_rotateZ.o" "briar_v06RN.phl[15]";
connectAttr "FKElbow_R_translateX.o" "briar_v06RN.phl[16]";
connectAttr "FKElbow_R_translateY.o" "briar_v06RN.phl[17]";
connectAttr "FKElbow_R_translateZ.o" "briar_v06RN.phl[18]";
connectAttr "FKWrist_R_scaleX.o" "briar_v06RN.phl[19]";
connectAttr "FKWrist_R_scaleY.o" "briar_v06RN.phl[20]";
connectAttr "FKWrist_R_scaleZ.o" "briar_v06RN.phl[21]";
connectAttr "FKWrist_R_rotateX.o" "briar_v06RN.phl[22]";
connectAttr "FKWrist_R_rotateY.o" "briar_v06RN.phl[23]";
connectAttr "FKWrist_R_rotateZ.o" "briar_v06RN.phl[24]";
connectAttr "FKWrist_R_translateX.o" "briar_v06RN.phl[25]";
connectAttr "FKWrist_R_translateY.o" "briar_v06RN.phl[26]";
connectAttr "FKWrist_R_translateZ.o" "briar_v06RN.phl[27]";
connectAttr "FKShoulder_L_scaleX.o" "briar_v06RN.phl[28]";
connectAttr "FKShoulder_L_scaleY.o" "briar_v06RN.phl[29]";
connectAttr "FKShoulder_L_scaleZ.o" "briar_v06RN.phl[30]";
connectAttr "FKShoulder_L_rotateY.o" "briar_v06RN.phl[31]";
connectAttr "FKShoulder_L_rotateX.o" "briar_v06RN.phl[32]";
connectAttr "FKShoulder_L_rotateZ.o" "briar_v06RN.phl[33]";
connectAttr "FKShoulder_L_translateX.o" "briar_v06RN.phl[34]";
connectAttr "FKShoulder_L_translateY.o" "briar_v06RN.phl[35]";
connectAttr "FKShoulder_L_translateZ.o" "briar_v06RN.phl[36]";
connectAttr "FKElbow_L_scaleX.o" "briar_v06RN.phl[37]";
connectAttr "FKElbow_L_scaleY.o" "briar_v06RN.phl[38]";
connectAttr "FKElbow_L_scaleZ.o" "briar_v06RN.phl[39]";
connectAttr "FKElbow_L_rotateX.o" "briar_v06RN.phl[40]";
connectAttr "FKElbow_L_rotateY.o" "briar_v06RN.phl[41]";
connectAttr "FKElbow_L_rotateZ.o" "briar_v06RN.phl[42]";
connectAttr "FKElbow_L_translateX.o" "briar_v06RN.phl[43]";
connectAttr "FKElbow_L_translateY.o" "briar_v06RN.phl[44]";
connectAttr "FKElbow_L_translateZ.o" "briar_v06RN.phl[45]";
connectAttr "FKWrist_L_scaleX.o" "briar_v06RN.phl[46]";
connectAttr "FKWrist_L_scaleY.o" "briar_v06RN.phl[47]";
connectAttr "FKWrist_L_scaleZ.o" "briar_v06RN.phl[48]";
connectAttr "FKWrist_L_rotateX.o" "briar_v06RN.phl[49]";
connectAttr "FKWrist_L_rotateY.o" "briar_v06RN.phl[50]";
connectAttr "FKWrist_L_rotateZ.o" "briar_v06RN.phl[51]";
connectAttr "FKWrist_L_translateX.o" "briar_v06RN.phl[52]";
connectAttr "FKWrist_L_translateY.o" "briar_v06RN.phl[53]";
connectAttr "FKWrist_L_translateZ.o" "briar_v06RN.phl[54]";
connectAttr "IKLeg_R_scaleY.o" "briar_v06RN.phl[55]";
connectAttr "IKLeg_R_scaleZ.o" "briar_v06RN.phl[56]";
connectAttr "IKLeg_R_scaleX.o" "briar_v06RN.phl[57]";
connectAttr "IKLeg_R_followMain.o" "briar_v06RN.phl[58]";
connectAttr "IKLeg_R_followRoot.o" "briar_v06RN.phl[59]";
connectAttr "IKLeg_R_swivel.o" "briar_v06RN.phl[60]";
connectAttr "IKLeg_R_rock.o" "briar_v06RN.phl[61]";
connectAttr "IKLeg_R_roll.o" "briar_v06RN.phl[62]";
connectAttr "IKLeg_R_rollStartAngle.o" "briar_v06RN.phl[63]";
connectAttr "IKLeg_R_rollEndAngle.o" "briar_v06RN.phl[64]";
connectAttr "IKLeg_R_stretchy.o" "briar_v06RN.phl[65]";
connectAttr "IKLeg_R_antiPop.o" "briar_v06RN.phl[66]";
connectAttr "IKLeg_R_Lenght1.o" "briar_v06RN.phl[67]";
connectAttr "IKLeg_R_Lenght2.o" "briar_v06RN.phl[68]";
connectAttr "IKLeg_R_Fatness1.o" "briar_v06RN.phl[69]";
connectAttr "IKLeg_R_Fatness2.o" "briar_v06RN.phl[70]";
connectAttr "IKLeg_R_volume.o" "briar_v06RN.phl[71]";
connectAttr "IKLeg_R_translateY.o" "briar_v06RN.phl[72]";
connectAttr "IKLeg_R_translateX.o" "briar_v06RN.phl[73]";
connectAttr "IKLeg_R_translateZ.o" "briar_v06RN.phl[74]";
connectAttr "IKLeg_R_rotateY.o" "briar_v06RN.phl[75]";
connectAttr "IKLeg_R_rotateX.o" "briar_v06RN.phl[76]";
connectAttr "IKLeg_R_rotateZ.o" "briar_v06RN.phl[77]";
connectAttr "IKLeg_L_scaleY.o" "briar_v06RN.phl[78]";
connectAttr "IKLeg_L_scaleZ.o" "briar_v06RN.phl[79]";
connectAttr "IKLeg_L_scaleX.o" "briar_v06RN.phl[80]";
connectAttr "IKLeg_L_followMain.o" "briar_v06RN.phl[81]";
connectAttr "IKLeg_L_followRoot.o" "briar_v06RN.phl[82]";
connectAttr "IKLeg_L_swivel.o" "briar_v06RN.phl[83]";
connectAttr "IKLeg_L_rock.o" "briar_v06RN.phl[84]";
connectAttr "IKLeg_L_roll.o" "briar_v06RN.phl[85]";
connectAttr "IKLeg_L_rollStartAngle.o" "briar_v06RN.phl[86]";
connectAttr "IKLeg_L_rollEndAngle.o" "briar_v06RN.phl[87]";
connectAttr "IKLeg_L_stretchy.o" "briar_v06RN.phl[88]";
connectAttr "IKLeg_L_antiPop.o" "briar_v06RN.phl[89]";
connectAttr "IKLeg_L_Lenght1.o" "briar_v06RN.phl[90]";
connectAttr "IKLeg_L_Lenght2.o" "briar_v06RN.phl[91]";
connectAttr "IKLeg_L_Fatness1.o" "briar_v06RN.phl[92]";
connectAttr "IKLeg_L_Fatness2.o" "briar_v06RN.phl[93]";
connectAttr "IKLeg_L_volume.o" "briar_v06RN.phl[94]";
connectAttr "IKLeg_L_translateY.o" "briar_v06RN.phl[95]";
connectAttr "IKLeg_L_translateZ.o" "briar_v06RN.phl[96]";
connectAttr "IKLeg_L_translateX.o" "briar_v06RN.phl[97]";
connectAttr "IKLeg_L_rotateY.o" "briar_v06RN.phl[98]";
connectAttr "IKLeg_L_rotateX.o" "briar_v06RN.phl[99]";
connectAttr "IKLeg_L_rotateZ.o" "briar_v06RN.phl[100]";
connectAttr "RootX_M_translateY.o" "briar_v06RN.phl[101]";
connectAttr "RootX_M_translateX.o" "briar_v06RN.phl[102]";
connectAttr "RootX_M_translateZ.o" "briar_v06RN.phl[103]";
connectAttr "RootX_M_rotateX.o" "briar_v06RN.phl[104]";
connectAttr "RootX_M_rotateY.o" "briar_v06RN.phl[105]";
connectAttr "RootX_M_rotateZ.o" "briar_v06RN.phl[106]";
connectAttr "RootX_M_visibility.o" "briar_v06RN.phl[107]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of brairANIMS.ma

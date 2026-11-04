//Maya ASCII 2024 scene
//Name: brairANIMS.0002.ma
//Last modified: Fri, Oct 23, 2026 01:38:23 PM
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
fileInfo "UUID" "3378F2FA-42E4-D9AD-55DA-C08FDB924D2B";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "1CA20DA3-40FF-F168-1F44-6480EFA6CBB7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.9195046079853926 12.845563063845248 40.567226378339548 ;
	setAttr ".r" -type "double3" -5.7383527285303506 6.200000000000073 4.9988551737954525e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CBA2F00B-4A8A-8FB9-8571-DE841F4BB881";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 40.514529148149613;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.4400549888954712 0.08849206301771928 0.53512534161360437 ;
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
	setAttr ".t" -type "double3" -0.25944848876490767 7.0771655565787741 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C63B7393-4A95-9997-43FA-09BB54CD5A49";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 33.97510244219874;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "2C7EA034-483A-3D56-64E6-C2A7C36B7E00";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1000.3004685872604 8.374862101791928 1.256765913096582 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rpt" -type "double3" 1.1228422494393608e-15 0 3.9239921010877748e-14 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "61248F91-4606-7F8F-66E7-39B7AED3CE51";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 36.967138680494514;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -0.20046858726038863 7.3939296879804761 -0.36877922979093275 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B03BF7E4-40E9-0E46-F409-C99B63997A99";
	setAttr -s 31 ".lnk";
	setAttr -s 31 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "CA31EE77-4317-6446-7310-32AEB102D314";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C30A31B1-4B00-C93D-02D8-DD8FC23509ED";
createNode displayLayerManager -n "layerManager";
	rename -uid "CD5D28DD-49F9-2B03-F9DD-3B99329A7335";
createNode displayLayer -n "defaultLayer";
	rename -uid "5602E6C8-4919-3CF1-0745-FC89425277F9";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3D9CDDA5-464D-C8B7-4A19-58A2A045B5CA";
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
	setAttr -s 275 ".phl";
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
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"briar_v06RN"
		"briar_v06RN" 0
		"briar_v06:modelRN" 0
		"briar_v06RN" 297
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L" 
		"rotate" " -type \"double3\" 0 -1.12598771282246068 0"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L" 
		"rotate" " -type \"double3\" 0 -1.12598771282246068 0"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L" 
		"rotate" " -type \"double3\" 0 -1.12598771282246068 0"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L|briar_v06:FKXjoint5_L" 
		"rotate" " -type \"double3\" 0 -1.12598771282246068 0"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L|briar_v06:FKXjoint5_L|briar_v06:FKOffsetjoint6_L|briar_v06:FKExtrajoint6_L|briar_v06:FKjoint6_L|briar_v06:FKXjoint6_L|briar_v06:FKOffsetjoint7_L|briar_v06:FKExtrajoint7_L|briar_v06:FKjoint7_L|briar_v06:FKXjoint7_L" 
		"rotate" " -type \"double3\" 0 -1.12598771282246068 0"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToWrist_R|briar_v06:FKOffsetThumbFinger1_R|briar_v06:FKExtraThumbFinger1_R|briar_v06:FKThumbFinger1_R|briar_v06:FKXThumbFinger1_R|briar_v06:FKOffsetThumbFinger2_R|briar_v06:SDKFKThumbFinger2_R|briar_v06:FKExtraThumbFinger2_R|briar_v06:FKThumbFinger2_R" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKExtraRoot_M|briar_v06:FKRoot_M|briar_v06:HipSwingerOffset_M|briar_v06:HipSwinger_M" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R|briar_v06:IKLegFootRockInnerPivot_R|briar_v06:IKLegFootRockOuterPivot_R|briar_v06:RollOffsetHeel_R|briar_v06:RollRollerHeel_R|briar_v06:RollExtraHeel_R|briar_v06:RollHeel_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R|briar_v06:IKLegFootRockInnerPivot_R|briar_v06:IKLegFootRockOuterPivot_R|briar_v06:RollOffsetHeel_R|briar_v06:RollRollerHeel_R|briar_v06:RollExtraHeel_R|briar_v06:RollHeel_R" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L|briar_v06:IKLegFootRockInnerPivot_L|briar_v06:IKLegFootRockOuterPivot_L|briar_v06:RollOffsetHeel_L|briar_v06:RollRollerHeel_L|briar_v06:RollExtraHeel_L|briar_v06:RollHeel_L" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L|briar_v06:IKLegFootRockInnerPivot_L|briar_v06:IKLegFootRockOuterPivot_L|briar_v06:RollOffsetHeel_L|briar_v06:RollRollerHeel_L|briar_v06:RollExtraHeel_L|briar_v06:RollHeel_L|briar_v06:RollOffsetToesEnd_L|briar_v06:RollRollerToesEnd_L|briar_v06:RollExtraToesEnd_L|briar_v06:RollToesEnd_L" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKPoleVector|briar_v06:PoleOffsetLeg_L|briar_v06:PoleExtraLeg_L|briar_v06:PoleLeg_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:Aimcontrols|briar_v06:AimEyeFollow_M|briar_v06:AimEyeOffset_M|briar_v06:AimEye_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxCheek_R|briar_v06:ctrlCheek_R" 
		"translateX" " 0"
		2 "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxCheek_R|briar_v06:ctrlCheek_R" 
		"translateY" " 0"
		2 "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxCheek_L|briar_v06:ctrlCheek_L" 
		"translateX" " 0"
		2 "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxCheek_L|briar_v06:ctrlCheek_L" 
		"translateY" " 0"
		2 "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxNose_R|briar_v06:ctrlNose_R" 
		"translateX" " 0"
		2 "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxNose_R|briar_v06:ctrlNose_R" 
		"translateY" " 0"
		2 "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxNose_L|briar_v06:ctrlNose_L" 
		"translateX" " 0"
		2 "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxNose_L|briar_v06:ctrlNose_L" 
		"translateY" " 0"
		2 "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxMouthCorner_R|briar_v06:ctrlMouthCorner_R" 
		"translateY" " 0"
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M.scaleX" 
		"briar_v06RN.placeHolderList[1]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M.scaleY" 
		"briar_v06RN.placeHolderList[2]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M.scaleZ" 
		"briar_v06RN.placeHolderList[3]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M.Global" 
		"briar_v06RN.placeHolderList[4]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M.rotateZ" 
		"briar_v06RN.placeHolderList[5]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M.rotateY" 
		"briar_v06RN.placeHolderList[6]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M.rotateX" 
		"briar_v06RN.placeHolderList[7]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M.translateX" 
		"briar_v06RN.placeHolderList[8]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M.translateY" 
		"briar_v06RN.placeHolderList[9]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M.translateZ" 
		"briar_v06RN.placeHolderList[10]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L.scaleX" 
		"briar_v06RN.placeHolderList[11]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L.scaleY" 
		"briar_v06RN.placeHolderList[12]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L.scaleZ" 
		"briar_v06RN.placeHolderList[13]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L.rotateY" 
		"briar_v06RN.placeHolderList[14]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L.rotateX" 
		"briar_v06RN.placeHolderList[15]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L.rotateZ" 
		"briar_v06RN.placeHolderList[16]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L.translateX" 
		"briar_v06RN.placeHolderList[17]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L.translateY" 
		"briar_v06RN.placeHolderList[18]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L.translateZ" 
		"briar_v06RN.placeHolderList[19]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L.rotateY" 
		"briar_v06RN.placeHolderList[20]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L.scaleX" 
		"briar_v06RN.placeHolderList[21]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L.scaleY" 
		"briar_v06RN.placeHolderList[22]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L.scaleZ" 
		"briar_v06RN.placeHolderList[23]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L.rotateY" 
		"briar_v06RN.placeHolderList[24]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L.rotateX" 
		"briar_v06RN.placeHolderList[25]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L.rotateZ" 
		"briar_v06RN.placeHolderList[26]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L.translateX" 
		"briar_v06RN.placeHolderList[27]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L.translateY" 
		"briar_v06RN.placeHolderList[28]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L.translateZ" 
		"briar_v06RN.placeHolderList[29]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L.rotateY" 
		"briar_v06RN.placeHolderList[30]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L.scaleX" 
		"briar_v06RN.placeHolderList[31]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L.scaleY" 
		"briar_v06RN.placeHolderList[32]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L.scaleZ" 
		"briar_v06RN.placeHolderList[33]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L.rotateY" 
		"briar_v06RN.placeHolderList[34]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L.rotateX" 
		"briar_v06RN.placeHolderList[35]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L.rotateZ" 
		"briar_v06RN.placeHolderList[36]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L.translateX" 
		"briar_v06RN.placeHolderList[37]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L.translateY" 
		"briar_v06RN.placeHolderList[38]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L.translateZ" 
		"briar_v06RN.placeHolderList[39]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L.rotateY" 
		"briar_v06RN.placeHolderList[40]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L.scaleX" 
		"briar_v06RN.placeHolderList[41]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L.scaleY" 
		"briar_v06RN.placeHolderList[42]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L.scaleZ" 
		"briar_v06RN.placeHolderList[43]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L.rotateY" 
		"briar_v06RN.placeHolderList[44]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L.rotateX" 
		"briar_v06RN.placeHolderList[45]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L.rotateZ" 
		"briar_v06RN.placeHolderList[46]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L.translateX" 
		"briar_v06RN.placeHolderList[47]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L.translateY" 
		"briar_v06RN.placeHolderList[48]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L.translateZ" 
		"briar_v06RN.placeHolderList[49]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L|briar_v06:FKXjoint5_L.rotateY" 
		"briar_v06RN.placeHolderList[50]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L|briar_v06:FKXjoint5_L|briar_v06:FKOffsetjoint6_L|briar_v06:FKExtrajoint6_L|briar_v06:FKjoint6_L|briar_v06:FKXjoint6_L|briar_v06:FKOffsetjoint7_L|briar_v06:FKExtrajoint7_L|briar_v06:FKjoint7_L.scaleX" 
		"briar_v06RN.placeHolderList[51]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L|briar_v06:FKXjoint5_L|briar_v06:FKOffsetjoint6_L|briar_v06:FKExtrajoint6_L|briar_v06:FKjoint6_L|briar_v06:FKXjoint6_L|briar_v06:FKOffsetjoint7_L|briar_v06:FKExtrajoint7_L|briar_v06:FKjoint7_L.scaleY" 
		"briar_v06RN.placeHolderList[52]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L|briar_v06:FKXjoint5_L|briar_v06:FKOffsetjoint6_L|briar_v06:FKExtrajoint6_L|briar_v06:FKjoint6_L|briar_v06:FKXjoint6_L|briar_v06:FKOffsetjoint7_L|briar_v06:FKExtrajoint7_L|briar_v06:FKjoint7_L.scaleZ" 
		"briar_v06RN.placeHolderList[53]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L|briar_v06:FKXjoint5_L|briar_v06:FKOffsetjoint6_L|briar_v06:FKExtrajoint6_L|briar_v06:FKjoint6_L|briar_v06:FKXjoint6_L|briar_v06:FKOffsetjoint7_L|briar_v06:FKExtrajoint7_L|briar_v06:FKjoint7_L.rotateY" 
		"briar_v06RN.placeHolderList[54]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L|briar_v06:FKXjoint5_L|briar_v06:FKOffsetjoint6_L|briar_v06:FKExtrajoint6_L|briar_v06:FKjoint6_L|briar_v06:FKXjoint6_L|briar_v06:FKOffsetjoint7_L|briar_v06:FKExtrajoint7_L|briar_v06:FKjoint7_L.rotateX" 
		"briar_v06RN.placeHolderList[55]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L|briar_v06:FKXjoint5_L|briar_v06:FKOffsetjoint6_L|briar_v06:FKExtrajoint6_L|briar_v06:FKjoint6_L|briar_v06:FKXjoint6_L|briar_v06:FKOffsetjoint7_L|briar_v06:FKExtrajoint7_L|briar_v06:FKjoint7_L.rotateZ" 
		"briar_v06RN.placeHolderList[56]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L|briar_v06:FKXjoint5_L|briar_v06:FKOffsetjoint6_L|briar_v06:FKExtrajoint6_L|briar_v06:FKjoint6_L|briar_v06:FKXjoint6_L|briar_v06:FKOffsetjoint7_L|briar_v06:FKExtrajoint7_L|briar_v06:FKjoint7_L.translateX" 
		"briar_v06RN.placeHolderList[57]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L|briar_v06:FKXjoint5_L|briar_v06:FKOffsetjoint6_L|briar_v06:FKExtrajoint6_L|briar_v06:FKjoint6_L|briar_v06:FKXjoint6_L|briar_v06:FKOffsetjoint7_L|briar_v06:FKExtrajoint7_L|briar_v06:FKjoint7_L.translateY" 
		"briar_v06RN.placeHolderList[58]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L|briar_v06:FKXjoint5_L|briar_v06:FKOffsetjoint6_L|briar_v06:FKExtrajoint6_L|briar_v06:FKjoint6_L|briar_v06:FKXjoint6_L|briar_v06:FKOffsetjoint7_L|briar_v06:FKExtrajoint7_L|briar_v06:FKjoint7_L.translateZ" 
		"briar_v06RN.placeHolderList[59]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetNeck_M|briar_v06:FKXNeck_M|briar_v06:FKOffsetNeckPart1_M|briar_v06:FKExtraNeckPart1_M|briar_v06:FKNeckPart1_M|briar_v06:FKXNeckPart1_M|briar_v06:FKOffsetNeckPart2_M|briar_v06:FKExtraNeckPart2_M|briar_v06:FKNeckPart2_M|briar_v06:FKXNeckPart2_M|briar_v06:FKOffsetHead_M|briar_v06:FKGlobalHead_M|briar_v06:FKExtraHead_M|briar_v06:FKHead_M|briar_v06:FKXHead_M|briar_v06:FKOffsetjoint1_M|briar_v06:FKExtrajoint1_M|briar_v06:FKjoint1_M|briar_v06:FKXjoint1_M|briar_v06:FKOffsetjoint2_L|briar_v06:FKExtrajoint2_L|briar_v06:FKjoint2_L|briar_v06:FKXjoint2_L|briar_v06:FKOffsetjoint3_L|briar_v06:FKExtrajoint3_L|briar_v06:FKjoint3_L|briar_v06:FKXjoint3_L|briar_v06:FKOffsetjoint4_L|briar_v06:FKExtrajoint4_L|briar_v06:FKjoint4_L|briar_v06:FKXjoint4_L|briar_v06:FKOffsetjoint5_L|briar_v06:FKExtrajoint5_L|briar_v06:FKjoint5_L|briar_v06:FKXjoint5_L|briar_v06:FKOffsetjoint6_L|briar_v06:FKExtrajoint6_L|briar_v06:FKjoint6_L|briar_v06:FKXjoint6_L|briar_v06:FKOffsetjoint7_L|briar_v06:FKExtrajoint7_L|briar_v06:FKjoint7_L|briar_v06:FKXjoint7_L.rotateY" 
		"briar_v06RN.placeHolderList[60]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R.scaleX" 
		"briar_v06RN.placeHolderList[61]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R.scaleY" 
		"briar_v06RN.placeHolderList[62]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R.scaleZ" 
		"briar_v06RN.placeHolderList[63]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R.rotateX" 
		"briar_v06RN.placeHolderList[64]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R.rotateY" 
		"briar_v06RN.placeHolderList[65]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R.rotateZ" 
		"briar_v06RN.placeHolderList[66]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R.translateX" 
		"briar_v06RN.placeHolderList[67]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R.translateY" 
		"briar_v06RN.placeHolderList[68]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R.translateZ" 
		"briar_v06RN.placeHolderList[69]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R.scaleX" 
		"briar_v06RN.placeHolderList[70]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R.scaleY" 
		"briar_v06RN.placeHolderList[71]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R.scaleZ" 
		"briar_v06RN.placeHolderList[72]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R.rotateY" 
		"briar_v06RN.placeHolderList[73]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R.rotateX" 
		"briar_v06RN.placeHolderList[74]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R.rotateZ" 
		"briar_v06RN.placeHolderList[75]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R.translateX" 
		"briar_v06RN.placeHolderList[76]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R.translateY" 
		"briar_v06RN.placeHolderList[77]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R.translateZ" 
		"briar_v06RN.placeHolderList[78]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R.scaleX" 
		"briar_v06RN.placeHolderList[79]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R.scaleY" 
		"briar_v06RN.placeHolderList[80]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R.scaleZ" 
		"briar_v06RN.placeHolderList[81]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R.rotateX" 
		"briar_v06RN.placeHolderList[82]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R.rotateY" 
		"briar_v06RN.placeHolderList[83]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R.rotateZ" 
		"briar_v06RN.placeHolderList[84]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R.translateX" 
		"briar_v06RN.placeHolderList[85]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R.translateY" 
		"briar_v06RN.placeHolderList[86]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R.translateZ" 
		"briar_v06RN.placeHolderList[87]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R|briar_v06:FKXElbow_R|briar_v06:FKOffsetWrist_R|briar_v06:FKExtraWrist_R|briar_v06:FKWrist_R.scaleX" 
		"briar_v06RN.placeHolderList[88]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R|briar_v06:FKXElbow_R|briar_v06:FKOffsetWrist_R|briar_v06:FKExtraWrist_R|briar_v06:FKWrist_R.scaleY" 
		"briar_v06RN.placeHolderList[89]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R|briar_v06:FKXElbow_R|briar_v06:FKOffsetWrist_R|briar_v06:FKExtraWrist_R|briar_v06:FKWrist_R.scaleZ" 
		"briar_v06RN.placeHolderList[90]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R|briar_v06:FKXElbow_R|briar_v06:FKOffsetWrist_R|briar_v06:FKExtraWrist_R|briar_v06:FKWrist_R.rotateX" 
		"briar_v06RN.placeHolderList[91]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R|briar_v06:FKXElbow_R|briar_v06:FKOffsetWrist_R|briar_v06:FKExtraWrist_R|briar_v06:FKWrist_R.rotateY" 
		"briar_v06RN.placeHolderList[92]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R|briar_v06:FKXElbow_R|briar_v06:FKOffsetWrist_R|briar_v06:FKExtraWrist_R|briar_v06:FKWrist_R.rotateZ" 
		"briar_v06RN.placeHolderList[93]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R|briar_v06:FKXElbow_R|briar_v06:FKOffsetWrist_R|briar_v06:FKExtraWrist_R|briar_v06:FKWrist_R.translateX" 
		"briar_v06RN.placeHolderList[94]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R|briar_v06:FKXElbow_R|briar_v06:FKOffsetWrist_R|briar_v06:FKExtraWrist_R|briar_v06:FKWrist_R.translateY" 
		"briar_v06RN.placeHolderList[95]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_R|briar_v06:FKExtraScapula_R|briar_v06:FKScapula_R|briar_v06:FKXScapula_R|briar_v06:FKOffsetShoulder_R|briar_v06:FKExtraShoulder_R|briar_v06:FKShoulder_R|briar_v06:FKXShoulder_R|briar_v06:FKOffsetElbow_R|briar_v06:FKExtraElbow_R|briar_v06:FKElbow_R|briar_v06:FKXElbow_R|briar_v06:FKOffsetWrist_R|briar_v06:FKExtraWrist_R|briar_v06:FKWrist_R.translateZ" 
		"briar_v06RN.placeHolderList[96]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L.scaleX" 
		"briar_v06RN.placeHolderList[97]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L.scaleY" 
		"briar_v06RN.placeHolderList[98]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L.scaleZ" 
		"briar_v06RN.placeHolderList[99]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L.rotateX" 
		"briar_v06RN.placeHolderList[100]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L.rotateY" 
		"briar_v06RN.placeHolderList[101]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L.rotateZ" 
		"briar_v06RN.placeHolderList[102]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L.translateX" 
		"briar_v06RN.placeHolderList[103]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L.translateY" 
		"briar_v06RN.placeHolderList[104]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L.translateZ" 
		"briar_v06RN.placeHolderList[105]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L.scaleX" 
		"briar_v06RN.placeHolderList[106]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L.scaleY" 
		"briar_v06RN.placeHolderList[107]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L.scaleZ" 
		"briar_v06RN.placeHolderList[108]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L.rotateY" 
		"briar_v06RN.placeHolderList[109]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L.rotateX" 
		"briar_v06RN.placeHolderList[110]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L.rotateZ" 
		"briar_v06RN.placeHolderList[111]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L.translateX" 
		"briar_v06RN.placeHolderList[112]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L.translateY" 
		"briar_v06RN.placeHolderList[113]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L.translateZ" 
		"briar_v06RN.placeHolderList[114]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L.scaleX" 
		"briar_v06RN.placeHolderList[115]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L.scaleY" 
		"briar_v06RN.placeHolderList[116]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L.scaleZ" 
		"briar_v06RN.placeHolderList[117]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L.rotateX" 
		"briar_v06RN.placeHolderList[118]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L.rotateY" 
		"briar_v06RN.placeHolderList[119]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L.rotateZ" 
		"briar_v06RN.placeHolderList[120]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L.translateX" 
		"briar_v06RN.placeHolderList[121]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L.translateY" 
		"briar_v06RN.placeHolderList[122]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L.translateZ" 
		"briar_v06RN.placeHolderList[123]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L|briar_v06:FKXElbow_L|briar_v06:FKOffsetWrist_L|briar_v06:FKExtraWrist_L|briar_v06:FKWrist_L.scaleX" 
		"briar_v06RN.placeHolderList[124]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L|briar_v06:FKXElbow_L|briar_v06:FKOffsetWrist_L|briar_v06:FKExtraWrist_L|briar_v06:FKWrist_L.scaleY" 
		"briar_v06RN.placeHolderList[125]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L|briar_v06:FKXElbow_L|briar_v06:FKOffsetWrist_L|briar_v06:FKExtraWrist_L|briar_v06:FKWrist_L.scaleZ" 
		"briar_v06RN.placeHolderList[126]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L|briar_v06:FKXElbow_L|briar_v06:FKOffsetWrist_L|briar_v06:FKExtraWrist_L|briar_v06:FKWrist_L.rotateX" 
		"briar_v06RN.placeHolderList[127]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L|briar_v06:FKXElbow_L|briar_v06:FKOffsetWrist_L|briar_v06:FKExtraWrist_L|briar_v06:FKWrist_L.rotateY" 
		"briar_v06RN.placeHolderList[128]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L|briar_v06:FKXElbow_L|briar_v06:FKOffsetWrist_L|briar_v06:FKExtraWrist_L|briar_v06:FKWrist_L.rotateZ" 
		"briar_v06RN.placeHolderList[129]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L|briar_v06:FKXElbow_L|briar_v06:FKOffsetWrist_L|briar_v06:FKExtraWrist_L|briar_v06:FKWrist_L.translateX" 
		"briar_v06RN.placeHolderList[130]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L|briar_v06:FKXElbow_L|briar_v06:FKOffsetWrist_L|briar_v06:FKExtraWrist_L|briar_v06:FKWrist_L.translateY" 
		"briar_v06RN.placeHolderList[131]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKParentConstraintToChest_M|briar_v06:FKOffsetScapula_L|briar_v06:FKExtraScapula_L|briar_v06:FKScapula_L|briar_v06:FKXScapula_L|briar_v06:FKOffsetShoulder_L|briar_v06:FKExtraShoulder_L|briar_v06:FKShoulder_L|briar_v06:FKXShoulder_L|briar_v06:FKOffsetElbow_L|briar_v06:FKExtraElbow_L|briar_v06:FKElbow_L|briar_v06:FKXElbow_L|briar_v06:FKOffsetWrist_L|briar_v06:FKExtraWrist_L|briar_v06:FKWrist_L.translateZ" 
		"briar_v06RN.placeHolderList[132]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKExtraRoot_M|briar_v06:FKRoot_M.scaleX" 
		"briar_v06RN.placeHolderList[133]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKExtraRoot_M|briar_v06:FKRoot_M.scaleY" 
		"briar_v06RN.placeHolderList[134]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKExtraRoot_M|briar_v06:FKRoot_M.scaleZ" 
		"briar_v06RN.placeHolderList[135]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKExtraRoot_M|briar_v06:FKRoot_M.rotateX" 
		"briar_v06RN.placeHolderList[136]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKExtraRoot_M|briar_v06:FKRoot_M.rotateY" 
		"briar_v06RN.placeHolderList[137]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKExtraRoot_M|briar_v06:FKRoot_M.rotateZ" 
		"briar_v06RN.placeHolderList[138]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKExtraRoot_M|briar_v06:FKRoot_M.translateX" 
		"briar_v06RN.placeHolderList[139]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKExtraRoot_M|briar_v06:FKRoot_M.translateY" 
		"briar_v06RN.placeHolderList[140]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKExtraRoot_M|briar_v06:FKRoot_M.translateZ" 
		"briar_v06RN.placeHolderList[141]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKXRoot_M|briar_v06:FKOffsetRootPart1_M|briar_v06:FKExtraRootPart1_M|briar_v06:FKRootPart1_M|briar_v06:FKXRootPart1_M|briar_v06:FKOffsetRootPart2_M|briar_v06:FKExtraRootPart2_M|briar_v06:FKRootPart2_M|briar_v06:FKXRootPart2_M|briar_v06:FKOffsetSpine1_M|briar_v06:FKExtraSpine1_M|briar_v06:FKSpine1_M.scaleX" 
		"briar_v06RN.placeHolderList[142]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKXRoot_M|briar_v06:FKOffsetRootPart1_M|briar_v06:FKExtraRootPart1_M|briar_v06:FKRootPart1_M|briar_v06:FKXRootPart1_M|briar_v06:FKOffsetRootPart2_M|briar_v06:FKExtraRootPart2_M|briar_v06:FKRootPart2_M|briar_v06:FKXRootPart2_M|briar_v06:FKOffsetSpine1_M|briar_v06:FKExtraSpine1_M|briar_v06:FKSpine1_M.scaleY" 
		"briar_v06RN.placeHolderList[143]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKXRoot_M|briar_v06:FKOffsetRootPart1_M|briar_v06:FKExtraRootPart1_M|briar_v06:FKRootPart1_M|briar_v06:FKXRootPart1_M|briar_v06:FKOffsetRootPart2_M|briar_v06:FKExtraRootPart2_M|briar_v06:FKRootPart2_M|briar_v06:FKXRootPart2_M|briar_v06:FKOffsetSpine1_M|briar_v06:FKExtraSpine1_M|briar_v06:FKSpine1_M.scaleZ" 
		"briar_v06RN.placeHolderList[144]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKXRoot_M|briar_v06:FKOffsetRootPart1_M|briar_v06:FKExtraRootPart1_M|briar_v06:FKRootPart1_M|briar_v06:FKXRootPart1_M|briar_v06:FKOffsetRootPart2_M|briar_v06:FKExtraRootPart2_M|briar_v06:FKRootPart2_M|briar_v06:FKXRootPart2_M|briar_v06:FKOffsetSpine1_M|briar_v06:FKExtraSpine1_M|briar_v06:FKSpine1_M.rotateX" 
		"briar_v06RN.placeHolderList[145]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKXRoot_M|briar_v06:FKOffsetRootPart1_M|briar_v06:FKExtraRootPart1_M|briar_v06:FKRootPart1_M|briar_v06:FKXRootPart1_M|briar_v06:FKOffsetRootPart2_M|briar_v06:FKExtraRootPart2_M|briar_v06:FKRootPart2_M|briar_v06:FKXRootPart2_M|briar_v06:FKOffsetSpine1_M|briar_v06:FKExtraSpine1_M|briar_v06:FKSpine1_M.rotateY" 
		"briar_v06RN.placeHolderList[146]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKXRoot_M|briar_v06:FKOffsetRootPart1_M|briar_v06:FKExtraRootPart1_M|briar_v06:FKRootPart1_M|briar_v06:FKXRootPart1_M|briar_v06:FKOffsetRootPart2_M|briar_v06:FKExtraRootPart2_M|briar_v06:FKRootPart2_M|briar_v06:FKXRootPart2_M|briar_v06:FKOffsetSpine1_M|briar_v06:FKExtraSpine1_M|briar_v06:FKSpine1_M.rotateZ" 
		"briar_v06RN.placeHolderList[147]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKXRoot_M|briar_v06:FKOffsetRootPart1_M|briar_v06:FKExtraRootPart1_M|briar_v06:FKRootPart1_M|briar_v06:FKXRootPart1_M|briar_v06:FKOffsetRootPart2_M|briar_v06:FKExtraRootPart2_M|briar_v06:FKRootPart2_M|briar_v06:FKXRootPart2_M|briar_v06:FKOffsetSpine1_M|briar_v06:FKExtraSpine1_M|briar_v06:FKSpine1_M.translateX" 
		"briar_v06RN.placeHolderList[148]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKXRoot_M|briar_v06:FKOffsetRootPart1_M|briar_v06:FKExtraRootPart1_M|briar_v06:FKRootPart1_M|briar_v06:FKXRootPart1_M|briar_v06:FKOffsetRootPart2_M|briar_v06:FKExtraRootPart2_M|briar_v06:FKRootPart2_M|briar_v06:FKXRootPart2_M|briar_v06:FKOffsetSpine1_M|briar_v06:FKExtraSpine1_M|briar_v06:FKSpine1_M.translateY" 
		"briar_v06RN.placeHolderList[149]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKXRoot_M|briar_v06:FKOffsetRootPart1_M|briar_v06:FKExtraRootPart1_M|briar_v06:FKRootPart1_M|briar_v06:FKXRootPart1_M|briar_v06:FKOffsetRootPart2_M|briar_v06:FKExtraRootPart2_M|briar_v06:FKRootPart2_M|briar_v06:FKXRootPart2_M|briar_v06:FKOffsetSpine1_M|briar_v06:FKExtraSpine1_M|briar_v06:FKSpine1_M.translateZ" 
		"briar_v06RN.placeHolderList[150]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKXRoot_M|briar_v06:FKOffsetRootPart1_M|briar_v06:FKExtraRootPart1_M|briar_v06:FKRootPart1_M|briar_v06:FKXRootPart1_M|briar_v06:FKOffsetRootPart2_M|briar_v06:FKExtraRootPart2_M|briar_v06:FKRootPart2_M|briar_v06:FKXRootPart2_M|briar_v06:FKOffsetSpine1_M|briar_v06:FKXSpine1_M|briar_v06:FKOffsetSpine1Part1_M|briar_v06:FKExtraSpine1Part1_M|briar_v06:FKSpine1Part1_M|briar_v06:FKXSpine1Part1_M|briar_v06:FKOffsetSpine1Part2_M|briar_v06:FKExtraSpine1Part2_M|briar_v06:FKSpine1Part2_M|briar_v06:FKXSpine1Part2_M|briar_v06:FKOffsetChest_M|briar_v06:FKExtraChest_M|briar_v06:FKChest_M.scaleX" 
		"briar_v06RN.placeHolderList[151]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKXRoot_M|briar_v06:FKOffsetRootPart1_M|briar_v06:FKExtraRootPart1_M|briar_v06:FKRootPart1_M|briar_v06:FKXRootPart1_M|briar_v06:FKOffsetRootPart2_M|briar_v06:FKExtraRootPart2_M|briar_v06:FKRootPart2_M|briar_v06:FKXRootPart2_M|briar_v06:FKOffsetSpine1_M|briar_v06:FKXSpine1_M|briar_v06:FKOffsetSpine1Part1_M|briar_v06:FKExtraSpine1Part1_M|briar_v06:FKSpine1Part1_M|briar_v06:FKXSpine1Part1_M|briar_v06:FKOffsetSpine1Part2_M|briar_v06:FKExtraSpine1Part2_M|briar_v06:FKSpine1Part2_M|briar_v06:FKXSpine1Part2_M|briar_v06:FKOffsetChest_M|briar_v06:FKExtraChest_M|briar_v06:FKChest_M.scaleY" 
		"briar_v06RN.placeHolderList[152]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKXRoot_M|briar_v06:FKOffsetRootPart1_M|briar_v06:FKExtraRootPart1_M|briar_v06:FKRootPart1_M|briar_v06:FKXRootPart1_M|briar_v06:FKOffsetRootPart2_M|briar_v06:FKExtraRootPart2_M|briar_v06:FKRootPart2_M|briar_v06:FKXRootPart2_M|briar_v06:FKOffsetSpine1_M|briar_v06:FKXSpine1_M|briar_v06:FKOffsetSpine1Part1_M|briar_v06:FKExtraSpine1Part1_M|briar_v06:FKSpine1Part1_M|briar_v06:FKXSpine1Part1_M|briar_v06:FKOffsetSpine1Part2_M|briar_v06:FKExtraSpine1Part2_M|briar_v06:FKSpine1Part2_M|briar_v06:FKXSpine1Part2_M|briar_v06:FKOffsetChest_M|briar_v06:FKExtraChest_M|briar_v06:FKChest_M.scaleZ" 
		"briar_v06RN.placeHolderList[153]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKXRoot_M|briar_v06:FKOffsetRootPart1_M|briar_v06:FKExtraRootPart1_M|briar_v06:FKRootPart1_M|briar_v06:FKXRootPart1_M|briar_v06:FKOffsetRootPart2_M|briar_v06:FKExtraRootPart2_M|briar_v06:FKRootPart2_M|briar_v06:FKXRootPart2_M|briar_v06:FKOffsetSpine1_M|briar_v06:FKXSpine1_M|briar_v06:FKOffsetSpine1Part1_M|briar_v06:FKExtraSpine1Part1_M|briar_v06:FKSpine1Part1_M|briar_v06:FKXSpine1Part1_M|briar_v06:FKOffsetSpine1Part2_M|briar_v06:FKExtraSpine1Part2_M|briar_v06:FKSpine1Part2_M|briar_v06:FKXSpine1Part2_M|briar_v06:FKOffsetChest_M|briar_v06:FKExtraChest_M|briar_v06:FKChest_M.rotateX" 
		"briar_v06RN.placeHolderList[154]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKXRoot_M|briar_v06:FKOffsetRootPart1_M|briar_v06:FKExtraRootPart1_M|briar_v06:FKRootPart1_M|briar_v06:FKXRootPart1_M|briar_v06:FKOffsetRootPart2_M|briar_v06:FKExtraRootPart2_M|briar_v06:FKRootPart2_M|briar_v06:FKXRootPart2_M|briar_v06:FKOffsetSpine1_M|briar_v06:FKXSpine1_M|briar_v06:FKOffsetSpine1Part1_M|briar_v06:FKExtraSpine1Part1_M|briar_v06:FKSpine1Part1_M|briar_v06:FKXSpine1Part1_M|briar_v06:FKOffsetSpine1Part2_M|briar_v06:FKExtraSpine1Part2_M|briar_v06:FKSpine1Part2_M|briar_v06:FKXSpine1Part2_M|briar_v06:FKOffsetChest_M|briar_v06:FKExtraChest_M|briar_v06:FKChest_M.rotateY" 
		"briar_v06RN.placeHolderList[155]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKXRoot_M|briar_v06:FKOffsetRootPart1_M|briar_v06:FKExtraRootPart1_M|briar_v06:FKRootPart1_M|briar_v06:FKXRootPart1_M|briar_v06:FKOffsetRootPart2_M|briar_v06:FKExtraRootPart2_M|briar_v06:FKRootPart2_M|briar_v06:FKXRootPart2_M|briar_v06:FKOffsetSpine1_M|briar_v06:FKXSpine1_M|briar_v06:FKOffsetSpine1Part1_M|briar_v06:FKExtraSpine1Part1_M|briar_v06:FKSpine1Part1_M|briar_v06:FKXSpine1Part1_M|briar_v06:FKOffsetSpine1Part2_M|briar_v06:FKExtraSpine1Part2_M|briar_v06:FKSpine1Part2_M|briar_v06:FKXSpine1Part2_M|briar_v06:FKOffsetChest_M|briar_v06:FKExtraChest_M|briar_v06:FKChest_M.rotateZ" 
		"briar_v06RN.placeHolderList[156]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKXRoot_M|briar_v06:FKOffsetRootPart1_M|briar_v06:FKExtraRootPart1_M|briar_v06:FKRootPart1_M|briar_v06:FKXRootPart1_M|briar_v06:FKOffsetRootPart2_M|briar_v06:FKExtraRootPart2_M|briar_v06:FKRootPart2_M|briar_v06:FKXRootPart2_M|briar_v06:FKOffsetSpine1_M|briar_v06:FKXSpine1_M|briar_v06:FKOffsetSpine1Part1_M|briar_v06:FKExtraSpine1Part1_M|briar_v06:FKSpine1Part1_M|briar_v06:FKXSpine1Part1_M|briar_v06:FKOffsetSpine1Part2_M|briar_v06:FKExtraSpine1Part2_M|briar_v06:FKSpine1Part2_M|briar_v06:FKXSpine1Part2_M|briar_v06:FKOffsetChest_M|briar_v06:FKExtraChest_M|briar_v06:FKChest_M.translateX" 
		"briar_v06RN.placeHolderList[157]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKXRoot_M|briar_v06:FKOffsetRootPart1_M|briar_v06:FKExtraRootPart1_M|briar_v06:FKRootPart1_M|briar_v06:FKXRootPart1_M|briar_v06:FKOffsetRootPart2_M|briar_v06:FKExtraRootPart2_M|briar_v06:FKRootPart2_M|briar_v06:FKXRootPart2_M|briar_v06:FKOffsetSpine1_M|briar_v06:FKXSpine1_M|briar_v06:FKOffsetSpine1Part1_M|briar_v06:FKExtraSpine1Part1_M|briar_v06:FKSpine1Part1_M|briar_v06:FKXSpine1Part1_M|briar_v06:FKOffsetSpine1Part2_M|briar_v06:FKExtraSpine1Part2_M|briar_v06:FKSpine1Part2_M|briar_v06:FKXSpine1Part2_M|briar_v06:FKOffsetChest_M|briar_v06:FKExtraChest_M|briar_v06:FKChest_M.translateY" 
		"briar_v06RN.placeHolderList[158]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:FKSystem|briar_v06:FKOffsetRoot_M|briar_v06:FKXRoot_M|briar_v06:FKOffsetRootPart1_M|briar_v06:FKExtraRootPart1_M|briar_v06:FKRootPart1_M|briar_v06:FKXRootPart1_M|briar_v06:FKOffsetRootPart2_M|briar_v06:FKExtraRootPart2_M|briar_v06:FKRootPart2_M|briar_v06:FKXRootPart2_M|briar_v06:FKOffsetSpine1_M|briar_v06:FKXSpine1_M|briar_v06:FKOffsetSpine1Part1_M|briar_v06:FKExtraSpine1Part1_M|briar_v06:FKSpine1Part1_M|briar_v06:FKXSpine1Part1_M|briar_v06:FKOffsetSpine1Part2_M|briar_v06:FKExtraSpine1Part2_M|briar_v06:FKSpine1Part2_M|briar_v06:FKXSpine1Part2_M|briar_v06:FKOffsetChest_M|briar_v06:FKExtraChest_M|briar_v06:FKChest_M.translateZ" 
		"briar_v06RN.placeHolderList[159]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.scaleY" 
		"briar_v06RN.placeHolderList[160]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.scaleZ" 
		"briar_v06RN.placeHolderList[161]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.scaleX" 
		"briar_v06RN.placeHolderList[162]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.followMain" 
		"briar_v06RN.placeHolderList[163]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.followRoot" 
		"briar_v06RN.placeHolderList[164]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.swivel" 
		"briar_v06RN.placeHolderList[165]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.rock" 
		"briar_v06RN.placeHolderList[166]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.roll" 
		"briar_v06RN.placeHolderList[167]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.rollStartAngle" 
		"briar_v06RN.placeHolderList[168]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.rollEndAngle" 
		"briar_v06RN.placeHolderList[169]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.stretchy" 
		"briar_v06RN.placeHolderList[170]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.antiPop" 
		"briar_v06RN.placeHolderList[171]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.Lenght1" 
		"briar_v06RN.placeHolderList[172]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.Lenght2" 
		"briar_v06RN.placeHolderList[173]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.Fatness1" 
		"briar_v06RN.placeHolderList[174]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.Fatness2" 
		"briar_v06RN.placeHolderList[175]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.volume" 
		"briar_v06RN.placeHolderList[176]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.translateY" 
		"briar_v06RN.placeHolderList[177]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.translateX" 
		"briar_v06RN.placeHolderList[178]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.translateZ" 
		"briar_v06RN.placeHolderList[179]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.rotateY" 
		"briar_v06RN.placeHolderList[180]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.rotateX" 
		"briar_v06RN.placeHolderList[181]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R.rotateZ" 
		"briar_v06RN.placeHolderList[182]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R|briar_v06:IKLegFootRockInnerPivot_R|briar_v06:IKLegFootRockOuterPivot_R|briar_v06:RollOffsetHeel_R|briar_v06:RollRollerHeel_R|briar_v06:RollExtraHeel_R|briar_v06:RollHeel_R|briar_v06:RollOffsetToesEnd_R|briar_v06:RollRollerToesEnd_R|briar_v06:RollExtraToesEnd_R|briar_v06:RollToesEnd_R|briar_v06:RollOffsetToes_R|briar_v06:RollRollerToes_R|briar_v06:RollExtraToes_R|briar_v06:RollToes_R.rotateX" 
		"briar_v06RN.placeHolderList[183]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R|briar_v06:IKLegFootRockInnerPivot_R|briar_v06:IKLegFootRockOuterPivot_R|briar_v06:RollOffsetHeel_R|briar_v06:RollRollerHeel_R|briar_v06:RollExtraHeel_R|briar_v06:RollHeel_R|briar_v06:RollOffsetToesEnd_R|briar_v06:RollRollerToesEnd_R|briar_v06:RollExtraToesEnd_R|briar_v06:RollToesEnd_R|briar_v06:RollOffsetToes_R|briar_v06:RollRollerToes_R|briar_v06:RollExtraToes_R|briar_v06:RollToes_R.rotateY" 
		"briar_v06RN.placeHolderList[184]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R|briar_v06:IKLegFootRockInnerPivot_R|briar_v06:IKLegFootRockOuterPivot_R|briar_v06:RollOffsetHeel_R|briar_v06:RollRollerHeel_R|briar_v06:RollExtraHeel_R|briar_v06:RollHeel_R|briar_v06:RollOffsetToesEnd_R|briar_v06:RollRollerToesEnd_R|briar_v06:RollExtraToesEnd_R|briar_v06:RollToesEnd_R|briar_v06:RollOffsetToes_R|briar_v06:RollRollerToes_R|briar_v06:RollExtraToes_R|briar_v06:RollToes_R.rotateZ" 
		"briar_v06RN.placeHolderList[185]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R|briar_v06:IKLegFootRockInnerPivot_R|briar_v06:IKLegFootRockOuterPivot_R|briar_v06:RollOffsetHeel_R|briar_v06:RollRollerHeel_R|briar_v06:RollExtraHeel_R|briar_v06:RollHeel_R|briar_v06:RollOffsetToesEnd_R|briar_v06:RollRollerToesEnd_R|briar_v06:RollExtraToesEnd_R|briar_v06:RollToesEnd_R|briar_v06:RollOffsetToes_R|briar_v06:RollRollerToes_R|briar_v06:RollExtraToes_R|briar_v06:RollToes_R.translateX" 
		"briar_v06RN.placeHolderList[186]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R|briar_v06:IKLegFootRockInnerPivot_R|briar_v06:IKLegFootRockOuterPivot_R|briar_v06:RollOffsetHeel_R|briar_v06:RollRollerHeel_R|briar_v06:RollExtraHeel_R|briar_v06:RollHeel_R|briar_v06:RollOffsetToesEnd_R|briar_v06:RollRollerToesEnd_R|briar_v06:RollExtraToesEnd_R|briar_v06:RollToesEnd_R|briar_v06:RollOffsetToes_R|briar_v06:RollRollerToes_R|briar_v06:RollExtraToes_R|briar_v06:RollToes_R.translateY" 
		"briar_v06RN.placeHolderList[187]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R|briar_v06:IKLegFootRockInnerPivot_R|briar_v06:IKLegFootRockOuterPivot_R|briar_v06:RollOffsetHeel_R|briar_v06:RollRollerHeel_R|briar_v06:RollExtraHeel_R|briar_v06:RollHeel_R|briar_v06:RollOffsetToesEnd_R|briar_v06:RollRollerToesEnd_R|briar_v06:RollExtraToesEnd_R|briar_v06:RollToesEnd_R|briar_v06:RollOffsetToes_R|briar_v06:RollRollerToes_R|briar_v06:RollExtraToes_R|briar_v06:RollToes_R.translateZ" 
		"briar_v06RN.placeHolderList[188]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R|briar_v06:IKLegFootRockInnerPivot_R|briar_v06:IKLegFootRockOuterPivot_R|briar_v06:RollOffsetHeel_R|briar_v06:RollRollerHeel_R|briar_v06:RollExtraHeel_R|briar_v06:RollHeel_R|briar_v06:RollOffsetToesEnd_R|briar_v06:RollRollerToesEnd_R|briar_v06:RollExtraToesEnd_R|briar_v06:RollToesEnd_R|briar_v06:RollOffsetToes_R|briar_v06:RollRollerToes_R|briar_v06:RollExtraToes_R|briar_v06:RollToes_R.scaleX" 
		"briar_v06RN.placeHolderList[189]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R|briar_v06:IKLegFootRockInnerPivot_R|briar_v06:IKLegFootRockOuterPivot_R|briar_v06:RollOffsetHeel_R|briar_v06:RollRollerHeel_R|briar_v06:RollExtraHeel_R|briar_v06:RollHeel_R|briar_v06:RollOffsetToesEnd_R|briar_v06:RollRollerToesEnd_R|briar_v06:RollExtraToesEnd_R|briar_v06:RollToesEnd_R|briar_v06:RollOffsetToes_R|briar_v06:RollRollerToes_R|briar_v06:RollExtraToes_R|briar_v06:RollToes_R.scaleY" 
		"briar_v06RN.placeHolderList[190]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_R|briar_v06:IKExtraLeg_R|briar_v06:IKLeg_R|briar_v06:IKLegFootRockInnerPivot_R|briar_v06:IKLegFootRockOuterPivot_R|briar_v06:RollOffsetHeel_R|briar_v06:RollRollerHeel_R|briar_v06:RollExtraHeel_R|briar_v06:RollHeel_R|briar_v06:RollOffsetToesEnd_R|briar_v06:RollRollerToesEnd_R|briar_v06:RollExtraToesEnd_R|briar_v06:RollToesEnd_R|briar_v06:RollOffsetToes_R|briar_v06:RollRollerToes_R|briar_v06:RollExtraToes_R|briar_v06:RollToes_R.scaleZ" 
		"briar_v06RN.placeHolderList[191]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.scaleY" 
		"briar_v06RN.placeHolderList[192]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.scaleZ" 
		"briar_v06RN.placeHolderList[193]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.scaleX" 
		"briar_v06RN.placeHolderList[194]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.followMain" 
		"briar_v06RN.placeHolderList[195]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.followRoot" 
		"briar_v06RN.placeHolderList[196]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.swivel" 
		"briar_v06RN.placeHolderList[197]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.rock" 
		"briar_v06RN.placeHolderList[198]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.roll" 
		"briar_v06RN.placeHolderList[199]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.rollStartAngle" 
		"briar_v06RN.placeHolderList[200]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.rollEndAngle" 
		"briar_v06RN.placeHolderList[201]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.stretchy" 
		"briar_v06RN.placeHolderList[202]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.antiPop" 
		"briar_v06RN.placeHolderList[203]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.Lenght1" 
		"briar_v06RN.placeHolderList[204]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.Lenght2" 
		"briar_v06RN.placeHolderList[205]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.Fatness1" 
		"briar_v06RN.placeHolderList[206]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.Fatness2" 
		"briar_v06RN.placeHolderList[207]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.volume" 
		"briar_v06RN.placeHolderList[208]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.translateY" 
		"briar_v06RN.placeHolderList[209]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.translateZ" 
		"briar_v06RN.placeHolderList[210]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.translateX" 
		"briar_v06RN.placeHolderList[211]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.rotateY" 
		"briar_v06RN.placeHolderList[212]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.rotateX" 
		"briar_v06RN.placeHolderList[213]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L.rotateZ" 
		"briar_v06RN.placeHolderList[214]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L|briar_v06:IKLegFootRockInnerPivot_L|briar_v06:IKLegFootRockOuterPivot_L|briar_v06:RollOffsetHeel_L|briar_v06:RollRollerHeel_L|briar_v06:RollExtraHeel_L|briar_v06:RollHeel_L|briar_v06:RollOffsetToesEnd_L|briar_v06:RollRollerToesEnd_L|briar_v06:RollExtraToesEnd_L|briar_v06:RollToesEnd_L|briar_v06:RollOffsetToes_L|briar_v06:RollRollerToes_L|briar_v06:RollExtraToes_L|briar_v06:RollToes_L.rotateX" 
		"briar_v06RN.placeHolderList[215]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L|briar_v06:IKLegFootRockInnerPivot_L|briar_v06:IKLegFootRockOuterPivot_L|briar_v06:RollOffsetHeel_L|briar_v06:RollRollerHeel_L|briar_v06:RollExtraHeel_L|briar_v06:RollHeel_L|briar_v06:RollOffsetToesEnd_L|briar_v06:RollRollerToesEnd_L|briar_v06:RollExtraToesEnd_L|briar_v06:RollToesEnd_L|briar_v06:RollOffsetToes_L|briar_v06:RollRollerToes_L|briar_v06:RollExtraToes_L|briar_v06:RollToes_L.rotateY" 
		"briar_v06RN.placeHolderList[216]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L|briar_v06:IKLegFootRockInnerPivot_L|briar_v06:IKLegFootRockOuterPivot_L|briar_v06:RollOffsetHeel_L|briar_v06:RollRollerHeel_L|briar_v06:RollExtraHeel_L|briar_v06:RollHeel_L|briar_v06:RollOffsetToesEnd_L|briar_v06:RollRollerToesEnd_L|briar_v06:RollExtraToesEnd_L|briar_v06:RollToesEnd_L|briar_v06:RollOffsetToes_L|briar_v06:RollRollerToes_L|briar_v06:RollExtraToes_L|briar_v06:RollToes_L.rotateZ" 
		"briar_v06RN.placeHolderList[217]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L|briar_v06:IKLegFootRockInnerPivot_L|briar_v06:IKLegFootRockOuterPivot_L|briar_v06:RollOffsetHeel_L|briar_v06:RollRollerHeel_L|briar_v06:RollExtraHeel_L|briar_v06:RollHeel_L|briar_v06:RollOffsetToesEnd_L|briar_v06:RollRollerToesEnd_L|briar_v06:RollExtraToesEnd_L|briar_v06:RollToesEnd_L|briar_v06:RollOffsetToes_L|briar_v06:RollRollerToes_L|briar_v06:RollExtraToes_L|briar_v06:RollToes_L.translateX" 
		"briar_v06RN.placeHolderList[218]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L|briar_v06:IKLegFootRockInnerPivot_L|briar_v06:IKLegFootRockOuterPivot_L|briar_v06:RollOffsetHeel_L|briar_v06:RollRollerHeel_L|briar_v06:RollExtraHeel_L|briar_v06:RollHeel_L|briar_v06:RollOffsetToesEnd_L|briar_v06:RollRollerToesEnd_L|briar_v06:RollExtraToesEnd_L|briar_v06:RollToesEnd_L|briar_v06:RollOffsetToes_L|briar_v06:RollRollerToes_L|briar_v06:RollExtraToes_L|briar_v06:RollToes_L.translateY" 
		"briar_v06RN.placeHolderList[219]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L|briar_v06:IKLegFootRockInnerPivot_L|briar_v06:IKLegFootRockOuterPivot_L|briar_v06:RollOffsetHeel_L|briar_v06:RollRollerHeel_L|briar_v06:RollExtraHeel_L|briar_v06:RollHeel_L|briar_v06:RollOffsetToesEnd_L|briar_v06:RollRollerToesEnd_L|briar_v06:RollExtraToesEnd_L|briar_v06:RollToesEnd_L|briar_v06:RollOffsetToes_L|briar_v06:RollRollerToes_L|briar_v06:RollExtraToes_L|briar_v06:RollToes_L.translateZ" 
		"briar_v06RN.placeHolderList[220]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L|briar_v06:IKLegFootRockInnerPivot_L|briar_v06:IKLegFootRockOuterPivot_L|briar_v06:RollOffsetHeel_L|briar_v06:RollRollerHeel_L|briar_v06:RollExtraHeel_L|briar_v06:RollHeel_L|briar_v06:RollOffsetToesEnd_L|briar_v06:RollRollerToesEnd_L|briar_v06:RollExtraToesEnd_L|briar_v06:RollToesEnd_L|briar_v06:RollOffsetToes_L|briar_v06:RollRollerToes_L|briar_v06:RollExtraToes_L|briar_v06:RollToes_L.scaleX" 
		"briar_v06RN.placeHolderList[221]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L|briar_v06:IKLegFootRockInnerPivot_L|briar_v06:IKLegFootRockOuterPivot_L|briar_v06:RollOffsetHeel_L|briar_v06:RollRollerHeel_L|briar_v06:RollExtraHeel_L|briar_v06:RollHeel_L|briar_v06:RollOffsetToesEnd_L|briar_v06:RollRollerToesEnd_L|briar_v06:RollExtraToesEnd_L|briar_v06:RollToesEnd_L|briar_v06:RollOffsetToes_L|briar_v06:RollRollerToes_L|briar_v06:RollExtraToes_L|briar_v06:RollToes_L.scaleY" 
		"briar_v06RN.placeHolderList[222]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:IKSystem|briar_v06:IKHandle|briar_v06:IKOffsetLeg_L|briar_v06:IKExtraLeg_L|briar_v06:IKLeg_L|briar_v06:IKLegFootRockInnerPivot_L|briar_v06:IKLegFootRockOuterPivot_L|briar_v06:RollOffsetHeel_L|briar_v06:RollRollerHeel_L|briar_v06:RollExtraHeel_L|briar_v06:RollHeel_L|briar_v06:RollOffsetToesEnd_L|briar_v06:RollRollerToesEnd_L|briar_v06:RollExtraToesEnd_L|briar_v06:RollToesEnd_L|briar_v06:RollOffsetToes_L|briar_v06:RollRollerToes_L|briar_v06:RollExtraToes_L|briar_v06:RollToes_L.scaleZ" 
		"briar_v06RN.placeHolderList[223]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:RootSystem|briar_v06:RootFollowMain|briar_v06:RootOffsetX_M|briar_v06:RootExtraX_M|briar_v06:RootX_M.translateY" 
		"briar_v06RN.placeHolderList[224]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:RootSystem|briar_v06:RootFollowMain|briar_v06:RootOffsetX_M|briar_v06:RootExtraX_M|briar_v06:RootX_M.translateX" 
		"briar_v06RN.placeHolderList[225]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:RootSystem|briar_v06:RootFollowMain|briar_v06:RootOffsetX_M|briar_v06:RootExtraX_M|briar_v06:RootX_M.translateZ" 
		"briar_v06RN.placeHolderList[226]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:RootSystem|briar_v06:RootFollowMain|briar_v06:RootOffsetX_M|briar_v06:RootExtraX_M|briar_v06:RootX_M.rotateX" 
		"briar_v06RN.placeHolderList[227]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:RootSystem|briar_v06:RootFollowMain|briar_v06:RootOffsetX_M|briar_v06:RootExtraX_M|briar_v06:RootX_M.rotateY" 
		"briar_v06RN.placeHolderList[228]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:RootSystem|briar_v06:RootFollowMain|briar_v06:RootOffsetX_M|briar_v06:RootExtraX_M|briar_v06:RootX_M.rotateZ" 
		"briar_v06RN.placeHolderList[229]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:RootSystem|briar_v06:RootFollowMain|briar_v06:RootOffsetX_M|briar_v06:RootExtraX_M|briar_v06:RootX_M.visibility" 
		"briar_v06RN.placeHolderList[230]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:DrivingSystem|briar_v06:Fingers_R.spread" 
		"briar_v06RN.placeHolderList[231]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:DrivingSystem|briar_v06:Fingers_R.cup" 
		"briar_v06RN.placeHolderList[232]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:DrivingSystem|briar_v06:Fingers_R.indexCurl" 
		"briar_v06RN.placeHolderList[233]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:DrivingSystem|briar_v06:Fingers_R.middleCurl" 
		"briar_v06RN.placeHolderList[234]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:DrivingSystem|briar_v06:Fingers_R.ringCurl" 
		"briar_v06RN.placeHolderList[235]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:DrivingSystem|briar_v06:Fingers_R.pinkyCurl" 
		"briar_v06RN.placeHolderList[236]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:DrivingSystem|briar_v06:Fingers_R.thumbCurl" 
		"briar_v06RN.placeHolderList[237]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:DrivingSystem|briar_v06:Fingers_L.spread" 
		"briar_v06RN.placeHolderList[238]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:DrivingSystem|briar_v06:Fingers_L.cup" 
		"briar_v06RN.placeHolderList[239]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:DrivingSystem|briar_v06:Fingers_L.indexCurl" 
		"briar_v06RN.placeHolderList[240]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:DrivingSystem|briar_v06:Fingers_L.middleCurl" 
		"briar_v06RN.placeHolderList[241]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:DrivingSystem|briar_v06:Fingers_L.ringCurl" 
		"briar_v06RN.placeHolderList[242]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:DrivingSystem|briar_v06:Fingers_L.pinkyCurl" 
		"briar_v06RN.placeHolderList[243]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:MotionSystem|briar_v06:DrivingSystem|briar_v06:Fingers_L.thumbCurl" 
		"briar_v06RN.placeHolderList[244]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxEye_R|briar_v06:ctrlEye_R.translateX" 
		"briar_v06RN.placeHolderList[245]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxEye_R|briar_v06:ctrlEye_R.translateY" 
		"briar_v06RN.placeHolderList[246]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxEye_R|briar_v06:ctrlEye_R.wide" 
		"briar_v06RN.placeHolderList[247]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxEye_R|briar_v06:ctrlEye_R.blink" 
		"briar_v06RN.placeHolderList[248]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxEye_R|briar_v06:ctrlEye_R.squint" 
		"briar_v06RN.placeHolderList[249]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxEye_L|briar_v06:ctrlEye_L.translateX" 
		"briar_v06RN.placeHolderList[250]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxEye_L|briar_v06:ctrlEye_L.translateY" 
		"briar_v06RN.placeHolderList[251]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxEye_L|briar_v06:ctrlEye_L.wide" 
		"briar_v06RN.placeHolderList[252]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxEye_L|briar_v06:ctrlEye_L.blink" 
		"briar_v06RN.placeHolderList[253]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxEye_L|briar_v06:ctrlEye_L.squint" 
		"briar_v06RN.placeHolderList[254]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxLips_M|briar_v06:ctrlLips_M.translateX" 
		"briar_v06RN.placeHolderList[255]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxLips_M|briar_v06:ctrlLips_M.translateY" 
		"briar_v06RN.placeHolderList[256]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxLips_M|briar_v06:ctrlLips_M.upperPress" 
		"briar_v06RN.placeHolderList[257]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxLips_M|briar_v06:ctrlLips_M.lowerPress" 
		"briar_v06RN.placeHolderList[258]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxLips_M|briar_v06:ctrlLips_M.upperSqueeze" 
		"briar_v06RN.placeHolderList[259]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxLips_M|briar_v06:ctrlLips_M.lowerSqueeze" 
		"briar_v06RN.placeHolderList[260]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxLips_M|briar_v06:ctrlLips_M.upperRoll" 
		"briar_v06RN.placeHolderList[261]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxLips_M|briar_v06:ctrlLips_M.lowerRoll" 
		"briar_v06RN.placeHolderList[262]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxLips_M|briar_v06:ctrlLips_M.upperPucker" 
		"briar_v06RN.placeHolderList[263]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxLips_M|briar_v06:ctrlLips_M.lowerPucker" 
		"briar_v06RN.placeHolderList[264]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxMouth_M|briar_v06:ctrlMouth_M.translateX" 
		"briar_v06RN.placeHolderList[265]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxMouth_M|briar_v06:ctrlMouth_M.translateY" 
		"briar_v06RN.placeHolderList[266]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxMouth_M|briar_v06:ctrlMouth_M.jawForward" 
		"briar_v06RN.placeHolderList[267]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxMouth_M|briar_v06:ctrlMouth_M.jawSide" 
		"briar_v06RN.placeHolderList[268]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxEmotions_M|briar_v06:ctrlEmotions_M.happy" 
		"briar_v06RN.placeHolderList[269]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxEmotions_M|briar_v06:ctrlEmotions_M.angry" 
		"briar_v06RN.placeHolderList[270]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxEmotions_M|briar_v06:ctrlEmotions_M.sad" 
		"briar_v06RN.placeHolderList[271]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxEmotions_M|briar_v06:ctrlEmotions_M.surprise" 
		"briar_v06RN.placeHolderList[272]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxEmotions_M|briar_v06:ctrlEmotions_M.fear" 
		"briar_v06RN.placeHolderList[273]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxEmotions_M|briar_v06:ctrlEmotions_M.disgust" 
		"briar_v06RN.placeHolderList[274]" ""
		5 4 "briar_v06RN" "|briar_v06:Group|briar_v06:FaceGroup|briar_v06:FaceMotionSystem|briar_v06:ControlsSetup|briar_v06:ctrlBoxOffset|briar_v06:ctrlBox|briar_v06:ctrlBoxEmotions_M|briar_v06:ctrlEmotions_M.contempt" 
		"briar_v06RN.placeHolderList[275]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTA -n "FKShoulder_R_rotateX";
	rename -uid "99BC0146-45C8-DFD0-AAA2-ED84146B6EBA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -37.946793124388115 22 -15.78825511473241
		 60 -37.946793124388115;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "FKShoulder_R_rotateY";
	rename -uid "690BD1BE-4CCD-24E6-9F4E-6C8E66717B7C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 14.147919292054258 30 29.053234486732332
		 60 14.147919292054258;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "FKShoulder_R_rotateZ";
	rename -uid "4FE4D497-4845-F8C9-BC34-0CA316C6BADA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 27.753190625036975 30 18.911747400042447
		 60 27.753190625036975;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "FKShoulder_R_translateX";
	rename -uid "4D515A69-4441-6031-7FB9-839257715049";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "FKShoulder_R_translateY";
	rename -uid "B1B6A794-47D8-4147-4A01-92B1E9FE2A69";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "FKShoulder_R_translateZ";
	rename -uid "6B089303-4E28-93D0-C2CB-F691787BB101";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 30 0 60 0;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "FKShoulder_R_scaleX";
	rename -uid "0D3FC193-43FF-BD9E-5AE1-E0B652B99EE2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 30 1 60 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "FKShoulder_R_scaleY";
	rename -uid "6CD79DF3-4A15-F1D9-B08D-41BE034B29CE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 30 1 60 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "FKShoulder_R_scaleZ";
	rename -uid "777FC29F-4C7E-B723-1681-3EAC06FF60FB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 30 1 60 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "FKShoulder_L_rotateX";
	rename -uid "2F621CA1-4160-7060-7FFD-ABA0AD3A3468";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.1846890159918972 22 -17.06611704916256
		 60 -1.1846890159918972;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "FKShoulder_L_rotateY";
	rename -uid "7E2DA22C-48DF-3229-7EB2-108AA766C383";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 32.547495503884164 30 30.027903441106197
		 60 32.547495503884164;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "FKShoulder_L_rotateZ";
	rename -uid "D8EA881B-4081-2984-DF30-DBADB717EB84";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.6025431827349601 30 14.676873870204556
		 60 1.6025431827349601;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "FKShoulder_L_translateX";
	rename -uid "2D2935F0-4E50-E6AE-1D03-BD9922500497";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "FKShoulder_L_translateY";
	rename -uid "38074757-4C93-2590-FDC4-79A7C4751B3B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "FKShoulder_L_translateZ";
	rename -uid "E45AACA5-4E02-252A-A77C-F0A07C7D50AB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "FKShoulder_L_scaleX";
	rename -uid "162309AF-4340-2559-4104-1FB9D25E5C2F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "FKShoulder_L_scaleY";
	rename -uid "D6D451D0-4301-EFD0-5A63-069D45066A92";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "FKShoulder_L_scaleZ";
	rename -uid "A61C2DD3-4139-1141-0344-76978D4AE3C4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "FKElbow_R_rotateX";
	rename -uid "2BE650FE-4457-E8F5-3BA5-BABB60BE04D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "FKElbow_R_rotateY";
	rename -uid "B2608380-45FB-5FF4-0D2C-10B21DD33A5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "FKElbow_R_rotateZ";
	rename -uid "9AF443D1-4B87-98DD-6DF7-60AA142C3AA4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 2.1562338369955554 14 5.6290567535168972
		 40 0 60 2.156;
	setAttr -s 4 ".kit[0:3]"  18 1 1 1;
	setAttr -s 4 ".kot[0:3]"  18 1 1 1;
	setAttr -s 4 ".kix[1:3]"  1 1 0.99604207094338049;
	setAttr -s 4 ".kiy[1:3]"  0 0 0.088883029374688532;
	setAttr -s 4 ".kox[1:3]"  1 1 0.99604207094338049;
	setAttr -s 4 ".koy[1:3]"  0 0 0.088883029374688435;
createNode animCurveTL -n "FKElbow_R_translateX";
	rename -uid "8CB0F93C-441A-9B42-B381-CB8356BDA60C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "FKElbow_R_translateY";
	rename -uid "59B31E54-45C5-7303-0327-3EBB1FE5F69B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "FKElbow_R_translateZ";
	rename -uid "6C5FF835-4B59-7FAC-A5B1-3D991EA60C2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "FKElbow_R_scaleX";
	rename -uid "76E58031-4BD7-9E3C-A95F-7A84C4663B8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "FKElbow_R_scaleY";
	rename -uid "3E887D92-4D37-D5DE-8C05-A48B94C0553C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "FKElbow_R_scaleZ";
	rename -uid "338CC1F1-4445-4A62-51DC-A395C695957B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
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
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 37 9.8977167114962405 60 0;
	setAttr -s 3 ".kit[0:2]"  18 1 1;
	setAttr -s 3 ".kot[0:2]"  18 1 1;
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
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "FKWrist_L_rotateY";
	rename -uid "4382FDDD-488D-2C0D-840F-C3B0FB86570C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "FKWrist_L_rotateZ";
	rename -uid "1951FD4C-42AB-6C06-CE8A-31BFF41D226D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 -1.9506874687169558 40 5.6732754105977801
		 60 0;
createNode animCurveTL -n "FKWrist_L_translateX";
	rename -uid "06B1C698-4BCA-FD9B-31DC-A696770715F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "FKWrist_L_translateY";
	rename -uid "8DA9F4B3-4DD2-241D-A481-B68146B3830D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "FKWrist_L_translateZ";
	rename -uid "C0F3F4E4-490E-2EC7-0FEC-2E9AC8CCF83D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "FKWrist_L_scaleX";
	rename -uid "53668E63-4470-EEFC-D679-CEA2D20BE547";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "FKWrist_L_scaleY";
	rename -uid "90208630-4ED9-D266-3776-E6B1A2ECBF2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "FKWrist_L_scaleZ";
	rename -uid "167F679A-4489-4482-03D3-E6B69ABF6666";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTA -n "FKWrist_R_rotateX";
	rename -uid "A700259F-4CB8-0DA7-8B54-9D9B1B5D33E2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "FKWrist_R_rotateY";
	rename -uid "D5C4FECD-4A7A-39A4-4EE9-F082FE8D86C5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "FKWrist_R_rotateZ";
	rename -uid "0AE0A09E-444F-0DA4-D569-D6A38333FC4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 19 9.2774408704134217 49 -2.3138684770406592
		 60 0;
	setAttr -s 4 ".kit[0:3]"  1 18 18 18;
	setAttr -s 4 ".kot[0:3]"  1 18 18 18;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "FKWrist_R_translateX";
	rename -uid "9A7E71B9-4171-E764-A18B-1E8F7B0FE7DA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "FKWrist_R_translateY";
	rename -uid "9711FB5B-4E3B-C9AA-CB5B-0580DDCA66FE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "FKWrist_R_translateZ";
	rename -uid "1318E440-4B00-2620-32CC-B2AD5E9B5685";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "FKWrist_R_scaleX";
	rename -uid "1D0021EC-456A-E6E1-9214-B3837A06D84F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "FKWrist_R_scaleY";
	rename -uid "035CFE11-4308-0299-79A0-FFBD325B9597";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "FKWrist_R_scaleZ";
	rename -uid "CEB7AE48-49FD-9628-E9A8-49870CC0D77E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "IKLeg_L_translateX";
	rename -uid "235CBFFB-48C2-8665-5D6C-D79BDD60A543";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0.013680365906732272 60 0.013680365906732272
		 61 -0.18612640835002481 68 -0.10133012828580709 76 0 84 -0.093063204175012404 92 -0.18612640835002481;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 0.93717289607327081 1 0.94415618595527462 
		1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.34886525029821797 0 -0.32949824964996244 
		0;
	setAttr -s 7 ".kox[1:6]"  1 1 0.93717289607327092 1 0.94415618595527451 
		1;
	setAttr -s 7 ".koy[1:6]"  0 0 0.34886525029821791 0 -0.32949824964996244 
		0;
createNode animCurveTL -n "IKLeg_L_translateY";
	rename -uid "25B50C76-4235-EEEF-CE22-09B56F792045";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 60 0 61 2.1875973835892921 68 1.8636899334607395
		 76 0 84 0 92 2.1875973835892921;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 0.23348646069220547 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 -0.9723600530016786 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 0.23348646069220549 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 -0.9723600530016786 0 0 0;
createNode animCurveTL -n "IKLeg_L_translateZ";
	rename -uid "03CB4A77-41CD-48AF-6618-DBB54AE71375";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -0.78599442814600717 60 -0.78599442814600717
		 61 -5.468420097673941 68 -2.8460094786845489 76 1.745600320935276 84 -2.5183291745770804
		 92 -5.468420097673941;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 0.06914360227327021 1 0.073728897393850329 
		1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.99760671723113192 0 -0.99727832107646208 
		0;
	setAttr -s 7 ".kox[1:6]"  1 1 0.06914360227327021 1 0.073728897393850315 
		1;
	setAttr -s 7 ".koy[1:6]"  0 0 0.99760671723113203 0 -0.99727832107646208 
		0;
createNode animCurveTA -n "IKLeg_L_rotateX";
	rename -uid "BFABF103-4015-740F-1D51-28B74B593EF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 60 0 61 70.749213140470246 68 65.36160398458415
		 76 0 84 0 92 70.749213140470246;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 0.63736628964644293 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 -0.77056097281287661 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 0.63736628964644282 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 -0.7705609728128765 0 0 0;
createNode animCurveTA -n "IKLeg_L_rotateY";
	rename -uid "370FFAE5-40C1-0748-33C4-FCB4844D9BF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 25.976316818008463 60 25.976316818008463
		 61 2.4434224450124273 68 0.33812582524568252 76 0 84 0 92 2.4434224450124273;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 0.90417698239844924 0.99780338640562594 
		1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 -0.42715803223260845 -0.066245015491471326 
		0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 0.90417698239844946 0.99780338640562571 
		1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 -0.42715803223260856 -0.066245015491471312 
		0 0 0;
createNode animCurveTA -n "IKLeg_L_rotateZ";
	rename -uid "4B8B771F-4E5A-5440-5E3F-4183891D35B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 61 0 68 0 84 0 92 0;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "IKLeg_L_scaleX";
	rename -uid "041C789E-4B03-BE18-FBB5-B9A159F50F25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 61 1 68 1 84 1 92 1;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "IKLeg_L_scaleY";
	rename -uid "F32E4C6D-4477-C820-6C68-87B6192C49C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 61 1 68 1 84 1 92 1;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "IKLeg_L_scaleZ";
	rename -uid "27DE920F-4D5E-886F-1B59-9499877037DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 61 1 68 1 84 1 92 1;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "IKLeg_L_followMain";
	rename -uid "DC884EF9-43CB-9B74-3F8B-11837F640326";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 10 60 10 61 10 68 10 84 10 92 10;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "IKLeg_L_followRoot";
	rename -uid "C37A49B4-4445-116D-EE8E-D8992CC14FEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 61 0 68 0 84 0 92 0;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "IKLeg_L_swivel";
	rename -uid "D4C750EF-4F33-E94C-CF26-E59D65AF3A03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 61 0 68 0 84 0 92 0;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "IKLeg_L_roll";
	rename -uid "8FE71E2E-44A4-8A4E-2959-369E2962BE20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 15 0 31 0 46 0 60 0 61 0 68 0 84 0 92 0;
	setAttr -s 9 ".kit[4:8]"  1 18 18 18 18;
	setAttr -s 9 ".kot[4:8]"  1 18 18 18 18;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 0 0 0;
createNode animCurveTU -n "IKLeg_L_rollStartAngle";
	rename -uid "8C060C22-493E-F676-7607-1D94558939C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 30 60 30 61 30 68 30 84 30 92 30;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "IKLeg_L_rollEndAngle";
	rename -uid "421C9C8F-4CC1-4335-0F06-2F803CDD8827";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 60 60 60 61 60 68 60 84 60 92 60;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "IKLeg_L_rock";
	rename -uid "7CFC000D-407F-699D-8D76-F59BF8D31CA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 61 0 68 0 84 0 92 0;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "IKLeg_L_stretchy";
	rename -uid "8252252D-4C0D-F59D-FA88-08888198CAB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 61 0 68 0 84 0 92 0;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "IKLeg_L_antiPop";
	rename -uid "0C3C5D59-469B-CA2A-6953-588630FA1E3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 61 0 68 0 84 0 92 0;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "IKLeg_L_Lenght1";
	rename -uid "BCB4C8EA-4877-8FBE-2560-0D835864492A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 61 1 68 1 84 1 92 1;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "IKLeg_L_Lenght2";
	rename -uid "92C79127-4D76-3A03-BFE0-0B8AC7CA2FDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 61 1 68 1 84 1 92 1;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "IKLeg_L_Fatness1";
	rename -uid "3AF45FBC-437F-395B-7A0D-33849B250DF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 61 0 68 0 84 0 92 0;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "IKLeg_L_Fatness2";
	rename -uid "1D3423BE-4410-DA10-FD56-E1A63D83DE5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 61 0 68 0 84 0 92 0;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "IKLeg_L_volume";
	rename -uid "C6C1FDBB-4133-48F6-579A-ED85CCD68008";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 10 60 10 61 10 68 10 84 10 92 10;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "IKLeg_R_translateX";
	rename -uid "885BBB6B-4BE1-D902-D0A6-3BA27AD8A9A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -0.54497108795390747 60 -0.54497108795390747
		 61 -0.54365807917449582 68 -0.33851390540589454 76 -0.14211612154351594 84 -0.25582176634967846
		 92 -0.54365807917449582;
	setAttr -s 7 ".kit[0:6]"  1 1 18 18 18 18 1;
	setAttr -s 7 ".kot[0:6]"  1 1 18 18 18 18 1;
	setAttr -s 7 ".kix[0:6]"  1 1 0.99309011748461706 0.77969450042889643 
		1 0.79888996524951772 0.99309011748461706;
	setAttr -s 7 ".kiy[0:6]"  0 0 0.11735424387038292 0.62616011211265588 
		0 -0.60147720108381875 0.11735424387038292;
	setAttr -s 7 ".kox[0:6]"  1 1 0.99309011748461717 0.77969450042889632 
		1 0.79888996524951772 0.99309011748461717;
	setAttr -s 7 ".koy[0:6]"  0 0 0.11735424387038292 0.62616011211265588 
		0 -0.60147720108381875 0.11735424387038292;
createNode animCurveTL -n "IKLeg_R_translateY";
	rename -uid "1A9327F7-411A-F467-E1FC-A082A4854AD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 60 0 61 0.0080822739563433128 68 0 76 2.4797886002417155
		 84 2.597522227745344 92 0.0080822739563433128;
	setAttr -s 7 ".kit[0:6]"  1 1 18 18 18 18 1;
	setAttr -s 7 ".kot[0:6]"  1 1 18 18 18 18 1;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 0.60255080094703328 1 0.80868533198579684;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0.79808052994549905 0 0.58824147578271069;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.60255080094703328 1 0.80868533198579684;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0.79808052994549905 0 0.5882414757827108;
createNode animCurveTL -n "IKLeg_R_translateZ";
	rename -uid "6409E80E-4A22-A48F-2A2D-3D86EDD181BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0.88294572173492725 60 0.88294572173492725
		 61 2.037 68 -2.6756573280565488 76 -6.0608713661412486 84 -4.1009819140432988 92 2.0373196847353596;
	setAttr -s 7 ".kit[0:6]"  1 1 18 18 18 18 1;
	setAttr -s 7 ".kot[0:6]"  1 1 18 18 18 18 1;
	setAttr -s 7 ".kix[0:6]"  1 1 1 0.061627259120478277 1 0.065715967969289968 
		0.44070527197854403;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 -0.99809923401097622 0 0.99783836945362026 
		-0.89765186082930704;
	setAttr -s 7 ".kox[0:6]"  1 1 1 0.061627259120478277 1 0.065715967969289954 
		0.44070527197854403;
	setAttr -s 7 ".koy[0:6]"  0 0 0 -0.99809923401097622 0 0.99783836945362026 
		-0.89765186082930704;
createNode animCurveTA -n "IKLeg_R_rotateX";
	rename -uid "BBE67FFE-477B-A1ED-81A8-8381595587E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 60 0 61 0.16267792416487303 68 0 72 61.547859138189729
		 76 49.912544914222757 84 55.649979446066425 92 0.16267792416487303;
	setAttr -s 8 ".kit[0:7]"  1 1 18 18 18 18 18 1;
	setAttr -s 8 ".kot[0:7]"  1 1 18 18 18 18 18 1;
	setAttr -s 8 ".kix[0:7]"  1 1 1 1 1 1 1 0.96886782222349188;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0.24757855937037118;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 0.96886782222349177;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0.24757855937037118;
createNode animCurveTA -n "IKLeg_R_rotateY";
	rename -uid "428DB108-4286-1F15-97E1-808695370EAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -10.831392438955469 60 -10.831392438955469
		 61 -3.3203703557001725 68 -3.3203703557001725 84 -3.3203703557001725 92 -3.3203703557001725;
	setAttr -s 6 ".kit[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "IKLeg_R_rotateZ";
	rename -uid "64FEBB72-4C09-4730-CF93-D3BBAD051968";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 61 0 68 0 84 0 92 0;
	setAttr -s 6 ".kit[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "IKLeg_R_scaleX";
	rename -uid "64724928-46EB-CDB7-4486-8F868124D963";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 61 1 68 1 84 1 92 1;
	setAttr -s 6 ".kit[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "IKLeg_R_scaleY";
	rename -uid "D781A363-4F17-AC3D-6EC1-1099B8060326";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 61 1 68 1 84 1 92 1;
	setAttr -s 6 ".kit[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "IKLeg_R_scaleZ";
	rename -uid "27E2B8F7-4259-7FEA-2399-BE8C4AAC0CFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 61 1 68 1 84 1 92 1;
	setAttr -s 6 ".kit[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "IKLeg_R_followMain";
	rename -uid "356E729D-482A-F6AB-1432-7590EFC823D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 10 60 10 61 10 68 10 84 10 92 10;
	setAttr -s 6 ".kit[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "IKLeg_R_followRoot";
	rename -uid "BFA014FD-4476-6AE7-686C-3A843D6C622E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 61 0 68 0 84 0 92 0;
	setAttr -s 6 ".kit[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "IKLeg_R_swivel";
	rename -uid "3A6E2246-423D-74A7-F06D-62BF19FB4E14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 61 0 68 0 84 0 92 0;
	setAttr -s 6 ".kit[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "IKLeg_R_roll";
	rename -uid "28376AA8-48CA-0105-8A09-0C9F684E9B24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 15 0 31 0 46 0 60 0 61 0 68 0 84 0 92 0;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "IKLeg_R_rollStartAngle";
	rename -uid "20013265-4FE7-4243-ED78-F9B08A2F3A98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 30 60 30 61 30 68 30 84 30 92 30;
	setAttr -s 6 ".kit[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "IKLeg_R_rollEndAngle";
	rename -uid "2550FF78-499D-0DE0-47F4-DC8653783F54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 60 60 60 61 60 68 60 84 60 92 60;
	setAttr -s 6 ".kit[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "IKLeg_R_rock";
	rename -uid "EBD839B2-4D21-BC8F-8168-A8BF2E70A0DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 61 0 68 0 84 0 92 0;
	setAttr -s 6 ".kit[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "IKLeg_R_stretchy";
	rename -uid "88115C83-41E6-9340-DD7C-C7BFB0D834C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 61 0 68 0 84 0 92 0;
	setAttr -s 6 ".kit[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "IKLeg_R_antiPop";
	rename -uid "A146F197-48CC-CA39-1836-D1B29D0019F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 61 0 68 0 84 0 92 0;
	setAttr -s 6 ".kit[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "IKLeg_R_Lenght1";
	rename -uid "285A0F85-4113-6506-B28C-BCA3DA48131A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 61 1 68 1 84 1 92 1;
	setAttr -s 6 ".kit[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "IKLeg_R_Lenght2";
	rename -uid "C89616C1-4225-C79A-330C-B1B034F2E51D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 61 1 68 1 84 1 92 1;
	setAttr -s 6 ".kit[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "IKLeg_R_Fatness1";
	rename -uid "E3B209DB-43B8-8F9C-E3B0-C3847BBD76D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 61 0 68 0 84 0 92 0;
	setAttr -s 6 ".kit[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "IKLeg_R_Fatness2";
	rename -uid "87579E6A-4D12-0FE7-44A1-858AAC0F63B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 61 0 68 0 84 0 92 0;
	setAttr -s 6 ".kit[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "IKLeg_R_volume";
	rename -uid "53C26082-4313-2408-2C44-D3AD6E9A05D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 10 60 10 61 10 68 10 84 10 92 10;
	setAttr -s 6 ".kit[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 1 18 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "RootX_M_translateX";
	rename -uid "7F7DEBAB-4C6D-8931-11BE-AC8F5CEF9B64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 76 0 92 0;
	setAttr -s 3 ".kot[0:2]"  1 18 18;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "RootX_M_translateY";
	rename -uid "A1E1036A-44EB-C0FC-FEB9-B7BABB54CFE1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 -0.059076853371038851 15 -0.1391585134205201
		 31 -0.026513664982919849 46 -0.139 60 -0.059 61 -0.363 64 -0.44394684558694852 68 -0.77150142721135917
		 72 -0.28750075904336264 76 -0.35415988171813845 80 -0.61549792499487144 84 -0.77150142721135917
		 88 -0.28750075904336264 92 -0.36322542312250122;
	setAttr -s 14 ".kit[3:13]"  18 1 18 18 18 18 18 1 
		1 1 18;
	setAttr -s 14 ".kot[3:13]"  18 1 18 18 18 18 18 1 
		1 1 18;
	setAttr -s 14 ".kix[0:13]"  1 1 1 1 1 0.38077206707815003 0.49598501294072878 
		1 1 0.63083336612004559 1 1 0.43332971466365372 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 -0.92466893152794583 -0.86833108140742332 
		0 0 -0.77591833603134575 0 0 0.90123546223476836 0;
	setAttr -s 14 ".kox[0:13]"  1 1 1 1 1 0.38077206707814998 0.49598501294072872 
		1 1 0.63083336612004559 1 1 0.43332971466365372 1;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 -0.92466893152794583 -0.86833108140742321 
		0 0 -0.77591833603134575 0 0 0.90123546223476836 0;
createNode animCurveTL -n "RootX_M_translateZ";
	rename -uid "FF97EE7F-4659-5F4D-CC8E-78A86DFB6DE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0 15 0.2 31 0 46 -0.2 60 0 61 -0.46198140212662941
		 64 -0.3755070355581952 72 -0.32675132689874453 76 -0.46198140212662941 80 -0.46312466376061445
		 88 -0.32675132689874453 92 -0.46198140212662941;
	setAttr -s 12 ".kit[0:11]"  1 18 18 18 1 18 18 18 
		18 1 1 18;
	setAttr -s 12 ".kot[0:11]"  1 18 18 18 1 18 18 18 
		18 1 1 18;
	setAttr -s 12 ".kix[0:11]"  0.68601355074727821 1 0.93256809827408971 
		1 0.92923863358514491 1 0.93822489972277046 1 0.99966931778511925 1 1 1;
	setAttr -s 12 ".kiy[0:11]"  0.72758876310118448 0 -0.36099410255771214 
		0 0.36948012375879263 0 0.34602606482777731 0 -0.025714880498153781 0 0 0;
	setAttr -s 12 ".kox[0:11]"  0.68601367145491432 1 0.93256809827408971 
		1 0.92923865231178226 1 0.93822489972277046 1 0.99966931778511925 1 1 1;
	setAttr -s 12 ".koy[0:11]"  0.72758864929089495 0 -0.36099410255771214 
		0 0.36948007666149291 0 0.34602606482777726 0 -0.025714880498153781 0 0 0;
createNode animCurveTU -n "RootX_M_visibility";
	rename -uid "E51A6745-4B2F-A205-763C-85B4326D286C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 76 1 92 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RootX_M_rotateX";
	rename -uid "9B22DD48-4A4C-80F2-1347-0A9828799D01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 76 0 92 0;
	setAttr -s 3 ".kot[0:2]"  1 18 18;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "RootX_M_rotateY";
	rename -uid "A2691935-412A-13C5-93C2-F5B38F7CA142";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 76 0 92 0;
	setAttr -s 3 ".kot[0:2]"  1 18 18;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "RootX_M_rotateZ";
	rename -uid "0FAE483E-4AF7-3AA5-ED84-D7AE5FC97B57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 76 0 92 0;
	setAttr -s 3 ".kot[0:2]"  1 18 18;
	setAttr -s 3 ".kox[0:2]"  0 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9DDA55DF-4CF7-61EC-EC4C-B383EB84F51F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 332\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n"
		+ "                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "39AF091B-4512-99BC-0DC4-7B91B80981CE";
	setAttr ".b" -type "string" "playbackOptions -min 61 -max 92 -ast 1 -aet 92 ";
	setAttr ".st" 6;
createNode animCurveTA -n "FKRoot_M_rotateX";
	rename -uid "39A9A2E5-41BA-6DEA-AF7A-9384D45094A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.2868848566278897 30 -3.1546333075347159
		 60 2.2868848566278897;
createNode animCurveTA -n "FKRoot_M_rotateY";
	rename -uid "458FF10D-4C7C-E4E0-3BDF-9FA1130725A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "FKRoot_M_rotateZ";
	rename -uid "84D542D6-48EF-1084-D4E3-438EF9756D2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "FKRoot_M_translateX";
	rename -uid "7C7AFF93-4DF4-516C-B320-CCB976003237";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "FKRoot_M_translateY";
	rename -uid "0E56928E-4E63-C589-FB92-C587036F5888";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "FKRoot_M_translateZ";
	rename -uid "41523C89-4B50-0257-CA73-BBBBFBE327DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "FKRoot_M_scaleX";
	rename -uid "B9F32249-4EAE-F811-1042-299831637DE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "FKRoot_M_scaleY";
	rename -uid "111864F2-4AE8-9F16-1FAB-569B33E32BEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "FKRoot_M_scaleZ";
	rename -uid "61ABD5DA-443A-6BD1-B79F-EFBEE87FF45C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTA -n "FKSpine1_M_rotateX";
	rename -uid "3B68C755-4B76-1528-3527-F39A89F357D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.5707783853897297 30 -4.1244770700091875
		 60 6.5707783853897297;
createNode animCurveTA -n "FKSpine1_M_rotateY";
	rename -uid "2661F35F-4880-6858-E135-D09911BB46F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "FKSpine1_M_rotateZ";
	rename -uid "6BF9FE33-4687-F77E-461D-B09E3B28935C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "FKSpine1_M_translateX";
	rename -uid "716AAA4E-4B14-29DD-4962-088F4589B603";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "FKSpine1_M_translateY";
	rename -uid "F626F6DA-488F-8F2A-9F04-558D365A8ED7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "FKSpine1_M_translateZ";
	rename -uid "B818ABDB-4503-93A8-03E9-D88E92D03039";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "FKSpine1_M_scaleX";
	rename -uid "669A5E83-4FDC-5287-EBFC-C7900700253B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "FKSpine1_M_scaleY";
	rename -uid "53EAAA68-4E6C-0097-4E85-98921166C7E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "FKSpine1_M_scaleZ";
	rename -uid "7F7B6CBE-4E88-FD73-A9CD-539D4344B4E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTA -n "FKChest_M_rotateX";
	rename -uid "2B1C08E2-4601-33E4-089C-9FA65B8C1806";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.7065257368703666 30 -2.7513059019571346
		 60 3.7065257368703666;
createNode animCurveTA -n "FKChest_M_rotateY";
	rename -uid "DA963863-4A14-1368-3A07-6D894BF30946";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "FKChest_M_rotateZ";
	rename -uid "F79C3D8B-4BB2-8696-FC82-A38E0C6B1AB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "FKChest_M_translateX";
	rename -uid "1CAC72EF-488A-3C5C-6D0E-D88DB7E7A238";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "FKChest_M_translateY";
	rename -uid "318440D9-43F8-DF6A-1B98-4AB0BF2EE83D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "FKChest_M_translateZ";
	rename -uid "3960913D-4375-C9C4-CD28-819AEA6EA4FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "FKChest_M_scaleX";
	rename -uid "A5E5FCA5-4E62-9A10-EE9C-92A0C4649573";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "FKChest_M_scaleY";
	rename -uid "214D39C7-4212-D454-6C4A-8EA1EC53779D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "FKChest_M_scaleZ";
	rename -uid "56BE1136-45C3-4E84-BAE4-CC91515C3BFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTA -n "FKjoint2_L_rotateX";
	rename -uid "B381CC1C-4D3E-8C45-6647-C891CABDAF06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTA -n "FKjoint2_L_rotateY";
	rename -uid "1C65B06E-434E-BCDE-3554-1B824DB560D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.1259877128224607 5 -0.95900942120677024
		 33 -2.3453267908288384 60 -1.1259877128224607;
	setAttr -s 4 ".kit[0:3]"  1 18 18 18;
	setAttr -s 4 ".kot[0:3]"  1 18 18 18;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "FKjoint2_L_rotateZ";
	rename -uid "A01EC792-4FBA-DE1C-072E-7AA9A93E1809";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTA -n "FKjoint3_L_rotateX";
	rename -uid "7288E9F2-482C-49FF-1B4D-098A7D6B9B2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTA -n "FKjoint3_L_rotateY";
	rename -uid "A3905604-4ECC-C477-C363-33BE2C847F31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.1259877128224607 5 -0.95900942120677024
		 33 -2.3453267908288384 60 -1.1259877128224607;
	setAttr -s 4 ".kit[0:3]"  1 18 18 18;
	setAttr -s 4 ".kot[0:3]"  1 18 18 18;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "FKjoint3_L_rotateZ";
	rename -uid "65A9ADDA-4FF3-2A69-40EC-D88D725335A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTA -n "FKjoint4_L_rotateX";
	rename -uid "4591A1DC-4F2A-4BD8-736A-069E93D642E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTA -n "FKjoint4_L_rotateY";
	rename -uid "062DF6EC-4AD0-384A-4412-4C887B6A40E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.1259877128224607 5 -0.95900942120677024
		 33 -2.3453267908288384 60 -1.1259877128224607;
	setAttr -s 4 ".kit[0:3]"  1 18 18 18;
	setAttr -s 4 ".kot[0:3]"  1 18 18 18;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "FKjoint4_L_rotateZ";
	rename -uid "7BDF9F4D-4806-0010-B333-E5BC1FF96F90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTA -n "FKjoint5_L_rotateX";
	rename -uid "7C7BA5B7-4F6C-615F-851F-A29FF28BBF7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTA -n "FKjoint5_L_rotateY";
	rename -uid "E5A8E709-445E-BFA4-A3B1-8DBAA1550325";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.1259877128224607 5 -0.95900942120677024
		 33 -2.3453267908288384 60 -1.1259877128224607;
	setAttr -s 4 ".kit[0:3]"  1 18 18 18;
	setAttr -s 4 ".kot[0:3]"  1 18 18 18;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "FKjoint5_L_rotateZ";
	rename -uid "A684A667-4409-977D-BB25-59806B2AA482";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTA -n "FKjoint7_L_rotateX";
	rename -uid "52E45A1C-43CA-FD1B-F00B-4C9D3018B311";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTA -n "FKjoint7_L_rotateY";
	rename -uid "006ECAAC-408A-C60D-F758-3B967027A7EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.1259877128224607 5 -0.95900942120677024
		 33 -2.3453267908288384 60 -1.1259877128224607;
	setAttr -s 4 ".kit[0:3]"  1 18 18 18;
	setAttr -s 4 ".kot[0:3]"  1 18 18 18;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "FKjoint7_L_rotateZ";
	rename -uid "D2681D6A-450E-A449-7716-44B470D0152B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTL -n "FKjoint7_L_translateX";
	rename -uid "4FF5ABA1-435B-3A14-C7E0-C19EDB09C237";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTL -n "FKjoint7_L_translateY";
	rename -uid "3CDF1242-4FA5-0BC5-9479-789E86EF8EA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTL -n "FKjoint7_L_translateZ";
	rename -uid "83A25273-44DC-9729-936A-AF95FFB2D61B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTU -n "FKjoint7_L_scaleX";
	rename -uid "4BE086C6-468B-9D25-5E74-7A9C9907E5EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 1;
createNode animCurveTU -n "FKjoint7_L_scaleY";
	rename -uid "2897A46B-4ED0-CBEB-C8A6-E5B485210903";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 1;
createNode animCurveTU -n "FKjoint7_L_scaleZ";
	rename -uid "D643CD69-466C-918B-6BF7-188CE9E0C56C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 1;
createNode animCurveTL -n "FKjoint5_L_translateX";
	rename -uid "EA2E276D-4CB3-D2CF-6CAD-AFA2DE0E8B82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTL -n "FKjoint5_L_translateY";
	rename -uid "5156A2E4-4A24-A1E4-81AC-349D37DD715B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTL -n "FKjoint5_L_translateZ";
	rename -uid "334224BD-40B4-B3E3-3D35-87B2B8858774";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTU -n "FKjoint5_L_scaleX";
	rename -uid "AF830EFB-4938-3065-EECF-84867F278A29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 1;
createNode animCurveTU -n "FKjoint5_L_scaleY";
	rename -uid "3B8753B1-46BE-3C5B-A7F5-869233D126C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 1;
createNode animCurveTU -n "FKjoint5_L_scaleZ";
	rename -uid "4BFB6AB3-4327-6874-A7CF-D29167F383A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 1;
createNode animCurveTL -n "FKjoint4_L_translateX";
	rename -uid "E19D83A2-42A8-C29B-56A6-018110DED855";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTL -n "FKjoint4_L_translateY";
	rename -uid "3FD92565-4DCD-E8B7-1223-908A0A2A9E7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTL -n "FKjoint4_L_translateZ";
	rename -uid "36404FD3-419B-2007-35A5-EF986F5CD6CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTU -n "FKjoint4_L_scaleX";
	rename -uid "D4699767-4EC4-521C-8200-2DB122468676";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 1;
createNode animCurveTU -n "FKjoint4_L_scaleY";
	rename -uid "B6C04296-4A00-8712-79EA-5DB199970E77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 1;
createNode animCurveTU -n "FKjoint4_L_scaleZ";
	rename -uid "ACDBD5F3-40C0-9F21-53A3-8DA3E6EA0216";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 1;
createNode animCurveTL -n "FKjoint3_L_translateX";
	rename -uid "C92B8937-41A8-4097-45EF-758519844F33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTL -n "FKjoint3_L_translateY";
	rename -uid "BC4F77E7-4547-E7BF-B4C3-9AA8EC4BA07A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTL -n "FKjoint3_L_translateZ";
	rename -uid "9E036F48-4145-874E-1A28-16A35E975E09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTU -n "FKjoint3_L_scaleX";
	rename -uid "FE081B96-429B-917D-4DC8-D98A43100590";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 1;
createNode animCurveTU -n "FKjoint3_L_scaleY";
	rename -uid "F2317A4B-4DBF-C864-E1F9-BC8DAEF95042";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 1;
createNode animCurveTU -n "FKjoint3_L_scaleZ";
	rename -uid "44B26C3B-42C3-E930-0CAA-D3A2EFB21195";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 1;
createNode animCurveTL -n "FKjoint2_L_translateX";
	rename -uid "7D4DD360-4EA2-1833-FE6C-4AB769CD6FBA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTL -n "FKjoint2_L_translateY";
	rename -uid "D6B4C78D-4D3C-F306-550A-1EACF9010120";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTL -n "FKjoint2_L_translateZ";
	rename -uid "6A1BBAF9-4966-6911-638F-9EB5D3FCEE5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTU -n "FKjoint2_L_scaleX";
	rename -uid "D0C27991-4815-CC3A-2000-8A902D1DB83F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 1;
createNode animCurveTU -n "FKjoint2_L_scaleY";
	rename -uid "528AFF5A-4067-F7A5-08B5-8B9836E31424";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 1;
createNode animCurveTU -n "FKjoint2_L_scaleZ";
	rename -uid "C2BCD462-4A69-4FE7-F818-939150EB2C40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 1;
createNode animCurveTA -n "FKXjoint7_L_rotateY";
	rename -uid "6D5FE87C-4AC8-C8F2-79A2-ADAD5BD41C4C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.1259877128224607;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "FKXjoint5_L_rotateY";
	rename -uid "630EC5A2-42A0-F13F-EF1C-70895CA77D17";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.1259877128224607;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "FKXjoint4_L_rotateY";
	rename -uid "62B1613A-4728-4AA4-26C7-3D8864D612FF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.1259877128224607;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "FKXjoint3_L_rotateY";
	rename -uid "4A580AE9-4C96-939D-9D28-CF8D556026C3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.1259877128224607;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "FKXjoint2_L_rotateY";
	rename -uid "CA75301D-40FE-F349-3A49-EA833F25580F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.1259877128224607;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "FKHead_M_rotateX";
	rename -uid "08D08FC0-45FE-ABBE-FD24-7E93A053315E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -4.1276561473962996 30 11.868893869197215
		 60 -4.1276561473962996;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "FKHead_M_rotateY";
	rename -uid "E340D2C1-4B34-2ED7-DB84-E49B55D3A58A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "FKHead_M_rotateZ";
	rename -uid "D9FD5B69-481F-B709-259C-66893C1D05C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "FKHead_M_translateX";
	rename -uid "58C21F2D-45D2-3EF0-3E21-439A52B400F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "FKHead_M_translateY";
	rename -uid "DDF526AC-424C-E1E3-CA6E-FAB998173FD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "FKHead_M_translateZ";
	rename -uid "95C884BE-4A51-411A-8E9E-09870F0FB774";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "FKHead_M_scaleX";
	rename -uid "CD7FB6DB-4084-B248-B695-9B9EB7D6C8A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "FKHead_M_scaleY";
	rename -uid "236C52F5-4A89-D958-858E-DE91559B153B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "FKHead_M_scaleZ";
	rename -uid "2D8F3A30-4C2B-C68F-4B2B-EAAFA0898C94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
createNode animCurveTU -n "FKHead_M_Global";
	rename -uid "F9F60309-423B-AC49-4788-C4AAC80F0184";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTA -n "RollToes_R_rotateX";
	rename -uid "4E0F8F5A-4A80-D6C1-F008-99A63A5C373B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 10 15 5 30 10 46 5 60 10 61 43.481361991936474
		 64 0 68 9.5590821455675421 76 5 92 43.481361991936474;
createNode animCurveTA -n "RollToes_R_rotateY";
	rename -uid "BA23E425-42BF-85B8-749C-E9ABEC0AB567";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 0 46 0 61 0 92 0;
createNode animCurveTA -n "RollToes_R_rotateZ";
	rename -uid "79F85817-49DC-5F5B-399D-79A2B6FDFE81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 0 46 0 61 0 92 0;
createNode animCurveTL -n "RollToes_R_translateX";
	rename -uid "817E9509-468B-D0C1-4691-F6B0FA371028";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 0 46 0 61 0 92 0;
createNode animCurveTL -n "RollToes_R_translateY";
	rename -uid "DAEBAB9E-4AD9-35E2-ED93-8783FA1141F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 0 46 0 61 0 92 0;
createNode animCurveTL -n "RollToes_R_translateZ";
	rename -uid "213F0C9B-49E9-D562-FCBD-3AA402CC96D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 0 46 0 61 0 92 0;
createNode animCurveTU -n "RollToes_R_scaleX";
	rename -uid "A0A3F20F-42FB-320A-0756-12B2CAFB122E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 1 46 1 61 1 92 1;
createNode animCurveTU -n "RollToes_R_scaleY";
	rename -uid "2B39F9F7-43DB-A6C8-0B23-7CA29FEB3BB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 1 46 1 61 1 92 1;
createNode animCurveTU -n "RollToes_R_scaleZ";
	rename -uid "7B475A0D-4BFF-F9CF-DF26-5494A46DFE5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 1 46 1 61 1 92 1;
createNode animCurveTA -n "RollToes_L_rotateX";
	rename -uid "D5F0D400-40DD-7DD2-DE0C-BCA232BEA168";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 10 15 5 30 10 46 5 60 10 61 10 72 0 76 40.074976569905431
		 80 0 84 11.692448460528452 92 10;
createNode animCurveTA -n "RollToes_L_rotateY";
	rename -uid "EE15FA03-4A22-B2A6-8A71-A6880B66188E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 0 46 0 61 0 92 0;
createNode animCurveTA -n "RollToes_L_rotateZ";
	rename -uid "65CC5EFA-4209-069F-FE0D-A89644838F0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 0 46 0 61 0 92 0;
createNode animCurveTL -n "RollToes_L_translateX";
	rename -uid "513C5C80-4D15-C6A8-2A74-B7B72A8C8CF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 0 46 0 61 0 92 0;
createNode animCurveTL -n "RollToes_L_translateY";
	rename -uid "AB0716A9-48F1-7C1A-0BDE-FFBAD3341010";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 0 46 0 61 0 92 0;
createNode animCurveTL -n "RollToes_L_translateZ";
	rename -uid "80D9BB01-4061-2C7E-44A5-B9828397125B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 0 46 0 61 0 92 0;
createNode animCurveTU -n "RollToes_L_scaleX";
	rename -uid "37F34ECF-4926-F223-9762-CC8DDDE934F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 1 46 1 61 1 92 1;
createNode animCurveTU -n "RollToes_L_scaleY";
	rename -uid "2FA0B072-48DE-E85C-1A4D-97BD23689C34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 1 46 1 61 1 92 1;
createNode animCurveTU -n "RollToes_L_scaleZ";
	rename -uid "91848054-4765-8630-FA2C-8793F2F25026";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 1 46 1 61 1 92 1;
createNode animCurveTA -n "FKScapula_R_rotateX";
	rename -uid "B61672D6-4823-1179-6077-A68C762EBF78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 30 -0.038508867748898563 60 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "FKScapula_R_rotateY";
	rename -uid "926F057C-47C6-82D9-2689-FFBA6984975A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 30 -0.46026291224162352 60 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "FKScapula_R_rotateZ";
	rename -uid "9131EBE2-48DD-DEA6-6760-5481671F3978";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.7460000577317984 30 -4.7825305179562925
		 60 8.7460000577317984;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "FKScapula_R_translateX";
	rename -uid "73E34687-42B0-C111-8945-7D8DB20A61B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "FKScapula_R_translateY";
	rename -uid "AA01026C-4F93-EA38-56A8-43A670F0C27D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "FKScapula_R_translateZ";
	rename -uid "34C07B92-47EE-AAB2-FD90-4F907D8D532B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "FKScapula_R_scaleX";
	rename -uid "B8648129-41C6-521F-3646-A99E03909B02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "FKScapula_R_scaleY";
	rename -uid "02ADD529-4BF6-C203-85A1-BA8DBD9F90F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "FKScapula_R_scaleZ";
	rename -uid "D1C34F06-433D-B12B-D180-A2B5799CDCD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "FKScapula_L_rotateX";
	rename -uid "BAE1CE3A-4DFF-6213-D5B6-2994E7D7FC36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.8905474447867614 30 5.5785049088770533
		 60 -3.8905474447867614;
	setAttr -s 3 ".kit[0:2]"  1 18 18;
	setAttr -s 3 ".kot[0:2]"  1 18 18;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "FKScapula_L_rotateY";
	rename -uid "4862BE12-4CF7-D093-529E-7D834B7C2722";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.2390892980909978 60 -1.2390892980909978;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "FKScapula_L_rotateZ";
	rename -uid "C7121F7C-4E93-68C2-C768-14B059033A9F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.084086117125779403 60 0.084086117125779403;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "FKScapula_L_translateX";
	rename -uid "2A6BB13E-490D-D281-F7E8-AAA1D97F06BE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "FKScapula_L_translateY";
	rename -uid "FFC60A5F-4449-9A22-3C62-43946C628D93";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "FKScapula_L_translateZ";
	rename -uid "A77A3EE7-4C92-9D80-801A-DF8EA3E93C25";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "FKScapula_L_scaleX";
	rename -uid "6DB331EC-4E63-71A3-18C9-85B67C849E69";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "FKScapula_L_scaleY";
	rename -uid "0DD66DA0-4A89-6644-24E8-05A7B040F9D6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "FKScapula_L_scaleZ";
	rename -uid "B5EF5874-44DD-2363-7C6D-7386EF0783A2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 60 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "Fingers_R_spread";
	rename -uid "FD02E27C-412B-BCC0-E8B2-1BA2A8C3217F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 34 0 60 0;
createNode animCurveTU -n "Fingers_R_cup";
	rename -uid "65F00A33-468A-8B88-A980-639367CFC074";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "Fingers_R_indexCurl";
	rename -uid "E7E121D4-4846-E8B8-720C-9B8D88C28333";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 33 2 60 0;
createNode animCurveTU -n "Fingers_R_middleCurl";
	rename -uid "915CD24F-442A-0ACA-08B4-88A61DB725D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 33 2 60 0;
createNode animCurveTU -n "Fingers_R_ringCurl";
	rename -uid "BF3023B5-4E91-356D-F405-0F814F0AFDDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 33 2 60 0;
createNode animCurveTU -n "Fingers_R_pinkyCurl";
	rename -uid "8EDE30E0-4A24-444A-0628-F1B6222C91E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 33 2 60 0;
createNode animCurveTU -n "Fingers_R_thumbCurl";
	rename -uid "7834E46F-4073-FD8F-110D-1ABF91CC6D75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "Fingers_L_spread";
	rename -uid "61A1E19E-4BE3-BB79-038F-7F85C1009861";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
createNode animCurveTU -n "Fingers_L_cup";
	rename -uid "93065298-415B-4474-D63A-668072B03151";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
createNode animCurveTU -n "Fingers_L_indexCurl";
	rename -uid "7AF5EA94-4C1C-4844-4279-B7B624451BC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2 32 0 60 2;
createNode animCurveTU -n "Fingers_L_middleCurl";
	rename -uid "0EE3064B-4264-A632-03C8-4086B0FEC18C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2 32 0 60 2;
createNode animCurveTU -n "Fingers_L_ringCurl";
	rename -uid "715FA0B0-4E4D-5E78-8DF4-139EA87301A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2 32 0 60 2;
createNode animCurveTU -n "Fingers_L_pinkyCurl";
	rename -uid "98D52E02-4F08-E325-F18A-E0A0972D19AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2 32 0 60 2;
createNode animCurveTU -n "Fingers_L_thumbCurl";
	rename -uid "4DCCFD78-4E05-B737-C444-9FA87C45B000";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
createNode animCurveTL -n "ctrlLips_M_translateX";
	rename -uid "A97FC9B0-4243-C2CE-54FF-CCB1AF44B76C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 34 0 60 0;
createNode animCurveTL -n "ctrlLips_M_translateY";
	rename -uid "E4FD4A32-4586-8501-3EBD-0DA05C778446";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 34 0 60 0;
createNode animCurveTU -n "ctrlLips_M_upperPress";
	rename -uid "199E5FCD-46C9-4DA3-2CFD-3C89C4328AD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "ctrlLips_M_lowerPress";
	rename -uid "98BBB2B1-4D57-D798-C571-578731F3AE98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "ctrlLips_M_upperSqueeze";
	rename -uid "FBA56D5A-45B7-260D-A6B8-898ADEE44480";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "ctrlLips_M_lowerSqueeze";
	rename -uid "D6FA73CA-4A40-0410-7E04-E7A3FAAD3BEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "ctrlLips_M_upperRoll";
	rename -uid "10EB3BEF-4F70-5409-CEB6-F99EE79B7C4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "ctrlLips_M_lowerRoll";
	rename -uid "CC4B1BB3-41B3-5D60-3499-22A86398BD00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "ctrlLips_M_upperPucker";
	rename -uid "0EDC48C8-4BBE-04B3-2AA6-439EC8327209";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "ctrlLips_M_lowerPucker";
	rename -uid "A614E7FD-46CA-405A-734D-AAB3FE471ACB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "ctrlMouth_M_translateX";
	rename -uid "9A6E9763-4917-685A-313A-01B798387478";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "ctrlMouth_M_translateY";
	rename -uid "11A807C1-40BA-B128-0553-B59B693259BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "ctrlMouth_M_jawForward";
	rename -uid "9AF9039A-48C4-03B7-C7A0-70BD0FBEFC40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "ctrlMouth_M_jawSide";
	rename -uid "DD98B5CA-4C02-2FF0-A29B-9C946AC1FD71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "ctrlEye_L_translateX";
	rename -uid "34A16A18-4BC1-1320-E700-AE838C075C0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "ctrlEye_L_translateY";
	rename -uid "4476C328-4A47-2646-9EBE-EB8F4A8EDE78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "ctrlEye_L_wide";
	rename -uid "76429987-4E25-53FD-2D51-27860ACC594A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "ctrlEye_L_blink";
	rename -uid "A90B54FD-45C4-EF1F-C2DE-6F8F011F52FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "ctrlEye_L_squint";
	rename -uid "B646A8F2-493F-660D-628E-17BE18120B97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 1 60 0;
createNode animCurveTL -n "ctrlEye_R_translateX";
	rename -uid "B655D506-4F7E-F31A-8FB7-2684486DA751";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTL -n "ctrlEye_R_translateY";
	rename -uid "863F8059-48C9-5CCD-18B4-E997BBD254FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "ctrlEye_R_wide";
	rename -uid "BDAE841D-454A-43D7-13FF-45A8EDA313DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "ctrlEye_R_blink";
	rename -uid "FA845BD1-42F3-FB86-64DF-B19EDFC19F62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "ctrlEye_R_squint";
	rename -uid "FC49F124-4A64-853F-829C-579859F02A16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 1 60 0;
createNode animCurveTU -n "ctrlEmotions_M_happy";
	rename -uid "9910FE48-4F05-8F32-45A9-809C11173514";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 40 0 60 1;
createNode animCurveTU -n "ctrlEmotions_M_angry";
	rename -uid "73AE673F-41DC-2954-1D14-4B87ADDD3F8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "ctrlEmotions_M_sad";
	rename -uid "CF64DAB4-4FC2-3FE7-4138-1F953EDDCF4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 40 1 60 0;
createNode animCurveTU -n "ctrlEmotions_M_surprise";
	rename -uid "379E99A2-4C33-FD6E-136A-CFAF9CCD807B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "ctrlEmotions_M_fear";
	rename -uid "8B5140B9-4DC8-55DC-5B9F-18AD4555804B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "ctrlEmotions_M_disgust";
	rename -uid "54E3264D-44B8-6545-8316-868F7E0837BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode animCurveTU -n "ctrlEmotions_M_contempt";
	rename -uid "CF4A2A61-4C6A-FEB9-6358-BA8C9BFA858A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 60 0;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "27635CA1-4688-D588-BDD4-898C704B298E";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 75;
	setAttr ".unw" 75;
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
	setAttr -k on ".nds";
	setAttr -s 12 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".mcfr" 30;
	setAttr ".ren" -type "string" "arnold";
	setAttr -k on ".mbf";
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
	setAttr ".hwfr" 30;
select -ne :ikSystem;
	setAttr -s 3 ".sol";
connectAttr "FKHead_M_scaleX.o" "briar_v06RN.phl[1]";
connectAttr "FKHead_M_scaleY.o" "briar_v06RN.phl[2]";
connectAttr "FKHead_M_scaleZ.o" "briar_v06RN.phl[3]";
connectAttr "FKHead_M_Global.o" "briar_v06RN.phl[4]";
connectAttr "FKHead_M_rotateZ.o" "briar_v06RN.phl[5]";
connectAttr "FKHead_M_rotateY.o" "briar_v06RN.phl[6]";
connectAttr "FKHead_M_rotateX.o" "briar_v06RN.phl[7]";
connectAttr "FKHead_M_translateX.o" "briar_v06RN.phl[8]";
connectAttr "FKHead_M_translateY.o" "briar_v06RN.phl[9]";
connectAttr "FKHead_M_translateZ.o" "briar_v06RN.phl[10]";
connectAttr "FKjoint2_L_scaleX.o" "briar_v06RN.phl[11]";
connectAttr "FKjoint2_L_scaleY.o" "briar_v06RN.phl[12]";
connectAttr "FKjoint2_L_scaleZ.o" "briar_v06RN.phl[13]";
connectAttr "FKjoint2_L_rotateY.o" "briar_v06RN.phl[14]";
connectAttr "FKjoint2_L_rotateX.o" "briar_v06RN.phl[15]";
connectAttr "FKjoint2_L_rotateZ.o" "briar_v06RN.phl[16]";
connectAttr "FKjoint2_L_translateX.o" "briar_v06RN.phl[17]";
connectAttr "FKjoint2_L_translateY.o" "briar_v06RN.phl[18]";
connectAttr "FKjoint2_L_translateZ.o" "briar_v06RN.phl[19]";
connectAttr "FKXjoint2_L_rotateY.o" "briar_v06RN.phl[20]";
connectAttr "FKjoint3_L_scaleX.o" "briar_v06RN.phl[21]";
connectAttr "FKjoint3_L_scaleY.o" "briar_v06RN.phl[22]";
connectAttr "FKjoint3_L_scaleZ.o" "briar_v06RN.phl[23]";
connectAttr "FKjoint3_L_rotateY.o" "briar_v06RN.phl[24]";
connectAttr "FKjoint3_L_rotateX.o" "briar_v06RN.phl[25]";
connectAttr "FKjoint3_L_rotateZ.o" "briar_v06RN.phl[26]";
connectAttr "FKjoint3_L_translateX.o" "briar_v06RN.phl[27]";
connectAttr "FKjoint3_L_translateY.o" "briar_v06RN.phl[28]";
connectAttr "FKjoint3_L_translateZ.o" "briar_v06RN.phl[29]";
connectAttr "FKXjoint3_L_rotateY.o" "briar_v06RN.phl[30]";
connectAttr "FKjoint4_L_scaleX.o" "briar_v06RN.phl[31]";
connectAttr "FKjoint4_L_scaleY.o" "briar_v06RN.phl[32]";
connectAttr "FKjoint4_L_scaleZ.o" "briar_v06RN.phl[33]";
connectAttr "FKjoint4_L_rotateY.o" "briar_v06RN.phl[34]";
connectAttr "FKjoint4_L_rotateX.o" "briar_v06RN.phl[35]";
connectAttr "FKjoint4_L_rotateZ.o" "briar_v06RN.phl[36]";
connectAttr "FKjoint4_L_translateX.o" "briar_v06RN.phl[37]";
connectAttr "FKjoint4_L_translateY.o" "briar_v06RN.phl[38]";
connectAttr "FKjoint4_L_translateZ.o" "briar_v06RN.phl[39]";
connectAttr "FKXjoint4_L_rotateY.o" "briar_v06RN.phl[40]";
connectAttr "FKjoint5_L_scaleX.o" "briar_v06RN.phl[41]";
connectAttr "FKjoint5_L_scaleY.o" "briar_v06RN.phl[42]";
connectAttr "FKjoint5_L_scaleZ.o" "briar_v06RN.phl[43]";
connectAttr "FKjoint5_L_rotateY.o" "briar_v06RN.phl[44]";
connectAttr "FKjoint5_L_rotateX.o" "briar_v06RN.phl[45]";
connectAttr "FKjoint5_L_rotateZ.o" "briar_v06RN.phl[46]";
connectAttr "FKjoint5_L_translateX.o" "briar_v06RN.phl[47]";
connectAttr "FKjoint5_L_translateY.o" "briar_v06RN.phl[48]";
connectAttr "FKjoint5_L_translateZ.o" "briar_v06RN.phl[49]";
connectAttr "FKXjoint5_L_rotateY.o" "briar_v06RN.phl[50]";
connectAttr "FKjoint7_L_scaleX.o" "briar_v06RN.phl[51]";
connectAttr "FKjoint7_L_scaleY.o" "briar_v06RN.phl[52]";
connectAttr "FKjoint7_L_scaleZ.o" "briar_v06RN.phl[53]";
connectAttr "FKjoint7_L_rotateY.o" "briar_v06RN.phl[54]";
connectAttr "FKjoint7_L_rotateX.o" "briar_v06RN.phl[55]";
connectAttr "FKjoint7_L_rotateZ.o" "briar_v06RN.phl[56]";
connectAttr "FKjoint7_L_translateX.o" "briar_v06RN.phl[57]";
connectAttr "FKjoint7_L_translateY.o" "briar_v06RN.phl[58]";
connectAttr "FKjoint7_L_translateZ.o" "briar_v06RN.phl[59]";
connectAttr "FKXjoint7_L_rotateY.o" "briar_v06RN.phl[60]";
connectAttr "FKScapula_R_scaleX.o" "briar_v06RN.phl[61]";
connectAttr "FKScapula_R_scaleY.o" "briar_v06RN.phl[62]";
connectAttr "FKScapula_R_scaleZ.o" "briar_v06RN.phl[63]";
connectAttr "FKScapula_R_rotateX.o" "briar_v06RN.phl[64]";
connectAttr "FKScapula_R_rotateY.o" "briar_v06RN.phl[65]";
connectAttr "FKScapula_R_rotateZ.o" "briar_v06RN.phl[66]";
connectAttr "FKScapula_R_translateX.o" "briar_v06RN.phl[67]";
connectAttr "FKScapula_R_translateY.o" "briar_v06RN.phl[68]";
connectAttr "FKScapula_R_translateZ.o" "briar_v06RN.phl[69]";
connectAttr "FKShoulder_R_scaleX.o" "briar_v06RN.phl[70]";
connectAttr "FKShoulder_R_scaleY.o" "briar_v06RN.phl[71]";
connectAttr "FKShoulder_R_scaleZ.o" "briar_v06RN.phl[72]";
connectAttr "FKShoulder_R_rotateY.o" "briar_v06RN.phl[73]";
connectAttr "FKShoulder_R_rotateX.o" "briar_v06RN.phl[74]";
connectAttr "FKShoulder_R_rotateZ.o" "briar_v06RN.phl[75]";
connectAttr "FKShoulder_R_translateX.o" "briar_v06RN.phl[76]";
connectAttr "FKShoulder_R_translateY.o" "briar_v06RN.phl[77]";
connectAttr "FKShoulder_R_translateZ.o" "briar_v06RN.phl[78]";
connectAttr "FKElbow_R_scaleX.o" "briar_v06RN.phl[79]";
connectAttr "FKElbow_R_scaleY.o" "briar_v06RN.phl[80]";
connectAttr "FKElbow_R_scaleZ.o" "briar_v06RN.phl[81]";
connectAttr "FKElbow_R_rotateX.o" "briar_v06RN.phl[82]";
connectAttr "FKElbow_R_rotateY.o" "briar_v06RN.phl[83]";
connectAttr "FKElbow_R_rotateZ.o" "briar_v06RN.phl[84]";
connectAttr "FKElbow_R_translateX.o" "briar_v06RN.phl[85]";
connectAttr "FKElbow_R_translateY.o" "briar_v06RN.phl[86]";
connectAttr "FKElbow_R_translateZ.o" "briar_v06RN.phl[87]";
connectAttr "FKWrist_R_scaleX.o" "briar_v06RN.phl[88]";
connectAttr "FKWrist_R_scaleY.o" "briar_v06RN.phl[89]";
connectAttr "FKWrist_R_scaleZ.o" "briar_v06RN.phl[90]";
connectAttr "FKWrist_R_rotateX.o" "briar_v06RN.phl[91]";
connectAttr "FKWrist_R_rotateY.o" "briar_v06RN.phl[92]";
connectAttr "FKWrist_R_rotateZ.o" "briar_v06RN.phl[93]";
connectAttr "FKWrist_R_translateX.o" "briar_v06RN.phl[94]";
connectAttr "FKWrist_R_translateY.o" "briar_v06RN.phl[95]";
connectAttr "FKWrist_R_translateZ.o" "briar_v06RN.phl[96]";
connectAttr "FKScapula_L_scaleX.o" "briar_v06RN.phl[97]";
connectAttr "FKScapula_L_scaleY.o" "briar_v06RN.phl[98]";
connectAttr "FKScapula_L_scaleZ.o" "briar_v06RN.phl[99]";
connectAttr "FKScapula_L_rotateX.o" "briar_v06RN.phl[100]";
connectAttr "FKScapula_L_rotateY.o" "briar_v06RN.phl[101]";
connectAttr "FKScapula_L_rotateZ.o" "briar_v06RN.phl[102]";
connectAttr "FKScapula_L_translateX.o" "briar_v06RN.phl[103]";
connectAttr "FKScapula_L_translateY.o" "briar_v06RN.phl[104]";
connectAttr "FKScapula_L_translateZ.o" "briar_v06RN.phl[105]";
connectAttr "FKShoulder_L_scaleX.o" "briar_v06RN.phl[106]";
connectAttr "FKShoulder_L_scaleY.o" "briar_v06RN.phl[107]";
connectAttr "FKShoulder_L_scaleZ.o" "briar_v06RN.phl[108]";
connectAttr "FKShoulder_L_rotateY.o" "briar_v06RN.phl[109]";
connectAttr "FKShoulder_L_rotateX.o" "briar_v06RN.phl[110]";
connectAttr "FKShoulder_L_rotateZ.o" "briar_v06RN.phl[111]";
connectAttr "FKShoulder_L_translateX.o" "briar_v06RN.phl[112]";
connectAttr "FKShoulder_L_translateY.o" "briar_v06RN.phl[113]";
connectAttr "FKShoulder_L_translateZ.o" "briar_v06RN.phl[114]";
connectAttr "FKElbow_L_scaleX.o" "briar_v06RN.phl[115]";
connectAttr "FKElbow_L_scaleY.o" "briar_v06RN.phl[116]";
connectAttr "FKElbow_L_scaleZ.o" "briar_v06RN.phl[117]";
connectAttr "FKElbow_L_rotateX.o" "briar_v06RN.phl[118]";
connectAttr "FKElbow_L_rotateY.o" "briar_v06RN.phl[119]";
connectAttr "FKElbow_L_rotateZ.o" "briar_v06RN.phl[120]";
connectAttr "FKElbow_L_translateX.o" "briar_v06RN.phl[121]";
connectAttr "FKElbow_L_translateY.o" "briar_v06RN.phl[122]";
connectAttr "FKElbow_L_translateZ.o" "briar_v06RN.phl[123]";
connectAttr "FKWrist_L_scaleX.o" "briar_v06RN.phl[124]";
connectAttr "FKWrist_L_scaleY.o" "briar_v06RN.phl[125]";
connectAttr "FKWrist_L_scaleZ.o" "briar_v06RN.phl[126]";
connectAttr "FKWrist_L_rotateX.o" "briar_v06RN.phl[127]";
connectAttr "FKWrist_L_rotateY.o" "briar_v06RN.phl[128]";
connectAttr "FKWrist_L_rotateZ.o" "briar_v06RN.phl[129]";
connectAttr "FKWrist_L_translateX.o" "briar_v06RN.phl[130]";
connectAttr "FKWrist_L_translateY.o" "briar_v06RN.phl[131]";
connectAttr "FKWrist_L_translateZ.o" "briar_v06RN.phl[132]";
connectAttr "FKRoot_M_scaleX.o" "briar_v06RN.phl[133]";
connectAttr "FKRoot_M_scaleY.o" "briar_v06RN.phl[134]";
connectAttr "FKRoot_M_scaleZ.o" "briar_v06RN.phl[135]";
connectAttr "FKRoot_M_rotateX.o" "briar_v06RN.phl[136]";
connectAttr "FKRoot_M_rotateY.o" "briar_v06RN.phl[137]";
connectAttr "FKRoot_M_rotateZ.o" "briar_v06RN.phl[138]";
connectAttr "FKRoot_M_translateX.o" "briar_v06RN.phl[139]";
connectAttr "FKRoot_M_translateY.o" "briar_v06RN.phl[140]";
connectAttr "FKRoot_M_translateZ.o" "briar_v06RN.phl[141]";
connectAttr "FKSpine1_M_scaleX.o" "briar_v06RN.phl[142]";
connectAttr "FKSpine1_M_scaleY.o" "briar_v06RN.phl[143]";
connectAttr "FKSpine1_M_scaleZ.o" "briar_v06RN.phl[144]";
connectAttr "FKSpine1_M_rotateX.o" "briar_v06RN.phl[145]";
connectAttr "FKSpine1_M_rotateY.o" "briar_v06RN.phl[146]";
connectAttr "FKSpine1_M_rotateZ.o" "briar_v06RN.phl[147]";
connectAttr "FKSpine1_M_translateX.o" "briar_v06RN.phl[148]";
connectAttr "FKSpine1_M_translateY.o" "briar_v06RN.phl[149]";
connectAttr "FKSpine1_M_translateZ.o" "briar_v06RN.phl[150]";
connectAttr "FKChest_M_scaleX.o" "briar_v06RN.phl[151]";
connectAttr "FKChest_M_scaleY.o" "briar_v06RN.phl[152]";
connectAttr "FKChest_M_scaleZ.o" "briar_v06RN.phl[153]";
connectAttr "FKChest_M_rotateX.o" "briar_v06RN.phl[154]";
connectAttr "FKChest_M_rotateY.o" "briar_v06RN.phl[155]";
connectAttr "FKChest_M_rotateZ.o" "briar_v06RN.phl[156]";
connectAttr "FKChest_M_translateX.o" "briar_v06RN.phl[157]";
connectAttr "FKChest_M_translateY.o" "briar_v06RN.phl[158]";
connectAttr "FKChest_M_translateZ.o" "briar_v06RN.phl[159]";
connectAttr "IKLeg_R_scaleY.o" "briar_v06RN.phl[160]";
connectAttr "IKLeg_R_scaleZ.o" "briar_v06RN.phl[161]";
connectAttr "IKLeg_R_scaleX.o" "briar_v06RN.phl[162]";
connectAttr "IKLeg_R_followMain.o" "briar_v06RN.phl[163]";
connectAttr "IKLeg_R_followRoot.o" "briar_v06RN.phl[164]";
connectAttr "IKLeg_R_swivel.o" "briar_v06RN.phl[165]";
connectAttr "IKLeg_R_rock.o" "briar_v06RN.phl[166]";
connectAttr "IKLeg_R_roll.o" "briar_v06RN.phl[167]";
connectAttr "IKLeg_R_rollStartAngle.o" "briar_v06RN.phl[168]";
connectAttr "IKLeg_R_rollEndAngle.o" "briar_v06RN.phl[169]";
connectAttr "IKLeg_R_stretchy.o" "briar_v06RN.phl[170]";
connectAttr "IKLeg_R_antiPop.o" "briar_v06RN.phl[171]";
connectAttr "IKLeg_R_Lenght1.o" "briar_v06RN.phl[172]";
connectAttr "IKLeg_R_Lenght2.o" "briar_v06RN.phl[173]";
connectAttr "IKLeg_R_Fatness1.o" "briar_v06RN.phl[174]";
connectAttr "IKLeg_R_Fatness2.o" "briar_v06RN.phl[175]";
connectAttr "IKLeg_R_volume.o" "briar_v06RN.phl[176]";
connectAttr "IKLeg_R_translateY.o" "briar_v06RN.phl[177]";
connectAttr "IKLeg_R_translateX.o" "briar_v06RN.phl[178]";
connectAttr "IKLeg_R_translateZ.o" "briar_v06RN.phl[179]";
connectAttr "IKLeg_R_rotateY.o" "briar_v06RN.phl[180]";
connectAttr "IKLeg_R_rotateX.o" "briar_v06RN.phl[181]";
connectAttr "IKLeg_R_rotateZ.o" "briar_v06RN.phl[182]";
connectAttr "RollToes_R_rotateX.o" "briar_v06RN.phl[183]";
connectAttr "RollToes_R_rotateY.o" "briar_v06RN.phl[184]";
connectAttr "RollToes_R_rotateZ.o" "briar_v06RN.phl[185]";
connectAttr "RollToes_R_translateX.o" "briar_v06RN.phl[186]";
connectAttr "RollToes_R_translateY.o" "briar_v06RN.phl[187]";
connectAttr "RollToes_R_translateZ.o" "briar_v06RN.phl[188]";
connectAttr "RollToes_R_scaleX.o" "briar_v06RN.phl[189]";
connectAttr "RollToes_R_scaleY.o" "briar_v06RN.phl[190]";
connectAttr "RollToes_R_scaleZ.o" "briar_v06RN.phl[191]";
connectAttr "IKLeg_L_scaleY.o" "briar_v06RN.phl[192]";
connectAttr "IKLeg_L_scaleZ.o" "briar_v06RN.phl[193]";
connectAttr "IKLeg_L_scaleX.o" "briar_v06RN.phl[194]";
connectAttr "IKLeg_L_followMain.o" "briar_v06RN.phl[195]";
connectAttr "IKLeg_L_followRoot.o" "briar_v06RN.phl[196]";
connectAttr "IKLeg_L_swivel.o" "briar_v06RN.phl[197]";
connectAttr "IKLeg_L_rock.o" "briar_v06RN.phl[198]";
connectAttr "IKLeg_L_roll.o" "briar_v06RN.phl[199]";
connectAttr "IKLeg_L_rollStartAngle.o" "briar_v06RN.phl[200]";
connectAttr "IKLeg_L_rollEndAngle.o" "briar_v06RN.phl[201]";
connectAttr "IKLeg_L_stretchy.o" "briar_v06RN.phl[202]";
connectAttr "IKLeg_L_antiPop.o" "briar_v06RN.phl[203]";
connectAttr "IKLeg_L_Lenght1.o" "briar_v06RN.phl[204]";
connectAttr "IKLeg_L_Lenght2.o" "briar_v06RN.phl[205]";
connectAttr "IKLeg_L_Fatness1.o" "briar_v06RN.phl[206]";
connectAttr "IKLeg_L_Fatness2.o" "briar_v06RN.phl[207]";
connectAttr "IKLeg_L_volume.o" "briar_v06RN.phl[208]";
connectAttr "IKLeg_L_translateY.o" "briar_v06RN.phl[209]";
connectAttr "IKLeg_L_translateZ.o" "briar_v06RN.phl[210]";
connectAttr "IKLeg_L_translateX.o" "briar_v06RN.phl[211]";
connectAttr "IKLeg_L_rotateY.o" "briar_v06RN.phl[212]";
connectAttr "IKLeg_L_rotateX.o" "briar_v06RN.phl[213]";
connectAttr "IKLeg_L_rotateZ.o" "briar_v06RN.phl[214]";
connectAttr "RollToes_L_rotateX.o" "briar_v06RN.phl[215]";
connectAttr "RollToes_L_rotateY.o" "briar_v06RN.phl[216]";
connectAttr "RollToes_L_rotateZ.o" "briar_v06RN.phl[217]";
connectAttr "RollToes_L_translateX.o" "briar_v06RN.phl[218]";
connectAttr "RollToes_L_translateY.o" "briar_v06RN.phl[219]";
connectAttr "RollToes_L_translateZ.o" "briar_v06RN.phl[220]";
connectAttr "RollToes_L_scaleX.o" "briar_v06RN.phl[221]";
connectAttr "RollToes_L_scaleY.o" "briar_v06RN.phl[222]";
connectAttr "RollToes_L_scaleZ.o" "briar_v06RN.phl[223]";
connectAttr "RootX_M_translateY.o" "briar_v06RN.phl[224]";
connectAttr "RootX_M_translateX.o" "briar_v06RN.phl[225]";
connectAttr "RootX_M_translateZ.o" "briar_v06RN.phl[226]";
connectAttr "RootX_M_rotateX.o" "briar_v06RN.phl[227]";
connectAttr "RootX_M_rotateY.o" "briar_v06RN.phl[228]";
connectAttr "RootX_M_rotateZ.o" "briar_v06RN.phl[229]";
connectAttr "RootX_M_visibility.o" "briar_v06RN.phl[230]";
connectAttr "Fingers_R_spread.o" "briar_v06RN.phl[231]";
connectAttr "Fingers_R_cup.o" "briar_v06RN.phl[232]";
connectAttr "Fingers_R_indexCurl.o" "briar_v06RN.phl[233]";
connectAttr "Fingers_R_middleCurl.o" "briar_v06RN.phl[234]";
connectAttr "Fingers_R_ringCurl.o" "briar_v06RN.phl[235]";
connectAttr "Fingers_R_pinkyCurl.o" "briar_v06RN.phl[236]";
connectAttr "Fingers_R_thumbCurl.o" "briar_v06RN.phl[237]";
connectAttr "Fingers_L_spread.o" "briar_v06RN.phl[238]";
connectAttr "Fingers_L_cup.o" "briar_v06RN.phl[239]";
connectAttr "Fingers_L_indexCurl.o" "briar_v06RN.phl[240]";
connectAttr "Fingers_L_middleCurl.o" "briar_v06RN.phl[241]";
connectAttr "Fingers_L_ringCurl.o" "briar_v06RN.phl[242]";
connectAttr "Fingers_L_pinkyCurl.o" "briar_v06RN.phl[243]";
connectAttr "Fingers_L_thumbCurl.o" "briar_v06RN.phl[244]";
connectAttr "ctrlEye_R_translateX.o" "briar_v06RN.phl[245]";
connectAttr "ctrlEye_R_translateY.o" "briar_v06RN.phl[246]";
connectAttr "ctrlEye_R_wide.o" "briar_v06RN.phl[247]";
connectAttr "ctrlEye_R_blink.o" "briar_v06RN.phl[248]";
connectAttr "ctrlEye_R_squint.o" "briar_v06RN.phl[249]";
connectAttr "ctrlEye_L_translateX.o" "briar_v06RN.phl[250]";
connectAttr "ctrlEye_L_translateY.o" "briar_v06RN.phl[251]";
connectAttr "ctrlEye_L_wide.o" "briar_v06RN.phl[252]";
connectAttr "ctrlEye_L_blink.o" "briar_v06RN.phl[253]";
connectAttr "ctrlEye_L_squint.o" "briar_v06RN.phl[254]";
connectAttr "ctrlLips_M_translateX.o" "briar_v06RN.phl[255]";
connectAttr "ctrlLips_M_translateY.o" "briar_v06RN.phl[256]";
connectAttr "ctrlLips_M_upperPress.o" "briar_v06RN.phl[257]";
connectAttr "ctrlLips_M_lowerPress.o" "briar_v06RN.phl[258]";
connectAttr "ctrlLips_M_upperSqueeze.o" "briar_v06RN.phl[259]";
connectAttr "ctrlLips_M_lowerSqueeze.o" "briar_v06RN.phl[260]";
connectAttr "ctrlLips_M_upperRoll.o" "briar_v06RN.phl[261]";
connectAttr "ctrlLips_M_lowerRoll.o" "briar_v06RN.phl[262]";
connectAttr "ctrlLips_M_upperPucker.o" "briar_v06RN.phl[263]";
connectAttr "ctrlLips_M_lowerPucker.o" "briar_v06RN.phl[264]";
connectAttr "ctrlMouth_M_translateX.o" "briar_v06RN.phl[265]";
connectAttr "ctrlMouth_M_translateY.o" "briar_v06RN.phl[266]";
connectAttr "ctrlMouth_M_jawForward.o" "briar_v06RN.phl[267]";
connectAttr "ctrlMouth_M_jawSide.o" "briar_v06RN.phl[268]";
connectAttr "ctrlEmotions_M_happy.o" "briar_v06RN.phl[269]";
connectAttr "ctrlEmotions_M_angry.o" "briar_v06RN.phl[270]";
connectAttr "ctrlEmotions_M_sad.o" "briar_v06RN.phl[271]";
connectAttr "ctrlEmotions_M_surprise.o" "briar_v06RN.phl[272]";
connectAttr "ctrlEmotions_M_fear.o" "briar_v06RN.phl[273]";
connectAttr "ctrlEmotions_M_disgust.o" "briar_v06RN.phl[274]";
connectAttr "ctrlEmotions_M_contempt.o" "briar_v06RN.phl[275]";
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
// End of brairANIMS.0002.ma

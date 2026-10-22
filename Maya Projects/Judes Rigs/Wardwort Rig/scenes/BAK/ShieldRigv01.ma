//Maya ASCII 2024 scene
//Name: ShieldRigv01.ma
//Last modified: Wed, Oct 21, 2026 09:25:13 PM
//Codeset: UTF-8
file -rdi 1 -ns "model" -rfn "modelRN" -op "v=0;" -typ "mayaAscii" "/Users/jkroeze2/Desktop/BriarsThicket/Maya Projects/Judes Rigs/Wardwort Rig//scenes/hWiesenfeld_shieldPlant_v4.ma";
file -r -ns "model" -dr 1 -rfn "modelRN" -op "v=0;" -typ "mayaAscii" "/Users/jkroeze2/Desktop/BriarsThicket/Maya Projects/Judes Rigs/Wardwort Rig//scenes/hWiesenfeld_shieldPlant_v4.ma";
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202607291313-3616f93589";
fileInfo "osv" "Mac OS X 20.7.1";
fileInfo "UUID" "4370A771-E54E-2090-6CB2-FCA5E712243F";
createNode transform -s -n "persp";
	rename -uid "717E5D41-C94C-9CFB-6464-0EA9F4B52184";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.14246521329182124 7.502747768111842 8.8794572702838384 ;
	setAttr ".r" -type "double3" -24.338352729903843 -730.99999999922829 -4.0501051915204553e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "46D00BDD-1946-3487-90F1-32A7E1F4D457";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 10.091275523034158;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 5.553383701628845 4.9399900448696794 0.13408322431134301 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "65D72673-A941-227E-1FF6-3DB336B39209";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3667E349-3540-EBBC-23F0-5FBF034BA567";
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
	rename -uid "417EE6D3-A943-2769-CB8D-D7B95C9B2937";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.0574353067353179 4.1967691100513491 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8396812A-214C-30F8-D600-C494235993DF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 5.9508684326783463;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "43A498C4-A94B-75D1-D908-CC98632BF0E2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "0B6DF6AC-4C4A-DF2C-D1B9-E0B41B5B3E53";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 8.8134900311187838;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode joint -n "stem";
	rename -uid "7D484400-DB4C-3D95-F356-3CA02090BD70";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 2.0218558978132068 0.016693257253999505 -0.7887202317130233 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 67.126334809373262 ;
	setAttr ".bps" -type "matrix" 0.38870050540429557 0.92136416095832874 0 0 -0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 2.0218558978132068 0.016693257253999505 -0.7887202317130233 1;
	setAttr ".radi" 0.505754539647287;
createNode joint -n "stem1" -p "stem";
	rename -uid "8D94AC0D-A342-F9E9-EA5F-4F88082AA94E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.1112544331808816 2.2204460492503131e-16 0 ;
	setAttr ".r" -type "double3" -1.3701425132800104e-14 2.9605042737639294e-15 -6.6573365235830658e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -6.8371071337381597 23.608186224881578 ;
	setAttr ".bps" -type "matrix" -0.012728295233860321 0.99280702824109124 0.11904702925958589 0
		 0.99991782735513435 0.012819459325066229 1.2143064331837647e-16 0 -0.0015261185493630966 0.11903724685032827 -0.99288861652476745 0
		 2.4538010576233793 1.0405632656929256 -0.7887202317130233 1;
	setAttr ".radi" 0.5;
createNode joint -n "stem2" -p "stem1";
	rename -uid "7D71500B-C54D-5F67-79A7-279D5FEAD24C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.62397205982694903 0 1.1102230246251565e-16 ;
	setAttr ".r" -type "double3" -1.056477981447332e-14 -3.6817924746712694e-14 1.551418561915378e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 5.8168549547642723 -22.544428163747856 ;
	setAttr ".bps" -type "matrix" -0.39293464796513411 0.89526386431128191 0.21001184653953792 0
		 0.9186265973505584 0.3924817550247523 0.045642596473303453 0 -0.041563650809936604 0.21085702556737557 -0.97663287764657403 0
		 2.4458589570282219 1.6600471121151912 -0.7144382116496405 1;
	setAttr ".radi" 0.5;
createNode joint -n "stem3" -p "stem2";
	rename -uid "7BBF4C8A-BF40-EB5E-1CB5-FBA66DE25792";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.74887755142998624 -8.8817841970012523e-16 1.1102230246251565e-16 ;
	setAttr ".r" -type "double3" -1.082066285781931e-14 1.0435188551304962e-13 -2.9296054972671828e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -15.268150001313533 4.1308117400630024 ;
	setAttr ".bps" -type "matrix" -0.32518953744402856 0.94422144490049675 -0.051938692002750975 0
		 0.94454476507935003 0.32697288226068966 0.030396069274366284 0 0.045683164274527441 -0.039173935928819487 -0.9981875831955187 0
		 2.1515990199880877 2.3304901227043713 -0.55716505424182139 1;
	setAttr ".radi" 0.5;
createNode joint -n "stem4" -p "stem3";
	rename -uid "B0D5F672-E540-4D3A-A0B5-0E8587774F9C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.60965696573473704 0 0 ;
	setAttr ".r" -type "double3" -8.1535841087031085e-30 -2.7297499732738761e-17 -8.8359451649208474e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.626345678157911e-17 6.7490023840764397e-16 12.894104714023173 ;
	setAttr ".bps" -type "matrix" -0.1062146161179057 0.99337604742855179 -0.043846136866929231 0
		 0.99329326174337451 0.10802514123606763 0.041219716594552314 0 0.045683164274527441 -0.039173935928819487 -0.9981875831955187 0
		 1.9533449533012786 2.9061413037840773 -0.58882983961244961 1;
	setAttr ".radi" 0.5;
createNode joint -n "stem5" -p "stem4";
	rename -uid "21C8350D-064E-98A3-FE83-4BBDC8CC2DE1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.58742180330748406 0 0 ;
	setAttr ".r" -type "double3" 4.3825220839569728e-07 8.8798661237648957e-07 -6.9084994857895278e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.1369472604034872e-19 2.3669114182346121e-18 5.5001844108457512 ;
	setAttr ".bps" -type "matrix" -0.010519469911885029 0.9991565317501071 -0.039693397610561947 0
		 0.99890059027644929 0.012313724251500083 0.045232542935573911 0 0.045683164274527441 -0.039173935928819487 -0.9981875831955187 0
		 1.8909521719636861 3.489672052927018 -0.61458601639888799 1;
	setAttr ".radi" 0.5;
createNode joint -n "bigShieldStem" -p "stem5";
	rename -uid "CD9CC98A-3E47-30B3-0E05-3D9BAD94A239";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.6079754401307067 -2.2204460492503131e-16 2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 4.0363133556434925e-15 7.1836539683524364e-15 6.9743128344069034e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 13.428544959562297 12.387482332011222 ;
	setAttr ".bps" -type "matrix" 0.18782479845871755 0.96088145788389734 0.20354033747357872 0
		 -0.97790201180662761 0.20231395106606298 -0.052694596578665945 0 -0.091812310658711926 -0.18914515351696123 0.97764748785671851 0
		 1.8845565926140659 4.0971346850772594 -0.63871862728145279 1;
	setAttr ".radi" 0.5;
createNode joint -n "bigShieldStem1" -p "bigShieldStem";
	rename -uid "279175E7-3740-0FCD-384A-638FE84C3863";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.55533925221940805 0 2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 4.5893717761019822e-15 5.5781619715453134e-16 5.736781488381953e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -18.218746380773485 -4.2837835782912901 -9.6168715081927356 ;
	setAttr ".bps" -type "matrix" 0.34072088111352383 0.89689896658620183 0.28192467949760491 0
		 -0.84925661410204845 0.42225370977580384 -0.31696215544524386 0 -0.40332677146099249 -0.13143077385899604 0.90556803560289001 0
		 1.9888630757383912 4.6307498753699976 -0.52568468847238936 1;
	setAttr ".radi" 0.5;
createNode joint -n "bigShieldStem2" -p "bigShieldStem1";
	rename -uid "2CDA4C8F-BE47-CB1C-9807-CDAA9A478B69";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.4634581488694085 -4.4408920985006262e-16 2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 7.2186326756059057e-15 1.8751905865933009e-15 1.3329535438850261e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.3172961789634436 -6.0963770209036312 -14.71195852135441 ;
	setAttr ".bps" -type "matrix" 0.4993100967698868 0.74200082470018802 0.44735243757901577 0
		 -0.72413905348143759 0.64087873460052991 -0.25474905055727032 0 -0.47572266972118665 -0.19674659763529515 0.85730899787199333 0
		 2.1467729445804191 5.0464250101469244 -0.39502439839182779 1;
	setAttr ".radi" 0.5;
createNode joint -n "bigShieldStem3" -p "bigShieldStem2";
	rename -uid "756A9B84-CD46-CB40-7E92-12AF44A1A271";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.32348651020118346 -0.054789604720485219 0 ;
	setAttr ".r" -type "double3" 6.2951894746662997e-15 -3.6289501249800246e-16 9.9976748568921773e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.8099460006901927e-15 1.2875899460475806e-14 -24.621628660069167 ;
	setAttr ".bps" -type "matrix" 0.7556059772154784 0.4075318385356258 0.51281322894014192 0
		 -0.45027497011225059 0.89174468145243702 -0.045209229054513661 0 -0.47572266972118665 -0.19674659763529515 0.85730899787199333 0
		 2.3479683177956394 5.2513387749530605 -0.23635431974644747 1;
	setAttr ".radi" 0.5;
createNode joint -n "bigShieldStem4" -p "bigShieldStem3";
	rename -uid "BDAC6C26-5D4E-C94F-D0B2-3793225A7628";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.38749941000289345 -0.022402633287539775 -8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 7.3464618536059947e-15 3.3471016347458831e-15 1.8231450516362991e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.8818362992066768 -9.0880873399122564 -32.02502119042186 ;
	setAttr ".bps" -type "matrix" 0.79321040146322341 -0.15684837943322527 0.5884010918410354 0
		 0.038916304998989106 0.97734058610779684 0.20806465329722426 0 -0.60770287165339054 -0.14214065082037389 0.78134067804548779 0
		 2.6508525331952804 5.3892796928583175 -0.036626690310743837 1;
	setAttr ".radi" 0.5;
createNode joint -n "bigShieldStem5" -p "bigShieldStem4";
	rename -uid "D7EE9797-994C-E900-14E2-E096AFC6F498";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.35887732399454952 -0.025803637014959691 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 4.3057538603365378e-15 -1.2160050043742895e-15 8.4634021387022613e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -13.80602975965763 -1.3778496787426875 -18.066681574169348 ;
	setAttr ".bps" -type "matrix" 0.72720608614304294 -0.45549869923060754 0.51350973045867521 0
		 0.42405058758597702 0.88638807213164872 0.18573444686090734 0 -0.5397706989495672 0.082686882768454401 0.83774129179212065 0
		 2.9345135772288868 5.3077714244505261 0.16916829417531346 1;
	setAttr ".radi" 0.5;
createNode joint -n "bigShieldStem6" -p "bigShieldStem5";
	rename -uid "4D10B7FE-454F-C54D-95AE-1CB7001163DC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.39131734071914265 -0.010831968840761874 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 1.4315542894600687e-15 3.2394983111170075e-15 4.9812612931513508e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -6.1320569934678248 -5.4280971861108887 ;
	setAttr ".bps" -type "matrix" 0.62226019538348443 -0.5253983994062138 0.58030058688811959 0
		 0.49094017626205766 0.8393246488165319 0.23347778742481159 0 -0.60972944210779845 0.13960893879116196 0.78021750277503898 0
		 3.2144886262615202 5.1199255567884228 0.3681016865907521 1;
	setAttr ".radi" 0.5;
createNode joint -n "bigShieldStem7" -p "bigShieldStem6";
	rename -uid "D912655D-A24E-F8D5-F67C-C8863FC42264";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.56708714409200833 -0.05162219303346216 -3.3306690738754696e-16 ;
	setAttr ".r" -type "double3" 9.5254902333022165e-30 2.7958512810121283e-15 3.3206436623529035e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -5.1369395488299272 -11.239284199697407 ;
	setAttr ".bps" -type "matrix" 0.45797868524516228 -0.66368542414675369 0.59141963244066897 0
		 0.60280760005635925 0.7208241049738221 0.34210467258279459 0 -0.65335941194369007 0.19983560109207868 0.73019669361122319 0
		 3.5420209747967939 4.7786510999196903 0.68513005371258262 1;
	setAttr ".radi" 0.5;
createNode joint -n "bigShieldStem8" -p "bigShieldStem7";
	rename -uid "03EDCBE9-AA45-5676-A3AA-23A4656C9410";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.39738130321997545 -8.8817841970012523e-16 -2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 10.082587110565365 -26.442451169689125 48.448184798617234 ;
	setAttr ".bps" -type "matrix" 0.38497552542387919 0.17781968135064397 0.90563458731928037 0
		 -0.10503749339307328 0.98332967287429884 -0.14842465909216174 0 -0.9169301880766646 -0.037985725862222791 0.39723559108470097 0
		 3.7240131415864872 4.5149149211441504 0.92014915800173402 1;
	setAttr ".radi" 0.5;
createNode joint -n "bigShieldLeft" -p "bigShieldStem8";
	rename -uid "40BA33A2-A54D-F212-D9D1-C2A79EBD4D02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.23986902292944423 -0.0095685553151643177 0.88366367565094883 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -85.916531908551406 -75.371497435600403 93.91729854559118 ;
	setAttr ".bps" -type "matrix" -0.92031411290042231 0.2079380667347403 0.33133622500252963 0
		 0.077623837547558139 0.92724908623729174 -0.36631089516488274 0 -0.38340119123536742 -0.31140149722621163 -0.86950137095037128 0
		 3.0071040014762191 4.5145927038617328 1.4898257136710622 1;
	setAttr ".radi" 0.5139257689348149;
createNode joint -n "bigShieldLeft1" -p "bigShieldLeft";
	rename -uid "5735177A-C144-78E9-9EFD-478D8247C0CD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.2692315327397536 -1.7763568394002505e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 169.27961975375021 ;
	setAttr ".bps" -type "matrix" 0.91869087271364847 -0.031825581119802243 -0.39369304385399267 0
		 -0.094924216888717314 0.94974535529880888 -0.2982836789641749 0 0.38340119123536742 0.31140149722621174 0.86950137095037128 0
		 1.8390123093575892 4.7785142550184068 1.9103680983832274 1;
	setAttr ".radi" 0.5139257689348149;
createNode joint -n "bigShieldRight" -p "bigShieldStem8";
	rename -uid "CF584655-B141-B8A2-AC85-1E83BD4591F6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.27110454475667201 0.037308699214135377 -0.94401151836907626 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 111.85770236617027 74.065551871163464 121.29285067395209 ;
	setAttr ".bps" -type "matrix" 0.80215999093071622 0.24185728369770287 -0.54593443129408981 0
		 -0.39002924497921715 0.90452625422546029 -0.17236427552656974 0 0.45212447070577161 0.35119411973896547 0.81990618563942941 0
		 4.6900556029864742 4.635668358646643 0.78513830606068791 1;
	setAttr ".radi" 0.51335877639326322;
createNode joint -n "bigShieldRight1" -p "bigShieldRight";
	rename -uid "2955404C-C941-E29C-D787-40A3DF46918C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.2582696769364246 -8.8817841970012523e-16 8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -16.778454938616388 ;
	setAttr ".bps" -type "matrix" 0.88060096981426905 -0.029550252819742884 -0.47293626898394786 0
		 -0.1418640016043316 0.93583624252273034 -0.32262227485054934 0 0.45212447070577161 0.35119411973896547 0.81990618563942941 0
		 5.6993891956261926 4.9399900448696723 0.098205565567803799 1;
	setAttr ".radi" 0.51335877639326322;
createNode ikEffector -n "effector3" -p "bigShieldStem7";
	rename -uid "E7051DDB-824E-2AAB-2641-DCAF24220439";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "rightLeaf" -p "bigShieldStem";
	rename -uid "E94057E9-2742-B086-4612-F3952C968386";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.49733108368632895 0.45623934315935455 -0.1780068980103271 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -177.62588161926766 9.7079055931064708 22.784341677339182 ;
	setAttr ".bps" -type "matrix" -0.18711210788999552 0.98233856642247475 8.3266726846886741e-17 0
		 0.9786812690356651 0.18641547981631779 0.086210454839257822 0 0.084687854617426034 0.016131019927128759 -0.99627694818077939 0
		 1.5481535562533568 4.7009836280183537 -0.73556103546389784 1;
	setAttr ".radi" 0.5;
createNode joint -n "rightLeaf1" -p "rightLeaf";
	rename -uid "C3EFB27B-E843-1387-999B-6B8064D60F00";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.46858915804684909 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.3265601728452053e-17 -1.140235395564087e-15 9.3522016833979205 ;
	setAttr ".bps" -type "matrix" -0.025586512480230028 0.99957444234716553 0.014009446293567721 0
		 0.99607896155846809 0.024304822617412902 0.08506455159547574 0 0.084687854617426034 0.016131019927128759 -0.99627694818077939 0
		 1.4604748511568126 5.1612968297752095 -0.73556103546389784 1;
	setAttr ".radi" 0.5;
createNode joint -n "rightLeaf2" -p "rightLeaf1";
	rename -uid "89A25412-9F4D-ED73-2C81-859583BD1B52";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.52623660247222048 6.6613381477509392e-16 1.1102230246251565e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -2.1768121542340271e-15 8.721048507774853 ;
	setAttr ".bps" -type "matrix" 0.12573873783903611 0.99170280777953468 0.026745295826253783 0
		 -0.98844207573683518 0.12753560772701175 -0.081956889123232998 0 -0.084687854617426159 -0.016131019927128742 0.99627694818077939 0
		 1.447010291760104 5.687309488234046 -0.7281887520438538 1;
	setAttr ".radi" 0.5;
createNode joint -n "rightLeaf3" -p "rightLeaf2";
	rename -uid "57031855-A348-0F5D-B9AC-C29FFA8A3FC6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.3800899676264704 2.2204460492503131e-16 1.1102230246251565e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.5927424390851964e-17 2.8151506071256116e-15 -2.6831053637209776 ;
	setAttr ".bps" -type "matrix" 0.17187175366399771 0.98464544022727551 0.030552533971786918 0
		 -0.98147239776407325 0.17381929477404295 -0.080615043208414533 0 -0.084687854617426159 -0.016131019927128742 0.99627694818077939 0
		 1.4948023245547362 6.0642457763380495 -0.71802313341909252 1;
	setAttr ".radi" 0.5;
createNode joint -n "rightLeaf4" -p "rightLeaf3";
	rename -uid "F122B2DC-D34B-4064-3938-C8937528DDD7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.40505758797382985 -7.2164496600635175e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.0497894385879676e-16 4.5869606803696979e-15 -7.6077937393240891 ;
	setAttr ".bps" -type "matrix" 0.30029718820419715 0.95296599024721573 0.040956320498754292 0
		 -0.9500787157056777 0.30264766912740998 -0.075860545310425076 0 -0.084687854617426159 -0.016131019927128742 0.99627694818077939 0
		 1.564420282534708 6.4630838833659396 -0.70564759770199192 1;
	setAttr ".radi" 0.5;
createNode joint -n "rightLeaf5" -p "rightLeaf4";
	rename -uid "1A9BEC6C-2644-F2BD-3D0E-60B0463A8E18";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.4644696129730681 -3.3306690738754696e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.2500790217035051e-16 7.1266611331190443e-15 -11.617634619409237 ;
	setAttr ".bps" -type "matrix" 0.48547138306980409 0.87249586792866729 0.055394012922817502 0
		 -0.87014108252661448 0.48835514806697017 -0.066058654663098182 0 -0.084687854617426159 -0.016131019927128742 0.99627694818077939 0
		 1.7038992013168124 6.9057076280325607 -0.68662463137113461 1;
	setAttr ".radi" 0.5;
createNode joint -n "rightLeaf6" -p "rightLeaf5";
	rename -uid "60F20294-8444-E9AA-2105-0B978E8AA70E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.34149701948444644 -1.1102230246251565e-15 -2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.9760253163664855e-16 9.4512598348273401e-15 -12.050784883409516 ;
	setAttr ".bps" -type "matrix" 0.65643985667802729 0.75131051073919963 0.067964924904938731 0
		 -0.74960968633337965 0.65975170075484746 -0.053037830896990636 0 -0.084687854617426159 -0.016131019927128742 0.99627694818077939 0
		 1.8696862316801435 7.2036623664426953 -0.66770774106070963 1;
	setAttr ".radi" 0.5;
createNode joint -n "rightLeaf7" -p "rightLeaf6";
	rename -uid "702857E3-B548-4305-B088-6B89E33895C8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.37900128138648004 -8.8817841970012523e-16 -2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.9059380529420728e-15 1.210826162677051e-14 -17.890837382176468 ;
	setAttr ".bps" -type "matrix" 0.85498017293203876 0.51230114697347506 0.080971838948874691 0
		 -0.51169998160386698 0.85865436876881518 -0.029593982848363509 0 -0.084687854617426159 -0.016131019927128742 0.99627694818077939 0
		 2.1184777785142739 7.4884100127319826 -0.64194894743240216 1;
	setAttr ".radi" 0.5;
createNode joint -n "rightLeaf8" -p "rightLeaf7";
	rename -uid "6D1080C7-F64E-8C9F-A692-358040A3DB78";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.41877482721203041 -2.6645352591003757e-15 -3.3306690738754696e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.403444339721224e-15 1.3854427918665319e-14 -27.603669747682485 ;
	setAttr ".bps" -type "matrix" 0.99475873398428449 0.05612800575376653 0.085467585271188265 0
		 -0.057297717600968578 0.99829326210598834 0.011293112569344951 0 -0.084687854617426159 -0.016131019927128742 0.99627694818077939 0
		 2.4765219527036018 7.7029488370363222 -0.60803997956754707 1;
	setAttr ".radi" 0.5;
createNode joint -n "rightLeaf9" -p "rightLeaf8";
	rename -uid "CD667DF7-D649-268D-497D-F5975E295333";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.54009655331102602 -2.6645352591003757e-15 -2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -36.595389271161999 ;
	setAttr ".bps" -type "matrix" 0.83281604353067518 -0.55007954234320711 0.06188646648015575 0
		 0.54703327587835959 0.83495645832079068 0.060019228503807795 0 -0.084687854617426159 -0.016131019927128742 0.99627694818077939 0
		 3.0137877163045537 7.7332633794881502 -0.5618792313427623 1;
	setAttr ".radi" 0.5;
createNode joint -n "rightLeaf10" -p "rightLeaf9";
	rename -uid "9AB65382-944D-E0F7-9225-D2AEBBA632A4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.52440735401942984 -1.7763568394002505e-15 -1.1102230246251565e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.4185285216292453e-15 6.326746873595196e-15 -25.274735599696232 ;
	setAttr ".bps" -type "matrix" 0.51953044338016641 -0.85391324090545562 0.030336371034590279 0
		 0.85024472105477056 0.52016532679759786 0.08069663633661199 0 -0.084687854617426159 -0.016131019927128742 0.99627694818077939 0
		 3.4505225740774041 7.4447976221877283 -0.52942551320629194 1;
	setAttr ".radi" 0.5;
createNode joint -n "rightLeaf11" -p "rightLeaf10";
	rename -uid "4C8BF48E-2945-0577-3578-54BEEA76138F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.67107152456313246 -8.8817841970012523e-16 1.1102230246251565e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 61.090816348851938 ;
	setAttr ".bps" -type "matrix" 0.99544603067991533 0.04254494722970481 0.08530608107762222 0
		 -0.043762624280290541 0.99896432251674128 0.012454519451583768 0 -0.084687854617426159 -0.016131019927128742 0.99627694818077939 0
		 3.7991646607734917 6.871760761768658 -0.50906763844639658 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem" -p "stem5";
	rename -uid "06B1104F-D140-3BB0-9BAE-D288827CF028";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.7214538008102771 -0.47542989481631559 0.17109007118284847 ;
	setAttr ".r" -type "double3" -1.0902184698365852e-16 1.2590117320605343e-15 -1.7393493473654993e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -34.307715984678708 -14.778651990558272 -20.063440985927013 ;
	setAttr ".bps" -type "matrix" -0.32924785605262469 0.89339606825899753 -0.30567844952517437 0
		 0.6964727589729891 0.44836933267261603 0.56025943769584563 0 0.63759042126846766 -0.028432494404777593 -0.76985066601816987 0
		 1.4162715936737462 4.1979607462502848 -0.83550785676499262 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem1" -p "smallShieldStem";
	rename -uid "3854FF30-9C4A-71CF-AC8C-7EAB8D7FECE8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.41016304872442655 0 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" -3.2205968078188457e-16 2.0253703743242258e-15 -2.7739703198006256e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.91322627915415022 -4.4383963063763821 0.0020031527499293493 ;
	setAttr ".bps" -type "matrix" -0.27889487958311715 0.8885321944844633 -0.36431879653257293 0
		 0.70693339335951866 0.44672740782126186 0.54834277642227724 0 0.64997140205974757 -0.10461913049686476 -0.75272306596687044 0
		 1.2812262892492203 4.5643988013258108 -0.96088586155159372 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem2" -p "smallShieldStem1";
	rename -uid "7876538F-1C46-AD36-6700-1CBDF26AE6C9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.43950330469103349 0 2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" -1.0657047469393462e-15 3.1185914609263438e-15 -3.6226711803658318e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.7426583572821555 -8.14972819597822 -3.8513918653720913 ;
	setAttr ".bps" -type "matrix" -0.23031896582471229 0.83303853409609774 -0.50299102844132237 0
		 0.65282056315424009 0.51558677430374367 0.5549735043099272 0 0.72164983635030022 -0.20054196287581572 -0.66257409760833497 0
		 1.1586510680110327 4.9549116371261084 -1.1210051765887199 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem3" -p "smallShieldStem2";
	rename -uid "22747E98-EA47-814A-F966-A9BB21B5EF71";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.36148101215000494 8.8817841970012523e-16 1.1102230246251565e-16 ;
	setAttr ".r" -type "double3" -1.6369149575051159e-15 3.5810423476480892e-15 -4.6652645993929301e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.5148824103500027 4.6495422082962081 -13.730819255501942 ;
	setAttr ".bps" -type "matrix" -0.43594205479935277 0.70084734239732083 -0.56459501194389761 0
		 0.59749644125918921 0.69452627708497616 0.40078828965064212 0 0.67301747937176304 -0.16262303985934937 -0.72152700529292901 0
		 1.0753951351273741 5.2560392495911223 -1.3028268826520606 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem4" -p "smallShieldStem3";
	rename -uid "6C771780-4346-EAF0-A21A-53AB177D1268";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.31762419942948616 -0.053696452289496932 -6.6613381477509392e-16 ;
	setAttr ".r" -type "double3" -2.6862495387487005e-15 2.7377368304490354e-15 -5.6013515946627737e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 10.655070993033181 -34.072553447965348 ;
	setAttr ".bps" -type "matrix" -0.80828666278327344 0.21819681986783099 -0.54686636262092692 0
		 0.25069034959079761 0.96794042106865852 0.015674497869846926 0 0.53275418289181142 -0.12442463205086621 -0.83707316977088952 0
		 0.90484594982286581 5.4413517285410595 -1.5036768305960366 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem5" -p "smallShieldStem4";
	rename -uid "F1BE3C7A-3843-3BED-9E9A-7E931599DF19";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.33064659980504407 -0.029177324110889913 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" -3.966620005465165e-15 1.4207949004503803e-15 -5.343885304296524e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -31.53170881018475 ;
	setAttr ".bps" -type "matrix" -0.82004746228087955 -0.32022389661991246 -0.47431931822375573 0
		 -0.209033825535407 0.93913532942412847 -0.27263472414471812 0 0.53275418289181142 -0.12442463205086621 -0.83707316977088952 0
		 0.63027423952432704 5.4852558537330802 -1.6849536738490221 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem6" -p "smallShieldStem5";
	rename -uid "359DB346-DE49-EEA8-328A-85BE69FDD570";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.40069291990639355 -0.0083161216917408964 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" -3.8309740326648385e-15 -1.0669491409967965e-16 -4.9225192678171512e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.0133197909663129e-16 7.851853685471835 -29.172960126272276 ;
	setAttr ".bps" -type "matrix" -0.68115617672397877 -0.71347233192191817 -0.16426653491405924 0
		 -0.58224855063069825 0.66391571242427372 -0.46925744755370646 0 0.44386133893280472 -0.22399365700409801 -0.86764851951853639 0
		 0.30342537813201603 5.3491344418881397 -1.8727428028927273 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem7" -p "smallShieldStem6";
	rename -uid "73E4E7F0-604D-6381-24E8-109918862A62";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.28567106023859301 -8.8817841970012523e-16 -6.6613381477509392e-16 ;
	setAttr ".r" -type "double3" -2.7394294961724265e-15 -9.9029577748337526e-16 -4.6283013509473482e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.7978573285792427 12.535785423079835 -21.692812967091665 ;
	setAttr ".bps" -type "matrix" -0.50408144903854213 -0.83807468363902604 0.20864495531536315 0
		 -0.80314783289629676 0.3660470802585693 -0.4700671160038295 0 0.31757747283015053 -0.40452485668685789 -0.85761540860300078 0
		 0.10883877093921082 5.1453160443771031 -1.9196689980833455 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem8" -p "smallShieldStem7";
	rename -uid "644DC28B-5241-D64A-BD48-819F940DB599";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.2498980115349827 8.8817841970012523e-16 -6.106226635438361e-16 ;
	setAttr ".r" -type "double3" -1.59226097867224e-15 -1.3389726074302715e-15 -4.0922641564969472e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.1286071026018876 8.4283571700845723 -26.464725978549055 ;
	setAttr ".bps" -type "matrix" -0.13887806920042914 -0.84422275480367948 0.51768795829809189 0
		 -0.97362021202337257 0.020829110689821427 -0.22722198592441145 0 0.18104299112289099 -0.53558761040520497 -0.82484504420267879 0
		 -0.017130180827194502 4.9358828474179015 -1.8675290386332308 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem9" -p "smallShieldStem8";
	rename -uid "0820F4F0-7842-930F-2265-77870F91CAB8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.42937775607340267 0.073335259225990268 -0.076394945070563658 ;
	setAttr ".r" -type "double3" -5.4211588891290833e-16 2.6845010272871862e-15 5.6358563284488619e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -111.45888323242426 22.646382560252945 16.336277200118442 ;
	setAttr ".bps" -type "matrix" -0.44544499269810256 -0.53604557662551777 0.71710103769301803 0
		 0.31790426804465299 0.65406162136325485 0.68639658494099742 0 -0.83696812056325076 0.53372140226890519 -0.12093729747655452 0
		 -0.16199279454692295 4.6158360696434562 -1.5988947361489956 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem10" -p "smallShieldStem9";
	rename -uid "51089DA1-9249-9A5C-75C8-6ABDFD2569DD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.6450728559354979 0.13026787516727234 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 38.298449876914034 8.3624468250424453 35.75776018510097 ;
	setAttr ".bps" -type "matrix" -0.052113655857807015 -0.12985132476009117 0.99016301704880039 0
		 -0.12229876297960329 0.98487688829382636 0.12272134076161596 0 -0.99112419980887978 -0.11470025441436094 -0.067206191608273916 0
		 -0.40792455464407074 4.3552508362614946 -1.0468968971277155 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem11" -p "smallShieldStem10";
	rename -uid "69E9BC2C-F441-3B8A-EC66-2BAED2F87AB6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.33097801902076696 -0.0082860596346119308 0.072113225420726443 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 15.134500700561652 155.46231170779717 33.7730987710653 ;
	setAttr ".bps" -type "matrix" 0.51285923738209349 -0.35222855576255779 -0.78288597326640164 0
		 0.15316129470954104 0.9348628212786797 -0.32027039075406916 0 0.84469936689614866 0.044345799082776277 0.5334008152121209 0
		 -0.49563281722128427 4.2958407480936263 -0.72503803483038398 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldLeft" -p "smallShieldStem11";
	rename -uid "424ABD61-AA48-2274-FF23-00B2485A120E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.21880009765315656 -0.074252153782096819 -0.57842396051182055 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 35.186418287177716 78.071957798726231 49.296436842248141 ;
	setAttr ".bps" -type "matrix" -0.73333548538209492 0.055614852963413813 -0.67758841047443019 0
		 0.11850973006940406 0.99184695892173946 -0.046851402930692954 0 0.66945837044455891 -0.11465861593249349 -0.73394747225817292 0
		 -1.1078133776929453 4.2778421397824342 -0.83849355319751417 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldLeft1" -p "smallShieldLeft";
	rename -uid "B1578BAE-5843-C2F5-4D24-489F910628A0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.96518207389929267 0.033690828222600722 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 5.7193640257559588 ;
	setAttr ".bps" -type "matrix" 0.7178746917702189 -0.15418153848813668 0.67888436431048016 0
		 0.19100109203229446 0.98136713567445089 0.02090760293756494 0 -0.66945837044455903 0.1146586159324935 0.73394747225817281 0
		 -1.8116229513795052 4.3649367444214073 -1.4940682030374755 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldRight" -p "smallShieldStem11";
	rename -uid "CB20B6DE-EE44-11D2-2BB6-96873D643EA7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.18341372605117856 -0.19139924921718166 0.61289299875498326 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -70.878078544089647 -84.983874688523144 78.586630444899512 ;
	setAttr ".bps" -type "matrix" 0.8634649718334082 0.11820591039161105 0.49036272815663895 0
		 0.012292740621888482 0.96693328393588873 -0.25473302287877914 0 -0.50425899193245383 0.22598094425293552 0.83345994618206931 0
		 -0.10130286968242114 4.2086914875958952 -0.19322886388985816 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldRight1" -p "smallShieldRight";
	rename -uid "EAD72015-724F-A58C-CA70-1F8F755098EA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.89113231413449201 8.8817841970012523e-16 -7.7715611723760958e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -9.0641899081251491 ;
	setAttr ".bps" -type "matrix" 0.8507458119138851 -0.035601728897874552 0.5243701749818217 0
		 0.1481702823316805 0.9734809344481451 -0.17429984997043477 0 -0.50425899193245383 0.22598094425293552 0.83345994618206931 0
		 0.66815866884155839 4.3140285940675467 0.24374920881766943 1;
	setAttr ".radi" 0.5;
createNode ikEffector -n "effector2" -p "smallShieldStem9";
	rename -uid "42E6213D-D045-1A26-32AB-24A72256C318";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "leftLeaf" -p "smallShieldStem5";
	rename -uid "9A327FFE-2E45-3D17-CC0C-A1849FD5204A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.33743176479174242 0.090001983768414284 0.032020287011158777 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 38.565366765790984 39.186264559764432 63.873238140876779 ;
	setAttr ".bps" -type "matrix" -0.76198227101337379 0.62286062490543848 0.17727848319440132 0
		 0.5449645795203546 0.76461427634874557 -0.34406193551726572 0 -0.34985229130234913 -0.16555860094266034 -0.92205950129284209 0
		 0.35180965998360397 5.4577420694137828 -1.8963450676346634 1;
	setAttr ".radi" 0.5;
createNode joint -n "leftLeaf1" -p "leftLeaf";
	rename -uid "AD049F6D-AD4A-5324-0498-3A9ADDC0767C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.39733127729428297 0 1.1102230246251565e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.4124581322939861e-16 -1.4007895068056745e-15 11.515688527431848 ;
	setAttr ".bps" -type "matrix" -0.63784894397210645 0.76296721301434767 0.10502264774222453 0
		 0.68611376530730261 0.62487709313034367 -0.37252720643841214 0 -0.34985229130234913 -0.16555860094266034 -0.92205950129284209 0
		 0.049050270966261633 5.7052240770837761 -1.825906781470239 1;
	setAttr ".radi" 0.5;
createNode joint -n "leftLeaf2" -p "leftLeaf1";
	rename -uid "A5C6C28F-9D47-6D66-8729-26973B79C189";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.34425983468979737 0 3.3306690738754696e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.3419372520020139e-16 -3.1883189139162076e-15 15.509970873765555 ;
	setAttr ".bps" -type "matrix" -0.43115001004128528 0.90227887362996351 0.0015821006427820111 0
		 0.83169287787734203 0.39809946477601987 -0.38704492379199451 0 -0.34985229130234913 -0.16555860094266034 -0.92205950129284209 0
		 -0.17053550104263768 5.9678830437098309 -1.7897517021198162 1;
	setAttr ".radi" 0.5;
createNode joint -n "leftLeaf3" -p "leftLeaf2";
	rename -uid "9E95D653-E24B-F977-ED39-F09F70FCBE93";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.26942593730122866 8.8817841970012523e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.5273232307595325e-16 -4.1887174213226725e-15 9.6270535550580867 ;
	setAttr ".bps" -type "matrix" -0.28599063606040553 0.95614812680294514 -0.063167362593223211 0
		 0.89208336513818054 0.24160113672151501 -0.38185882257532167 0 -0.34985229130234913 -0.16555860094266034 -0.92205950129284209 0
		 -0.28669849661544439 6.2109803749446808 -1.78932544317123 1;
	setAttr ".radi" 0.5;
createNode joint -n "leftLeaf4" -p "leftLeaf3";
	rename -uid "9BAA1A2F-A044-999B-9848-C0A1E59328AF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.36302432764273806 2.2204460492503131e-16 -1.1102230246251565e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.2740358813320385e-16 -5.2285505310293168e-15 11.519878735309012 ;
	setAttr ".bps" -type "matrix" -0.10207338912265415 0.98513663428464693 -0.1381551121867487 0
		 0.93122736080052482 0.045783855716037686 -0.36155143624699049 0 -0.34985229130234913 -0.16555860094266034 -0.92205950129284209 0
		 -0.39052005498339187 6.5580854058041833 -1.8122567325055998 1;
	setAttr ".radi" 0.5;
createNode joint -n "leftLeaf5" -p "leftLeaf4";
	rename -uid "4BB7A863-3D4F-A242-EAB6-4ABC2315724A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.23867663767400593 1.1102230246251565e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -6.5400484919029949e-15 20.586877507120015 ;
	setAttr ".bps" -type "matrix" 0.23188992655137966 0.93832475256335268 -0.25646387794564512 0
		 -0.90765105422430459 0.30354078536636897 0.28988369285745608 0 0.34985229130234902 0.16555860094266037 0.92205950129284209 0
		 -0.41488258829517732 6.7932145053247295 -1.8452311301598081 1;
	setAttr ".radi" 0.5;
createNode joint -n "leftLeaf6" -p "leftLeaf5";
	rename -uid "1F1D2498-8945-E80C-714B-A1BAF684B645";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.32009905438446484 -2.2204460492503131e-16 -1.1102230246251565e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -72.22867917709118 ;
	setAttr ".bps" -type "matrix" 0.93511716042662862 -0.0026622692766374301 -0.35432867312417327 0
		 -0.05620738871478359 0.98619636075996953 -0.1557480898042011 0 0.34985229130234902 0.16555860094266037 0.92205950129284209 0
		 -0.34065484208479752 7.0935713713257957 -1.927324974973982 1;
	setAttr ".radi" 0.5;
createNode joint -n "midLeaf" -p "smallShieldStem3";
	rename -uid "C1851D19-824D-2E22-2AAD-6282A33EF5E0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.27944025465969569 0.046579605665840074 -0.027707778617148349 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 51.587362452516267 28.029064123227258 28.785843186589311 ;
	setAttr ".bps" -type "matrix" -0.39955119757236957 0.91382912431029029 0.072630379874905338 0
		 0.88654287775749552 0.40534605666864765 -0.22301636765187288 0 -0.23323929003481142 -0.024716510786627358 -0.97210520401785261 0
		 0.96275870561406374 5.4887408927258532 -1.4219369855528934 1;
	setAttr ".radi" 0.5;
createNode joint -n "midLeaf1" -p "midLeaf";
	rename -uid "804322F9-7C40-E88E-6035-0C81F05FED18";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.49323030359354014 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 4.7472481466868048 ;
	setAttr ".bps" -type "matrix" -0.3248099355479554 0.9442407927589932 0.053924308611246183 0
		 0.91656856773150874 0.32832669611897619 -0.22826222040058988 0 -0.23323929003481142 -0.024716510786627358 -0.97210520401785261 0
		 0.76568794713428134 5.9394691091420366 -1.3861134812370797 1;
	setAttr ".radi" 0.5;
createNode joint -n "midLeaf2" -p "midLeaf1";
	rename -uid "221CA97E-3348-CF90-8CDF-059B4C3E6F3F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.43138820056863203 -4.4408920985006262e-16 4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 7.4569027353181356 ;
	setAttr ".bps" -type "matrix" -0.20311030386251122 0.97886549333733375 0.023844295299639294 0
		 0.95097089232475174 0.20300600988146303 -0.23333007072186812 0 -0.23323929003481142 -0.024716510786627358 -0.97210520401785261 0
		 0.62556877351143503 6.3468034456338369 -1.3628511707783668 1;
	setAttr ".radi" 0.5;
createNode joint -n "midLeaf3" -p "midLeaf2";
	rename -uid "C9BCA6FF-B346-53E7-7DCD-268CEC9346AE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.48366242767620093 -4.4408920985006262e-16 8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 15.306921154794361 ;
	setAttr ".bps" -type "matrix" 0.055141316109679206 0.99773223295074775 -0.038598271837057482 0
		 -0.97085471046998006 0.062605793866458509 0.23134745672386578 0 0.23323929003481131 0.024716510786627365 0.97210520401785261 0
		 0.52733195085924134 6.8202439065098339 -1.3513185810275159 1;
	setAttr ".radi" 0.5;
createNode joint -n "midLeaf4" -p "midLeaf3";
	rename -uid "882488A7-F547-2871-A07D-C98641FA25E1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.49316837110917078 1.1102230246251565e-16 -6.6613381477509392e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -13.72532797877124 ;
	setAttr ".bps" -type "matrix" 0.28391908849808617 0.95438699314136211 -0.092387328725348591 0
		 -0.93004805508665644 0.297547578409108 0.21558305548535747 0 0.23323929003481131 0.024716510786627365 0.97210520401785261 0
		 0.55452590390586742 7.3122938866372698 -1.3703540278770272 1;
	setAttr ".radi" 0.5;
createNode joint -n "midLeaf5" -p "midLeaf4";
	rename -uid "10E56EC9-5C4B-9225-DDCD-1FBD0774310D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.41662009659427035 -2.2204460492503131e-16 -8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -17.533831210168032 ;
	setAttr ".bps" -type "matrix" 0.55092252852547907 0.82040360957422065 -0.15304340874628486 0
		 -0.80130131732523013 0.5712503929907834 0.17773347282019197 0 0.23323929003481131 0.024716510786627365 0.97210520401785261 0
		 0.67281230198089725 7.7099106879081392 -1.4088444456946694 1;
	setAttr ".radi" 0.5;
createNode joint -n "midLeaf6" -p "midLeaf5";
	rename -uid "9DA16F6C-9646-06C7-68FB-90B4AA5F939D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.49754642076731237 -8.8817841970012523e-16 -1.3322676295501878e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -22.770130449692726 ;
	setAttr ".bps" -type "matrix" 0.81811801929825501 0.53537162742211108 -0.20990504293822962 0
		 -0.5256256653584912 0.84425488725025155 0.10464867543599549 0 0.23323929003481131 0.024716510786627365 0.97210520401785261 0
		 0.94692183416882725 8.1180995674363761 -1.4849906459384137 1;
	setAttr ".radi" 0.5;
createNode joint -n "midLeaf7" -p "midLeaf6";
	rename -uid "039EA061-444F-CF3B-8704-578241565143";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.48347292952565901 -8.8817841970012523e-16 -1.9984014443252818e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -32.790880241503736 ;
	setAttr ".bps" -type "matrix" 0.97241862701361037 -0.007165176516807148 -0.23313231024988199 0
		 0.001203088118692297 0.99966882233068455 -0.025705996167453185 0 0.23323929003481131 0.024716510786627365 0.97210520401785261 0
		 1.3424597496566841 8.3769372565310629 -1.5864740519699709 1;
	setAttr ".radi" 0.5;
createNode ikEffector -n "effector1" -p "stem4";
	rename -uid "6FDACF05-7049-F7F1-64FF-F192C94C810E";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "ikHandle1";
	rename -uid "36B35B55-8B4C-176F-CEFF-6D8F21CAB00A";
	setAttr ".t" -type "double3" 1.8909521719636861 3.489672052927018 -0.61458601639888799 ;
	setAttr ".pv" -type "double3" -0.0014218721133671789 -0.0045791907791840362 0.059808103894882551 ;
	setAttr ".roc" yes;
createNode ikHandle -n "ikHandle2";
	rename -uid "1E01E4EF-EA4F-2076-854B-2F883CD836E3";
	setAttr ".t" -type "double3" -0.40792455464407074 4.3552508362614946 -1.0468968971277155 ;
	setAttr ".pv" -type "double3" 0.036217509615811917 0.041670592864585423 -0.023491566306708657 ;
	setAttr ".roc" yes;
createNode ikHandle -n "ikHandle3";
	rename -uid "6A8A6D4A-2E4E-20CA-E486-72A229AE6BFF";
	setAttr ".t" -type "double3" 3.7240131415864872 4.5149149211441504 0.92014915800173402 ;
	setAttr ".pv" -type "double3" -0.0064283263278787665 0.059394373050568473 -0.0055664234973770805 ;
	setAttr ".roc" yes;
createNode fosterParent -n "modelRNfosterParent1";
	rename -uid "57F5F9FD-AB46-080E-F967-DA9F3AFAD17E";
createNode mesh -n "leftStamen_pointShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "6184959F-0B49-14A6-4004-BE8F98A8E745";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "leftStamenShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "8EC6BBEF-9141-3F9E-513F-C3BB694FC2F9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "leftStamen_spikeShape1Deformed" -p "modelRNfosterParent1";
	rename -uid "7B24D63F-CD44-FFB4-0720-79AFF25D97D3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "midStamen_spikeShape1Deformed" -p "modelRNfosterParent1";
	rename -uid "BC3D3241-D240-A30F-2C27-FB9E35718E0F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "midStamenShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "CB003772-1042-A4C9-D9E5-089F9A245242";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "midStamen_pointShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "6F0CAA59-6944-AA60-DEE0-F09458056B80";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "rightStamen_pointShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "64969672-3F41-2D63-38B0-8D97B76F396B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "rightStamen_spikeShape2Deformed" -p "modelRNfosterParent1";
	rename -uid "8116DE8C-5B48-F124-BD2D-B3BF4473A4CE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "rightStamen_spikeShape1Deformed" -p "modelRNfosterParent1";
	rename -uid "7B84D8E0-FC42-E60E-CF00-36AFFDFEF4A1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "rightStamenShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "AFD2A921-3844-E777-00C1-F9A1C0238844";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "thorn_smallBottomShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "645DD8A7-D344-ADC9-ACCB-9E986C627E45";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "shield_BigShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "8A73481D-7A4F-8D73-D072-DFAA549DC51F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dfgi" 120;
createNode mesh -n "thorns_bigBottomShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "02B22208-A044-1FCA-0965-8B8E6D56C009";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "thorns_bigTopShapeOrig" -p "modelRNfosterParent1";
	rename -uid "D29902A1-2040-53E3-5E12-A8BD51357B8B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "shield_bigShapeOrig" -p "modelRNfosterParent1";
	rename -uid "B8DB9406-3846-542E-110D-5183700C2BE0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 7 "f[7:10]" "f[48]" "f[58]" "f[68]" "f[74]" "f[169]" "f[180]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 13 "f[11:14]" "f[18:21]" "f[27:30]" "f[36:39]" "f[49:52]" "f[59:62]" "f[69:73]" "f[80:82]" "f[91:95]" "f[163:168]" "f[170:171]" "f[181]" "f[196:203]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "f[0:3]" "f[43]" "f[53]" "f[63]" "f[79]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 5 "f[16:17]" "f[26]" "f[35]" "f[83]" "f[182]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 6 "f[15]" "f[22]" "f[31]" "f[40]" "f[90]" "f[195]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 12 "f[4:6]" "f[23:25]" "f[32:34]" "f[41:42]" "f[44:47]" "f[54:57]" "f[64:67]" "f[75:78]" "f[84:89]" "f[96:162]" "f[172:179]" "f[183:194]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 262 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.65815449 0.76848787 0.64301521
		 0.75378758 0.63306427 0.40724438 0.67684889 0.75120193 0.74619919 0.69091815 0.71906394
		 0.47283688 0.79936081 0.68790179 0.75039208 0.71099722 0.75514728 0.44202751 0.84621185
		 0.71218646 0.78859591 0.42212784 0.89014977 0.73672378 0.68684518 0.76184678 0.68437946
		 0.78417808 0.66574848 0.79322731 0.66948134 0.77569526 0.84249163 0.72462171 0.8465184
		 0.75187325 0.79845083 0.715038 0.79894686 0.69864416 0.88235372 0.7477206 0.88460958
		 0.76957965 0.60943085 0.27923113 0.65365863 0.91199625 0.6926167 0.94491774 0.63648045
		 0.24543324 0.76447374 0.92856246 0.79984373 0.91875279 0.72385103 0.29439119 0.69953257
		 0.27512214 0.84543329 0.93500561 0.75484389 0.27356941 0.87226254 0.94483382 0.77361828
		 0.26023731 0.62799114 0.38530102 0.63193351 0.78166622 0.68286788 0.41573331 0.71962601
		 0.45152918 0.75821352 0.41795051 0.7938633 0.39974275 0.93611962 0.76650208 0.94462788
		 0.74991035 0.83308262 0.38578469 0.94205225 0.78670484 0.65215081 0.78906304 0.6065346
		 0.29674748 0.64770156 0.89388984 0.62700903 0.29616398 0.72350776 0.30686855 0.68848312
		 0.28983915 0.75934666 0.29155749 0.77592325 0.28439146 0.94591457 0.88338232 0.84087402
		 0.3046084 0.8390885 0.28583854 0.94331306 0.90016007 0.83374721 0.89818639 0.8571279
		 0.90667021 0.87037051 0.93253255 0.84568328 0.92347687 0.79883933 0.87363267 0.79939377
		 0.90238613 0.77010095 0.89444542 0.76406825 0.91691095 0.60244054 0.34492368 0.64464015
		 0.83400828 0.64469218 0.8619743 0.62202871 0.86543274 0.62236565 0.32547057 0.62143612
		 0.34948614 0.72152919 0.38014722 0.68433195 0.36843321 0.68490988 0.3335709 0.72242427
		 0.34684601 0.75930125 0.37045732 0.7606014 0.33561656 0.79640597 0.33191377 0.79496795
		 0.36004594 0.94793075 0.82756925 0.8422175 0.35050198 0.84261638 0.32834598 0.94809353
		 0.85387433 0.92556894 0.55102962 0.93188226 0.57911038 0.87491179 0.57979691 0.87374079
		 0.54289943 0.82203889 0.5435316 0.82197517 0.58221942 0.67488116 0.82555652 0.6758306
		 0.85135585 0.65805805 0.85785681 0.65829539 0.83343649 0.60546833 0.36101046 0.64671195
		 0.81517535 0.62422454 0.3686918 0.72053307 0.41734153 0.68360806 0.39244723 0.75874221
		 0.39447051 0.79437256 0.38084003 0.9460386 0.80948579 0.83869195 0.36587128 0.87200296
		 0.51225066 0.9217422 0.52445376 0.66074419 0.81686914 0.67945057 0.80371469 0.70330107
		 0.73549116 0.69916481 0.71434969 0.74816978 0.75185245 0.7088334 0.77078831 0.71127945
		 0.74706775 0.75348532 0.72369885 0.77047014 0.54196012 0.71873236 0.55002552 0.72231853
		 0.52337223 0.77211744 0.51137507 0.76958722 0.57891405 0.71257317 0.57791698 0.74146473
		 0.90453506 0.73593813 0.92944932 0.72113878 0.93558884 0.72139174 0.91002154 0.66370791
		 0.24678451 0.71983659 0.94613779 0.7355485 0.94114363 0.67601681 0.25694093 0.65413934
		 0.29758817 0.6723873 0.28111741 0.64914465 0.35617965 0.64934886 0.32794091 0.64859885
		 0.37746021 0.64803594 0.39544696 0.91410714 0.74912751 0.80857956 0.4119187 0.92799658
		 0.79077202 0.90729487 0.78542167 0.90715647 0.76135653 0.92398381 0.77199858 0.93424958
		 0.82773739 0.91753024 0.821123 0.91239756 0.8026436 0.93186551 0.81119353 0.93436301
		 0.85143852 0.91589707 0.84575427 0.91164368 0.88877159 0.93137729 0.89477217 0.91202903
		 0.93334168 0.90688002 0.90977764 0.81374383 0.2509023 0.92299843 0.93957537 0.82001042
		 0.30255207 0.82330996 0.35480043 0.82396847 0.33195996 0.81913155 0.37257761 0.81366503
		 0.38939488 0.68878937 0.52919489 0.68628329 0.82613707 0.687751 0.84885514 0.69696647
		 0.91172642 0.69581914 0.93404096 0.79313469 0.30102062 0.7864185 0.25143036 0.89184928
		 0.94669586 0.88084817 0.91255361 0.88476932 0.93738121 0.90533859 0.82095021 0.90309221
		 0.84305358 0.90043622 0.80461788 0.70418906 0.61369985 0.69132447 0.87584841 0.77207708
		 0.60502422 0.82192779 0.59977305 0.87245297 0.60602129 0.94011199 0.61513251 0.90287572
		 0.87203586 0.76124585 0.31180534 0.72317123 0.31928971 0.68552315 0.309879 0.82209575
		 0.50928319 0.83885461 0.76019895 0.82241583 0.45482671 0.87694597 0.77753174 0.88246858
		 0.64173782 0.85704005 0.89602977 0.8218534 0.61787343 0.76869643 0.88349718 0.66377866
		 0.90288782 0.66052312 0.88602751 0.75474614 0.76130396 0.71645963 0.77928936 0.70260131
		 0.6583035 0.74079245 0.89422429 0.93286598 0.87850773 0.69447899 0.79043615 0.70157456
		 0.90145159 0.94191158 0.65940219 0.89671934 0.90271795 0.89687943 0.79052883 0.67875016
		 0.87627435 0.91479486 0.87083805 0.89984536 0.88936615 0.93956423 0.63498926 0.90412474
		 0.6316182 0.74299657 0.63093358 0.70428932 0.63405311 0.69602835 0.89002532 0.6827203
		 0.89363772 0.96942538 0.80510074 0.96342009 0.77551484 0.62462187 0.80955136 0.60990185
		 0.38011476 0.86922795 0.96298152 0.89101553 0.96483654 0.73954892 0.9594447 0.76895803
		 0.9468419 0.96877688 0.88501525 0.9719891 0.85490286 0.62795675 0.90311217 0.6032728
		 0.3216469 0.92054319 0.72963816 0.82667512 0.40254679 0.92604876 0.95697516 0.96401221
		 0.91030771 0.68900508 0.96311319 0.72153771 0.9642604 0.67116773 0.73126954 0.65230221
		 0.41844958 0.89509636 0.71537381 0.68465841 0.44014958 0.61556953 0.39689156 0.97173315
		 0.82632178 0.62184012 0.83273441 0.64344734 0.93045205 0.84045434 0.95298147 0.79918873
		 0.94003308 0.85185122 0.69256091 0.80009717 0.67009622 0.95445633 0.53137004 0.94263184
		 0.51071709 0.69084424 0.80642056 0.68215477 0.55384892 0.96384239 0.63743061 0.96328509
		 0.6164816 0.90833688 0.6518622 0.88204217 0.90323502 0.68083966 0.63663799 0.68111908
		 0.6565783 0.73591173 0.6500259 0.76734388 0.63811129 0.6810236 0.61514944 0.96374428
		 0.58276761;
	setAttr ".uvst[0].uvsp[250:261]" 0.86631465 0.48267603 0.79826266 0.72723478
		 0.77789366 0.48187774 0.96184587 0.65710634 0.83500957 0.8867498 0.79889071 0.86194736
		 0.71935803 0.90188199 0.96189332 0.55446625 0.91414595 0.5002088 0.6803441 0.58175725
		 0.699229 0.50686836 0.72923076 0.4990108;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 206 ".pt";
	setAttr ".pt[0:165]" -type "float3"  2.4090497 -0.66727787 1.8139641 3.4237378 
		-1.0510871 1.1871049 3.9112935 -1.094213 0.76966661 4.3639092 -1.0092503 0.61646563 
		5.2350979 -0.57971436 0.11454453 2.4503474 -1.5918647 2.17559 3.5354633 -1.9808432 
		1.4896138 4.0598536 -2.0231988 1.0378975 4.5478177 -1.9357467 0.87514246 5.4760828 
		-1.4593874 0.34025109 1.9391283 0.62924218 2.1258852 3.2621202 0.4197382 1.4752804 
		3.7103083 -0.092481986 1.3303752 4.0367556 0.56604058 0.97165954 5.2250552 0.77496099 
		0.13166493 1.9464754 1.374367 1.7769021 3.1937344 1.0943737 1.1933916 3.5909486 0.67172521 
		1.0503438 3.8974342 1.2295938 0.73600197 4.9892163 1.5077102 -0.070819959 2.0246365 
		0.44357425 1.9259715 2.048105 -0.45366433 2.3115282 3.4259238 -1.4627594 1.8343226 
		3.9546859 -1.556336 1.5387789 4.4472189 -1.4168959 1.2142792 5.4775987 -0.30198798 
		0.23039211 5.2155895 0.60281807 -0.019434102 4.26651 -0.29194987 0.87644041 3.7935321 
		-0.53467625 1.1973917 3.2451489 -0.3373999 1.496358 2.1196299 -0.89618415 2.3403373 
		2.0889094 0.042962369 1.947153 3.3374734 -0.8406502 1.4865795 3.8745501 -0.99746531 
		1.1849533 4.3498359 -0.79560089 0.87212378 5.2846875 0.22441353 -0.0051186443 5.5572891 
		-0.74387556 0.25409034 4.5144439 -1.8404199 1.2226298 4.0222297 -1.9439526 1.5348002 
		3.5023382 -1.8861639 1.837 2.3442748 -1.4382472 2.254715 2.2935288 -0.49201223 1.8867847 
		3.3910525 -1.0985526 1.338833 3.9159217 -1.1541449 0.89023232 4.399828 -1.0532179 
		0.72543842 5.2763867 -0.35363221 0.075360373 5.5309796 -1.273176 0.32034239 4.5443368 
		-2.0696409 1.1013147 4.0711875 -2.1474586 1.2516582 3.564496 -2.1134882 1.6961361 
		2.9630175 -0.96699607 1.5187633 3.0420396 -1.8883306 1.8457519 3.0670967 -1.9106333 
		1.983457 2.9681797 -1.5400469 2.0618236 2.8555434 -1.1850816 2.0765238 2.5872192 
		1.5083123 1.5399845 2.5559781 2.1082249 1.259215 2.7198572 -0.063180283 1.7109611 
		2.8020623 -0.49605605 1.710001 2.8760569 -0.8953464 1.6470561 4.7823806 -0.88603544 
		0.41449657 4.9987421 -1.8056958 0.66050088 4.9632998 -1.8262531 0.83255202 4.9272399 
		-1.4528748 0.87276804 4.9199119 -1.0911577 0.82267952 4.3011851 1.5370882 0.51358211 
		4.147944 2.1335299 0.30652002 4.6963348 0.024771392 0.51133317 4.7628002 -0.40926325 
		0.52046114 4.8320794 -0.81037909 0.45907047 2.6757867 -0.82542813 1.6776705 2.7330577 
		-1.746314 2.022938 2.7682257 -1.6940442 2.1120872 2.5515976 -1.2131348 2.1926785 
		2.5076685 -0.87168014 2.1753232 2.1661422 1.6977634 1.7102485 2.1619444 2.3035038 
		1.4094743 2.3124332 0.24930994 1.8240979 2.3742344 -0.13415135 1.8356274 2.5644355 
		-0.65340447 1.7737629 5.0093918 0.35265163 0.18932094 4.4712119 2.3847406 0.014115222 
		4.6524925 1.7867227 0.20722906 5.1591272 -0.75370383 0.56601906 5.2331057 -1.0938082 
		0.56513011 5.1673532 -1.5849385 0.66715008 5.2522988 -1.6397953 0.49637941 5.0193968 
		-0.72781521 0.25819767 5.0489149 -0.54587418 0.27137309 5.0718927 -0.01030616 0.19725949 
		1.979959 0.93785268 1.8608308 1.9880928 0.16290914 2.2157471 2.4854136 0.44217381 
		1.8888016 2.705539 0.28419435 1.8226681 3.4450932 -0.5881846 1.6434641 3.8787835 
		-1.1090117 1.500628 4.1925297 -0.47686398 1.1708879 4.5808258 0.34397718 0.69119179 
		4.7457638 0.53268522 0.51968163 5.3306279 0.31150612 0.18720904 5.1020713 1.0596331 
		-0.034206159 4.0591302 0.69702303 0.78720486 3.6506376 0.31130227 1.1116633 3.1188326 
		0.64896744 1.3596818 2.8527663 -2.2376401 2.1807878 2.7558744 -2.1281745 2.2851012 
		2.5040271 -1.97816 2.4016409 2.5943394 -2.0994554 2.3240428 4.582304 -2.4001179 1.0713813 
		4.659627 -2.5074849 1.1945851 4.1312361 -2.5112305 1.3176055 4.1265721 -2.4536335 
		1.2062492 5.0331354 -2.2923641 0.86695355 5.089417 -2.2605827 0.92263156 4.2084675 
		-0.66161507 1.2740191 4.5628405 0.17787187 0.80965883 4.3942914 0.9687109 0.68196958 
		4.1397958 0.045460403 1.1166588 3.9246378 -1.4078358 1.627175 3.8088865 -0.70897263 
		1.5085599 3.4857607 -0.7809003 1.7351698 3.3241699 -0.099905632 1.6439227 2.1550071 
		-0.40431821 2.3520298 2.4259133 0.349639 2.0075388 2.3025372 1.1176875 1.8591944 
		2.1068087 0.044381488 2.2637253 2.5246606 -1.6445073 2.3951848 2.4699583 -1.234013 
		2.3699331 2.2144797 -1.0113289 2.4496162 2.2819455 -1.429686 2.477793 3.5905383 -2.5554526 
		1.8436394 3.0840621 -2.3512363 2.1399696 3.1554325 -2.3688426 2.0032415 3.6451685 
		-2.4420366 1.6402706 2.6750982 0.93910599 1.7117944 2.7706079 0.086250938 1.9004456 
		5.5414467 -1.8202547 0.55806881 5.31567 -2.0068874 0.74294525 5.2835255 -2.1313491 
		0.70594358 5.4906363 -1.972129 0.56660956 5.5635557 -1.2840333 0.48606923 5.39502 
		-1.5187916 0.6532172 5.3080626 -1.1076554 0.64734679 5.4880805 -0.8655833 0.46268529 
		4.7025146 1.2012002 0.40910512 5.2437954 0.18401563 0.35971737 4.8287549 0.44683877 
		0.55194312 5.3441057 -0.26208296 0.416329 5.1747341 -0.57627535 0.61510003 5.0069122 
		-0.20600982 0.54886127 4.8458705 -0.47443917 0.73364717 4.3256407 -1.079664 1.2327813 
		3.9212885 -1.3611159 1.5278006 3.4299791 -1.1196958 1.7764739 2.7201264 -0.56393087 
		2.0229416 2.473454 -0.31559044 2.0858269 2.4231446 -0.69529116 2.2842541 2.7306356 
		-0.22967534 1.9433162 3.1431692 -0.5306769 1.8009397 3.0475094 -0.12011128 1.7457545 
		3.0729833 -0.27457368 1.8330016 2.9040287 0.55334926 1.6945161 2.8284602 1.1016325 
		1.5229113 2.4761083 0.091298074 1.9851687 2.4132652 -0.23403277 2.1740079 2.2690485 
		0.84404373 1.7362223;
	setAttr ".pt[166:205]" 4.8439255 0.92002839 0.184617 4.5269122 0.66554821 
		0.48573291 4.1878691 0.15511158 0.84789467 3.7039974 -0.0087298574 1.1586206 3.1712444 
		0.10650522 1.4658064 2.6710365 0.57253897 1.6151493 2.7789176 1.7372729 1.2418919 
		2.8515439 0.96262884 1.4212841 4.3728018 -0.071141675 0.94412792 4.4552174 -0.46714228 
		0.99912399 4.7243509 -0.15349458 0.73645025 4.8731303 0.18170461 0.53460932 5.0348444 
		-0.11784273 0.58273286 4.3935628 -0.22407259 1.0337048 4.2901669 0.59108931 0.86017323 
		4.1917052 1.1380361 0.70263147 4.0449433 1.7711219 0.48010913 4.2250342 1.0103384 
		0.59111124 2.179981 -0.22115698 1.9293144 2.2111945 -1.1565129 2.3184388 2.3697751 
		-1.6786135 2.4560983 2.6575818 -1.9638209 2.3573582 2.6736748 -1.5114776 2.1639407 
		3.0311842 -1.8028052 2.042007 3.5482292 -2.0882494 1.7890221 4.0664783 -2.1830192 
		1.478525 4.5432553 -2.0438209 1.1850243 4.9567456 -1.7171191 0.87328303 5.203155 
		-1.3878914 0.63043916 5.3610148 -1.8315222 0.7188378 5.5624657 -1.5372018 0.51841617 
		5.5563006 -1.0081583 0.28836277 5.2887287 -0.036700483 0.029531183 5.0768471 -0.31762773 
		0.2392285 4.8119779 -0.68936092 0.50995183 4.3913474 -1.0222598 0.82786244 3.9227939 
		-1.2470191 1.0833194 3.3789852 -1.0673093 1.442318 2.851609 -0.77863884 1.6979882 
		2.470726 -0.44608203 1.8198254;
	setAttr -s 206 ".vt";
	setAttr ".vt[0:165]"  -0.40180629 0.92899227 0.1671938 -0.13414419 0.60076046 0.33193564
		 0 0.0610466 0.45678604 0.13414425 0.60076046 0.3319357 0.40292466 0.96861267 0.1678215
		 -0.43155414 1.89846802 0.18069446 -0.14444447 1.49780941 0.36210039 -5.9604645e-08 0.90877247 0.49720806
		 0.14444435 1.49775791 0.36210012 0.4317795 1.90169334 0.18053058 -0.46877229 1.90820026 -0.3328765
		 -0.1027084 2.35412121 -0.36263114 5.9604645e-08 2.52252483 -0.27564567 0.12354112 2.29117203 -0.37528998
		 0.46888077 1.90860844 -0.33284503 -0.43375647 0.99121475 -0.3156724 -0.092409253 1.47920799 -0.33870465
		 0 1.58934116 -0.26077425 0.11324084 1.42401505 -0.35113829 0.43440652 0.98608112 -0.31415641
		 -0.45604408 1.17780685 -0.1407184 -0.48927024 2.21947479 -0.14835703 -0.14530945 2.98089218 -0.059596896
		 0 3.0073814392 -0.03829968 0.14614737 2.98048973 -0.059609771 0.48933244 2.22050667 -0.14835447
		 0.45528305 1.15382957 -0.13976085 0.14572847 1.89868164 -0.097296059 -5.9604645e-08 1.89081478 -0.045150101
		 -0.14572838 1.89868164 -0.097296059 -0.49043399 2.22046661 -0.046941698 -0.45730573 1.15749741 -0.044587135
		 -0.14444441 1.75278664 0.048133194 0 1.73303318 0.093363702 0.14444453 1.75278664 0.048133254
		 0.45645761 1.13194275 -0.048322082 0.49051034 2.22104454 -0.046907842 0.14440602 2.89982128 0.054085135
		 -1.4305115e-06 2.90079021 0.07249856 -0.14444447 2.89964199 0.054282665 -0.45359346 2.063323975 0.110973
		 -0.42559201 1.059191704 0.099508822 -0.14395702 1.10970497 0.2386297 0 0.52584267 0.37570477
		 0.14391536 1.10543633 0.23939887 0.42587233 1.058946609 0.098271906 0.45694458 2.077893257 0.10269749
		 0.13980973 2.32567215 0.22374374 0 1.72863197 0.35844809 -0.1398097 2.32593918 0.22374514
		 -0.25958779 0.88256836 0.25061604 -0.27865508 1.80507469 0.27333707 -0.27055138 2.41491127 0.15430367
		 -0.27952033 2.73750114 0.00301826 -0.29417241 2.75577927 -0.082782269 -0.24344349 1.68233967 -0.48066121
		 -0.2260837 0.85375786 -0.44877046 -0.28200501 1.66901207 -0.11830622 -0.27998233 1.58083439 -0.00079572201
		 -0.27951941 1.2412281 0.16025156 0.25958776 0.88256836 0.25061604 0.27952015 1.81185246 0.27296647
		 0.27055132 2.41491127 0.15430361 0.2795192 2.73750114 0.0030193925 0.29501051 2.75357914 -0.082803369
		 0.24344355 1.70778751 -0.47502261 0.22608376 0.87910557 -0.44355792 0.28200501 1.66901207 -0.1183061
		 0.27952039 1.5827179 -0.0010752082 0.27853751 1.23669624 0.16164881 -0.33394694 0.92140961 0.2075038
		 -0.35907835 1.86561203 0.22547707 -0.34492704 2.35093784 0.11493737 -0.38259912 2.46678257 -0.020530879
		 -0.37834939 2.51356602 -0.10836744 -0.354247 1.47097301 -0.4850201 -0.32898593 0.6307621 -0.45181197
		 -0.38339201 1.33877754 -0.1263364 -0.38464034 1.28426361 -0.027164638 -0.35635531 1.15485954 0.11954296
		 0.38540053 1.33655357 -0.12208182 0.32898623 0.64213181 -0.44922334 0.35424727 1.48150444 -0.48222452
		 0.37827349 2.51357937 -0.10836738 0.38259929 2.46678162 -0.020530879 0.33996671 2.39836407 0.10473025
		 0.35956717 1.87214947 0.22541741 0.33453184 0.92921448 0.20743424 0.35254323 1.17564106 0.11599499
		 0.38534498 1.28261185 -0.027694345 -0.44493738 1.1282711 -0.24376178 -0.4768669 2.087796211 -0.26268601
		 -0.32227242 2.15498352 -0.33501357 -0.26701444 2.32009697 -0.33043575 -0.098073721 2.82500076 -0.22700727
		 0 2.96062469 -0.13152134 0.11890638 2.79919147 -0.23954087 0.26701456 2.33200264 -0.32746804
		 0.3222726 2.15980148 -0.33369958 0.47695875 2.088607788 -0.26281869 0.44512224 1.11668491 -0.23748833
		 0.1341213 1.67826557 -0.27992761 -5.9604645e-08 1.74846458 -0.2104466 -0.13449332 1.68136406 -0.27914304
		 -0.34685892 2.48022842 0.21336374 -0.36810589 2.74144554 0.13414955 -0.43231213 2.69939518 0.10596788
		 -0.41320935 2.52347374 0.17041692 0.13371593 2.078141212 0.34995827 0.152547 2.70068932 0.24825683
		 -1.1920929e-07 1.90534973 0.40595472 -5.9604645e-08 1.47658348 0.48021993 0.2677778 2.41905022 0.26043865
		 0.28657931 2.80575657 0.17489722 0.11563545 3.1380024 -0.26635545 0.25501096 2.66263866 -0.3572107
		 0.24414885 2.24936676 -0.45494312 0.12923783 2.79303932 -0.35790813 -5.9604645e-08 3.39322758 -0.15115273
		 0 3.085813522 -0.2489686 -0.094696999 3.17248154 -0.25352323 -0.10858625 2.85275555 -0.34521931
		 -0.4550302 2.67987061 -0.25241804 -0.34265 2.43349075 -0.37131971 -0.34178361 2.031494141 -0.46569723
		 -0.44758391 2.49687767 -0.31788766 -0.40947869 2.94394112 -0.019767344 -0.40498251 2.97760582 -0.12077838
		 -0.46708107 2.82392311 -0.14279836 -0.4682129 2.82833195 -0.047630072 -0.15254694 2.70111847 0.24825913
		 -0.28574038 2.80556965 0.17525828 -0.26773441 2.40986919 0.26069725 -0.13371584 2.07837677 0.34995961
		 -0.24425665 2.22454548 -0.46057349 -0.25698215 2.66701603 -0.3553977 0.43560195 2.7144022 0.097722292
		 0.36289549 2.79341888 0.12186784 0.34669751 2.4810791 0.2136181 0.4132092 2.52441311 0.17058039
		 0.46821296 2.82831764 -0.047541142 0.40951133 2.94344616 -0.019207299 0.40490568 2.97768021 -0.12080801
		 0.46708107 2.82392597 -0.14281541 0.3419891 2.043036461 -0.46274239 0.44759226 2.49687862 -0.31789696
		 0.34257436 2.43857861 -0.37014002 0.45503008 2.67979813 -0.25247669 0.39250207 2.86973286 -0.22129709
		 0.36140043 2.43178749 -0.2181018 0.3034246 2.61518478 -0.19593811 0.1280424 2.98067188 -0.13776731
		 -5.9604645e-08 3.0094995499 -0.08357954 -0.12755257 2.98083687 -0.137761 -0.30293465 2.614748 -0.19701242
		 -0.36140037 2.43091583 -0.21864378 -0.39253402 2.86819553 -0.22176522 -0.28404689 2.53565407 -0.2569834
		 -0.18099701 2.76643848 -0.23123848 -0.18885931 2.57729244 -0.28724039 -0.18803716 2.89453888 -0.31646591
		 -0.19728947 2.46061325 -0.41844517 -0.19394395 1.93562126 -0.43714827 -0.34141693 2.29451561 -0.28356707
		 -0.37358457 2.697752 -0.29226875 -0.36713612 1.26578426 -0.24748588;
	setAttr ".vt[166:205]" 0.36583507 1.28618717 -0.24284726 0.26471275 1.57196426 -0.24632609
		 0.145051 1.88431263 -0.19709086 0 1.86000824 -0.15968841 -0.14521277 1.8856411 -0.19659412
		 -0.26536846 1.57730007 -0.24503773 -0.18011397 1.08472538 -0.40903813 -0.19567865 1.48486042 -0.31329209
		 0.18885934 2.58198261 -0.28591579 0.19359505 2.74749184 -0.22854841 0.2842918 2.54055882 -0.25512499
		 0.34183657 2.30143833 -0.28127182 0.37448716 2.69702816 -0.29201424 0.18841755 2.89820957 -0.31533039
		 0.19714493 2.47333241 -0.41558045 0.19394398 1.94881821 -0.43430859 0.18011403 1.097005844 -0.4064154
		 0.19563115 1.49019527 -0.31132269 -0.44438243 1.13349056 0.021450579 -0.47723168 2.18357086 0.020865381
		 -0.45551914 2.79063797 0.01770252 -0.38742864 2.90438843 0.062449396 -0.36252135 2.45164967 0.051814377
		 -0.27474019 2.63746643 0.083966315 -0.14197427 2.68254471 0.14509827 -2.3841858e-07 2.6213131 0.18445095
		 0.14197427 2.68238068 0.1450974 0.27474028 2.63746738 0.083966196 0.35987771 2.46617985 0.046337247
		 0.38466692 2.92185974 0.056150913 0.4555192 2.79072952 0.017834604 0.47730982 2.18423843 0.020843446
		 0.44488966 1.11110878 0.015500367 0.37180418 1.26343155 0.046335161 0.27952033 1.47538185 0.085174918
		 0.14444447 1.52391815 0.14690769 0 1.27094555 0.24498999 -0.14444435 1.52391815 0.14690766
		 -0.28002179 1.46661377 0.087428808 -0.37253088 1.25030327 0.051858723;
	setAttr -s 408 ".ed";
	setAttr ".ed[0:165]"  0 70 0 1 2 0 2 3 0 3 60 0 5 71 1 6 7 1 7 8 1 8 61 1
		 10 75 1 11 12 1 12 13 1 13 181 1 15 76 0 16 17 0 17 18 0 18 182 0 0 5 0 1 6 1 2 7 1
		 3 8 1 4 9 0 5 40 1 10 15 0 11 16 1 12 17 1 13 18 1 14 19 0 15 90 0 16 103 1 17 102 1
		 18 101 1 19 100 0 9 46 1 20 31 0 21 91 1 22 153 1 23 152 1 24 151 1 25 99 1 26 35 0
		 27 34 1 28 33 1 29 32 1 20 21 1 22 23 1 23 24 1 24 64 1 25 26 1 26 80 1 27 28 1 28 29 1
		 29 57 1 30 21 1 31 184 0 32 203 1 33 202 1 34 201 1 35 198 0 36 25 1 37 24 1 39 22 1
		 30 31 1 31 78 1 32 33 1 33 34 1 34 68 1 35 36 1 37 38 1 38 39 1 39 53 1 40 185 1
		 41 0 0 42 1 1 43 2 1 44 3 1 45 4 0 46 197 1 47 192 1 49 190 1 40 41 1 41 79 1 42 43 1
		 43 44 1 44 69 1 45 46 1 49 52 0 50 1 0 51 6 1 52 72 0 53 73 1 54 22 1 55 162 1 56 172 0
		 57 77 1 58 32 1 59 42 1 50 51 1 52 189 1 53 54 1 54 154 1 55 56 1 56 171 1 57 58 1
		 58 204 1 59 50 1 60 87 0 61 86 1 62 47 0 63 37 1 64 83 1 65 82 1 66 81 0 67 27 1
		 68 89 1 69 88 1 60 61 1 62 193 1 63 64 1 64 150 1 65 66 1 66 167 1 67 68 1 68 200 1
		 69 60 1 70 50 0 71 51 1 74 54 1 75 55 1 76 56 0 77 20 1 78 58 1 79 59 1 70 71 1 72 188 0
		 73 74 0 74 155 0 75 76 1 77 78 1 78 205 1 79 70 1 80 67 1 81 19 0 82 14 1 84 63 1
		 85 62 0 86 9 1 87 4 0 88 45 1 89 35 1 80 166 1 81 82 1 83 84 0 84 194 0 86 87 1 87 88 1
		 88 199 1 89 80 1 90 20 0 91 10 1 98 177 0 99 14 1 100 26 0 101 168 1 102 169 1 103 170 1
		 76 165 1;
	setAttr ".ed[166:331]" 90 91 1 92 93 0 93 159 0 94 95 0 95 96 0 96 174 0 97 98 0
		 99 100 1 101 102 1 102 103 1 103 173 1 23 38 1 38 191 1 48 49 0 47 48 0 71 104 1
		 72 105 0 104 105 1 40 106 1 105 106 1 5 107 0 107 106 0 107 104 0 8 108 1 47 109 1
		 108 109 1 48 110 0 109 110 0 7 111 0 111 110 1 111 108 0 61 112 1 62 113 1 112 113 1
		 113 109 0 108 112 0 96 114 1 97 115 1 114 179 0 65 116 0 115 116 1 13 117 1 117 180 0
		 114 117 1 95 118 0 118 114 0 12 119 0 119 117 0 118 119 1 94 120 1 120 118 0 11 121 1
		 121 119 0 120 121 1 91 122 1 92 123 0 75 124 0 123 124 1 10 125 1 125 124 0 122 125 0
		 73 126 1 74 127 1 126 127 0 21 128 1 128 127 1 30 129 1 129 128 0 126 129 1 105 187 0
		 106 186 0 49 130 1 52 131 1 130 131 0 51 132 1 132 131 1 6 133 1 132 133 0 133 130 1
		 55 134 0 134 161 0 93 135 1 135 134 1 135 160 0 46 136 1 85 137 0 136 137 1 86 138 1
		 137 138 1 9 139 0 138 139 0 139 136 0 36 140 1 84 141 1 140 141 1 141 195 0 136 196 0
		 83 142 1 25 143 1 142 143 1 142 141 0 140 143 0 82 144 0 14 145 1 144 145 0 98 146 0
		 144 146 1 99 147 1 147 145 0 131 105 0 104 132 0 123 135 0 124 134 0 115 146 0 116 144 0
		 137 113 0 112 138 0 127 156 0 128 122 0 146 178 0 143 147 0 133 111 0 110 130 0 148 142 0
		 149 83 0 150 176 1 151 96 1 152 95 1 153 94 1 154 157 1 155 163 0 156 164 0 148 149 1
		 149 150 1 150 151 1 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 148 147 1 156 122 1
		 157 93 1 157 158 1 158 153 1 159 94 0 160 120 0 161 121 0 162 11 1 158 159 1 159 160 1
		 160 161 1 161 162 1 163 92 0 164 123 0 157 163 1 163 164 1 164 125 1 165 77 1 90 165 1
		 166 81 1 100 166 1 167 67 1 168 27 1 169 28 1 170 29 1;
	setAttr ".ed[332:407]" 171 57 1 167 168 1 168 169 1 169 170 1 170 171 1 167 166 1
		 171 165 1 172 16 0 162 172 1 172 173 1 173 171 1 174 97 0 174 175 1 175 151 1 176 97 1
		 177 149 0 178 148 0 175 176 1 176 177 1 177 178 1 178 145 1 179 115 0 180 116 0 181 65 1
		 182 66 0 174 179 1 179 180 1 180 181 1 181 182 1 183 101 1 182 183 1 183 167 1 184 41 0
		 185 30 1 186 129 0 187 126 0 188 73 0 189 53 1 190 39 1 191 48 1 192 37 1 193 63 1
		 194 85 0 195 137 0 196 140 0 197 36 1 198 45 0 199 89 1 200 69 1 201 44 1 202 43 1
		 203 42 1 204 59 1 205 79 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 200 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 184 1;
	setAttr -s 204 -ch 816 ".fc[0:203]" -type "polyFaces" 
		f 4 -17 0 132 -5
		mu 0 4 0 1 224 3
		f 4 1 18 -6 -18
		mu 0 4 4 235 6 7
		f 4 2 19 -7 -19
		mu 0 4 235 234 9 6
		f 4 -20 3 115 -8
		mu 0 4 9 234 226 11
		f 4 183 185 -188 188
		mu 0 4 12 13 14 15
		f 4 191 193 -196 196
		mu 0 4 16 17 18 19
		f 4 199 200 -192 201
		mu 0 4 20 21 17 16
		f 4 -23 8 136 -13
		mu 0 4 231 23 24 222
		f 4 9 24 -14 -24
		mu 0 4 26 27 233 213
		f 4 10 25 -15 -25
		mu 0 4 27 30 232 233
		f 4 -26 11 360 -16
		mu 0 4 232 30 32 210
		f 4 139 -1 -72 80
		mu 0 4 34 2 228 209
		f 4 -2 -73 81 73
		mu 0 4 5 227 36 37
		f 4 -3 -74 82 74
		mu 0 4 8 5 37 38
		f 4 123 -4 -75 83
		mu 0 4 39 10 8 38
		f 4 -21 -76 84 -33
		mu 0 4 40 41 207 43
		f 4 16 21 79 71
		mu 0 4 1 0 44 35
		f 4 27 166 158 22
		mu 0 4 231 216 46 23
		f 4 -28 12 165 -326
		mu 0 4 45 22 25 47
		f 4 13 29 175 -29
		mu 0 4 29 28 48 49
		f 4 14 30 174 -30
		mu 0 4 28 31 50 48
		f 4 362 361 -31 15
		mu 0 4 33 51 50 31
		f 4 173 -32 -27 -161
		mu 0 4 52 214 221 55
		f 4 204 358 -209 -210
		mu 0 4 56 57 58 59
		f 4 211 209 -214 -215
		mu 0 4 60 56 59 61
		f 4 216 214 -219 -220
		mu 0 4 62 60 61 63
		f 4 -62 52 -44 33
		mu 0 4 230 65 66 67
		f 4 -34 -130 137 -63
		mu 0 4 64 217 68 69
		f 4 -64 -43 -51 41
		mu 0 4 70 71 72 73
		f 4 -65 -42 -50 40
		mu 0 4 74 70 73 75
		f 4 -41 -113 121 -66
		mu 0 4 74 75 76 77
		f 4 -67 -40 -48 -59
		mu 0 4 78 229 215 81
		f 4 117 -47 -60 -109
		mu 0 4 82 83 84 85
		f 4 -68 59 -46 177
		mu 0 4 86 85 84 87
		f 4 229 -232 -234 -235
		mu 0 4 88 89 90 91
		f 4 386 365 61 53
		mu 0 4 208 93 65 230
		f 4 407 -54 62 138
		mu 0 4 94 92 64 69
		f 4 404 -55 63 55
		mu 0 4 95 96 71 70
		f 4 403 -56 64 56
		mu 0 4 97 95 70 74
		f 4 402 -57 65 122
		mu 0 4 98 97 74 77
		f 4 399 -58 66 -378
		mu 0 4 99 206 229 78
		f 4 394 373 108 -373
		mu 0 4 101 102 82 85
		f 4 388 367 234 -367
		mu 0 4 103 104 88 91
		f 4 -97 86 17 -88
		mu 0 4 105 106 4 7
		f 4 239 -242 243 244
		mu 0 4 107 108 109 110
		f 4 69 -370 391 370
		mu 0 4 111 112 113 114
		f 4 -91 -99 -70 60
		mu 0 4 115 116 112 111
		f 4 317 -247 -249 249
		mu 0 4 117 118 119 120
		f 4 -101 91 340 -93
		mu 0 4 223 122 123 212
		f 4 -102 92 341 342
		mu 0 4 125 121 124 126
		f 4 -103 -52 42 -95
		mu 0 4 127 128 72 71
		f 4 405 -104 94 54
		mu 0 4 96 129 127 71
		f 4 -87 -105 95 72
		mu 0 4 227 225 130 36
		f 4 153 146 20 -146
		mu 0 4 131 218 41 40
		f 4 252 254 256 257
		mu 0 4 133 134 135 136
		f 4 260 261 397 376
		mu 0 4 137 138 139 140
		f 4 -266 266 -261 267
		mu 0 4 141 142 138 137
		f 4 352 -271 272 285
		mu 0 4 143 144 145 146
		f 4 150 142 26 -142
		mu 0 4 220 148 55 221
		f 4 141 31 327 326
		mu 0 4 147 54 53 149
		f 4 156 -49 39 -149
		mu 0 4 150 151 80 79
		f 4 400 379 148 57
		mu 0 4 100 152 150 79
		f 4 -147 154 147 75
		mu 0 4 219 132 153 42
		f 4 -133 124 96 -126
		mu 0 4 3 224 106 105
		f 4 241 275 -184 276
		mu 0 4 109 108 13 12
		f 4 390 369 89 -369
		mu 0 4 154 113 112 239
		f 4 98 -127 -135 -90
		mu 0 4 112 116 259 239
		f 4 277 248 -279 -224
		mu 0 4 157 120 119 158
		f 4 -137 127 100 -129
		mu 0 4 222 24 122 223
		f 4 128 101 338 -166
		mu 0 4 25 121 125 47
		f 4 -138 -94 102 -131
		mu 0 4 69 68 128 127
		f 4 406 -139 130 103
		mu 0 4 129 94 69 127
		f 4 104 -125 -140 131
		mu 0 4 130 225 2 34
		f 4 -121 111 -327 -338
		mu 0 4 159 160 147 149
		f 4 -120 110 -151 -112
		mu 0 4 211 161 148 220
		f 4 279 -273 -281 -207
		mu 0 4 162 146 145 163
		f 4 -152 -110 -118 -144
		mu 0 4 257 249 83 82
		f 4 395 -153 143 -374
		mu 0 4 102 236 257 82
		f 4 -255 281 -200 282
		mu 0 4 135 134 21 20
		f 4 -116 105 -154 -107
		mu 0 4 11 226 218 131
		f 4 -155 -106 -124 114
		mu 0 4 153 132 10 39
		f 4 401 -123 113 -380
		mu 0 4 152 98 77 150
		f 4 -122 -141 -157 -114
		mu 0 4 77 76 151 150
		f 4 -167 157 43 34
		mu 0 4 46 216 67 66
		f 4 99 304 -136 126
		mu 0 4 116 167 248 259
		f 4 303 -100 90 35
		mu 0 4 169 167 116 115
		f 4 44 36 302 -36
		mu 0 4 115 87 170 169
		f 4 45 37 301 -37
		mu 0 4 87 84 171 170
		f 4 118 300 -38 46
		mu 0 4 83 172 171 84
		f 4 -291 299 -119 109
		mu 0 4 249 241 172 83
		f 4 47 -162 -174 -39
		mu 0 4 81 215 214 52
		f 4 337 -150 140 -329
		mu 0 4 159 149 151 76
		f 4 -362 363 333 -163
		mu 0 4 50 51 159 174
		f 4 -175 162 334 -164
		mu 0 4 48 50 174 175
		f 4 -176 163 335 -165
		mu 0 4 49 48 175 176
		f 4 325 324 129 -158
		mu 0 4 45 47 68 217
		f 4 -178 -45 -61 -69
		mu 0 4 86 87 115 111
		f 4 392 -179 68 -371
		mu 0 4 114 177 86 111
		f 4 393 372 67 178
		mu 0 4 177 101 85 86
		f 4 287 195 288 -245
		mu 0 4 110 19 18 107
		f 4 -22 186 187 -185
		mu 0 4 44 0 15 14
		f 4 4 181 -189 -187
		mu 0 4 0 3 12 15
		f 4 180 192 -194 -191
		mu 0 4 178 251 18 17
		f 4 6 189 -197 -195
		mu 0 4 6 9 16 19
		f 4 107 190 -201 -199
		mu 0 4 180 178 17 21
		f 4 7 197 -202 -190
		mu 0 4 9 11 20 16
		f 4 171 357 -205 -203
		mu 0 4 254 182 57 56
		f 4 359 -12 207 208
		mu 0 4 58 32 30 59
		f 4 170 202 -212 -211
		mu 0 4 255 254 56 60
		f 4 -11 212 213 -208
		mu 0 4 30 27 61 59
		f 4 169 210 -217 -216
		mu 0 4 184 255 60 62
		f 4 -10 217 218 -213
		mu 0 4 27 26 63 61
		f 4 -9 224 225 -223
		mu 0 4 24 23 185 158
		f 4 -159 220 226 -225
		mu 0 4 23 46 186 185
		f 4 134 228 -230 -228
		mu 0 4 155 156 89 88
		f 4 -53 232 233 -231
		mu 0 4 66 65 91 90
		f 4 389 368 227 -368
		mu 0 4 104 238 155 88
		f 4 -366 387 366 -233
		mu 0 4 65 93 103 91
		f 4 85 238 -240 -238
		mu 0 4 187 188 108 107
		f 4 87 242 -244 -241
		mu 0 4 105 7 110 109
		f 4 318 -92 245 246
		mu 0 4 118 123 122 119
		f 4 168 316 -250 -248
		mu 0 4 256 190 117 120
		f 4 145 255 -257 -254
		mu 0 4 131 40 136 135
		f 4 32 250 -258 -256
		mu 0 4 40 43 133 136
		f 4 152 396 -262 -260
		mu 0 4 164 166 139 138
		f 4 398 377 258 -377
		mu 0 4 140 99 78 137
		f 4 151 259 -267 -264
		mu 0 4 165 164 138 142
		f 4 58 264 -268 -259
		mu 0 4 78 81 141 137
		f 4 -143 268 270 -270
		mu 0 4 55 148 145 144
		f 4 160 269 -275 -274
		mu 0 4 52 55 144 191
		f 4 88 182 -276 -239
		mu 0 4 188 192 13 108
		f 4 125 240 -277 -182
		mu 0 4 3 105 109 12
		f 4 167 247 -278 -222
		mu 0 4 193 256 120 157
		f 4 -128 222 278 -246
		mu 0 4 122 24 158 119
		f 4 172 271 -280 -204
		mu 0 4 243 195 146 162
		f 4 -111 205 280 -269
		mu 0 4 148 161 163 145
		f 4 144 198 -282 -252
		mu 0 4 196 180 21 134
		f 4 106 253 -283 -198
		mu 0 4 11 131 135 20
		f 4 135 305 -284 -229
		mu 0 4 156 168 197 89
		f 4 -35 230 284 -221
		mu 0 4 46 66 90 186
		f 4 298 290 263 -290
		mu 0 4 198 173 165 142
		f 4 38 273 -287 -265
		mu 0 4 81 52 191 141
		f 4 5 194 -288 -243
		mu 0 4 7 6 19 110
		f 4 179 237 -289 -193
		mu 0 4 251 187 107 18
		f 4 283 307 -285 231
		mu 0 4 89 197 186 90
		f 4 159 351 -286 -272
		mu 0 4 195 199 143 146
		f 4 350 -160 -173 -347
		mu 0 4 200 240 253 194
		f 4 349 346 -344 344
		mu 0 4 201 200 194 242
		f 4 -302 292 -171 -294
		mu 0 4 170 171 181 183
		f 4 -303 293 -170 -295
		mu 0 4 169 170 183 247
		f 4 315 -169 -309 309
		mu 0 4 202 246 189 203
		f 4 -305 295 321 -297
		mu 0 4 248 167 203 244
		f 4 -306 296 322 -298
		mu 0 4 197 168 204 205
		f 4 265 286 -307 289
		mu 0 4 142 141 191 198
		f 4 -308 297 323 -227
		mu 0 4 186 197 205 185
		f 4 -311 -310 -296 -304
		mu 0 4 169 202 203 167
		f 4 -312 -316 310 294
		mu 0 4 247 246 202 169
		f 4 -317 311 215 -313
		mu 0 4 117 190 184 62
		f 4 -314 -318 312 219
		mu 0 4 63 118 117 62
		f 4 -315 -319 313 -218
		mu 0 4 26 123 118 63
		f 4 -322 308 -168 -320
		mu 0 4 244 203 189 245
		f 4 -323 319 221 -321
		mu 0 4 205 204 193 157
		f 4 -324 320 223 -226
		mu 0 4 185 205 157 158
		f 4 48 149 -328 161
		mu 0 4 80 151 149 53
		f 4 -334 328 112 -330
		mu 0 4 174 159 76 75
		f 4 -335 329 49 -331
		mu 0 4 175 174 75 73
		f 4 -336 330 50 -332
		mu 0 4 176 175 73 72
		f 4 51 -333 -337 331
		mu 0 4 72 128 125 176
		f 4 -339 332 93 -325
		mu 0 4 47 125 128 68
		f 4 -341 314 23 -340
		mu 0 4 212 123 26 213
		f 4 176 -342 339 28
		mu 0 4 49 126 124 29
		f 4 336 -343 -177 164
		mu 0 4 176 125 126 49
		f 4 -346 -345 -172 -293
		mu 0 4 171 201 242 181
		f 4 -301 291 -350 345
		mu 0 4 171 172 200 201
		f 4 -300 -348 -351 -292
		mu 0 4 172 241 240 200
		f 4 -352 347 -299 -349
		mu 0 4 143 199 173 198
		f 4 306 274 -353 348
		mu 0 4 198 191 144 143
		f 4 -358 343 203 -354
		mu 0 4 57 182 243 162
		f 4 -359 353 206 -355
		mu 0 4 58 57 162 163
		f 4 -356 -360 354 -206
		mu 0 4 161 32 58 163
		f 4 -361 355 119 -357
		mu 0 4 210 32 161 211
		f 4 -363 356 120 -364
		mu 0 4 51 33 160 159
		f 4 -80 70 -387 364
		mu 0 4 35 44 93 208
		f 4 -388 -71 184 236
		mu 0 4 103 93 44 14
		f 4 235 -389 -237 -186
		mu 0 4 13 104 103 14
		f 4 133 -390 -236 -183
		mu 0 4 192 238 104 13
		f 4 97 -391 -134 -89
		mu 0 4 261 113 154 260
		f 4 -392 -98 -86 78
		mu 0 4 114 113 261 252
		f 4 -180 -372 -393 -79
		mu 0 4 252 179 177 114
		f 4 77 -394 371 -181
		mu 0 4 250 101 177 179
		f 4 116 -395 -78 -108
		mu 0 4 258 102 101 250
		f 4 -375 -396 -117 -145
		mu 0 4 237 236 102 258
		f 4 -397 374 251 -376
		mu 0 4 139 166 196 134
		f 4 -398 375 -253 262
		mu 0 4 140 139 134 133
		f 4 76 -399 -263 -251
		mu 0 4 43 99 140 133
		f 4 -85 -379 -400 -77
		mu 0 4 43 207 206 99
		f 4 155 -401 378 -148
		mu 0 4 153 152 100 42
		f 4 -381 -402 -156 -115
		mu 0 4 39 98 152 153
		f 4 -382 -403 380 -84
		mu 0 4 38 97 98 39
		f 4 -83 -383 -404 381
		mu 0 4 38 37 95 97
		f 4 -82 -384 -405 382
		mu 0 4 37 36 96 95
		f 4 -385 -406 383 -96
		mu 0 4 130 129 96 36
		f 4 -386 -407 384 -132
		mu 0 4 34 94 129 130
		f 4 -365 -408 385 -81
		mu 0 4 209 92 94 34;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dfgi" 119;
createNode mesh -n "stemShapeDeformed" -p "modelRNfosterParent1";
	rename -uid "03B9BCB2-AE43-7C25-02E8-60A06A91A128";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "87B07491-954A-450C-EE83-79B122A365CD";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "611FBA81-E946-B4D6-F574-FEA4B3F91B99";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "27D5C8CC-F54C-1E62-0493-D2A963AC660B";
createNode displayLayerManager -n "layerManager";
	rename -uid "53C07205-8547-72AC-2F3A-8E934E79267C";
createNode displayLayer -n "defaultLayer";
	rename -uid "CBD33F0C-584E-ACBD-867B-E28EE5AC2B15";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "6784812B-D540-49DC-E9A5-5EB4415AAEEF";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E42A07A7-7347-E742-3CC9-FD82D3B9393A";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "DFFAE873-354B-14A3-02C3-B0A9BC7C0F28";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "F64A5CED-214D-53C7-A8A9-779235367439";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "A5BE0260-E14E-27E2-0D78-33A1C085DEC0";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "9B024BD5-1E4B-2EB9-9C76-F69C25C63FE0";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode reference -n "modelRN";
	rename -uid "6914E5B4-6647-F3E6-75D2-AEAC0310DEEC";
	setAttr -s 51 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"modelRN"
		"modelRN" 0
		"modelRN" 511
		0 "|modelRNfosterParent1|stemShapeDeformed" "|model:shield_Plant|model:stem" 
		"-s -r "
		0 "|modelRNfosterParent1|shield_bigShapeOrig" "|model:shield_Plant|model:shield_big|model:shield_big" 
		"-s -r "
		0 "|modelRNfosterParent1|thorns_bigTopShapeOrig" "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"-s -r "
		0 "|modelRNfosterParent1|thorns_bigBottomShapeDeformed" "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom" 
		"-s -r "
		0 "|modelRNfosterParent1|shield_BigShapeDeformed" "|model:shield_Plant|model:shield_small|model:shield_Big" 
		"-s -r "
		0 "|modelRNfosterParent1|thorn_smallBottomShapeDeformed" "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom" 
		"-s -r "
		0 "|modelRNfosterParent1|rightStamenShapeDeformed" "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen" 
		"-s -r "
		0 "|modelRNfosterParent1|rightStamen_spikeShape1Deformed" "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1" 
		"-s -r "
		0 "|modelRNfosterParent1|rightStamen_spikeShape2Deformed" "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2" 
		"-s -r "
		0 "|modelRNfosterParent1|rightStamen_pointShapeDeformed" "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point" 
		"-s -r "
		0 "|modelRNfosterParent1|midStamen_pointShapeDeformed" "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point" 
		"-s -r "
		0 "|modelRNfosterParent1|midStamenShapeDeformed" "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen" 
		"-s -r "
		0 "|modelRNfosterParent1|midStamen_spikeShape1Deformed" "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1" 
		"-s -r "
		0 "|modelRNfosterParent1|leftStamen_spikeShape1Deformed" "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1" 
		"-s -r "
		0 "|modelRNfosterParent1|leftStamenShapeDeformed" "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen" 
		"-s -r "
		0 "|modelRNfosterParent1|leftStamen_pointShapeDeformed" "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point" 
		"-s -r "
		2 "|model:shield_Plant|model:stem|model:stemShape" "intermediateObject" " 1"
		
		2 "|model:shield_Plant|model:stem|model:stemShape" "vertexColorSource" " 2"
		
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"colorSet" " -s 2"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"colorSet[0].colorName" " -type \"string\" \"SculptFreezeColorTemp\""
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"colorSet[0].clamped" " 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"colorSet[0].representation" " 4"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"colorSet[1].colorName" " -type \"string\" \"SculptMaskColorTemp\""
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"colorSet[1].clamped" " 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"colorSet[1].representation" " 4"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts" " -s 206"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[0]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[1]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[2]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[3]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[4]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[5]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[6]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[7]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[8]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[9]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[10]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[11]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[12]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[13]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[14]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[15]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[16]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[17]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[18]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[19]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[20]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[21]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[22]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[23]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[24]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[25]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[26]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[27]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[28]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[29]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[30]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[31]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[32]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[33]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[34]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[35]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[36]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[37]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[38]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[39]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[40]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[41]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[42]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[43]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[44]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[45]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[46]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[47]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[48]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[49]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[50]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[51]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[52]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[53]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[54]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[55]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[56]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[57]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[58]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[59]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[60]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[61]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[62]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[63]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[64]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[65]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[66]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[67]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[68]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[69]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[70]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[71]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[72]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[73]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[74]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[75]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[76]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[77]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[78]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[79]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[80]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[81]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[82]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[83]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[84]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[85]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[86]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[87]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[88]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[89]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[90]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[91]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[92]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[93]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[94]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[95]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[96]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[97]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[98]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[99]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[100]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[101]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[102]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[103]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[104]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[105]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[106]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[107]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[108]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[109]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[110]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[111]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[112]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[113]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[114]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[115]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[116]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[117]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[118]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[119]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[120]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[121]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[122]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[123]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[124]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[125]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[126]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[127]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[128]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[129]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[130]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[131]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[132]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[133]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[134]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[135]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[136]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[137]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[138]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[139]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[140]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[141]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[142]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[143]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[144]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[145]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[146]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[147]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[148]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[149]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[150]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[151]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[152]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[153]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[154]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[155]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[156]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[157]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[158]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[159]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[160]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[161]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[162]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[163]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[164]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[165]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[166]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[167]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[168]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[169]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[170]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[171]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[172]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[173]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[174]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[175]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[176]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[177]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[178]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[179]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[180]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[181]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[182]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[183]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[184]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[185]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[186]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[187]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[188]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[189]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[190]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[191]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[192]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[193]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[194]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[195]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[196]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[197]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[198]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[199]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[200]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[201]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[202]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[203]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[204]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pnts[205]" " -type \"float3\" 0 0 0"
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"vertexColorSource" " 2"
		2 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"scaleX" " 3.10325995388516818"
		2 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"scaleY" " 3.10325995388516862"
		2 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"scaleZ" " 4.29443565402266003"
		2 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop|model:thorns_bigTopShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop|model:thorns_bigTopShape" 
		"vertexColorSource" " 2"
		2 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid|model:thorns_bigMidShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid|model:thorns_bigMidShape" 
		"vertexColorSource" " 2"
		2 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom|model:thorns_bigBottomShape" 
		"intermediateObject" " 1"
		2 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom|model:thorns_bigBottomShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom|model:thorns_bigBottomShape" 
		"vertexColorSource" " 2"
		2 "|model:shield_Plant|model:shield_small|model:shield_Big|model:shield_BigShape" 
		"intermediateObject" " 1"
		2 "|model:shield_Plant|model:shield_small|model:shield_Big|model:shield_BigShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|model:shield_Plant|model:shield_small|model:shield_Big|model:shield_BigShape" 
		"vertexColorSource" " 2"
		2 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop|model:thorn_smallTopShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop|model:thorn_smallTopShape" 
		"vertexColorSource" " 2"
		2 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid|model:thorn_smallMidShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid|model:thorn_smallMidShape" 
		"vertexColorSource" " 2"
		2 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom|model:thorn_smallBottomShape" 
		"intermediateObject" " 1"
		2 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom|model:thorn_smallBottomShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom|model:thorn_smallBottomShape" 
		"vertexColorSource" " 2"
		2 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen|model:rightStamenShape" 
		"intermediateObject" " 1"
		2 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen|model:rightStamenShape" 
		"vertexColorSource" " 2"
		2 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1|model:rightStamen_spikeShape1" 
		"intermediateObject" " 1"
		2 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1|model:rightStamen_spikeShape1" 
		"vertexColorSource" " 2"
		2 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2|model:rightStamen_spikeShape2" 
		"intermediateObject" " 1"
		2 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2|model:rightStamen_spikeShape2" 
		"vertexColorSource" " 2"
		2 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point|model:rightStamen_pointShape" 
		"intermediateObject" " 1"
		2 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point|model:rightStamen_pointShape" 
		"vertexColorSource" " 2"
		2 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point|model:midStamen_pointShape" 
		"intermediateObject" " 1"
		2 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point|model:midStamen_pointShape" 
		"vertexColorSource" " 2"
		2 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen|model:midStamenShape" 
		"intermediateObject" " 1"
		2 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen|model:midStamenShape" 
		"vertexColorSource" " 2"
		2 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1|model:midStamen_spikeShape1" 
		"intermediateObject" " 1"
		2 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1|model:midStamen_spikeShape1" 
		"vertexColorSource" " 2"
		2 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1|model:leftStamen_spikeShape1" 
		"intermediateObject" " 1"
		2 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1|model:leftStamen_spikeShape1" 
		"vertexColorSource" " 2"
		2 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen|model:leftStamenShape" 
		"intermediateObject" " 1"
		2 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen|model:leftStamenShape" 
		"vertexColorSource" " 2"
		2 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point|model:leftStamen_pointShape" 
		"intermediateObject" " 1"
		2 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point|model:leftStamen_pointShape" 
		"vertexColorSource" " 2"
		3 "model:polyTweakUV17.output" "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop|model:thorn_smallTopShape.inMesh" 
		""
		3 "model:polyTweakUV6.uvTweak[0]" "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen|model:rightStamenShape.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV22.uvTweak[0]" "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2|model:rightStamen_spikeShape2.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV13.uvTweak[0]" "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1|model:leftStamen_spikeShape1.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV19.uvTweak[0]" "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom|model:thorn_smallBottomShape.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV14.uvTweak[0]" "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen|model:midStamenShape.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV20.uvTweak[0]" "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1|model:rightStamen_spikeShape1.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV7.uvTweak[0]" "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen|model:leftStamenShape.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV15.output" "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid|model:thorns_bigMidShape.inMesh" 
		""
		3 "model:polyTweakUV18.output" "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid|model:thorn_smallMidShape.inMesh" 
		""
		3 "model:polyTweakUV21.uvTweak[0]" "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1|model:midStamen_spikeShape1.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV1.uvTweak[0]" "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop|model:thorns_bigTopShape.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV1.output" "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop|model:thorns_bigTopShape.inMesh" 
		""
		3 "model:polyTweakUV5.uvTweak[0]" "|model:shield_Plant|model:shield_small|model:shield_Big|model:shield_BigShape.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV16.uvTweak[0]" "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom|model:thorns_bigBottomShape.uvSet[0].uvSetTweakLocation" 
		""
		5 3 "modelRN" "|model:shield_Plant|model:stem|model:stemShape.outMesh" 
		"modelRN.placeHolderList[1]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stem|model:stemShape.worldMesh" 
		"modelRN.placeHolderList[2]" ""
		5 4 "modelRN" "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape.inMesh" 
		"modelRN.placeHolderList[3]" ""
		5 4 "modelRN" "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop|model:thorns_bigTopShape.inMesh" 
		"modelRN.placeHolderList[4]" ""
		5 4 "modelRN" "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid|model:thorns_bigMidShape.inMesh" 
		"modelRN.placeHolderList[5]" ""
		5 3 "modelRN" "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid|model:thorns_bigMidShapeOrig.outMesh" 
		"modelRN.placeHolderList[6]" ""
		5 3 "modelRN" "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom|model:thorns_bigBottomShape.worldMesh" 
		"modelRN.placeHolderList[7]" ""
		5 3 "modelRN" "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom|model:thorns_bigBottomShapeOrig.outMesh" 
		"modelRN.placeHolderList[8]" ""
		5 3 "modelRN" "|model:shield_Plant|model:shield_small|model:shield_Big|model:shield_BigShape.worldMesh" 
		"modelRN.placeHolderList[9]" ""
		5 3 "modelRN" "|model:shield_Plant|model:shield_small|model:shield_Big|model:shield_BigShapeOrig.outMesh" 
		"modelRN.placeHolderList[10]" ""
		5 4 "modelRN" "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop|model:thorn_smallTopShape.inMesh" 
		"modelRN.placeHolderList[11]" ""
		5 3 "modelRN" "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop|model:thorn_smallTopShapeOrig.outMesh" 
		"modelRN.placeHolderList[12]" ""
		5 4 "modelRN" "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid|model:thorn_smallMidShape.inMesh" 
		"modelRN.placeHolderList[13]" ""
		5 3 "modelRN" "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid|model:thorn_smallMidShapeOrig.outMesh" 
		"modelRN.placeHolderList[14]" ""
		5 3 "modelRN" "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom|model:thorn_smallBottomShape.worldMesh" 
		"modelRN.placeHolderList[15]" ""
		5 3 "modelRN" "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom|model:thorn_smallBottomShapeOrig.outMesh" 
		"modelRN.placeHolderList[16]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen|model:rightStamenShape.outMesh" 
		"modelRN.placeHolderList[17]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen|model:rightStamenShape.worldMesh" 
		"modelRN.placeHolderList[18]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1|model:rightStamen_spikeShape1.outMesh" 
		"modelRN.placeHolderList[19]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1|model:rightStamen_spikeShape1.worldMesh" 
		"modelRN.placeHolderList[20]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2|model:rightStamen_spikeShape2.outMesh" 
		"modelRN.placeHolderList[21]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2|model:rightStamen_spikeShape2.worldMesh" 
		"modelRN.placeHolderList[22]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point|model:rightStamen_pointShape.outMesh" 
		"modelRN.placeHolderList[23]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point|model:rightStamen_pointShape.worldMesh" 
		"modelRN.placeHolderList[24]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point|model:midStamen_pointShape.outMesh" 
		"modelRN.placeHolderList[25]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point|model:midStamen_pointShape.worldMesh" 
		"modelRN.placeHolderList[26]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen|model:midStamenShape.outMesh" 
		"modelRN.placeHolderList[27]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen|model:midStamenShape.worldMesh" 
		"modelRN.placeHolderList[28]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1|model:midStamen_spikeShape1.outMesh" 
		"modelRN.placeHolderList[29]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1|model:midStamen_spikeShape1.worldMesh" 
		"modelRN.placeHolderList[30]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1|model:leftStamen_spikeShape1.outMesh" 
		"modelRN.placeHolderList[31]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1|model:leftStamen_spikeShape1.worldMesh" 
		"modelRN.placeHolderList[32]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen|model:leftStamenShape.outMesh" 
		"modelRN.placeHolderList[33]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen|model:leftStamenShape.worldMesh" 
		"modelRN.placeHolderList[34]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point|model:leftStamen_pointShape.outMesh" 
		"modelRN.placeHolderList[35]" ""
		5 3 "modelRN" "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point|model:leftStamen_pointShape.worldMesh" 
		"modelRN.placeHolderList[36]" ""
		5 3 "modelRN" "model:polyTweakUV1.output" "modelRN.placeHolderList[37]" 
		"model:thorns_bigTopShape.i"
		5 3 "modelRN" "model:polyTweakUV1.uvTweak[0]" "modelRN.placeHolderList[38]" 
		"model:thorns_bigTopShape.uvst[0].uvtw"
		5 3 "modelRN" "model:polyTweakUV5.uvTweak[0]" "modelRN.placeHolderList[39]" 
		"model:shield_BigShape.uvst[0].uvtw"
		5 3 "modelRN" "model:polyTweakUV6.uvTweak[0]" "modelRN.placeHolderList[40]" 
		"model:rightStamenShape.uvst[0].uvtw"
		5 3 "modelRN" "model:polyTweakUV7.uvTweak[0]" "modelRN.placeHolderList[41]" 
		"model:leftStamenShape.uvst[0].uvtw"
		5 3 "modelRN" "model:polyTweakUV13.uvTweak[0]" "modelRN.placeHolderList[42]" 
		"model:leftStamen_spikeShape1.uvst[0].uvtw"
		5 3 "modelRN" "model:polyTweakUV14.uvTweak[0]" "modelRN.placeHolderList[43]" 
		"model:midStamenShape.uvst[0].uvtw"
		5 3 "modelRN" "model:polyTweakUV15.output" "modelRN.placeHolderList[44]" 
		"model:thorns_bigMidShape.i"
		5 3 "modelRN" "model:polyTweakUV16.uvTweak[0]" "modelRN.placeHolderList[45]" 
		"model:thorns_bigBottomShape.uvst[0].uvtw"
		5 3 "modelRN" "model:polyTweakUV17.output" "modelRN.placeHolderList[46]" 
		"model:thorn_smallTopShape.i"
		5 3 "modelRN" "model:polyTweakUV18.output" "modelRN.placeHolderList[47]" 
		"model:thorn_smallMidShape.i"
		5 3 "modelRN" "model:polyTweakUV19.uvTweak[0]" "modelRN.placeHolderList[48]" 
		"model:thorn_smallBottomShape.uvst[0].uvtw"
		5 3 "modelRN" "model:polyTweakUV20.uvTweak[0]" "modelRN.placeHolderList[49]" 
		"model:rightStamen_spikeShape1.uvst[0].uvtw"
		5 3 "modelRN" "model:polyTweakUV21.uvTweak[0]" "modelRN.placeHolderList[50]" 
		"model:midStamen_spikeShape1.uvst[0].uvtw"
		5 3 "modelRN" "model:polyTweakUV22.uvTweak[0]" "modelRN.placeHolderList[51]" 
		"model:rightStamen_spikeShape2.uvst[0].uvtw"
		8 "|model:shield_Plant|model:stem" "translateX"
		8 "|model:shield_Plant|model:stem" "translateY"
		8 "|model:shield_Plant|model:stem" "translateZ"
		8 "|model:shield_Plant|model:stem" "rotateX"
		8 "|model:shield_Plant|model:stem" "rotateY"
		8 "|model:shield_Plant|model:stem" "rotateZ"
		8 "|model:shield_Plant|model:stem" "scaleX"
		8 "|model:shield_Plant|model:stem" "scaleY"
		8 "|model:shield_Plant|model:stem" "scaleZ"
		8 "|model:shield_Plant|model:shield_big|model:shield_big" "translateX"
		8 "|model:shield_Plant|model:shield_big|model:shield_big" "translateY"
		8 "|model:shield_Plant|model:shield_big|model:shield_big" "translateZ"
		8 "|model:shield_Plant|model:shield_big|model:shield_big" "rotateX"
		8 "|model:shield_Plant|model:shield_big|model:shield_big" "rotateY"
		8 "|model:shield_Plant|model:shield_big|model:shield_big" "rotateZ"
		8 "|model:shield_Plant|model:shield_big|model:shield_big" "scaleX"
		8 "|model:shield_Plant|model:shield_big|model:shield_big" "scaleY"
		8 "|model:shield_Plant|model:shield_big|model:shield_big" "scaleZ"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"scaleX"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"scaleY"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"scaleZ"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"translateX"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"translateY"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"translateZ"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"rotateX"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"rotateY"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"rotateZ"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid" 
		"translateX"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid" 
		"translateY"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid" 
		"translateZ"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid" 
		"rotateX"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid" 
		"rotateY"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid" 
		"rotateZ"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid" 
		"scaleX"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid" 
		"scaleY"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid" 
		"scaleZ"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom" 
		"translateX"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom" 
		"translateY"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom" 
		"translateZ"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom" 
		"rotateX"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom" 
		"rotateY"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom" 
		"rotateZ"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom" 
		"scaleX"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom" 
		"scaleY"
		8 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom" 
		"scaleZ"
		8 "|model:shield_Plant|model:shield_small|model:shield_Big" "translateX"
		8 "|model:shield_Plant|model:shield_small|model:shield_Big" "translateY"
		8 "|model:shield_Plant|model:shield_small|model:shield_Big" "translateZ"
		8 "|model:shield_Plant|model:shield_small|model:shield_Big" "rotateX"
		8 "|model:shield_Plant|model:shield_small|model:shield_Big" "rotateY"
		8 "|model:shield_Plant|model:shield_small|model:shield_Big" "rotateZ"
		8 "|model:shield_Plant|model:shield_small|model:shield_Big" "scaleX"
		8 "|model:shield_Plant|model:shield_small|model:shield_Big" "scaleY"
		8 "|model:shield_Plant|model:shield_small|model:shield_Big" "scaleZ"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop" 
		"translateX"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop" 
		"translateY"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop" 
		"translateZ"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop" 
		"rotateX"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop" 
		"rotateY"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop" 
		"rotateZ"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop" 
		"scaleX"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop" 
		"scaleY"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop" 
		"scaleZ"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid" 
		"translateX"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid" 
		"translateY"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid" 
		"translateZ"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid" 
		"rotateX"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid" 
		"rotateY"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid" 
		"rotateZ"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid" 
		"scaleX"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid" 
		"scaleY"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid" 
		"scaleZ"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom" 
		"translateX"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom" 
		"translateY"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom" 
		"translateZ"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom" 
		"rotateX"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom" 
		"rotateY"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom" 
		"rotateZ"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom" 
		"scaleX"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom" 
		"scaleY"
		8 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom" 
		"scaleZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen" 
		"translateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen" 
		"translateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen" 
		"translateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen" 
		"rotateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen" 
		"rotateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen" 
		"rotateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen" 
		"scaleX"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen" 
		"scaleY"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen" 
		"scaleZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1" 
		"translateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1" 
		"translateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1" 
		"translateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1" 
		"rotateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1" 
		"rotateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1" 
		"rotateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1" 
		"scaleX"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1" 
		"scaleY"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1" 
		"scaleZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2" 
		"translateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2" 
		"translateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2" 
		"translateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2" 
		"rotateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2" 
		"rotateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2" 
		"rotateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2" 
		"scaleX"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2" 
		"scaleY"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2" 
		"scaleZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point" 
		"translateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point" 
		"translateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point" 
		"translateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point" 
		"rotateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point" 
		"rotateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point" 
		"rotateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point" 
		"scaleX"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point" 
		"scaleY"
		8 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point" 
		"scaleZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point" 
		"translateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point" 
		"translateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point" 
		"translateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point" 
		"rotateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point" 
		"rotateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point" 
		"rotateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point" 
		"scaleX"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point" 
		"scaleY"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point" 
		"scaleZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen" 
		"translateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen" 
		"translateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen" 
		"translateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen" 
		"rotateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen" 
		"rotateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen" 
		"rotateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen" 
		"scaleX"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen" 
		"scaleY"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen" 
		"scaleZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1" 
		"translateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1" 
		"translateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1" 
		"translateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1" 
		"rotateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1" 
		"rotateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1" 
		"rotateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1" 
		"scaleX"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1" 
		"scaleY"
		8 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1" 
		"scaleZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1" 
		"translateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1" 
		"translateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1" 
		"translateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1" 
		"rotateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1" 
		"rotateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1" 
		"rotateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1" 
		"scaleX"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1" 
		"scaleY"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1" 
		"scaleZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen" 
		"translateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen" 
		"translateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen" 
		"translateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen" 
		"rotateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen" 
		"rotateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen" 
		"rotateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen" 
		"scaleX"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen" 
		"scaleY"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen" 
		"scaleZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point" 
		"translateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point" 
		"translateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point" 
		"translateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point" 
		"rotateX"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point" 
		"rotateY"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point" 
		"rotateZ"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point" 
		"scaleX"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point" 
		"scaleY"
		8 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point" 
		"scaleZ";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "9C56F9A1-2649-DF2F-0C67-36A7D4626931";
createNode skinCluster -n "skinCluster1";
	rename -uid "A511E691-8043-BE15-3E7E-BFA3041054A5";
	setAttr -s 222 ".wl";
	setAttr ".wl[0:99].w"
		5 0 0.60936035497963514 1 0.26708616577839139 2 0.084971332969123153 
		3 0.027134391868097053 4 0.011447754404753225
		5 0 0.56576694411413375 1 0.32415009748759893 2 0.080691168824797641 
		3 0.020617267821637367 4 0.0087745217518321438
		5 0 0.5932823897347379 1 0.29859049102911317 2 0.077548639105990094 
		3 0.020961160410766462 4 0.0096173197193922966
		5 0 0.7002599394785709 1 0.19930373990075737 2 0.065776997321230657 
		3 0.023025226270207144 4 0.011634097029233867
		5 0 0.74858574589768967 1 0.14174082542040484 2 0.062573047510665933 
		3 0.030269740542596849 4 0.016830640628642608
		5 0 0.73376295685157467 1 0.13431011538715276 2 0.068847379967392583 
		3 0.040151942074385633 4 0.022927605719494374
		5 0 0.71660823997087619 1 0.14329765480865209 2 0.073983674076006978 
		3 0.04311927030173978 4 0.022991160842725056
		5 0 0.69481481985826687 1 0.17846268362524875 2 0.076289792354271704 
		3 0.034518878636805882 4 0.015913825525406756
		5 0 0.36742063855539425 1 0.37317298329794452 2 0.20614201306836444 
		3 0.041274557184364853 4 0.01198980789393192
		5 0 0.40287795702577006 1 0.40287795702577006 2 0.16474759589106217 
		3 0.022465246978333447 4 0.0070312430790644394
		5 0 0.41701412350465655 1 0.41701412350465655 2 0.14011030252607248 
		3 0.019224595086156662 4 0.0066368553784577526
		5 0 0.41113954301687777 1 0.41113954301687777 2 0.14241178057515938 
		3 0.025741920584055271 4 0.0095672128070298304
		5 0 0.42048027714763919 1 0.36310170141741188 2 0.15597474421101329 
		3 0.043716255459771342 4 0.016727021764164306
		5 0 0.42853936341613841 1 0.30732629135135625 2 0.1683882355186879 
		3 0.07002899198534919 4 0.025717117728468353
		5 0 0.38132345926848554 1 0.30521149831143191 2 0.19446550650317532 
		3 0.08973463212624283 4 0.029264903790664418
		5 0 0.34200593396252027 1 0.34085002455528074 2 0.22014707304277131 
		3 0.075018359982686175 4 0.021978608456741506
		5 1 0.0083549021716787016 2 0.13878505109951486 3 0.44369325066857779 
		4 0.36402575167114776 5 0.045141044389080988
		5 1 0.011162294762781327 2 0.19715988353199695 3 0.4675352955120145 
		4 0.28753178980419336 5 0.036610736389013743
		5 1 0.012877607487597828 2 0.19858917314834335 3 0.47889817136405172 
		4 0.27534555450989973 5 0.034289493490107431
		5 1 0.013424887802121369 2 0.1489746995109445 3 0.44908058381704929 
		4 0.34293828051563263 5 0.045581548354252203
		5 1 0.008912860743096827 2 0.085954758006080781 3 0.42869836752804136 
		4 0.41826587760311801 5 0.058168136119663094
		5 2 0.059457755033299454 3 0.42575903716656416 4 0.42575903716656416 
		5 0.07890515282864119 6 0.010119017804931022
		5 2 0.04755401031466943 3 0.44238325318606386 4 0.44238325318606386 
		5 0.06062782200241934 6 0.0070516613107834769
		5 2 0.074697251006236892 3 0.43472205032735445 4 0.43192311523123927 
		5 0.051872740022970348 6 0.00678484341219891
		5 3 0.041530931246226921 4 0.41010481227194923 5 0.44432019827034996 
		6 0.084009787108893993 31 0.020034271102579972
		5 3 0.029189251443583284 4 0.43209576803146416 5 0.47767973258576463 
		6 0.053906096299722352 31 0.0071291516394656742
		5 3 0.032785000164529621 4 0.44285471647087621 5 0.46995860569429437 
		6 0.047537658214708435 31 0.0068640194555913683
		5 3 0.046796727514634096 4 0.42521300192667866 5 0.44168898332077045 
		6 0.06748153238159274 31 0.018819754856324103
		5 3 0.044178755999276266 4 0.3203960831135404 5 0.50160740756736222 
		6 0.077439222498256452 31 0.056378530821564729
		5 4 0.1108707621604508 5 0.71590304564816032 6 0.055536112948940203 
		31 0.10344973498662292 32 0.014240344255825748
		5 4 0.080584881782470516 5 0.74055449827410913 6 0.05383285173599632 
		31 0.11261072679230476 32 0.012417041415119338
		5 3 0.036497082324903111 4 0.31701243478115032 5 0.49202368944857622 
		6 0.097002541523264832 31 0.057464251922105608
		5 5 0.15502996217099052 6 0.48179815983218055 7 0.28460510340272982 
		8 0.03189666528097259 19 0.046670109313126561
		5 5 0.18356645720085876 6 0.58940879104216293 7 0.19583586988226356 
		8 0.0172598590207815 19 0.013929022853933288
		5 4 0.011441211365434467 5 0.27417574640622849 6 0.585291137582023 
		7 0.11730015316398636 19 0.011791751482327587
		5 5 0.33304337534589473 6 0.47264429175901146 7 0.11828014367105408 
		19 0.036416387399856087 31 0.039615801824183589
		5 5 0.20991555678030521 6 0.48024694068716944 7 0.077766498513947735 
		19 0.093865231341708669 31 0.13820577267686901
		5 5 0.037627688712852221 6 0.68481115117162183 19 0.1654726861968511 
		31 0.070734478955751273 32 0.041353994962923586
		5 5 0.039530806025325077 6 0.59982490316802162 19 0.27440189387501046 
		31 0.055342529943267257 32 0.030899866988375557
		5 5 0.11143832732583339 6 0.42034393997585345 7 0.20843003834673673 
		19 0.18036809097310474 31 0.079419603378471718
		5 6 0.99990622301318477 7 6.6169934341585898e-07 19 9.1066179399123973e-05 
		31 1.1957059705044766e-06 32 8.5340210218739011e-07
		5 6 0.34879595261572954 7 0.064900467799015177 8 0.019400145848403428 
		19 0.49811901772561246 20 0.068784416011239427
		5 5 0.38133439769326377 6 0.15820920777322042 19 0.047086499148221994 
		31 0.37536099037976234 32 0.038008905005531453
		5 5 0.069022824873579858 6 0.48716928526255604 7 0.11774179334599888 
		19 0.25292057373841392 31 0.073145522779451244
		5 5 0.34972257190716344 6 0.2882109372345118 7 0.038566779572791171 
		19 0.060184285687672909 31 0.2633154255978607
		5 6 0.28350350987140882 7 0.24865766352883772 8 0.079110774437690129 
		19 0.30294780242480618 20 0.085780249737257272
		5 6 0.3378038436666409 7 0.022908891957790709 19 0.61289712617292957 
		20 0.021045078199860658 32 0.0053450600027780456
		5 5 0.46134475765627991 6 0.14709513686749892 19 0.026011286044887547 
		31 0.3241231499754757 32 0.041425669455857954
		5 3 0.037903561143026301 4 0.27127885163016208 5 0.53458358608159218 
		6 0.08135081032067551 31 0.074883190824544005
		5 3 0.1021886969479328 4 0.36243028007536365 5 0.4383519363195309 
		6 0.044322795861768155 31 0.05270629079540437
		5 4 0.085616596411992915 5 0.74492931601353263 6 0.042403494593681736 
		31 0.1140273120490458 32 0.013023280931746772
		5 5 0.44743359374825442 6 0.18101927296140713 19 0.030426002568142402 
		31 0.29576710408777912 32 0.045354026634416872
		5 3 0.17636038658128705 4 0.45542572421464744 5 0.31796139561735504 
		6 0.027947048365437328 31 0.022305445221273094
		5 3 0.085763155139123956 4 0.3808912609360135 5 0.4595710618742358 
		6 0.034933885145468274 31 0.03884063690515855
		5 5 0.42672871809545654 6 0.033434893587055613 19 0.019893105514234153 
		31 0.42702341935821259 32 0.092919863445041051
		5 5 0.40579408646390447 6 0.029096242688830348 19 0.023145665593286908 
		31 0.41549517494453225 32 0.12646883030944603
		5 5 0.066774378740008314 6 0.2068487207265228 19 0.17459714514624297 
		31 0.29329618061186719 32 0.25848357477535872
		5 6 0.49219665396036816 19 0.49219665396036816 20 0.00110916389170388 
		31 0.007263178272774431 32 0.0072343499147853752
		5 5 0.31271520170298961 6 0.061688980081886211 19 0.038368881465855292 
		31 0.4215270268601774 32 0.1656999098890915
		5 5 0.35036071843931577 6 0.048966756504352948 19 0.043370069903171979 
		31 0.39806840034982482 32 0.15923405480333433
		5 5 0.12724706331537677 6 0.22506519309071291 19 0.22138226699265631 
		31 0.24355003636868694 32 0.18275544023256704
		5 6 0.47682236907372749 19 0.47682236907372749 20 0.0055057227051423206 
		31 0.020857551604677962 32 0.019991987542724781
		5 6 0.065915503373206438 7 0.47219775194707125 8 0.367517620538233 
		9 0.083196278222016987 10 0.011172845919472303
		5 6 0.086864140216134964 7 0.43209621384246466 8 0.37890597878185012 
		9 0.087333055268333848 19 0.014800611891216514
		5 6 0.072132627629769033 7 0.48651143587327078 8 0.36028907118771858 
		9 0.070817640918284797 10 0.010249224390956718
		5 6 0.099833425720325331 7 0.45941605943783265 8 0.36670539433272981 
		9 0.060750591836079025 19 0.013294528673033268
		5 6 0.11957356983733525 7 0.40747080130963298 8 0.34979036801956048 
		19 0.068323958782608593 20 0.054841302050862795
		5 6 0.073298183107773945 7 0.18822163100633263 8 0.16873916842382516 
		19 0.30076098778526456 20 0.26898002967680379
		5 6 0.10738986708406131 7 0.37846774026919172 8 0.3521601537967371 
		9 0.075885066110053509 19 0.086097172739956387
		5 6 0.069158861915087272 7 0.13612889345120013 8 0.12562566085585034 
		19 0.34717671359832203 20 0.32190987017954015
		5 7 0.017936351260007671 8 0.3972866825582963 9 0.55251841642035948 
		10 0.029039736949508503 11 0.0032188128118281938
		5 7 0.021203074196270506 8 0.38537634170977997 9 0.55348274483769078 
		10 0.036187961187802195 11 0.003749878068456702
		5 7 0.051051885657200785 8 0.39149972601272182 9 0.45165953283255145 
		10 0.094827463678835933 11 0.010961391818690033
		5 7 0.073469197409070389 8 0.37495797305873241 9 0.39588473892396819 
		10 0.13749328024783106 11 0.018194810360398047
		5 7 0.083379387778687489 8 0.36649937760699575 9 0.37536154359087587 
		10 0.15246683859675053 11 0.022292852426690424
		5 7 0.083663515533746111 8 0.36862160713674208 9 0.37520975238623322 
		10 0.14948393171772834 11 0.023021193225550223
		5 7 0.073917142623844467 8 0.38329796719010628 9 0.39452640128839911 
		10 0.12863300877744049 11 0.019625480120209517
		5 7 0.048680767716115896 8 0.41065745297906597 9 0.44790798646759378 
		10 0.081638522102175426 11 0.011115270735049039
		5 9 0.011302344790090513 10 0.06746443926560021 11 0.44180387068196081 
		12 0.45327066344856376 13 0.026158681813784772
		5 9 0.010845839419893434 10 0.05657729271294671 11 0.42879784764561257 
		12 0.46644849960641199 13 0.037330520615135317
		5 9 0.0071772814204830917 10 0.038518871591453376 11 0.418134427247223 
		12 0.49423133167106253 13 0.041938088069778071
		5 10 0.030146040440649967 11 0.41445940043074042 12 0.50860813376356417 
		13 0.0414794026519845 14 0.0053070227130609911
		5 9 0.004880923863697679 10 0.031458500096445539 11 0.43301178911816957 
		12 0.49502668599573324 13 0.035622100925954046
		5 9 0.0051731719576189657 10 0.038132906577653343 11 0.45687697300072794 
		12 0.47503286552054225 13 0.024784082943457363
		5 9 0.0053624333132957121 10 0.045064583066293191 11 0.46569218133268869 
		12 0.46807698015239602 13 0.015803822135326235
		5 9 0.0073569493207406049 10 0.057299352561217473 11 0.46446526028473795 
		12 0.45483843761158049 13 0.016040000221723485
		5 11 0.011606844082472433 12 0.34241503288376535 13 0.47250707058866481 
		14 0.16755874411211058 15 0.0059123083329868905
		5 11 0.0079739226346970862 12 0.26690437645812642 13 0.53096009659006105 
		14 0.19144272198169801 15 0.0027188823354175533
		5 11 0.0056081340159261318 12 0.27036290487215708 13 0.56072187837138476 
		14 0.16121357567203815 17 0.0020935070684939133
		5 11 0.006399602585236413 12 0.396727041224673 13 0.50057024776961589 
		14 0.09385189099689141 17 0.0024512174235832821
		5 11 0.01725151869963604 12 0.46366283299323863 13 0.46366283299323863 
		14 0.052516072398030487 17 0.0029067429158562271
		5 10 0.0061428185273281208 11 0.040734987960948543 12 0.47227607714112135 
		13 0.4323061886438741 14 0.048539927726727931
		5 11 0.036839282224733989 12 0.47345718094059974 13 0.41339482997365196 
		14 0.067646995799504381 15 0.0086617110615099281
		5 11 0.02180950232750058 12 0.43263451034527695 13 0.42088758029014717 
		14 0.11525674638393033 15 0.0094116606531450091
		5 11 0.00047339082121726598 12 0.0027625764922875411 13 0.01018733529713897 
		14 0.94578259219733996 15 0.040794105192016275
		5 12 0.032478476577773155 13 0.28975721332733578 14 0.61891353151369799 
		15 0.051210405141540682 17 0.0076403734396524479
		5 12 0.026487267714450501 13 0.37226257796356277 14 0.57265075540808685 
		15 0.0092415723300387775 17 0.019357826583861242
		5 12 0.0010500054116434436 13 0.010336477820362887 14 0.98686453945415065 
		15 0.00011295610719753275 17 0.001636021206645541
		5 11 0.0038616772671101404 12 0.055172195412718658 13 0.1513853457394517 
		14 0.77494534276306259 17 0.014635438817656958
		5 11 0.02382752950224248 12 0.34963620435941795 13 0.41853939205709439 
		14 0.19675833829798892 15 0.011238535783256334;
	setAttr ".wl[100:199].w"
		5 11 0.031913800841884284 12 0.21232453430922232 13 0.23157608059292992 
		14 0.45076609230112252 15 0.073419491954841043
		5 11 0.00081545376548402963 12 0.0042025632716522392 13 0.0063985867876980261 
		14 0.93530049084734157 15 0.053282905327824072
		5 40 0.013797148437193507 41 0.068725519309522087 42 0.77231965359100219 
		43 0.0030325205395028776 45 0.14212515812277934
		5 40 7.9062046804225354e-06 41 5.381436071148518e-05 42 0.99915192674102293 
		43 2.2854866429208341e-06 45 0.00078406720694223142
		5 40 0.0086181812438547341 41 0.082047854615898613 42 0.82444012572006409 
		43 0.0042849275419902973 45 0.080608910878192316
		5 40 0.036658358225474606 41 0.39276372077202187 42 0.4850538134605526 
		43 0.048717668675499336 45 0.036806438866451546
		5 40 0.0032040488709649379 41 0.031831710525934982 42 0.94515146220856727 
		43 0.019151670946639363 45 0.00066110744789342761
		5 40 0.015630375386389762 41 0.080050731623006119 42 0.85836172806947164 
		43 0.044437288368295733 45 0.0015198765528366546
		5 40 0.1158440288792946 41 0.38248979277453626 42 0.43439036697118749 
		43 0.049621978423426312 45 0.017653832951555263
		5 40 0.10151065818896675 41 0.34387341453880238 42 0.45492685738666977 
		43 0.023350652561252214 45 0.076338417324308724
		5 36 0.0010568839127888788 37 0.0043174976903697961 38 0.032191204131852662 
		39 0.84389379851928137 40 0.1185406157457073
		5 36 0.0020054396051408137 37 0.0072463993806023835 38 0.044039241820000033 
		39 0.666035706255386 40 0.28067321293887082
		5 36 0.0019345584030362674 37 0.0072464545944321192 38 0.046610997076342871 
		39 0.61267379201744643 40 0.33153419790874233
		5 36 0.0017135068442996216 37 0.0072345018351738814 38 0.056569310786688233 
		39 0.64328463105780564 40 0.29119804947603267
		5 36 0.0024456298032045857 37 0.011705478392454539 38 0.10623659171094758 
		39 0.6648387529999108 40 0.21477354709348248
		5 36 0.0033536046589365803 37 0.017586334769824994 38 0.16630994430897983 
		39 0.66584339744412557 40 0.14690671881813308
		5 36 0.0028514440238580725 37 0.015592389826859742 38 0.15431855088204591 
		39 0.73078800511273101 40 0.096449610154505219
		5 36 0.0010669362270548854 37 0.0054126689788715297 38 0.054466387159406576 
		39 0.88179631692928329 40 0.057257690705383744
		5 36 0.013312443466053999 37 0.18359353005571508 38 0.56515046684209069 
		39 0.2333508771543305 47 0.0045926824818097473
		5 36 0.015306382005758118 37 0.15660223806931231 38 0.48835285311511512 
		39 0.33194194712165265 40 0.007796579688161864
		5 36 0.017024363234772324 37 0.18362409501999916 38 0.45944643745158448 
		39 0.33194068959188744 40 0.0079644147017565725
		5 36 0.015694582787993513 37 0.25157635463431549 38 0.47404929791674183 
		39 0.25144845373324037 47 0.0072313109277085934
		5 36 0.012691645142501588 37 0.35410718977470196 38 0.49489327651002674 
		39 0.13238228295764154 47 0.0059256056151282292
		5 36 0.01472299823306009 37 0.41876731539126405 38 0.47563034989419584 
		39 0.083318218206065373 47 0.0075611182754146168
		5 36 0.019938487154163326 37 0.41104101019088035 38 0.47294243096707456 
		39 0.085763865296947017 47 0.010314206390934741
		5 36 0.018720617476605902 37 0.32325093463366916 38 0.52602955797499373 
		39 0.12499573460018161 47 0.0070031553145496065
		5 35 0.011553214383069471 36 0.37820741484498144 37 0.49181889949394469 
		38 0.061472512113126807 47 0.056947959164877569
		5 35 0.021300872058731428 36 0.32712412935960272 37 0.43326875158880263 
		38 0.12755774182655921 47 0.090748505166303881
		5 36 0.30007284495983932 37 0.4010387428336275 38 0.15193312874681489 
		39 0.021324043486790019 47 0.1256312399729283
		5 36 0.30122975605675856 37 0.37661702066868891 38 0.12269690201709292 
		39 0.014001599681323256 47 0.18545472157613641
		5 36 0.28772408129685278 37 0.32689902776045437 38 0.075113908909948873 
		47 0.28563945512530198 48 0.024623526907442024
		5 36 0.13285403800522069 37 0.14027666640633196 38 0.027454326464276431 
		47 0.64260539170640085 48 0.056809577417770006
		5 36 0.17500975173428801 37 0.1856686721360746 38 0.029028158502086565 
		47 0.55165322733266853 48 0.05864019029488237
		5 36 0.39552403483923831 37 0.45242675472750055 38 0.042947972233285336 
		47 0.098315112896722845 48 0.010786125303253109
		5 33 0.045733418479489682 34 0.33138600040145721 35 0.44528428639201145 
		36 0.078929412779646005 54 0.098666881947395549
		5 33 0.088404973353842439 34 0.36413645912600739 35 0.36202877251537902 
		36 0.080692743621845614 54 0.10473705138292559
		5 33 0.086904963025328588 34 0.37410482290495745 35 0.35282543739076333 
		36 0.049049962560573937 54 0.13711481411837684
		5 33 0.054624466533434259 34 0.35347601737247419 35 0.35251642649189074 
		36 0.029217411108056746 54 0.210165678494144
		5 33 0.021003294875626081 34 0.35467094737907545 35 0.24289302011035019 
		36 0.01394138591992055 54 0.36749135171502778
		5 33 0.0014081596871064375 34 0.054281278750783604 35 0.016766695845245511 
		54 0.92371958293712031 55 0.0038242827797441204
		5 34 0.016432602252493426 35 0.0062658872388704793 36 0.00080755821456404892 
		54 0.97363564497624433 55 0.0028583073178276358
		5 33 0.024673855436609 34 0.28561935087336932 35 0.2344900462362243 
		36 0.027561750175029251 54 0.42765499727876816
		5 32 0.095050397822613014 33 0.41131562565487284 34 0.35109996636959773 
		35 0.079573954110464779 54 0.062960056042451681
		5 32 0.17353082164708614 33 0.42356521647021983 34 0.28857082111116511 
		35 0.066024500806343728 54 0.0483086399651853
		5 32 0.18176440170759511 33 0.42381155649935198 34 0.29582776678190403 
		35 0.052915550689297902 54 0.045680724321850961
		5 32 0.13004822023742382 33 0.43937531813018577 34 0.34939447316755473 
		35 0.037027496213091503 54 0.044154492251744136
		5 20 0.03060769212678793 32 0.086873445823992132 33 0.43754255126227376 
		34 0.39529300103343773 54 0.04968330975350848
		5 20 0.053327302418552019 32 0.066691042002771497 33 0.4149735288296601 
		34 0.39927432672884039 54 0.065733800020175884
		5 32 0.065640211819401703 33 0.40000408581304475 34 0.39199524670493108 
		35 0.04751109603807803 54 0.094849359624544452
		5 32 0.069562476490465028 33 0.39090545416994887 34 0.37426010670478294 
		35 0.071148182454424419 54 0.094123780180378647
		5 34 0.0035765112268727347 35 0.13001360399499565 36 0.82821801245613547 
		37 0.019851033496817556 47 0.01834083882517859
		5 34 0.018315549784975529 35 0.38215907922089037 36 0.48924487240088249 
		37 0.042414280797516191 47 0.067866217795735428
		5 35 0.30766607248429845 36 0.4094489010178507 37 0.057470600900325824 
		47 0.1629115442488345 48 0.062502881348690531
		5 35 0.28804925859331304 36 0.46065436092649403 37 0.049347909793169276 
		47 0.16172781886123949 48 0.04022065182578427
		5 34 0.018538797501014229 35 0.28043322449492464 36 0.50496057273650818 
		37 0.047397539820230393 47 0.1486698654473225
		5 34 0.038647801933087422 35 0.30270507216734516 36 0.42219439409411497 
		37 0.082033926457684189 47 0.15441880534776828
		5 34 0.059668795204979981 35 0.30994597796548462 36 0.39268168016879262 
		37 0.10727314748315088 47 0.13043039917759203
		5 34 0.038564472172042549 35 0.28285998173445609 36 0.48708553575698316 
		37 0.10070727532504672 47 0.090782735011471397
		5 5 0.030634288311491269 31 0.27978294937641995 32 0.45355541924206522 
		33 0.20628556432386397 34 0.029741778746159648
		5 5 0.023959278943242988 6 0.016696675231615613 31 0.33248503416288544 
		32 0.51076339348096744 33 0.1160956181812885
		5 6 0.025333083055637896 19 0.025333083055637896 31 0.24844875572775291 
		32 0.51808870266133766 33 0.18279637549963365
		5 6 0.036987993103082047 19 0.044901624025772517 31 0.10553476982080827 
		32 0.52645330116789657 33 0.28612231188244058
		5 6 0.060140927588676979 19 0.17498467294998732 20 0.083843155126847826 
		32 0.40401904293252694 33 0.27701220140196087
		5 6 0.043333887240896547 19 0.43713133621796463 20 0.23563127442663412 
		32 0.15957011158911244 33 0.12433339052539234
		5 19 0.13256402016560873 20 0.099833138917072087 31 0.11335985308206616 
		32 0.3777043740942615 33 0.27653861374099159
		5 6 0.044973493214517143 19 0.052367933326792716 31 0.21483950246618622 
		32 0.42035459923253271 33 0.26746447175997123
		5 8 0.016268276342181868 9 0.18607072172621486 10 0.58625844065914923 
		11 0.20060508146882425 12 0.010797479803629864
		5 8 0.023027706286072556 9 0.23468920925547299 10 0.48243837903710279 
		11 0.24116841714968779 12 0.018676288271663958
		5 8 0.026154511980815896 9 0.28569668925776015 10 0.43024291535233816 
		11 0.23545471631730625 12 0.022451167091779599
		5 8 0.025550965150982603 9 0.32498380535926935 10 0.41676236151078483 
		11 0.21180109273449274 12 0.020901775244470438
		5 8 0.027834998976316954 9 0.34406522176360593 10 0.41009287876358419 
		11 0.19712382626991601 12 0.020883074226576988
		5 8 0.032467392459240518 9 0.33809382606295263 10 0.41074846977705576 
		11 0.19646176311393013 12 0.022228548586820954
		5 8 0.03142447244777298 9 0.30749982746602866 10 0.44437484797180016 
		11 0.19714049081439258 12 0.019560361300005723
		5 8 0.02120110205118118 9 0.23434656208508123 10 0.54452922500650647 
		11 0.18756143407657397 12 0.012361676780657188
		5 0 0.044920534373527422 1 0.20337550705172963 2 0.38866386376607431 
		3 0.30810835279996213 4 0.05493174200870659
		5 0 0.031920879035684795 1 0.12093734879828742 2 0.39372604341266271 
		3 0.38200529240354758 4 0.071410436349817488
		5 0 0.026838416864502133 1 0.098975188860940949 2 0.40371584174751857 
		3 0.39553045904687667 4 0.074940093480161729
		5 0 0.03276869319498809 1 0.14260313279101183 2 0.4203708451627452 
		3 0.34099304594804603 4 0.063264282903208791
		5 0 0.037446923776081623 1 0.26902100979599253 2 0.46925225048190133 
		3 0.19176279793486575 4 0.032517018011158756
		5 0 0.032499617531683296 1 0.4156904575273781 2 0.46631181453294884 
		3 0.073320560613676519 4 0.012177549794313207
		5 0 0.037233265933812904 1 0.42256411349107537 2 0.44690375876903204 
		3 0.080152501763320588 4 0.013146360042759203
		5 0 0.051003586613965313 1 0.34721418031208129 2 0.41654967111701929 
		3 0.15895694471362895 4 0.026275617243305176
		5 38 0.0085005861551539115 39 0.12609351300173646 40 0.79430722257576103 
		41 0.062366950898110243 42 0.0087317273692383846
		5 38 0.0081073811140525056 39 0.15662966503487469 40 0.80612519715552966 
		41 0.025364459124932563 42 0.0037732975706105186
		5 38 0.011050949444167554 39 0.22205919220498627 40 0.73832212698772892 
		41 0.024757982042075386 42 0.0038097493210417803
		5 38 0.011758870927061477 39 0.21954866431772729 40 0.71850708791843743 
		41 0.043753309813492264 42 0.0064320670232816237
		5 38 0.0071837795308724219 39 0.13262730867623101 40 0.77612674245036573 
		41 0.075547583884674377 42 0.0085145854578563968
		5 38 0.00345404604636605 39 0.060789163472457566 40 0.82872618844407264 
		41 0.099098750449847547 42 0.0079318515872560773
		5 38 0.0036824172035132617 39 0.056630203400109651 40 0.80729354047526802 
		41 0.12192506837157126 42 0.010468770549537786
		5 38 0.0064303329447960291 39 0.08828784063439174 40 0.77678628733388955 
		41 0.1150298970738147 42 0.013465642013107942
		5 0 0.17091661114678222 1 0.35809851837073176 2 0.35494493795175036 
		3 0.09511061865602799 4 0.020929313874707773
		5 0 0.15767529081150958 1 0.30638372778481032 2 0.32929434648619293 
		3 0.17021779922823985 4 0.036428835689247166
		5 0 0.15834208317473589 1 0.2749645942439079 2 0.32180065681588366 
		3 0.19911298606838376 4 0.045779679697088758
		5 0 0.19399581622108794 1 0.30841496060256274 2 0.30741890681511136 
		3 0.15059486381961754 4 0.039575452541620579
		5 0 0.22805930720262288 1 0.36629270163719652 2 0.31203526182564328 
		3 0.07324830879367164 4 0.020364420540865767
		5 0 0.23890444051486481 1 0.40160304672019764 2 0.31510858678981168 
		3 0.034708964798047637 4 0.0096749611770783339
		5 0 0.21353391500512436 1 0.40858433072978928 2 0.342295485877884 
		3 0.028231103496343623 4 0.0073551648908588823
		5 0 0.19246826554551719 1 0.39155892201495096 2 0.36377678057162394 
		3 0.04212072879506628 4 0.010075303072841834
		5 0 0.45763083858206499 1 0.38641570873864972 2 0.11757902069586022 
		3 0.028265657788601361 4 0.01010877419482374
		5 0 0.53326483266523572 1 0.29373754903163996 2 0.11605622595504142 
		3 0.041460356641265732 4 0.015481035706817203;
	setAttr ".wl[200:221].w"
		5 0 0.62597532842089132 1 0.20833999954221596 2 0.097414055288452775 
		3 0.047675905250253607 4 0.020594711498186272
		5 0 0.6665272206150139 1 0.18801637795743503 2 0.084833482107072145 
		3 0.041054279528495607 4 0.019568639791983183
		5 0 0.61664860987510883 1 0.24149982722364605 2 0.091034641320432652 
		3 0.034413398043017178 4 0.01640352353779535
		5 0 0.51378490820791267 1 0.34581198694422366 2 0.10119377377350992 
		3 0.027087775332667503 4 0.012121555741686265
		5 0 0.45006907652630085 1 0.41396064701017921 2 0.10488542940066369 
		3 0.021989216317304817 4 0.0090956307455514473
		5 0 0.44059391107955725 1 0.42503629893431571 2 0.10593230003740396 
		3 0.020636942723237711 4 0.0078005472254854113
		5 1 0.044968557722771085 2 0.4240103731649717 3 0.4240103731649717 
		4 0.09094674711635499 5 0.016063948830930496
		5 1 0.029718520889810595 2 0.38629781218804515 3 0.41658148170334947 
		4 0.14676424622776416 5 0.020637938991030683
		5 1 0.024818986866985041 2 0.32917170704227805 3 0.42775825901253722 
		4 0.1957526559098943 5 0.022498391168305341
		5 1 0.034963860247269489 2 0.3282121770680651 3 0.4192183387479213 
		4 0.19397487637701818 5 0.023630747559725981
		5 1 0.062089586770675657 2 0.39464817646845518 3 0.40832806862082605 
		4 0.11819857349158508 5 0.016735594648457967
		5 0 0.010545040986026937 1 0.10476698646728982 2 0.47614559780346116 
		3 0.35196020855063676 4 0.056582166192585326
		5 0 0.0096055001078103105 1 0.10492731623253805 2 0.48894640825013719 
		3 0.35478423095664019 4 0.041736544452874391
		5 1 0.076797665191497361 2 0.43961477753299399 3 0.41751358608543948 
		4 0.055255502839167345 5 0.010818468350901793
		5 39 0.01425441930646151 40 0.40282887603197604 41 0.43826364219442987 
		42 0.13377372028582887 45 0.010879342181303712
		5 39 0.038327287676804773 40 0.52594878445491489 41 0.35981948750792891 
		42 0.068716459656714302 43 0.0071879807036369881
		5 39 0.041352396912282048 40 0.61872493336522016 41 0.29426173645329351 
		42 0.036450908423126399 43 0.0092100248460777866
		5 39 0.026669167222337621 40 0.52174285466762749 41 0.37684391226924546 
		42 0.054465319621955541 43 0.020278746218833851
		5 39 0.0092544495194142942 40 0.43914689277254643 41 0.43914689277254643 
		42 0.088536751995950722 43 0.023915012939542218
		5 39 0.0040574995006070601 40 0.39320815738510967 41 0.46889310104873194 
		42 0.12258976360322225 43 0.011251478462329058
		5 40 0.2581406727540736 41 0.56749993465014248 42 0.16805847668474821 
		43 0.0029497227252013461 45 0.0033511931858344283
		5 39 0.0043926430146080143 40 0.28361643594553287 41 0.49767839565303984 
		42 0.20519396012558055 45 0.0091185652612387116;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 -0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 -0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 -0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 -0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 -0 0.210011846539538 0.045642596473303459 -0.97663287764657492 -0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 -0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 -0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 -0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 -0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 -0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 -0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 -0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 -0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 -0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 -0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 -0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 -0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 -0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 -0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 -0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 -0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 -0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 -0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 -0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 -0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 -0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 -0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 -0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 -0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 -0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 -0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 -0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 -0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 -0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 -0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 -0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 -0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 -0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 -0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 -0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 -0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 -0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 -0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 -0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 -0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 -0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 -0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 -0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 -0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 -0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 -0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 -0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 -0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 -0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 -0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 -0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 -0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 -0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 -0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 -0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 -0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 -0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 -0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 -0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 -0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 -0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 -0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 -0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 -0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924785605262508 0.69647275897298966 0.6375904212684681 -0
		 0.89339606825899753 0.44836933267261586 -0.028432494404777593 0 -0.3056784495251747 0.56025943769584596 -0.76985066601817032 0
		 -3.5395339858223207 -2.4005302806614877 -1.4268589866057155 1;
	setAttr ".pm[32]" -type "matrix" -0.27889487958311754 0.70693339335951921 0.6499714020597479 -0
		 0.8885321944844633 0.44672740782126169 -0.10461913049686476 0 -0.36431879653257332 0.54834277642227769 -0.75272306596687089 0
		 -4.0483566124710331 -2.4178888719510168 -1.0785179654948196 1;
	setAttr ".pm[33]" -type "matrix" -0.23031896582471262 0.65282056315424064 0.72164983635030056 -0
		 0.83303853409609785 0.51558677430374356 -0.20054196287581566 0 -0.50299102844132282 0.55497350430992753 -0.66257409760833519 0
		 -4.4246285576916371 -2.6889499794631448 -0.5852216413243152 1;
	setAttr ".pm[34]" -type "matrix" -0.43594205479935338 0.59749644125918966 0.67301747937176337 -0
		 0.70084734239732094 0.69452627708497583 -0.16262303985934928 0 -0.56459501194389816 0.40078828965064228 -0.72152700529292924 0
		 -3.9504407340550634 -3.7708443804080867 -0.80903142183858512 1;
	setAttr ".pm[35]" -type "matrix" -0.80828666278327432 0.25069034959079767 0.53275418289181176 -0
		 0.21819681986783124 0.96794042106865841 -0.12442463205086605 0 -0.54686636262092747 0.015674497869846715 -0.83707316977088997 0
		 -1.2782210087401189 -5.4701710515155018 -1.0637098088558508 1;
	setAttr ".pm[36]" -type "matrix" -0.82004746228088032 -0.20903382553540736 0.53275418289181176 -0
		 -0.32022389661991219 0.93913532942412847 -0.12442463205086607 0 -0.47431931822375606 -0.27263472414471851 -0.83707316977088997 0
		 1.4741587162838448 -5.4790258078135139 -1.0637098088558503 1;
	setAttr ".pm[37]" -type "matrix" -0.68115617672397932 -0.58224855063069902 0.44386133893280488 -0
		 -0.71347233192191795 0.66391571242427372 -0.22399365700409787 0 -0.16426653491405938 -0.46925744755370707 -0.86764851951853672 0
		 3.7155105234907788 -4.253503924807462 -0.56138912952764053 1;
	setAttr ".pm[38]" -type "matrix" -0.50408144903854235 -0.80314783289629765 0.31757747283015064 0
		 -0.83807468363902604 0.36604708025856952 -0.40452485668685773 0 0.20864495531536334 -0.47006711600383 -0.85761540860300089 -0
		 4.7675519738061451 -2.6983875616478876 0.40050578146566135 1;
	setAttr ".pm[39]" -type "matrix" -0.13887806920042897 -0.97362021202337345 0.18104299112289102 0
		 -0.8442227548036797 0.02082911068982167 -0.53558761040520475 0 0.51768795829809233 -0.22722198592441178 -0.82484504420267912 -0
		 5.131402903469473 -0.54383199739958166 1.1062769262428087 1;
	setAttr ".pm[40]" -type "matrix" -0.44544499269810256 0.31790426804465338 -0.83696812056325143 0
		 -0.53604557662551799 0.65406162136325452 0.53372140226890541 0 0.71710103769301836 0.68639658494099753 -0.12093729747655504 -0
		 3.5487087028311417 -1.8700671363062362 -2.7925193128695747 1;
	setAttr ".pm[41]" -type "matrix" -0.052113655857806661 -0.12229876297960356 -0.99112419980888034 0
		 -0.12985132476009162 0.98487688829382625 -0.11470025441436067 0 0.99016301704880072 0.12272134076161549 -0.067206191608274221 -0
		 1.5808752410933884 -4.2107979689235933 0.024886527691079015 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923738209327 0.15316129470954071 0.84469936689614911 -0
		 -0.35222855576255746 0.93486282127867992 0.044345799082775778 0 -0.78288597326640097 -0.32027039075406954 0.53340081521212113 -0
		 1.1996855435952647 -4.1723182522672628 0.61489411505153346 1;
	setAttr ".pm[43]" -type "matrix" -0.73333548538209525 0.11850973006940393 0.66945837044455869 -0
		 0.055614852963414348 0.99184695892173957 -0.11465861593249307 0 -0.6775884104744303 -0.04685140293069355 -0.73394747225817225 0
		 -1.618463936552093 -4.150962652048455 0.6167161736380613 1;
	setAttr ".pm[44]" -type "matrix" 0.7178746917702189 0.19100109203229435 -0.6694583704445588 -0
		 -0.15418153848813718 0.98136713567445111 0.11465861593249313 0 0.67888436431047972 0.020907602937564346 0.73394747225817203 -0
		 2.9878104727393069 -3.9063461234579986 -0.61671617363806241 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497183340853 0.012292740621888149 -0.5042589919324536 -0
		 0.11820591039161055 0.96693328393588907 0.22598094425293511 -0 0.49036272815663917 -0.25473302287877969 0.83345994618206876 -0
		 -0.31526849647608046 -4.1175003638789578 -0.8411184408836696 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581191388532 0.14817028233168023 -0.5042589919324536 -0
		 -0.035601728897875065 0.97348093444814543 0.22598094425293513 0 0.52437017498182203 -0.17429984997043529 0.83345994618206876 -0
		 -0.54266112802664046 -4.2561403950661756 -0.84111844088366872 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227101337457 0.54496457952035493 -0.34985229130234941 -0
		 0.62286062490543848 0.76461427634874546 -0.16555860094266003 -0 0.17727848319440126 -0.34406193551726616 -0.92205950129284275 -0
		 -2.7951587350455624 -5.0172514607060918 -0.72188543037675135 1;
	setAttr ".pm[48]" -type "matrix" -0.63784894397210701 0.68611376530730284 -0.34985229130234935 -0
		 0.76296721301434756 0.62487709313034345 -0.16555860094265998 -0 0.10502264774222436 -0.37252720643841247 -0.92205950129284275 -0
		 -4.1298506854570984 -4.2789178555654228 -0.72188543037675157 1;
	setAttr ".pm[49]" -type "matrix" -0.43115001004128573 0.83169287787734247 -0.34985229130234941 -0
		 0.90227887362996351 0.39809946477601987 -0.16555860094266009 -0 0.0015821006427817763 -0.3870449237919949 -0.92205950129284286 -0
		 -5.4553896063024494 -2.9266921950579188 -0.72188543037675157 1;
	setAttr ".pm[50]" -type "matrix" -0.28599063606040587 0.89208336513818109 -0.34985229130234941 -0
		 0.95614812680294525 0.24160113672151495 -0.16555860094266009 0 -0.063167362593223475 -0.38185882257532194 -0.92205950129284286 0
		 -6.1336373055839015 -1.9280906660343249 -0.72188543037675168 1;
	setAttr ".pm[51]" -type "matrix" -0.10207338912265439 0.93122736080052537 -0.34985229130234935 -0
		 0.98513663428464682 0.045783855716037589 -0.16555860094266003 0 -0.138155112186749 -0.3615514362469906 -0.92205950129284264 0
		 -6.7508444217482166 -0.59181550033660835 -0.72188543037675135 1;
	setAttr ".pm[52]" -type "matrix" 0.23188992655137963 -0.90765105422430503 0.34985229130234929 -0
		 0.93832475256335257 0.30354078536636891 0.16555860094266009 0 -0.25646387794564546 0.28988369285745602 0.92205950129284264 -0
		 -6.7512693582381997 -1.903683870567642 0.72188543037675112 1;
	setAttr ".pm[53]" -type "matrix" 0.93511716042662907 -0.056207388714783812 0.34985229130234935 -0
		 -0.0026622692766375008 0.9861963607599693 0.16555860094266006 0 -0.35432867312417338 -0.15574808980420141 0.92205950129284275 -0
		 -0.34546931532217812 -7.3149787736033653 0.72188543037675168 1;
	setAttr ".pm[54]" -type "matrix" -0.39955119757237006 0.88654287775749618 -0.23323929003481172 -0
		 0.9138291243102904 0.40534605666864759 -0.024716510786627031 -0 0.072630379874905088 -0.22301636765187308 -0.9721052040178535 -0
		 -4.5278240663455414 -3.3954815719514109 -1.022056662989109 1;
	setAttr ".pm[55]" -type "matrix" -0.32480993554795584 0.91656856773150952 -0.23323929003481172 -0
		 0.94424079275899342 0.32832669611897614 -0.024716510786627038 -0 0.053924308611245898 -0.22826222040059005 -0.97210520401785339 -0
		 -5.2848407562928594 -2.9682891152938393 -1.022056662989109 1;
	setAttr ".pm[56]" -type "matrix" -0.20311030386251164 0.95097089232475285 -0.23323929003481175 -0
		 0.97886549333733408 0.20300600988146297 -0.024716510786627035 -0 0.02384429529963901 -0.23333007072186832 -0.97210520401785372 -0
		 -6.0531111964851538 -2.201331097817814 -1.0220566629891092 1;
	setAttr ".pm[57]" -type "matrix" 0.055141316109679081 -0.97085471046998095 0.23323929003481164 -0
		 0.99773223295074775 0.062605793866458606 0.024716510786627031 0 -0.038598271837057808 0.23134745672386586 0.97210520401785361 -0
		 -6.8860135218368184 0.39760004128751308 1.0220566629891104 1;
	setAttr ".pm[58]" -type "matrix" 0.28391908849808628 -0.93004805508665722 0.23323929003481161 -0
		 0.95438699314136222 0.29754757840910812 0.024716510786627038 0 -0.092387328725348924 0.21558305548535747 0.97210520401785361 -0
		 -7.2628020126628208 -1.3645944917354262 1.0220566629891112 1;
	setAttr ".pm[59]" -type "matrix" 0.55092252852547929 -0.8013013173252308 0.23323929003481161 -0
		 0.82040360957422054 0.57125039299078328 0.024716510786627056 0 -0.15304340874628516 0.17773347282019183 0.9721052040178535 -0
		 -6.9115203688474454 -3.6147653105046995 1.0220566629891117 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801929825545 -0.52562566535849164 0.23323929003481164 -0
		 0.53537162742211097 0.84425488725025144 0.024716510786627042 0 -0.20990504293822981 0.10464867543599525 0.9721052040178535 -0
		 -5.4326010176921917 -6.2006165117325418 1.0220566629891132 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862701361126 0.001203088118692175 0.23323929003481167 -0
		 -0.0071651765168071974 0.99966882233068455 0.024716510786627059 0 -0.23313231024988207 -0.025705996167453497 0.97210520401785372 -0
		 -1.6152689933561759 -8.4165599952487824 1.0220566629891152 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.03996262683058216 3.8922764855263239 0 1;
	setAttr -s 37 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 37 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 37 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "7325EF71-184A-81D4-8044-A48DB14E034A";
createNode dagPose -n "bindPose1";
	rename -uid "044FF224-BE42-1CBC-2342-6B9DBE7E4B99";
	setAttr -s 62 ".wm";
	setAttr -s 99 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0218558978132068 0.016693257253999505
		 -0.7887202317130233 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.55285599146418973 0.83327681637145512 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 -2.3913498078286314e-16 5.1670547096544144e-17
		 -1.1619244174979762e-17 0 1.1112544331808816 2.2204460492503131e-16 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.97711097834547334 0.20420196928319753 0.058368620435898071 -0.012198191916271422 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -1.8439019251079511e-16 -6.4259401058163585e-16
		 2.7077361981978851e-15 0 0.62397205982694914 0 -1.1102230246251565e-16 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0099181449541167616 0.049761045010923266 -0.19521878179821356 0.97944632115972108 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -1.88856194117206e-16 1.8212839828668881e-15
		 -5.1131261711838079e-16 0 0.74887755142998613 -8.8817841970012523e-16 1.1102230246251565e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0047878082407099556 -0.13275955836529899 0.035720890210997724 0.99049280388977823 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -1.4230688853515649e-31 -4.7643124789856351e-19
		 -1.5421633565354215e-15 0 0.60965696573473682 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 1 0 0 0.11228499517756048 0.99367604371745588 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 7.6489439906412536e-09 1.5498290099600372e-08
		 -1.2057606239936247e-08 0 0.5874218033074845 4.4408920985006262e-16 1.1102230246251565e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.047979735956221133 0.99884830927302037 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 7.0446957698199783e-17 1.2537841407170654e-16
		 1.2172472202449853e-16 0 0.6079754401307067 -2.2204460492503131e-16 1.1102230246251565e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.98734434584770925 0.10715079400338771 -0.11623565431451072 0.012614385957322569 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 8.0099648091079597e-17 9.7357292613003967e-18
		 1.001257254397259e-16 0 0.55533925221940805 -1.1102230246251565e-16 2.2204460492503131e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.16074555144242536 -0.023511311699550261 -0.088605797280780316 0.98272941270823599 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 1.2598890768137081e-16 3.2728249838456939e-17
		 2.3264428116920431e-16 0 0.46345814886940939 -1.6653345369377348e-16 4.4408920985006262e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.018192432122222563 -0.051264996091637295 -0.12845029926880239 0.99022293257980942 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 1.098717833698191e-16 -6.3337128071561149e-18
		 1.7449234379662138e-16 0 0.32348651020118258 -0.054789604720485219 4.4408920985006262e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.21321479559645712 0.97700534846988474 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 1.2821994771759027e-16 5.8417943925200296e-17
		 3.1819883892495449e-16 0 0.38749941000289478 -0.022402633287538443 -8.8817841970012523e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.037585806150123663 -0.071625759072876272 -0.276193614482863 0.9576920930717614 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 7.514958164332866e-17 -2.1223291047059402e-17
		 1.4771423324068427e-16 0 0.35887732399454975 -0.025803637014960579 4.4408920985006262e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.12056395789947488 0.0070809145127802113 -0.15728695254559297 0.98014029978579931 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 2.4985335772126154e-17 5.6539911641787405e-17
		 8.6939410467641536e-17 0 0.3913173407191427 -0.010831968840761874 -6.6613381477509392e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0025326712694288349 -0.053426760181526499 -0.047283590601175068 0.99744845928629677 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 1.6625116743768649e-31 4.879681024976286e-17
		 5.7956165193541042e-17 0 0.56708714409200822 -0.051622193033463049 -1.1102230246251565e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0043882953238115552 -0.044597864090661389 -0.097825700908710053 0.994194098566483 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.39738130321997522 -8.8817841970012523e-16
		 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.17149094958719491 -0.17266662258529394 0.41621397488893752 0.87609532515692656 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.23986902292944423 -0.0095685553151643177
		 0.88366367565094883 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.041094016232215591 -0.69951358685991871 0.13895119035844644 0.69977467110938507 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2692315327397536 -1.7763568394002505e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.093416560838335716 0.99562711200586418 6.0964577793115245e-17 5.7201146109010913e-18 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.27110454475667201 0.037308699214135377
		 -0.94401151836907626 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.03006059792827992 0.74175593766853054 0.1452487730642554 0.65406214025045195 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2582696769364246 -8.8817841970012523e-16
		 8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.14589702682657424 0.98929978144299913 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.49733108368632895 0.45623934315935455
		 -0.1780068980103271 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.97691907573333314 -0.19505433395956007 0.087008602221860812 0.0035255370258428509 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.46858915804684909 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.081522785122968774 0.99667147822429147 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.52623660247221959 6.6613381477509392e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99710537358417217 0.076032058827632226 4.6556208737921535e-18 6.1055095208624111e-17 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.38008996762646952 2.2204460492503131e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.023412371986679611 0.99972589285161428 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.40505758797383073 -4.9960036108132044e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.066341763923596572 0.9977969584837918 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.4644696129730681 -2.2204460492503131e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.10120939925794911 0.99486514538496373 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.34149701948444644 -1.3322676295501878e-15
		 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.10496920690508102 0.99447547259935898 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.37900128138648004 -4.4408920985006262e-16
		 -3.3306690738754696e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.15549349902719864 0.98783691556869779 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.41877482721203041 -2.6645352591003757e-15
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.23856455763329931 0.97112664047549857 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.54009655331102646 -1.7763568394002505e-15
		 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.31395425444025077 0.94943811073648521 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.52440735401943006 -3.5527136788005009e-15
		 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.21877967922450209 0.97577428330450688 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.67107152456313246 -8.8817841970012523e-16
		 1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.50822106369464226 0.86122665449757552 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 -1.9027901864702897e-18 2.1973900045692974e-17
		 -3.035737295394252e-17 0 0.7214538008102771 -0.47542989481631559 0.17109007118284847 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.30942406352189999 -0.070061263991847242 -0.20241466397176658 0.92648608840643509 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 -5.6210018175657916e-18 3.5349381604307765e-17
		 -4.8414915433120971e-17 0 0.41016304872442566 0 -6.6613381477509392e-16 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0079640182085822034 -0.038721262065540031 0.00032606011278074588 0.99921826042303097 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 -1.8600056688224554e-17 5.4429689017744788e-17
		 -6.3227539814493114e-17 0 0.4395033046910326 4.4408920985006262e-16 4.4408920985006262e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.026245113507685821 -0.070197222662168712 -0.035208498141034258 0.99656605682018862 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 -2.8569555583607335e-17 6.2500979619806577e-17
		 -8.142422773614088e-17 0 0.36148101215000406 4.4408920985006262e-16 2.2204460492503131e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.017962335822028126 0.038690483842127074 -0.11996103795175508 0.99186175968499579 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 -4.6883898981343818e-17 4.7782521744449417e-17
		 -9.7762027888700243e-17 0 0.31762419942948572 -0.053696452289496044 -5.5511151231257827e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.02720266483500406 0.088774837267651008 -0.29171152362904451 0.95198919651222813 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 -6.9230579270842602e-17 2.47975490084042e-17
		 -9.3268393408913422e-17 0 0.33064659980504407 -0.029177324110890801 -4.4408920985006262e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.27170676196902194 0.96238008889435633 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 -6.6863110428406221e-17 -1.8621775461719311e-18
		 -8.5914168716269837e-17 0 0.40069291990639377 -0.0083161216917417846 6.6613381477509392e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.017242733652551894 0.066259967163810843 -0.25125003309204608 0.96549765704474066 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 -4.7812064334458243e-17 -1.7283921885682024e-17
		 -8.0779097348532807e-17 0 0.28567106023859345 -8.8817841970012523e-16 -3.3306690738754696e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0052258722317697019 0.11014825605637377 -0.1853467234228813 0.97646640703280663 1
		 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 -2.7790196628857795e-17 -2.3369480593671729e-17
		 -7.1423483392220221e-17 0 0.24989801153498181 8.8817841970012523e-16 -4.9960036108132044e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.043566267821460891 0.085587569370018532 -0.22339312712913686 0.96998570042496302 1
		 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 -9.4617071889060734e-18 4.6853381699331536e-17
		 9.836424910079161e-18 0 0.42937775607340178 0.073335259225990268 -0.07639494507056388 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.81779048847000324 -0.0056870879094344934 0.23905682174479528 0.52348659006356713 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6450728559354979 0.1302678751672719
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.29021174344374673 0.16598972048853516 0.26648443018652013 0.90399701610549832 1
		 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.33097801902076651 -0.0082860596346119308
		 0.072113225420726457 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.25459408656112886 0.93501336837993398 -0.061944993391687478 0.23894490961855255 1
		 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.21880009765315611
		 -0.074252153782096819 -0.57842396051182055 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.03698690401076235 0.64356261706075935 0.13576978815635571 0.75234678937148614 1
		 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.96518207389929267 0.033690828222600722
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.049890147150474032 0.99875471123659987 3.0548904508409234e-18 6.1156088012462058e-17 1
		 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.18341372605117856
		 -0.19139924921718166 0.61289299875498326 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.017634656700069917 -0.69668348936681146 0.077336418048189193 0.71297981245630659 1
		 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.89113231413449201 8.8817841970012523e-16
		 -7.7715611723760958e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.079017519216358842 0.99687322747523532 1
		 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.33743176479174242 0.090001983768414284
		 0.032020287011158777 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.096580427338321451 0.43318522379358315 0.37641796036394859 0.81322340230559964 1
		 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.39733127729428297 0
		 1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.10032428005067598 0.99495479235607154 1
		 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.34425983468979648 -8.8817841970012523e-16
		 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.13493714727221201 0.99085415994788928 1
		 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26942593730122955 1.3322676295501878e-15
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.08391309981356683 0.99647307624424974 1
		 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.36302432764273629 -4.4408920985006262e-16
		 -3.3306690738754696e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.10036066196010242 0.99495112318692824 1
		 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.23867663767400593 1.1102230246251565e-16
		 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.98390550708113278 0.17868954400137427 1.0941578905119157e-17 6.0246836495518137e-17 1
		 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.32009905438446484 -2.2204460492503131e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.58939855697788734 0.80784239863502094 1
		 1 1 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.27944025465969569 0.046579605665840074
		 -0.027707778617148349 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.35473097825005062 0.31613790851913148 0.11507500280660704 0.87234196253302554 1
		 1 1 yes;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.49323030359354014 4.4408920985006262e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.041415706347221304 0.99914200155321298 1
		 1 1 yes;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.43138820056863292 -4.4408920985006262e-16
		 4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.065027835277169876 0.99788345042853843 1
		 1 1 yes;
	setAttr ".xm[57]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48366242767620182 -4.4408920985006262e-16
		 1.3322676295501878e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99109170523310786 0.13318119919166704 8.1549964648340549e-18 6.0686864223760885e-17 1
		 1 1 yes;
	setAttr ".xm[58]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.49316837110917078 5.5511151231257827e-17
		 -8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.11948989663781906 0.9928354166736213 1
		 1 1 yes;
	setAttr ".xm[59]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.41662009659426946 -2.2204460492503131e-16
		 -6.6613381477509392e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.15241517649340866 0.98831655555013498 1
		 1 1 yes;
	setAttr ".xm[60]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.49754642076731237 -8.8817841970012523e-16
		 -1.5543122344752192e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.19740181520305461 0.98032266287918646 1
		 1 1 yes;
	setAttr ".xm[61]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48347292952565901 -8.8817841970012523e-16
		 -1.9984014443252818e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.28226510903596957 0.95933644162041098 1
		 1 1 yes;
	setAttr ".xm[62]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2692315327397534 -1.3322676295501878e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.093416560838335716 0.99562711200586418 6.0964577793115245e-17 5.7201146109010913e-18 1
		 1 1 yes;
	setAttr ".xm[63]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2582696769364237 -4.4408920985006262e-16
		 8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.14589702682657424 0.98929978144299913 1
		 1 1 yes;
	setAttr ".xm[64]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.67107152456313335 -1.7763568394002505e-15
		 1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.50822106369464226 0.86122665449757552 1
		 1 1 yes;
	setAttr ".xm[65]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.96518207389929267 0.033690828222600722
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.049890147150474032 0.99875471123659987 3.0548904508409234e-18 6.1156088012462058e-17 1
		 1 1 yes;
	setAttr ".xm[66]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.89113231413449201 8.8817841970012523e-16
		 -7.7715611723760958e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.079017519216358842 0.99687322747523532 1
		 1 1 yes;
	setAttr ".xm[67]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.32009905438446484 -2.2204460492503131e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.58939855697788734 0.80784239863502094 1
		 1 1 yes;
	setAttr ".xm[68]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48347292952565901 -8.8817841970012523e-16
		 -1.9984014443252818e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.28226510903596957 0.95933644162041098 1
		 1 1 yes;
	setAttr ".xm[69]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.96518207389929267 0.033690828222600722
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.049890147150474032 0.99875471123659987 3.0548904508409234e-18 6.1156088012462058e-17 1
		 1 1 yes;
	setAttr ".xm[70]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.32009905438446484 -2.2204460492503131e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.58939855697788734 0.80784239863502094 1
		 1 1 yes;
	setAttr ".xm[71]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48347292952565901 -8.8817841970012523e-16
		 -1.9984014443252818e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.28226510903596957 0.95933644162041098 1
		 1 1 yes;
	setAttr ".xm[72]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.96518207389929267 0.033690828222600722
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.049890147150474032 0.99875471123659987 3.0548904508409234e-18 6.1156088012462058e-17 1
		 1 1 yes;
	setAttr ".xm[73]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.32009905438446484 -2.2204460492503131e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.58939855697788734 0.80784239863502094 1
		 1 1 yes;
	setAttr ".xm[74]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48347292952565901 -8.8817841970012523e-16
		 -1.9984014443252818e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.28226510903596957 0.95933644162041098 1
		 1 1 yes;
	setAttr ".xm[75]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.96518207389929267 0.033690828222600722
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.049890147150474032 0.99875471123659987 3.0548904508409234e-18 6.1156088012462058e-17 1
		 1 1 yes;
	setAttr ".xm[76]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.32009905438446484 -2.2204460492503131e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.58939855697788734 0.80784239863502094 1
		 1 1 yes;
	setAttr ".xm[77]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48347292952565901 -8.8817841970012523e-16
		 -1.9984014443252818e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.28226510903596957 0.95933644162041098 1
		 1 1 yes;
	setAttr ".xm[78]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.96518207389929267 0.033690828222600722
		 -5.5511151231257827e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.049890147150474032 0.99875471123659987 3.0548904508409234e-18 6.1156088012462058e-17 1
		 1 1 yes;
	setAttr ".xm[79]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.32009905438446484 -2.2204460492503131e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.58939855697788734 0.80784239863502094 1
		 1 1 yes;
	setAttr ".xm[80]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48347292952565901 -8.8817841970012523e-16
		 -1.9984014443252818e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.28226510903596957 0.95933644162041098 1
		 1 1 yes;
	setAttr ".xm[81]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.32009905438446484 -2.2204460492503131e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.58939855697788734 0.80784239863502094 1
		 1 1 yes;
	setAttr ".xm[82]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48347292952565901 -8.8817841970012523e-16
		 -1.9984014443252818e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.28226510903596957 0.95933644162041098 1
		 1 1 yes;
	setAttr ".xm[83]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.32009905438446484 -2.2204460492503131e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.58939855697788734 0.80784239863502094 1
		 1 1 yes;
	setAttr ".xm[84]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48347292952565901 -8.8817841970012523e-16
		 -1.9984014443252818e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.28226510903596957 0.95933644162041098 1
		 1 1 yes;
	setAttr ".xm[85]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.32009905438446484 -2.2204460492503131e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.58939855697788734 0.80784239863502094 1
		 1 1 yes;
	setAttr ".xm[86]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48347292952565901 -8.8817841970012523e-16
		 -1.9984014443252818e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.28226510903596957 0.95933644162041098 1
		 1 1 yes;
	setAttr ".xm[87]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.32009905438446484 -2.2204460492503131e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.58939855697788734 0.80784239863502094 1
		 1 1 yes;
	setAttr ".xm[88]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48347292952565901 -8.8817841970012523e-16
		 -1.9984014443252818e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.28226510903596957 0.95933644162041098 1
		 1 1 yes;
	setAttr ".xm[89]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.32009905438446484 -2.2204460492503131e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.58939855697788734 0.80784239863502094 1
		 1 1 yes;
	setAttr ".xm[90]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48347292952565901 -8.8817841970012523e-16
		 -1.9984014443252818e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.28226510903596957 0.95933644162041098 1
		 1 1 yes;
	setAttr ".xm[91]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.32009905438446484 -2.2204460492503131e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.58939855697788734 0.80784239863502094 1
		 1 1 yes;
	setAttr ".xm[92]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48347292952565901 -8.8817841970012523e-16
		 -1.9984014443252818e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.28226510903596957 0.95933644162041098 1
		 1 1 yes;
	setAttr ".xm[93]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.32009905438446484 -2.2204460492503131e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.58939855697788734 0.80784239863502094 1
		 1 1 yes;
	setAttr ".xm[94]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48347292952565901 -8.8817841970012523e-16
		 -1.9984014443252818e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.28226510903596957 0.95933644162041098 1
		 1 1 yes;
	setAttr ".xm[95]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.32009905438446484 -2.2204460492503131e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.58939855697788734 0.80784239863502094 1
		 1 1 yes;
	setAttr ".xm[96]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48347292952565812 -2.6645352591003757e-15
		 -1.9984014443252818e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.28226510903596957 0.95933644162041098 1
		 1 1 yes;
	setAttr ".xm[97]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.32009905438446484 -2.2204460492503131e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.58939855697788734 0.80784239863502094 1
		 1 1 yes;
	setAttr ".xm[98]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.32009905438446484 -2.2204460492503131e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.58939855697788734 0.80784239863502094 1
		 1 1 yes;
	setAttr -s 62 ".m";
	setAttr -s 62 ".p";
	setAttr -s 99 ".g[21:98]" yes yes yes yes yes yes yes yes yes no no 
		no no no no no no no no no no no no no no no no no yes yes yes yes no no no yes yes 
		yes yes yes no no no no no no no no no no no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "3BE0C9E4-7B41-A9F3-D8E5-539FE0258F47";
	setAttr -s 206 ".wl";
	setAttr ".wl[0:99].w"
		5 13 0.05706457042787999 14 0.21974899838171127 15 0.3647534641703109 
		16 0.30608666307795479 45 0.052346303942143006
		5 2 0.13859421840146385 3 0.13859421840146385 13 0.20642430598331835 
		14 0.2607530254180726 15 0.25563423179568129
		5 1 0.22894433601448716 2 0.22922023990726847 3 0.19673391826676462 
		13 0.17250036044749936 14 0.17260114536398022
		5 12 0.13403484682995317 13 0.23782986687284347 14 0.2684396105317397 
		15 0.1170615270960999 17 0.24263414866936381
		5 12 0.044241530615006394 13 0.065363932562602187 14 0.2417404713003935 
		17 0.36223703290795284 18 0.28641703261404516
		5 13 0.051244695239345037 14 0.2005984049521469 15 0.36986251171436874 
		16 0.33814298961105543 45 0.040151398483083876
		5 2 0.10403008633475547 12 0.1240835142443663 13 0.20980433801651896 
		14 0.28139149698424992 15 0.28069056442010926
		5 1 0.20497007768624995 2 0.20497007768624995 3 0.17766386767372311 
		13 0.20580718286212069 14 0.2065887940916564
		5 12 0.12562127243283144 13 0.22539254943411888 14 0.27016161461297572 
		15 0.12032928933772012 17 0.25849527418235385
		5 12 0.03796240561412903 13 0.056439263453664457 14 0.2247421824973222 
		17 0.36626247287685065 18 0.31459367555803369
		5 14 0.017589100649885711 15 0.4808025607542557 16 0.4808025607542557 
		45 0.010402888920801483 46 0.010402888920801483
		5 10 0.18832052564260227 11 0.27536430072397322 12 0.27565478896982426 
		13 0.15678902963418515 14 0.10387135502941494
		5 10 0.046063147141062334 11 0.14501607935740843 12 0.32821088349620725 
		13 0.32419403709488881 14 0.15651585291043316
		5 11 0.2176146228244866 12 0.24003417198379526 13 0.2093245734171679 
		14 0.17914072447908305 17 0.15388590729546725
		5 14 0.017728272672085224 17 0.48539257853251661 18 0.48539257853251649 
		29 0.0057432851314408746 30 0.0057432851314408746
		5 14 0.020286718016938831 15 0.47345659762664621 16 0.47345659762664644 
		45 0.016400043364884216 46 0.016400043364884216
		5 9 0.054295817726709349 10 0.18930855114426459 11 0.3322168998225421 
		12 0.33108631204732503 13 0.093092419259159051
		5 10 0.019608182604744413 11 0.12472088759237528 12 0.46694677255851341 
		13 0.33858585708961303 14 0.050138300154753915
		5 10 0.12055816391459605 11 0.267746839923659 12 0.28859268234544572 
		13 0.2061731834623402 14 0.1169291303539591
		5 14 0.023208492084659783 17 0.48152105274297269 18 0.48152105274297269 
		29 0.0068747012146974503 30 0.0068747012146974503
		5 14 0.0018745813572751194 15 0.4982361425417417 16 0.4982361425417417 
		45 0.00082656677962074257 46 0.00082656677962074257
		5 14 0.0015965664157138663 15 0.49870347299024126 16 0.49870347299024126 
		45 0.00049824380190176027 46 0.00049824380190176027
		5 12 0.0066275914212682238 13 0.01405268220446371 14 0.49261233435310214 
		15 0.48418668392494113 16 0.0025207080962248822
		5 12 0.063302394004244256 13 0.37292260940094074 14 0.44131812171070822 
		15 0.07306377607647925 17 0.0493930988076276
		5 12 0.0053798517105023 13 0.015972872360138852 14 0.57325626389757023 
		17 0.40374125434362607 18 0.0016497576881625985
		5 12 7.6226248551143749e-05 13 8.6850063400778656e-05 14 0.00062796425268859786 
		17 0.49960447971767991 18 0.49960447971767968
		5 12 0.00027099047253037868 13 0.00029985102341295507 14 0.0021626502083871642 
		17 0.49863325414783483 18 0.4986332541478346
		5 11 4.6082200596690139e-06 12 2.5576192162406305e-05 13 6.9501154629999761e-05 
		14 0.99747109289892699 17 0.0024292215342209961
		5 12 0.018433676122321722 13 0.44509596423611236 14 0.52432788658453222 
		15 0.0078396173135310832 17 0.0043028557435025525
		5 11 2.1638066755233428e-08 12 7.5026066925157589e-08 13 1.1835412787307051e-07 
		14 0.99983860682550574 15 0.0001611781562327251
		5 14 0.014414896828927531 15 0.4890759763680308 16 0.48907597636803057 
		45 0.0037165752175056231 46 0.0037165752175056231
		5 14 0.01939559927697964 15 0.48349472632671425 16 0.48349472632671425 
		45 0.0068074740347959534 46 0.0068074740347959534
		5 12 0.032326330142163823 13 0.077692441289634456 14 0.45241649123257793 
		15 0.4259763503769623 16 0.011588386958661505
		5 12 0.091083377500249918 13 0.35471359507838124 14 0.3642377763305874 
		15 0.11360818861831573 17 0.076357062472465653
		5 12 0.039979810604045672 13 0.12774073791056123 14 0.47654408397654591 
		15 0.014071376546514643 17 0.34166399096233252
		5 12 0.0028241580007208511 13 0.0034657652162605797 14 0.024138537420780582 
		17 0.48637209978306106 18 0.48319943957917694
		5 12 0.0017667051518803069 13 0.0022201214103203587 14 0.015743011609096105 
		17 0.4901350809143516 18 0.4901350809143516
		5 12 0.033951237889370059 13 0.10298972295539745 14 0.44354149950073923 
		15 0.017757847760455497 17 0.40175969189403776
		5 12 0.082740083986210564 13 0.32321222324228077 14 0.35102095522670129 
		15 0.14038170151972237 17 0.10264503602508497
		5 12 0.032579049970322418 13 0.079161669795888581 14 0.43602066605717738 
		15 0.43512039339461855 16 0.017118220781993078
		5 13 0.027659245799179753 14 0.1321157707280439 15 0.41249870158213847 
		16 0.40180091254317274 45 0.025925369347465154
		5 14 0.14780421204198463 15 0.40688604425549324 16 0.37222494326440136 
		45 0.036542400219060377 46 0.036542400219060377
		5 12 0.10874530219995961 13 0.20163596249359858 14 0.31428328821135937 
		15 0.30983534364191434 16 0.065500103453168118
		5 2 0.15316130833475256 13 0.2483040070244357 14 0.2487347769601376 
		15 0.18960254407518728 17 0.16019736360548684
		5 12 0.11250726087503971 13 0.23006470990011002 14 0.30173785926347207 
		15 0.083383914688534261 17 0.27230625527284402
		5 12 0.025378217265778213 13 0.035834219795199608 14 0.17435133058280394 
		17 0.41145153253096589 18 0.35298469982525232
		5 12 0.019667374626664107 13 0.028001759465264477 14 0.14737296237768965 
		17 0.41638468764474307 18 0.38857321588563881
		5 12 0.093566625852507357 13 0.20923994320072364 14 0.31774751570449083 
		15 0.07922059832816826 17 0.30022531691410992
		5 12 0.13338372827502729 13 0.24845272303016971 14 0.2512128281365939 
		15 0.19773978846254986 17 0.16921093209565924
		5 12 0.091797638515745156 13 0.18558828092140436 14 0.33091593428217903 
		15 0.32986941820226284 17 0.061828728078408654
		5 12 0.087502185359975115 13 0.13353709769097202 14 0.32093218285709973 
		15 0.32111632229737508 16 0.13691221179457813
		5 12 0.080514828307948719 13 0.12467552589205977 14 0.31914030832319129 
		15 0.32076497764259237 16 0.15490435983420783
		5 12 0.047501307841207173 13 0.077162740769779428 14 0.36676227944479872 
		15 0.38352636229705606 16 0.12504730964715857
		5 12 0.010565738029445146 13 0.015317403899801565 14 0.30094946574936959 
		15 0.59922718202116987 16 0.073940210300213791
		5 12 0.0016791324371755526 13 0.0020124203321055596 14 0.06160681972516581 
		15 0.899193147875059 16 0.035508479630494132
		5 8 0.13145109290227597 9 0.23183489496820359 10 0.24381752988996863 
		11 0.23826537064657866 12 0.15463111159297305
		5 8 0.13004766143429697 9 0.25541526711892398 10 0.26154811311130649 
		11 0.23443721587597344 12 0.11855174245949922
		5 12 5.571344233216627e-05 13 5.7482467690514744e-05 14 0.0021602067817981037 
		15 0.99678793486964701 16 0.00093866243853220539
		5 12 0.010481464033109483 13 0.013868292629699606 14 0.27607456408843933 
		15 0.63467262673025249 16 0.064903052518499108
		5 12 0.056806164772605895 13 0.085638418519754247 14 0.34851343770001958 
		15 0.37030579243026679 16 0.13873618657735351
		5 12 0.089689825781745558 13 0.15518627202752197 14 0.31452520022190161 
		17 0.31452520022190161 18 0.1260735017469293
		5 12 0.079707695851429547 13 0.13890960668371716 14 0.32027052835514258 
		17 0.32027052835514258 18 0.14084164075456801
		5 12 0.04503839546433424 13 0.086665432679999529 14 0.38183807042469092 
		17 0.38364362937175189 18 0.10281447205922345
		5 12 0.0076589373793181856 13 0.014209391033784461 14 0.38587241101294795 
		17 0.55157502890315935 18 0.040684231670790154
		5 12 0.00081166124616229832 13 0.0012675855069739399 14 0.084003660936026431 
		17 0.90251390914298191 18 0.011403183167855338
		5 14 0.072145260362577221 17 0.099472186372074958 18 0.077027022754646235 
		29 0.37567776525535096 30 0.37567776525535074
		5 11 0.10814122565592695 12 0.10814122565592695 17 0.10151765897347458 
		29 0.34109994485733575 30 0.34109994485733575
		5 12 0.00028727788375309177 13 0.00038689884470452865 14 0.024038771335939502 
		17 0.97249961469597745 18 0.002787437239625345
		5 12 0.010349532076483854 13 0.018030542577424362 14 0.36079229494123499 
		17 0.56435472294485733 18 0.046472907459999442
		5 12 0.058119281924149203 13 0.10421868614195492 14 0.35518338134579186 
		17 0.36115711373755299 18 0.12132153685055107
		5 12 0.064744397106436272 13 0.089642208008149621 14 0.29451846817647898 
		15 0.34001925342536971 16 0.21107567328356547
		5 12 0.058275165373506466 13 0.08190868918726088 14 0.28047872161178417 
		15 0.34060977525949632 16 0.23872764856795217
		5 12 0.031179677155834366 13 0.043723465315962967 14 0.26675075832391204 
		15 0.42209745254209036 16 0.23624864666220033
		5 12 0.0046604708411549503 13 0.0054826247020590621 14 0.05705865130739491 
		15 0.58136334956523894 16 0.35143490358415225
		5 12 0.00031123794084382056 13 0.00032549861027506027 14 0.0039280341571840995 
		15 0.7634194870230554 16 0.23201574226864169
		5 9 0.16689046215920181 10 0.16689046215920181 11 0.14510805578606173 
		15 0.26055550994776749 16 0.26055550994776727
		5 8 0.18681357831838838 9 0.22568663137844922 10 0.2256866313784491 
		15 0.18145957767590887 16 0.18035358124880452
		5 12 0.00026835865513931298 13 0.00026150280625070806 14 0.0024424193871085548 
		15 0.71397260698568421 16 0.28305511216581719
		5 12 0.0052670401418227538 13 0.0057109193007270588 14 0.052457568006246832 
		15 0.57029445731416695 16 0.36627001523703639
		5 12 0.037291274153863262 13 0.04870259341855545 14 0.249414455589477 
		15 0.40647257525038538 16 0.258119101587719
		5 12 0.00048193886699537302 13 0.00056740857358219751 14 0.0069186765437766039 
		17 0.78575267283500227 18 0.20627930318064355
		5 14 0.081157723796664596 17 0.19386586981174653 18 0.18811616930748223 
		29 0.26843011854205334 30 0.26843011854205334
		5 14 0.072287931686606396 17 0.19854729486440395 18 0.19821815064095205 
		29 0.26547331140401881 30 0.26547331140401881
		5 12 0.00022265670109144592 13 0.000289821293232895 14 0.0052647537237965406 
		17 0.91130622580533682 18 0.082916542476542371
		5 12 0.004431639086175782 13 0.0064404379769039096 14 0.088481183554816031 
		17 0.63886315162084661 18 0.26178358776125776
		5 12 0.026904547742025772 13 0.045538809531489921 14 0.31550221224244368 
		17 0.42884996243879769 18 0.18320446804524287
		5 12 0.056355486062140761 13 0.090949229117277125 14 0.29861762624443366 
		17 0.33792250163220239 18 0.21615515694394599
		5 12 0.064501935219598822 13 0.10338861234968405 14 0.30522128425651951 
		17 0.33388994289089913 18 0.19299822528329844
		5 12 0.036357889475211576 13 0.057230188219043535 14 0.28447467856194059 
		17 0.40192691390215224 18 0.22001032984165206
		5 12 0.0057523003303247512 13 0.0077645777956036662 14 0.079788765570403555 
		17 0.60008148201697875 18 0.30661287428668926
		5 14 0.0045788621152729886 15 0.49494026129533097 16 0.49494026129533075 
		45 0.0027703076470327161 46 0.0027703076470327161
		5 14 0.0047501564606554948 15 0.4955468473150334 16 0.4955468473150334 
		45 0.0020780744546389043 46 0.0020780744546389043
		5 10 0.039218502591991534 11 0.039262587493417787 14 0.081788083802761938 
		15 0.45503849002238639 16 0.38469233608944242
		5 11 0.07817596032905505 12 0.075415261248140575 14 0.16206550509078116 
		15 0.43684168121903727 16 0.247501592112986
		5 11 0.066103555054171162 12 0.15250337323953547 13 0.15476534589575588 
		14 0.37128250658597145 15 0.2553452192245661
		5 12 0.10366178191681737 13 0.37302000861901002 14 0.44210570719732645 
		15 0.047900179218213088 17 0.033312323048633026
		5 11 0.039402996909358161 12 0.11728018616060416 13 0.12540026014367603 
		14 0.42672802954362071 17 0.29118852724274091
		5 12 0.050184537067008789 13 0.050184537067008789 14 0.22967177535713368 
		17 0.46986112644734357 18 0.20009802406150504
		5 12 0.024886099679765107 13 0.024886099679765107 14 0.12008481230372632 
		17 0.489186170610662 18 0.3409568177260815
		5 12 0.00059428821648104153 13 0.00060303803547689136 14 0.0034711352860690228 
		17 0.4976657692309866 18 0.49766576923098649;
	setAttr ".wl[100:199].w"
		5 12 0.00073204207281113301 13 0.00073643922265034074 14 0.0042817872727098005 
		17 0.49712486571591435 18 0.49712486571591435
		5 11 0.11532560104283868 12 0.2128414378201309 13 0.21137706416551277 
		14 0.27203075283089256 17 0.18842514414062506
		5 11 0.0228169318040909 12 0.43887586335636392 13 0.44402142269419353 
		14 0.088916854601223033 15 0.0053689275441286344
		5 11 0.24435490041815558 12 0.27013629801829919 13 0.16296423152059433 
		14 0.17336635070506506 15 0.14917821933788589
		5 12 0.054708235653844077 13 0.079360068027580333 14 0.29172987957336227 
		15 0.34736412909783987 16 0.2268376876473735
		5 12 0.033764219298801926 13 0.046845137468472367 14 0.24614041937537534 
		15 0.39872095771705579 16 0.27452926614029444
		5 12 0.022937438149378292 13 0.029056515149287903 14 0.15001404189370765 
		15 0.4140932305665978 16 0.38389877424102831
		5 12 0.038038374026652756 13 0.050509798287627701 14 0.21376228599724029 
		15 0.37421952478979692 16 0.32347001689868232
		5 12 0.12007805001963581 13 0.22358529611154448 14 0.27276122535925368 
		15 0.12239185841448144 17 0.26118357009508458
		5 12 0.093720874992153133 13 0.19862623744383906 14 0.3146619592724168 
		15 0.083865668640443591 17 0.30912525965114745
		5 12 0.13602506261194283 13 0.24089566869950027 14 0.24379920013078796 
		15 0.20223747271858322 17 0.17704259583918569
		5 2 0.15992332878019194 13 0.23062992572025556 14 0.23232557449759525 
		15 0.19960223052584947 17 0.17751894047610767
		5 12 0.074064281829720011 13 0.13401480573921079 14 0.33159268013293164 
		17 0.33159268013293164 18 0.12873555216520588
		5 12 0.047829403369892977 13 0.088874065558821672 14 0.36658448289527179 
		17 0.37080522335427724 18 0.12590682482173637
		5 11 0.061850882962401245 12 0.14476246085128272 13 0.148532390239005 
		14 0.35868837122317615 17 0.28616589472413489
		5 12 0.072264653451251673 13 0.072264599675927479 14 0.24874540811223378 
		17 0.40639116716292928 18 0.20033417159765785
		5 14 0.12443180316414902 17 0.17264702479883309 18 0.12545724680584411 
		29 0.28873196261558687 30 0.28873196261558687
		5 11 0.16162849289245812 12 0.20197032810177434 13 0.19653254231070852 
		14 0.23076229774850054 17 0.20910633894655853
		5 12 0.14200171908759548 13 0.3270088283219062 14 0.37632565198182683 
		15 0.086872936922355079 17 0.067790863686316455
		5 11 0.098904125806523205 12 0.28614625650299425 13 0.29440040045211124 
		14 0.24397710814289603 15 0.076572109095475155
		5 11 0.095675700498355443 12 0.17630315319656042 13 0.17662098921302047 
		14 0.30861317523351173 15 0.24278698185855196
		5 11 0.2352679130110738 12 0.24705831084741769 13 0.19161585228235523 
		14 0.172012802882446 15 0.15404512097670719
		5 10 0.0011523385212534186 11 0.0011607836011564459 14 0.0047737763416006579 
		15 0.49645655076799472 16 0.49645655076799472
		5 10 0.047384027494875636 11 0.047384027494875636 14 0.079790702414586315 
		15 0.41822379902588297 16 0.40721744356977951
		5 9 0.13420497719335023 10 0.13535683259407247 11 0.13006239265490679 
		15 0.30020012332028906 16 0.30017567423738134
		5 10 0.0060873271066631202 11 0.0060849976342235122 14 0.015946322057446574 
		15 0.4859406766008334 16 0.4859406766008334
		5 12 0.0053069674547553186 13 0.0062264983509116422 14 0.052133547575551518 
		15 0.50565953325408475 16 0.43067345336469676
		5 12 0.00064047345169360647 13 0.00066719770342055815 14 0.006152735176207378 
		15 0.53468872316700722 16 0.45785087050167134
		5 14 0.002558652773542221 15 0.49828663992006111 16 0.49828663992006111 
		45 0.00043403369316779037 46 0.00043403369316779037
		5 13 0.0028735557161160864 14 0.018681673346243533 15 0.48784912861014618 
		16 0.48784912861014618 45 0.0027465137173481079
		5 12 0.092591683505203679 13 0.17883389438898661 14 0.32765159160634022 
		15 0.32765159160634022 16 0.07327123889312917
		5 12 0.051362849573624622 13 0.081958060696337015 14 0.3477195465468208 
		15 0.3680424433081127 16 0.1509170998751049
		5 12 0.075770167918318476 13 0.1216125539667437 14 0.32854897992532439 
		15 0.3290902272342987 16 0.14497807095531465
		5 12 0.11947470202612852 13 0.20999670225991196 14 0.28463596190364199 
		15 0.28371257881361295 17 0.10218005499670448
		5 9 0.1955544794162157 10 0.22653427966811496 11 0.22653427966811496 
		12 0.17184325939070791 15 0.17953370185684653
		5 11 0.10333937652276734 12 0.10026522402871713 14 0.1795075964023603 
		15 0.37984553235920882 16 0.23704227068694642
		5 12 0.019666281187823934 13 0.029073242452446746 14 0.17187527248356713 
		17 0.42028899768408551 18 0.35909620619207677
		5 12 0.028920971438956538 13 0.04761650357327072 14 0.29019931034702323 
		17 0.40871183742546735 18 0.22455137721528221
		5 12 0.052165170257153774 13 0.087074501381558089 14 0.31440914196324843 
		17 0.34648079746172655 18 0.19987038893631309
		5 12 0.035815389203068607 13 0.055146380684936019 14 0.24395961841008806 
		17 0.37208602921510775 18 0.29299258248679955
		5 12 0.0021946161178349024 13 0.0028568462410277916 14 0.02342977305545416 
		17 0.48661646218195492 18 0.48490230240372822
		5 12 0.0049415758768772567 13 0.0070345684348500108 14 0.077598240338352942 
		17 0.55103999675059778 18 0.359385618599322
		5 12 0.00054761937788666364 13 0.00069647134150967909 14 0.009358803620335655 
		17 0.67717549567207724 18 0.31222160998819071
		5 12 0.00018711225604048503 13 0.00022134948252956681 14 0.0018682152476264347 
		17 0.49886166150690181 18 0.49886166150690181
		5 14 0.094991852671853172 17 0.25099535248088989 18 0.24618115034323412 
		29 0.20391582225201144 30 0.20391582225201144
		5 14 0.017242003167302702 17 0.48759833856579959 18 0.48759833856579959 
		29 0.0037806598505490522 30 0.0037806598505490522
		5 14 0.10909680494397081 17 0.43217972078716416 18 0.3826145597254364 
		29 0.038054457271714325 30 0.038054457271714325
		5 12 0.00058340284045171594 13 0.00060712850851505544 14 0.0041195775733928845 
		17 0.49734494553882019 18 0.49734494553882019
		5 12 0.00077234324653986479 13 0.00084688033922217134 14 0.0089920930109734509 
		17 0.5992346803018701 18 0.39015400310139436
		5 12 0.00068239507600815965 13 0.00073542922011926332 14 0.0097652745098246833 
		17 0.80164520821797025 18 0.18717169297607766
		5 12 0.0013028470361380981 13 0.0015124871375168103 14 0.041694065316227151 
		17 0.920050585678995 18 0.035440014831122996
		5 11 0.0026241353176750699 12 0.011889907899595742 13 0.026334112355808344 
		14 0.6517014800338774 17 0.30745036439304341
		5 12 0.06860527638950259 13 0.37958895734682402 14 0.46031940508653418 
		15 0.054576167618314651 17 0.036910193558824522
		5 11 0.0055543214459688852 12 0.017521957263965413 13 0.026918630466851102 
		14 0.52383776284111638 15 0.42616732798209822
		5 12 0.0020526842723880235 13 0.0020205904088987921 14 0.028560626154647453 
		15 0.8765255138662007 16 0.090840585297865095
		5 11 0.00071363923217003956 12 0.00073680447638691676 14 0.0055324737682656052 
		15 0.64790317356253557 16 0.34511390896064192
		5 11 0.00083886253664162188 12 0.00086642239941511724 14 0.0056297608656851027 
		15 0.50478784329269077 16 0.48787711090556735
		5 11 0.015498470324366062 12 0.016108881382752408 14 0.10533373754418679 
		15 0.65845956543224793 16 0.20459934531644672
		5 11 0.035552668849031958 12 0.049904092456504262 13 0.049357853086834345 
		14 0.39008156067793631 15 0.47510382492969316
		5 11 0.10309535016748179 12 0.1114749043762268 13 0.09468212329839211 
		14 0.30191497094661274 15 0.38883265121128646
		5 11 0.13148439381768848 12 0.1369542483149683 13 0.11433664133476859 
		14 0.27522712573385422 15 0.34199759079872044
		5 9 0.15839977761554888 10 0.22990875670723571 11 0.23189854195176876 
		12 0.2083137693257324 15 0.17147915439971428
		5 9 0.19005549912069422 10 0.25693926978633275 11 0.25693926978633264 
		12 0.19362227905609897 15 0.10244368225054148
		5 10 0.0089652258725953816 11 0.0091957425831791697 14 0.036696149460159283 
		15 0.53054792331243872 16 0.41459495877162744
		5 10 0.0066391411610547523 11 0.0067560265761572574 14 0.025934339424467167 
		15 0.48459334647573077 16 0.47607714636258996
		5 10 0.003701360231488164 11 0.0037083087357341073 14 0.013252985798646711 
		15 0.52770627720736862 16 0.45163106802676239
		5 12 0.0029702096592328841 13 0.0029798011439991939 14 0.022942096877933891 
		17 0.5982294700229398 18 0.37287842229589419
		5 12 0.021229336607955215 13 0.021262182107720524 14 0.21117977819841321 
		17 0.65005081632981165 18 0.096277886756099371
		5 11 0.011439994135462163 12 0.046284583323464704 13 0.052565286717246265 
		14 0.60315955457133963 17 0.28655058125248728
		5 11 0.0040497030753907448 12 0.14172980290650158 13 0.53147597441705929 
		14 0.31934287662131688 15 0.003401642979731374
		5 11 0.026635346059153093 12 0.052138166286532804 13 0.051369978241956139 
		14 0.48089051806557775 15 0.38896599134678034
		5 11 0.024581383649736551 12 0.024813053302366644 14 0.13123668040022973 
		15 0.68763555245016428 16 0.13173333019750283
		5 8 0.075955214768764046 9 0.20239625131576008 10 0.28103823360748775 
		11 0.28103823360748775 12 0.15957206670050045
		5 10 0.19230596269792141 11 0.21645874685535885 12 0.20536892062122489 
		14 0.16447273985360453 15 0.22139362997189033
		5 12 0.083593598313202677 13 0.083593598313202677 14 0.37434515523788292 
		17 0.40487355626097082 18 0.053594091874741005
		5 12 0.026863068380392343 13 0.029560483161250709 14 0.44287588118951493 
		17 0.48011955116883864 18 0.020581016100003395
		5 12 0.012231612280112979 13 0.012561199073530427 14 0.16411454994860597 
		17 0.68524231983893613 18 0.12585031885881459
		5 12 0.0071571888051286756 13 0.007182574512456321 14 0.058678336778935386 
		17 0.59397588309677241 18 0.33300601680670733
		5 12 0.0053447042582886687 13 0.0053847022379887336 14 0.038952999264447778 
		17 0.51580797475534512 18 0.43450961948392974
		5 12 0.10464067674721236 13 0.10464067674721236 14 0.34408058783638767 
		17 0.37015145429882407 18 0.076486604370363559
		5 12 0.15817385369028142 14 0.20997175175210517 17 0.23856356972909379 
		29 0.19664541241425987 30 0.19664541241425987
		5 11 0.14998230708580976 12 0.15064083119301463 17 0.15593206996353023 
		29 0.27172239587882274 30 0.27172239587882263
		5 11 0.21795143255536542 12 0.21795143294923697 13 0.150464041608456 
		29 0.20681654644347081 30 0.20681654644347081
		5 11 0.11031813908719601 12 0.14493257993506525 13 0.14184325009983706 
		14 0.28352513017524622 17 0.31938090070265557
		5 14 0.064077862387172127 15 0.45354668911108448 16 0.44638328684909995 
		45 0.01799608082632179 46 0.01799608082632179
		5 14 0.047447702181365112 15 0.46593927147090081 16 0.46593927147090081 
		45 0.010336877438416641 46 0.010336877438416641
		5 12 0.008026199771957605 13 0.0093549204810319704 14 0.057941325628281408 
		15 0.46290112283687618 16 0.46177643128185281
		5 12 0.017743895117386863 13 0.023045214338585172 14 0.16085819724104525 
		15 0.45796712528799888 16 0.34038556801498382
		5 12 0.016249226442427583 13 0.021242690259132838 14 0.17839302266256976 
		15 0.49819819426650647 16 0.28591686636936348
		5 12 0.027785838119217567 13 0.044062036337695447 14 0.37499258908489175 
		15 0.44637107940796378 16 0.10678845705023164
		5 12 0.06557191910188459 13 0.14700567894573399 14 0.37414960957474858 
		15 0.37341527569676264 16 0.039857516680870272
		5 12 0.10529503677945175 13 0.28031394577733815 14 0.29154826741730838 
		15 0.1798738969929147 17 0.14296885303298695
		5 12 0.067738273555775483 13 0.17540387328696097 14 0.36519493915341517 
		15 0.048832044334881211 17 0.34283086966896709
		5 12 0.024362355111058082 13 0.047454983806041871 14 0.41396527915544934 
		17 0.43662399972247723 18 0.077593382204973471
		5 12 0.014113481464958709 13 0.02254015414989986 14 0.23280187735511898 
		17 0.51426813551460027 18 0.21627635151542229
		5 12 0.015314210733352708 13 0.023867100202068885 14 0.20726810644437524 
		17 0.47672437016287256 18 0.27682621245733058
		5 12 0.0073349568324226101 13 0.010170078542367079 14 0.076083004237560856 
		17 0.46763960633748503 18 0.43877235405016451
		5 12 0.0067816623870908454 13 0.0090714404324551915 14 0.059236627674681151 
		17 0.46356582941240237 18 0.46134444009337033
		5 12 0.0093183088061936196 13 0.012241809520785355 14 0.076967612146346828 
		17 0.46555335014452393 18 0.43591891938215033
		5 12 0.018115788792860084 13 0.026812612138374166 14 0.20071978036400329 
		17 0.48728451985001719 18 0.26706729885474539;
	setAttr ".wl[200:205].w"
		5 12 0.032465227138043826 13 0.059503227627704255 14 0.38984859916418524 
		17 0.42541775391992737 18 0.092765192150139328
		5 12 0.082238776815576606 13 0.20514603809249032 14 0.35715483768474177 
		15 0.047434781867944052 17 0.30802556553924726
		5 12 0.12708220267673581 13 0.27754571897748365 14 0.27965430918287315 
		15 0.17644476682613819 17 0.1392730023367692
		5 12 0.076329744888493339 13 0.16232691093464993 14 0.36515051815805788 
		15 0.35761383168035904 16 0.038578994338439851
		5 12 0.033237019568906699 13 0.048956323445209948 14 0.36126970932679831 
		15 0.44134760707707044 16 0.1151893405820146
		5 12 0.019086145234971524 13 0.023120797963288892 14 0.16354205503229002 
		15 0.48078335679402384 16 0.31346764497542562;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 -0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 -0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 -0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 -0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 -0 0.210011846539538 0.045642596473303459 -0.97663287764657492 -0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 -0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 -0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 -0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 -0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 -0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 -0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 -0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 -0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 -0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 -0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 -0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 -0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 -0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 -0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 -0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 -0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 -0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 -0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 -0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 -0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 -0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 -0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 -0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 -0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 -0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 -0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 -0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 -0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 -0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 -0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 -0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 -0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 -0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 -0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 -0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 -0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 -0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 -0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 -0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 -0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 -0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 -0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 -0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 -0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 -0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 -0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 -0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 -0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 -0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 -0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 -0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 -0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 -0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 -0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 -0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 -0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 -0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 -0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 -0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 -0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 -0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 -0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 -0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 -0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924785605262508 0.69647275897298966 0.6375904212684681 -0
		 0.89339606825899753 0.44836933267261586 -0.028432494404777593 0 -0.3056784495251747 0.56025943769584596 -0.76985066601817032 0
		 -3.5395339858223207 -2.4005302806614877 -1.4268589866057155 1;
	setAttr ".pm[32]" -type "matrix" -0.27889487958311754 0.70693339335951921 0.6499714020597479 -0
		 0.8885321944844633 0.44672740782126169 -0.10461913049686476 0 -0.36431879653257332 0.54834277642227769 -0.75272306596687089 0
		 -4.0483566124710331 -2.4178888719510168 -1.0785179654948196 1;
	setAttr ".pm[33]" -type "matrix" -0.23031896582471262 0.65282056315424064 0.72164983635030056 -0
		 0.83303853409609785 0.51558677430374356 -0.20054196287581566 0 -0.50299102844132282 0.55497350430992753 -0.66257409760833519 0
		 -4.4246285576916371 -2.6889499794631448 -0.5852216413243152 1;
	setAttr ".pm[34]" -type "matrix" -0.43594205479935338 0.59749644125918966 0.67301747937176337 -0
		 0.70084734239732094 0.69452627708497583 -0.16262303985934928 0 -0.56459501194389816 0.40078828965064228 -0.72152700529292924 0
		 -3.9504407340550634 -3.7708443804080867 -0.80903142183858512 1;
	setAttr ".pm[35]" -type "matrix" -0.80828666278327432 0.25069034959079767 0.53275418289181176 -0
		 0.21819681986783124 0.96794042106865841 -0.12442463205086605 0 -0.54686636262092747 0.015674497869846715 -0.83707316977088997 0
		 -1.2782210087401189 -5.4701710515155018 -1.0637098088558508 1;
	setAttr ".pm[36]" -type "matrix" -0.82004746228088032 -0.20903382553540736 0.53275418289181176 -0
		 -0.32022389661991219 0.93913532942412847 -0.12442463205086607 0 -0.47431931822375606 -0.27263472414471851 -0.83707316977088997 0
		 1.4741587162838448 -5.4790258078135139 -1.0637098088558503 1;
	setAttr ".pm[37]" -type "matrix" -0.68115617672397932 -0.58224855063069902 0.44386133893280488 -0
		 -0.71347233192191795 0.66391571242427372 -0.22399365700409787 0 -0.16426653491405938 -0.46925744755370707 -0.86764851951853672 0
		 3.7155105234907788 -4.253503924807462 -0.56138912952764053 1;
	setAttr ".pm[38]" -type "matrix" -0.50408144903854235 -0.80314783289629765 0.31757747283015064 0
		 -0.83807468363902604 0.36604708025856952 -0.40452485668685773 0 0.20864495531536334 -0.47006711600383 -0.85761540860300089 -0
		 4.7675519738061451 -2.6983875616478876 0.40050578146566135 1;
	setAttr ".pm[39]" -type "matrix" -0.13887806920042897 -0.97362021202337345 0.18104299112289102 0
		 -0.8442227548036797 0.02082911068982167 -0.53558761040520475 0 0.51768795829809233 -0.22722198592441178 -0.82484504420267912 -0
		 5.131402903469473 -0.54383199739958166 1.1062769262428087 1;
	setAttr ".pm[40]" -type "matrix" -0.44544499269810256 0.31790426804465338 -0.83696812056325143 0
		 -0.53604557662551799 0.65406162136325452 0.53372140226890541 0 0.71710103769301836 0.68639658494099753 -0.12093729747655504 -0
		 3.5487087028311417 -1.8700671363062362 -2.7925193128695747 1;
	setAttr ".pm[41]" -type "matrix" -0.052113655857806661 -0.12229876297960356 -0.99112419980888034 0
		 -0.12985132476009162 0.98487688829382625 -0.11470025441436067 0 0.99016301704880072 0.12272134076161549 -0.067206191608274221 -0
		 1.5808752410933884 -4.2107979689235933 0.024886527691079015 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923738209327 0.15316129470954071 0.84469936689614911 -0
		 -0.35222855576255746 0.93486282127867992 0.044345799082775778 0 -0.78288597326640097 -0.32027039075406954 0.53340081521212113 -0
		 1.1996855435952647 -4.1723182522672628 0.61489411505153346 1;
	setAttr ".pm[43]" -type "matrix" -0.73333548538209525 0.11850973006940393 0.66945837044455869 -0
		 0.055614852963414348 0.99184695892173957 -0.11465861593249307 0 -0.6775884104744303 -0.04685140293069355 -0.73394747225817225 0
		 -1.618463936552093 -4.150962652048455 0.6167161736380613 1;
	setAttr ".pm[44]" -type "matrix" 0.7178746917702189 0.19100109203229435 -0.6694583704445588 -0
		 -0.15418153848813718 0.98136713567445111 0.11465861593249313 0 0.67888436431047972 0.020907602937564346 0.73394747225817203 -0
		 2.9878104727393069 -3.9063461234579986 -0.61671617363806241 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497183340853 0.012292740621888149 -0.5042589919324536 -0
		 0.11820591039161055 0.96693328393588907 0.22598094425293511 -0 0.49036272815663917 -0.25473302287877969 0.83345994618206876 -0
		 -0.31526849647608046 -4.1175003638789578 -0.8411184408836696 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581191388532 0.14817028233168023 -0.5042589919324536 -0
		 -0.035601728897875065 0.97348093444814543 0.22598094425293513 0 0.52437017498182203 -0.17429984997043529 0.83345994618206876 -0
		 -0.54266112802664046 -4.2561403950661756 -0.84111844088366872 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227101337457 0.54496457952035493 -0.34985229130234941 -0
		 0.62286062490543848 0.76461427634874546 -0.16555860094266003 -0 0.17727848319440126 -0.34406193551726616 -0.92205950129284275 -0
		 -2.7951587350455624 -5.0172514607060918 -0.72188543037675135 1;
	setAttr ".pm[48]" -type "matrix" -0.63784894397210701 0.68611376530730284 -0.34985229130234935 -0
		 0.76296721301434756 0.62487709313034345 -0.16555860094265998 -0 0.10502264774222436 -0.37252720643841247 -0.92205950129284275 -0
		 -4.1298506854570984 -4.2789178555654228 -0.72188543037675157 1;
	setAttr ".pm[49]" -type "matrix" -0.43115001004128573 0.83169287787734247 -0.34985229130234941 -0
		 0.90227887362996351 0.39809946477601987 -0.16555860094266009 -0 0.0015821006427817763 -0.3870449237919949 -0.92205950129284286 -0
		 -5.4553896063024494 -2.9266921950579188 -0.72188543037675157 1;
	setAttr ".pm[50]" -type "matrix" -0.28599063606040587 0.89208336513818109 -0.34985229130234941 -0
		 0.95614812680294525 0.24160113672151495 -0.16555860094266009 0 -0.063167362593223475 -0.38185882257532194 -0.92205950129284286 0
		 -6.1336373055839015 -1.9280906660343249 -0.72188543037675168 1;
	setAttr ".pm[51]" -type "matrix" -0.10207338912265439 0.93122736080052537 -0.34985229130234935 -0
		 0.98513663428464682 0.045783855716037589 -0.16555860094266003 0 -0.138155112186749 -0.3615514362469906 -0.92205950129284264 0
		 -6.7508444217482166 -0.59181550033660835 -0.72188543037675135 1;
	setAttr ".pm[52]" -type "matrix" 0.23188992655137963 -0.90765105422430503 0.34985229130234929 -0
		 0.93832475256335257 0.30354078536636891 0.16555860094266009 0 -0.25646387794564546 0.28988369285745602 0.92205950129284264 -0
		 -6.7512693582381997 -1.903683870567642 0.72188543037675112 1;
	setAttr ".pm[53]" -type "matrix" 0.93511716042662907 -0.056207388714783812 0.34985229130234935 -0
		 -0.0026622692766375008 0.9861963607599693 0.16555860094266006 0 -0.35432867312417338 -0.15574808980420141 0.92205950129284275 -0
		 -0.34546931532217812 -7.3149787736033653 0.72188543037675168 1;
	setAttr ".pm[54]" -type "matrix" -0.39955119757237006 0.88654287775749618 -0.23323929003481172 -0
		 0.9138291243102904 0.40534605666864759 -0.024716510786627031 -0 0.072630379874905088 -0.22301636765187308 -0.9721052040178535 -0
		 -4.5278240663455414 -3.3954815719514109 -1.022056662989109 1;
	setAttr ".pm[55]" -type "matrix" -0.32480993554795584 0.91656856773150952 -0.23323929003481172 -0
		 0.94424079275899342 0.32832669611897614 -0.024716510786627038 -0 0.053924308611245898 -0.22826222040059005 -0.97210520401785339 -0
		 -5.2848407562928594 -2.9682891152938393 -1.022056662989109 1;
	setAttr ".pm[56]" -type "matrix" -0.20311030386251164 0.95097089232475285 -0.23323929003481175 -0
		 0.97886549333733408 0.20300600988146297 -0.024716510786627035 -0 0.02384429529963901 -0.23333007072186832 -0.97210520401785372 -0
		 -6.0531111964851538 -2.201331097817814 -1.0220566629891092 1;
	setAttr ".pm[57]" -type "matrix" 0.055141316109679081 -0.97085471046998095 0.23323929003481164 -0
		 0.99773223295074775 0.062605793866458606 0.024716510786627031 0 -0.038598271837057808 0.23134745672386586 0.97210520401785361 -0
		 -6.8860135218368184 0.39760004128751308 1.0220566629891104 1;
	setAttr ".pm[58]" -type "matrix" 0.28391908849808628 -0.93004805508665722 0.23323929003481161 -0
		 0.95438699314136222 0.29754757840910812 0.024716510786627038 0 -0.092387328725348924 0.21558305548535747 0.97210520401785361 -0
		 -7.2628020126628208 -1.3645944917354262 1.0220566629891112 1;
	setAttr ".pm[59]" -type "matrix" 0.55092252852547929 -0.8013013173252308 0.23323929003481161 -0
		 0.82040360957422054 0.57125039299078328 0.024716510786627056 0 -0.15304340874628516 0.17773347282019183 0.9721052040178535 -0
		 -6.9115203688474454 -3.6147653105046995 1.0220566629891117 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801929825545 -0.52562566535849164 0.23323929003481164 -0
		 0.53537162742211097 0.84425488725025144 0.024716510786627042 0 -0.20990504293822981 0.10464867543599525 0.9721052040178535 -0
		 -5.4326010176921917 -6.2006165117325418 1.0220566629891132 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862701361126 0.001203088118692175 0.23323929003481167 -0
		 -0.0071651765168071974 0.99966882233068455 0.024716510786627059 0 -0.23313231024988207 -0.025705996167453497 0.97210520401785372 -0
		 -1.6152689933561759 -8.4165599952487824 1.0220566629891152 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2.9481192621602541 0 1;
	setAttr -s 18 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 18 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 18 ".ifcl";
createNode skinCluster -n "skinCluster3";
	rename -uid "463BE887-AF4B-9F23-B998-53B9C27C24F1";
	setAttr -s 17 ".wl";
	setAttr ".wl[0:16].w"
		5 12 0.054471718892292575 13 0.24396073524948012 14 0.48783989080838774 
		15 0.18614903138685465 17 0.027578623662984907
		5 12 0.070564737609647918 13 0.34450204728130479 14 0.4003994395812327 
		15 0.11453549608156045 17 0.069998279446254114
		5 12 0.058906629285402523 13 0.30678184426906946 14 0.46440260751542134 
		15 0.047909917703312738 17 0.12199900122679397
		5 12 0.040513675616152017 13 0.16540817557303619 14 0.59420520418027856 
		15 0.18777057105157385 17 0.012102373578959429
		5 12 0.039923241941095852 13 0.21267795060420719 14 0.59994053676993653 
		15 0.018666270215538426 17 0.12879200046922196
		5 12 0.061352087692864585 13 0.23857554431817948 14 0.57786167102152552 
		15 0.10712618067556706 17 0.015084516291863493
		5 12 0.089278724100862419 13 0.37966752262895792 14 0.44716860472628434 
		15 0.045260681424385843 17 0.03862446711950953
		5 12 0.048849262016348413 13 0.24385599412993603 14 0.61221035861911877 
		15 0.017180049905566229 17 0.077904335329030641
		5 12 0.11164073756441836 13 0.23583879622359274 14 0.27434633228712929 
		15 0.19557127121871948 17 0.18260286270614018
		5 12 0.11101735747568191 13 0.23521967256409396 14 0.2763597675511712 
		15 0.19113022207695304 17 0.18627298033209988
		5 12 0.11149736919453083 13 0.23522001472244686 14 0.27707496228652451 
		15 0.18968601055021961 17 0.18652164324627821
		5 12 0.11213980810566845 13 0.23591220783750744 14 0.27442297023806811 
		15 0.19680234262282931 17 0.18072267119592664
		5 12 0.11069908891302527 13 0.23456852113349025 14 0.27861787480732458 
		15 0.18631213665779264 17 0.18980237848836726
		5 12 0.1108984185279593 13 0.23432191408175751 14 0.27980368823408025 
		15 0.1838741412870708 17 0.19110183786913212
		5 12 0.11222538171443992 13 0.2354217121442122 14 0.27715590930509498 
		15 0.18957079924236975 17 0.18562619759388316
		5 12 0.11250613385585038 13 0.23599383334640653 14 0.27488880168296953 
		15 0.19448450474318524 17 0.18212672637158839
		5 12 0.11154139927696297 13 0.2346982242516264 14 0.27920069222614774 
		15 0.18519642275765494 17 0.18936326148760793;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 -0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 -0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 -0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 -0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 -0 0.210011846539538 0.045642596473303459 -0.97663287764657492 -0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 -0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 -0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 -0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 -0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 -0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 -0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 -0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 -0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 -0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 -0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 -0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 -0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 -0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 -0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 -0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 -0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 -0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 -0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 -0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 -0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 -0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 -0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 -0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 -0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 -0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 -0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 -0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 -0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 -0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 -0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 -0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 -0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 -0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 -0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 -0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 -0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 -0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 -0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 -0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 -0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 -0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 -0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 -0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 -0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 -0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 -0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 -0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 -0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 -0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 -0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 -0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 -0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 -0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 -0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 -0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 -0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 -0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 -0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 -0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 -0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 -0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 -0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 -0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 -0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924785605262508 0.69647275897298966 0.6375904212684681 -0
		 0.89339606825899753 0.44836933267261586 -0.028432494404777593 0 -0.3056784495251747 0.56025943769584596 -0.76985066601817032 0
		 -3.5395339858223207 -2.4005302806614877 -1.4268589866057155 1;
	setAttr ".pm[32]" -type "matrix" -0.27889487958311754 0.70693339335951921 0.6499714020597479 -0
		 0.8885321944844633 0.44672740782126169 -0.10461913049686476 0 -0.36431879653257332 0.54834277642227769 -0.75272306596687089 0
		 -4.0483566124710331 -2.4178888719510168 -1.0785179654948196 1;
	setAttr ".pm[33]" -type "matrix" -0.23031896582471262 0.65282056315424064 0.72164983635030056 -0
		 0.83303853409609785 0.51558677430374356 -0.20054196287581566 0 -0.50299102844132282 0.55497350430992753 -0.66257409760833519 0
		 -4.4246285576916371 -2.6889499794631448 -0.5852216413243152 1;
	setAttr ".pm[34]" -type "matrix" -0.43594205479935338 0.59749644125918966 0.67301747937176337 -0
		 0.70084734239732094 0.69452627708497583 -0.16262303985934928 0 -0.56459501194389816 0.40078828965064228 -0.72152700529292924 0
		 -3.9504407340550634 -3.7708443804080867 -0.80903142183858512 1;
	setAttr ".pm[35]" -type "matrix" -0.80828666278327432 0.25069034959079767 0.53275418289181176 -0
		 0.21819681986783124 0.96794042106865841 -0.12442463205086605 0 -0.54686636262092747 0.015674497869846715 -0.83707316977088997 0
		 -1.2782210087401189 -5.4701710515155018 -1.0637098088558508 1;
	setAttr ".pm[36]" -type "matrix" -0.82004746228088032 -0.20903382553540736 0.53275418289181176 -0
		 -0.32022389661991219 0.93913532942412847 -0.12442463205086607 0 -0.47431931822375606 -0.27263472414471851 -0.83707316977088997 0
		 1.4741587162838448 -5.4790258078135139 -1.0637098088558503 1;
	setAttr ".pm[37]" -type "matrix" -0.68115617672397932 -0.58224855063069902 0.44386133893280488 -0
		 -0.71347233192191795 0.66391571242427372 -0.22399365700409787 0 -0.16426653491405938 -0.46925744755370707 -0.86764851951853672 0
		 3.7155105234907788 -4.253503924807462 -0.56138912952764053 1;
	setAttr ".pm[38]" -type "matrix" -0.50408144903854235 -0.80314783289629765 0.31757747283015064 0
		 -0.83807468363902604 0.36604708025856952 -0.40452485668685773 0 0.20864495531536334 -0.47006711600383 -0.85761540860300089 -0
		 4.7675519738061451 -2.6983875616478876 0.40050578146566135 1;
	setAttr ".pm[39]" -type "matrix" -0.13887806920042897 -0.97362021202337345 0.18104299112289102 0
		 -0.8442227548036797 0.02082911068982167 -0.53558761040520475 0 0.51768795829809233 -0.22722198592441178 -0.82484504420267912 -0
		 5.131402903469473 -0.54383199739958166 1.1062769262428087 1;
	setAttr ".pm[40]" -type "matrix" -0.44544499269810256 0.31790426804465338 -0.83696812056325143 0
		 -0.53604557662551799 0.65406162136325452 0.53372140226890541 0 0.71710103769301836 0.68639658494099753 -0.12093729747655504 -0
		 3.5487087028311417 -1.8700671363062362 -2.7925193128695747 1;
	setAttr ".pm[41]" -type "matrix" -0.052113655857806661 -0.12229876297960356 -0.99112419980888034 0
		 -0.12985132476009162 0.98487688829382625 -0.11470025441436067 0 0.99016301704880072 0.12272134076161549 -0.067206191608274221 -0
		 1.5808752410933884 -4.2107979689235933 0.024886527691079015 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923738209327 0.15316129470954071 0.84469936689614911 -0
		 -0.35222855576255746 0.93486282127867992 0.044345799082775778 0 -0.78288597326640097 -0.32027039075406954 0.53340081521212113 -0
		 1.1996855435952647 -4.1723182522672628 0.61489411505153346 1;
	setAttr ".pm[43]" -type "matrix" -0.73333548538209525 0.11850973006940393 0.66945837044455869 -0
		 0.055614852963414348 0.99184695892173957 -0.11465861593249307 0 -0.6775884104744303 -0.04685140293069355 -0.73394747225817225 0
		 -1.618463936552093 -4.150962652048455 0.6167161736380613 1;
	setAttr ".pm[44]" -type "matrix" 0.7178746917702189 0.19100109203229435 -0.6694583704445588 -0
		 -0.15418153848813718 0.98136713567445111 0.11465861593249313 0 0.67888436431047972 0.020907602937564346 0.73394747225817203 -0
		 2.9878104727393069 -3.9063461234579986 -0.61671617363806241 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497183340853 0.012292740621888149 -0.5042589919324536 -0
		 0.11820591039161055 0.96693328393588907 0.22598094425293511 -0 0.49036272815663917 -0.25473302287877969 0.83345994618206876 -0
		 -0.31526849647608046 -4.1175003638789578 -0.8411184408836696 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581191388532 0.14817028233168023 -0.5042589919324536 -0
		 -0.035601728897875065 0.97348093444814543 0.22598094425293513 0 0.52437017498182203 -0.17429984997043529 0.83345994618206876 -0
		 -0.54266112802664046 -4.2561403950661756 -0.84111844088366872 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227101337457 0.54496457952035493 -0.34985229130234941 -0
		 0.62286062490543848 0.76461427634874546 -0.16555860094266003 -0 0.17727848319440126 -0.34406193551726616 -0.92205950129284275 -0
		 -2.7951587350455624 -5.0172514607060918 -0.72188543037675135 1;
	setAttr ".pm[48]" -type "matrix" -0.63784894397210701 0.68611376530730284 -0.34985229130234935 -0
		 0.76296721301434756 0.62487709313034345 -0.16555860094265998 -0 0.10502264774222436 -0.37252720643841247 -0.92205950129284275 -0
		 -4.1298506854570984 -4.2789178555654228 -0.72188543037675157 1;
	setAttr ".pm[49]" -type "matrix" -0.43115001004128573 0.83169287787734247 -0.34985229130234941 -0
		 0.90227887362996351 0.39809946477601987 -0.16555860094266009 -0 0.0015821006427817763 -0.3870449237919949 -0.92205950129284286 -0
		 -5.4553896063024494 -2.9266921950579188 -0.72188543037675157 1;
	setAttr ".pm[50]" -type "matrix" -0.28599063606040587 0.89208336513818109 -0.34985229130234941 -0
		 0.95614812680294525 0.24160113672151495 -0.16555860094266009 0 -0.063167362593223475 -0.38185882257532194 -0.92205950129284286 0
		 -6.1336373055839015 -1.9280906660343249 -0.72188543037675168 1;
	setAttr ".pm[51]" -type "matrix" -0.10207338912265439 0.93122736080052537 -0.34985229130234935 -0
		 0.98513663428464682 0.045783855716037589 -0.16555860094266003 0 -0.138155112186749 -0.3615514362469906 -0.92205950129284264 0
		 -6.7508444217482166 -0.59181550033660835 -0.72188543037675135 1;
	setAttr ".pm[52]" -type "matrix" 0.23188992655137963 -0.90765105422430503 0.34985229130234929 -0
		 0.93832475256335257 0.30354078536636891 0.16555860094266009 0 -0.25646387794564546 0.28988369285745602 0.92205950129284264 -0
		 -6.7512693582381997 -1.903683870567642 0.72188543037675112 1;
	setAttr ".pm[53]" -type "matrix" 0.93511716042662907 -0.056207388714783812 0.34985229130234935 -0
		 -0.0026622692766375008 0.9861963607599693 0.16555860094266006 0 -0.35432867312417338 -0.15574808980420141 0.92205950129284275 -0
		 -0.34546931532217812 -7.3149787736033653 0.72188543037675168 1;
	setAttr ".pm[54]" -type "matrix" -0.39955119757237006 0.88654287775749618 -0.23323929003481172 -0
		 0.9138291243102904 0.40534605666864759 -0.024716510786627031 -0 0.072630379874905088 -0.22301636765187308 -0.9721052040178535 -0
		 -4.5278240663455414 -3.3954815719514109 -1.022056662989109 1;
	setAttr ".pm[55]" -type "matrix" -0.32480993554795584 0.91656856773150952 -0.23323929003481172 -0
		 0.94424079275899342 0.32832669611897614 -0.024716510786627038 -0 0.053924308611245898 -0.22826222040059005 -0.97210520401785339 -0
		 -5.2848407562928594 -2.9682891152938393 -1.022056662989109 1;
	setAttr ".pm[56]" -type "matrix" -0.20311030386251164 0.95097089232475285 -0.23323929003481175 -0
		 0.97886549333733408 0.20300600988146297 -0.024716510786627035 -0 0.02384429529963901 -0.23333007072186832 -0.97210520401785372 -0
		 -6.0531111964851538 -2.201331097817814 -1.0220566629891092 1;
	setAttr ".pm[57]" -type "matrix" 0.055141316109679081 -0.97085471046998095 0.23323929003481164 -0
		 0.99773223295074775 0.062605793866458606 0.024716510786627031 0 -0.038598271837057808 0.23134745672386586 0.97210520401785361 -0
		 -6.8860135218368184 0.39760004128751308 1.0220566629891104 1;
	setAttr ".pm[58]" -type "matrix" 0.28391908849808628 -0.93004805508665722 0.23323929003481161 -0
		 0.95438699314136222 0.29754757840910812 0.024716510786627038 0 -0.092387328725348924 0.21558305548535747 0.97210520401785361 -0
		 -7.2628020126628208 -1.3645944917354262 1.0220566629891112 1;
	setAttr ".pm[59]" -type "matrix" 0.55092252852547929 -0.8013013173252308 0.23323929003481161 -0
		 0.82040360957422054 0.57125039299078328 0.024716510786627056 0 -0.15304340874628516 0.17773347282019183 0.9721052040178535 -0
		 -6.9115203688474454 -3.6147653105046995 1.0220566629891117 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801929825545 -0.52562566535849164 0.23323929003481164 -0
		 0.53537162742211097 0.84425488725025144 0.024716510786627042 0 -0.20990504293822981 0.10464867543599525 0.9721052040178535 -0
		 -5.4326010176921917 -6.2006165117325418 1.0220566629891132 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862701361126 0.001203088118692175 0.23323929003481167 -0
		 -0.0071651765168071974 0.99966882233068455 0.024716510786627059 0 -0.23313231024988207 -0.025705996167453497 0.97210520401785372 -0
		 -1.6152689933561759 -8.4165599952487824 1.0220566629891152 1;
	setAttr ".gm" -type "matrix" 2.8111605529886936 -0.0073032583518964434 -1.314361194316511 0
		 1.1930342377176868 1.3164992517603069 2.5443508738252496 0 0.76333658674085325 -3.888830163605832 1.6542354126645016 0
		 4.3595424953135264 4.2080814008643879 2.3882914173254743 1;
	setAttr -s 5 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster4";
	rename -uid "F3F070E0-F043-E454-D198-32BB9C3F4931";
	setAttr -s 17 ".wl";
	setAttr ".wl[0:16].w"
		5 12 0.092047942468724317 13 0.26782509512182656 14 0.32614355698168912 
		15 0.22381049026123187 17 0.090172915166528103
		5 12 0.10002371414235589 13 0.28816953518203803 14 0.30334261444641503 
		15 0.17550207334042486 17 0.13296206288876622
		5 12 0.09447239857720427 13 0.28832379462947 14 0.31883848308012025 
		15 0.12410224851035589 17 0.17426307520284962
		5 12 0.079227162680418961 13 0.25207524004225934 14 0.36066136512069419 
		15 0.24513867419638877 17 0.062897557960238812
		5 12 0.082200086645439749 13 0.28436536732411377 14 0.35516776275914236 
		15 0.089499174606692114 17 0.18876760866461209
		5 12 0.073640020633237685 13 0.27842648704485701 14 0.38704454960914103 
		15 0.2020179263390591 17 0.058871016373705232
		5 12 0.077080063922965014 13 0.33599344958624233 14 0.37137271323972665 
		15 0.12623839368286086 17 0.089315379568205219
		5 12 0.075825391536294626 13 0.30994130873749054 14 0.38025132583474425 
		15 0.084892195655410549 17 0.14908977823606012
		5 12 0.10195040822876206 13 0.23731179714052361 14 0.26582575197602604 
		15 0.21098843217885713 17 0.18392361047583128
		5 12 0.1021668828843508 13 0.23795725678490146 14 0.26426548054980004 
		15 0.20775840355452133 17 0.18785197622642633
		5 12 0.1018872666561733 13 0.23791709962409907 14 0.26523398231128792 
		15 0.20841190529779235 17 0.18654974611064745
		5 12 0.10172276507387892 13 0.23705199250114911 14 0.26685349910419348 
		15 0.21238019461043275 17 0.18199154871034567
		5 12 0.10223135117901508 13 0.23857948670996826 14 0.26306977381150076 
		15 0.20455877619979551 17 0.19156061209972042
		5 12 0.10205279954454748 13 0.23869728063632736 14 0.26345691943420579 
		15 0.2030676615166114 17 0.19272533886830795
		5 12 0.1017369033973832 13 0.23810073444220564 14 0.26548849745267616 
		15 0.20780404526246785 17 0.18686981944526707
		5 12 0.10164020612979319 13 0.23739157793125093 14 0.26672055039202169 
		15 0.21107061633078902 17 0.18317704921614522
		5 12 0.10193273800724736 13 0.23870069302034785 14 0.26390441278607951 
		15 0.2045421608572876 17 0.19091999532903772;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 -0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 -0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 -0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 -0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 -0 0.210011846539538 0.045642596473303459 -0.97663287764657492 -0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 -0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 -0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 -0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 -0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 -0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 -0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 -0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 -0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 -0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 -0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 -0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 -0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 -0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 -0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 -0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 -0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 -0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 -0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 -0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 -0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 -0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 -0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 -0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 -0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 -0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 -0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 -0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 -0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 -0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 -0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 -0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 -0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 -0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 -0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 -0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 -0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 -0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 -0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 -0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 -0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 -0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 -0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 -0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 -0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 -0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 -0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 -0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 -0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 -0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 -0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 -0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 -0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 -0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 -0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 -0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 -0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 -0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 -0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 -0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 -0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 -0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 -0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 -0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 -0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924785605262508 0.69647275897298966 0.6375904212684681 -0
		 0.89339606825899753 0.44836933267261586 -0.028432494404777593 0 -0.3056784495251747 0.56025943769584596 -0.76985066601817032 0
		 -3.5395339858223207 -2.4005302806614877 -1.4268589866057155 1;
	setAttr ".pm[32]" -type "matrix" -0.27889487958311754 0.70693339335951921 0.6499714020597479 -0
		 0.8885321944844633 0.44672740782126169 -0.10461913049686476 0 -0.36431879653257332 0.54834277642227769 -0.75272306596687089 0
		 -4.0483566124710331 -2.4178888719510168 -1.0785179654948196 1;
	setAttr ".pm[33]" -type "matrix" -0.23031896582471262 0.65282056315424064 0.72164983635030056 -0
		 0.83303853409609785 0.51558677430374356 -0.20054196287581566 0 -0.50299102844132282 0.55497350430992753 -0.66257409760833519 0
		 -4.4246285576916371 -2.6889499794631448 -0.5852216413243152 1;
	setAttr ".pm[34]" -type "matrix" -0.43594205479935338 0.59749644125918966 0.67301747937176337 -0
		 0.70084734239732094 0.69452627708497583 -0.16262303985934928 0 -0.56459501194389816 0.40078828965064228 -0.72152700529292924 0
		 -3.9504407340550634 -3.7708443804080867 -0.80903142183858512 1;
	setAttr ".pm[35]" -type "matrix" -0.80828666278327432 0.25069034959079767 0.53275418289181176 -0
		 0.21819681986783124 0.96794042106865841 -0.12442463205086605 0 -0.54686636262092747 0.015674497869846715 -0.83707316977088997 0
		 -1.2782210087401189 -5.4701710515155018 -1.0637098088558508 1;
	setAttr ".pm[36]" -type "matrix" -0.82004746228088032 -0.20903382553540736 0.53275418289181176 -0
		 -0.32022389661991219 0.93913532942412847 -0.12442463205086607 0 -0.47431931822375606 -0.27263472414471851 -0.83707316977088997 0
		 1.4741587162838448 -5.4790258078135139 -1.0637098088558503 1;
	setAttr ".pm[37]" -type "matrix" -0.68115617672397932 -0.58224855063069902 0.44386133893280488 -0
		 -0.71347233192191795 0.66391571242427372 -0.22399365700409787 0 -0.16426653491405938 -0.46925744755370707 -0.86764851951853672 0
		 3.7155105234907788 -4.253503924807462 -0.56138912952764053 1;
	setAttr ".pm[38]" -type "matrix" -0.50408144903854235 -0.80314783289629765 0.31757747283015064 0
		 -0.83807468363902604 0.36604708025856952 -0.40452485668685773 0 0.20864495531536334 -0.47006711600383 -0.85761540860300089 -0
		 4.7675519738061451 -2.6983875616478876 0.40050578146566135 1;
	setAttr ".pm[39]" -type "matrix" -0.13887806920042897 -0.97362021202337345 0.18104299112289102 0
		 -0.8442227548036797 0.02082911068982167 -0.53558761040520475 0 0.51768795829809233 -0.22722198592441178 -0.82484504420267912 -0
		 5.131402903469473 -0.54383199739958166 1.1062769262428087 1;
	setAttr ".pm[40]" -type "matrix" -0.44544499269810256 0.31790426804465338 -0.83696812056325143 0
		 -0.53604557662551799 0.65406162136325452 0.53372140226890541 0 0.71710103769301836 0.68639658494099753 -0.12093729747655504 -0
		 3.5487087028311417 -1.8700671363062362 -2.7925193128695747 1;
	setAttr ".pm[41]" -type "matrix" -0.052113655857806661 -0.12229876297960356 -0.99112419980888034 0
		 -0.12985132476009162 0.98487688829382625 -0.11470025441436067 0 0.99016301704880072 0.12272134076161549 -0.067206191608274221 -0
		 1.5808752410933884 -4.2107979689235933 0.024886527691079015 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923738209327 0.15316129470954071 0.84469936689614911 -0
		 -0.35222855576255746 0.93486282127867992 0.044345799082775778 0 -0.78288597326640097 -0.32027039075406954 0.53340081521212113 -0
		 1.1996855435952647 -4.1723182522672628 0.61489411505153346 1;
	setAttr ".pm[43]" -type "matrix" -0.73333548538209525 0.11850973006940393 0.66945837044455869 -0
		 0.055614852963414348 0.99184695892173957 -0.11465861593249307 0 -0.6775884104744303 -0.04685140293069355 -0.73394747225817225 0
		 -1.618463936552093 -4.150962652048455 0.6167161736380613 1;
	setAttr ".pm[44]" -type "matrix" 0.7178746917702189 0.19100109203229435 -0.6694583704445588 -0
		 -0.15418153848813718 0.98136713567445111 0.11465861593249313 0 0.67888436431047972 0.020907602937564346 0.73394747225817203 -0
		 2.9878104727393069 -3.9063461234579986 -0.61671617363806241 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497183340853 0.012292740621888149 -0.5042589919324536 -0
		 0.11820591039161055 0.96693328393588907 0.22598094425293511 -0 0.49036272815663917 -0.25473302287877969 0.83345994618206876 -0
		 -0.31526849647608046 -4.1175003638789578 -0.8411184408836696 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581191388532 0.14817028233168023 -0.5042589919324536 -0
		 -0.035601728897875065 0.97348093444814543 0.22598094425293513 0 0.52437017498182203 -0.17429984997043529 0.83345994618206876 -0
		 -0.54266112802664046 -4.2561403950661756 -0.84111844088366872 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227101337457 0.54496457952035493 -0.34985229130234941 -0
		 0.62286062490543848 0.76461427634874546 -0.16555860094266003 -0 0.17727848319440126 -0.34406193551726616 -0.92205950129284275 -0
		 -2.7951587350455624 -5.0172514607060918 -0.72188543037675135 1;
	setAttr ".pm[48]" -type "matrix" -0.63784894397210701 0.68611376530730284 -0.34985229130234935 -0
		 0.76296721301434756 0.62487709313034345 -0.16555860094265998 -0 0.10502264774222436 -0.37252720643841247 -0.92205950129284275 -0
		 -4.1298506854570984 -4.2789178555654228 -0.72188543037675157 1;
	setAttr ".pm[49]" -type "matrix" -0.43115001004128573 0.83169287787734247 -0.34985229130234941 -0
		 0.90227887362996351 0.39809946477601987 -0.16555860094266009 -0 0.0015821006427817763 -0.3870449237919949 -0.92205950129284286 -0
		 -5.4553896063024494 -2.9266921950579188 -0.72188543037675157 1;
	setAttr ".pm[50]" -type "matrix" -0.28599063606040587 0.89208336513818109 -0.34985229130234941 -0
		 0.95614812680294525 0.24160113672151495 -0.16555860094266009 0 -0.063167362593223475 -0.38185882257532194 -0.92205950129284286 0
		 -6.1336373055839015 -1.9280906660343249 -0.72188543037675168 1;
	setAttr ".pm[51]" -type "matrix" -0.10207338912265439 0.93122736080052537 -0.34985229130234935 -0
		 0.98513663428464682 0.045783855716037589 -0.16555860094266003 0 -0.138155112186749 -0.3615514362469906 -0.92205950129284264 0
		 -6.7508444217482166 -0.59181550033660835 -0.72188543037675135 1;
	setAttr ".pm[52]" -type "matrix" 0.23188992655137963 -0.90765105422430503 0.34985229130234929 -0
		 0.93832475256335257 0.30354078536636891 0.16555860094266009 0 -0.25646387794564546 0.28988369285745602 0.92205950129284264 -0
		 -6.7512693582381997 -1.903683870567642 0.72188543037675112 1;
	setAttr ".pm[53]" -type "matrix" 0.93511716042662907 -0.056207388714783812 0.34985229130234935 -0
		 -0.0026622692766375008 0.9861963607599693 0.16555860094266006 0 -0.35432867312417338 -0.15574808980420141 0.92205950129284275 -0
		 -0.34546931532217812 -7.3149787736033653 0.72188543037675168 1;
	setAttr ".pm[54]" -type "matrix" -0.39955119757237006 0.88654287775749618 -0.23323929003481172 -0
		 0.9138291243102904 0.40534605666864759 -0.024716510786627031 -0 0.072630379874905088 -0.22301636765187308 -0.9721052040178535 -0
		 -4.5278240663455414 -3.3954815719514109 -1.022056662989109 1;
	setAttr ".pm[55]" -type "matrix" -0.32480993554795584 0.91656856773150952 -0.23323929003481172 -0
		 0.94424079275899342 0.32832669611897614 -0.024716510786627038 -0 0.053924308611245898 -0.22826222040059005 -0.97210520401785339 -0
		 -5.2848407562928594 -2.9682891152938393 -1.022056662989109 1;
	setAttr ".pm[56]" -type "matrix" -0.20311030386251164 0.95097089232475285 -0.23323929003481175 -0
		 0.97886549333733408 0.20300600988146297 -0.024716510786627035 -0 0.02384429529963901 -0.23333007072186832 -0.97210520401785372 -0
		 -6.0531111964851538 -2.201331097817814 -1.0220566629891092 1;
	setAttr ".pm[57]" -type "matrix" 0.055141316109679081 -0.97085471046998095 0.23323929003481164 -0
		 0.99773223295074775 0.062605793866458606 0.024716510786627031 0 -0.038598271837057808 0.23134745672386586 0.97210520401785361 -0
		 -6.8860135218368184 0.39760004128751308 1.0220566629891104 1;
	setAttr ".pm[58]" -type "matrix" 0.28391908849808628 -0.93004805508665722 0.23323929003481161 -0
		 0.95438699314136222 0.29754757840910812 0.024716510786627038 0 -0.092387328725348924 0.21558305548535747 0.97210520401785361 -0
		 -7.2628020126628208 -1.3645944917354262 1.0220566629891112 1;
	setAttr ".pm[59]" -type "matrix" 0.55092252852547929 -0.8013013173252308 0.23323929003481161 -0
		 0.82040360957422054 0.57125039299078328 0.024716510786627056 0 -0.15304340874628516 0.17773347282019183 0.9721052040178535 -0
		 -6.9115203688474454 -3.6147653105046995 1.0220566629891117 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801929825545 -0.52562566535849164 0.23323929003481164 -0
		 0.53537162742211097 0.84425488725025144 0.024716510786627042 0 -0.20990504293822981 0.10464867543599525 0.9721052040178535 -0
		 -5.4326010176921917 -6.2006165117325418 1.0220566629891132 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862701361126 0.001203088118692175 0.23323929003481167 -0
		 -0.0071651765168071974 0.99966882233068455 0.024716510786627059 0 -0.23313231024988207 -0.025705996167453497 0.97210520401785372 -0
		 -1.6152689933561759 -8.4165599952487824 1.0220566629891152 1;
	setAttr ".gm" -type "matrix" 2.6749682748819188 -0.0069494374392169303 -1.2506843455791465 0
		 1.1352353153041634 1.2527188205670476 2.4210847226120724 0 0.72635522379452122 -3.7004280324686607 1.5740926797508099 0
		 4.3877335395692683 4.1628757265942022 2.3984631100837901 1;
	setAttr -s 5 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster5";
	rename -uid "8AA8C9DC-3047-4E4D-AB64-AC8031048425";
	setAttr -s 17 ".wl";
	setAttr ".wl[0:16].w"
		5 12 0.11838607592754394 13 0.25454297431479556 14 0.27420949787729693 
		15 0.21997220010176882 17 0.1328892517785949
		5 12 0.12205580618559785 13 0.25981320585028939 14 0.26577216120915526 
		15 0.19491104934017842 17 0.15744777741477908
		5 12 0.11976571348855812 13 0.2627710103432227 14 0.26827895482145536 
		15 0.16854481725473322 17 0.18063950409203056
		5 12 0.11174603933702253 13 0.2529928716262963 14 0.28585659066922775 
		15 0.23242063045001229 17 0.11698386791744116
		5 12 0.1135981578024363 13 0.26571641598031825 14 0.27897134904247956 
		15 0.15139315088826366 17 0.19032092628650213
		5 12 0.10731680925686858 13 0.26281292907006665 14 0.2923621731427557 
		15 0.21898400945913574 17 0.11852407907117316
		5 12 0.10744087570364159 13 0.27718164486491331 14 0.28836569622351688 
		15 0.18398629737586875 17 0.14302548583205951
		5 12 0.10906134628905087 13 0.27435745424350849 14 0.28562576411466895 
		15 0.15509891362743633 17 0.17585652172533534
		5 12 0.11533262907289168 13 0.23792642336674535 14 0.2528834002852034 
		15 0.21385563970536117 17 0.1800019075697985
		5 12 0.11557726933568672 13 0.23825180041997829 14 0.25206133687243082 
		15 0.21189410144486431 17 0.1822154919270397
		5 12 0.11511627659893642 13 0.2384017943739152 14 0.25256138247534055 
		15 0.21201962279218287 17 0.18190092375962499
		5 12 0.11497932667486799 13 0.23789950774344357 14 0.253450479594518 
		15 0.21456565952273596 17 0.17910502646443441
		5 12 0.11556419750375033 13 0.23866834747567633 14 0.25146439529100018 
		15 0.20981490822363252 17 0.18448815150594056
		5 12 0.11530814689436487 13 0.23895647478236476 14 0.25142312631235769 
		15 0.2088056792859917 17 0.18550657272492094
		5 12 0.11472888840617881 13 0.23866454036288001 14 0.25278716928871675 
		15 0.21145439621587572 17 0.18236500572634878
		5 12 0.11473162696346546 13 0.23821231379158836 14 0.25341133764707235 
		15 0.2135775351199235 17 0.18006718647795036
		5 12 0.11496516667214636 13 0.23896517148281046 14 0.25196303597333675 
		15 0.2094719843724534 17 0.18463464149925302;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 -0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 -0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 -0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 -0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 -0 0.210011846539538 0.045642596473303459 -0.97663287764657492 -0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 -0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 -0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 -0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 -0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 -0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 -0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 -0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 -0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 -0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 -0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 -0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 -0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 -0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 -0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 -0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 -0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 -0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 -0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 -0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 -0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 -0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 -0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 -0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 -0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 -0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 -0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 -0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 -0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 -0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 -0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 -0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 -0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 -0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 -0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 -0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 -0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 -0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 -0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 -0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 -0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 -0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 -0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 -0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 -0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 -0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 -0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 -0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 -0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 -0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 -0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 -0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 -0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 -0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 -0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 -0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 -0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 -0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 -0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 -0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 -0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 -0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 -0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 -0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 -0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924785605262508 0.69647275897298966 0.6375904212684681 -0
		 0.89339606825899753 0.44836933267261586 -0.028432494404777593 0 -0.3056784495251747 0.56025943769584596 -0.76985066601817032 0
		 -3.5395339858223207 -2.4005302806614877 -1.4268589866057155 1;
	setAttr ".pm[32]" -type "matrix" -0.27889487958311754 0.70693339335951921 0.6499714020597479 -0
		 0.8885321944844633 0.44672740782126169 -0.10461913049686476 0 -0.36431879653257332 0.54834277642227769 -0.75272306596687089 0
		 -4.0483566124710331 -2.4178888719510168 -1.0785179654948196 1;
	setAttr ".pm[33]" -type "matrix" -0.23031896582471262 0.65282056315424064 0.72164983635030056 -0
		 0.83303853409609785 0.51558677430374356 -0.20054196287581566 0 -0.50299102844132282 0.55497350430992753 -0.66257409760833519 0
		 -4.4246285576916371 -2.6889499794631448 -0.5852216413243152 1;
	setAttr ".pm[34]" -type "matrix" -0.43594205479935338 0.59749644125918966 0.67301747937176337 -0
		 0.70084734239732094 0.69452627708497583 -0.16262303985934928 0 -0.56459501194389816 0.40078828965064228 -0.72152700529292924 0
		 -3.9504407340550634 -3.7708443804080867 -0.80903142183858512 1;
	setAttr ".pm[35]" -type "matrix" -0.80828666278327432 0.25069034959079767 0.53275418289181176 -0
		 0.21819681986783124 0.96794042106865841 -0.12442463205086605 0 -0.54686636262092747 0.015674497869846715 -0.83707316977088997 0
		 -1.2782210087401189 -5.4701710515155018 -1.0637098088558508 1;
	setAttr ".pm[36]" -type "matrix" -0.82004746228088032 -0.20903382553540736 0.53275418289181176 -0
		 -0.32022389661991219 0.93913532942412847 -0.12442463205086607 0 -0.47431931822375606 -0.27263472414471851 -0.83707316977088997 0
		 1.4741587162838448 -5.4790258078135139 -1.0637098088558503 1;
	setAttr ".pm[37]" -type "matrix" -0.68115617672397932 -0.58224855063069902 0.44386133893280488 -0
		 -0.71347233192191795 0.66391571242427372 -0.22399365700409787 0 -0.16426653491405938 -0.46925744755370707 -0.86764851951853672 0
		 3.7155105234907788 -4.253503924807462 -0.56138912952764053 1;
	setAttr ".pm[38]" -type "matrix" -0.50408144903854235 -0.80314783289629765 0.31757747283015064 0
		 -0.83807468363902604 0.36604708025856952 -0.40452485668685773 0 0.20864495531536334 -0.47006711600383 -0.85761540860300089 -0
		 4.7675519738061451 -2.6983875616478876 0.40050578146566135 1;
	setAttr ".pm[39]" -type "matrix" -0.13887806920042897 -0.97362021202337345 0.18104299112289102 0
		 -0.8442227548036797 0.02082911068982167 -0.53558761040520475 0 0.51768795829809233 -0.22722198592441178 -0.82484504420267912 -0
		 5.131402903469473 -0.54383199739958166 1.1062769262428087 1;
	setAttr ".pm[40]" -type "matrix" -0.44544499269810256 0.31790426804465338 -0.83696812056325143 0
		 -0.53604557662551799 0.65406162136325452 0.53372140226890541 0 0.71710103769301836 0.68639658494099753 -0.12093729747655504 -0
		 3.5487087028311417 -1.8700671363062362 -2.7925193128695747 1;
	setAttr ".pm[41]" -type "matrix" -0.052113655857806661 -0.12229876297960356 -0.99112419980888034 0
		 -0.12985132476009162 0.98487688829382625 -0.11470025441436067 0 0.99016301704880072 0.12272134076161549 -0.067206191608274221 -0
		 1.5808752410933884 -4.2107979689235933 0.024886527691079015 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923738209327 0.15316129470954071 0.84469936689614911 -0
		 -0.35222855576255746 0.93486282127867992 0.044345799082775778 0 -0.78288597326640097 -0.32027039075406954 0.53340081521212113 -0
		 1.1996855435952647 -4.1723182522672628 0.61489411505153346 1;
	setAttr ".pm[43]" -type "matrix" -0.73333548538209525 0.11850973006940393 0.66945837044455869 -0
		 0.055614852963414348 0.99184695892173957 -0.11465861593249307 0 -0.6775884104744303 -0.04685140293069355 -0.73394747225817225 0
		 -1.618463936552093 -4.150962652048455 0.6167161736380613 1;
	setAttr ".pm[44]" -type "matrix" 0.7178746917702189 0.19100109203229435 -0.6694583704445588 -0
		 -0.15418153848813718 0.98136713567445111 0.11465861593249313 0 0.67888436431047972 0.020907602937564346 0.73394747225817203 -0
		 2.9878104727393069 -3.9063461234579986 -0.61671617363806241 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497183340853 0.012292740621888149 -0.5042589919324536 -0
		 0.11820591039161055 0.96693328393588907 0.22598094425293511 -0 0.49036272815663917 -0.25473302287877969 0.83345994618206876 -0
		 -0.31526849647608046 -4.1175003638789578 -0.8411184408836696 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581191388532 0.14817028233168023 -0.5042589919324536 -0
		 -0.035601728897875065 0.97348093444814543 0.22598094425293513 0 0.52437017498182203 -0.17429984997043529 0.83345994618206876 -0
		 -0.54266112802664046 -4.2561403950661756 -0.84111844088366872 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227101337457 0.54496457952035493 -0.34985229130234941 -0
		 0.62286062490543848 0.76461427634874546 -0.16555860094266003 -0 0.17727848319440126 -0.34406193551726616 -0.92205950129284275 -0
		 -2.7951587350455624 -5.0172514607060918 -0.72188543037675135 1;
	setAttr ".pm[48]" -type "matrix" -0.63784894397210701 0.68611376530730284 -0.34985229130234935 -0
		 0.76296721301434756 0.62487709313034345 -0.16555860094265998 -0 0.10502264774222436 -0.37252720643841247 -0.92205950129284275 -0
		 -4.1298506854570984 -4.2789178555654228 -0.72188543037675157 1;
	setAttr ".pm[49]" -type "matrix" -0.43115001004128573 0.83169287787734247 -0.34985229130234941 -0
		 0.90227887362996351 0.39809946477601987 -0.16555860094266009 -0 0.0015821006427817763 -0.3870449237919949 -0.92205950129284286 -0
		 -5.4553896063024494 -2.9266921950579188 -0.72188543037675157 1;
	setAttr ".pm[50]" -type "matrix" -0.28599063606040587 0.89208336513818109 -0.34985229130234941 -0
		 0.95614812680294525 0.24160113672151495 -0.16555860094266009 0 -0.063167362593223475 -0.38185882257532194 -0.92205950129284286 0
		 -6.1336373055839015 -1.9280906660343249 -0.72188543037675168 1;
	setAttr ".pm[51]" -type "matrix" -0.10207338912265439 0.93122736080052537 -0.34985229130234935 -0
		 0.98513663428464682 0.045783855716037589 -0.16555860094266003 0 -0.138155112186749 -0.3615514362469906 -0.92205950129284264 0
		 -6.7508444217482166 -0.59181550033660835 -0.72188543037675135 1;
	setAttr ".pm[52]" -type "matrix" 0.23188992655137963 -0.90765105422430503 0.34985229130234929 -0
		 0.93832475256335257 0.30354078536636891 0.16555860094266009 0 -0.25646387794564546 0.28988369285745602 0.92205950129284264 -0
		 -6.7512693582381997 -1.903683870567642 0.72188543037675112 1;
	setAttr ".pm[53]" -type "matrix" 0.93511716042662907 -0.056207388714783812 0.34985229130234935 -0
		 -0.0026622692766375008 0.9861963607599693 0.16555860094266006 0 -0.35432867312417338 -0.15574808980420141 0.92205950129284275 -0
		 -0.34546931532217812 -7.3149787736033653 0.72188543037675168 1;
	setAttr ".pm[54]" -type "matrix" -0.39955119757237006 0.88654287775749618 -0.23323929003481172 -0
		 0.9138291243102904 0.40534605666864759 -0.024716510786627031 -0 0.072630379874905088 -0.22301636765187308 -0.9721052040178535 -0
		 -4.5278240663455414 -3.3954815719514109 -1.022056662989109 1;
	setAttr ".pm[55]" -type "matrix" -0.32480993554795584 0.91656856773150952 -0.23323929003481172 -0
		 0.94424079275899342 0.32832669611897614 -0.024716510786627038 -0 0.053924308611245898 -0.22826222040059005 -0.97210520401785339 -0
		 -5.2848407562928594 -2.9682891152938393 -1.022056662989109 1;
	setAttr ".pm[56]" -type "matrix" -0.20311030386251164 0.95097089232475285 -0.23323929003481175 -0
		 0.97886549333733408 0.20300600988146297 -0.024716510786627035 -0 0.02384429529963901 -0.23333007072186832 -0.97210520401785372 -0
		 -6.0531111964851538 -2.201331097817814 -1.0220566629891092 1;
	setAttr ".pm[57]" -type "matrix" 0.055141316109679081 -0.97085471046998095 0.23323929003481164 -0
		 0.99773223295074775 0.062605793866458606 0.024716510786627031 0 -0.038598271837057808 0.23134745672386586 0.97210520401785361 -0
		 -6.8860135218368184 0.39760004128751308 1.0220566629891104 1;
	setAttr ".pm[58]" -type "matrix" 0.28391908849808628 -0.93004805508665722 0.23323929003481161 -0
		 0.95438699314136222 0.29754757840910812 0.024716510786627038 0 -0.092387328725348924 0.21558305548535747 0.97210520401785361 -0
		 -7.2628020126628208 -1.3645944917354262 1.0220566629891112 1;
	setAttr ".pm[59]" -type "matrix" 0.55092252852547929 -0.8013013173252308 0.23323929003481161 -0
		 0.82040360957422054 0.57125039299078328 0.024716510786627056 0 -0.15304340874628516 0.17773347282019183 0.9721052040178535 -0
		 -6.9115203688474454 -3.6147653105046995 1.0220566629891117 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801929825545 -0.52562566535849164 0.23323929003481164 -0
		 0.53537162742211097 0.84425488725025144 0.024716510786627042 0 -0.20990504293822981 0.10464867543599525 0.9721052040178535 -0
		 -5.4326010176921917 -6.2006165117325418 1.0220566629891132 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862701361126 0.001203088118692175 0.23323929003481167 -0
		 -0.0071651765168071974 0.99966882233068455 0.024716510786627059 0 -0.23313231024988207 -0.025705996167453497 0.97210520401785372 -0
		 -1.6152689933561759 -8.4165599952487824 1.0220566629891152 1;
	setAttr ".gm" -type "matrix" 2.8111605529886936 -0.0073032583518964434 -1.314361194316511 0
		 1.1930342377176868 1.3164992517603069 2.5443508738252496 0 0.76333658674085325 -3.888830163605832 1.6542354126645016 0
		 4.3473624227306962 4.2708030604125611 2.3615491252323917 1;
	setAttr -s 5 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster6";
	rename -uid "15D8955F-7A46-E4D1-AC7A-7E8D87C66D47";
	setAttr -s 206 ".wl";
	setAttr ".wl[0:99].w"
		5 40 0.049240298143277801 41 0.049863790692037641 42 0.16156472146556669 
		43 0.39027552394406045 44 0.34905566575505742
		5 40 0.16435384235982589 41 0.20522903481355656 42 0.25497988321026982 
		43 0.2510635062309321 45 0.12437373338541562
		5 40 0.17151547868875919 41 0.21291265490688235 42 0.22482485730633772 
		43 0.18125727537784639 45 0.20948973372017426
		5 40 0.12764207970743219 41 0.18376175143763993 42 0.29129623848292874 
		45 0.29129623848292874 46 0.10600369188907041
		5 4 0.061159528481067052 5 0.068552940399750698 42 0.15014938311376955 
		45 0.37090604724046305 46 0.3492321007649497
		5 40 0.037386853157550012 41 0.039871650605064403 42 0.14593056446514782 
		43 0.39890316621033384 44 0.37790776556190386
		5 40 0.14393519585294992 41 0.19376012378873622 42 0.26725487016287619 
		43 0.26725487016287619 45 0.12779494003256153
		5 40 0.15958622238903822 41 0.2079833244097038 42 0.22505661010823483 
		43 0.19075314828025791 45 0.2166206948127653
		5 40 0.11294618544715523 41 0.1731320858218787 42 0.29913642291384057 
		45 0.29913642291384046 46 0.11564888290328504
		5 4 0.043483873161903538 5 0.047022338763159637 42 0.13852602229641586 
		45 0.38860492167084382 46 0.38236284410767718
		5 40 0.013447234351054591 41 0.012679482926442042 42 0.032559652912766864 
		43 0.47065681490486827 44 0.47065681490486827
		5 39 0.092295005327987054 40 0.22814471359457858 41 0.23868345075927214 
		42 0.25788725071034801 43 0.18298957960781428
		5 40 0.16089128001389735 41 0.35088146120817237 42 0.35220766127362035 
		43 0.069678626168829985 45 0.066340971335480003
		5 39 0.074641681113581604 40 0.17080493768865579 41 0.22228530553807188 
		42 0.29609421295614019 45 0.23617386270355056
		5 6 0.053625288375891478 19 0.067099276943341932 20 0.066238040931372255 
		45 0.40651869687469716 46 0.40651869687469716
		5 39 0.020363666181875417 40 0.021771112862302315 42 0.039598262680182579 
		43 0.45913347913781988 44 0.45913347913781988
		5 39 0.11398496652931699 40 0.31252749145754855 41 0.28742442063319829 
		42 0.1895035274300462 43 0.096559593949890027
		5 40 0.24563901786223782 41 0.37836013232057714 42 0.32131061684441198 
		43 0.026710057605254935 45 0.027980175367518192
		5 39 0.093836326836357106 40 0.21197238807179145 41 0.23467718069273358 
		42 0.2763728300786702 45 0.18314127432044772
		5 6 0.088680424436384464 19 0.10472182843508757 20 0.095016037125709871 
		45 0.35579085500140906 46 0.35579085500140906
		5 40 0.00022241034626813144 41 0.00022204271567428878 42 0.00084107839208428083 
		43 0.49935723427298667 44 0.49935723427298667
		5 40 5.4712292274963137e-05 41 5.4712292274963137e-05 42 0.00024806406465896133 
		43 0.49982125567539559 44 0.49982125567539559
		5 40 0.0019574396129637415 41 0.0057660182230919047 42 0.50486727247255636 
		43 0.48681041558115562 45 0.00059885411023248211
		5 40 0.037598106079848558 41 0.31037100473615697 42 0.46877473205066073 
		43 0.083670879358069314 45 0.099585277775264547
		5 40 0.0011310088403260763 41 0.004668583118844472 42 0.49651740774622699 
		45 0.49651740774622699 46 0.0011655925483754724
		5 6 0.00079603911410184344 19 0.00079062747359491092 42 0.0016338973614776536 
		45 0.49838971802541288 46 0.49838971802541276
		5 5 0.0012096207893230024 31 0.0012096207893230024 42 0.0014885266442548921 
		45 0.49804611588854958 46 0.49804611588854958
		5 40 2.4713486551666787e-05 41 9.7419946005441446e-05 42 0.92693666298424915 
		45 0.072928054974277956 46 1.3148608915765253e-05
		5 40 0.019749500396947006 41 0.36957560858920224 42 0.58162601385858681 
		43 0.011959788240570023 45 0.017089088914693965
		5 40 0.00045769075849522455 41 0.00091887526667170836 42 0.94236711660643468 
		43 0.056218145018178366 44 3.8172350220037798e-05
		5 40 0.00060352494768640822 41 0.00060405276912691016 42 0.0030243540151936297 
		43 0.49788403413399651 44 0.49788403413399651
		5 40 0.0014318016287410409 41 0.0014318016287410409 42 0.0060048953532421045 
		43 0.49556575069463787 44 0.49556575069463787
		5 40 0.05269630781799052 41 0.10071465017626201 42 0.43409717934149705 
		43 0.39811085859409556 45 0.014381004070154819
		5 40 0.099218614016567272 41 0.28917966498997399 42 0.34244813063562712 
		43 0.1134943509485323 45 0.15565923940929927
		5 40 0.016124577877360106 41 0.046250389503500758 42 0.46355633927925599 
		45 0.46211261590547303 46 0.011956077434410135
		5 5 0.0036032602363266861 31 0.0035542783063229385 42 0.0056611018303971564 
		45 0.4935906798134766 46 0.4935906798134766
		5 5 0.0019046493840810443 31 0.0018889217836107674 42 0.005006197941609637 
		45 0.49560011544534932 46 0.49560011544534932
		5 40 0.013402570573001593 41 0.042739819521453476 42 0.46444146102188094 
		45 0.46444146102188072 46 0.014974687861783399
		5 40 0.067422404034095232 41 0.25552603172822597 42 0.34103499240119872 
		43 0.1496044363854383 45 0.18641213545104166
		5 40 0.028603801963765704 41 0.069274761000638979 42 0.44335259753541229 
		43 0.44335259753541229 45 0.015416241964770809
		5 40 0.017728382579964553 41 0.018434337977043767 42 0.081099774566478669 
		43 0.44469166576470615 44 0.43804583911180689
		5 40 0.024453867157411491 41 0.024494839757032386 42 0.09354857266941459 
		43 0.44117940581460202 44 0.41632331460153954
		5 40 0.14176119681861021 41 0.19372390649642116 42 0.28954731801943084 
		43 0.28612573585944662 45 0.08884184280609124
		5 40 0.16309560841988005 41 0.21792505813750582 42 0.23281036137553154 
		43 0.17695552290428079 45 0.20921344916280174
		5 40 0.094413666644183908 41 0.15839717806777151 42 0.33226545863899032 
		45 0.33226545863899032 46 0.082658238010064
		5 5 0.039136148329110311 31 0.033220723643906602 42 0.08398559846853762 
		45 0.42424543835870393 46 0.4194120911997416
		5 5 0.021792320346571404 31 0.019266137913628148 42 0.068707334686497396 
		45 0.44511710352665157 46 0.44511710352665157
		5 40 0.069700064913830573 41 0.13916395578817484 42 0.35932103715796032 
		45 0.35932103715796054 46 0.072493904982073573
		5 40 0.13941247664731921 41 0.21307030914599048 42 0.23850870515280295 
		43 0.18862394020383516 45 0.22038456885005217
		5 40 0.10265463495416469 41 0.17086781045503363 42 0.32117349177696686 
		43 0.32117349177696686 45 0.084130571036867954
		5 40 0.11561619949145437 41 0.13192623116573482 42 0.28853494196938401 
		43 0.30627924877734697 44 0.15764337859607991
		5 40 0.094888560302331129 41 0.11801245791800186 42 0.29423199063699068 
		43 0.31719434385669659 44 0.17567264728597975
		5 40 0.053303345377254813 41 0.072936591069649545 42 0.34234169292590438 
		43 0.39977877838252318 44 0.13163959224466801
		5 40 0.0079829215714166749 41 0.010960851625932888 42 0.24025392212004792 
		43 0.69677732963012251 44 0.044024975052479993
		5 40 0.00036820722242915068 41 0.00044883867080907996 42 0.016161166595341409 
		43 0.97863585968760625 44 0.004385927823814105
		5 40 0.1630458356561571 47 0.16418447300776881 48 0.23935689731526688 
		49 0.23935689731526688 50 0.1940558967055403
		5 38 0.19509780427589959 39 0.22506675456148822 40 0.21570714402447411 
		48 0.18228538790323989 49 0.18184290923489821
		5 40 0.00077160300496827985 41 0.00078209005964708777 42 0.015770624060102153 
		43 0.97832765800627286 44 0.0043480248690097182
		5 40 0.01484430121310862 41 0.0160995996972279 42 0.21357150260924435 
		43 0.69766298755720835 44 0.057821608923210768
		5 40 0.07671379252795546 41 0.08701256788833367 42 0.30362197101496213 
		43 0.37447711834649017 44 0.15817455022225863
		5 40 0.068101613516490675 41 0.10411497801429749 42 0.31609942590608764 
		45 0.33341635976766687 46 0.1782676227954573
		5 40 0.058599494342279436 41 0.094858062675618804 42 0.31187864125570103 
		45 0.33614854460224336 46 0.19851525712415741
		5 40 0.027655330288424748 41 0.053120820179140681 42 0.3467292775206296 
		45 0.41476982774522503 46 0.1577247442665799
		5 40 0.0033968905594372262 41 0.0074752852997444783 42 0.201567581861791 
		45 0.71718679107484717 46 0.070373451204180218
		5 40 0.00028945536076240605 41 0.00060881619656206782 42 0.019952074809132653 
		45 0.96081034042648061 46 0.018339313207062238
		5 19 0.19314590541287163 20 0.21726691620903127 21 0.19865066930871664 
		33 0.19999465357806442 34 0.19094185549131604
		5 20 0.16852023260960836 32 0.22159054857896515 33 0.23068303905803147 
		34 0.20836541037633799 54 0.17084076937705711
		5 40 8.2841328220381892e-05 41 0.00015260003933176972 42 0.0045815535836238137 
		45 0.99172513882542046 46 0.0034578662234036012
		5 40 0.0037129769676317822 41 0.0071474375902324614 42 0.16549345335275714 
		45 0.75551471159623451 46 0.068131420493144176
		5 40 0.037217746764945124 41 0.06227613130320471 42 0.32075858663918005 
		45 0.39771589806400715 46 0.18203163722866306
		5 40 0.080182420820743269 41 0.084720752526148663 42 0.24376819986306655 
		43 0.34849596782267256 44 0.242832658967369
		5 40 0.063262538826364637 41 0.07246981216535732 42 0.23551946349164529 
		43 0.35815032399564783 44 0.27059786152098497
		5 40 0.031004814990745352 41 0.03691025072527622 42 0.21557614135570846 
		43 0.46707801088407447 44 0.24943078204419541
		5 40 0.0025461070345256152 41 0.0027192749880238483 42 0.026453871257825317 
		43 0.71499554360469764 44 0.25328520311492764
		5 40 4.221544064966529e-05 41 4.3412504226563427e-05 42 0.00046917020029368077 
		43 0.98037128680414631 44 0.019073915050683822
		5 43 0.23546950016442497 44 0.22495413968336309 48 0.18439504705895352 
		49 0.18447573250013355 50 0.17070558059312488
		5 39 0.20177136128958412 43 0.21744181717892991 44 0.19711330643216438 
		48 0.19183675754966081 49 0.19183675754966081
		5 40 0.00049991295448963548 41 0.00049991295448963548 42 0.0028743930014236783 
		43 0.81890207336153997 44 0.17722370772805704
		5 40 0.0043199039315174621 41 0.0043199039315174621 42 0.026380597383962992 
		43 0.64025188445762415 44 0.324727710295378
		5 40 0.043486562107050993 41 0.044778334836392722 42 0.18702626526176941 
		43 0.43455472352707453 44 0.29015411426771243
		5 5 0.00024105177613453435 31 0.00024172371237752256 42 0.0010469734846915962 
		45 0.64800662993178748 46 0.35046362109500884
		5 19 0.2510055060101134 20 0.26402362310429373 21 0.1664031331068917 
		32 0.15928386888935059 33 0.15928386888935059
		5 19 0.2342724438805501 20 0.28127953999218314 21 0.24434631526292194 
		32 0.12001860625852273 33 0.12008309460582212
		5 31 5.2728072007896838e-05 41 6.292791930061533e-05 42 0.00074545333655544896 
		45 0.83668721524419354 46 0.1624516754279425
		5 5 0.0013240886728661527 41 0.0016209771671016461 42 0.018400076627985727 
		45 0.6053822202942335 46 0.37327263723781307
		5 40 0.013500906704951784 41 0.024247170975510737 42 0.19968887006338987 
		45 0.4783719174838838 46 0.28419113477226388
		5 5 0.050214909833142446 41 0.056213014738381577 42 0.23569487139571821 
		45 0.36295887905999585 46 0.29491832497276194
		5 5 0.067997146716706675 41 0.0624857452731006 42 0.24822728312158623 
		45 0.35663542987282304 46 0.26465439501578353
		5 5 0.032546520178241382 31 0.030300362386726124 42 0.18040215621415465 
		45 0.43953631981101909 46 0.31721464140985883
		5 5 0.0030998880983851458 31 0.0030998880983851458 42 0.016264034776655452 
		45 0.56636829727784144 46 0.41116789174873292
		5 40 0.0040911094576601362 41 0.0038610574073150226 42 0.010944603282198545 
		43 0.49055161492641314 44 0.49055161492641314
		5 40 0.002833627125279221 41 0.0028058590636065822 42 0.0093766064953390484 
		43 0.49249195365788756 44 0.49249195365788756
		5 40 0.054930516605069507 41 0.053448652341465348 42 0.15302626867515165 
		43 0.45453196616857366 44 0.28406259620973984
		5 40 0.084911499737099952 41 0.084287900640900151 42 0.24380044257509123 
		43 0.42473359408769812 44 0.1622665629592106
		5 40 0.076561850551854507 41 0.17199207910983502 42 0.48174693418619507 
		43 0.25531077722099416 45 0.01438835893112121
		5 40 0.032987327858198433 41 0.36921789180126308 42 0.50400107474580869 
		43 0.045680562154729862 45 0.048113143439999902
		5 40 0.050265152940758222 41 0.14034875408495132 42 0.45552465797440767 
		45 0.33449600636085097 46 0.019365428639031772
		5 40 0.040965216995172464 41 0.059132372358387975 42 0.2214018087975837 
		45 0.435349684884135 46 0.24315091696472091
		5 19 0.050938404712542573 20 0.050938404712542573 42 0.12523069155411112 
		45 0.42341474009440544 46 0.34947775892639826
		5 6 0.012993902428866813 19 0.013566697649427291 42 0.012836886032383199 
		45 0.48030125694466136 46 0.48030125694466136;
	setAttr ".wl[100:199].w"
		5 6 0.016126526384873961 19 0.016179983495207235 31 0.012849446180864778 
		45 0.47742202196952699 46 0.47742202196952699
		5 40 0.11763450518129875 41 0.18382581014129087 42 0.38825171467259761 
		45 0.27646560462772346 46 0.033822365377089381
		5 40 0.10115222506226433 41 0.44098135337852701 42 0.4337089994234028 
		43 0.011491554062858221 45 0.012665868072947683
		5 39 0.04942380573587575 40 0.23686492072702126 41 0.24025659387531575 
		42 0.28890839745071639 43 0.18454628221107089
		5 40 0.056774011563742288 41 0.069685983894988771 42 0.25377156982459731 
		43 0.36776922587231708 44 0.25199920884435456
		5 40 0.031361943951739593 41 0.038001350440222889 42 0.19937701552972684 
		43 0.43812630565283395 44 0.29313338442547676
		5 40 0.017927671398206651 41 0.019955554378426638 42 0.10055740635819302 
		43 0.44847550290650234 44 0.41308386495867144
		5 40 0.034720453783817426 41 0.039577089294857044 42 0.16332669516211848 
		43 0.40474004261613983 44 0.3576357191430673
		5 41 0.17166775673194495 42 0.30519464999764445 43 0.11060516204918064 
		45 0.30519464999764445 46 0.10733778122358545
		5 41 0.13555803429078353 42 0.35236735816967779 43 0.071940385766532097 
		45 0.35236735816967768 46 0.087766863603328929
		5 40 0.1405621539151414 41 0.20841407385489327 42 0.23399105593711847 
		43 0.1942556431179002 45 0.22277707317494666
		5 40 0.15136907139377484 41 0.20659048529171706 42 0.22753118437793904 
		43 0.19436247245125282 45 0.22014678648531624
		5 40 0.053344989081001076 41 0.091981957289103591 42 0.32672519865843402 
		45 0.34471629667387438 46 0.18323155829758705
		5 40 0.030153600963210597 41 0.056875213355258206 42 0.32638711631361439 
		45 0.3968729572254372 46 0.18971111214247957
		5 40 0.07006662067650643 41 0.17262918518365794 42 0.40198668339607846 
		43 0.032819759726965894 45 0.32249775101679129
		5 40 0.056681051803932736 41 0.081242287974274199 42 0.24337360528068233 
		45 0.38776752011763699 46 0.23093553482347376
		5 19 0.16538617070292283 20 0.17900535433175938 42 0.19696646093724551 
		45 0.26099575740913189 46 0.19764625661894042
		5 40 0.13620083458957455 41 0.20888984726638923 42 0.31535866716982464 
		45 0.26991589156625057 46 0.069634759407961072
		5 40 0.051369000670352105 41 0.34009230582720323 42 0.42611847050339102 
		43 0.092958010967762822 45 0.089462212031290872
		5 40 0.11172400439925584 41 0.34814612804156375 42 0.36166054704064304 
		43 0.092991685492975665 45 0.08547763502556173
		5 40 0.095420051609045611 41 0.194377505030977 42 0.40658832094717273 
		43 0.27710943599223153 45 0.026504686420573163
		5 39 0.062465543192056362 40 0.1850509082438325 41 0.21733372342356666 
		42 0.29890859387646845 43 0.23624123126407601
		5 40 0.0027163512876244456 41 0.0027163512876244456 42 0.011366482781164592 
		43 0.49160040732179333 44 0.49160040732179333
		5 40 0.058225177028508289 41 0.056400949055129233 42 0.14560710080751763 
		43 0.41288501903918401 44 0.32688175406966091
		5 42 0.14852321261603937 43 0.29669632789920575 44 0.2699617064437308 
		48 0.14239117747501631 49 0.1424275755660078
		5 40 0.010959812434597484 41 0.010834008290018347 42 0.034358196109615845 
		43 0.47192399158288417 44 0.47192399158288417
		5 40 0.0029019530631077322 41 0.0031800799411147735 42 0.026600299605860522 
		43 0.58814244354803968 44 0.37917522384187735
		5 40 0.00042418742652002039 41 0.00044223640435278057 42 0.0039480833326531774 
		43 0.72554716748084813 44 0.26963832535562587
		5 40 0.00016914650386975645 41 0.000169827971359285 42 0.00096997365932482884 
		43 0.49934552593272308 44 0.49934552593272308
		5 40 0.00092215614065570674 41 0.00094709297980586759 42 0.0057896728240850745 
		43 0.49617053902772656 44 0.49617053902772679
		5 40 0.099356024285764746 41 0.16325188402248919 42 0.32457735632420848 
		43 0.32457735632420837 45 0.088237379043329275
		5 40 0.053789984938672784 41 0.074544769358572321 42 0.32671185226972027 
		43 0.38647295072835813 44 0.15848044270467634
		5 40 0.085009969813655994 41 0.11382847450248104 42 0.3118246049204349 
		43 0.32837469984036316 44 0.16096225092306493
		5 40 0.13212578495143851 41 0.19059208234732014 42 0.27329666332024721 
		43 0.27329666332024721 45 0.13068880606074698
		5 40 0.1770218329747224 42 0.20057021932349808 43 0.24619600516806761 
		48 0.18810597126685596 49 0.18810597126685596
		5 40 0.097912138573132676 41 0.097749614275899302 42 0.2617449675134334 
		43 0.38329522105614416 44 0.15929805858139043
		5 5 0.015029109702644046 31 0.014179192386816829 42 0.083946748183388681 
		45 0.44535202607923063 46 0.44149292364791981
		5 5 0.015415836765399338 41 0.026385220367622364 42 0.18431552121398512 
		45 0.44463879446108939 46 0.32924462719190373
		5 5 0.034687029751040745 41 0.055117221902701546 42 0.25376876354539024 
		45 0.37435815848922077 46 0.2820688263116467
		5 5 0.031314088190497774 41 0.031034657006058688 42 0.15625282076981273 
		45 0.40140573042273264 46 0.37999270361089821
		5 5 0.0014770472639650972 31 0.0014770397919645687 42 0.0069877045344873051 
		45 0.49502910420479135 46 0.49502910420479157
		5 5 0.0019200743998973242 41 0.0022819108387500896 42 0.020956584882398571 
		45 0.50968309665690059 46 0.46515833322205341
		5 31 0.000332456720517937 41 0.00037885006209908734 42 0.0034852896442866257 
		45 0.52273858424154851 46 0.47306481933154798
		5 6 0.00061275119480503585 19 0.00061274510853608479 42 0.0023750986679462894 
		45 0.49819970251435614 46 0.49819970251435636
		5 19 0.20395706449596285 20 0.22849184023671484 21 0.2019592582977256 
		45 0.18419546981707452 46 0.18139636715252233
		5 19 0.033235892115827642 20 0.033013880268389938 42 0.03354384597325609 
		45 0.45010319082126315 46 0.45010319082126315
		5 19 0.079061373905500318 20 0.079061373905500318 42 0.11596497445243596 
		45 0.37392734332280703 46 0.3519849344137565
		5 6 0.0067476825621857637 19 0.0070726582794920926 42 0.01361788371243914 
		45 0.48628088772294153 46 0.48628088772294153
		5 6 0.0025932461035705749 19 0.0026627982252070428 42 0.016283294742238313 
		45 0.49708438795973175 46 0.48137627296925234
		5 31 0.0023414146982239066 41 0.0023888030606636491 42 0.019115014471591554 
		45 0.57245007805204351 46 0.40370468971747736
		5 40 0.0024766939798944012 41 0.0044745258601583404 42 0.059139086611575624 
		45 0.7842759816613083 46 0.14963371188706334
		5 40 0.0046587573945142732 41 0.020644302683718745 42 0.54932631759797634 
		45 0.42264727037982391 46 0.0027233519439665986
		5 40 0.031004179396011119 41 0.33594910167919612 42 0.50790160609403101 
		43 0.058892039742872548 45 0.066253073087889303
		5 40 0.0051874513366171804 41 0.016123593719091816 42 0.60763972364894303 
		43 0.36986814749306685 45 0.0011810838022811734
		5 40 0.0045088249879709366 41 0.0046982883714694473 42 0.064186404976030093 
		43 0.87026203601708818 44 0.056344445647441288
		5 40 0.0035171646608443347 41 0.0035187033640832512 42 0.024660487882077989 
		43 0.72455976418311863 44 0.24374387990987573
		5 40 0.0030413518070917201 41 0.0030573934182133067 42 0.019768528858205642 
		43 0.5900422647268746 44 0.38409046118961471
		5 40 0.027105411315289107 41 0.027458467246997995 42 0.19150408908983854 
		43 0.63024040798295677 44 0.12369162436491762
		5 40 0.039503548901362089 41 0.051759943507087007 42 0.43864638467204475 
		43 0.45384296771195431 44 0.016247155207551718
		5 40 0.098111794364394822 41 0.10606724156248817 42 0.36446469959791944 
		43 0.38759839451278605 44 0.043757869962411503
		5 40 0.11118656520880468 41 0.12159962788820591 42 0.34521853353718673 
		43 0.36163920123769577 44 0.060356072128106959
		5 39 0.13087242706650701 40 0.18846839493852199 41 0.18059023327191745 
		42 0.24261592277581356 43 0.2574530219472399
		5 39 0.18130816783416129 40 0.22510510226271616 41 0.19341378446224017 
		42 0.19660251876919854 43 0.20357042667168385
		5 40 0.021402473352774613 41 0.021381465974700802 42 0.093212658698521786 
		43 0.55997928659102725 44 0.30402411538297563
		5 40 0.0157231870153948 41 0.0157231870153948 42 0.068595805610563262 
		43 0.5106565935959877 44 0.38930122676265944
		5 40 0.013323763326495349 41 0.012754107146766815 42 0.041493796091662837 
		43 0.55760540787357282 44 0.37482292556150226
		5 31 0.013974879197138574 32 0.013974879197138574 42 0.029630278783182914 
		45 0.49791925241178786 46 0.44450071041075212
		5 40 0.018227608591213047 41 0.027317338307857729 42 0.18924965561528073 
		45 0.59750081047591008 46 0.16770458700973842
		5 40 0.020869391269387499 41 0.055676652913470751 42 0.54215248488894296 
		45 0.37255653840057584 46 0.0087449325276230307
		5 40 0.010017703743657085 41 0.4428896841659255 42 0.54341211212863894 
		43 0.0016791185244537778 45 0.0020013814373247164
		5 39 0.0056456750544804915 40 0.062689546579269353 41 0.080437216195054853 
		42 0.56162292547488635 43 0.28960463669630893
		5 40 0.051507831981967914 41 0.051245111605891437 42 0.2110912567052087 
		43 0.59050978190265668 44 0.095646017804275285
		5 38 0.15965620008100934 39 0.2374512589829379 40 0.28190356532840594 
		41 0.18924591453084924 42 0.13174306107679762
		5 39 0.099582768041279732 40 0.20922698522822747 41 0.19394731343444357 
		42 0.24155836217106635 43 0.25568457112498294
		5 40 0.052687996559828976 41 0.096024192998228064 42 0.35923101430599197 
		45 0.41034113870793471 46 0.0817156574280163
		5 40 0.019730259458045463 41 0.044616885584616524 42 0.39982738119924172 
		45 0.49267026252286189 46 0.043155211235234511
		5 40 0.012449459651723831 41 0.020877740119307896 42 0.1576566492560294 
		45 0.58996622142807098 46 0.21904992954486791
		5 19 0.015874995747447159 20 0.015518986243982588 42 0.071618967037617692 
		45 0.49825783450409811 46 0.39872921646685439
		5 19 0.016857913524929644 20 0.016701841178069023 42 0.054742279586721926 
		45 0.46349599326889346 46 0.44820197244138593
		5 40 0.067417130978075238 41 0.11679519876188309 42 0.33649639722779434 
		45 0.37454416491203985 46 0.10474710812020765
		5 40 0.12515378361988361 41 0.15752407373502952 42 0.26368335511743551 
		45 0.29413109527371101 46 0.15950769225394032
		5 32 0.15696901613484715 33 0.16128564894458514 41 0.16691242983973051 
		42 0.24670941391731233 45 0.2681234911635248
		5 32 0.19353763841809424 33 0.19744195297600481 34 0.17748264435408181 
		42 0.21626628630990777 45 0.21527147794191134
		5 40 0.095862334901552715 41 0.12475577259844636 42 0.31058497946359642 
		45 0.36101879448419921 46 0.10777811855220532
		5 40 0.0070987066310685739 41 0.0070987066310685739 42 0.02999119680007967 
		43 0.48072855534403647 44 0.47508283459374662
		5 40 0.003735270286504081 41 0.0037778617536755386 42 0.01895602854279561 
		43 0.48676541970851234 44 0.48676541970851234
		5 40 0.0043617553106058103 41 0.0046148446924061419 42 0.02756932493143463 
		43 0.48584515452081195 44 0.47760892054474158
		5 40 0.013782600363152611 41 0.016162990398318373 42 0.1138093884244101 
		43 0.51735264865329167 44 0.33889237216082718
		5 40 0.013572121177625948 41 0.015490910864266759 42 0.12449376012303352 
		43 0.57392427304351457 44 0.2725189347915592
		5 40 0.028299398922898945 41 0.03970704068881286 42 0.3446486408746256 
		43 0.48934088493621697 44 0.09800403457744547
		5 40 0.069088167104089812 41 0.13539928735826265 42 0.37288779050941306 
		43 0.37288779050941295 45 0.049736964518821633
		5 40 0.098658271158013594 41 0.22739454288497143 42 0.27699506839819005 
		43 0.17892289912773626 45 0.21802921843108863
		5 40 0.040649099985493979 41 0.099474443127759798 42 0.40774536537469119 
		45 0.40774536537469119 46 0.044385726137363885
		5 40 0.013125098346292618 41 0.027363946910878789 42 0.32874243050588303 
		45 0.50302090540642952 46 0.12774761883051597
		5 5 0.0059912832598019404 41 0.009558181378576518 42 0.099851948658718562 
		45 0.55334562854334002 46 0.3312529581595629
		5 5 0.0071969293987810103 41 0.010916436682445121 42 0.093903699112874037 
		45 0.49454256727958595 46 0.39344036752631384
		5 5 0.0047302487872221922 31 0.0046645907471661377 42 0.025567134901892503 
		45 0.4825190127818596 46 0.4825190127818596
		5 5 0.0065150115823985177 31 0.0062128890836639179 42 0.019729182015976364 
		45 0.48377145865898058 46 0.48377145865898058
		5 5 0.012575294622744796 31 0.011760716275278381 42 0.023991203572030391 
		45 0.47583639276497325 46 0.47583639276497325
		5 5 0.014058751410755632 31 0.013749284765390904 42 0.083550222955350181 
		45 0.51099242377138498 46 0.37764931709711824;
	setAttr ".wl[200:205].w"
		5 40 0.017237573894075462 41 0.031399353743418047 42 0.30348982041354944 
		45 0.50009882742010248 46 0.14777442452885459
		5 40 0.0554822294332264 41 0.11653391236856779 42 0.39050050279202259 
		45 0.39050050279202259 46 0.046982852614160679
		5 40 0.14008215261082588 41 0.23312733816613221 42 0.25767567921627055 
		43 0.16449431351863297 45 0.20462051648813842
		5 40 0.1059813360276009 41 0.16745852840870051 42 0.34156155477002431 
		43 0.33439553335100586 45 0.050603047442668525
		5 40 0.046251872785158958 41 0.052283947430869712 42 0.30724296352239699 
		43 0.46889758931862879 44 0.12532362694294547
		5 40 0.019655082383328089 41 0.019828773117699362 42 0.10569418419382058 
		43 0.5240863378271281 44 0.33073562247802391;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 -0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 -0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 -0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 -0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 -0 0.210011846539538 0.045642596473303459 -0.97663287764657492 -0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 -0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 -0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 -0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 -0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 -0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 -0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 -0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 -0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 -0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 -0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 -0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 -0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 -0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 -0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 -0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 -0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 -0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 -0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 -0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 -0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 -0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 -0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 -0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 -0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 -0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 -0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 -0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 -0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 -0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 -0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 -0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 -0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 -0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 -0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 -0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 -0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 -0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 -0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 -0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 -0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 -0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 -0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 -0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 -0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 -0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 -0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 -0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 -0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 -0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 -0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 -0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 -0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 -0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 -0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 -0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 -0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 -0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 -0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 -0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 -0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 -0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 -0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 -0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 -0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924785605262508 0.69647275897298966 0.6375904212684681 -0
		 0.89339606825899753 0.44836933267261586 -0.028432494404777593 0 -0.3056784495251747 0.56025943769584596 -0.76985066601817032 0
		 -3.5395339858223207 -2.4005302806614877 -1.4268589866057155 1;
	setAttr ".pm[32]" -type "matrix" -0.27889487958311754 0.70693339335951921 0.6499714020597479 -0
		 0.8885321944844633 0.44672740782126169 -0.10461913049686476 0 -0.36431879653257332 0.54834277642227769 -0.75272306596687089 0
		 -4.0483566124710331 -2.4178888719510168 -1.0785179654948196 1;
	setAttr ".pm[33]" -type "matrix" -0.23031896582471262 0.65282056315424064 0.72164983635030056 -0
		 0.83303853409609785 0.51558677430374356 -0.20054196287581566 0 -0.50299102844132282 0.55497350430992753 -0.66257409760833519 0
		 -4.4246285576916371 -2.6889499794631448 -0.5852216413243152 1;
	setAttr ".pm[34]" -type "matrix" -0.43594205479935338 0.59749644125918966 0.67301747937176337 -0
		 0.70084734239732094 0.69452627708497583 -0.16262303985934928 0 -0.56459501194389816 0.40078828965064228 -0.72152700529292924 0
		 -3.9504407340550634 -3.7708443804080867 -0.80903142183858512 1;
	setAttr ".pm[35]" -type "matrix" -0.80828666278327432 0.25069034959079767 0.53275418289181176 -0
		 0.21819681986783124 0.96794042106865841 -0.12442463205086605 0 -0.54686636262092747 0.015674497869846715 -0.83707316977088997 0
		 -1.2782210087401189 -5.4701710515155018 -1.0637098088558508 1;
	setAttr ".pm[36]" -type "matrix" -0.82004746228088032 -0.20903382553540736 0.53275418289181176 -0
		 -0.32022389661991219 0.93913532942412847 -0.12442463205086607 0 -0.47431931822375606 -0.27263472414471851 -0.83707316977088997 0
		 1.4741587162838448 -5.4790258078135139 -1.0637098088558503 1;
	setAttr ".pm[37]" -type "matrix" -0.68115617672397932 -0.58224855063069902 0.44386133893280488 -0
		 -0.71347233192191795 0.66391571242427372 -0.22399365700409787 0 -0.16426653491405938 -0.46925744755370707 -0.86764851951853672 0
		 3.7155105234907788 -4.253503924807462 -0.56138912952764053 1;
	setAttr ".pm[38]" -type "matrix" -0.50408144903854235 -0.80314783289629765 0.31757747283015064 0
		 -0.83807468363902604 0.36604708025856952 -0.40452485668685773 0 0.20864495531536334 -0.47006711600383 -0.85761540860300089 -0
		 4.7675519738061451 -2.6983875616478876 0.40050578146566135 1;
	setAttr ".pm[39]" -type "matrix" -0.13887806920042897 -0.97362021202337345 0.18104299112289102 0
		 -0.8442227548036797 0.02082911068982167 -0.53558761040520475 0 0.51768795829809233 -0.22722198592441178 -0.82484504420267912 -0
		 5.131402903469473 -0.54383199739958166 1.1062769262428087 1;
	setAttr ".pm[40]" -type "matrix" -0.44544499269810256 0.31790426804465338 -0.83696812056325143 0
		 -0.53604557662551799 0.65406162136325452 0.53372140226890541 0 0.71710103769301836 0.68639658494099753 -0.12093729747655504 -0
		 3.5487087028311417 -1.8700671363062362 -2.7925193128695747 1;
	setAttr ".pm[41]" -type "matrix" -0.052113655857806661 -0.12229876297960356 -0.99112419980888034 0
		 -0.12985132476009162 0.98487688829382625 -0.11470025441436067 0 0.99016301704880072 0.12272134076161549 -0.067206191608274221 -0
		 1.5808752410933884 -4.2107979689235933 0.024886527691079015 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923738209327 0.15316129470954071 0.84469936689614911 -0
		 -0.35222855576255746 0.93486282127867992 0.044345799082775778 0 -0.78288597326640097 -0.32027039075406954 0.53340081521212113 -0
		 1.1996855435952647 -4.1723182522672628 0.61489411505153346 1;
	setAttr ".pm[43]" -type "matrix" -0.73333548538209525 0.11850973006940393 0.66945837044455869 -0
		 0.055614852963414348 0.99184695892173957 -0.11465861593249307 0 -0.6775884104744303 -0.04685140293069355 -0.73394747225817225 0
		 -1.618463936552093 -4.150962652048455 0.6167161736380613 1;
	setAttr ".pm[44]" -type "matrix" 0.7178746917702189 0.19100109203229435 -0.6694583704445588 -0
		 -0.15418153848813718 0.98136713567445111 0.11465861593249313 0 0.67888436431047972 0.020907602937564346 0.73394747225817203 -0
		 2.9878104727393069 -3.9063461234579986 -0.61671617363806241 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497183340853 0.012292740621888149 -0.5042589919324536 -0
		 0.11820591039161055 0.96693328393588907 0.22598094425293511 -0 0.49036272815663917 -0.25473302287877969 0.83345994618206876 -0
		 -0.31526849647608046 -4.1175003638789578 -0.8411184408836696 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581191388532 0.14817028233168023 -0.5042589919324536 -0
		 -0.035601728897875065 0.97348093444814543 0.22598094425293513 0 0.52437017498182203 -0.17429984997043529 0.83345994618206876 -0
		 -0.54266112802664046 -4.2561403950661756 -0.84111844088366872 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227101337457 0.54496457952035493 -0.34985229130234941 -0
		 0.62286062490543848 0.76461427634874546 -0.16555860094266003 -0 0.17727848319440126 -0.34406193551726616 -0.92205950129284275 -0
		 -2.7951587350455624 -5.0172514607060918 -0.72188543037675135 1;
	setAttr ".pm[48]" -type "matrix" -0.63784894397210701 0.68611376530730284 -0.34985229130234935 -0
		 0.76296721301434756 0.62487709313034345 -0.16555860094265998 -0 0.10502264774222436 -0.37252720643841247 -0.92205950129284275 -0
		 -4.1298506854570984 -4.2789178555654228 -0.72188543037675157 1;
	setAttr ".pm[49]" -type "matrix" -0.43115001004128573 0.83169287787734247 -0.34985229130234941 -0
		 0.90227887362996351 0.39809946477601987 -0.16555860094266009 -0 0.0015821006427817763 -0.3870449237919949 -0.92205950129284286 -0
		 -5.4553896063024494 -2.9266921950579188 -0.72188543037675157 1;
	setAttr ".pm[50]" -type "matrix" -0.28599063606040587 0.89208336513818109 -0.34985229130234941 -0
		 0.95614812680294525 0.24160113672151495 -0.16555860094266009 0 -0.063167362593223475 -0.38185882257532194 -0.92205950129284286 0
		 -6.1336373055839015 -1.9280906660343249 -0.72188543037675168 1;
	setAttr ".pm[51]" -type "matrix" -0.10207338912265439 0.93122736080052537 -0.34985229130234935 -0
		 0.98513663428464682 0.045783855716037589 -0.16555860094266003 0 -0.138155112186749 -0.3615514362469906 -0.92205950129284264 0
		 -6.7508444217482166 -0.59181550033660835 -0.72188543037675135 1;
	setAttr ".pm[52]" -type "matrix" 0.23188992655137963 -0.90765105422430503 0.34985229130234929 -0
		 0.93832475256335257 0.30354078536636891 0.16555860094266009 0 -0.25646387794564546 0.28988369285745602 0.92205950129284264 -0
		 -6.7512693582381997 -1.903683870567642 0.72188543037675112 1;
	setAttr ".pm[53]" -type "matrix" 0.93511716042662907 -0.056207388714783812 0.34985229130234935 -0
		 -0.0026622692766375008 0.9861963607599693 0.16555860094266006 0 -0.35432867312417338 -0.15574808980420141 0.92205950129284275 -0
		 -0.34546931532217812 -7.3149787736033653 0.72188543037675168 1;
	setAttr ".pm[54]" -type "matrix" -0.39955119757237006 0.88654287775749618 -0.23323929003481172 -0
		 0.9138291243102904 0.40534605666864759 -0.024716510786627031 -0 0.072630379874905088 -0.22301636765187308 -0.9721052040178535 -0
		 -4.5278240663455414 -3.3954815719514109 -1.022056662989109 1;
	setAttr ".pm[55]" -type "matrix" -0.32480993554795584 0.91656856773150952 -0.23323929003481172 -0
		 0.94424079275899342 0.32832669611897614 -0.024716510786627038 -0 0.053924308611245898 -0.22826222040059005 -0.97210520401785339 -0
		 -5.2848407562928594 -2.9682891152938393 -1.022056662989109 1;
	setAttr ".pm[56]" -type "matrix" -0.20311030386251164 0.95097089232475285 -0.23323929003481175 -0
		 0.97886549333733408 0.20300600988146297 -0.024716510786627035 -0 0.02384429529963901 -0.23333007072186832 -0.97210520401785372 -0
		 -6.0531111964851538 -2.201331097817814 -1.0220566629891092 1;
	setAttr ".pm[57]" -type "matrix" 0.055141316109679081 -0.97085471046998095 0.23323929003481164 -0
		 0.99773223295074775 0.062605793866458606 0.024716510786627031 0 -0.038598271837057808 0.23134745672386586 0.97210520401785361 -0
		 -6.8860135218368184 0.39760004128751308 1.0220566629891104 1;
	setAttr ".pm[58]" -type "matrix" 0.28391908849808628 -0.93004805508665722 0.23323929003481161 -0
		 0.95438699314136222 0.29754757840910812 0.024716510786627038 0 -0.092387328725348924 0.21558305548535747 0.97210520401785361 -0
		 -7.2628020126628208 -1.3645944917354262 1.0220566629891112 1;
	setAttr ".pm[59]" -type "matrix" 0.55092252852547929 -0.8013013173252308 0.23323929003481161 -0
		 0.82040360957422054 0.57125039299078328 0.024716510786627056 0 -0.15304340874628516 0.17773347282019183 0.9721052040178535 -0
		 -6.9115203688474454 -3.6147653105046995 1.0220566629891117 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801929825545 -0.52562566535849164 0.23323929003481164 -0
		 0.53537162742211097 0.84425488725025144 0.024716510786627042 0 -0.20990504293822981 0.10464867543599525 0.9721052040178535 -0
		 -5.4326010176921917 -6.2006165117325418 1.0220566629891132 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862701361126 0.001203088118692175 0.23323929003481167 -0
		 -0.0071651765168071974 0.99966882233068455 0.024716510786627059 0 -0.23313231024988207 -0.025705996167453497 0.97210520401785372 -0
		 -1.6152689933561759 -8.4165599952487824 1.0220566629891152 1;
	setAttr ".gm" -type "matrix" 2.8669651198868564 -0.030024718752978741 2.017118758919028 0
		 -0.13842372580738663 0.058356023939296876 0.19761261705507749 0 -0.45890098020722242 -3.1390259838425818 0.60551949458215293 0
		 -0.31004498877871489 3.8263897323164651 -0.90938729904501114 1;
	setAttr -s 24 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 24 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 24 ".ifcl";
createNode skinCluster -n "skinCluster7";
	rename -uid "A0E63652-8040-363F-E389-739876A1F643";
	setAttr -s 17 ".wl";
	setAttr ".wl[0:16].w"
		5 40 0.040116523547379421 41 0.22521986294893204 42 0.47491966600670732 
		43 0.21278932138292439 45 0.04695462611405686
		5 40 0.052879197820612657 41 0.285973558603833 42 0.38889369553581482 
		43 0.13188005915371104 45 0.14037348888602852
		5 40 0.032022736704659716 41 0.18775623994828097 42 0.49704807862392908 
		43 0.045399403474851774 45 0.23777354124827851
		5 40 0.022577364259100449 41 0.15466746538838153 42 0.61154399402446058 
		43 0.19497414875601302 45 0.016237027572044406
		5 40 0.015029451285869085 41 0.10580628859543807 42 0.6197935135846494 
		43 0.015110028153231985 45 0.24426071838081143
		5 40 0.025312632755147561 41 0.24288179027046486 42 0.60899050937941401 
		43 0.10308603638692826 45 0.019729031208045346
		5 40 0.030355362713183103 41 0.3402668509086012 42 0.52685226778221783 
		43 0.04373525927418203 45 0.058790259321815974
		5 40 0.016400224303248865 41 0.15072964089330856 42 0.6788704951107003 
		43 0.015510324191607642 45 0.13848931550113466
		5 40 0.064656608571048893 41 0.20725306696970389 42 0.28025173997722641 
		43 0.23658243643283478 45 0.21125614804918605
		5 40 0.064817349369217347 41 0.20791237359430811 42 0.27731138522985693 
		43 0.23246912459073252 45 0.217489767215885
		5 40 0.064724885748306732 41 0.20816468882273484 42 0.27828732704711912 
		43 0.22918776664935531 45 0.21963533173248409
		5 40 0.064605868385162704 41 0.20738126101846199 42 0.2817813581099971 
		43 0.23795409144755603 45 0.20827742103882216
		5 40 0.064544627469190749 41 0.20753012226907894 42 0.27943677727729055 
		43 0.22653352696890472 45 0.2219549460155352
		5 40 0.064415458718300775 41 0.20767322116299716 42 0.28098387437249239 
		43 0.22362476742524537 45 0.22330267832096437
		5 40 0.064906477716213107 41 0.20941482421776736 42 0.27836099218766841 
		43 0.23125352215288342 45 0.21606418372546779
		5 40 0.064718844053891125 41 0.20830620049216178 42 0.28100105392436503 
		43 0.23574396217991897 45 0.210229939349663
		5 40 0.064602876028727912 41 0.20857758278065625 42 0.28021996568703494 
		43 0.22564486566080591 45 0.22095470984277513;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 -0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 -0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 -0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 -0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 -0 0.210011846539538 0.045642596473303459 -0.97663287764657492 -0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 -0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 -0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 -0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 -0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 -0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 -0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 -0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 -0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 -0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 -0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 -0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 -0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 -0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 -0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 -0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 -0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 -0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 -0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 -0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 -0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 -0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 -0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 -0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 -0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 -0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 -0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 -0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 -0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 -0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 -0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 -0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 -0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 -0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 -0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 -0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 -0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 -0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 -0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 -0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 -0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 -0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 -0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 -0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 -0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 -0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 -0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 -0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 -0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 -0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 -0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 -0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 -0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 -0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 -0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 -0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 -0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 -0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 -0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 -0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 -0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 -0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 -0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 -0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 -0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924785605262508 0.69647275897298966 0.6375904212684681 -0
		 0.89339606825899753 0.44836933267261586 -0.028432494404777593 0 -0.3056784495251747 0.56025943769584596 -0.76985066601817032 0
		 -3.5395339858223207 -2.4005302806614877 -1.4268589866057155 1;
	setAttr ".pm[32]" -type "matrix" -0.27889487958311754 0.70693339335951921 0.6499714020597479 -0
		 0.8885321944844633 0.44672740782126169 -0.10461913049686476 0 -0.36431879653257332 0.54834277642227769 -0.75272306596687089 0
		 -4.0483566124710331 -2.4178888719510168 -1.0785179654948196 1;
	setAttr ".pm[33]" -type "matrix" -0.23031896582471262 0.65282056315424064 0.72164983635030056 -0
		 0.83303853409609785 0.51558677430374356 -0.20054196287581566 0 -0.50299102844132282 0.55497350430992753 -0.66257409760833519 0
		 -4.4246285576916371 -2.6889499794631448 -0.5852216413243152 1;
	setAttr ".pm[34]" -type "matrix" -0.43594205479935338 0.59749644125918966 0.67301747937176337 -0
		 0.70084734239732094 0.69452627708497583 -0.16262303985934928 0 -0.56459501194389816 0.40078828965064228 -0.72152700529292924 0
		 -3.9504407340550634 -3.7708443804080867 -0.80903142183858512 1;
	setAttr ".pm[35]" -type "matrix" -0.80828666278327432 0.25069034959079767 0.53275418289181176 -0
		 0.21819681986783124 0.96794042106865841 -0.12442463205086605 0 -0.54686636262092747 0.015674497869846715 -0.83707316977088997 0
		 -1.2782210087401189 -5.4701710515155018 -1.0637098088558508 1;
	setAttr ".pm[36]" -type "matrix" -0.82004746228088032 -0.20903382553540736 0.53275418289181176 -0
		 -0.32022389661991219 0.93913532942412847 -0.12442463205086607 0 -0.47431931822375606 -0.27263472414471851 -0.83707316977088997 0
		 1.4741587162838448 -5.4790258078135139 -1.0637098088558503 1;
	setAttr ".pm[37]" -type "matrix" -0.68115617672397932 -0.58224855063069902 0.44386133893280488 -0
		 -0.71347233192191795 0.66391571242427372 -0.22399365700409787 0 -0.16426653491405938 -0.46925744755370707 -0.86764851951853672 0
		 3.7155105234907788 -4.253503924807462 -0.56138912952764053 1;
	setAttr ".pm[38]" -type "matrix" -0.50408144903854235 -0.80314783289629765 0.31757747283015064 0
		 -0.83807468363902604 0.36604708025856952 -0.40452485668685773 0 0.20864495531536334 -0.47006711600383 -0.85761540860300089 -0
		 4.7675519738061451 -2.6983875616478876 0.40050578146566135 1;
	setAttr ".pm[39]" -type "matrix" -0.13887806920042897 -0.97362021202337345 0.18104299112289102 0
		 -0.8442227548036797 0.02082911068982167 -0.53558761040520475 0 0.51768795829809233 -0.22722198592441178 -0.82484504420267912 -0
		 5.131402903469473 -0.54383199739958166 1.1062769262428087 1;
	setAttr ".pm[40]" -type "matrix" -0.44544499269810256 0.31790426804465338 -0.83696812056325143 0
		 -0.53604557662551799 0.65406162136325452 0.53372140226890541 0 0.71710103769301836 0.68639658494099753 -0.12093729747655504 -0
		 3.5487087028311417 -1.8700671363062362 -2.7925193128695747 1;
	setAttr ".pm[41]" -type "matrix" -0.052113655857806661 -0.12229876297960356 -0.99112419980888034 0
		 -0.12985132476009162 0.98487688829382625 -0.11470025441436067 0 0.99016301704880072 0.12272134076161549 -0.067206191608274221 -0
		 1.5808752410933884 -4.2107979689235933 0.024886527691079015 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923738209327 0.15316129470954071 0.84469936689614911 -0
		 -0.35222855576255746 0.93486282127867992 0.044345799082775778 0 -0.78288597326640097 -0.32027039075406954 0.53340081521212113 -0
		 1.1996855435952647 -4.1723182522672628 0.61489411505153346 1;
	setAttr ".pm[43]" -type "matrix" -0.73333548538209525 0.11850973006940393 0.66945837044455869 -0
		 0.055614852963414348 0.99184695892173957 -0.11465861593249307 0 -0.6775884104744303 -0.04685140293069355 -0.73394747225817225 0
		 -1.618463936552093 -4.150962652048455 0.6167161736380613 1;
	setAttr ".pm[44]" -type "matrix" 0.7178746917702189 0.19100109203229435 -0.6694583704445588 -0
		 -0.15418153848813718 0.98136713567445111 0.11465861593249313 0 0.67888436431047972 0.020907602937564346 0.73394747225817203 -0
		 2.9878104727393069 -3.9063461234579986 -0.61671617363806241 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497183340853 0.012292740621888149 -0.5042589919324536 -0
		 0.11820591039161055 0.96693328393588907 0.22598094425293511 -0 0.49036272815663917 -0.25473302287877969 0.83345994618206876 -0
		 -0.31526849647608046 -4.1175003638789578 -0.8411184408836696 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581191388532 0.14817028233168023 -0.5042589919324536 -0
		 -0.035601728897875065 0.97348093444814543 0.22598094425293513 0 0.52437017498182203 -0.17429984997043529 0.83345994618206876 -0
		 -0.54266112802664046 -4.2561403950661756 -0.84111844088366872 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227101337457 0.54496457952035493 -0.34985229130234941 -0
		 0.62286062490543848 0.76461427634874546 -0.16555860094266003 -0 0.17727848319440126 -0.34406193551726616 -0.92205950129284275 -0
		 -2.7951587350455624 -5.0172514607060918 -0.72188543037675135 1;
	setAttr ".pm[48]" -type "matrix" -0.63784894397210701 0.68611376530730284 -0.34985229130234935 -0
		 0.76296721301434756 0.62487709313034345 -0.16555860094265998 -0 0.10502264774222436 -0.37252720643841247 -0.92205950129284275 -0
		 -4.1298506854570984 -4.2789178555654228 -0.72188543037675157 1;
	setAttr ".pm[49]" -type "matrix" -0.43115001004128573 0.83169287787734247 -0.34985229130234941 -0
		 0.90227887362996351 0.39809946477601987 -0.16555860094266009 -0 0.0015821006427817763 -0.3870449237919949 -0.92205950129284286 -0
		 -5.4553896063024494 -2.9266921950579188 -0.72188543037675157 1;
	setAttr ".pm[50]" -type "matrix" -0.28599063606040587 0.89208336513818109 -0.34985229130234941 -0
		 0.95614812680294525 0.24160113672151495 -0.16555860094266009 0 -0.063167362593223475 -0.38185882257532194 -0.92205950129284286 0
		 -6.1336373055839015 -1.9280906660343249 -0.72188543037675168 1;
	setAttr ".pm[51]" -type "matrix" -0.10207338912265439 0.93122736080052537 -0.34985229130234935 -0
		 0.98513663428464682 0.045783855716037589 -0.16555860094266003 0 -0.138155112186749 -0.3615514362469906 -0.92205950129284264 0
		 -6.7508444217482166 -0.59181550033660835 -0.72188543037675135 1;
	setAttr ".pm[52]" -type "matrix" 0.23188992655137963 -0.90765105422430503 0.34985229130234929 -0
		 0.93832475256335257 0.30354078536636891 0.16555860094266009 0 -0.25646387794564546 0.28988369285745602 0.92205950129284264 -0
		 -6.7512693582381997 -1.903683870567642 0.72188543037675112 1;
	setAttr ".pm[53]" -type "matrix" 0.93511716042662907 -0.056207388714783812 0.34985229130234935 -0
		 -0.0026622692766375008 0.9861963607599693 0.16555860094266006 0 -0.35432867312417338 -0.15574808980420141 0.92205950129284275 -0
		 -0.34546931532217812 -7.3149787736033653 0.72188543037675168 1;
	setAttr ".pm[54]" -type "matrix" -0.39955119757237006 0.88654287775749618 -0.23323929003481172 -0
		 0.9138291243102904 0.40534605666864759 -0.024716510786627031 -0 0.072630379874905088 -0.22301636765187308 -0.9721052040178535 -0
		 -4.5278240663455414 -3.3954815719514109 -1.022056662989109 1;
	setAttr ".pm[55]" -type "matrix" -0.32480993554795584 0.91656856773150952 -0.23323929003481172 -0
		 0.94424079275899342 0.32832669611897614 -0.024716510786627038 -0 0.053924308611245898 -0.22826222040059005 -0.97210520401785339 -0
		 -5.2848407562928594 -2.9682891152938393 -1.022056662989109 1;
	setAttr ".pm[56]" -type "matrix" -0.20311030386251164 0.95097089232475285 -0.23323929003481175 -0
		 0.97886549333733408 0.20300600988146297 -0.024716510786627035 -0 0.02384429529963901 -0.23333007072186832 -0.97210520401785372 -0
		 -6.0531111964851538 -2.201331097817814 -1.0220566629891092 1;
	setAttr ".pm[57]" -type "matrix" 0.055141316109679081 -0.97085471046998095 0.23323929003481164 -0
		 0.99773223295074775 0.062605793866458606 0.024716510786627031 0 -0.038598271837057808 0.23134745672386586 0.97210520401785361 -0
		 -6.8860135218368184 0.39760004128751308 1.0220566629891104 1;
	setAttr ".pm[58]" -type "matrix" 0.28391908849808628 -0.93004805508665722 0.23323929003481161 -0
		 0.95438699314136222 0.29754757840910812 0.024716510786627038 0 -0.092387328725348924 0.21558305548535747 0.97210520401785361 -0
		 -7.2628020126628208 -1.3645944917354262 1.0220566629891112 1;
	setAttr ".pm[59]" -type "matrix" 0.55092252852547929 -0.8013013173252308 0.23323929003481161 -0
		 0.82040360957422054 0.57125039299078328 0.024716510786627056 0 -0.15304340874628516 0.17773347282019183 0.9721052040178535 -0
		 -6.9115203688474454 -3.6147653105046995 1.0220566629891117 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801929825545 -0.52562566535849164 0.23323929003481164 -0
		 0.53537162742211097 0.84425488725025144 0.024716510786627042 0 -0.20990504293822981 0.10464867543599525 0.9721052040178535 -0
		 -5.4326010176921917 -6.2006165117325418 1.0220566629891132 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862701361126 0.001203088118692175 0.23323929003481167 -0
		 -0.0071651765168071974 0.99966882233068455 0.024716510786627059 0 -0.23313231024988207 -0.025705996167453497 0.97210520401785372 -0
		 -1.6152689933561759 -8.4165599952487824 1.0220566629891152 1;
	setAttr ".gm" -type "matrix" 1.7824803456928526 -0.092559673103370183 1.2566238137786081 0
		 -1.1539129236974299 0.75451694496466437 1.6923640357520739 0 -0.7003899841750324 -2.8316638291808713 0.78490753710821881 0
		 -1.1079649590681793 3.930443734028561 0.20307050244601177 1;
	setAttr -s 5 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster8";
	rename -uid "0949C15A-D54F-CD68-360A-CA8A25775EC1";
	setAttr -s 17 ".wl";
	setAttr ".wl[0:16].w"
		5 40 0.089630737486608214 41 0.23146397181162459 42 0.29904522655630916 
		43 0.2343989643303509 45 0.14546109981510705
		5 40 0.091884284685413792 41 0.2330914407390195 42 0.28654513052156372 
		43 0.17737910424962625 45 0.21110003980437669
		5 40 0.076217739122444839 41 0.20890359567987535 42 0.3253673050936966 
		43 0.1180404927696547 45 0.27147086733432857
		5 40 0.075085965354594261 41 0.22178260348963039 42 0.33851319193251717 
		43 0.26163972222806525 45 0.102978516995193
		5 40 0.058084779344453108 41 0.18755897636948687 42 0.36797853655626589 
		43 0.081993512766997081 45 0.30438419496279706
		5 40 0.065058625913291535 41 0.24466352993561841 42 0.36094764876183955 
		43 0.2251615395999671 45 0.10416865578928337
		5 40 0.060116117449122139 41 0.26686985231531551 42 0.36502048783016072 
		43 0.13795789824552915 45 0.17003564415987246
		5 40 0.051706268127693758 41 0.2070630102929791 42 0.39510240929689078 
		43 0.081438130440050063 45 0.26469018184238624
		5 40 0.075571037754616807 41 0.19641114385452577 42 0.25965021540701233 
		43 0.23475002553561383 45 0.23361757744823114
		5 40 0.075297310547069229 41 0.19562943178598013 42 0.26200146129914853 
		43 0.22954324705716811 45 0.23752854931063411
		5 40 0.074785717265611437 41 0.19596597677531769 42 0.26183119725339782 
		43 0.23126553482522366 45 0.23615157388044944
		5 40 0.07537254085032867 41 0.19681244838373163 42 0.25880916351351241 
		43 0.2373810224485606 45 0.2316248248038667
		5 40 0.074698800642559293 41 0.19487561109883839 42 0.26452399433099572 
		43 0.22477305850508056 45 0.2411285354225261
		5 40 0.074142566521117961 41 0.19463965683713272 42 0.26575474897572809 
		43 0.2231274800668423 45 0.24233554759917891
		5 40 0.074260483297667643 41 0.1959666569660348 42 0.26253139566533612 
		43 0.23086031008055805 45 0.23638115399040333
		5 40 0.074835102225822875 41 0.19664921556931969 42 0.25998710146163534 
		43 0.23578490597204535 45 0.23274367477117675
		5 40 0.073967923180837766 41 0.19511214770370744 42 0.26493563628758221 
		43 0.22560368970861988 45 0.24038060311925274;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 -0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 -0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 -0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 -0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 -0 0.210011846539538 0.045642596473303459 -0.97663287764657492 -0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 -0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 -0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 -0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 -0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 -0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 -0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 -0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 -0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 -0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 -0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 -0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 -0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 -0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 -0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 -0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 -0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 -0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 -0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 -0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 -0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 -0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 -0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 -0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 -0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 -0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 -0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 -0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 -0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 -0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 -0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 -0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 -0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 -0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 -0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 -0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 -0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 -0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 -0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 -0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 -0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 -0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 -0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 -0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 -0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 -0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 -0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 -0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 -0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 -0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 -0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 -0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 -0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 -0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 -0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 -0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 -0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 -0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 -0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 -0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 -0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 -0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 -0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 -0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 -0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924785605262508 0.69647275897298966 0.6375904212684681 -0
		 0.89339606825899753 0.44836933267261586 -0.028432494404777593 0 -0.3056784495251747 0.56025943769584596 -0.76985066601817032 0
		 -3.5395339858223207 -2.4005302806614877 -1.4268589866057155 1;
	setAttr ".pm[32]" -type "matrix" -0.27889487958311754 0.70693339335951921 0.6499714020597479 -0
		 0.8885321944844633 0.44672740782126169 -0.10461913049686476 0 -0.36431879653257332 0.54834277642227769 -0.75272306596687089 0
		 -4.0483566124710331 -2.4178888719510168 -1.0785179654948196 1;
	setAttr ".pm[33]" -type "matrix" -0.23031896582471262 0.65282056315424064 0.72164983635030056 -0
		 0.83303853409609785 0.51558677430374356 -0.20054196287581566 0 -0.50299102844132282 0.55497350430992753 -0.66257409760833519 0
		 -4.4246285576916371 -2.6889499794631448 -0.5852216413243152 1;
	setAttr ".pm[34]" -type "matrix" -0.43594205479935338 0.59749644125918966 0.67301747937176337 -0
		 0.70084734239732094 0.69452627708497583 -0.16262303985934928 0 -0.56459501194389816 0.40078828965064228 -0.72152700529292924 0
		 -3.9504407340550634 -3.7708443804080867 -0.80903142183858512 1;
	setAttr ".pm[35]" -type "matrix" -0.80828666278327432 0.25069034959079767 0.53275418289181176 -0
		 0.21819681986783124 0.96794042106865841 -0.12442463205086605 0 -0.54686636262092747 0.015674497869846715 -0.83707316977088997 0
		 -1.2782210087401189 -5.4701710515155018 -1.0637098088558508 1;
	setAttr ".pm[36]" -type "matrix" -0.82004746228088032 -0.20903382553540736 0.53275418289181176 -0
		 -0.32022389661991219 0.93913532942412847 -0.12442463205086607 0 -0.47431931822375606 -0.27263472414471851 -0.83707316977088997 0
		 1.4741587162838448 -5.4790258078135139 -1.0637098088558503 1;
	setAttr ".pm[37]" -type "matrix" -0.68115617672397932 -0.58224855063069902 0.44386133893280488 -0
		 -0.71347233192191795 0.66391571242427372 -0.22399365700409787 0 -0.16426653491405938 -0.46925744755370707 -0.86764851951853672 0
		 3.7155105234907788 -4.253503924807462 -0.56138912952764053 1;
	setAttr ".pm[38]" -type "matrix" -0.50408144903854235 -0.80314783289629765 0.31757747283015064 0
		 -0.83807468363902604 0.36604708025856952 -0.40452485668685773 0 0.20864495531536334 -0.47006711600383 -0.85761540860300089 -0
		 4.7675519738061451 -2.6983875616478876 0.40050578146566135 1;
	setAttr ".pm[39]" -type "matrix" -0.13887806920042897 -0.97362021202337345 0.18104299112289102 0
		 -0.8442227548036797 0.02082911068982167 -0.53558761040520475 0 0.51768795829809233 -0.22722198592441178 -0.82484504420267912 -0
		 5.131402903469473 -0.54383199739958166 1.1062769262428087 1;
	setAttr ".pm[40]" -type "matrix" -0.44544499269810256 0.31790426804465338 -0.83696812056325143 0
		 -0.53604557662551799 0.65406162136325452 0.53372140226890541 0 0.71710103769301836 0.68639658494099753 -0.12093729747655504 -0
		 3.5487087028311417 -1.8700671363062362 -2.7925193128695747 1;
	setAttr ".pm[41]" -type "matrix" -0.052113655857806661 -0.12229876297960356 -0.99112419980888034 0
		 -0.12985132476009162 0.98487688829382625 -0.11470025441436067 0 0.99016301704880072 0.12272134076161549 -0.067206191608274221 -0
		 1.5808752410933884 -4.2107979689235933 0.024886527691079015 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923738209327 0.15316129470954071 0.84469936689614911 -0
		 -0.35222855576255746 0.93486282127867992 0.044345799082775778 0 -0.78288597326640097 -0.32027039075406954 0.53340081521212113 -0
		 1.1996855435952647 -4.1723182522672628 0.61489411505153346 1;
	setAttr ".pm[43]" -type "matrix" -0.73333548538209525 0.11850973006940393 0.66945837044455869 -0
		 0.055614852963414348 0.99184695892173957 -0.11465861593249307 0 -0.6775884104744303 -0.04685140293069355 -0.73394747225817225 0
		 -1.618463936552093 -4.150962652048455 0.6167161736380613 1;
	setAttr ".pm[44]" -type "matrix" 0.7178746917702189 0.19100109203229435 -0.6694583704445588 -0
		 -0.15418153848813718 0.98136713567445111 0.11465861593249313 0 0.67888436431047972 0.020907602937564346 0.73394747225817203 -0
		 2.9878104727393069 -3.9063461234579986 -0.61671617363806241 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497183340853 0.012292740621888149 -0.5042589919324536 -0
		 0.11820591039161055 0.96693328393588907 0.22598094425293511 -0 0.49036272815663917 -0.25473302287877969 0.83345994618206876 -0
		 -0.31526849647608046 -4.1175003638789578 -0.8411184408836696 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581191388532 0.14817028233168023 -0.5042589919324536 -0
		 -0.035601728897875065 0.97348093444814543 0.22598094425293513 0 0.52437017498182203 -0.17429984997043529 0.83345994618206876 -0
		 -0.54266112802664046 -4.2561403950661756 -0.84111844088366872 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227101337457 0.54496457952035493 -0.34985229130234941 -0
		 0.62286062490543848 0.76461427634874546 -0.16555860094266003 -0 0.17727848319440126 -0.34406193551726616 -0.92205950129284275 -0
		 -2.7951587350455624 -5.0172514607060918 -0.72188543037675135 1;
	setAttr ".pm[48]" -type "matrix" -0.63784894397210701 0.68611376530730284 -0.34985229130234935 -0
		 0.76296721301434756 0.62487709313034345 -0.16555860094265998 -0 0.10502264774222436 -0.37252720643841247 -0.92205950129284275 -0
		 -4.1298506854570984 -4.2789178555654228 -0.72188543037675157 1;
	setAttr ".pm[49]" -type "matrix" -0.43115001004128573 0.83169287787734247 -0.34985229130234941 -0
		 0.90227887362996351 0.39809946477601987 -0.16555860094266009 -0 0.0015821006427817763 -0.3870449237919949 -0.92205950129284286 -0
		 -5.4553896063024494 -2.9266921950579188 -0.72188543037675157 1;
	setAttr ".pm[50]" -type "matrix" -0.28599063606040587 0.89208336513818109 -0.34985229130234941 -0
		 0.95614812680294525 0.24160113672151495 -0.16555860094266009 0 -0.063167362593223475 -0.38185882257532194 -0.92205950129284286 0
		 -6.1336373055839015 -1.9280906660343249 -0.72188543037675168 1;
	setAttr ".pm[51]" -type "matrix" -0.10207338912265439 0.93122736080052537 -0.34985229130234935 -0
		 0.98513663428464682 0.045783855716037589 -0.16555860094266003 0 -0.138155112186749 -0.3615514362469906 -0.92205950129284264 0
		 -6.7508444217482166 -0.59181550033660835 -0.72188543037675135 1;
	setAttr ".pm[52]" -type "matrix" 0.23188992655137963 -0.90765105422430503 0.34985229130234929 -0
		 0.93832475256335257 0.30354078536636891 0.16555860094266009 0 -0.25646387794564546 0.28988369285745602 0.92205950129284264 -0
		 -6.7512693582381997 -1.903683870567642 0.72188543037675112 1;
	setAttr ".pm[53]" -type "matrix" 0.93511716042662907 -0.056207388714783812 0.34985229130234935 -0
		 -0.0026622692766375008 0.9861963607599693 0.16555860094266006 0 -0.35432867312417338 -0.15574808980420141 0.92205950129284275 -0
		 -0.34546931532217812 -7.3149787736033653 0.72188543037675168 1;
	setAttr ".pm[54]" -type "matrix" -0.39955119757237006 0.88654287775749618 -0.23323929003481172 -0
		 0.9138291243102904 0.40534605666864759 -0.024716510786627031 -0 0.072630379874905088 -0.22301636765187308 -0.9721052040178535 -0
		 -4.5278240663455414 -3.3954815719514109 -1.022056662989109 1;
	setAttr ".pm[55]" -type "matrix" -0.32480993554795584 0.91656856773150952 -0.23323929003481172 -0
		 0.94424079275899342 0.32832669611897614 -0.024716510786627038 -0 0.053924308611245898 -0.22826222040059005 -0.97210520401785339 -0
		 -5.2848407562928594 -2.9682891152938393 -1.022056662989109 1;
	setAttr ".pm[56]" -type "matrix" -0.20311030386251164 0.95097089232475285 -0.23323929003481175 -0
		 0.97886549333733408 0.20300600988146297 -0.024716510786627035 -0 0.02384429529963901 -0.23333007072186832 -0.97210520401785372 -0
		 -6.0531111964851538 -2.201331097817814 -1.0220566629891092 1;
	setAttr ".pm[57]" -type "matrix" 0.055141316109679081 -0.97085471046998095 0.23323929003481164 -0
		 0.99773223295074775 0.062605793866458606 0.024716510786627031 0 -0.038598271837057808 0.23134745672386586 0.97210520401785361 -0
		 -6.8860135218368184 0.39760004128751308 1.0220566629891104 1;
	setAttr ".pm[58]" -type "matrix" 0.28391908849808628 -0.93004805508665722 0.23323929003481161 -0
		 0.95438699314136222 0.29754757840910812 0.024716510786627038 0 -0.092387328725348924 0.21558305548535747 0.97210520401785361 -0
		 -7.2628020126628208 -1.3645944917354262 1.0220566629891112 1;
	setAttr ".pm[59]" -type "matrix" 0.55092252852547929 -0.8013013173252308 0.23323929003481161 -0
		 0.82040360957422054 0.57125039299078328 0.024716510786627056 0 -0.15304340874628516 0.17773347282019183 0.9721052040178535 -0
		 -6.9115203688474454 -3.6147653105046995 1.0220566629891117 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801929825545 -0.52562566535849164 0.23323929003481164 -0
		 0.53537162742211097 0.84425488725025144 0.024716510786627042 0 -0.20990504293822981 0.10464867543599525 0.9721052040178535 -0
		 -5.4326010176921917 -6.2006165117325418 1.0220566629891132 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862701361126 0.001203088118692175 0.23323929003481167 -0
		 -0.0071651765168071974 0.99966882233068455 0.024716510786627059 0 -0.23313231024988207 -0.025705996167453497 0.97210520401785372 -0
		 -1.6152689933561759 -8.4165599952487824 1.0220566629891152 1;
	setAttr ".gm" -type "matrix" 1.6961245312935751 -0.088075435186982104 1.1957441675628193 0
		 -1.0980093113448295 0.71796286714948865 1.6103740856690001 0 -0.66645819489798308 -2.694478228977891 0.74688112646144988 0
		 -1.1038425517101573 3.8969272699192836 0.22082415272348443 1;
	setAttr -s 5 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster9";
	rename -uid "3A217D17-EC4A-BEFC-AC3A-24B76A506C4D";
	setAttr -s 17 ".wl";
	setAttr ".wl[0:16].w"
		5 40 0.1249142304618972 41 0.22141194553211219 42 0.24788265639196838 
		43 0.21696161085956064 45 0.1888295567544615
		5 40 0.12418938665553013 41 0.2187727753930542 42 0.2500466336273825 
		43 0.18852466916328944 45 0.21846653516074366
		5 40 0.11496687506744314 41 0.21124757534863445 42 0.26720535267479933 
		43 0.15946395648117662 45 0.24711624042794647
		5 40 0.1172950721334366 41 0.22065991508783539 42 0.26112890127092847 
		43 0.2311087861039805 45 0.1698073254038191
		5 40 0.10384711862153469 41 0.20636167168891045 42 0.28330503211650404 
		43 0.14218017815417491 45 0.26430599941887584
		5 40 0.10945413151106252 41 0.22659373528511192 42 0.26441757034905133 
		43 0.2211226166011992 45 0.17841194625357507
		5 40 0.10262601355507392 41 0.22694623967720567 42 0.2718106830808828 
		43 0.18260367412111619 45 0.21601338956572139
		5 40 0.098606851772908552 41 0.21283349605802745 42 0.28654447154723806 
		43 0.14776481669398459 45 0.25425036392784139
		5 40 0.10414025500008986 41 0.20113338012087609 42 0.24420378557067374 
		43 0.21971551911306042 45 0.23080706019529976
		5 40 0.10402086095157834 41 0.20069254081483845 42 0.24542335810294391 
		43 0.21694556903501944 45 0.23291767109561975
		5 40 0.10330400453680227 41 0.20070520921552853 42 0.24572612130058616 
		43 0.21741357969235345 45 0.23285108525472958
		5 40 0.1037514479762202 41 0.20127684797018242 42 0.2439909023197474 
		43 0.22089987681901566 45 0.23008092491483431
		5 40 0.1034562503513461 41 0.20018755704007807 42 0.24696150229950914 
		43 0.21419036290934268 45 0.23520432739972399
		5 40 0.10277976391518229 41 0.19992279763153645 42 0.2479278024630498 
		43 0.21301054753317916 45 0.23635908845705239
		5 40 0.1025241696961514 41 0.20055640707431441 42 0.24647350063594653 
		43 0.21691818882625144 45 0.23352773376733624
		5 40 0.10308490892974485 41 0.20104853472770895 42 0.24492010213046075 
		43 0.21975070098131846 45 0.23119575323076702
		5 40 0.10239486070504963 41 0.20007915160541381 42 0.24773001244142656 
		43 0.21411792326502257 45 0.23567805198308744;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 -0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 -0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 -0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 -0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 -0 0.210011846539538 0.045642596473303459 -0.97663287764657492 -0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 -0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 -0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 -0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 -0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 -0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 -0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 -0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 -0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 -0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 -0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 -0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 -0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 -0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 -0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 -0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 -0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 -0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 -0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 -0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 -0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 -0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 -0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 -0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 -0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 -0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 -0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 -0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 -0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 -0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 -0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 -0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 -0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 -0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 -0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 -0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 -0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 -0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 -0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 -0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 -0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 -0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 -0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 -0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 -0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 -0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 -0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 -0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 -0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 -0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 -0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 -0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 -0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 -0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 -0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 -0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 -0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 -0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 -0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 -0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 -0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 -0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 -0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 -0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 -0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924785605262508 0.69647275897298966 0.6375904212684681 -0
		 0.89339606825899753 0.44836933267261586 -0.028432494404777593 0 -0.3056784495251747 0.56025943769584596 -0.76985066601817032 0
		 -3.5395339858223207 -2.4005302806614877 -1.4268589866057155 1;
	setAttr ".pm[32]" -type "matrix" -0.27889487958311754 0.70693339335951921 0.6499714020597479 -0
		 0.8885321944844633 0.44672740782126169 -0.10461913049686476 0 -0.36431879653257332 0.54834277642227769 -0.75272306596687089 0
		 -4.0483566124710331 -2.4178888719510168 -1.0785179654948196 1;
	setAttr ".pm[33]" -type "matrix" -0.23031896582471262 0.65282056315424064 0.72164983635030056 -0
		 0.83303853409609785 0.51558677430374356 -0.20054196287581566 0 -0.50299102844132282 0.55497350430992753 -0.66257409760833519 0
		 -4.4246285576916371 -2.6889499794631448 -0.5852216413243152 1;
	setAttr ".pm[34]" -type "matrix" -0.43594205479935338 0.59749644125918966 0.67301747937176337 -0
		 0.70084734239732094 0.69452627708497583 -0.16262303985934928 0 -0.56459501194389816 0.40078828965064228 -0.72152700529292924 0
		 -3.9504407340550634 -3.7708443804080867 -0.80903142183858512 1;
	setAttr ".pm[35]" -type "matrix" -0.80828666278327432 0.25069034959079767 0.53275418289181176 -0
		 0.21819681986783124 0.96794042106865841 -0.12442463205086605 0 -0.54686636262092747 0.015674497869846715 -0.83707316977088997 0
		 -1.2782210087401189 -5.4701710515155018 -1.0637098088558508 1;
	setAttr ".pm[36]" -type "matrix" -0.82004746228088032 -0.20903382553540736 0.53275418289181176 -0
		 -0.32022389661991219 0.93913532942412847 -0.12442463205086607 0 -0.47431931822375606 -0.27263472414471851 -0.83707316977088997 0
		 1.4741587162838448 -5.4790258078135139 -1.0637098088558503 1;
	setAttr ".pm[37]" -type "matrix" -0.68115617672397932 -0.58224855063069902 0.44386133893280488 -0
		 -0.71347233192191795 0.66391571242427372 -0.22399365700409787 0 -0.16426653491405938 -0.46925744755370707 -0.86764851951853672 0
		 3.7155105234907788 -4.253503924807462 -0.56138912952764053 1;
	setAttr ".pm[38]" -type "matrix" -0.50408144903854235 -0.80314783289629765 0.31757747283015064 0
		 -0.83807468363902604 0.36604708025856952 -0.40452485668685773 0 0.20864495531536334 -0.47006711600383 -0.85761540860300089 -0
		 4.7675519738061451 -2.6983875616478876 0.40050578146566135 1;
	setAttr ".pm[39]" -type "matrix" -0.13887806920042897 -0.97362021202337345 0.18104299112289102 0
		 -0.8442227548036797 0.02082911068982167 -0.53558761040520475 0 0.51768795829809233 -0.22722198592441178 -0.82484504420267912 -0
		 5.131402903469473 -0.54383199739958166 1.1062769262428087 1;
	setAttr ".pm[40]" -type "matrix" -0.44544499269810256 0.31790426804465338 -0.83696812056325143 0
		 -0.53604557662551799 0.65406162136325452 0.53372140226890541 0 0.71710103769301836 0.68639658494099753 -0.12093729747655504 -0
		 3.5487087028311417 -1.8700671363062362 -2.7925193128695747 1;
	setAttr ".pm[41]" -type "matrix" -0.052113655857806661 -0.12229876297960356 -0.99112419980888034 0
		 -0.12985132476009162 0.98487688829382625 -0.11470025441436067 0 0.99016301704880072 0.12272134076161549 -0.067206191608274221 -0
		 1.5808752410933884 -4.2107979689235933 0.024886527691079015 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923738209327 0.15316129470954071 0.84469936689614911 -0
		 -0.35222855576255746 0.93486282127867992 0.044345799082775778 0 -0.78288597326640097 -0.32027039075406954 0.53340081521212113 -0
		 1.1996855435952647 -4.1723182522672628 0.61489411505153346 1;
	setAttr ".pm[43]" -type "matrix" -0.73333548538209525 0.11850973006940393 0.66945837044455869 -0
		 0.055614852963414348 0.99184695892173957 -0.11465861593249307 0 -0.6775884104744303 -0.04685140293069355 -0.73394747225817225 0
		 -1.618463936552093 -4.150962652048455 0.6167161736380613 1;
	setAttr ".pm[44]" -type "matrix" 0.7178746917702189 0.19100109203229435 -0.6694583704445588 -0
		 -0.15418153848813718 0.98136713567445111 0.11465861593249313 0 0.67888436431047972 0.020907602937564346 0.73394747225817203 -0
		 2.9878104727393069 -3.9063461234579986 -0.61671617363806241 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497183340853 0.012292740621888149 -0.5042589919324536 -0
		 0.11820591039161055 0.96693328393588907 0.22598094425293511 -0 0.49036272815663917 -0.25473302287877969 0.83345994618206876 -0
		 -0.31526849647608046 -4.1175003638789578 -0.8411184408836696 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581191388532 0.14817028233168023 -0.5042589919324536 -0
		 -0.035601728897875065 0.97348093444814543 0.22598094425293513 0 0.52437017498182203 -0.17429984997043529 0.83345994618206876 -0
		 -0.54266112802664046 -4.2561403950661756 -0.84111844088366872 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227101337457 0.54496457952035493 -0.34985229130234941 -0
		 0.62286062490543848 0.76461427634874546 -0.16555860094266003 -0 0.17727848319440126 -0.34406193551726616 -0.92205950129284275 -0
		 -2.7951587350455624 -5.0172514607060918 -0.72188543037675135 1;
	setAttr ".pm[48]" -type "matrix" -0.63784894397210701 0.68611376530730284 -0.34985229130234935 -0
		 0.76296721301434756 0.62487709313034345 -0.16555860094265998 -0 0.10502264774222436 -0.37252720643841247 -0.92205950129284275 -0
		 -4.1298506854570984 -4.2789178555654228 -0.72188543037675157 1;
	setAttr ".pm[49]" -type "matrix" -0.43115001004128573 0.83169287787734247 -0.34985229130234941 -0
		 0.90227887362996351 0.39809946477601987 -0.16555860094266009 -0 0.0015821006427817763 -0.3870449237919949 -0.92205950129284286 -0
		 -5.4553896063024494 -2.9266921950579188 -0.72188543037675157 1;
	setAttr ".pm[50]" -type "matrix" -0.28599063606040587 0.89208336513818109 -0.34985229130234941 -0
		 0.95614812680294525 0.24160113672151495 -0.16555860094266009 0 -0.063167362593223475 -0.38185882257532194 -0.92205950129284286 0
		 -6.1336373055839015 -1.9280906660343249 -0.72188543037675168 1;
	setAttr ".pm[51]" -type "matrix" -0.10207338912265439 0.93122736080052537 -0.34985229130234935 -0
		 0.98513663428464682 0.045783855716037589 -0.16555860094266003 0 -0.138155112186749 -0.3615514362469906 -0.92205950129284264 0
		 -6.7508444217482166 -0.59181550033660835 -0.72188543037675135 1;
	setAttr ".pm[52]" -type "matrix" 0.23188992655137963 -0.90765105422430503 0.34985229130234929 -0
		 0.93832475256335257 0.30354078536636891 0.16555860094266009 0 -0.25646387794564546 0.28988369285745602 0.92205950129284264 -0
		 -6.7512693582381997 -1.903683870567642 0.72188543037675112 1;
	setAttr ".pm[53]" -type "matrix" 0.93511716042662907 -0.056207388714783812 0.34985229130234935 -0
		 -0.0026622692766375008 0.9861963607599693 0.16555860094266006 0 -0.35432867312417338 -0.15574808980420141 0.92205950129284275 -0
		 -0.34546931532217812 -7.3149787736033653 0.72188543037675168 1;
	setAttr ".pm[54]" -type "matrix" -0.39955119757237006 0.88654287775749618 -0.23323929003481172 -0
		 0.9138291243102904 0.40534605666864759 -0.024716510786627031 -0 0.072630379874905088 -0.22301636765187308 -0.9721052040178535 -0
		 -4.5278240663455414 -3.3954815719514109 -1.022056662989109 1;
	setAttr ".pm[55]" -type "matrix" -0.32480993554795584 0.91656856773150952 -0.23323929003481172 -0
		 0.94424079275899342 0.32832669611897614 -0.024716510786627038 -0 0.053924308611245898 -0.22826222040059005 -0.97210520401785339 -0
		 -5.2848407562928594 -2.9682891152938393 -1.022056662989109 1;
	setAttr ".pm[56]" -type "matrix" -0.20311030386251164 0.95097089232475285 -0.23323929003481175 -0
		 0.97886549333733408 0.20300600988146297 -0.024716510786627035 -0 0.02384429529963901 -0.23333007072186832 -0.97210520401785372 -0
		 -6.0531111964851538 -2.201331097817814 -1.0220566629891092 1;
	setAttr ".pm[57]" -type "matrix" 0.055141316109679081 -0.97085471046998095 0.23323929003481164 -0
		 0.99773223295074775 0.062605793866458606 0.024716510786627031 0 -0.038598271837057808 0.23134745672386586 0.97210520401785361 -0
		 -6.8860135218368184 0.39760004128751308 1.0220566629891104 1;
	setAttr ".pm[58]" -type "matrix" 0.28391908849808628 -0.93004805508665722 0.23323929003481161 -0
		 0.95438699314136222 0.29754757840910812 0.024716510786627038 0 -0.092387328725348924 0.21558305548535747 0.97210520401785361 -0
		 -7.2628020126628208 -1.3645944917354262 1.0220566629891112 1;
	setAttr ".pm[59]" -type "matrix" 0.55092252852547929 -0.8013013173252308 0.23323929003481161 -0
		 0.82040360957422054 0.57125039299078328 0.024716510786627056 0 -0.15304340874628516 0.17773347282019183 0.9721052040178535 -0
		 -6.9115203688474454 -3.6147653105046995 1.0220566629891117 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801929825545 -0.52562566535849164 0.23323929003481164 -0
		 0.53537162742211097 0.84425488725025144 0.024716510786627042 0 -0.20990504293822981 0.10464867543599525 0.9721052040178535 -0
		 -5.4326010176921917 -6.2006165117325418 1.0220566629891132 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862701361126 0.001203088118692175 0.23323929003481167 -0
		 -0.0071651765168071974 0.99966882233068455 0.024716510786627059 0 -0.23313231024988207 -0.025705996167453497 0.97210520401785372 -0
		 -1.6152689933561759 -8.4165599952487824 1.0220566629891152 1;
	setAttr ".gm" -type "matrix" 1.7824803456928526 -0.092559673103370183 1.2566238137786081 0
		 -1.1539129236974299 0.75451694496466437 1.6923640357520739 0 -0.7003899841750324 -2.8316638291808713 0.78490753710821881 0
		 -1.0965850952340106 3.9761106222767917 0.19046974480260515 1;
	setAttr -s 5 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster10";
	rename -uid "319B1285-B643-74C4-4464-4F8482BCDA3F";
	setAttr -s 72 ".wl";
	setAttr ".wl[0:71].w"
		5 6 0.4109130091069273 7 0.06031658665799234 19 0.47842329258307076 
		20 0.033864556750627217 32 0.016482554901382358
		5 5 0.046027330938855769 6 0.67797792825097569 19 0.15154495290805547 
		31 0.080487508663714374 32 0.043962279238398586
		5 5 0.11035693248254791 6 0.27558746649742955 19 0.084025852228337181 
		31 0.44471077671178821 32 0.085318972079897179
		5 5 0.15313528208898342 6 0.26891801189016318 19 0.085102454622783472 
		31 0.43171854684704031 32 0.061125704551029732
		5 5 0.039534100740010208 6 0.5998251862072087 19 0.27439332193244054 
		31 0.055346371198290507 32 0.030901019922049949
		5 6 0.34879402712008273 7 0.064900020002291142 8 0.019400181386274931 
		19 0.49812047065911058 20 0.068785300832240562
		5 6 0.1628372577136894 7 0.086010840334682176 8 0.043108790092365103 
		19 0.5319172342212326 20 0.1761258776380307
		5 6 0.17410835476820599 7 0.12122553601814659 8 0.055253673241118538 
		19 0.49051486405808031 20 0.15889757191444853
		5 6 0.037426797288484831 19 0.73676961758940895 20 0.21199458088458553 
		32 0.0075486563162788338 33 0.0062603479212417559
		5 6 0.028390851370874 19 0.68016389499857477 20 0.25267571857668625 
		32 0.020709667631642555 33 0.018059867422222486
		5 6 0.027531328746813435 19 0.63637308657458247 20 0.24448635708408814 
		32 0.050416915793795557 33 0.041192311800720464
		5 6 0.029850978940111975 19 0.64837173399604531 20 0.26779407626397667 
		32 0.030349897584565355 33 0.023633313215300652
		5 6 0.031762170969366503 19 0.65885474556548007 20 0.2902437756066939 
		32 0.010795305480042249 33 0.0083440023784171671
		5 6 0.029325445878095532 7 0.0048877708828223027 19 0.63759218070364299 
		20 0.32352180334000563 32 0.0046727991954335886
		5 6 0.022897072227431682 7 0.0071587100387921869 8 0.0054899685330101851 
		19 0.59933934125398869 20 0.3651149079467772
		5 6 0.030825385376244643 7 0.0080117470556024042 8 0.0055262889065255793 
		19 0.67956434063653803 20 0.27607223802508923
		5 19 0.0032677118958050633 20 0.46912270939261835 21 0.51070645945336068 
		22 0.015917953125657365 23 0.0009851661325584642
		5 19 0.0046525462685498564 20 0.48593050604723925 21 0.4901213027340473 
		22 0.017329432802977791 34 0.0019662121471858145
		5 19 0.0057540211267031903 20 0.48679147010948581 21 0.48679147010948581 
		22 0.017496399035790158 34 0.0031666396185350549
		5 19 0.0058035360186860594 20 0.48754352552264391 21 0.48754352552264413 
		22 0.016828006186657647 34 0.0022814067493680968
		5 19 0.0047084477622168011 20 0.48945506238637887 21 0.48945506238637887 
		22 0.015245551646456327 23 0.0011358758185691599
		5 19 0.0033376750870867116 20 0.48676647959643532 21 0.49525980708972073 
		22 0.013725335132044027 23 0.00091070309471321471
		5 19 0.002463629702215434 20 0.46411480677422967 21 0.51966673165822053 
		22 0.012989950602562765 23 0.00076488126277164713
		5 19 0.0024476580814558097 20 0.45178438929428211 21 0.53119166682519547 
		22 0.013788131213294559 23 0.00078815458577187871
		5 20 0.003555317595706169 21 0.079718627944317208 22 0.72215688834647873 
		23 0.19101877331425998 24 0.0035503927992379062
		5 20 0.0044537808639371415 21 0.091336674886148272 22 0.68118436795343562 
		23 0.21863853283533619 24 0.00438664346114286
		5 20 0.0047781912683738676 21 0.093987280016586461 22 0.6608491294202874 
		23 0.2357026235419416 24 0.0046827757528105952
		5 20 0.0043656704154031948 21 0.087819270138266514 22 0.66751792089474526 
		23 0.23599321845417917 24 0.0043039200974057607
		5 20 0.0035072371263891121 21 0.076050967803969485 22 0.6998168845805266 
		23 0.21712012463310446 24 0.0035047858560103475
		5 20 0.0026896139090880965 21 0.063930856899203525 22 0.74519037823848899 
		23 0.18546325772294395 24 0.0027258932302754823
		5 20 0.0023409048533295342 21 0.05871920198573239 22 0.77437262451374467 
		23 0.16217993409012935 24 0.0023873345570641353
		5 20 0.002671733225922188 21 0.065363318179302243 22 0.76330352878467822 
		23 0.16595357105586497 24 0.0027078487542323486
		5 22 0.0085237116085530081 23 0.47795173179935174 24 0.48519291701337852 
		25 0.026365636871597917 26 0.0019660027071189208
		5 22 0.0097625333922514174 23 0.48089887894470773 24 0.48089258964778481 
		25 0.026409012291497776 26 0.0020369857237583148
		5 22 0.0094271949487866741 23 0.48292684352498 24 0.48292684352497989 
		25 0.022949388065783283 26 0.0017697299354702493
		5 22 0.0061855104439395604 23 0.48860955388091243 24 0.48860955388091221 
		25 0.015482818755913386 26 0.0011125630383224633
		5 22 0.005150769858436351 23 0.48960961117948659 24 0.48960961117948659 
		25 0.014619387905700261 26 0.001010619876890165
		5 22 0.0052643585692486805 23 0.4842215359020875 24 0.4923760678055083 
		25 0.016976216424469507 26 0.0011618212986859286
		5 22 0.0065630938908952871 23 0.47657074815719336 24 0.49331493703380674 
		25 0.021995499578112396 26 0.0015557213399921975
		5 23 0.0015577298007825077 24 0.019675144935220056 25 0.56022103073252771 
		26 0.41282023442947063 27 0.0057258601019992035
		5 23 0.0023760823259595717 24 0.027298505960936123 25 0.51169834004382708 
		26 0.45004352646475493 27 0.0085835452045221333
		5 23 0.0029230444078274642 24 0.031855955224008234 25 0.49030504833212191 
		26 0.46466993863209205 27 0.010246013403950338
		5 23 0.0029354693588793139 24 0.032074972823873775 25 0.48703832911402173 
		26 0.46792979278346647 27 0.010021435919758574
		5 23 0.0024561291264485431 24 0.028306994413825625 25 0.4980025465971778 
		26 0.46295195673540601 27 0.0082823731271420252
		5 23 0.0017145137461824181 24 0.021577091198059267 25 0.53143749581327482 
		26 0.43943790790786402 27 0.0058329913346196003
		5 23 0.0011098836030398556 24 0.015121803654337809 25 0.58916335111927598 
		26 0.39071215549262706 27 0.0038928061307193216
		5 23 0.0010232505709796601 24 0.014004485487556798 25 0.61033277073017744 
		26 0.37092271766699547 27 0.003716775544290527
		5 24 0.00032601679475490061 25 0.0028261813728717605 26 0.31299457266693947 
		27 0.68076910824957393 28 0.0030841209158598447
		5 24 0.00051559966298022361 25 0.0042728591586748176 26 0.40515738767752058 
		27 0.5850454748715519 28 0.0050086786292724821
		5 24 0.00070205589554005361 25 0.0056370343236549986 26 0.45852262304244612 
		27 0.52842577435313887 28 0.0067125123852199179
		5 24 0.00078560088264164295 25 0.0063705668834646541 26 0.47051279616544944 
		27 0.5154580454058163 28 0.0068729906626279723
		5 24 0.00064496598514720269 25 0.0054318305489616577 26 0.43861127900662422 
		27 0.54985566812090114 28 0.0054562563383657708
		5 24 0.00042385078398669065 25 0.0037239100616128138 26 0.35915883991382591 
		27 0.63309687428223749 28 0.0035965249583372696
		5 24 0.00027652897927861084 25 0.002465944801424729 26 0.27848038836606792 
		27 0.71631458590454278 28 0.0024625519486859014
		5 25 0.00010217908668736964 26 0.00075493535695235015 27 0.32680502727677835 
		28 0.67077026469932721 29 0.0015675935802548059
		5 25 8.560003681463483e-05 26 0.0006377404071589277 27 0.43798148380445889 
		28 0.56004008188647891 29 0.0012550938650885898
		5 25 0.00010487392494234244 26 0.0007847033518066914 27 0.49747996323322863 
		28 0.50023837122863279 29 0.0013920882613894939
		5 25 0.00016675125101308139 26 0.0012426583018319633 27 0.49827620544633722 
		28 0.49827620544633722 29 0.0020381795544806075
		5 25 0.00027323988826339295 26 0.0020205298193215482 27 0.4972548292234642 
		28 0.4972548292234642 29 0.0031965718454866703
		5 25 0.00037085994973576613 26 0.0027133429180760697 27 0.48138474365443723 
		28 0.51108261468105942 29 0.0044484387966915616
		5 25 0.00033810113021920461 26 0.0024629895225850283 27 0.41841121746853593 
		28 0.57437376204506618 29 0.0044139298335936624
		5 25 0.00019247782267434364 26 0.0014101002840199513 27 0.33454482214602094 
		28 0.66106145634976332 29 0.0027911433975215043
		5 26 2.1119634757325663e-05 27 0.00023866935573705575 28 0.3264256695569413 
		29 0.67317687133166215 30 0.00013767012090220654
		5 26 3.2404933232194092e-06 27 3.8279335497681161e-05 28 0.27360049299152983 
		29 0.7263350593263761 30 2.2927853273177286e-05
		5 26 6.6889725183248942e-06 27 8.0904691382315788e-05 28 0.43101890455430225 
		29 0.56884433405790968 30 4.9167723887333491e-05
		5 26 0.00010744904900490961 27 0.0012514248797909863 28 0.48764899500302195 
		29 0.51026702734688045 30 0.00072510372130162981
		5 26 0.00018809185161972321 27 0.0021006625022628638 28 0.47505691606289546 
		29 0.52148007662940399 30 0.0011742529538179469
		5 26 0.00018830074543311999 27 0.0020410623416572196 28 0.4473151788215875 
		29 0.54933578787952841 30 0.0011196702117936875
		5 26 9.5825548698566846e-05 27 0.0010428809688268787 28 0.40003544838474603 
		29 0.59824665230614138 30 0.00057919279158719918
		5 22 0.0079181568335300774 23 0.48598738354687437 24 0.4859873835468746 
		25 0.018704531049527441 26 0.0014025450231933967
		5 24 0.00080114875397922184 25 0.0063849796485151997 26 0.47492218342963322 
		27 0.51054214316710744 28 0.00734954500076496
		5 26 3.5348619354850095e-05 27 0.00042482580905179966 28 0.48570068830836927 
		29 0.51358461488394291 30 0.00025452237928122608;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 -0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 -0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 -0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 -0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 -0 0.210011846539538 0.045642596473303459 -0.97663287764657492 -0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 -0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 -0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 -0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 -0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 -0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 -0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 -0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 -0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 -0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 -0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 -0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 -0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 -0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 -0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 -0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 -0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 -0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 -0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 -0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 -0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 -0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 -0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 -0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 -0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 -0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 -0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 -0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 -0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 -0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 -0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 -0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 -0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 -0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 -0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 -0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 -0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 -0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 -0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 -0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 -0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 -0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 -0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 -0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 -0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 -0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 -0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 -0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 -0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 -0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 -0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 -0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 -0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 -0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 -0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 -0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 -0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 -0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 -0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 -0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 -0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 -0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 -0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 -0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 -0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924785605262508 0.69647275897298966 0.6375904212684681 -0
		 0.89339606825899753 0.44836933267261586 -0.028432494404777593 0 -0.3056784495251747 0.56025943769584596 -0.76985066601817032 0
		 -3.5395339858223207 -2.4005302806614877 -1.4268589866057155 1;
	setAttr ".pm[32]" -type "matrix" -0.27889487958311754 0.70693339335951921 0.6499714020597479 -0
		 0.8885321944844633 0.44672740782126169 -0.10461913049686476 0 -0.36431879653257332 0.54834277642227769 -0.75272306596687089 0
		 -4.0483566124710331 -2.4178888719510168 -1.0785179654948196 1;
	setAttr ".pm[33]" -type "matrix" -0.23031896582471262 0.65282056315424064 0.72164983635030056 -0
		 0.83303853409609785 0.51558677430374356 -0.20054196287581566 0 -0.50299102844132282 0.55497350430992753 -0.66257409760833519 0
		 -4.4246285576916371 -2.6889499794631448 -0.5852216413243152 1;
	setAttr ".pm[34]" -type "matrix" -0.43594205479935338 0.59749644125918966 0.67301747937176337 -0
		 0.70084734239732094 0.69452627708497583 -0.16262303985934928 0 -0.56459501194389816 0.40078828965064228 -0.72152700529292924 0
		 -3.9504407340550634 -3.7708443804080867 -0.80903142183858512 1;
	setAttr ".pm[35]" -type "matrix" -0.80828666278327432 0.25069034959079767 0.53275418289181176 -0
		 0.21819681986783124 0.96794042106865841 -0.12442463205086605 0 -0.54686636262092747 0.015674497869846715 -0.83707316977088997 0
		 -1.2782210087401189 -5.4701710515155018 -1.0637098088558508 1;
	setAttr ".pm[36]" -type "matrix" -0.82004746228088032 -0.20903382553540736 0.53275418289181176 -0
		 -0.32022389661991219 0.93913532942412847 -0.12442463205086607 0 -0.47431931822375606 -0.27263472414471851 -0.83707316977088997 0
		 1.4741587162838448 -5.4790258078135139 -1.0637098088558503 1;
	setAttr ".pm[37]" -type "matrix" -0.68115617672397932 -0.58224855063069902 0.44386133893280488 -0
		 -0.71347233192191795 0.66391571242427372 -0.22399365700409787 0 -0.16426653491405938 -0.46925744755370707 -0.86764851951853672 0
		 3.7155105234907788 -4.253503924807462 -0.56138912952764053 1;
	setAttr ".pm[38]" -type "matrix" -0.50408144903854235 -0.80314783289629765 0.31757747283015064 0
		 -0.83807468363902604 0.36604708025856952 -0.40452485668685773 0 0.20864495531536334 -0.47006711600383 -0.85761540860300089 -0
		 4.7675519738061451 -2.6983875616478876 0.40050578146566135 1;
	setAttr ".pm[39]" -type "matrix" -0.13887806920042897 -0.97362021202337345 0.18104299112289102 0
		 -0.8442227548036797 0.02082911068982167 -0.53558761040520475 0 0.51768795829809233 -0.22722198592441178 -0.82484504420267912 -0
		 5.131402903469473 -0.54383199739958166 1.1062769262428087 1;
	setAttr ".pm[40]" -type "matrix" -0.44544499269810256 0.31790426804465338 -0.83696812056325143 0
		 -0.53604557662551799 0.65406162136325452 0.53372140226890541 0 0.71710103769301836 0.68639658494099753 -0.12093729747655504 -0
		 3.5487087028311417 -1.8700671363062362 -2.7925193128695747 1;
	setAttr ".pm[41]" -type "matrix" -0.052113655857806661 -0.12229876297960356 -0.99112419980888034 0
		 -0.12985132476009162 0.98487688829382625 -0.11470025441436067 0 0.99016301704880072 0.12272134076161549 -0.067206191608274221 -0
		 1.5808752410933884 -4.2107979689235933 0.024886527691079015 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923738209327 0.15316129470954071 0.84469936689614911 -0
		 -0.35222855576255746 0.93486282127867992 0.044345799082775778 0 -0.78288597326640097 -0.32027039075406954 0.53340081521212113 -0
		 1.1996855435952647 -4.1723182522672628 0.61489411505153346 1;
	setAttr ".pm[43]" -type "matrix" -0.73333548538209525 0.11850973006940393 0.66945837044455869 -0
		 0.055614852963414348 0.99184695892173957 -0.11465861593249307 0 -0.6775884104744303 -0.04685140293069355 -0.73394747225817225 0
		 -1.618463936552093 -4.150962652048455 0.6167161736380613 1;
	setAttr ".pm[44]" -type "matrix" 0.7178746917702189 0.19100109203229435 -0.6694583704445588 -0
		 -0.15418153848813718 0.98136713567445111 0.11465861593249313 0 0.67888436431047972 0.020907602937564346 0.73394747225817203 -0
		 2.9878104727393069 -3.9063461234579986 -0.61671617363806241 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497183340853 0.012292740621888149 -0.5042589919324536 -0
		 0.11820591039161055 0.96693328393588907 0.22598094425293511 -0 0.49036272815663917 -0.25473302287877969 0.83345994618206876 -0
		 -0.31526849647608046 -4.1175003638789578 -0.8411184408836696 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581191388532 0.14817028233168023 -0.5042589919324536 -0
		 -0.035601728897875065 0.97348093444814543 0.22598094425293513 0 0.52437017498182203 -0.17429984997043529 0.83345994618206876 -0
		 -0.54266112802664046 -4.2561403950661756 -0.84111844088366872 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227101337457 0.54496457952035493 -0.34985229130234941 -0
		 0.62286062490543848 0.76461427634874546 -0.16555860094266003 -0 0.17727848319440126 -0.34406193551726616 -0.92205950129284275 -0
		 -2.7951587350455624 -5.0172514607060918 -0.72188543037675135 1;
	setAttr ".pm[48]" -type "matrix" -0.63784894397210701 0.68611376530730284 -0.34985229130234935 -0
		 0.76296721301434756 0.62487709313034345 -0.16555860094265998 -0 0.10502264774222436 -0.37252720643841247 -0.92205950129284275 -0
		 -4.1298506854570984 -4.2789178555654228 -0.72188543037675157 1;
	setAttr ".pm[49]" -type "matrix" -0.43115001004128573 0.83169287787734247 -0.34985229130234941 -0
		 0.90227887362996351 0.39809946477601987 -0.16555860094266009 -0 0.0015821006427817763 -0.3870449237919949 -0.92205950129284286 -0
		 -5.4553896063024494 -2.9266921950579188 -0.72188543037675157 1;
	setAttr ".pm[50]" -type "matrix" -0.28599063606040587 0.89208336513818109 -0.34985229130234941 -0
		 0.95614812680294525 0.24160113672151495 -0.16555860094266009 0 -0.063167362593223475 -0.38185882257532194 -0.92205950129284286 0
		 -6.1336373055839015 -1.9280906660343249 -0.72188543037675168 1;
	setAttr ".pm[51]" -type "matrix" -0.10207338912265439 0.93122736080052537 -0.34985229130234935 -0
		 0.98513663428464682 0.045783855716037589 -0.16555860094266003 0 -0.138155112186749 -0.3615514362469906 -0.92205950129284264 0
		 -6.7508444217482166 -0.59181550033660835 -0.72188543037675135 1;
	setAttr ".pm[52]" -type "matrix" 0.23188992655137963 -0.90765105422430503 0.34985229130234929 -0
		 0.93832475256335257 0.30354078536636891 0.16555860094266009 0 -0.25646387794564546 0.28988369285745602 0.92205950129284264 -0
		 -6.7512693582381997 -1.903683870567642 0.72188543037675112 1;
	setAttr ".pm[53]" -type "matrix" 0.93511716042662907 -0.056207388714783812 0.34985229130234935 -0
		 -0.0026622692766375008 0.9861963607599693 0.16555860094266006 0 -0.35432867312417338 -0.15574808980420141 0.92205950129284275 -0
		 -0.34546931532217812 -7.3149787736033653 0.72188543037675168 1;
	setAttr ".pm[54]" -type "matrix" -0.39955119757237006 0.88654287775749618 -0.23323929003481172 -0
		 0.9138291243102904 0.40534605666864759 -0.024716510786627031 -0 0.072630379874905088 -0.22301636765187308 -0.9721052040178535 -0
		 -4.5278240663455414 -3.3954815719514109 -1.022056662989109 1;
	setAttr ".pm[55]" -type "matrix" -0.32480993554795584 0.91656856773150952 -0.23323929003481172 -0
		 0.94424079275899342 0.32832669611897614 -0.024716510786627038 -0 0.053924308611245898 -0.22826222040059005 -0.97210520401785339 -0
		 -5.2848407562928594 -2.9682891152938393 -1.022056662989109 1;
	setAttr ".pm[56]" -type "matrix" -0.20311030386251164 0.95097089232475285 -0.23323929003481175 -0
		 0.97886549333733408 0.20300600988146297 -0.024716510786627035 -0 0.02384429529963901 -0.23333007072186832 -0.97210520401785372 -0
		 -6.0531111964851538 -2.201331097817814 -1.0220566629891092 1;
	setAttr ".pm[57]" -type "matrix" 0.055141316109679081 -0.97085471046998095 0.23323929003481164 -0
		 0.99773223295074775 0.062605793866458606 0.024716510786627031 0 -0.038598271837057808 0.23134745672386586 0.97210520401785361 -0
		 -6.8860135218368184 0.39760004128751308 1.0220566629891104 1;
	setAttr ".pm[58]" -type "matrix" 0.28391908849808628 -0.93004805508665722 0.23323929003481161 -0
		 0.95438699314136222 0.29754757840910812 0.024716510786627038 0 -0.092387328725348924 0.21558305548535747 0.97210520401785361 -0
		 -7.2628020126628208 -1.3645944917354262 1.0220566629891112 1;
	setAttr ".pm[59]" -type "matrix" 0.55092252852547929 -0.8013013173252308 0.23323929003481161 -0
		 0.82040360957422054 0.57125039299078328 0.024716510786627056 0 -0.15304340874628516 0.17773347282019183 0.9721052040178535 -0
		 -6.9115203688474454 -3.6147653105046995 1.0220566629891117 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801929825545 -0.52562566535849164 0.23323929003481164 -0
		 0.53537162742211097 0.84425488725025144 0.024716510786627042 0 -0.20990504293822981 0.10464867543599525 0.9721052040178535 -0
		 -5.4326010176921917 -6.2006165117325418 1.0220566629891132 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862701361126 0.001203088118692175 0.23323929003481167 -0
		 -0.0071651765168071974 0.99966882233068455 0.024716510786627059 0 -0.23313231024988207 -0.025705996167453497 0.97210520401785372 -0
		 -1.6152689933561759 -8.4165599952487824 1.0220566629891152 1;
	setAttr ".gm" -type "matrix" 0.15837777301350067 0.00033604978785740502 0.019955156822722718 0
		 -0.0049405971660277824 2.3284668069611176 -6.3113361338737083e-20 0 -0.019955111902441109 -4.2341238886560659e-05 0.15837812953238176 0
		 1.3355121684236715 6.7757255861608829 -0.74918741214069884 1;
	setAttr -s 20 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 20 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 20 ".ifcl";
createNode skinCluster -n "skinCluster11";
	rename -uid "61133173-8F4A-1110-3D89-B98C98D923FA";
	setAttr -s 8 ".wl";
	setAttr ".wl[0:7].w"
		5 24 0.0090451185637277446 25 0.047226808805170065 26 0.43485221093716037 
		27 0.4386102311747998 28 0.070265630519142003
		5 25 0.022993513020063933 26 0.18922525322513836 27 0.45176864197938826 
		28 0.31553996666791528 29 0.020472625107494119
		5 24 0.036258335562529984 25 0.1227475821445326 26 0.35888311619526519 
		27 0.35888311619526519 28 0.12322784990240705
		5 24 0.035521678811508847 25 0.12028895223331902 26 0.35895630741789147 
		27 0.35895630741789147 28 0.12627675411938924
		5 24 0.0028409922824849392 25 0.018378563895678195 26 0.45681845035814866 
		27 0.49145050785942035 28 0.030511485604267908
		5 25 0.0026407051442763566 26 0.022303540009392653 27 0.48385193943607563 
		28 0.48147067677545147 29 0.0097331386348038767
		5 24 0.00080114875397922184 25 0.0063849796485151997 26 0.47492218342963322 
		27 0.51054214316710744 28 0.00734954500076496
		5 25 0.00016675125101308139 26 0.0012426583018319633 27 0.49827620544633722 
		28 0.49827620544633722 29 0.0020381795544806075;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 -0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 -0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 -0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 -0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 -0 0.210011846539538 0.045642596473303459 -0.97663287764657492 -0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 -0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 -0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 -0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 -0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 -0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 -0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 -0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 -0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 -0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 -0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 -0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 -0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 -0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 -0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 -0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 -0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 -0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 -0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 -0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 -0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 -0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 -0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 -0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 -0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 -0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 -0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 -0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 -0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 -0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 -0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 -0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 -0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 -0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 -0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 -0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 -0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 -0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 -0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 -0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 -0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 -0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 -0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 -0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 -0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 -0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 -0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 -0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 -0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 -0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 -0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 -0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 -0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 -0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 -0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 -0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 -0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 -0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 -0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 -0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 -0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 -0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 -0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 -0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 -0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924785605262508 0.69647275897298966 0.6375904212684681 -0
		 0.89339606825899753 0.44836933267261586 -0.028432494404777593 0 -0.3056784495251747 0.56025943769584596 -0.76985066601817032 0
		 -3.5395339858223207 -2.4005302806614877 -1.4268589866057155 1;
	setAttr ".pm[32]" -type "matrix" -0.27889487958311754 0.70693339335951921 0.6499714020597479 -0
		 0.8885321944844633 0.44672740782126169 -0.10461913049686476 0 -0.36431879653257332 0.54834277642227769 -0.75272306596687089 0
		 -4.0483566124710331 -2.4178888719510168 -1.0785179654948196 1;
	setAttr ".pm[33]" -type "matrix" -0.23031896582471262 0.65282056315424064 0.72164983635030056 -0
		 0.83303853409609785 0.51558677430374356 -0.20054196287581566 0 -0.50299102844132282 0.55497350430992753 -0.66257409760833519 0
		 -4.4246285576916371 -2.6889499794631448 -0.5852216413243152 1;
	setAttr ".pm[34]" -type "matrix" -0.43594205479935338 0.59749644125918966 0.67301747937176337 -0
		 0.70084734239732094 0.69452627708497583 -0.16262303985934928 0 -0.56459501194389816 0.40078828965064228 -0.72152700529292924 0
		 -3.9504407340550634 -3.7708443804080867 -0.80903142183858512 1;
	setAttr ".pm[35]" -type "matrix" -0.80828666278327432 0.25069034959079767 0.53275418289181176 -0
		 0.21819681986783124 0.96794042106865841 -0.12442463205086605 0 -0.54686636262092747 0.015674497869846715 -0.83707316977088997 0
		 -1.2782210087401189 -5.4701710515155018 -1.0637098088558508 1;
	setAttr ".pm[36]" -type "matrix" -0.82004746228088032 -0.20903382553540736 0.53275418289181176 -0
		 -0.32022389661991219 0.93913532942412847 -0.12442463205086607 0 -0.47431931822375606 -0.27263472414471851 -0.83707316977088997 0
		 1.4741587162838448 -5.4790258078135139 -1.0637098088558503 1;
	setAttr ".pm[37]" -type "matrix" -0.68115617672397932 -0.58224855063069902 0.44386133893280488 -0
		 -0.71347233192191795 0.66391571242427372 -0.22399365700409787 0 -0.16426653491405938 -0.46925744755370707 -0.86764851951853672 0
		 3.7155105234907788 -4.253503924807462 -0.56138912952764053 1;
	setAttr ".pm[38]" -type "matrix" -0.50408144903854235 -0.80314783289629765 0.31757747283015064 0
		 -0.83807468363902604 0.36604708025856952 -0.40452485668685773 0 0.20864495531536334 -0.47006711600383 -0.85761540860300089 -0
		 4.7675519738061451 -2.6983875616478876 0.40050578146566135 1;
	setAttr ".pm[39]" -type "matrix" -0.13887806920042897 -0.97362021202337345 0.18104299112289102 0
		 -0.8442227548036797 0.02082911068982167 -0.53558761040520475 0 0.51768795829809233 -0.22722198592441178 -0.82484504420267912 -0
		 5.131402903469473 -0.54383199739958166 1.1062769262428087 1;
	setAttr ".pm[40]" -type "matrix" -0.44544499269810256 0.31790426804465338 -0.83696812056325143 0
		 -0.53604557662551799 0.65406162136325452 0.53372140226890541 0 0.71710103769301836 0.68639658494099753 -0.12093729747655504 -0
		 3.5487087028311417 -1.8700671363062362 -2.7925193128695747 1;
	setAttr ".pm[41]" -type "matrix" -0.052113655857806661 -0.12229876297960356 -0.99112419980888034 0
		 -0.12985132476009162 0.98487688829382625 -0.11470025441436067 0 0.99016301704880072 0.12272134076161549 -0.067206191608274221 -0
		 1.5808752410933884 -4.2107979689235933 0.024886527691079015 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923738209327 0.15316129470954071 0.84469936689614911 -0
		 -0.35222855576255746 0.93486282127867992 0.044345799082775778 0 -0.78288597326640097 -0.32027039075406954 0.53340081521212113 -0
		 1.1996855435952647 -4.1723182522672628 0.61489411505153346 1;
	setAttr ".pm[43]" -type "matrix" -0.73333548538209525 0.11850973006940393 0.66945837044455869 -0
		 0.055614852963414348 0.99184695892173957 -0.11465861593249307 0 -0.6775884104744303 -0.04685140293069355 -0.73394747225817225 0
		 -1.618463936552093 -4.150962652048455 0.6167161736380613 1;
	setAttr ".pm[44]" -type "matrix" 0.7178746917702189 0.19100109203229435 -0.6694583704445588 -0
		 -0.15418153848813718 0.98136713567445111 0.11465861593249313 0 0.67888436431047972 0.020907602937564346 0.73394747225817203 -0
		 2.9878104727393069 -3.9063461234579986 -0.61671617363806241 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497183340853 0.012292740621888149 -0.5042589919324536 -0
		 0.11820591039161055 0.96693328393588907 0.22598094425293511 -0 0.49036272815663917 -0.25473302287877969 0.83345994618206876 -0
		 -0.31526849647608046 -4.1175003638789578 -0.8411184408836696 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581191388532 0.14817028233168023 -0.5042589919324536 -0
		 -0.035601728897875065 0.97348093444814543 0.22598094425293513 0 0.52437017498182203 -0.17429984997043529 0.83345994618206876 -0
		 -0.54266112802664046 -4.2561403950661756 -0.84111844088366872 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227101337457 0.54496457952035493 -0.34985229130234941 -0
		 0.62286062490543848 0.76461427634874546 -0.16555860094266003 -0 0.17727848319440126 -0.34406193551726616 -0.92205950129284275 -0
		 -2.7951587350455624 -5.0172514607060918 -0.72188543037675135 1;
	setAttr ".pm[48]" -type "matrix" -0.63784894397210701 0.68611376530730284 -0.34985229130234935 -0
		 0.76296721301434756 0.62487709313034345 -0.16555860094265998 -0 0.10502264774222436 -0.37252720643841247 -0.92205950129284275 -0
		 -4.1298506854570984 -4.2789178555654228 -0.72188543037675157 1;
	setAttr ".pm[49]" -type "matrix" -0.43115001004128573 0.83169287787734247 -0.34985229130234941 -0
		 0.90227887362996351 0.39809946477601987 -0.16555860094266009 -0 0.0015821006427817763 -0.3870449237919949 -0.92205950129284286 -0
		 -5.4553896063024494 -2.9266921950579188 -0.72188543037675157 1;
	setAttr ".pm[50]" -type "matrix" -0.28599063606040587 0.89208336513818109 -0.34985229130234941 -0
		 0.95614812680294525 0.24160113672151495 -0.16555860094266009 0 -0.063167362593223475 -0.38185882257532194 -0.92205950129284286 0
		 -6.1336373055839015 -1.9280906660343249 -0.72188543037675168 1;
	setAttr ".pm[51]" -type "matrix" -0.10207338912265439 0.93122736080052537 -0.34985229130234935 -0
		 0.98513663428464682 0.045783855716037589 -0.16555860094266003 0 -0.138155112186749 -0.3615514362469906 -0.92205950129284264 0
		 -6.7508444217482166 -0.59181550033660835 -0.72188543037675135 1;
	setAttr ".pm[52]" -type "matrix" 0.23188992655137963 -0.90765105422430503 0.34985229130234929 -0
		 0.93832475256335257 0.30354078536636891 0.16555860094266009 0 -0.25646387794564546 0.28988369285745602 0.92205950129284264 -0
		 -6.7512693582381997 -1.903683870567642 0.72188543037675112 1;
	setAttr ".pm[53]" -type "matrix" 0.93511716042662907 -0.056207388714783812 0.34985229130234935 -0
		 -0.0026622692766375008 0.9861963607599693 0.16555860094266006 0 -0.35432867312417338 -0.15574808980420141 0.92205950129284275 -0
		 -0.34546931532217812 -7.3149787736033653 0.72188543037675168 1;
	setAttr ".pm[54]" -type "matrix" -0.39955119757237006 0.88654287775749618 -0.23323929003481172 -0
		 0.9138291243102904 0.40534605666864759 -0.024716510786627031 -0 0.072630379874905088 -0.22301636765187308 -0.9721052040178535 -0
		 -4.5278240663455414 -3.3954815719514109 -1.022056662989109 1;
	setAttr ".pm[55]" -type "matrix" -0.32480993554795584 0.91656856773150952 -0.23323929003481172 -0
		 0.94424079275899342 0.32832669611897614 -0.024716510786627038 -0 0.053924308611245898 -0.22826222040059005 -0.97210520401785339 -0
		 -5.2848407562928594 -2.9682891152938393 -1.022056662989109 1;
	setAttr ".pm[56]" -type "matrix" -0.20311030386251164 0.95097089232475285 -0.23323929003481175 -0
		 0.97886549333733408 0.20300600988146297 -0.024716510786627035 -0 0.02384429529963901 -0.23333007072186832 -0.97210520401785372 -0
		 -6.0531111964851538 -2.201331097817814 -1.0220566629891092 1;
	setAttr ".pm[57]" -type "matrix" 0.055141316109679081 -0.97085471046998095 0.23323929003481164 -0
		 0.99773223295074775 0.062605793866458606 0.024716510786627031 0 -0.038598271837057808 0.23134745672386586 0.97210520401785361 -0
		 -6.8860135218368184 0.39760004128751308 1.0220566629891104 1;
	setAttr ".pm[58]" -type "matrix" 0.28391908849808628 -0.93004805508665722 0.23323929003481161 -0
		 0.95438699314136222 0.29754757840910812 0.024716510786627038 0 -0.092387328725348924 0.21558305548535747 0.97210520401785361 -0
		 -7.2628020126628208 -1.3645944917354262 1.0220566629891112 1;
	setAttr ".pm[59]" -type "matrix" 0.55092252852547929 -0.8013013173252308 0.23323929003481161 -0
		 0.82040360957422054 0.57125039299078328 0.024716510786627056 0 -0.15304340874628516 0.17773347282019183 0.9721052040178535 -0
		 -6.9115203688474454 -3.6147653105046995 1.0220566629891117 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801929825545 -0.52562566535849164 0.23323929003481164 -0
		 0.53537162742211097 0.84425488725025144 0.024716510786627042 0 -0.20990504293822981 0.10464867543599525 0.9721052040178535 -0
		 -5.4326010176921917 -6.2006165117325418 1.0220566629891132 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862701361126 0.001203088118692175 0.23323929003481167 -0
		 -0.0071651765168071974 0.99966882233068455 0.024716510786627059 0 -0.23313231024988207 -0.025705996167453497 0.97210520401785372 -0
		 -1.6152689933561759 -8.4165599952487824 1.0220566629891152 1;
	setAttr ".gm" -type "matrix" 0.15837777301350067 0.00033604978785740502 0.019955156822722718 0
		 -0.0049405971660277824 2.3284668069611176 -6.3113361338737083e-20 0 -0.019955111902441109 -4.2341238886560659e-05 0.15837812953238176 0
		 1.3355121684236715 6.7757255861608829 -0.74918741214069884 1;
	setAttr -s 6 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 6 ".lw";
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
	setAttr -s 6 ".ifcl";
createNode skinCluster -n "skinCluster12";
	rename -uid "A2B46116-194A-F311-F52D-299D0AD9ED1A";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		5 21 0.03778482087336827 22 0.22121523847700689 23 0.38814464189997533 
		24 0.29041351776471092 25 0.062441780984938598
		5 22 0.036685538327593616 23 0.28512059974550297 24 0.35571319418104508 
		25 0.27332466090760854 26 0.049156006838249618
		5 22 0.055681178554450206 23 0.44386188719817687 24 0.43547864697210048 
		25 0.05766123699670013 26 0.0073170502785723408
		5 23 0.053727259467672553 24 0.37288961161607082 25 0.41322292519815945 
		26 0.14682103635420382 27 0.013339167363893355
		5 22 0.097155878614671537 23 0.37146201389539235 24 0.37146201389539257 
		25 0.1291934607076389 57 0.030726632886904484
		5 22 0.026241929381676521 23 0.33355242266113616 24 0.40099622002336216 
		25 0.21452690130336882 26 0.024682526630456281
		5 23 0.021795920748227376 24 0.23739066351194668 25 0.48043599475664428 
		26 0.2467969358921912 27 0.013580485090990545
		5 22 0.0057537301559589292 23 0.133201785682698 24 0.47444323188413717 
		25 0.36697826383631643 26 0.01962298844088934
		5 22 0.0079181568335300774 23 0.48598738354687437 24 0.4859873835468746 
		25 0.018704531049527441 26 0.0014025450231933967
		5 23 0.0029354693588793139 24 0.032074972823873775 25 0.48703832911402173 
		26 0.46792979278346647 27 0.010021435919758574
		5 22 0.00063455919581481492 23 0.016740128535878317 24 0.49210586617363733 
		25 0.483558720513804 26 0.0069607255808655528
		5 22 0.017033728446046607 23 0.47118256647034779 24 0.47118256647034756 
		25 0.037326430345060821 26 0.0032747082681973175;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 -0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 -0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 -0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 -0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 -0 0.210011846539538 0.045642596473303459 -0.97663287764657492 -0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 -0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 -0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 -0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 -0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 -0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 -0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 -0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 -0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 -0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 -0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 -0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 -0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 -0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 -0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 -0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 -0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 -0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 -0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 -0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 -0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 -0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 -0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 -0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 -0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 -0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 -0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 -0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 -0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 -0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 -0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 -0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 -0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 -0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 -0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 -0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 -0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 -0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 -0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 -0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 -0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 -0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 -0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 -0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 -0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 -0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 -0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 -0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 -0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 -0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 -0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 -0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 -0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 -0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 -0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 -0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 -0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 -0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 -0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 -0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 -0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 -0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 -0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 -0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 -0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924785605262508 0.69647275897298966 0.6375904212684681 -0
		 0.89339606825899753 0.44836933267261586 -0.028432494404777593 0 -0.3056784495251747 0.56025943769584596 -0.76985066601817032 0
		 -3.5395339858223207 -2.4005302806614877 -1.4268589866057155 1;
	setAttr ".pm[32]" -type "matrix" -0.27889487958311754 0.70693339335951921 0.6499714020597479 -0
		 0.8885321944844633 0.44672740782126169 -0.10461913049686476 0 -0.36431879653257332 0.54834277642227769 -0.75272306596687089 0
		 -4.0483566124710331 -2.4178888719510168 -1.0785179654948196 1;
	setAttr ".pm[33]" -type "matrix" -0.23031896582471262 0.65282056315424064 0.72164983635030056 -0
		 0.83303853409609785 0.51558677430374356 -0.20054196287581566 0 -0.50299102844132282 0.55497350430992753 -0.66257409760833519 0
		 -4.4246285576916371 -2.6889499794631448 -0.5852216413243152 1;
	setAttr ".pm[34]" -type "matrix" -0.43594205479935338 0.59749644125918966 0.67301747937176337 -0
		 0.70084734239732094 0.69452627708497583 -0.16262303985934928 0 -0.56459501194389816 0.40078828965064228 -0.72152700529292924 0
		 -3.9504407340550634 -3.7708443804080867 -0.80903142183858512 1;
	setAttr ".pm[35]" -type "matrix" -0.80828666278327432 0.25069034959079767 0.53275418289181176 -0
		 0.21819681986783124 0.96794042106865841 -0.12442463205086605 0 -0.54686636262092747 0.015674497869846715 -0.83707316977088997 0
		 -1.2782210087401189 -5.4701710515155018 -1.0637098088558508 1;
	setAttr ".pm[36]" -type "matrix" -0.82004746228088032 -0.20903382553540736 0.53275418289181176 -0
		 -0.32022389661991219 0.93913532942412847 -0.12442463205086607 0 -0.47431931822375606 -0.27263472414471851 -0.83707316977088997 0
		 1.4741587162838448 -5.4790258078135139 -1.0637098088558503 1;
	setAttr ".pm[37]" -type "matrix" -0.68115617672397932 -0.58224855063069902 0.44386133893280488 -0
		 -0.71347233192191795 0.66391571242427372 -0.22399365700409787 0 -0.16426653491405938 -0.46925744755370707 -0.86764851951853672 0
		 3.7155105234907788 -4.253503924807462 -0.56138912952764053 1;
	setAttr ".pm[38]" -type "matrix" -0.50408144903854235 -0.80314783289629765 0.31757747283015064 0
		 -0.83807468363902604 0.36604708025856952 -0.40452485668685773 0 0.20864495531536334 -0.47006711600383 -0.85761540860300089 -0
		 4.7675519738061451 -2.6983875616478876 0.40050578146566135 1;
	setAttr ".pm[39]" -type "matrix" -0.13887806920042897 -0.97362021202337345 0.18104299112289102 0
		 -0.8442227548036797 0.02082911068982167 -0.53558761040520475 0 0.51768795829809233 -0.22722198592441178 -0.82484504420267912 -0
		 5.131402903469473 -0.54383199739958166 1.1062769262428087 1;
	setAttr ".pm[40]" -type "matrix" -0.44544499269810256 0.31790426804465338 -0.83696812056325143 0
		 -0.53604557662551799 0.65406162136325452 0.53372140226890541 0 0.71710103769301836 0.68639658494099753 -0.12093729747655504 -0
		 3.5487087028311417 -1.8700671363062362 -2.7925193128695747 1;
	setAttr ".pm[41]" -type "matrix" -0.052113655857806661 -0.12229876297960356 -0.99112419980888034 0
		 -0.12985132476009162 0.98487688829382625 -0.11470025441436067 0 0.99016301704880072 0.12272134076161549 -0.067206191608274221 -0
		 1.5808752410933884 -4.2107979689235933 0.024886527691079015 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923738209327 0.15316129470954071 0.84469936689614911 -0
		 -0.35222855576255746 0.93486282127867992 0.044345799082775778 0 -0.78288597326640097 -0.32027039075406954 0.53340081521212113 -0
		 1.1996855435952647 -4.1723182522672628 0.61489411505153346 1;
	setAttr ".pm[43]" -type "matrix" -0.73333548538209525 0.11850973006940393 0.66945837044455869 -0
		 0.055614852963414348 0.99184695892173957 -0.11465861593249307 0 -0.6775884104744303 -0.04685140293069355 -0.73394747225817225 0
		 -1.618463936552093 -4.150962652048455 0.6167161736380613 1;
	setAttr ".pm[44]" -type "matrix" 0.7178746917702189 0.19100109203229435 -0.6694583704445588 -0
		 -0.15418153848813718 0.98136713567445111 0.11465861593249313 0 0.67888436431047972 0.020907602937564346 0.73394747225817203 -0
		 2.9878104727393069 -3.9063461234579986 -0.61671617363806241 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497183340853 0.012292740621888149 -0.5042589919324536 -0
		 0.11820591039161055 0.96693328393588907 0.22598094425293511 -0 0.49036272815663917 -0.25473302287877969 0.83345994618206876 -0
		 -0.31526849647608046 -4.1175003638789578 -0.8411184408836696 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581191388532 0.14817028233168023 -0.5042589919324536 -0
		 -0.035601728897875065 0.97348093444814543 0.22598094425293513 0 0.52437017498182203 -0.17429984997043529 0.83345994618206876 -0
		 -0.54266112802664046 -4.2561403950661756 -0.84111844088366872 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227101337457 0.54496457952035493 -0.34985229130234941 -0
		 0.62286062490543848 0.76461427634874546 -0.16555860094266003 -0 0.17727848319440126 -0.34406193551726616 -0.92205950129284275 -0
		 -2.7951587350455624 -5.0172514607060918 -0.72188543037675135 1;
	setAttr ".pm[48]" -type "matrix" -0.63784894397210701 0.68611376530730284 -0.34985229130234935 -0
		 0.76296721301434756 0.62487709313034345 -0.16555860094265998 -0 0.10502264774222436 -0.37252720643841247 -0.92205950129284275 -0
		 -4.1298506854570984 -4.2789178555654228 -0.72188543037675157 1;
	setAttr ".pm[49]" -type "matrix" -0.43115001004128573 0.83169287787734247 -0.34985229130234941 -0
		 0.90227887362996351 0.39809946477601987 -0.16555860094266009 -0 0.0015821006427817763 -0.3870449237919949 -0.92205950129284286 -0
		 -5.4553896063024494 -2.9266921950579188 -0.72188543037675157 1;
	setAttr ".pm[50]" -type "matrix" -0.28599063606040587 0.89208336513818109 -0.34985229130234941 -0
		 0.95614812680294525 0.24160113672151495 -0.16555860094266009 0 -0.063167362593223475 -0.38185882257532194 -0.92205950129284286 0
		 -6.1336373055839015 -1.9280906660343249 -0.72188543037675168 1;
	setAttr ".pm[51]" -type "matrix" -0.10207338912265439 0.93122736080052537 -0.34985229130234935 -0
		 0.98513663428464682 0.045783855716037589 -0.16555860094266003 0 -0.138155112186749 -0.3615514362469906 -0.92205950129284264 0
		 -6.7508444217482166 -0.59181550033660835 -0.72188543037675135 1;
	setAttr ".pm[52]" -type "matrix" 0.23188992655137963 -0.90765105422430503 0.34985229130234929 -0
		 0.93832475256335257 0.30354078536636891 0.16555860094266009 0 -0.25646387794564546 0.28988369285745602 0.92205950129284264 -0
		 -6.7512693582381997 -1.903683870567642 0.72188543037675112 1;
	setAttr ".pm[53]" -type "matrix" 0.93511716042662907 -0.056207388714783812 0.34985229130234935 -0
		 -0.0026622692766375008 0.9861963607599693 0.16555860094266006 0 -0.35432867312417338 -0.15574808980420141 0.92205950129284275 -0
		 -0.34546931532217812 -7.3149787736033653 0.72188543037675168 1;
	setAttr ".pm[54]" -type "matrix" -0.39955119757237006 0.88654287775749618 -0.23323929003481172 -0
		 0.9138291243102904 0.40534605666864759 -0.024716510786627031 -0 0.072630379874905088 -0.22301636765187308 -0.9721052040178535 -0
		 -4.5278240663455414 -3.3954815719514109 -1.022056662989109 1;
	setAttr ".pm[55]" -type "matrix" -0.32480993554795584 0.91656856773150952 -0.23323929003481172 -0
		 0.94424079275899342 0.32832669611897614 -0.024716510786627038 -0 0.053924308611245898 -0.22826222040059005 -0.97210520401785339 -0
		 -5.2848407562928594 -2.9682891152938393 -1.022056662989109 1;
	setAttr ".pm[56]" -type "matrix" -0.20311030386251164 0.95097089232475285 -0.23323929003481175 -0
		 0.97886549333733408 0.20300600988146297 -0.024716510786627035 -0 0.02384429529963901 -0.23333007072186832 -0.97210520401785372 -0
		 -6.0531111964851538 -2.201331097817814 -1.0220566629891092 1;
	setAttr ".pm[57]" -type "matrix" 0.055141316109679081 -0.97085471046998095 0.23323929003481164 -0
		 0.99773223295074775 0.062605793866458606 0.024716510786627031 0 -0.038598271837057808 0.23134745672386586 0.97210520401785361 -0
		 -6.8860135218368184 0.39760004128751308 1.0220566629891104 1;
	setAttr ".pm[58]" -type "matrix" 0.28391908849808628 -0.93004805508665722 0.23323929003481161 -0
		 0.95438699314136222 0.29754757840910812 0.024716510786627038 0 -0.092387328725348924 0.21558305548535747 0.97210520401785361 -0
		 -7.2628020126628208 -1.3645944917354262 1.0220566629891112 1;
	setAttr ".pm[59]" -type "matrix" 0.55092252852547929 -0.8013013173252308 0.23323929003481161 -0
		 0.82040360957422054 0.57125039299078328 0.024716510786627056 0 -0.15304340874628516 0.17773347282019183 0.9721052040178535 -0
		 -6.9115203688474454 -3.6147653105046995 1.0220566629891117 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801929825545 -0.52562566535849164 0.23323929003481164 -0
		 0.53537162742211097 0.84425488725025144 0.024716510786627042 0 -0.20990504293822981 0.10464867543599525 0.9721052040178535 -0
		 -5.4326010176921917 -6.2006165117325418 1.0220566629891132 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862701361126 0.001203088118692175 0.23323929003481167 -0
		 -0.0071651765168071974 0.99966882233068455 0.024716510786627059 0 -0.23313231024988207 -0.025705996167453497 0.97210520401785372 -0
		 -1.6152689933561759 -8.4165599952487824 1.0220566629891152 1;
	setAttr ".gm" -type "matrix" 0.15837777301350067 0.00033604978785740502 0.019955156822722718 0
		 -0.0049405971660277824 2.3284668069611176 -6.3113361338737083e-20 0 -0.019955111902441109 -4.2341238886560659e-05 0.15837812953238176 0
		 1.3355121684236715 6.7757255861608829 -0.74918741214069884 1;
	setAttr -s 8 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 8 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 8 ".ifcl";
createNode skinCluster -n "skinCluster13";
	rename -uid "749BC8BA-8B48-592F-36B6-98A9376786F0";
	setAttr -s 30 ".wl";
	setAttr ".wl[0:29].w"
		5 25 0.00010488413247692507 26 0.00078477883223708087 27 0.49748077020009263 
		28 0.50023735996723029 29 0.0013922068679631213
		5 25 0.00016675125101308144 26 0.001242658301831962 27 0.49827620544633722 
		28 0.49827620544633722 29 0.0020381795544806153
		5 26 7.1625105651101602e-05 27 0.00081131927297470091 28 0.4724196897541228 
		29 0.52610760561313297 30 0.00058976025411851078
		5 26 0.0099114935503347937 27 0.057611862113589478 28 0.42254063005977982 
		29 0.46406057848764676 30 0.045875435788649103
		5 25 0.00027326401105811374 26 0.0020207095130131475 27 0.49725462857758146 
		28 0.49725462857758146 29 0.0031967693207658305
		5 26 0.020575768252439612 27 0.10055785922108201 28 0.40345062425598854 
		29 0.41210452018414251 30 0.063311228086347329
		5 26 0.0079956299617412081 27 0.153224518523702 28 0.63351923743968297 
		29 0.20040736269433357 30 0.0048532513805402758
		5 26 0.00038924438540829319 27 0.021421384315691211 28 0.94036410633663947 
		29 0.037573299167040768 30 0.00025196579522032063
		5 26 0.0027993585378839458 27 0.07392029686018238 28 0.76590200371415262 
		29 0.15540232381212832 30 0.001976017075652787
		5 25 0.00016835637030211483 26 0.0012606686868098264 27 0.49826617275616208 
		28 0.49826617275616197 29 0.0020386294305639913
		5 26 0.0012593153883201055 27 0.054376435556229584 28 0.85896860555228216 
		29 0.084599169871617586 30 0.0007964736315507426
		5 26 0.001327762613970886 27 0.012640896992819251 28 0.4829093370670321 
		29 0.49438072807221745 30 0.0087412752539603716
		5 25 9.7666306686347416e-05 26 0.0007356000107153547 27 0.49895402617078549 
		28 0.49895402617078538 29 0.0012586813410274515
		5 26 0.00028193778459457698 27 0.014739835225820012 28 0.95372086936977307 
		29 0.031067781735777726 30 0.00018957588403461755
		5 26 0.00022001165950314214 27 0.0023157033991851091 28 0.46617736656046599 
		29 0.52944925454105862 30 0.0018376638397871391
		5 26 0.020008323074565005 27 0.04829129379695965 28 0.17595867982443128 
		29 0.41668591196681676 30 0.3390557913372273
		5 26 0.00081240318783048853 27 0.0034224542117242758 28 0.049025224081131837 
		29 0.73335267235812174 30 0.21338724616119176
		5 26 0.00013452569730284017 27 0.00066881778054036915 28 0.017347136689168929 
		29 0.93587391369387585 30 0.045975606139112002
		5 26 0.0034063083535415908 27 0.013973643503415383 28 0.14265467431727719 
		29 0.57642581225531109 30 0.26353956157045488
		5 26 0.033723804614366415 27 0.074358862135688403 28 0.21336749575779676 
		29 0.37519367383575963 30 0.3033561636563889
		5 26 0.0013107005914552304 27 0.0032351761883930887 28 0.016209087154394331 
		29 0.48962251803287871 30 0.48962251803287871
		5 26 4.4746952132601279e-05 27 0.00013174767664731062 28 0.00093809000741387608 
		29 0.49944270768190313 30 0.49944270768190313
		5 26 1.8066129888635579e-05 27 5.5642196463353439e-05 28 0.00043228634318224373 
		29 0.49974700266523292 30 0.49974700266523292
		5 26 0.0004629263026056549 27 0.0013390370830535139 28 0.0086858887401395912 
		29 0.49475607393710064 30 0.49475607393710064
		5 10 0.0061409987923190992 27 0.0099502357233874437 28 0.041883037197998109 
		29 0.47101286414314764 30 0.47101286414314764
		5 10 0.0077338401548421839 11 0.0077338401548421839 28 0.021618360245645781 
		29 0.48145697972233492 30 0.48145697972233492
		5 10 0.0095720073874541768 11 0.0095720073874541768 28 0.02357291317020338 
		29 0.47864153602744403 30 0.47864153602744425
		5 10 0.0099529696918026038 11 0.0099529696918026038 28 0.023958587746801929 
		29 0.4780677364347965 30 0.47806773643479639
		5 10 0.010211756162102665 11 0.010211756162102665 28 0.024066324523582264 
		29 0.47775508157610608 30 0.4777550815761063
		5 10 0.0099641123276889287 11 0.0099641123276889287 28 0.023720099632288567 
		29 0.4781758378561668 30 0.4781758378561668;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 -0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 -0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 -0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 -0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 -0 0.210011846539538 0.045642596473303459 -0.97663287764657492 -0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 -0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 -0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 -0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 -0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 -0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 -0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 -0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 -0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 -0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 -0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 -0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 -0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 -0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 -0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 -0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 -0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 -0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 -0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 -0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 -0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 -0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 -0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 -0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 -0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 -0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 -0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 -0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 -0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 -0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 -0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 -0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 -0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 -0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 -0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 -0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 -0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 -0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 -0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 -0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 -0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 -0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 -0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 -0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 -0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 -0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 -0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 -0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 -0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 -0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 -0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 -0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 -0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 -0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 -0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 -0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 -0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 -0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 -0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 -0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 -0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 -0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 -0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 -0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 -0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924785605262508 0.69647275897298966 0.6375904212684681 -0
		 0.89339606825899753 0.44836933267261586 -0.028432494404777593 0 -0.3056784495251747 0.56025943769584596 -0.76985066601817032 0
		 -3.5395339858223207 -2.4005302806614877 -1.4268589866057155 1;
	setAttr ".pm[32]" -type "matrix" -0.27889487958311754 0.70693339335951921 0.6499714020597479 -0
		 0.8885321944844633 0.44672740782126169 -0.10461913049686476 0 -0.36431879653257332 0.54834277642227769 -0.75272306596687089 0
		 -4.0483566124710331 -2.4178888719510168 -1.0785179654948196 1;
	setAttr ".pm[33]" -type "matrix" -0.23031896582471262 0.65282056315424064 0.72164983635030056 -0
		 0.83303853409609785 0.51558677430374356 -0.20054196287581566 0 -0.50299102844132282 0.55497350430992753 -0.66257409760833519 0
		 -4.4246285576916371 -2.6889499794631448 -0.5852216413243152 1;
	setAttr ".pm[34]" -type "matrix" -0.43594205479935338 0.59749644125918966 0.67301747937176337 -0
		 0.70084734239732094 0.69452627708497583 -0.16262303985934928 0 -0.56459501194389816 0.40078828965064228 -0.72152700529292924 0
		 -3.9504407340550634 -3.7708443804080867 -0.80903142183858512 1;
	setAttr ".pm[35]" -type "matrix" -0.80828666278327432 0.25069034959079767 0.53275418289181176 -0
		 0.21819681986783124 0.96794042106865841 -0.12442463205086605 0 -0.54686636262092747 0.015674497869846715 -0.83707316977088997 0
		 -1.2782210087401189 -5.4701710515155018 -1.0637098088558508 1;
	setAttr ".pm[36]" -type "matrix" -0.82004746228088032 -0.20903382553540736 0.53275418289181176 -0
		 -0.32022389661991219 0.93913532942412847 -0.12442463205086607 0 -0.47431931822375606 -0.27263472414471851 -0.83707316977088997 0
		 1.4741587162838448 -5.4790258078135139 -1.0637098088558503 1;
	setAttr ".pm[37]" -type "matrix" -0.68115617672397932 -0.58224855063069902 0.44386133893280488 -0
		 -0.71347233192191795 0.66391571242427372 -0.22399365700409787 0 -0.16426653491405938 -0.46925744755370707 -0.86764851951853672 0
		 3.7155105234907788 -4.253503924807462 -0.56138912952764053 1;
	setAttr ".pm[38]" -type "matrix" -0.50408144903854235 -0.80314783289629765 0.31757747283015064 0
		 -0.83807468363902604 0.36604708025856952 -0.40452485668685773 0 0.20864495531536334 -0.47006711600383 -0.85761540860300089 -0
		 4.7675519738061451 -2.6983875616478876 0.40050578146566135 1;
	setAttr ".pm[39]" -type "matrix" -0.13887806920042897 -0.97362021202337345 0.18104299112289102 0
		 -0.8442227548036797 0.02082911068982167 -0.53558761040520475 0 0.51768795829809233 -0.22722198592441178 -0.82484504420267912 -0
		 5.131402903469473 -0.54383199739958166 1.1062769262428087 1;
	setAttr ".pm[40]" -type "matrix" -0.44544499269810256 0.31790426804465338 -0.83696812056325143 0
		 -0.53604557662551799 0.65406162136325452 0.53372140226890541 0 0.71710103769301836 0.68639658494099753 -0.12093729747655504 -0
		 3.5487087028311417 -1.8700671363062362 -2.7925193128695747 1;
	setAttr ".pm[41]" -type "matrix" -0.052113655857806661 -0.12229876297960356 -0.99112419980888034 0
		 -0.12985132476009162 0.98487688829382625 -0.11470025441436067 0 0.99016301704880072 0.12272134076161549 -0.067206191608274221 -0
		 1.5808752410933884 -4.2107979689235933 0.024886527691079015 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923738209327 0.15316129470954071 0.84469936689614911 -0
		 -0.35222855576255746 0.93486282127867992 0.044345799082775778 0 -0.78288597326640097 -0.32027039075406954 0.53340081521212113 -0
		 1.1996855435952647 -4.1723182522672628 0.61489411505153346 1;
	setAttr ".pm[43]" -type "matrix" -0.73333548538209525 0.11850973006940393 0.66945837044455869 -0
		 0.055614852963414348 0.99184695892173957 -0.11465861593249307 0 -0.6775884104744303 -0.04685140293069355 -0.73394747225817225 0
		 -1.618463936552093 -4.150962652048455 0.6167161736380613 1;
	setAttr ".pm[44]" -type "matrix" 0.7178746917702189 0.19100109203229435 -0.6694583704445588 -0
		 -0.15418153848813718 0.98136713567445111 0.11465861593249313 0 0.67888436431047972 0.020907602937564346 0.73394747225817203 -0
		 2.9878104727393069 -3.9063461234579986 -0.61671617363806241 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497183340853 0.012292740621888149 -0.5042589919324536 -0
		 0.11820591039161055 0.96693328393588907 0.22598094425293511 -0 0.49036272815663917 -0.25473302287877969 0.83345994618206876 -0
		 -0.31526849647608046 -4.1175003638789578 -0.8411184408836696 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581191388532 0.14817028233168023 -0.5042589919324536 -0
		 -0.035601728897875065 0.97348093444814543 0.22598094425293513 0 0.52437017498182203 -0.17429984997043529 0.83345994618206876 -0
		 -0.54266112802664046 -4.2561403950661756 -0.84111844088366872 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227101337457 0.54496457952035493 -0.34985229130234941 -0
		 0.62286062490543848 0.76461427634874546 -0.16555860094266003 -0 0.17727848319440126 -0.34406193551726616 -0.92205950129284275 -0
		 -2.7951587350455624 -5.0172514607060918 -0.72188543037675135 1;
	setAttr ".pm[48]" -type "matrix" -0.63784894397210701 0.68611376530730284 -0.34985229130234935 -0
		 0.76296721301434756 0.62487709313034345 -0.16555860094265998 -0 0.10502264774222436 -0.37252720643841247 -0.92205950129284275 -0
		 -4.1298506854570984 -4.2789178555654228 -0.72188543037675157 1;
	setAttr ".pm[49]" -type "matrix" -0.43115001004128573 0.83169287787734247 -0.34985229130234941 -0
		 0.90227887362996351 0.39809946477601987 -0.16555860094266009 -0 0.0015821006427817763 -0.3870449237919949 -0.92205950129284286 -0
		 -5.4553896063024494 -2.9266921950579188 -0.72188543037675157 1;
	setAttr ".pm[50]" -type "matrix" -0.28599063606040587 0.89208336513818109 -0.34985229130234941 -0
		 0.95614812680294525 0.24160113672151495 -0.16555860094266009 0 -0.063167362593223475 -0.38185882257532194 -0.92205950129284286 0
		 -6.1336373055839015 -1.9280906660343249 -0.72188543037675168 1;
	setAttr ".pm[51]" -type "matrix" -0.10207338912265439 0.93122736080052537 -0.34985229130234935 -0
		 0.98513663428464682 0.045783855716037589 -0.16555860094266003 0 -0.138155112186749 -0.3615514362469906 -0.92205950129284264 0
		 -6.7508444217482166 -0.59181550033660835 -0.72188543037675135 1;
	setAttr ".pm[52]" -type "matrix" 0.23188992655137963 -0.90765105422430503 0.34985229130234929 -0
		 0.93832475256335257 0.30354078536636891 0.16555860094266009 0 -0.25646387794564546 0.28988369285745602 0.92205950129284264 -0
		 -6.7512693582381997 -1.903683870567642 0.72188543037675112 1;
	setAttr ".pm[53]" -type "matrix" 0.93511716042662907 -0.056207388714783812 0.34985229130234935 -0
		 -0.0026622692766375008 0.9861963607599693 0.16555860094266006 0 -0.35432867312417338 -0.15574808980420141 0.92205950129284275 -0
		 -0.34546931532217812 -7.3149787736033653 0.72188543037675168 1;
	setAttr ".pm[54]" -type "matrix" -0.39955119757237006 0.88654287775749618 -0.23323929003481172 -0
		 0.9138291243102904 0.40534605666864759 -0.024716510786627031 -0 0.072630379874905088 -0.22301636765187308 -0.9721052040178535 -0
		 -4.5278240663455414 -3.3954815719514109 -1.022056662989109 1;
	setAttr ".pm[55]" -type "matrix" -0.32480993554795584 0.91656856773150952 -0.23323929003481172 -0
		 0.94424079275899342 0.32832669611897614 -0.024716510786627038 -0 0.053924308611245898 -0.22826222040059005 -0.97210520401785339 -0
		 -5.2848407562928594 -2.9682891152938393 -1.022056662989109 1;
	setAttr ".pm[56]" -type "matrix" -0.20311030386251164 0.95097089232475285 -0.23323929003481175 -0
		 0.97886549333733408 0.20300600988146297 -0.024716510786627035 -0 0.02384429529963901 -0.23333007072186832 -0.97210520401785372 -0
		 -6.0531111964851538 -2.201331097817814 -1.0220566629891092 1;
	setAttr ".pm[57]" -type "matrix" 0.055141316109679081 -0.97085471046998095 0.23323929003481164 -0
		 0.99773223295074775 0.062605793866458606 0.024716510786627031 0 -0.038598271837057808 0.23134745672386586 0.97210520401785361 -0
		 -6.8860135218368184 0.39760004128751308 1.0220566629891104 1;
	setAttr ".pm[58]" -type "matrix" 0.28391908849808628 -0.93004805508665722 0.23323929003481161 -0
		 0.95438699314136222 0.29754757840910812 0.024716510786627038 0 -0.092387328725348924 0.21558305548535747 0.97210520401785361 -0
		 -7.2628020126628208 -1.3645944917354262 1.0220566629891112 1;
	setAttr ".pm[59]" -type "matrix" 0.55092252852547929 -0.8013013173252308 0.23323929003481161 -0
		 0.82040360957422054 0.57125039299078328 0.024716510786627056 0 -0.15304340874628516 0.17773347282019183 0.9721052040178535 -0
		 -6.9115203688474454 -3.6147653105046995 1.0220566629891117 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801929825545 -0.52562566535849164 0.23323929003481164 -0
		 0.53537162742211097 0.84425488725025144 0.024716510786627042 0 -0.20990504293822981 0.10464867543599525 0.9721052040178535 -0
		 -5.4326010176921917 -6.2006165117325418 1.0220566629891132 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862701361126 0.001203088118692175 0.23323929003481167 -0
		 -0.0071651765168071974 0.99966882233068455 0.024716510786627059 0 -0.23313231024988207 -0.025705996167453497 0.97210520401785372 -0
		 -1.6152689933561759 -8.4165599952487824 1.0220566629891152 1;
	setAttr ".gm" -type "matrix" 0.15837777301350067 0.00033604978785740502 0.019955156822722718 0
		 -0.0049405971660277824 2.3284668069611176 -6.3113361338737083e-20 0 -0.019955111902441109 -4.2341238886560659e-05 0.15837812953238176 0
		 1.3355121684236719 6.7757255861608829 -0.74918741214069939 1;
	setAttr -s 8 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 8 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 8 ".ifcl";
createNode skinCluster -n "skinCluster14";
	rename -uid "6C0399CC-8B49-5608-1F96-578782CA529D";
	setAttr -s 30 ".wl";
	setAttr ".wl[0:29].w"
		5 56 0.0003960382877017855 57 0.0069204086550298631 58 0.49438279337897484 
		59 0.49438279337897484 60 0.0039179662993186135
		5 56 0.00050101657484919642 57 0.00829948436235531 58 0.49301197765075855 
		59 0.49301197765075844 60 0.0051755437612785319
		5 57 0.00055362404978528458 58 0.0056439754061950462 59 0.4948142817184713 
		60 0.49481428171847119 61 0.0041738371070772417
		5 57 0.0082069651980768588 58 0.05725599633760399 59 0.45448792581005776 
		60 0.43801398621861881 61 0.042035126435642667
		5 56 0.00057623853997516004 57 0.0098800911108308364 58 0.49213471835100947 
		59 0.49213471835100936 60 0.0052742336471752211
		5 57 0.010932239845148626 58 0.070310135422888012 59 0.44250870499807343 
		60 0.42421122116512711 61 0.052037698568762815
		5 57 0.0069632052609752207 58 0.13997662654607265 59 0.71032565723792873 
		60 0.13781061760563568 61 0.0049238933493878428
		5 57 0.003263143531634359 58 0.1044857038563346 59 0.81047868761106523 
		60 0.079793131971204315 61 0.0019793330297614917
		5 57 0.0052416575051549268 58 0.11756903337139145 59 0.74799650034259479 
		60 0.12536593998391027 61 0.0038268687969486457
		5 56 0.00046118749025278428 57 0.0078524538125361049 58 0.49355133692027725 
		59 0.49355133692027747 60 0.0045836848566563155
		5 57 0.003622759111098754 58 0.10780038664523274 59 0.79906326131427663 
		60 0.087248474458260797 61 0.0022651184711310508
		5 57 0.0016114462363986989 58 0.014817764531022168 59 0.48632142813110069 
		60 0.4860683663633254 61 0.011180994738153026
		5 56 0.00042774930847495841 57 0.0072916482870985554 58 0.4939726519933742 
		59 0.4939726519933742 60 0.004335298417678146
		5 57 0.0030480995915550132 58 0.095794839400035109 59 0.81923354529937809 
		60 0.079992720800596495 61 0.0019307949084353103
		5 57 0.0011023313841477238 58 0.010564630300953327 59 0.49019702569749285 
		60 0.4901943508281863 61 0.0079416617892197772
		5 57 0.014777666816801833 58 0.047931351666918587 59 0.23092325094675931 
		60 0.39531719992392494 61 0.31105053064559535
		5 57 0.0016391932821555653 58 0.0076779926831125568 59 0.16192052104200527 
		60 0.59276469873202953 61 0.23599759426069711
		5 57 0.00052860694623926765 58 0.0027977398423724327 59 0.12638011613590394 
		60 0.7572611380083798 61 0.11303239906710459
		5 57 0.0025351524981912566 58 0.011579508063322079 59 0.19903937986253584 
		60 0.53953332166551671 61 0.24731263791043406
		5 25 0.033725272750898191 58 0.051256494148044784 59 0.22324752831931913 
		60 0.38076115947797912 61 0.31100954530375879
		5 57 0.0013637213402427695 58 0.0041786961047488944 59 0.030634111625598422 
		60 0.48191173546470495 61 0.48191173546470495
		5 57 0.00021032419091154695 58 0.00072379283195908497 59 0.0078943640030424596 
		60 0.49558575948704359 61 0.49558575948704336
		5 57 7.6463055530245308e-05 58 0.00027240219737427164 59 0.0033967982294388567 
		60 0.49812716825882847 61 0.49812716825882825
		5 57 0.00029108254634442919 58 0.00099245057990867444 59 0.010399157839661886 
		60 0.49415865451704255 61 0.49415865451704255
		5 25 0.0035954762262546255 58 0.0052050175979146945 59 0.03445954700754425 
		60 0.47836997958414323 61 0.47836997958414323
		5 26 0.0033263125188609352 58 0.005470053258971457 59 0.02751807951358946 
		60 0.4818427773542891 61 0.4818427773542891
		5 26 0.003989403864201652 58 0.0060149750457351827 59 0.029478076388701729 
		60 0.4802587723506806 61 0.48025877235068082
		5 26 0.0041704379981749177 58 0.0061055883463211344 59 0.029839711559247993 
		60 0.47994213104812811 61 0.47994213104812788
		5 26 0.0042231059162188989 58 0.0060152778956842207 59 0.029469462039512073 
		60 0.48014607707429241 61 0.48014607707429241
		5 26 0.0041141388566447923 58 0.0057589994818983501 59 0.028527929062492626 
		60 0.48079946629948211 61 0.48079946629948211;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 -0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 -0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 -0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 -0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 -0 0.210011846539538 0.045642596473303459 -0.97663287764657492 -0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 -0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 -0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 -0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 -0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 -0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 -0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 -0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 -0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 -0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 -0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 -0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 -0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 -0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 -0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 -0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 -0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 -0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 -0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 -0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 -0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 -0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 -0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 -0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 -0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 -0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 -0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 -0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 -0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 -0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 -0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 -0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 -0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 -0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 -0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 -0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 -0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 -0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 -0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 -0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 -0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 -0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 -0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 -0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 -0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 -0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 -0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 -0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 -0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 -0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 -0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 -0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 -0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 -0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 -0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 -0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 -0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 -0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 -0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 -0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 -0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 -0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 -0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 -0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 -0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924785605262508 0.69647275897298966 0.6375904212684681 -0
		 0.89339606825899753 0.44836933267261586 -0.028432494404777593 0 -0.3056784495251747 0.56025943769584596 -0.76985066601817032 0
		 -3.5395339858223207 -2.4005302806614877 -1.4268589866057155 1;
	setAttr ".pm[32]" -type "matrix" -0.27889487958311754 0.70693339335951921 0.6499714020597479 -0
		 0.8885321944844633 0.44672740782126169 -0.10461913049686476 0 -0.36431879653257332 0.54834277642227769 -0.75272306596687089 0
		 -4.0483566124710331 -2.4178888719510168 -1.0785179654948196 1;
	setAttr ".pm[33]" -type "matrix" -0.23031896582471262 0.65282056315424064 0.72164983635030056 -0
		 0.83303853409609785 0.51558677430374356 -0.20054196287581566 0 -0.50299102844132282 0.55497350430992753 -0.66257409760833519 0
		 -4.4246285576916371 -2.6889499794631448 -0.5852216413243152 1;
	setAttr ".pm[34]" -type "matrix" -0.43594205479935338 0.59749644125918966 0.67301747937176337 -0
		 0.70084734239732094 0.69452627708497583 -0.16262303985934928 0 -0.56459501194389816 0.40078828965064228 -0.72152700529292924 0
		 -3.9504407340550634 -3.7708443804080867 -0.80903142183858512 1;
	setAttr ".pm[35]" -type "matrix" -0.80828666278327432 0.25069034959079767 0.53275418289181176 -0
		 0.21819681986783124 0.96794042106865841 -0.12442463205086605 0 -0.54686636262092747 0.015674497869846715 -0.83707316977088997 0
		 -1.2782210087401189 -5.4701710515155018 -1.0637098088558508 1;
	setAttr ".pm[36]" -type "matrix" -0.82004746228088032 -0.20903382553540736 0.53275418289181176 -0
		 -0.32022389661991219 0.93913532942412847 -0.12442463205086607 0 -0.47431931822375606 -0.27263472414471851 -0.83707316977088997 0
		 1.4741587162838448 -5.4790258078135139 -1.0637098088558503 1;
	setAttr ".pm[37]" -type "matrix" -0.68115617672397932 -0.58224855063069902 0.44386133893280488 -0
		 -0.71347233192191795 0.66391571242427372 -0.22399365700409787 0 -0.16426653491405938 -0.46925744755370707 -0.86764851951853672 0
		 3.7155105234907788 -4.253503924807462 -0.56138912952764053 1;
	setAttr ".pm[38]" -type "matrix" -0.50408144903854235 -0.80314783289629765 0.31757747283015064 0
		 -0.83807468363902604 0.36604708025856952 -0.40452485668685773 0 0.20864495531536334 -0.47006711600383 -0.85761540860300089 -0
		 4.7675519738061451 -2.6983875616478876 0.40050578146566135 1;
	setAttr ".pm[39]" -type "matrix" -0.13887806920042897 -0.97362021202337345 0.18104299112289102 0
		 -0.8442227548036797 0.02082911068982167 -0.53558761040520475 0 0.51768795829809233 -0.22722198592441178 -0.82484504420267912 -0
		 5.131402903469473 -0.54383199739958166 1.1062769262428087 1;
	setAttr ".pm[40]" -type "matrix" -0.44544499269810256 0.31790426804465338 -0.83696812056325143 0
		 -0.53604557662551799 0.65406162136325452 0.53372140226890541 0 0.71710103769301836 0.68639658494099753 -0.12093729747655504 -0
		 3.5487087028311417 -1.8700671363062362 -2.7925193128695747 1;
	setAttr ".pm[41]" -type "matrix" -0.052113655857806661 -0.12229876297960356 -0.99112419980888034 0
		 -0.12985132476009162 0.98487688829382625 -0.11470025441436067 0 0.99016301704880072 0.12272134076161549 -0.067206191608274221 -0
		 1.5808752410933884 -4.2107979689235933 0.024886527691079015 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923738209327 0.15316129470954071 0.84469936689614911 -0
		 -0.35222855576255746 0.93486282127867992 0.044345799082775778 0 -0.78288597326640097 -0.32027039075406954 0.53340081521212113 -0
		 1.1996855435952647 -4.1723182522672628 0.61489411505153346 1;
	setAttr ".pm[43]" -type "matrix" -0.73333548538209525 0.11850973006940393 0.66945837044455869 -0
		 0.055614852963414348 0.99184695892173957 -0.11465861593249307 0 -0.6775884104744303 -0.04685140293069355 -0.73394747225817225 0
		 -1.618463936552093 -4.150962652048455 0.6167161736380613 1;
	setAttr ".pm[44]" -type "matrix" 0.7178746917702189 0.19100109203229435 -0.6694583704445588 -0
		 -0.15418153848813718 0.98136713567445111 0.11465861593249313 0 0.67888436431047972 0.020907602937564346 0.73394747225817203 -0
		 2.9878104727393069 -3.9063461234579986 -0.61671617363806241 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497183340853 0.012292740621888149 -0.5042589919324536 -0
		 0.11820591039161055 0.96693328393588907 0.22598094425293511 -0 0.49036272815663917 -0.25473302287877969 0.83345994618206876 -0
		 -0.31526849647608046 -4.1175003638789578 -0.8411184408836696 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581191388532 0.14817028233168023 -0.5042589919324536 -0
		 -0.035601728897875065 0.97348093444814543 0.22598094425293513 0 0.52437017498182203 -0.17429984997043529 0.83345994618206876 -0
		 -0.54266112802664046 -4.2561403950661756 -0.84111844088366872 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227101337457 0.54496457952035493 -0.34985229130234941 -0
		 0.62286062490543848 0.76461427634874546 -0.16555860094266003 -0 0.17727848319440126 -0.34406193551726616 -0.92205950129284275 -0
		 -2.7951587350455624 -5.0172514607060918 -0.72188543037675135 1;
	setAttr ".pm[48]" -type "matrix" -0.63784894397210701 0.68611376530730284 -0.34985229130234935 -0
		 0.76296721301434756 0.62487709313034345 -0.16555860094265998 -0 0.10502264774222436 -0.37252720643841247 -0.92205950129284275 -0
		 -4.1298506854570984 -4.2789178555654228 -0.72188543037675157 1;
	setAttr ".pm[49]" -type "matrix" -0.43115001004128573 0.83169287787734247 -0.34985229130234941 -0
		 0.90227887362996351 0.39809946477601987 -0.16555860094266009 -0 0.0015821006427817763 -0.3870449237919949 -0.92205950129284286 -0
		 -5.4553896063024494 -2.9266921950579188 -0.72188543037675157 1;
	setAttr ".pm[50]" -type "matrix" -0.28599063606040587 0.89208336513818109 -0.34985229130234941 -0
		 0.95614812680294525 0.24160113672151495 -0.16555860094266009 0 -0.063167362593223475 -0.38185882257532194 -0.92205950129284286 0
		 -6.1336373055839015 -1.9280906660343249 -0.72188543037675168 1;
	setAttr ".pm[51]" -type "matrix" -0.10207338912265439 0.93122736080052537 -0.34985229130234935 -0
		 0.98513663428464682 0.045783855716037589 -0.16555860094266003 0 -0.138155112186749 -0.3615514362469906 -0.92205950129284264 0
		 -6.7508444217482166 -0.59181550033660835 -0.72188543037675135 1;
	setAttr ".pm[52]" -type "matrix" 0.23188992655137963 -0.90765105422430503 0.34985229130234929 -0
		 0.93832475256335257 0.30354078536636891 0.16555860094266009 0 -0.25646387794564546 0.28988369285745602 0.92205950129284264 -0
		 -6.7512693582381997 -1.903683870567642 0.72188543037675112 1;
	setAttr ".pm[53]" -type "matrix" 0.93511716042662907 -0.056207388714783812 0.34985229130234935 -0
		 -0.0026622692766375008 0.9861963607599693 0.16555860094266006 0 -0.35432867312417338 -0.15574808980420141 0.92205950129284275 -0
		 -0.34546931532217812 -7.3149787736033653 0.72188543037675168 1;
	setAttr ".pm[54]" -type "matrix" -0.39955119757237006 0.88654287775749618 -0.23323929003481172 -0
		 0.9138291243102904 0.40534605666864759 -0.024716510786627031 -0 0.072630379874905088 -0.22301636765187308 -0.9721052040178535 -0
		 -4.5278240663455414 -3.3954815719514109 -1.022056662989109 1;
	setAttr ".pm[55]" -type "matrix" -0.32480993554795584 0.91656856773150952 -0.23323929003481172 -0
		 0.94424079275899342 0.32832669611897614 -0.024716510786627038 -0 0.053924308611245898 -0.22826222040059005 -0.97210520401785339 -0
		 -5.2848407562928594 -2.9682891152938393 -1.022056662989109 1;
	setAttr ".pm[56]" -type "matrix" -0.20311030386251164 0.95097089232475285 -0.23323929003481175 -0
		 0.97886549333733408 0.20300600988146297 -0.024716510786627035 -0 0.02384429529963901 -0.23333007072186832 -0.97210520401785372 -0
		 -6.0531111964851538 -2.201331097817814 -1.0220566629891092 1;
	setAttr ".pm[57]" -type "matrix" 0.055141316109679081 -0.97085471046998095 0.23323929003481164 -0
		 0.99773223295074775 0.062605793866458606 0.024716510786627031 0 -0.038598271837057808 0.23134745672386586 0.97210520401785361 -0
		 -6.8860135218368184 0.39760004128751308 1.0220566629891104 1;
	setAttr ".pm[58]" -type "matrix" 0.28391908849808628 -0.93004805508665722 0.23323929003481161 -0
		 0.95438699314136222 0.29754757840910812 0.024716510786627038 0 -0.092387328725348924 0.21558305548535747 0.97210520401785361 -0
		 -7.2628020126628208 -1.3645944917354262 1.0220566629891112 1;
	setAttr ".pm[59]" -type "matrix" 0.55092252852547929 -0.8013013173252308 0.23323929003481161 -0
		 0.82040360957422054 0.57125039299078328 0.024716510786627056 0 -0.15304340874628516 0.17773347282019183 0.9721052040178535 -0
		 -6.9115203688474454 -3.6147653105046995 1.0220566629891117 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801929825545 -0.52562566535849164 0.23323929003481164 -0
		 0.53537162742211097 0.84425488725025144 0.024716510786627042 0 -0.20990504293822981 0.10464867543599525 0.9721052040178535 -0
		 -5.4326010176921917 -6.2006165117325418 1.0220566629891132 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862701361126 0.001203088118692175 0.23323929003481167 -0
		 -0.0071651765168071974 0.99966882233068455 0.024716510786627059 0 -0.23313231024988207 -0.025705996167453497 0.97210520401785372 -0
		 -1.6152689933561759 -8.4165599952487824 1.0220566629891152 1;
	setAttr ".gm" -type "matrix" -0.0064825443692293127 0.13452296029500724 0.0035911009450061721 0
		 -1.8910960065279039 -0.10512355111075777 0.52418953189573769 0 0.036073935570800304 -0.0017265463950238774 0.12979613416434232 0
		 1.4708110060887547 6.3662678336559191 -1.6422270724056163 1;
	setAttr -s 8 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 8 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 8 ".ifcl";
createNode skinCluster -n "skinCluster15";
	rename -uid "246583AE-7D4E-5DDE-0B60-B29313114413";
	setAttr -s 56 ".wl";
	setAttr ".wl[0:55].w"
		5 32 0.06333320101156989 33 0.38195370469304946 34 0.38207500702929154 
		35 0.087650828736300854 54 0.084987258529788209
		5 32 0.070031663543697484 33 0.37254547324153742 34 0.37628994190511705 
		35 0.099576312876269307 54 0.081556608433378738
		5 32 0.087814044454287601 33 0.41228164094263547 34 0.37445662707041866 
		35 0.070017324276526155 54 0.055430363256131994
		5 32 0.10083296613913648 33 0.53823678544064657 34 0.31133197232842225 
		35 0.026246934255257131 54 0.023351341836537424
		5 32 0.071306265385499029 33 0.73853862680533666 34 0.17691350324688418 
		35 0.0064065483008162475 54 0.0068350562614640118
		5 32 0.065055063662631557 33 0.68206840416830083 34 0.2366904120007291 
		35 0.0072469897699469245 54 0.0089391303983915819
		5 32 0.070202895953511632 33 0.48941994800058575 34 0.38902457892684639 
		35 0.022504575462751805 54 0.02884800165630454
		5 32 0.065175444350569905 33 0.41262258142085212 34 0.40779292317621846 
		35 0.052774787861542327 54 0.061634263190817051
		5 34 0.11292452641560169 35 0.062422795862700879 36 0.0058185462777100225 
		54 0.80919731746164614 55 0.0096368139823412788
		5 34 0.15958744916197382 35 0.24632873102215685 36 0.02210384383960225 
		54 0.56228685220698049 55 0.0096931237692866028
		5 34 0.17322482992078331 35 0.41840158415440015 36 0.042155025921517125 
		54 0.35604230527902159 55 0.010176254724277859
		5 34 0.1878250564634325 35 0.19670785798734489 36 0.033819267176501404 
		54 0.559510980235563 55 0.022136838137158169
		5 33 0.019939381824408554 34 0.21335472801272745 35 0.092811600557435356 
		54 0.64699923776404245 55 0.026895051841386252
		5 33 0.018080550891199431 34 0.19468877563142167 35 0.051511245041511 
		54 0.71163955225617848 55 0.02407987617968934
		5 33 0.010131739584909781 34 0.15574115550522463 35 0.033910931126968781 
		54 0.78285844930476189 55 0.017357724478134946
		5 33 0.0048158916700417062 34 0.12175073399304159 35 0.03257795842878547 
		54 0.82951886012433396 55 0.011336555783797176
		5 35 0.00089340753568770354 54 0.036748145689988833 55 0.82661757705955063 
		56 0.1341696887912647 57 0.0015711809235081811
		5 35 0.0022727556109685839 54 0.063320024738269254 55 0.7608428830813545 
		56 0.17094732850264177 57 0.0026170080667659514
		5 35 0.0040976285979192522 36 0.0040976285979192522 54 0.092534559632133223 
		55 0.70034543320070841 56 0.19892474997131981
		5 35 0.0040621762633910805 54 0.10591863898330525 55 0.67305813993140529 
		56 0.21242575583640369 57 0.0045352889854946661
		5 34 0.0028252030235195488 54 0.096824175345467819 55 0.68258444117618744 
		56 0.21342266673442306 57 0.0043435137204022737
		5 34 0.0019274299845447353 54 0.070813937225709764 55 0.72754201274442987 
		56 0.19642268644730432 57 0.0032939335980113728
		5 34 0.0010531779473718778 54 0.042795646861345168 55 0.79650091953416624 
		56 0.15765081582278137 57 0.0019994398343353812
		5 34 0.00066608179088341519 54 0.029064575258294114 55 0.84480021706314468 
		56 0.12415379806438161 57 0.001315327823296152
		5 55 0.0038823235505247855 56 0.4823604936390764 57 0.50898672931432154 
		58 0.0043482119306675528 59 0.00042224156540972768
		5 55 0.006112582009216546 56 0.49346754941222593 57 0.49362817906612905 
		58 0.0061595587366033459 59 0.00063213077582506051
		5 51 0.0012936380230169264 55 0.0084634893958369095 56 0.49122549259165971 
		57 0.49122549259165971 58 0.0077918873978268079
		5 54 0.00086614774636947908 55 0.0087251913849926872 56 0.49119894460882924 
		57 0.49119894460882924 58 0.0080107716509794803
		5 55 0.0064694831830107366 56 0.49318802752149676 57 0.49318802752149665 
		58 0.0064848430262341421 59 0.00066961874776186661
		5 55 0.0041291100574395913 56 0.48433294506605667 57 0.50648758570307595 
		58 0.0046011636644577155 59 0.00044919550896996762
		5 55 0.0030791293997372818 56 0.46908844222562507 57 0.5238737775535669 
		58 0.0036158783707635322 59 0.00034277245030733681
		5 56 0.00023327044718680391 57 0.0055408600631201548 58 0.57558744714586174 
		59 0.41717483990393656 60 0.0014635824398948033
		5 56 0.00030390066897767167 57 0.0060778620381453886 58 0.49995650986554702 
		59 0.49119579570208322 60 0.0024659317252466399
		5 56 0.00039604310585119261 57 0.0069204833292690971 58 0.49438273058084764 
		59 0.49438273058084764 60 0.0039180124031844366
		5 56 0.00050102150888112467 57 0.0082995572240946065 58 0.49301191522125903 
		59 0.49301191522125903 60 0.0051755908245062479
		5 56 0.00057624368161075898 57 0.0098801744588624726 58 0.49213465627393954 
		59 0.49213465627393976 60 0.005274269311647325
		5 56 0.00056810751373084203 57 0.01100380991624241 58 0.49835650874994092 
		59 0.4859409335214025 60 0.0041306402986834396
		5 56 0.00041082029329192552 57 0.0094882152692720087 58 0.56250384535565745 
		59 0.42521149901293909 60 0.0023856200688396403
		5 56 0.00024626080005643315 57 0.0063221134619962979 58 0.63596142473501283 
		59 0.35613759776450082 60 0.0013326032384336714
		5 57 0.00010814347932584231 58 0.0012156152214839887 59 0.56797024167812549 
		60 0.42977258152396203 61 0.00093341809710265435
		5 57 9.0582943745110442e-05 58 0.00090965017889410756 59 0.49827686790320813 
		60 0.499624220644516 61 0.0010986783296366941
		5 57 0.00012879621218114131 58 0.0011786122162215421 59 0.49500878252280733 
		60 0.5016891724525383 61 0.0019946365962518519
		5 57 0.00022600446961563381 58 0.0019811996908611564 59 0.49479905182968076 
		60 0.49935362414742646 61 0.0036401198624160676
		5 57 0.00036195140564202329 58 0.0032267776714366742 59 0.49565713681770823 
		60 0.4958759702041412 61 0.004878163901071873
		5 57 0.00046743735712947835 58 0.0044945668199071719 59 0.49522407434942967 
		60 0.49513152675735911 61 0.004682394716174587
		5 57 0.00039710903898750358 58 0.004300183889640069 59 0.54303442698298865 
		60 0.44926164262877349 61 0.0030066374596102764
		5 57 0.000199831487017111 58 0.0023472216764139813 59 0.62378333990702661 
		60 0.37227223809842763 61 0.0013973688311146946
		5 56 0.0015155514496068129 57 0.26825672991362531 58 0.71590523717637122 
		59 0.013871723835412903 60 0.00045075762498366138
		5 56 0.0010614675813582883 57 0.22244589681675536 58 0.76607564328516375 
		59 0.010098112521356954 60 0.00031887979536557158
		5 56 0.0020533330200405218 57 0.30575088257371363 58 0.67449917385504898 
		59 0.017106607121174493 60 0.00059000343002225258
		5 56 0.0041154536320570376 57 0.38786787032102837 58 0.57836694022624646 
		59 0.028540730042895732 60 0.0011090057777723527
		5 56 0.0058876681290758476 57 0.42244899467003261 58 0.53380902886689718 
		59 0.036336325029672871 60 0.0015179833043214668
		5 56 0.0051974616692609171 57 0.41313491432840127 58 0.54587978066325316 
		59 0.03440911983299922 60 0.0013787235060853367
		5 56 0.00321350302895184 57 0.36295788063611095 58 0.6079578304181239 
		59 0.024965788912026669 60 0.00090499700478662991
		5 51 0.0012668593942566644 55 0.0095617586100722081 56 0.49033256166020617 
		57 0.49033256166020606 58 0.0085062586752590163
		5 56 0.0062898165579263832 57 0.42877268978461591 58 0.52505622880421454 
		59 0.038268562157833245 60 0.001612702695410022;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 -0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 -0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 -0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 -0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 -0 0.210011846539538 0.045642596473303459 -0.97663287764657492 -0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 -0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 -0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 -0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 -0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 -0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 -0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 -0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 -0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 -0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 -0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 -0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 -0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 -0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 -0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 -0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 -0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 -0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 -0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 -0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 -0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 -0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 -0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 -0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 -0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 -0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 -0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 -0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 -0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 -0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 -0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 -0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 -0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 -0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 -0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 -0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 -0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 -0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 -0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 -0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 -0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 -0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 -0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 -0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 -0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 -0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 -0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 -0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 -0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 -0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 -0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 -0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 -0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 -0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 -0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 -0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 -0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 -0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 -0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 -0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 -0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 -0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 -0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 -0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 -0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924785605262508 0.69647275897298966 0.6375904212684681 -0
		 0.89339606825899753 0.44836933267261586 -0.028432494404777593 0 -0.3056784495251747 0.56025943769584596 -0.76985066601817032 0
		 -3.5395339858223207 -2.4005302806614877 -1.4268589866057155 1;
	setAttr ".pm[32]" -type "matrix" -0.27889487958311754 0.70693339335951921 0.6499714020597479 -0
		 0.8885321944844633 0.44672740782126169 -0.10461913049686476 0 -0.36431879653257332 0.54834277642227769 -0.75272306596687089 0
		 -4.0483566124710331 -2.4178888719510168 -1.0785179654948196 1;
	setAttr ".pm[33]" -type "matrix" -0.23031896582471262 0.65282056315424064 0.72164983635030056 -0
		 0.83303853409609785 0.51558677430374356 -0.20054196287581566 0 -0.50299102844132282 0.55497350430992753 -0.66257409760833519 0
		 -4.4246285576916371 -2.6889499794631448 -0.5852216413243152 1;
	setAttr ".pm[34]" -type "matrix" -0.43594205479935338 0.59749644125918966 0.67301747937176337 -0
		 0.70084734239732094 0.69452627708497583 -0.16262303985934928 0 -0.56459501194389816 0.40078828965064228 -0.72152700529292924 0
		 -3.9504407340550634 -3.7708443804080867 -0.80903142183858512 1;
	setAttr ".pm[35]" -type "matrix" -0.80828666278327432 0.25069034959079767 0.53275418289181176 -0
		 0.21819681986783124 0.96794042106865841 -0.12442463205086605 0 -0.54686636262092747 0.015674497869846715 -0.83707316977088997 0
		 -1.2782210087401189 -5.4701710515155018 -1.0637098088558508 1;
	setAttr ".pm[36]" -type "matrix" -0.82004746228088032 -0.20903382553540736 0.53275418289181176 -0
		 -0.32022389661991219 0.93913532942412847 -0.12442463205086607 0 -0.47431931822375606 -0.27263472414471851 -0.83707316977088997 0
		 1.4741587162838448 -5.4790258078135139 -1.0637098088558503 1;
	setAttr ".pm[37]" -type "matrix" -0.68115617672397932 -0.58224855063069902 0.44386133893280488 -0
		 -0.71347233192191795 0.66391571242427372 -0.22399365700409787 0 -0.16426653491405938 -0.46925744755370707 -0.86764851951853672 0
		 3.7155105234907788 -4.253503924807462 -0.56138912952764053 1;
	setAttr ".pm[38]" -type "matrix" -0.50408144903854235 -0.80314783289629765 0.31757747283015064 0
		 -0.83807468363902604 0.36604708025856952 -0.40452485668685773 0 0.20864495531536334 -0.47006711600383 -0.85761540860300089 -0
		 4.7675519738061451 -2.6983875616478876 0.40050578146566135 1;
	setAttr ".pm[39]" -type "matrix" -0.13887806920042897 -0.97362021202337345 0.18104299112289102 0
		 -0.8442227548036797 0.02082911068982167 -0.53558761040520475 0 0.51768795829809233 -0.22722198592441178 -0.82484504420267912 -0
		 5.131402903469473 -0.54383199739958166 1.1062769262428087 1;
	setAttr ".pm[40]" -type "matrix" -0.44544499269810256 0.31790426804465338 -0.83696812056325143 0
		 -0.53604557662551799 0.65406162136325452 0.53372140226890541 0 0.71710103769301836 0.68639658494099753 -0.12093729747655504 -0
		 3.5487087028311417 -1.8700671363062362 -2.7925193128695747 1;
	setAttr ".pm[41]" -type "matrix" -0.052113655857806661 -0.12229876297960356 -0.99112419980888034 0
		 -0.12985132476009162 0.98487688829382625 -0.11470025441436067 0 0.99016301704880072 0.12272134076161549 -0.067206191608274221 -0
		 1.5808752410933884 -4.2107979689235933 0.024886527691079015 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923738209327 0.15316129470954071 0.84469936689614911 -0
		 -0.35222855576255746 0.93486282127867992 0.044345799082775778 0 -0.78288597326640097 -0.32027039075406954 0.53340081521212113 -0
		 1.1996855435952647 -4.1723182522672628 0.61489411505153346 1;
	setAttr ".pm[43]" -type "matrix" -0.73333548538209525 0.11850973006940393 0.66945837044455869 -0
		 0.055614852963414348 0.99184695892173957 -0.11465861593249307 0 -0.6775884104744303 -0.04685140293069355 -0.73394747225817225 0
		 -1.618463936552093 -4.150962652048455 0.6167161736380613 1;
	setAttr ".pm[44]" -type "matrix" 0.7178746917702189 0.19100109203229435 -0.6694583704445588 -0
		 -0.15418153848813718 0.98136713567445111 0.11465861593249313 0 0.67888436431047972 0.020907602937564346 0.73394747225817203 -0
		 2.9878104727393069 -3.9063461234579986 -0.61671617363806241 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497183340853 0.012292740621888149 -0.5042589919324536 -0
		 0.11820591039161055 0.96693328393588907 0.22598094425293511 -0 0.49036272815663917 -0.25473302287877969 0.83345994618206876 -0
		 -0.31526849647608046 -4.1175003638789578 -0.8411184408836696 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581191388532 0.14817028233168023 -0.5042589919324536 -0
		 -0.035601728897875065 0.97348093444814543 0.22598094425293513 0 0.52437017498182203 -0.17429984997043529 0.83345994618206876 -0
		 -0.54266112802664046 -4.2561403950661756 -0.84111844088366872 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227101337457 0.54496457952035493 -0.34985229130234941 -0
		 0.62286062490543848 0.76461427634874546 -0.16555860094266003 -0 0.17727848319440126 -0.34406193551726616 -0.92205950129284275 -0
		 -2.7951587350455624 -5.0172514607060918 -0.72188543037675135 1;
	setAttr ".pm[48]" -type "matrix" -0.63784894397210701 0.68611376530730284 -0.34985229130234935 -0
		 0.76296721301434756 0.62487709313034345 -0.16555860094265998 -0 0.10502264774222436 -0.37252720643841247 -0.92205950129284275 -0
		 -4.1298506854570984 -4.2789178555654228 -0.72188543037675157 1;
	setAttr ".pm[49]" -type "matrix" -0.43115001004128573 0.83169287787734247 -0.34985229130234941 -0
		 0.90227887362996351 0.39809946477601987 -0.16555860094266009 -0 0.0015821006427817763 -0.3870449237919949 -0.92205950129284286 -0
		 -5.4553896063024494 -2.9266921950579188 -0.72188543037675157 1;
	setAttr ".pm[50]" -type "matrix" -0.28599063606040587 0.89208336513818109 -0.34985229130234941 -0
		 0.95614812680294525 0.24160113672151495 -0.16555860094266009 0 -0.063167362593223475 -0.38185882257532194 -0.92205950129284286 0
		 -6.1336373055839015 -1.9280906660343249 -0.72188543037675168 1;
	setAttr ".pm[51]" -type "matrix" -0.10207338912265439 0.93122736080052537 -0.34985229130234935 -0
		 0.98513663428464682 0.045783855716037589 -0.16555860094266003 0 -0.138155112186749 -0.3615514362469906 -0.92205950129284264 0
		 -6.7508444217482166 -0.59181550033660835 -0.72188543037675135 1;
	setAttr ".pm[52]" -type "matrix" 0.23188992655137963 -0.90765105422430503 0.34985229130234929 -0
		 0.93832475256335257 0.30354078536636891 0.16555860094266009 0 -0.25646387794564546 0.28988369285745602 0.92205950129284264 -0
		 -6.7512693582381997 -1.903683870567642 0.72188543037675112 1;
	setAttr ".pm[53]" -type "matrix" 0.93511716042662907 -0.056207388714783812 0.34985229130234935 -0
		 -0.0026622692766375008 0.9861963607599693 0.16555860094266006 0 -0.35432867312417338 -0.15574808980420141 0.92205950129284275 -0
		 -0.34546931532217812 -7.3149787736033653 0.72188543037675168 1;
	setAttr ".pm[54]" -type "matrix" -0.39955119757237006 0.88654287775749618 -0.23323929003481172 -0
		 0.9138291243102904 0.40534605666864759 -0.024716510786627031 -0 0.072630379874905088 -0.22301636765187308 -0.9721052040178535 -0
		 -4.5278240663455414 -3.3954815719514109 -1.022056662989109 1;
	setAttr ".pm[55]" -type "matrix" -0.32480993554795584 0.91656856773150952 -0.23323929003481172 -0
		 0.94424079275899342 0.32832669611897614 -0.024716510786627038 -0 0.053924308611245898 -0.22826222040059005 -0.97210520401785339 -0
		 -5.2848407562928594 -2.9682891152938393 -1.022056662989109 1;
	setAttr ".pm[56]" -type "matrix" -0.20311030386251164 0.95097089232475285 -0.23323929003481175 -0
		 0.97886549333733408 0.20300600988146297 -0.024716510786627035 -0 0.02384429529963901 -0.23333007072186832 -0.97210520401785372 -0
		 -6.0531111964851538 -2.201331097817814 -1.0220566629891092 1;
	setAttr ".pm[57]" -type "matrix" 0.055141316109679081 -0.97085471046998095 0.23323929003481164 -0
		 0.99773223295074775 0.062605793866458606 0.024716510786627031 0 -0.038598271837057808 0.23134745672386586 0.97210520401785361 -0
		 -6.8860135218368184 0.39760004128751308 1.0220566629891104 1;
	setAttr ".pm[58]" -type "matrix" 0.28391908849808628 -0.93004805508665722 0.23323929003481161 -0
		 0.95438699314136222 0.29754757840910812 0.024716510786627038 0 -0.092387328725348924 0.21558305548535747 0.97210520401785361 -0
		 -7.2628020126628208 -1.3645944917354262 1.0220566629891112 1;
	setAttr ".pm[59]" -type "matrix" 0.55092252852547929 -0.8013013173252308 0.23323929003481161 -0
		 0.82040360957422054 0.57125039299078328 0.024716510786627056 0 -0.15304340874628516 0.17773347282019183 0.9721052040178535 -0
		 -6.9115203688474454 -3.6147653105046995 1.0220566629891117 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801929825545 -0.52562566535849164 0.23323929003481164 -0
		 0.53537162742211097 0.84425488725025144 0.024716510786627042 0 -0.20990504293822981 0.10464867543599525 0.9721052040178535 -0
		 -5.4326010176921917 -6.2006165117325418 1.0220566629891132 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862701361126 0.001203088118692175 0.23323929003481167 -0
		 -0.0071651765168071974 0.99966882233068455 0.024716510786627059 0 -0.23313231024988207 -0.025705996167453497 0.97210520401785372 -0
		 -1.6152689933561759 -8.4165599952487824 1.0220566629891152 1;
	setAttr ".gm" -type "matrix" 0.13782292497074947 0.075497158347951815 -0.028051036199876648 0
		 -1.0896093798392026 2.0510396279898138 0.16664310487355324 0 0.030111964527850383 0.003262840119822964 0.15673054477229795 0
		 0.27419955463428974 6.5790521016608334 -1.2958738050987137 1;
	setAttr -s 14 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 14 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 14 ".ifcl";
createNode skinCluster -n "skinCluster16";
	rename -uid "6FD8D4EC-E346-FF11-BB11-018ABC125C3E";
	setAttr -s 11 ".wl";
	setAttr ".wl[0:10].w"
		5 51 0.0012668593942566644 55 0.0095617586100722081 56 0.49033256166020617 
		57 0.49033256166020606 58 0.0085062586752590163
		5 56 0.0062898165579263832 57 0.42877268978461591 58 0.52505622880421454 
		59 0.038268562157833245 60 0.001612702695410022
		5 50 0.12466634245678881 51 0.10993770523271955 55 0.18092540013335282 
		56 0.32007782627300774 57 0.26439272590413104
		5 52 0.050268425489846773 53 0.05012091265884628 56 0.21262387661973467 
		57 0.40461116453569967 58 0.28237562069587263
		5 52 0.0042949470315906575 56 0.021503583270074185 57 0.4650357782167065 
		58 0.46503577821670639 59 0.04412991326492232
		5 52 0.012578033494726889 55 0.018869355031106948 56 0.37091348803547647 
		57 0.49366648920859035 58 0.10397263423009928
		5 51 0.083117061702804362 52 0.083576654387014948 56 0.35591922446643531 
		57 0.36108189488964065 58 0.11630516455410461
		5 51 0.022507289945820005 55 0.064501815698798787 56 0.43819365068815602 
		57 0.43794627441137818 58 0.036850969255846897
		5 51 0.034409674533609096 52 0.036451380043216332 56 0.36979170439089937 
		57 0.42604080057426497 58 0.13330644045801024
		5 52 0.013943426678618139 56 0.067312042423238017 57 0.44349805768578271 
		58 0.43118114593895601 59 0.044065327273405133
		5 51 0.0012668593942566644 55 0.0095617586100722081 56 0.49033256166020617 
		57 0.49033256166020606 58 0.0085062586752590163;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 -0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 -0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 -0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 -0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 -0 0.210011846539538 0.045642596473303459 -0.97663287764657492 -0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 -0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 -0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 -0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 -0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 -0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 -0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 -0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 -0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 -0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 -0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 -0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 -0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 -0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 -0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 -0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 -0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 -0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 -0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 -0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 -0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 -0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 -0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 -0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 -0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 -0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 -0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 -0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 -0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 -0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 -0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 -0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 -0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 -0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 -0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 -0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 -0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 -0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 -0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 -0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 -0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 -0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 -0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 -0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 -0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 -0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 -0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 -0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 -0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 -0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 -0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 -0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 -0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 -0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 -0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 -0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 -0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 -0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 -0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 -0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 -0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 -0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 -0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 -0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 -0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924785605262508 0.69647275897298966 0.6375904212684681 -0
		 0.89339606825899753 0.44836933267261586 -0.028432494404777593 0 -0.3056784495251747 0.56025943769584596 -0.76985066601817032 0
		 -3.5395339858223207 -2.4005302806614877 -1.4268589866057155 1;
	setAttr ".pm[32]" -type "matrix" -0.27889487958311754 0.70693339335951921 0.6499714020597479 -0
		 0.8885321944844633 0.44672740782126169 -0.10461913049686476 0 -0.36431879653257332 0.54834277642227769 -0.75272306596687089 0
		 -4.0483566124710331 -2.4178888719510168 -1.0785179654948196 1;
	setAttr ".pm[33]" -type "matrix" -0.23031896582471262 0.65282056315424064 0.72164983635030056 -0
		 0.83303853409609785 0.51558677430374356 -0.20054196287581566 0 -0.50299102844132282 0.55497350430992753 -0.66257409760833519 0
		 -4.4246285576916371 -2.6889499794631448 -0.5852216413243152 1;
	setAttr ".pm[34]" -type "matrix" -0.43594205479935338 0.59749644125918966 0.67301747937176337 -0
		 0.70084734239732094 0.69452627708497583 -0.16262303985934928 0 -0.56459501194389816 0.40078828965064228 -0.72152700529292924 0
		 -3.9504407340550634 -3.7708443804080867 -0.80903142183858512 1;
	setAttr ".pm[35]" -type "matrix" -0.80828666278327432 0.25069034959079767 0.53275418289181176 -0
		 0.21819681986783124 0.96794042106865841 -0.12442463205086605 0 -0.54686636262092747 0.015674497869846715 -0.83707316977088997 0
		 -1.2782210087401189 -5.4701710515155018 -1.0637098088558508 1;
	setAttr ".pm[36]" -type "matrix" -0.82004746228088032 -0.20903382553540736 0.53275418289181176 -0
		 -0.32022389661991219 0.93913532942412847 -0.12442463205086607 0 -0.47431931822375606 -0.27263472414471851 -0.83707316977088997 0
		 1.4741587162838448 -5.4790258078135139 -1.0637098088558503 1;
	setAttr ".pm[37]" -type "matrix" -0.68115617672397932 -0.58224855063069902 0.44386133893280488 -0
		 -0.71347233192191795 0.66391571242427372 -0.22399365700409787 0 -0.16426653491405938 -0.46925744755370707 -0.86764851951853672 0
		 3.7155105234907788 -4.253503924807462 -0.56138912952764053 1;
	setAttr ".pm[38]" -type "matrix" -0.50408144903854235 -0.80314783289629765 0.31757747283015064 0
		 -0.83807468363902604 0.36604708025856952 -0.40452485668685773 0 0.20864495531536334 -0.47006711600383 -0.85761540860300089 -0
		 4.7675519738061451 -2.6983875616478876 0.40050578146566135 1;
	setAttr ".pm[39]" -type "matrix" -0.13887806920042897 -0.97362021202337345 0.18104299112289102 0
		 -0.8442227548036797 0.02082911068982167 -0.53558761040520475 0 0.51768795829809233 -0.22722198592441178 -0.82484504420267912 -0
		 5.131402903469473 -0.54383199739958166 1.1062769262428087 1;
	setAttr ".pm[40]" -type "matrix" -0.44544499269810256 0.31790426804465338 -0.83696812056325143 0
		 -0.53604557662551799 0.65406162136325452 0.53372140226890541 0 0.71710103769301836 0.68639658494099753 -0.12093729747655504 -0
		 3.5487087028311417 -1.8700671363062362 -2.7925193128695747 1;
	setAttr ".pm[41]" -type "matrix" -0.052113655857806661 -0.12229876297960356 -0.99112419980888034 0
		 -0.12985132476009162 0.98487688829382625 -0.11470025441436067 0 0.99016301704880072 0.12272134076161549 -0.067206191608274221 -0
		 1.5808752410933884 -4.2107979689235933 0.024886527691079015 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923738209327 0.15316129470954071 0.84469936689614911 -0
		 -0.35222855576255746 0.93486282127867992 0.044345799082775778 0 -0.78288597326640097 -0.32027039075406954 0.53340081521212113 -0
		 1.1996855435952647 -4.1723182522672628 0.61489411505153346 1;
	setAttr ".pm[43]" -type "matrix" -0.73333548538209525 0.11850973006940393 0.66945837044455869 -0
		 0.055614852963414348 0.99184695892173957 -0.11465861593249307 0 -0.6775884104744303 -0.04685140293069355 -0.73394747225817225 0
		 -1.618463936552093 -4.150962652048455 0.6167161736380613 1;
	setAttr ".pm[44]" -type "matrix" 0.7178746917702189 0.19100109203229435 -0.6694583704445588 -0
		 -0.15418153848813718 0.98136713567445111 0.11465861593249313 0 0.67888436431047972 0.020907602937564346 0.73394747225817203 -0
		 2.9878104727393069 -3.9063461234579986 -0.61671617363806241 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497183340853 0.012292740621888149 -0.5042589919324536 -0
		 0.11820591039161055 0.96693328393588907 0.22598094425293511 -0 0.49036272815663917 -0.25473302287877969 0.83345994618206876 -0
		 -0.31526849647608046 -4.1175003638789578 -0.8411184408836696 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581191388532 0.14817028233168023 -0.5042589919324536 -0
		 -0.035601728897875065 0.97348093444814543 0.22598094425293513 0 0.52437017498182203 -0.17429984997043529 0.83345994618206876 -0
		 -0.54266112802664046 -4.2561403950661756 -0.84111844088366872 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227101337457 0.54496457952035493 -0.34985229130234941 -0
		 0.62286062490543848 0.76461427634874546 -0.16555860094266003 -0 0.17727848319440126 -0.34406193551726616 -0.92205950129284275 -0
		 -2.7951587350455624 -5.0172514607060918 -0.72188543037675135 1;
	setAttr ".pm[48]" -type "matrix" -0.63784894397210701 0.68611376530730284 -0.34985229130234935 -0
		 0.76296721301434756 0.62487709313034345 -0.16555860094265998 -0 0.10502264774222436 -0.37252720643841247 -0.92205950129284275 -0
		 -4.1298506854570984 -4.2789178555654228 -0.72188543037675157 1;
	setAttr ".pm[49]" -type "matrix" -0.43115001004128573 0.83169287787734247 -0.34985229130234941 -0
		 0.90227887362996351 0.39809946477601987 -0.16555860094266009 -0 0.0015821006427817763 -0.3870449237919949 -0.92205950129284286 -0
		 -5.4553896063024494 -2.9266921950579188 -0.72188543037675157 1;
	setAttr ".pm[50]" -type "matrix" -0.28599063606040587 0.89208336513818109 -0.34985229130234941 -0
		 0.95614812680294525 0.24160113672151495 -0.16555860094266009 0 -0.063167362593223475 -0.38185882257532194 -0.92205950129284286 0
		 -6.1336373055839015 -1.9280906660343249 -0.72188543037675168 1;
	setAttr ".pm[51]" -type "matrix" -0.10207338912265439 0.93122736080052537 -0.34985229130234935 -0
		 0.98513663428464682 0.045783855716037589 -0.16555860094266003 0 -0.138155112186749 -0.3615514362469906 -0.92205950129284264 0
		 -6.7508444217482166 -0.59181550033660835 -0.72188543037675135 1;
	setAttr ".pm[52]" -type "matrix" 0.23188992655137963 -0.90765105422430503 0.34985229130234929 -0
		 0.93832475256335257 0.30354078536636891 0.16555860094266009 0 -0.25646387794564546 0.28988369285745602 0.92205950129284264 -0
		 -6.7512693582381997 -1.903683870567642 0.72188543037675112 1;
	setAttr ".pm[53]" -type "matrix" 0.93511716042662907 -0.056207388714783812 0.34985229130234935 -0
		 -0.0026622692766375008 0.9861963607599693 0.16555860094266006 0 -0.35432867312417338 -0.15574808980420141 0.92205950129284275 -0
		 -0.34546931532217812 -7.3149787736033653 0.72188543037675168 1;
	setAttr ".pm[54]" -type "matrix" -0.39955119757237006 0.88654287775749618 -0.23323929003481172 -0
		 0.9138291243102904 0.40534605666864759 -0.024716510786627031 -0 0.072630379874905088 -0.22301636765187308 -0.9721052040178535 -0
		 -4.5278240663455414 -3.3954815719514109 -1.022056662989109 1;
	setAttr ".pm[55]" -type "matrix" -0.32480993554795584 0.91656856773150952 -0.23323929003481172 -0
		 0.94424079275899342 0.32832669611897614 -0.024716510786627038 -0 0.053924308611245898 -0.22826222040059005 -0.97210520401785339 -0
		 -5.2848407562928594 -2.9682891152938393 -1.022056662989109 1;
	setAttr ".pm[56]" -type "matrix" -0.20311030386251164 0.95097089232475285 -0.23323929003481175 -0
		 0.97886549333733408 0.20300600988146297 -0.024716510786627035 -0 0.02384429529963901 -0.23333007072186832 -0.97210520401785372 -0
		 -6.0531111964851538 -2.201331097817814 -1.0220566629891092 1;
	setAttr ".pm[57]" -type "matrix" 0.055141316109679081 -0.97085471046998095 0.23323929003481164 -0
		 0.99773223295074775 0.062605793866458606 0.024716510786627031 0 -0.038598271837057808 0.23134745672386586 0.97210520401785361 -0
		 -6.8860135218368184 0.39760004128751308 1.0220566629891104 1;
	setAttr ".pm[58]" -type "matrix" 0.28391908849808628 -0.93004805508665722 0.23323929003481161 -0
		 0.95438699314136222 0.29754757840910812 0.024716510786627038 0 -0.092387328725348924 0.21558305548535747 0.97210520401785361 -0
		 -7.2628020126628208 -1.3645944917354262 1.0220566629891112 1;
	setAttr ".pm[59]" -type "matrix" 0.55092252852547929 -0.8013013173252308 0.23323929003481161 -0
		 0.82040360957422054 0.57125039299078328 0.024716510786627056 0 -0.15304340874628516 0.17773347282019183 0.9721052040178535 -0
		 -6.9115203688474454 -3.6147653105046995 1.0220566629891117 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801929825545 -0.52562566535849164 0.23323929003481164 -0
		 0.53537162742211097 0.84425488725025144 0.024716510786627042 0 -0.20990504293822981 0.10464867543599525 0.9721052040178535 -0
		 -5.4326010176921917 -6.2006165117325418 1.0220566629891132 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862701361126 0.001203088118692175 0.23323929003481167 -0
		 -0.0071651765168071974 0.99966882233068455 0.024716510786627059 0 -0.23313231024988207 -0.025705996167453497 0.97210520401785372 -0
		 -1.6152689933561759 -8.4165599952487824 1.0220566629891152 1;
	setAttr ".gm" -type "matrix" 0.13782292497074947 0.075497158347951815 -0.028051036199876648 0
		 -1.0896093798392026 2.0510396279898138 0.16664310487355324 0 0.030111964527850383 0.003262840119822964 0.15673054477229795 0
		 0.27419955463428974 6.5790521016608334 -1.2958738050987137 1;
	setAttr -s 10 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 10 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 10 ".ifcl";
createNode skinCluster -n "skinCluster17";
	rename -uid "6FCEE4DA-DF41-421E-CFBD-0FAEEA85101B";
	setAttr -s 6 ".wl";
	setAttr ".wl[0:5].w"
		5 36 0.0041777197662900981 37 0.0038887324780954207 47 0.31520427166664755 
		48 0.62592414740957725 49 0.050805128679389716
		5 36 0.020422534627373749 37 0.02248633458192675 47 0.43128436392293884 
		48 0.45704371286842782 49 0.068763053999332899
		5 37 0.0076579238630084725 47 0.097079082911765258 48 0.43374447663135662 
		49 0.40693571705757514 50 0.054582799536294545
		5 36 0.091499979255058886 37 0.1459759032567309 38 0.13883935007193413 
		47 0.3119841410249094 48 0.31170062639136659
		5 37 0.062910190388481182 38 0.060709506372460899 47 0.35822126348312822 
		48 0.37849234946894061 49 0.13966669028698905
		5 47 0.0049493880290874953 48 0.2798727573215854 49 0.59542915474386071 
		50 0.11683669229316886 51 0.0029120076122975355;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 -0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 -0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 -0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 -0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 -0 0.210011846539538 0.045642596473303459 -0.97663287764657492 -0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 -0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 -0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 -0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 -0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 -0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 -0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 -0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 -0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 -0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 -0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 -0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 -0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 -0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 -0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 -0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 -0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 -0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 -0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 -0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 -0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 -0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 -0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 -0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 -0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 -0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 -0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 -0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 -0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 -0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 -0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 -0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 -0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 -0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 -0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 -0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 -0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 -0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 -0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 -0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 -0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 -0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 -0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 -0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 -0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 -0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 -0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 -0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 -0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 -0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 -0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 -0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 -0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 -0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 -0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 -0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 -0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 -0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 -0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 -0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 -0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 -0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 -0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 -0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 -0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924785605262508 0.69647275897298966 0.6375904212684681 -0
		 0.89339606825899753 0.44836933267261586 -0.028432494404777593 0 -0.3056784495251747 0.56025943769584596 -0.76985066601817032 0
		 -3.5395339858223207 -2.4005302806614877 -1.4268589866057155 1;
	setAttr ".pm[32]" -type "matrix" -0.27889487958311754 0.70693339335951921 0.6499714020597479 -0
		 0.8885321944844633 0.44672740782126169 -0.10461913049686476 0 -0.36431879653257332 0.54834277642227769 -0.75272306596687089 0
		 -4.0483566124710331 -2.4178888719510168 -1.0785179654948196 1;
	setAttr ".pm[33]" -type "matrix" -0.23031896582471262 0.65282056315424064 0.72164983635030056 -0
		 0.83303853409609785 0.51558677430374356 -0.20054196287581566 0 -0.50299102844132282 0.55497350430992753 -0.66257409760833519 0
		 -4.4246285576916371 -2.6889499794631448 -0.5852216413243152 1;
	setAttr ".pm[34]" -type "matrix" -0.43594205479935338 0.59749644125918966 0.67301747937176337 -0
		 0.70084734239732094 0.69452627708497583 -0.16262303985934928 0 -0.56459501194389816 0.40078828965064228 -0.72152700529292924 0
		 -3.9504407340550634 -3.7708443804080867 -0.80903142183858512 1;
	setAttr ".pm[35]" -type "matrix" -0.80828666278327432 0.25069034959079767 0.53275418289181176 -0
		 0.21819681986783124 0.96794042106865841 -0.12442463205086605 0 -0.54686636262092747 0.015674497869846715 -0.83707316977088997 0
		 -1.2782210087401189 -5.4701710515155018 -1.0637098088558508 1;
	setAttr ".pm[36]" -type "matrix" -0.82004746228088032 -0.20903382553540736 0.53275418289181176 -0
		 -0.32022389661991219 0.93913532942412847 -0.12442463205086607 0 -0.47431931822375606 -0.27263472414471851 -0.83707316977088997 0
		 1.4741587162838448 -5.4790258078135139 -1.0637098088558503 1;
	setAttr ".pm[37]" -type "matrix" -0.68115617672397932 -0.58224855063069902 0.44386133893280488 -0
		 -0.71347233192191795 0.66391571242427372 -0.22399365700409787 0 -0.16426653491405938 -0.46925744755370707 -0.86764851951853672 0
		 3.7155105234907788 -4.253503924807462 -0.56138912952764053 1;
	setAttr ".pm[38]" -type "matrix" -0.50408144903854235 -0.80314783289629765 0.31757747283015064 0
		 -0.83807468363902604 0.36604708025856952 -0.40452485668685773 0 0.20864495531536334 -0.47006711600383 -0.85761540860300089 -0
		 4.7675519738061451 -2.6983875616478876 0.40050578146566135 1;
	setAttr ".pm[39]" -type "matrix" -0.13887806920042897 -0.97362021202337345 0.18104299112289102 0
		 -0.8442227548036797 0.02082911068982167 -0.53558761040520475 0 0.51768795829809233 -0.22722198592441178 -0.82484504420267912 -0
		 5.131402903469473 -0.54383199739958166 1.1062769262428087 1;
	setAttr ".pm[40]" -type "matrix" -0.44544499269810256 0.31790426804465338 -0.83696812056325143 0
		 -0.53604557662551799 0.65406162136325452 0.53372140226890541 0 0.71710103769301836 0.68639658494099753 -0.12093729747655504 -0
		 3.5487087028311417 -1.8700671363062362 -2.7925193128695747 1;
	setAttr ".pm[41]" -type "matrix" -0.052113655857806661 -0.12229876297960356 -0.99112419980888034 0
		 -0.12985132476009162 0.98487688829382625 -0.11470025441436067 0 0.99016301704880072 0.12272134076161549 -0.067206191608274221 -0
		 1.5808752410933884 -4.2107979689235933 0.024886527691079015 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923738209327 0.15316129470954071 0.84469936689614911 -0
		 -0.35222855576255746 0.93486282127867992 0.044345799082775778 0 -0.78288597326640097 -0.32027039075406954 0.53340081521212113 -0
		 1.1996855435952647 -4.1723182522672628 0.61489411505153346 1;
	setAttr ".pm[43]" -type "matrix" -0.73333548538209525 0.11850973006940393 0.66945837044455869 -0
		 0.055614852963414348 0.99184695892173957 -0.11465861593249307 0 -0.6775884104744303 -0.04685140293069355 -0.73394747225817225 0
		 -1.618463936552093 -4.150962652048455 0.6167161736380613 1;
	setAttr ".pm[44]" -type "matrix" 0.7178746917702189 0.19100109203229435 -0.6694583704445588 -0
		 -0.15418153848813718 0.98136713567445111 0.11465861593249313 0 0.67888436431047972 0.020907602937564346 0.73394747225817203 -0
		 2.9878104727393069 -3.9063461234579986 -0.61671617363806241 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497183340853 0.012292740621888149 -0.5042589919324536 -0
		 0.11820591039161055 0.96693328393588907 0.22598094425293511 -0 0.49036272815663917 -0.25473302287877969 0.83345994618206876 -0
		 -0.31526849647608046 -4.1175003638789578 -0.8411184408836696 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581191388532 0.14817028233168023 -0.5042589919324536 -0
		 -0.035601728897875065 0.97348093444814543 0.22598094425293513 0 0.52437017498182203 -0.17429984997043529 0.83345994618206876 -0
		 -0.54266112802664046 -4.2561403950661756 -0.84111844088366872 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227101337457 0.54496457952035493 -0.34985229130234941 -0
		 0.62286062490543848 0.76461427634874546 -0.16555860094266003 -0 0.17727848319440126 -0.34406193551726616 -0.92205950129284275 -0
		 -2.7951587350455624 -5.0172514607060918 -0.72188543037675135 1;
	setAttr ".pm[48]" -type "matrix" -0.63784894397210701 0.68611376530730284 -0.34985229130234935 -0
		 0.76296721301434756 0.62487709313034345 -0.16555860094265998 -0 0.10502264774222436 -0.37252720643841247 -0.92205950129284275 -0
		 -4.1298506854570984 -4.2789178555654228 -0.72188543037675157 1;
	setAttr ".pm[49]" -type "matrix" -0.43115001004128573 0.83169287787734247 -0.34985229130234941 -0
		 0.90227887362996351 0.39809946477601987 -0.16555860094266009 -0 0.0015821006427817763 -0.3870449237919949 -0.92205950129284286 -0
		 -5.4553896063024494 -2.9266921950579188 -0.72188543037675157 1;
	setAttr ".pm[50]" -type "matrix" -0.28599063606040587 0.89208336513818109 -0.34985229130234941 -0
		 0.95614812680294525 0.24160113672151495 -0.16555860094266009 0 -0.063167362593223475 -0.38185882257532194 -0.92205950129284286 0
		 -6.1336373055839015 -1.9280906660343249 -0.72188543037675168 1;
	setAttr ".pm[51]" -type "matrix" -0.10207338912265439 0.93122736080052537 -0.34985229130234935 -0
		 0.98513663428464682 0.045783855716037589 -0.16555860094266003 0 -0.138155112186749 -0.3615514362469906 -0.92205950129284264 0
		 -6.7508444217482166 -0.59181550033660835 -0.72188543037675135 1;
	setAttr ".pm[52]" -type "matrix" 0.23188992655137963 -0.90765105422430503 0.34985229130234929 -0
		 0.93832475256335257 0.30354078536636891 0.16555860094266009 0 -0.25646387794564546 0.28988369285745602 0.92205950129284264 -0
		 -6.7512693582381997 -1.903683870567642 0.72188543037675112 1;
	setAttr ".pm[53]" -type "matrix" 0.93511716042662907 -0.056207388714783812 0.34985229130234935 -0
		 -0.0026622692766375008 0.9861963607599693 0.16555860094266006 0 -0.35432867312417338 -0.15574808980420141 0.92205950129284275 -0
		 -0.34546931532217812 -7.3149787736033653 0.72188543037675168 1;
	setAttr ".pm[54]" -type "matrix" -0.39955119757237006 0.88654287775749618 -0.23323929003481172 -0
		 0.9138291243102904 0.40534605666864759 -0.024716510786627031 -0 0.072630379874905088 -0.22301636765187308 -0.9721052040178535 -0
		 -4.5278240663455414 -3.3954815719514109 -1.022056662989109 1;
	setAttr ".pm[55]" -type "matrix" -0.32480993554795584 0.91656856773150952 -0.23323929003481172 -0
		 0.94424079275899342 0.32832669611897614 -0.024716510786627038 -0 0.053924308611245898 -0.22826222040059005 -0.97210520401785339 -0
		 -5.2848407562928594 -2.9682891152938393 -1.022056662989109 1;
	setAttr ".pm[56]" -type "matrix" -0.20311030386251164 0.95097089232475285 -0.23323929003481175 -0
		 0.97886549333733408 0.20300600988146297 -0.024716510786627035 -0 0.02384429529963901 -0.23333007072186832 -0.97210520401785372 -0
		 -6.0531111964851538 -2.201331097817814 -1.0220566629891092 1;
	setAttr ".pm[57]" -type "matrix" 0.055141316109679081 -0.97085471046998095 0.23323929003481164 -0
		 0.99773223295074775 0.062605793866458606 0.024716510786627031 0 -0.038598271837057808 0.23134745672386586 0.97210520401785361 -0
		 -6.8860135218368184 0.39760004128751308 1.0220566629891104 1;
	setAttr ".pm[58]" -type "matrix" 0.28391908849808628 -0.93004805508665722 0.23323929003481161 -0
		 0.95438699314136222 0.29754757840910812 0.024716510786627038 0 -0.092387328725348924 0.21558305548535747 0.97210520401785361 -0
		 -7.2628020126628208 -1.3645944917354262 1.0220566629891112 1;
	setAttr ".pm[59]" -type "matrix" 0.55092252852547929 -0.8013013173252308 0.23323929003481161 -0
		 0.82040360957422054 0.57125039299078328 0.024716510786627056 0 -0.15304340874628516 0.17773347282019183 0.9721052040178535 -0
		 -6.9115203688474454 -3.6147653105046995 1.0220566629891117 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801929825545 -0.52562566535849164 0.23323929003481164 -0
		 0.53537162742211097 0.84425488725025144 0.024716510786627042 0 -0.20990504293822981 0.10464867543599525 0.9721052040178535 -0
		 -5.4326010176921917 -6.2006165117325418 1.0220566629891132 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862701361126 0.001203088118692175 0.23323929003481167 -0
		 -0.0071651765168071974 0.99966882233068455 0.024716510786627059 0 -0.23313231024988207 -0.025705996167453497 0.97210520401785372 -0
		 -1.6152689933561759 -8.4165599952487824 1.0220566629891152 1;
	setAttr ".gm" -type "matrix" 0.039607107782577262 0.11970527137582093 8.7490826184895261e-19 0
		 -1.7310715472768667 0.57276289142765791 0.24077833965570336 0 0.015671219202719751 -0.0051851657066782119 0.12500240768622908 0
		 -0.012418023358079941 5.5200234100020431 -1.7966621403707963 1;
	setAttr -s 8 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 8 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 8 ".ifcl";
createNode skinCluster -n "skinCluster18";
	rename -uid "DCC8E028-6A45-07B3-8413-6DA0BAFC14EE";
	setAttr -s 40 ".wl";
	setAttr ".wl[0:39].w"
		5 35 0.0020972513776903378 36 0.47163871580376415 37 0.035459238775624527 
		47 0.48835476381592485 48 0.0024500302269961547
		5 36 0.40382870771748314 37 0.18222465750228745 38 0.0061013870841683301 
		47 0.40477780853562828 48 0.0030674391604328692
		5 36 0.37733626564943584 37 0.59002014876610209 38 0.0025652240204710316 
		47 0.029719075000750283 48 0.00035928656324067199
		5 35 0.0031205020435245315 36 0.72437193694953461 37 0.20687167408586188 
		38 0.0023760655241096803 47 0.063259821396969423
		5 35 0.012342270777401389 36 0.80947894364225048 37 0.050807754293871243 
		47 0.12551624708974504 48 0.0018547841967319579
		5 35 0.0058390354953701696 36 0.87482990640443548 37 0.010787088766325163 
		47 0.10752786764452101 48 0.0010161016893482564
		5 35 0.0048961410822044478 36 0.52414404481183985 37 0.021188165211003772 
		47 0.44728723143785304 48 0.0024844174570988397
		5 36 0.0022213527183012763 47 0.21812891872068121 48 0.74721424135878178 
		49 0.030159406275101421 50 0.0022760809271343556
		5 36 0.0027297230909434475 47 0.25708527085067323 48 0.70160684546102559 
		49 0.035926470088469213 50 0.0026516905088884951
		5 36 0.003527760676518978 47 0.29668865123029531 48 0.6521397451219938 
		49 0.044364664129012549 50 0.0032791788421794158
		5 36 0.0043761245725305034 47 0.31080481912126734 48 0.62792296146243498 
		49 0.052800373654393724 50 0.0040957211893735178
		5 36 0.003939566276982295 47 0.28552104419683455 48 0.65802549040764324 
		49 0.048651139659556863 50 0.0038627594589832137
		5 36 0.003074358921577593 47 0.24611750656319364 48 0.70790244597389573 
		49 0.039736029551485523 50 0.0031696589898475023
		5 36 0.0023406735548257862 47 0.21386478558974181 48 0.74978676170829506 
		49 0.031544353134157335 50 0.0024634260129799989
		5 48 0.0026832514911265485 49 0.046748279749522441 50 0.84539827472426143 
		51 0.099710555240730428 52 0.0054596387943591724
		5 48 0.0027185553097081139 49 0.040277173593506105 50 0.77722359207334468 
		51 0.17167425268925732 52 0.0081064263341837691
		5 48 0.0021870111287942808 49 0.029378406187589804 50 0.71801762937624058 
		51 0.24123304198818707 52 0.0091839113191882794
		5 48 0.001879669303457867 49 0.024724628171875453 50 0.69971967896374287 
		51 0.2647654187900792 52 0.0089106047708444915
		5 48 0.0019924716292193437 49 0.027777416430032283 50 0.7375090500717949 
		51 0.22464244151237378 52 0.008078620356579698
		5 48 0.0021694828782367146 49 0.034674173995632107 50 0.81361381194145532 
		51 0.14338569044595345 52 0.0061568407387224558
		5 48 0.0020881535348246569 49 0.039211903072991779 50 0.87460557775210912 
		51 0.080002061697300259 52 0.004092303942774142
		5 48 0.0021804071135181759 49 0.042985195814093734 50 0.88545440210697002 
		51 0.065691678693953065 52 0.0036883162714649951
		5 49 0.0011942632428505468 50 0.026313058982421304 51 0.42979906010719188 
		52 0.52475438084869219 53 0.017939236818844011
		5 49 0.00064065051612093677 50 0.012643592683039896 51 0.38431556281136292 
		52 0.5861096541901285 53 0.016290539799347692
		5 49 0.00024505270436271621 50 0.0045816111149369178 51 0.29305677180256151 
		52 0.69172655170834685 53 0.010390012669791976
		5 49 0.00010463314772635147 50 0.001961476086142343 51 0.21143553997337186 
		52 0.78098944199616649 53 0.0055089087965929017
		5 49 0.00013600114585669379 50 0.0026987157760274298 51 0.26551447484908808 
		52 0.72599578624404537 53 0.0056550219849824139
		5 49 0.00036858053854256804 50 0.0080367388116403017 51 0.38222463155988612 
		52 0.6003046057554684 53 0.0090654433344626324
		5 49 0.00088537241194171505 50 0.021272624277568947 51 0.43669264027199073 
		52 0.52822196856082293 53 0.012927394477675694
		5 49 0.001344772417492511 50 0.032762292618518103 51 0.44888734453901563 
		52 0.50111871725637902 53 0.015886873168594717
		5 47 0.0033508825654881397 48 0.22899851015289024 49 0.69514743777666987 
		50 0.070958179905415364 51 0.00154498959953633
		5 47 0.0033077124261710628 48 0.22550070655209123 49 0.70439272862993696 
		50 0.065361344036626204 51 0.0014375083551745862
		5 47 0.0042429023089876252 48 0.25266260810784824 49 0.66025024965383794 
		50 0.080907168404774243 51 0.0019370715245519711
		5 47 0.0052467287790769574 48 0.27736130378341406 49 0.61137945637407132 
		50 0.10333078846002347 51 0.0026817226034142267
		5 47 0.0053884213956009635 48 0.28461147912253371 49 0.59054737862546358 
		50 0.11641085547140045 51 0.0030418653850011954
		5 47 0.0044676020792906888 48 0.268692164961923 49 0.61685442067373719 
		50 0.10743801783210689 51 0.0025477944529422657
		5 47 0.0039383004882193109 48 0.25093621789862064 49 0.65303545793179163 
		50 0.09004847544128626 51 0.0020415482400822143
		5 36 0.0041777197662900981 37 0.0038887324780954207 47 0.31520427166664755 
		48 0.62592414740957725 49 0.050805128679389716
		5 47 0.0049493511704292552 48 0.27987138740888695 49 0.59543033481065766 
		50 0.11683692811983075 51 0.0029119984901954431
		5 35 5.5437534082181507e-05 36 0.36298074685798665 37 0.63382252411142725 
		38 0.00032525398308478292 47 0.0028160375134192194;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 -0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 -0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 -0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 -0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 -0 0.210011846539538 0.045642596473303459 -0.97663287764657492 -0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 -0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 -0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 -0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 -0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 -0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 -0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 -0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 -0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 -0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 -0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 -0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 -0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 -0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 -0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 -0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 -0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 -0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 -0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 -0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 -0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 -0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 -0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 -0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 -0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 -0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 -0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 -0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 -0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 -0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 -0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 -0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 -0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 -0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 -0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 -0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 -0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 -0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 -0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 -0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 -0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 -0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 -0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 -0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 -0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 -0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 -0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 -0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 -0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 -0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 -0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 -0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 -0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 -0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 -0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 -0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 -0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 -0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 -0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 -0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 -0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 -0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 -0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 -0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 -0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924785605262508 0.69647275897298966 0.6375904212684681 -0
		 0.89339606825899753 0.44836933267261586 -0.028432494404777593 0 -0.3056784495251747 0.56025943769584596 -0.76985066601817032 0
		 -3.5395339858223207 -2.4005302806614877 -1.4268589866057155 1;
	setAttr ".pm[32]" -type "matrix" -0.27889487958311754 0.70693339335951921 0.6499714020597479 -0
		 0.8885321944844633 0.44672740782126169 -0.10461913049686476 0 -0.36431879653257332 0.54834277642227769 -0.75272306596687089 0
		 -4.0483566124710331 -2.4178888719510168 -1.0785179654948196 1;
	setAttr ".pm[33]" -type "matrix" -0.23031896582471262 0.65282056315424064 0.72164983635030056 -0
		 0.83303853409609785 0.51558677430374356 -0.20054196287581566 0 -0.50299102844132282 0.55497350430992753 -0.66257409760833519 0
		 -4.4246285576916371 -2.6889499794631448 -0.5852216413243152 1;
	setAttr ".pm[34]" -type "matrix" -0.43594205479935338 0.59749644125918966 0.67301747937176337 -0
		 0.70084734239732094 0.69452627708497583 -0.16262303985934928 0 -0.56459501194389816 0.40078828965064228 -0.72152700529292924 0
		 -3.9504407340550634 -3.7708443804080867 -0.80903142183858512 1;
	setAttr ".pm[35]" -type "matrix" -0.80828666278327432 0.25069034959079767 0.53275418289181176 -0
		 0.21819681986783124 0.96794042106865841 -0.12442463205086605 0 -0.54686636262092747 0.015674497869846715 -0.83707316977088997 0
		 -1.2782210087401189 -5.4701710515155018 -1.0637098088558508 1;
	setAttr ".pm[36]" -type "matrix" -0.82004746228088032 -0.20903382553540736 0.53275418289181176 -0
		 -0.32022389661991219 0.93913532942412847 -0.12442463205086607 0 -0.47431931822375606 -0.27263472414471851 -0.83707316977088997 0
		 1.4741587162838448 -5.4790258078135139 -1.0637098088558503 1;
	setAttr ".pm[37]" -type "matrix" -0.68115617672397932 -0.58224855063069902 0.44386133893280488 -0
		 -0.71347233192191795 0.66391571242427372 -0.22399365700409787 0 -0.16426653491405938 -0.46925744755370707 -0.86764851951853672 0
		 3.7155105234907788 -4.253503924807462 -0.56138912952764053 1;
	setAttr ".pm[38]" -type "matrix" -0.50408144903854235 -0.80314783289629765 0.31757747283015064 0
		 -0.83807468363902604 0.36604708025856952 -0.40452485668685773 0 0.20864495531536334 -0.47006711600383 -0.85761540860300089 -0
		 4.7675519738061451 -2.6983875616478876 0.40050578146566135 1;
	setAttr ".pm[39]" -type "matrix" -0.13887806920042897 -0.97362021202337345 0.18104299112289102 0
		 -0.8442227548036797 0.02082911068982167 -0.53558761040520475 0 0.51768795829809233 -0.22722198592441178 -0.82484504420267912 -0
		 5.131402903469473 -0.54383199739958166 1.1062769262428087 1;
	setAttr ".pm[40]" -type "matrix" -0.44544499269810256 0.31790426804465338 -0.83696812056325143 0
		 -0.53604557662551799 0.65406162136325452 0.53372140226890541 0 0.71710103769301836 0.68639658494099753 -0.12093729747655504 -0
		 3.5487087028311417 -1.8700671363062362 -2.7925193128695747 1;
	setAttr ".pm[41]" -type "matrix" -0.052113655857806661 -0.12229876297960356 -0.99112419980888034 0
		 -0.12985132476009162 0.98487688829382625 -0.11470025441436067 0 0.99016301704880072 0.12272134076161549 -0.067206191608274221 -0
		 1.5808752410933884 -4.2107979689235933 0.024886527691079015 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923738209327 0.15316129470954071 0.84469936689614911 -0
		 -0.35222855576255746 0.93486282127867992 0.044345799082775778 0 -0.78288597326640097 -0.32027039075406954 0.53340081521212113 -0
		 1.1996855435952647 -4.1723182522672628 0.61489411505153346 1;
	setAttr ".pm[43]" -type "matrix" -0.73333548538209525 0.11850973006940393 0.66945837044455869 -0
		 0.055614852963414348 0.99184695892173957 -0.11465861593249307 0 -0.6775884104744303 -0.04685140293069355 -0.73394747225817225 0
		 -1.618463936552093 -4.150962652048455 0.6167161736380613 1;
	setAttr ".pm[44]" -type "matrix" 0.7178746917702189 0.19100109203229435 -0.6694583704445588 -0
		 -0.15418153848813718 0.98136713567445111 0.11465861593249313 0 0.67888436431047972 0.020907602937564346 0.73394747225817203 -0
		 2.9878104727393069 -3.9063461234579986 -0.61671617363806241 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497183340853 0.012292740621888149 -0.5042589919324536 -0
		 0.11820591039161055 0.96693328393588907 0.22598094425293511 -0 0.49036272815663917 -0.25473302287877969 0.83345994618206876 -0
		 -0.31526849647608046 -4.1175003638789578 -0.8411184408836696 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581191388532 0.14817028233168023 -0.5042589919324536 -0
		 -0.035601728897875065 0.97348093444814543 0.22598094425293513 0 0.52437017498182203 -0.17429984997043529 0.83345994618206876 -0
		 -0.54266112802664046 -4.2561403950661756 -0.84111844088366872 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227101337457 0.54496457952035493 -0.34985229130234941 -0
		 0.62286062490543848 0.76461427634874546 -0.16555860094266003 -0 0.17727848319440126 -0.34406193551726616 -0.92205950129284275 -0
		 -2.7951587350455624 -5.0172514607060918 -0.72188543037675135 1;
	setAttr ".pm[48]" -type "matrix" -0.63784894397210701 0.68611376530730284 -0.34985229130234935 -0
		 0.76296721301434756 0.62487709313034345 -0.16555860094265998 -0 0.10502264774222436 -0.37252720643841247 -0.92205950129284275 -0
		 -4.1298506854570984 -4.2789178555654228 -0.72188543037675157 1;
	setAttr ".pm[49]" -type "matrix" -0.43115001004128573 0.83169287787734247 -0.34985229130234941 -0
		 0.90227887362996351 0.39809946477601987 -0.16555860094266009 -0 0.0015821006427817763 -0.3870449237919949 -0.92205950129284286 -0
		 -5.4553896063024494 -2.9266921950579188 -0.72188543037675157 1;
	setAttr ".pm[50]" -type "matrix" -0.28599063606040587 0.89208336513818109 -0.34985229130234941 -0
		 0.95614812680294525 0.24160113672151495 -0.16555860094266009 0 -0.063167362593223475 -0.38185882257532194 -0.92205950129284286 0
		 -6.1336373055839015 -1.9280906660343249 -0.72188543037675168 1;
	setAttr ".pm[51]" -type "matrix" -0.10207338912265439 0.93122736080052537 -0.34985229130234935 -0
		 0.98513663428464682 0.045783855716037589 -0.16555860094266003 0 -0.138155112186749 -0.3615514362469906 -0.92205950129284264 0
		 -6.7508444217482166 -0.59181550033660835 -0.72188543037675135 1;
	setAttr ".pm[52]" -type "matrix" 0.23188992655137963 -0.90765105422430503 0.34985229130234929 -0
		 0.93832475256335257 0.30354078536636891 0.16555860094266009 0 -0.25646387794564546 0.28988369285745602 0.92205950129284264 -0
		 -6.7512693582381997 -1.903683870567642 0.72188543037675112 1;
	setAttr ".pm[53]" -type "matrix" 0.93511716042662907 -0.056207388714783812 0.34985229130234935 -0
		 -0.0026622692766375008 0.9861963607599693 0.16555860094266006 0 -0.35432867312417338 -0.15574808980420141 0.92205950129284275 -0
		 -0.34546931532217812 -7.3149787736033653 0.72188543037675168 1;
	setAttr ".pm[54]" -type "matrix" -0.39955119757237006 0.88654287775749618 -0.23323929003481172 -0
		 0.9138291243102904 0.40534605666864759 -0.024716510786627031 -0 0.072630379874905088 -0.22301636765187308 -0.9721052040178535 -0
		 -4.5278240663455414 -3.3954815719514109 -1.022056662989109 1;
	setAttr ".pm[55]" -type "matrix" -0.32480993554795584 0.91656856773150952 -0.23323929003481172 -0
		 0.94424079275899342 0.32832669611897614 -0.024716510786627038 -0 0.053924308611245898 -0.22826222040059005 -0.97210520401785339 -0
		 -5.2848407562928594 -2.9682891152938393 -1.022056662989109 1;
	setAttr ".pm[56]" -type "matrix" -0.20311030386251164 0.95097089232475285 -0.23323929003481175 -0
		 0.97886549333733408 0.20300600988146297 -0.024716510786627035 -0 0.02384429529963901 -0.23333007072186832 -0.97210520401785372 -0
		 -6.0531111964851538 -2.201331097817814 -1.0220566629891092 1;
	setAttr ".pm[57]" -type "matrix" 0.055141316109679081 -0.97085471046998095 0.23323929003481164 -0
		 0.99773223295074775 0.062605793866458606 0.024716510786627031 0 -0.038598271837057808 0.23134745672386586 0.97210520401785361 -0
		 -6.8860135218368184 0.39760004128751308 1.0220566629891104 1;
	setAttr ".pm[58]" -type "matrix" 0.28391908849808628 -0.93004805508665722 0.23323929003481161 -0
		 0.95438699314136222 0.29754757840910812 0.024716510786627038 0 -0.092387328725348924 0.21558305548535747 0.97210520401785361 -0
		 -7.2628020126628208 -1.3645944917354262 1.0220566629891112 1;
	setAttr ".pm[59]" -type "matrix" 0.55092252852547929 -0.8013013173252308 0.23323929003481161 -0
		 0.82040360957422054 0.57125039299078328 0.024716510786627056 0 -0.15304340874628516 0.17773347282019183 0.9721052040178535 -0
		 -6.9115203688474454 -3.6147653105046995 1.0220566629891117 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801929825545 -0.52562566535849164 0.23323929003481164 -0
		 0.53537162742211097 0.84425488725025144 0.024716510786627042 0 -0.20990504293822981 0.10464867543599525 0.9721052040178535 -0
		 -5.4326010176921917 -6.2006165117325418 1.0220566629891132 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862701361126 0.001203088118692175 0.23323929003481167 -0
		 -0.0071651765168071974 0.99966882233068455 0.024716510786627059 0 -0.23313231024988207 -0.025705996167453497 0.97210520401785372 -0
		 -1.6152689933561759 -8.4165599952487824 1.0220566629891152 1;
	setAttr ".gm" -type "matrix" 0.039607107782577262 0.11970527137582093 8.7490826184895261e-19 0
		 -1.7310715472768667 0.57276289142765791 0.24077833965570336 0 0.015671219202719751 -0.0051851657066782119 0.12500240768622908 0
		 -0.012418023358079941 5.5200234100020431 -1.7966621403707963 1;
	setAttr -s 11 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 11 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 11 ".ifcl";
createNode skinCluster -n "skinCluster19";
	rename -uid "169F11CB-014F-46FA-E168-BE9537F81DBD";
	setAttr -s 30 ".wl";
	setAttr ".wl[0:29].w"
		5 48 0.0021870183620715127 49 0.02937845227486827 50 0.71801662222736495 
		51 0.24123394512704671 52 0.0091839620086483515
		5 48 0.0018796519313903878 49 0.024724347216602223 50 0.69971882096542382 
		51 0.26476658242178774 52 0.0089105974647958035
		5 49 0.00044211450685688834 50 0.017053279286112069 51 0.51051118146746965 
		52 0.46943677696693448 53 0.0025566477726268245
		5 49 0.010243925950119505 50 0.15371921251795823 51 0.41735380889788137 
		52 0.37949810814843221 53 0.039184944485608823
		5 48 0.0019924499343116353 49 0.027777185236346941 50 0.73751071173022065 
		51 0.2246411266470848 52 0.0080785264520360396
		5 49 0.011820077773711718 50 0.17444495779040661 51 0.41488835884538788 
		52 0.36124070143486869 53 0.037605904155625078
		5 49 0.0042795529685098555 50 0.39086501641557442 51 0.53962239150119629 
		52 0.06298264642768131 53 0.0022503926870381238
		5 49 0.0016169237135540845 50 0.37429462773500372 51 0.59304430057214286 
		52 0.030267587068487332 53 0.00077656091081207174
		5 49 0.0046800589122645928 50 0.37183210569510383 51 0.54261952072023689 
		52 0.078095871386996141 53 0.0027724432853986269
		5 48 0.0017048606059579139 49 0.023550557621524637 50 0.73460068222090225 
		51 0.23259754107344016 52 0.0075463584781750494
		5 49 0.0016945083051483777 50 0.37401549069340184 51 0.59225838129728181 
		52 0.031211197900973132 53 0.00082042180319468621
		5 49 0.0014233183011235038 50 0.044518051003745146 51 0.49076682949261147 
		52 0.45591906878942345 53 0.0073727324130963695
		5 48 0.001770105361361558 49 0.0237977695696782 50 0.71857045444257273 
		51 0.24768273722814166 52 0.0081789333982458089
		5 49 0.0018558477457435527 50 0.36633529050708419 51 0.59467239582127762 
		52 0.036191234818875026 53 0.00094523110701976159
		5 49 0.0011481398665746823 50 0.035905313844176126 51 0.48968946287203347 
		52 0.46666614094082659 53 0.0065909424763890539
		5 49 0.020668462276123491 50 0.098447133494023911 51 0.24485940808786183 
		52 0.3583916555875174 53 0.27763334055447342
		5 49 0.0019169392542986853 50 0.018272152333532792 51 0.18819259230899291 
		52 0.58209292811558899 53 0.20952538798758663
		5 49 0.00035282272219537802 50 0.0044191822357939978 51 0.12599465159985637 
		52 0.80807108929207638 53 0.061162254150077942
		5 49 0.0030506308261196609 50 0.028430845927420768 51 0.24800166740624804 
		52 0.52161376063051723 53 0.19890309520969429
		5 50 0.11163402285781084 51 0.25297574031157333 52 0.3377278083767084 
		53 0.25145113426074511 57 0.046211294193162403
		5 49 0.0021026467952367412 50 0.0097522422086263761 51 0.039085918632097823 
		52 0.47452959618201951 53 0.47452959618201951
		5 49 0.00016836421679121362 50 0.00094955390957753591 51 0.0055964849811804013 
		52 0.4966427984462255 53 0.49664279844622539
		5 49 2.5185174949008873e-05 50 0.0001525341767807124 51 0.0010444894271053587 
		52 0.49938889561058253 53 0.49938889561058253
		5 50 0.0018678578198569429 51 0.010756254162323901 52 0.49351233128791511 
		53 0.49351233128791533 57 0.00035122544198859366
		5 50 0.014593713458196669 51 0.053640242622088614 52 0.4617323903853145 
		53 0.46173239038531472 57 0.0083012631490854867
		5 50 0.012643042003332437 51 0.038498791965373348 52 0.47044824154960013 
		53 0.47044824154960035 57 0.0079616829320935997
		5 50 0.01348652012884587 51 0.040423425295096523 52 0.46833705401685016 
		53 0.46833705401685016 57 0.0094159465423572872
		5 50 0.013557145555195958 51 0.040612139970946086 52 0.46799949497157411 
		53 0.46799949497157411 57 0.00983172453070978
		5 50 0.013524901461714712 51 0.040533406627906436 52 0.46790531007114033 
		53 0.46790531007114033 57 0.010131071768098137
		5 50 0.013225719641093456 51 0.039874003287138887 52 0.46838191441270743 
		53 0.46838191441270743 57 0.010136448246352832;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 -0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 -0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 -0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 -0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 -0 0.210011846539538 0.045642596473303459 -0.97663287764657492 -0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 -0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 -0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 -0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 -0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 -0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 -0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 -0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 -0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 -0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 -0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 -0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 -0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 -0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 -0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 -0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 -0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 -0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 -0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 -0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 -0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 -0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 -0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 -0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 -0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 -0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 -0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 -0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 -0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 -0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 -0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 -0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 -0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 -0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 -0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 -0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 -0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 -0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 -0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 -0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 -0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 -0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 -0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 -0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 -0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 -0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 -0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 -0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 -0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 -0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 -0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 -0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 -0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 -0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 -0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 -0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 -0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 -0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 -0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 -0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 -0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 -0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 -0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 -0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 -0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924785605262508 0.69647275897298966 0.6375904212684681 -0
		 0.89339606825899753 0.44836933267261586 -0.028432494404777593 0 -0.3056784495251747 0.56025943769584596 -0.76985066601817032 0
		 -3.5395339858223207 -2.4005302806614877 -1.4268589866057155 1;
	setAttr ".pm[32]" -type "matrix" -0.27889487958311754 0.70693339335951921 0.6499714020597479 -0
		 0.8885321944844633 0.44672740782126169 -0.10461913049686476 0 -0.36431879653257332 0.54834277642227769 -0.75272306596687089 0
		 -4.0483566124710331 -2.4178888719510168 -1.0785179654948196 1;
	setAttr ".pm[33]" -type "matrix" -0.23031896582471262 0.65282056315424064 0.72164983635030056 -0
		 0.83303853409609785 0.51558677430374356 -0.20054196287581566 0 -0.50299102844132282 0.55497350430992753 -0.66257409760833519 0
		 -4.4246285576916371 -2.6889499794631448 -0.5852216413243152 1;
	setAttr ".pm[34]" -type "matrix" -0.43594205479935338 0.59749644125918966 0.67301747937176337 -0
		 0.70084734239732094 0.69452627708497583 -0.16262303985934928 0 -0.56459501194389816 0.40078828965064228 -0.72152700529292924 0
		 -3.9504407340550634 -3.7708443804080867 -0.80903142183858512 1;
	setAttr ".pm[35]" -type "matrix" -0.80828666278327432 0.25069034959079767 0.53275418289181176 -0
		 0.21819681986783124 0.96794042106865841 -0.12442463205086605 0 -0.54686636262092747 0.015674497869846715 -0.83707316977088997 0
		 -1.2782210087401189 -5.4701710515155018 -1.0637098088558508 1;
	setAttr ".pm[36]" -type "matrix" -0.82004746228088032 -0.20903382553540736 0.53275418289181176 -0
		 -0.32022389661991219 0.93913532942412847 -0.12442463205086607 0 -0.47431931822375606 -0.27263472414471851 -0.83707316977088997 0
		 1.4741587162838448 -5.4790258078135139 -1.0637098088558503 1;
	setAttr ".pm[37]" -type "matrix" -0.68115617672397932 -0.58224855063069902 0.44386133893280488 -0
		 -0.71347233192191795 0.66391571242427372 -0.22399365700409787 0 -0.16426653491405938 -0.46925744755370707 -0.86764851951853672 0
		 3.7155105234907788 -4.253503924807462 -0.56138912952764053 1;
	setAttr ".pm[38]" -type "matrix" -0.50408144903854235 -0.80314783289629765 0.31757747283015064 0
		 -0.83807468363902604 0.36604708025856952 -0.40452485668685773 0 0.20864495531536334 -0.47006711600383 -0.85761540860300089 -0
		 4.7675519738061451 -2.6983875616478876 0.40050578146566135 1;
	setAttr ".pm[39]" -type "matrix" -0.13887806920042897 -0.97362021202337345 0.18104299112289102 0
		 -0.8442227548036797 0.02082911068982167 -0.53558761040520475 0 0.51768795829809233 -0.22722198592441178 -0.82484504420267912 -0
		 5.131402903469473 -0.54383199739958166 1.1062769262428087 1;
	setAttr ".pm[40]" -type "matrix" -0.44544499269810256 0.31790426804465338 -0.83696812056325143 0
		 -0.53604557662551799 0.65406162136325452 0.53372140226890541 0 0.71710103769301836 0.68639658494099753 -0.12093729747655504 -0
		 3.5487087028311417 -1.8700671363062362 -2.7925193128695747 1;
	setAttr ".pm[41]" -type "matrix" -0.052113655857806661 -0.12229876297960356 -0.99112419980888034 0
		 -0.12985132476009162 0.98487688829382625 -0.11470025441436067 0 0.99016301704880072 0.12272134076161549 -0.067206191608274221 -0
		 1.5808752410933884 -4.2107979689235933 0.024886527691079015 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923738209327 0.15316129470954071 0.84469936689614911 -0
		 -0.35222855576255746 0.93486282127867992 0.044345799082775778 0 -0.78288597326640097 -0.32027039075406954 0.53340081521212113 -0
		 1.1996855435952647 -4.1723182522672628 0.61489411505153346 1;
	setAttr ".pm[43]" -type "matrix" -0.73333548538209525 0.11850973006940393 0.66945837044455869 -0
		 0.055614852963414348 0.99184695892173957 -0.11465861593249307 0 -0.6775884104744303 -0.04685140293069355 -0.73394747225817225 0
		 -1.618463936552093 -4.150962652048455 0.6167161736380613 1;
	setAttr ".pm[44]" -type "matrix" 0.7178746917702189 0.19100109203229435 -0.6694583704445588 -0
		 -0.15418153848813718 0.98136713567445111 0.11465861593249313 0 0.67888436431047972 0.020907602937564346 0.73394747225817203 -0
		 2.9878104727393069 -3.9063461234579986 -0.61671617363806241 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497183340853 0.012292740621888149 -0.5042589919324536 -0
		 0.11820591039161055 0.96693328393588907 0.22598094425293511 -0 0.49036272815663917 -0.25473302287877969 0.83345994618206876 -0
		 -0.31526849647608046 -4.1175003638789578 -0.8411184408836696 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581191388532 0.14817028233168023 -0.5042589919324536 -0
		 -0.035601728897875065 0.97348093444814543 0.22598094425293513 0 0.52437017498182203 -0.17429984997043529 0.83345994618206876 -0
		 -0.54266112802664046 -4.2561403950661756 -0.84111844088366872 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227101337457 0.54496457952035493 -0.34985229130234941 -0
		 0.62286062490543848 0.76461427634874546 -0.16555860094266003 -0 0.17727848319440126 -0.34406193551726616 -0.92205950129284275 -0
		 -2.7951587350455624 -5.0172514607060918 -0.72188543037675135 1;
	setAttr ".pm[48]" -type "matrix" -0.63784894397210701 0.68611376530730284 -0.34985229130234935 -0
		 0.76296721301434756 0.62487709313034345 -0.16555860094265998 -0 0.10502264774222436 -0.37252720643841247 -0.92205950129284275 -0
		 -4.1298506854570984 -4.2789178555654228 -0.72188543037675157 1;
	setAttr ".pm[49]" -type "matrix" -0.43115001004128573 0.83169287787734247 -0.34985229130234941 -0
		 0.90227887362996351 0.39809946477601987 -0.16555860094266009 -0 0.0015821006427817763 -0.3870449237919949 -0.92205950129284286 -0
		 -5.4553896063024494 -2.9266921950579188 -0.72188543037675157 1;
	setAttr ".pm[50]" -type "matrix" -0.28599063606040587 0.89208336513818109 -0.34985229130234941 -0
		 0.95614812680294525 0.24160113672151495 -0.16555860094266009 0 -0.063167362593223475 -0.38185882257532194 -0.92205950129284286 0
		 -6.1336373055839015 -1.9280906660343249 -0.72188543037675168 1;
	setAttr ".pm[51]" -type "matrix" -0.10207338912265439 0.93122736080052537 -0.34985229130234935 -0
		 0.98513663428464682 0.045783855716037589 -0.16555860094266003 0 -0.138155112186749 -0.3615514362469906 -0.92205950129284264 0
		 -6.7508444217482166 -0.59181550033660835 -0.72188543037675135 1;
	setAttr ".pm[52]" -type "matrix" 0.23188992655137963 -0.90765105422430503 0.34985229130234929 -0
		 0.93832475256335257 0.30354078536636891 0.16555860094266009 0 -0.25646387794564546 0.28988369285745602 0.92205950129284264 -0
		 -6.7512693582381997 -1.903683870567642 0.72188543037675112 1;
	setAttr ".pm[53]" -type "matrix" 0.93511716042662907 -0.056207388714783812 0.34985229130234935 -0
		 -0.0026622692766375008 0.9861963607599693 0.16555860094266006 0 -0.35432867312417338 -0.15574808980420141 0.92205950129284275 -0
		 -0.34546931532217812 -7.3149787736033653 0.72188543037675168 1;
	setAttr ".pm[54]" -type "matrix" -0.39955119757237006 0.88654287775749618 -0.23323929003481172 -0
		 0.9138291243102904 0.40534605666864759 -0.024716510786627031 -0 0.072630379874905088 -0.22301636765187308 -0.9721052040178535 -0
		 -4.5278240663455414 -3.3954815719514109 -1.022056662989109 1;
	setAttr ".pm[55]" -type "matrix" -0.32480993554795584 0.91656856773150952 -0.23323929003481172 -0
		 0.94424079275899342 0.32832669611897614 -0.024716510786627038 -0 0.053924308611245898 -0.22826222040059005 -0.97210520401785339 -0
		 -5.2848407562928594 -2.9682891152938393 -1.022056662989109 1;
	setAttr ".pm[56]" -type "matrix" -0.20311030386251164 0.95097089232475285 -0.23323929003481175 -0
		 0.97886549333733408 0.20300600988146297 -0.024716510786627035 -0 0.02384429529963901 -0.23333007072186832 -0.97210520401785372 -0
		 -6.0531111964851538 -2.201331097817814 -1.0220566629891092 1;
	setAttr ".pm[57]" -type "matrix" 0.055141316109679081 -0.97085471046998095 0.23323929003481164 -0
		 0.99773223295074775 0.062605793866458606 0.024716510786627031 0 -0.038598271837057808 0.23134745672386586 0.97210520401785361 -0
		 -6.8860135218368184 0.39760004128751308 1.0220566629891104 1;
	setAttr ".pm[58]" -type "matrix" 0.28391908849808628 -0.93004805508665722 0.23323929003481161 -0
		 0.95438699314136222 0.29754757840910812 0.024716510786627038 0 -0.092387328725348924 0.21558305548535747 0.97210520401785361 -0
		 -7.2628020126628208 -1.3645944917354262 1.0220566629891112 1;
	setAttr ".pm[59]" -type "matrix" 0.55092252852547929 -0.8013013173252308 0.23323929003481161 -0
		 0.82040360957422054 0.57125039299078328 0.024716510786627056 0 -0.15304340874628516 0.17773347282019183 0.9721052040178535 -0
		 -6.9115203688474454 -3.6147653105046995 1.0220566629891117 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801929825545 -0.52562566535849164 0.23323929003481164 -0
		 0.53537162742211097 0.84425488725025144 0.024716510786627042 0 -0.20990504293822981 0.10464867543599525 0.9721052040178535 -0
		 -5.4326010176921917 -6.2006165117325418 1.0220566629891132 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862701361126 0.001203088118692175 0.23323929003481167 -0
		 -0.0071651765168071974 0.99966882233068455 0.024716510786627059 0 -0.23313231024988207 -0.025705996167453497 0.97210520401785372 -0
		 -1.6152689933561759 -8.4165599952487824 1.0220566629891152 1;
	setAttr ".gm" -type "matrix" -0.055017241492530081 0.066556389810669941 0.011179860532662641 0
		 -0.87572698674973737 -0.80014246005590273 0.45389746582147278 0 0.030828535689398012 0.011953158232430278 0.080550372830453118 0
		 0.53227239508200885 6.0818521527156975 -2.1000696672499459 1;
	setAttr -s 7 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 7 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 7 ".ifcl";
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "A1AD0CE6-E147-5E8C-1C50-F0AF6FA06A30";
	setAttr ".sst" -type "string" "";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "BE655725-384B-DCA8-812B-E8AFAB4627D3";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 976\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 976\n            -height 704\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 976\n            -height 704\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1966\n            -height 1500\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1966\\n    -height 1500\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1966\\n    -height 1500\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "EA39BEA3-134B-2834-F196-19A85156DF9D";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 24 -ast 0 -aet 24 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 3;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 33 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 14 ".gn";
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
	setAttr -s 4 ".sol";
connectAttr "modelRN.phl[1]" "skinCluster1.orggeom[0]";
connectAttr "modelRN.phl[2]" "tweak1.ip[0].ig";
connectAttr "skinCluster2.og[0]" "modelRN.phl[3]";
connectAttr "skinCluster3.og[0]" "modelRN.phl[4]";
connectAttr "skinCluster4.og[0]" "modelRN.phl[5]";
connectAttr "modelRN.phl[6]" "skinCluster4.orggeom[0]";
connectAttr "modelRN.phl[7]" "skinCluster5.ip[0].ig";
connectAttr "modelRN.phl[8]" "skinCluster5.orggeom[0]";
connectAttr "modelRN.phl[9]" "skinCluster6.ip[0].ig";
connectAttr "modelRN.phl[10]" "skinCluster6.orggeom[0]";
connectAttr "skinCluster7.og[0]" "modelRN.phl[11]";
connectAttr "modelRN.phl[12]" "skinCluster7.orggeom[0]";
connectAttr "skinCluster8.og[0]" "modelRN.phl[13]";
connectAttr "modelRN.phl[14]" "skinCluster8.orggeom[0]";
connectAttr "modelRN.phl[15]" "skinCluster9.ip[0].ig";
connectAttr "modelRN.phl[16]" "skinCluster9.orggeom[0]";
connectAttr "modelRN.phl[17]" "skinCluster10.orggeom[0]";
connectAttr "modelRN.phl[18]" "skinCluster10.ip[0].ig";
connectAttr "modelRN.phl[19]" "skinCluster11.orggeom[0]";
connectAttr "modelRN.phl[20]" "skinCluster11.ip[0].ig";
connectAttr "modelRN.phl[21]" "skinCluster12.orggeom[0]";
connectAttr "modelRN.phl[22]" "skinCluster12.ip[0].ig";
connectAttr "modelRN.phl[23]" "skinCluster13.orggeom[0]";
connectAttr "modelRN.phl[24]" "skinCluster13.ip[0].ig";
connectAttr "modelRN.phl[25]" "skinCluster14.orggeom[0]";
connectAttr "modelRN.phl[26]" "skinCluster14.ip[0].ig";
connectAttr "modelRN.phl[27]" "skinCluster15.orggeom[0]";
connectAttr "modelRN.phl[28]" "skinCluster15.ip[0].ig";
connectAttr "modelRN.phl[29]" "skinCluster16.orggeom[0]";
connectAttr "modelRN.phl[30]" "skinCluster16.ip[0].ig";
connectAttr "modelRN.phl[31]" "skinCluster17.orggeom[0]";
connectAttr "modelRN.phl[32]" "skinCluster17.ip[0].ig";
connectAttr "modelRN.phl[33]" "skinCluster18.orggeom[0]";
connectAttr "modelRN.phl[34]" "skinCluster18.ip[0].ig";
connectAttr "modelRN.phl[35]" "skinCluster19.orggeom[0]";
connectAttr "modelRN.phl[36]" "skinCluster19.ip[0].ig";
connectAttr "modelRN.phl[37]" "thorns_bigTopShapeOrig.i";
connectAttr "modelRN.phl[38]" "thorns_bigTopShapeOrig.uvst[0].uvtw";
connectAttr "modelRN.phl[39]" "shield_BigShapeDeformed.uvst[0].uvtw";
connectAttr "modelRN.phl[40]" "rightStamenShapeDeformed.uvst[0].uvtw";
connectAttr "modelRN.phl[41]" "leftStamenShapeDeformed.uvst[0].uvtw";
connectAttr "modelRN.phl[42]" "leftStamen_spikeShape1Deformed.uvst[0].uvtw";
connectAttr "modelRN.phl[43]" "midStamenShapeDeformed.uvst[0].uvtw";
connectAttr "modelRN.phl[44]" "skinCluster4.ip[0].ig";
connectAttr "modelRN.phl[45]" "thorns_bigBottomShapeDeformed.uvst[0].uvtw";
connectAttr "modelRN.phl[46]" "skinCluster7.ip[0].ig";
connectAttr "modelRN.phl[47]" "skinCluster8.ip[0].ig";
connectAttr "modelRN.phl[48]" "thorn_smallBottomShapeDeformed.uvst[0].uvtw";
connectAttr "modelRN.phl[49]" "rightStamen_spikeShape1Deformed.uvst[0].uvtw";
connectAttr "modelRN.phl[50]" "midStamen_spikeShape1Deformed.uvst[0].uvtw";
connectAttr "modelRN.phl[51]" "rightStamen_spikeShape2Deformed.uvst[0].uvtw";
connectAttr "stem.s" "stem1.is";
connectAttr "stem1.s" "stem2.is";
connectAttr "stem2.s" "stem3.is";
connectAttr "stem3.s" "stem4.is";
connectAttr "stem4.s" "stem5.is";
connectAttr "stem5.s" "bigShieldStem.is";
connectAttr "bigShieldStem.s" "bigShieldStem1.is";
connectAttr "bigShieldStem1.s" "bigShieldStem2.is";
connectAttr "bigShieldStem2.s" "bigShieldStem3.is";
connectAttr "bigShieldStem3.s" "bigShieldStem4.is";
connectAttr "bigShieldStem4.s" "bigShieldStem5.is";
connectAttr "bigShieldStem5.s" "bigShieldStem6.is";
connectAttr "bigShieldStem6.s" "bigShieldStem7.is";
connectAttr "bigShieldStem7.s" "bigShieldStem8.is";
connectAttr "bigShieldStem8.s" "bigShieldLeft.is";
connectAttr "bigShieldLeft.s" "bigShieldLeft1.is";
connectAttr "bigShieldStem8.s" "bigShieldRight.is";
connectAttr "bigShieldRight.s" "bigShieldRight1.is";
connectAttr "bigShieldStem8.tx" "effector3.tx";
connectAttr "bigShieldStem8.ty" "effector3.ty";
connectAttr "bigShieldStem8.tz" "effector3.tz";
connectAttr "bigShieldStem8.opm" "effector3.opm";
connectAttr "bigShieldStem.s" "rightLeaf.is";
connectAttr "rightLeaf.s" "rightLeaf1.is";
connectAttr "rightLeaf1.s" "rightLeaf2.is";
connectAttr "rightLeaf2.s" "rightLeaf3.is";
connectAttr "rightLeaf3.s" "rightLeaf4.is";
connectAttr "rightLeaf4.s" "rightLeaf5.is";
connectAttr "rightLeaf5.s" "rightLeaf6.is";
connectAttr "rightLeaf6.s" "rightLeaf7.is";
connectAttr "rightLeaf7.s" "rightLeaf8.is";
connectAttr "rightLeaf8.s" "rightLeaf9.is";
connectAttr "rightLeaf9.s" "rightLeaf10.is";
connectAttr "rightLeaf10.s" "rightLeaf11.is";
connectAttr "stem5.s" "smallShieldStem.is";
connectAttr "smallShieldStem.s" "smallShieldStem1.is";
connectAttr "smallShieldStem1.s" "smallShieldStem2.is";
connectAttr "smallShieldStem2.s" "smallShieldStem3.is";
connectAttr "smallShieldStem3.s" "smallShieldStem4.is";
connectAttr "smallShieldStem4.s" "smallShieldStem5.is";
connectAttr "smallShieldStem5.s" "smallShieldStem6.is";
connectAttr "smallShieldStem6.s" "smallShieldStem7.is";
connectAttr "smallShieldStem7.s" "smallShieldStem8.is";
connectAttr "smallShieldStem8.s" "smallShieldStem9.is";
connectAttr "smallShieldStem9.s" "smallShieldStem10.is";
connectAttr "smallShieldStem10.s" "smallShieldStem11.is";
connectAttr "smallShieldStem11.s" "smallShieldLeft.is";
connectAttr "smallShieldLeft.s" "smallShieldLeft1.is";
connectAttr "smallShieldStem11.s" "smallShieldRight.is";
connectAttr "smallShieldRight.s" "smallShieldRight1.is";
connectAttr "smallShieldStem10.tx" "effector2.tx";
connectAttr "smallShieldStem10.ty" "effector2.ty";
connectAttr "smallShieldStem10.tz" "effector2.tz";
connectAttr "smallShieldStem10.opm" "effector2.opm";
connectAttr "smallShieldStem5.s" "leftLeaf.is";
connectAttr "leftLeaf.s" "leftLeaf1.is";
connectAttr "leftLeaf1.s" "leftLeaf2.is";
connectAttr "leftLeaf2.s" "leftLeaf3.is";
connectAttr "leftLeaf3.s" "leftLeaf4.is";
connectAttr "leftLeaf4.s" "leftLeaf5.is";
connectAttr "leftLeaf5.s" "leftLeaf6.is";
connectAttr "smallShieldStem3.s" "midLeaf.is";
connectAttr "midLeaf.s" "midLeaf1.is";
connectAttr "midLeaf1.s" "midLeaf2.is";
connectAttr "midLeaf2.s" "midLeaf3.is";
connectAttr "midLeaf3.s" "midLeaf4.is";
connectAttr "midLeaf4.s" "midLeaf5.is";
connectAttr "midLeaf5.s" "midLeaf6.is";
connectAttr "midLeaf6.s" "midLeaf7.is";
connectAttr "stem5.tx" "effector1.tx";
connectAttr "stem5.ty" "effector1.ty";
connectAttr "stem5.tz" "effector1.tz";
connectAttr "stem5.opm" "effector1.opm";
connectAttr "stem1.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "stem5.msg" "ikHandle2.hsj";
connectAttr "effector2.hp" "ikHandle2.hee";
connectAttr "ikRPsolver.msg" "ikHandle2.hsv";
connectAttr "stem5.msg" "ikHandle3.hsj";
connectAttr "effector3.hp" "ikHandle3.hee";
connectAttr "ikRPsolver.msg" "ikHandle3.hsv";
connectAttr "skinCluster19.og[0]" "leftStamen_pointShapeDeformed.i";
connectAttr "skinCluster18.og[0]" "leftStamenShapeDeformed.i";
connectAttr "skinCluster17.og[0]" "leftStamen_spikeShape1Deformed.i";
connectAttr "skinCluster16.og[0]" "midStamen_spikeShape1Deformed.i";
connectAttr "skinCluster15.og[0]" "midStamenShapeDeformed.i";
connectAttr "skinCluster14.og[0]" "midStamen_pointShapeDeformed.i";
connectAttr "skinCluster13.og[0]" "rightStamen_pointShapeDeformed.i";
connectAttr "skinCluster12.og[0]" "rightStamen_spikeShape2Deformed.i";
connectAttr "skinCluster11.og[0]" "rightStamen_spikeShape1Deformed.i";
connectAttr "skinCluster10.og[0]" "rightStamenShapeDeformed.i";
connectAttr "skinCluster9.og[0]" "thorn_smallBottomShapeDeformed.i";
connectAttr "skinCluster6.og[0]" "shield_BigShapeDeformed.i";
connectAttr "skinCluster5.og[0]" "thorns_bigBottomShapeDeformed.i";
connectAttr "skinCluster1.og[0]" "stemShapeDeformed.i";
connectAttr "tweak1.vl[0].vt[0]" "stemShapeDeformed.twl";
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
connectAttr "modelRNfosterParent1.msg" "modelRN.fp";
connectAttr "tweak1.og[0]" "skinCluster1.ip[0].ig";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "stem.wm" "skinCluster1.ma[0]";
connectAttr "stem1.wm" "skinCluster1.ma[1]";
connectAttr "stem2.wm" "skinCluster1.ma[2]";
connectAttr "stem3.wm" "skinCluster1.ma[3]";
connectAttr "stem4.wm" "skinCluster1.ma[4]";
connectAttr "stem5.wm" "skinCluster1.ma[5]";
connectAttr "bigShieldStem.wm" "skinCluster1.ma[6]";
connectAttr "bigShieldStem1.wm" "skinCluster1.ma[7]";
connectAttr "bigShieldStem2.wm" "skinCluster1.ma[8]";
connectAttr "bigShieldStem3.wm" "skinCluster1.ma[9]";
connectAttr "bigShieldStem4.wm" "skinCluster1.ma[10]";
connectAttr "bigShieldStem5.wm" "skinCluster1.ma[11]";
connectAttr "bigShieldStem6.wm" "skinCluster1.ma[12]";
connectAttr "bigShieldStem7.wm" "skinCluster1.ma[13]";
connectAttr "bigShieldStem8.wm" "skinCluster1.ma[14]";
connectAttr "bigShieldLeft.wm" "skinCluster1.ma[15]";
connectAttr "bigShieldRight.wm" "skinCluster1.ma[17]";
connectAttr "rightLeaf.wm" "skinCluster1.ma[19]";
connectAttr "rightLeaf1.wm" "skinCluster1.ma[20]";
connectAttr "smallShieldStem.wm" "skinCluster1.ma[31]";
connectAttr "smallShieldStem1.wm" "skinCluster1.ma[32]";
connectAttr "smallShieldStem2.wm" "skinCluster1.ma[33]";
connectAttr "smallShieldStem3.wm" "skinCluster1.ma[34]";
connectAttr "smallShieldStem4.wm" "skinCluster1.ma[35]";
connectAttr "smallShieldStem5.wm" "skinCluster1.ma[36]";
connectAttr "smallShieldStem6.wm" "skinCluster1.ma[37]";
connectAttr "smallShieldStem7.wm" "skinCluster1.ma[38]";
connectAttr "smallShieldStem8.wm" "skinCluster1.ma[39]";
connectAttr "smallShieldStem9.wm" "skinCluster1.ma[40]";
connectAttr "smallShieldStem10.wm" "skinCluster1.ma[41]";
connectAttr "smallShieldStem11.wm" "skinCluster1.ma[42]";
connectAttr "smallShieldLeft.wm" "skinCluster1.ma[43]";
connectAttr "smallShieldRight.wm" "skinCluster1.ma[45]";
connectAttr "leftLeaf.wm" "skinCluster1.ma[47]";
connectAttr "leftLeaf1.wm" "skinCluster1.ma[48]";
connectAttr "midLeaf.wm" "skinCluster1.ma[54]";
connectAttr "midLeaf1.wm" "skinCluster1.ma[55]";
connectAttr "stem.liw" "skinCluster1.lw[0]";
connectAttr "stem1.liw" "skinCluster1.lw[1]";
connectAttr "stem2.liw" "skinCluster1.lw[2]";
connectAttr "stem3.liw" "skinCluster1.lw[3]";
connectAttr "stem4.liw" "skinCluster1.lw[4]";
connectAttr "stem5.liw" "skinCluster1.lw[5]";
connectAttr "bigShieldStem.liw" "skinCluster1.lw[6]";
connectAttr "bigShieldStem1.liw" "skinCluster1.lw[7]";
connectAttr "bigShieldStem2.liw" "skinCluster1.lw[8]";
connectAttr "bigShieldStem3.liw" "skinCluster1.lw[9]";
connectAttr "bigShieldStem4.liw" "skinCluster1.lw[10]";
connectAttr "bigShieldStem5.liw" "skinCluster1.lw[11]";
connectAttr "bigShieldStem6.liw" "skinCluster1.lw[12]";
connectAttr "bigShieldStem7.liw" "skinCluster1.lw[13]";
connectAttr "bigShieldStem8.liw" "skinCluster1.lw[14]";
connectAttr "bigShieldLeft.liw" "skinCluster1.lw[15]";
connectAttr "bigShieldRight.liw" "skinCluster1.lw[17]";
connectAttr "rightLeaf.liw" "skinCluster1.lw[19]";
connectAttr "rightLeaf1.liw" "skinCluster1.lw[20]";
connectAttr "smallShieldStem.liw" "skinCluster1.lw[31]";
connectAttr "smallShieldStem1.liw" "skinCluster1.lw[32]";
connectAttr "smallShieldStem2.liw" "skinCluster1.lw[33]";
connectAttr "smallShieldStem3.liw" "skinCluster1.lw[34]";
connectAttr "smallShieldStem4.liw" "skinCluster1.lw[35]";
connectAttr "smallShieldStem5.liw" "skinCluster1.lw[36]";
connectAttr "smallShieldStem6.liw" "skinCluster1.lw[37]";
connectAttr "smallShieldStem7.liw" "skinCluster1.lw[38]";
connectAttr "smallShieldStem8.liw" "skinCluster1.lw[39]";
connectAttr "smallShieldStem9.liw" "skinCluster1.lw[40]";
connectAttr "smallShieldStem10.liw" "skinCluster1.lw[41]";
connectAttr "smallShieldStem11.liw" "skinCluster1.lw[42]";
connectAttr "smallShieldLeft.liw" "skinCluster1.lw[43]";
connectAttr "smallShieldRight.liw" "skinCluster1.lw[45]";
connectAttr "leftLeaf.liw" "skinCluster1.lw[47]";
connectAttr "leftLeaf1.liw" "skinCluster1.lw[48]";
connectAttr "midLeaf.liw" "skinCluster1.lw[54]";
connectAttr "midLeaf1.liw" "skinCluster1.lw[55]";
connectAttr "stem.obcc" "skinCluster1.ifcl[0]";
connectAttr "stem1.obcc" "skinCluster1.ifcl[1]";
connectAttr "stem2.obcc" "skinCluster1.ifcl[2]";
connectAttr "stem3.obcc" "skinCluster1.ifcl[3]";
connectAttr "stem4.obcc" "skinCluster1.ifcl[4]";
connectAttr "stem5.obcc" "skinCluster1.ifcl[5]";
connectAttr "bigShieldStem.obcc" "skinCluster1.ifcl[6]";
connectAttr "bigShieldStem1.obcc" "skinCluster1.ifcl[7]";
connectAttr "bigShieldStem2.obcc" "skinCluster1.ifcl[8]";
connectAttr "bigShieldStem3.obcc" "skinCluster1.ifcl[9]";
connectAttr "bigShieldStem4.obcc" "skinCluster1.ifcl[10]";
connectAttr "bigShieldStem5.obcc" "skinCluster1.ifcl[11]";
connectAttr "bigShieldStem6.obcc" "skinCluster1.ifcl[12]";
connectAttr "bigShieldStem7.obcc" "skinCluster1.ifcl[13]";
connectAttr "bigShieldStem8.obcc" "skinCluster1.ifcl[14]";
connectAttr "bigShieldLeft.obcc" "skinCluster1.ifcl[15]";
connectAttr "bigShieldRight.obcc" "skinCluster1.ifcl[17]";
connectAttr "rightLeaf.obcc" "skinCluster1.ifcl[19]";
connectAttr "rightLeaf1.obcc" "skinCluster1.ifcl[20]";
connectAttr "smallShieldStem.obcc" "skinCluster1.ifcl[31]";
connectAttr "smallShieldStem1.obcc" "skinCluster1.ifcl[32]";
connectAttr "smallShieldStem2.obcc" "skinCluster1.ifcl[33]";
connectAttr "smallShieldStem3.obcc" "skinCluster1.ifcl[34]";
connectAttr "smallShieldStem4.obcc" "skinCluster1.ifcl[35]";
connectAttr "smallShieldStem5.obcc" "skinCluster1.ifcl[36]";
connectAttr "smallShieldStem6.obcc" "skinCluster1.ifcl[37]";
connectAttr "smallShieldStem7.obcc" "skinCluster1.ifcl[38]";
connectAttr "smallShieldStem8.obcc" "skinCluster1.ifcl[39]";
connectAttr "smallShieldStem9.obcc" "skinCluster1.ifcl[40]";
connectAttr "smallShieldStem10.obcc" "skinCluster1.ifcl[41]";
connectAttr "smallShieldStem11.obcc" "skinCluster1.ifcl[42]";
connectAttr "smallShieldLeft.obcc" "skinCluster1.ifcl[43]";
connectAttr "smallShieldRight.obcc" "skinCluster1.ifcl[45]";
connectAttr "leftLeaf.obcc" "skinCluster1.ifcl[47]";
connectAttr "leftLeaf1.obcc" "skinCluster1.ifcl[48]";
connectAttr "midLeaf.obcc" "skinCluster1.ifcl[54]";
connectAttr "midLeaf1.obcc" "skinCluster1.ifcl[55]";
connectAttr "stem.msg" "bindPose1.m[0]";
connectAttr "stem1.msg" "bindPose1.m[1]";
connectAttr "stem2.msg" "bindPose1.m[2]";
connectAttr "stem3.msg" "bindPose1.m[3]";
connectAttr "stem4.msg" "bindPose1.m[4]";
connectAttr "stem5.msg" "bindPose1.m[5]";
connectAttr "bigShieldStem.msg" "bindPose1.m[6]";
connectAttr "bigShieldStem1.msg" "bindPose1.m[7]";
connectAttr "bigShieldStem2.msg" "bindPose1.m[8]";
connectAttr "bigShieldStem3.msg" "bindPose1.m[9]";
connectAttr "bigShieldStem4.msg" "bindPose1.m[10]";
connectAttr "bigShieldStem5.msg" "bindPose1.m[11]";
connectAttr "bigShieldStem6.msg" "bindPose1.m[12]";
connectAttr "bigShieldStem7.msg" "bindPose1.m[13]";
connectAttr "bigShieldStem8.msg" "bindPose1.m[14]";
connectAttr "bigShieldLeft.msg" "bindPose1.m[15]";
connectAttr "bigShieldRight.msg" "bindPose1.m[17]";
connectAttr "rightLeaf.msg" "bindPose1.m[19]";
connectAttr "rightLeaf1.msg" "bindPose1.m[20]";
connectAttr "rightLeaf2.msg" "bindPose1.m[21]";
connectAttr "rightLeaf3.msg" "bindPose1.m[22]";
connectAttr "rightLeaf4.msg" "bindPose1.m[23]";
connectAttr "rightLeaf5.msg" "bindPose1.m[24]";
connectAttr "rightLeaf6.msg" "bindPose1.m[25]";
connectAttr "rightLeaf7.msg" "bindPose1.m[26]";
connectAttr "rightLeaf8.msg" "bindPose1.m[27]";
connectAttr "rightLeaf9.msg" "bindPose1.m[28]";
connectAttr "rightLeaf10.msg" "bindPose1.m[29]";
connectAttr "smallShieldStem.msg" "bindPose1.m[31]";
connectAttr "smallShieldStem1.msg" "bindPose1.m[32]";
connectAttr "smallShieldStem2.msg" "bindPose1.m[33]";
connectAttr "smallShieldStem3.msg" "bindPose1.m[34]";
connectAttr "smallShieldStem4.msg" "bindPose1.m[35]";
connectAttr "smallShieldStem5.msg" "bindPose1.m[36]";
connectAttr "smallShieldStem6.msg" "bindPose1.m[37]";
connectAttr "smallShieldStem7.msg" "bindPose1.m[38]";
connectAttr "smallShieldStem8.msg" "bindPose1.m[39]";
connectAttr "smallShieldStem9.msg" "bindPose1.m[40]";
connectAttr "smallShieldStem10.msg" "bindPose1.m[41]";
connectAttr "smallShieldStem11.msg" "bindPose1.m[42]";
connectAttr "smallShieldLeft.msg" "bindPose1.m[43]";
connectAttr "smallShieldRight.msg" "bindPose1.m[45]";
connectAttr "leftLeaf.msg" "bindPose1.m[47]";
connectAttr "leftLeaf1.msg" "bindPose1.m[48]";
connectAttr "leftLeaf2.msg" "bindPose1.m[49]";
connectAttr "leftLeaf3.msg" "bindPose1.m[50]";
connectAttr "leftLeaf4.msg" "bindPose1.m[51]";
connectAttr "leftLeaf5.msg" "bindPose1.m[52]";
connectAttr "midLeaf.msg" "bindPose1.m[54]";
connectAttr "midLeaf1.msg" "bindPose1.m[55]";
connectAttr "midLeaf2.msg" "bindPose1.m[56]";
connectAttr "midLeaf3.msg" "bindPose1.m[57]";
connectAttr "midLeaf4.msg" "bindPose1.m[58]";
connectAttr "midLeaf5.msg" "bindPose1.m[59]";
connectAttr "midLeaf6.msg" "bindPose1.m[60]";
connectAttr "bigShieldLeft1.msg" "bindPose1.m[62]";
connectAttr "bigShieldRight1.msg" "bindPose1.m[63]";
connectAttr "rightLeaf11.msg" "bindPose1.m[64]";
connectAttr "smallShieldRight1.msg" "bindPose1.m[66]";
connectAttr "smallShieldLeft1.msg" "bindPose1.m[78]";
connectAttr "midLeaf7.msg" "bindPose1.m[96]";
connectAttr "leftLeaf6.msg" "bindPose1.m[98]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[14]" "bindPose1.p[17]";
connectAttr "bindPose1.m[6]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[5]" "bindPose1.p[31]";
connectAttr "bindPose1.m[31]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[33]" "bindPose1.p[34]";
connectAttr "bindPose1.m[34]" "bindPose1.p[35]";
connectAttr "bindPose1.m[35]" "bindPose1.p[36]";
connectAttr "bindPose1.m[36]" "bindPose1.p[37]";
connectAttr "bindPose1.m[37]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[39]" "bindPose1.p[40]";
connectAttr "bindPose1.m[40]" "bindPose1.p[41]";
connectAttr "bindPose1.m[41]" "bindPose1.p[42]";
connectAttr "bindPose1.m[42]" "bindPose1.p[43]";
connectAttr "bindPose1.m[42]" "bindPose1.p[45]";
connectAttr "bindPose1.m[36]" "bindPose1.p[47]";
connectAttr "bindPose1.m[47]" "bindPose1.p[48]";
connectAttr "bindPose1.m[48]" "bindPose1.p[49]";
connectAttr "bindPose1.m[49]" "bindPose1.p[50]";
connectAttr "bindPose1.m[50]" "bindPose1.p[51]";
connectAttr "bindPose1.m[51]" "bindPose1.p[52]";
connectAttr "bindPose1.m[34]" "bindPose1.p[54]";
connectAttr "bindPose1.m[54]" "bindPose1.p[55]";
connectAttr "bindPose1.m[55]" "bindPose1.p[56]";
connectAttr "bindPose1.m[56]" "bindPose1.p[57]";
connectAttr "bindPose1.m[57]" "bindPose1.p[58]";
connectAttr "bindPose1.m[58]" "bindPose1.p[59]";
connectAttr "bindPose1.m[59]" "bindPose1.p[60]";
connectAttr "bindPose1.m[15]" "bindPose1.p[62]";
connectAttr "bindPose1.m[17]" "bindPose1.p[63]";
connectAttr "bindPose1.m[29]" "bindPose1.p[64]";
connectAttr "bindPose1.m[45]" "bindPose1.p[66]";
connectAttr "bindPose1.m[43]" "bindPose1.p[78]";
connectAttr "bindPose1.m[60]" "bindPose1.p[96]";
connectAttr "bindPose1.m[52]" "bindPose1.p[98]";
connectAttr "stem.bps" "bindPose1.wm[0]";
connectAttr "stem1.bps" "bindPose1.wm[1]";
connectAttr "stem2.bps" "bindPose1.wm[2]";
connectAttr "stem3.bps" "bindPose1.wm[3]";
connectAttr "stem4.bps" "bindPose1.wm[4]";
connectAttr "stem5.bps" "bindPose1.wm[5]";
connectAttr "bigShieldStem.bps" "bindPose1.wm[6]";
connectAttr "bigShieldStem1.bps" "bindPose1.wm[7]";
connectAttr "bigShieldStem2.bps" "bindPose1.wm[8]";
connectAttr "bigShieldStem3.bps" "bindPose1.wm[9]";
connectAttr "bigShieldStem4.bps" "bindPose1.wm[10]";
connectAttr "bigShieldStem5.bps" "bindPose1.wm[11]";
connectAttr "bigShieldStem6.bps" "bindPose1.wm[12]";
connectAttr "bigShieldStem7.bps" "bindPose1.wm[13]";
connectAttr "bigShieldStem8.bps" "bindPose1.wm[14]";
connectAttr "bigShieldLeft.bps" "bindPose1.wm[15]";
connectAttr "bigShieldRight.bps" "bindPose1.wm[17]";
connectAttr "rightLeaf.bps" "bindPose1.wm[19]";
connectAttr "rightLeaf1.bps" "bindPose1.wm[20]";
connectAttr "rightLeaf2.bps" "bindPose1.wm[21]";
connectAttr "rightLeaf3.bps" "bindPose1.wm[22]";
connectAttr "rightLeaf4.bps" "bindPose1.wm[23]";
connectAttr "rightLeaf5.bps" "bindPose1.wm[24]";
connectAttr "rightLeaf6.bps" "bindPose1.wm[25]";
connectAttr "rightLeaf7.bps" "bindPose1.wm[26]";
connectAttr "rightLeaf8.bps" "bindPose1.wm[27]";
connectAttr "rightLeaf9.bps" "bindPose1.wm[28]";
connectAttr "rightLeaf10.bps" "bindPose1.wm[29]";
connectAttr "smallShieldStem.bps" "bindPose1.wm[31]";
connectAttr "smallShieldStem1.bps" "bindPose1.wm[32]";
connectAttr "smallShieldStem2.bps" "bindPose1.wm[33]";
connectAttr "smallShieldStem3.bps" "bindPose1.wm[34]";
connectAttr "smallShieldStem4.bps" "bindPose1.wm[35]";
connectAttr "smallShieldStem5.bps" "bindPose1.wm[36]";
connectAttr "smallShieldStem6.bps" "bindPose1.wm[37]";
connectAttr "smallShieldStem7.bps" "bindPose1.wm[38]";
connectAttr "smallShieldStem8.bps" "bindPose1.wm[39]";
connectAttr "smallShieldStem9.bps" "bindPose1.wm[40]";
connectAttr "smallShieldStem10.bps" "bindPose1.wm[41]";
connectAttr "smallShieldStem11.bps" "bindPose1.wm[42]";
connectAttr "smallShieldLeft.bps" "bindPose1.wm[43]";
connectAttr "smallShieldRight.bps" "bindPose1.wm[45]";
connectAttr "leftLeaf.bps" "bindPose1.wm[47]";
connectAttr "leftLeaf1.bps" "bindPose1.wm[48]";
connectAttr "leftLeaf2.bps" "bindPose1.wm[49]";
connectAttr "leftLeaf3.bps" "bindPose1.wm[50]";
connectAttr "leftLeaf4.bps" "bindPose1.wm[51]";
connectAttr "leftLeaf5.bps" "bindPose1.wm[52]";
connectAttr "midLeaf.bps" "bindPose1.wm[54]";
connectAttr "midLeaf1.bps" "bindPose1.wm[55]";
connectAttr "midLeaf2.bps" "bindPose1.wm[56]";
connectAttr "midLeaf3.bps" "bindPose1.wm[57]";
connectAttr "midLeaf4.bps" "bindPose1.wm[58]";
connectAttr "midLeaf5.bps" "bindPose1.wm[59]";
connectAttr "midLeaf6.bps" "bindPose1.wm[60]";
connectAttr "bigShieldLeft1.bps" "bindPose1.wm[62]";
connectAttr "bigShieldRight1.bps" "bindPose1.wm[63]";
connectAttr "rightLeaf11.bps" "bindPose1.wm[64]";
connectAttr "smallShieldRight1.bps" "bindPose1.wm[66]";
connectAttr "smallShieldLeft1.bps" "bindPose1.wm[78]";
connectAttr "midLeaf7.bps" "bindPose1.wm[96]";
connectAttr "leftLeaf6.bps" "bindPose1.wm[98]";
connectAttr "shield_bigShapeOrig.w" "skinCluster2.ip[0].ig";
connectAttr "shield_bigShapeOrig.o" "skinCluster2.orggeom[0]";
connectAttr "stem1.wm" "skinCluster2.ma[1]";
connectAttr "stem2.wm" "skinCluster2.ma[2]";
connectAttr "stem3.wm" "skinCluster2.ma[3]";
connectAttr "bigShieldStem2.wm" "skinCluster2.ma[8]";
connectAttr "bigShieldStem3.wm" "skinCluster2.ma[9]";
connectAttr "bigShieldStem4.wm" "skinCluster2.ma[10]";
connectAttr "bigShieldStem5.wm" "skinCluster2.ma[11]";
connectAttr "bigShieldStem6.wm" "skinCluster2.ma[12]";
connectAttr "bigShieldStem7.wm" "skinCluster2.ma[13]";
connectAttr "bigShieldStem8.wm" "skinCluster2.ma[14]";
connectAttr "bigShieldLeft.wm" "skinCluster2.ma[15]";
connectAttr "bigShieldLeft1.wm" "skinCluster2.ma[16]";
connectAttr "bigShieldRight.wm" "skinCluster2.ma[17]";
connectAttr "bigShieldRight1.wm" "skinCluster2.ma[18]";
connectAttr "rightLeaf10.wm" "skinCluster2.ma[29]";
connectAttr "rightLeaf11.wm" "skinCluster2.ma[30]";
connectAttr "smallShieldRight.wm" "skinCluster2.ma[45]";
connectAttr "smallShieldRight1.wm" "skinCluster2.ma[46]";
connectAttr "stem1.liw" "skinCluster2.lw[1]";
connectAttr "stem2.liw" "skinCluster2.lw[2]";
connectAttr "stem3.liw" "skinCluster2.lw[3]";
connectAttr "bigShieldStem2.liw" "skinCluster2.lw[8]";
connectAttr "bigShieldStem3.liw" "skinCluster2.lw[9]";
connectAttr "bigShieldStem4.liw" "skinCluster2.lw[10]";
connectAttr "bigShieldStem5.liw" "skinCluster2.lw[11]";
connectAttr "bigShieldStem6.liw" "skinCluster2.lw[12]";
connectAttr "bigShieldStem7.liw" "skinCluster2.lw[13]";
connectAttr "bigShieldStem8.liw" "skinCluster2.lw[14]";
connectAttr "bigShieldLeft.liw" "skinCluster2.lw[15]";
connectAttr "bigShieldLeft1.liw" "skinCluster2.lw[16]";
connectAttr "bigShieldRight.liw" "skinCluster2.lw[17]";
connectAttr "bigShieldRight1.liw" "skinCluster2.lw[18]";
connectAttr "rightLeaf10.liw" "skinCluster2.lw[29]";
connectAttr "rightLeaf11.liw" "skinCluster2.lw[30]";
connectAttr "smallShieldRight.liw" "skinCluster2.lw[45]";
connectAttr "smallShieldRight1.liw" "skinCluster2.lw[46]";
connectAttr "stem1.obcc" "skinCluster2.ifcl[1]";
connectAttr "stem2.obcc" "skinCluster2.ifcl[2]";
connectAttr "stem3.obcc" "skinCluster2.ifcl[3]";
connectAttr "bigShieldStem2.obcc" "skinCluster2.ifcl[8]";
connectAttr "bigShieldStem3.obcc" "skinCluster2.ifcl[9]";
connectAttr "bigShieldStem4.obcc" "skinCluster2.ifcl[10]";
connectAttr "bigShieldStem5.obcc" "skinCluster2.ifcl[11]";
connectAttr "bigShieldStem6.obcc" "skinCluster2.ifcl[12]";
connectAttr "bigShieldStem7.obcc" "skinCluster2.ifcl[13]";
connectAttr "bigShieldStem8.obcc" "skinCluster2.ifcl[14]";
connectAttr "bigShieldLeft.obcc" "skinCluster2.ifcl[15]";
connectAttr "bigShieldLeft1.obcc" "skinCluster2.ifcl[16]";
connectAttr "bigShieldRight.obcc" "skinCluster2.ifcl[17]";
connectAttr "bigShieldRight1.obcc" "skinCluster2.ifcl[18]";
connectAttr "rightLeaf10.obcc" "skinCluster2.ifcl[29]";
connectAttr "rightLeaf11.obcc" "skinCluster2.ifcl[30]";
connectAttr "smallShieldRight.obcc" "skinCluster2.ifcl[45]";
connectAttr "smallShieldRight1.obcc" "skinCluster2.ifcl[46]";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "thorns_bigTopShapeOrig.w" "skinCluster3.ip[0].ig";
connectAttr "thorns_bigTopShapeOrig.o" "skinCluster3.orggeom[0]";
connectAttr "bigShieldStem6.wm" "skinCluster3.ma[12]";
connectAttr "bigShieldStem7.wm" "skinCluster3.ma[13]";
connectAttr "bigShieldStem8.wm" "skinCluster3.ma[14]";
connectAttr "bigShieldLeft.wm" "skinCluster3.ma[15]";
connectAttr "bigShieldRight.wm" "skinCluster3.ma[17]";
connectAttr "bigShieldStem6.liw" "skinCluster3.lw[12]";
connectAttr "bigShieldStem7.liw" "skinCluster3.lw[13]";
connectAttr "bigShieldStem8.liw" "skinCluster3.lw[14]";
connectAttr "bigShieldLeft.liw" "skinCluster3.lw[15]";
connectAttr "bigShieldRight.liw" "skinCluster3.lw[17]";
connectAttr "bigShieldStem6.obcc" "skinCluster3.ifcl[12]";
connectAttr "bigShieldStem7.obcc" "skinCluster3.ifcl[13]";
connectAttr "bigShieldStem8.obcc" "skinCluster3.ifcl[14]";
connectAttr "bigShieldLeft.obcc" "skinCluster3.ifcl[15]";
connectAttr "bigShieldRight.obcc" "skinCluster3.ifcl[17]";
connectAttr "bindPose1.msg" "skinCluster3.bp";
connectAttr "bigShieldStem6.wm" "skinCluster4.ma[12]";
connectAttr "bigShieldStem7.wm" "skinCluster4.ma[13]";
connectAttr "bigShieldStem8.wm" "skinCluster4.ma[14]";
connectAttr "bigShieldLeft.wm" "skinCluster4.ma[15]";
connectAttr "bigShieldRight.wm" "skinCluster4.ma[17]";
connectAttr "bigShieldStem6.liw" "skinCluster4.lw[12]";
connectAttr "bigShieldStem7.liw" "skinCluster4.lw[13]";
connectAttr "bigShieldStem8.liw" "skinCluster4.lw[14]";
connectAttr "bigShieldLeft.liw" "skinCluster4.lw[15]";
connectAttr "bigShieldRight.liw" "skinCluster4.lw[17]";
connectAttr "bigShieldStem6.obcc" "skinCluster4.ifcl[12]";
connectAttr "bigShieldStem7.obcc" "skinCluster4.ifcl[13]";
connectAttr "bigShieldStem8.obcc" "skinCluster4.ifcl[14]";
connectAttr "bigShieldLeft.obcc" "skinCluster4.ifcl[15]";
connectAttr "bigShieldRight.obcc" "skinCluster4.ifcl[17]";
connectAttr "bindPose1.msg" "skinCluster4.bp";
connectAttr "bigShieldStem6.wm" "skinCluster5.ma[12]";
connectAttr "bigShieldStem7.wm" "skinCluster5.ma[13]";
connectAttr "bigShieldStem8.wm" "skinCluster5.ma[14]";
connectAttr "bigShieldLeft.wm" "skinCluster5.ma[15]";
connectAttr "bigShieldRight.wm" "skinCluster5.ma[17]";
connectAttr "bigShieldStem6.liw" "skinCluster5.lw[12]";
connectAttr "bigShieldStem7.liw" "skinCluster5.lw[13]";
connectAttr "bigShieldStem8.liw" "skinCluster5.lw[14]";
connectAttr "bigShieldLeft.liw" "skinCluster5.lw[15]";
connectAttr "bigShieldRight.liw" "skinCluster5.lw[17]";
connectAttr "bigShieldStem6.obcc" "skinCluster5.ifcl[12]";
connectAttr "bigShieldStem7.obcc" "skinCluster5.ifcl[13]";
connectAttr "bigShieldStem8.obcc" "skinCluster5.ifcl[14]";
connectAttr "bigShieldLeft.obcc" "skinCluster5.ifcl[15]";
connectAttr "bigShieldRight.obcc" "skinCluster5.ifcl[17]";
connectAttr "bindPose1.msg" "skinCluster5.bp";
connectAttr "stem4.wm" "skinCluster6.ma[4]";
connectAttr "stem5.wm" "skinCluster6.ma[5]";
connectAttr "bigShieldStem.wm" "skinCluster6.ma[6]";
connectAttr "rightLeaf.wm" "skinCluster6.ma[19]";
connectAttr "rightLeaf1.wm" "skinCluster6.ma[20]";
connectAttr "rightLeaf2.wm" "skinCluster6.ma[21]";
connectAttr "smallShieldStem.wm" "skinCluster6.ma[31]";
connectAttr "smallShieldStem1.wm" "skinCluster6.ma[32]";
connectAttr "smallShieldStem2.wm" "skinCluster6.ma[33]";
connectAttr "smallShieldStem3.wm" "skinCluster6.ma[34]";
connectAttr "smallShieldStem7.wm" "skinCluster6.ma[38]";
connectAttr "smallShieldStem8.wm" "skinCluster6.ma[39]";
connectAttr "smallShieldStem9.wm" "skinCluster6.ma[40]";
connectAttr "smallShieldStem10.wm" "skinCluster6.ma[41]";
connectAttr "smallShieldStem11.wm" "skinCluster6.ma[42]";
connectAttr "smallShieldLeft.wm" "skinCluster6.ma[43]";
connectAttr "smallShieldLeft1.wm" "skinCluster6.ma[44]";
connectAttr "smallShieldRight.wm" "skinCluster6.ma[45]";
connectAttr "smallShieldRight1.wm" "skinCluster6.ma[46]";
connectAttr "leftLeaf.wm" "skinCluster6.ma[47]";
connectAttr "leftLeaf1.wm" "skinCluster6.ma[48]";
connectAttr "leftLeaf2.wm" "skinCluster6.ma[49]";
connectAttr "leftLeaf3.wm" "skinCluster6.ma[50]";
connectAttr "midLeaf.wm" "skinCluster6.ma[54]";
connectAttr "stem4.liw" "skinCluster6.lw[4]";
connectAttr "stem5.liw" "skinCluster6.lw[5]";
connectAttr "bigShieldStem.liw" "skinCluster6.lw[6]";
connectAttr "rightLeaf.liw" "skinCluster6.lw[19]";
connectAttr "rightLeaf1.liw" "skinCluster6.lw[20]";
connectAttr "rightLeaf2.liw" "skinCluster6.lw[21]";
connectAttr "smallShieldStem.liw" "skinCluster6.lw[31]";
connectAttr "smallShieldStem1.liw" "skinCluster6.lw[32]";
connectAttr "smallShieldStem2.liw" "skinCluster6.lw[33]";
connectAttr "smallShieldStem3.liw" "skinCluster6.lw[34]";
connectAttr "smallShieldStem7.liw" "skinCluster6.lw[38]";
connectAttr "smallShieldStem8.liw" "skinCluster6.lw[39]";
connectAttr "smallShieldStem9.liw" "skinCluster6.lw[40]";
connectAttr "smallShieldStem10.liw" "skinCluster6.lw[41]";
connectAttr "smallShieldStem11.liw" "skinCluster6.lw[42]";
connectAttr "smallShieldLeft.liw" "skinCluster6.lw[43]";
connectAttr "smallShieldLeft1.liw" "skinCluster6.lw[44]";
connectAttr "smallShieldRight.liw" "skinCluster6.lw[45]";
connectAttr "smallShieldRight1.liw" "skinCluster6.lw[46]";
connectAttr "leftLeaf.liw" "skinCluster6.lw[47]";
connectAttr "leftLeaf1.liw" "skinCluster6.lw[48]";
connectAttr "leftLeaf2.liw" "skinCluster6.lw[49]";
connectAttr "leftLeaf3.liw" "skinCluster6.lw[50]";
connectAttr "midLeaf.liw" "skinCluster6.lw[54]";
connectAttr "stem4.obcc" "skinCluster6.ifcl[4]";
connectAttr "stem5.obcc" "skinCluster6.ifcl[5]";
connectAttr "bigShieldStem.obcc" "skinCluster6.ifcl[6]";
connectAttr "rightLeaf.obcc" "skinCluster6.ifcl[19]";
connectAttr "rightLeaf1.obcc" "skinCluster6.ifcl[20]";
connectAttr "rightLeaf2.obcc" "skinCluster6.ifcl[21]";
connectAttr "smallShieldStem.obcc" "skinCluster6.ifcl[31]";
connectAttr "smallShieldStem1.obcc" "skinCluster6.ifcl[32]";
connectAttr "smallShieldStem2.obcc" "skinCluster6.ifcl[33]";
connectAttr "smallShieldStem3.obcc" "skinCluster6.ifcl[34]";
connectAttr "smallShieldStem7.obcc" "skinCluster6.ifcl[38]";
connectAttr "smallShieldStem8.obcc" "skinCluster6.ifcl[39]";
connectAttr "smallShieldStem9.obcc" "skinCluster6.ifcl[40]";
connectAttr "smallShieldStem10.obcc" "skinCluster6.ifcl[41]";
connectAttr "smallShieldStem11.obcc" "skinCluster6.ifcl[42]";
connectAttr "smallShieldLeft.obcc" "skinCluster6.ifcl[43]";
connectAttr "smallShieldLeft1.obcc" "skinCluster6.ifcl[44]";
connectAttr "smallShieldRight.obcc" "skinCluster6.ifcl[45]";
connectAttr "smallShieldRight1.obcc" "skinCluster6.ifcl[46]";
connectAttr "leftLeaf.obcc" "skinCluster6.ifcl[47]";
connectAttr "leftLeaf1.obcc" "skinCluster6.ifcl[48]";
connectAttr "leftLeaf2.obcc" "skinCluster6.ifcl[49]";
connectAttr "leftLeaf3.obcc" "skinCluster6.ifcl[50]";
connectAttr "midLeaf.obcc" "skinCluster6.ifcl[54]";
connectAttr "bindPose1.msg" "skinCluster6.bp";
connectAttr "smallShieldStem9.wm" "skinCluster7.ma[40]";
connectAttr "smallShieldStem10.wm" "skinCluster7.ma[41]";
connectAttr "smallShieldStem11.wm" "skinCluster7.ma[42]";
connectAttr "smallShieldLeft.wm" "skinCluster7.ma[43]";
connectAttr "smallShieldRight.wm" "skinCluster7.ma[45]";
connectAttr "smallShieldStem9.liw" "skinCluster7.lw[40]";
connectAttr "smallShieldStem10.liw" "skinCluster7.lw[41]";
connectAttr "smallShieldStem11.liw" "skinCluster7.lw[42]";
connectAttr "smallShieldLeft.liw" "skinCluster7.lw[43]";
connectAttr "smallShieldRight.liw" "skinCluster7.lw[45]";
connectAttr "smallShieldStem9.obcc" "skinCluster7.ifcl[40]";
connectAttr "smallShieldStem10.obcc" "skinCluster7.ifcl[41]";
connectAttr "smallShieldStem11.obcc" "skinCluster7.ifcl[42]";
connectAttr "smallShieldLeft.obcc" "skinCluster7.ifcl[43]";
connectAttr "smallShieldRight.obcc" "skinCluster7.ifcl[45]";
connectAttr "bindPose1.msg" "skinCluster7.bp";
connectAttr "smallShieldStem9.wm" "skinCluster8.ma[40]";
connectAttr "smallShieldStem10.wm" "skinCluster8.ma[41]";
connectAttr "smallShieldStem11.wm" "skinCluster8.ma[42]";
connectAttr "smallShieldLeft.wm" "skinCluster8.ma[43]";
connectAttr "smallShieldRight.wm" "skinCluster8.ma[45]";
connectAttr "smallShieldStem9.liw" "skinCluster8.lw[40]";
connectAttr "smallShieldStem10.liw" "skinCluster8.lw[41]";
connectAttr "smallShieldStem11.liw" "skinCluster8.lw[42]";
connectAttr "smallShieldLeft.liw" "skinCluster8.lw[43]";
connectAttr "smallShieldRight.liw" "skinCluster8.lw[45]";
connectAttr "smallShieldStem9.obcc" "skinCluster8.ifcl[40]";
connectAttr "smallShieldStem10.obcc" "skinCluster8.ifcl[41]";
connectAttr "smallShieldStem11.obcc" "skinCluster8.ifcl[42]";
connectAttr "smallShieldLeft.obcc" "skinCluster8.ifcl[43]";
connectAttr "smallShieldRight.obcc" "skinCluster8.ifcl[45]";
connectAttr "bindPose1.msg" "skinCluster8.bp";
connectAttr "smallShieldStem9.wm" "skinCluster9.ma[40]";
connectAttr "smallShieldStem10.wm" "skinCluster9.ma[41]";
connectAttr "smallShieldStem11.wm" "skinCluster9.ma[42]";
connectAttr "smallShieldLeft.wm" "skinCluster9.ma[43]";
connectAttr "smallShieldRight.wm" "skinCluster9.ma[45]";
connectAttr "smallShieldStem9.liw" "skinCluster9.lw[40]";
connectAttr "smallShieldStem10.liw" "skinCluster9.lw[41]";
connectAttr "smallShieldStem11.liw" "skinCluster9.lw[42]";
connectAttr "smallShieldLeft.liw" "skinCluster9.lw[43]";
connectAttr "smallShieldRight.liw" "skinCluster9.lw[45]";
connectAttr "smallShieldStem9.obcc" "skinCluster9.ifcl[40]";
connectAttr "smallShieldStem10.obcc" "skinCluster9.ifcl[41]";
connectAttr "smallShieldStem11.obcc" "skinCluster9.ifcl[42]";
connectAttr "smallShieldLeft.obcc" "skinCluster9.ifcl[43]";
connectAttr "smallShieldRight.obcc" "skinCluster9.ifcl[45]";
connectAttr "bindPose1.msg" "skinCluster9.bp";
connectAttr "stem5.wm" "skinCluster10.ma[5]";
connectAttr "bigShieldStem.wm" "skinCluster10.ma[6]";
connectAttr "bigShieldStem1.wm" "skinCluster10.ma[7]";
connectAttr "bigShieldStem2.wm" "skinCluster10.ma[8]";
connectAttr "rightLeaf.wm" "skinCluster10.ma[19]";
connectAttr "rightLeaf1.wm" "skinCluster10.ma[20]";
connectAttr "rightLeaf2.wm" "skinCluster10.ma[21]";
connectAttr "rightLeaf3.wm" "skinCluster10.ma[22]";
connectAttr "rightLeaf4.wm" "skinCluster10.ma[23]";
connectAttr "rightLeaf5.wm" "skinCluster10.ma[24]";
connectAttr "rightLeaf6.wm" "skinCluster10.ma[25]";
connectAttr "rightLeaf7.wm" "skinCluster10.ma[26]";
connectAttr "rightLeaf8.wm" "skinCluster10.ma[27]";
connectAttr "rightLeaf9.wm" "skinCluster10.ma[28]";
connectAttr "rightLeaf10.wm" "skinCluster10.ma[29]";
connectAttr "rightLeaf11.wm" "skinCluster10.ma[30]";
connectAttr "smallShieldStem.wm" "skinCluster10.ma[31]";
connectAttr "smallShieldStem1.wm" "skinCluster10.ma[32]";
connectAttr "smallShieldStem2.wm" "skinCluster10.ma[33]";
connectAttr "smallShieldStem3.wm" "skinCluster10.ma[34]";
connectAttr "stem5.liw" "skinCluster10.lw[5]";
connectAttr "bigShieldStem.liw" "skinCluster10.lw[6]";
connectAttr "bigShieldStem1.liw" "skinCluster10.lw[7]";
connectAttr "bigShieldStem2.liw" "skinCluster10.lw[8]";
connectAttr "rightLeaf.liw" "skinCluster10.lw[19]";
connectAttr "rightLeaf1.liw" "skinCluster10.lw[20]";
connectAttr "rightLeaf2.liw" "skinCluster10.lw[21]";
connectAttr "rightLeaf3.liw" "skinCluster10.lw[22]";
connectAttr "rightLeaf4.liw" "skinCluster10.lw[23]";
connectAttr "rightLeaf5.liw" "skinCluster10.lw[24]";
connectAttr "rightLeaf6.liw" "skinCluster10.lw[25]";
connectAttr "rightLeaf7.liw" "skinCluster10.lw[26]";
connectAttr "rightLeaf8.liw" "skinCluster10.lw[27]";
connectAttr "rightLeaf9.liw" "skinCluster10.lw[28]";
connectAttr "rightLeaf10.liw" "skinCluster10.lw[29]";
connectAttr "rightLeaf11.liw" "skinCluster10.lw[30]";
connectAttr "smallShieldStem.liw" "skinCluster10.lw[31]";
connectAttr "smallShieldStem1.liw" "skinCluster10.lw[32]";
connectAttr "smallShieldStem2.liw" "skinCluster10.lw[33]";
connectAttr "smallShieldStem3.liw" "skinCluster10.lw[34]";
connectAttr "stem5.obcc" "skinCluster10.ifcl[5]";
connectAttr "bigShieldStem.obcc" "skinCluster10.ifcl[6]";
connectAttr "bigShieldStem1.obcc" "skinCluster10.ifcl[7]";
connectAttr "bigShieldStem2.obcc" "skinCluster10.ifcl[8]";
connectAttr "rightLeaf.obcc" "skinCluster10.ifcl[19]";
connectAttr "rightLeaf1.obcc" "skinCluster10.ifcl[20]";
connectAttr "rightLeaf2.obcc" "skinCluster10.ifcl[21]";
connectAttr "rightLeaf3.obcc" "skinCluster10.ifcl[22]";
connectAttr "rightLeaf4.obcc" "skinCluster10.ifcl[23]";
connectAttr "rightLeaf5.obcc" "skinCluster10.ifcl[24]";
connectAttr "rightLeaf6.obcc" "skinCluster10.ifcl[25]";
connectAttr "rightLeaf7.obcc" "skinCluster10.ifcl[26]";
connectAttr "rightLeaf8.obcc" "skinCluster10.ifcl[27]";
connectAttr "rightLeaf9.obcc" "skinCluster10.ifcl[28]";
connectAttr "rightLeaf10.obcc" "skinCluster10.ifcl[29]";
connectAttr "rightLeaf11.obcc" "skinCluster10.ifcl[30]";
connectAttr "smallShieldStem.obcc" "skinCluster10.ifcl[31]";
connectAttr "smallShieldStem1.obcc" "skinCluster10.ifcl[32]";
connectAttr "smallShieldStem2.obcc" "skinCluster10.ifcl[33]";
connectAttr "smallShieldStem3.obcc" "skinCluster10.ifcl[34]";
connectAttr "bindPose1.msg" "skinCluster10.bp";
connectAttr "rightLeaf5.wm" "skinCluster11.ma[24]";
connectAttr "rightLeaf6.wm" "skinCluster11.ma[25]";
connectAttr "rightLeaf7.wm" "skinCluster11.ma[26]";
connectAttr "rightLeaf8.wm" "skinCluster11.ma[27]";
connectAttr "rightLeaf9.wm" "skinCluster11.ma[28]";
connectAttr "rightLeaf10.wm" "skinCluster11.ma[29]";
connectAttr "rightLeaf5.liw" "skinCluster11.lw[24]";
connectAttr "rightLeaf6.liw" "skinCluster11.lw[25]";
connectAttr "rightLeaf7.liw" "skinCluster11.lw[26]";
connectAttr "rightLeaf8.liw" "skinCluster11.lw[27]";
connectAttr "rightLeaf9.liw" "skinCluster11.lw[28]";
connectAttr "rightLeaf10.liw" "skinCluster11.lw[29]";
connectAttr "rightLeaf5.obcc" "skinCluster11.ifcl[24]";
connectAttr "rightLeaf6.obcc" "skinCluster11.ifcl[25]";
connectAttr "rightLeaf7.obcc" "skinCluster11.ifcl[26]";
connectAttr "rightLeaf8.obcc" "skinCluster11.ifcl[27]";
connectAttr "rightLeaf9.obcc" "skinCluster11.ifcl[28]";
connectAttr "rightLeaf10.obcc" "skinCluster11.ifcl[29]";
connectAttr "bindPose1.msg" "skinCluster11.bp";
connectAttr "rightLeaf2.wm" "skinCluster12.ma[21]";
connectAttr "rightLeaf3.wm" "skinCluster12.ma[22]";
connectAttr "rightLeaf4.wm" "skinCluster12.ma[23]";
connectAttr "rightLeaf5.wm" "skinCluster12.ma[24]";
connectAttr "rightLeaf6.wm" "skinCluster12.ma[25]";
connectAttr "rightLeaf7.wm" "skinCluster12.ma[26]";
connectAttr "rightLeaf8.wm" "skinCluster12.ma[27]";
connectAttr "midLeaf3.wm" "skinCluster12.ma[57]";
connectAttr "rightLeaf2.liw" "skinCluster12.lw[21]";
connectAttr "rightLeaf3.liw" "skinCluster12.lw[22]";
connectAttr "rightLeaf4.liw" "skinCluster12.lw[23]";
connectAttr "rightLeaf5.liw" "skinCluster12.lw[24]";
connectAttr "rightLeaf6.liw" "skinCluster12.lw[25]";
connectAttr "rightLeaf7.liw" "skinCluster12.lw[26]";
connectAttr "rightLeaf8.liw" "skinCluster12.lw[27]";
connectAttr "midLeaf3.liw" "skinCluster12.lw[57]";
connectAttr "rightLeaf2.obcc" "skinCluster12.ifcl[21]";
connectAttr "rightLeaf3.obcc" "skinCluster12.ifcl[22]";
connectAttr "rightLeaf4.obcc" "skinCluster12.ifcl[23]";
connectAttr "rightLeaf5.obcc" "skinCluster12.ifcl[24]";
connectAttr "rightLeaf6.obcc" "skinCluster12.ifcl[25]";
connectAttr "rightLeaf7.obcc" "skinCluster12.ifcl[26]";
connectAttr "rightLeaf8.obcc" "skinCluster12.ifcl[27]";
connectAttr "midLeaf3.obcc" "skinCluster12.ifcl[57]";
connectAttr "bindPose1.msg" "skinCluster12.bp";
connectAttr "bigShieldStem4.wm" "skinCluster13.ma[10]";
connectAttr "bigShieldStem5.wm" "skinCluster13.ma[11]";
connectAttr "rightLeaf6.wm" "skinCluster13.ma[25]";
connectAttr "rightLeaf7.wm" "skinCluster13.ma[26]";
connectAttr "rightLeaf8.wm" "skinCluster13.ma[27]";
connectAttr "rightLeaf9.wm" "skinCluster13.ma[28]";
connectAttr "rightLeaf10.wm" "skinCluster13.ma[29]";
connectAttr "rightLeaf11.wm" "skinCluster13.ma[30]";
connectAttr "bigShieldStem4.liw" "skinCluster13.lw[10]";
connectAttr "bigShieldStem5.liw" "skinCluster13.lw[11]";
connectAttr "rightLeaf6.liw" "skinCluster13.lw[25]";
connectAttr "rightLeaf7.liw" "skinCluster13.lw[26]";
connectAttr "rightLeaf8.liw" "skinCluster13.lw[27]";
connectAttr "rightLeaf9.liw" "skinCluster13.lw[28]";
connectAttr "rightLeaf10.liw" "skinCluster13.lw[29]";
connectAttr "rightLeaf11.liw" "skinCluster13.lw[30]";
connectAttr "bigShieldStem4.obcc" "skinCluster13.ifcl[10]";
connectAttr "bigShieldStem5.obcc" "skinCluster13.ifcl[11]";
connectAttr "rightLeaf6.obcc" "skinCluster13.ifcl[25]";
connectAttr "rightLeaf7.obcc" "skinCluster13.ifcl[26]";
connectAttr "rightLeaf8.obcc" "skinCluster13.ifcl[27]";
connectAttr "rightLeaf9.obcc" "skinCluster13.ifcl[28]";
connectAttr "rightLeaf10.obcc" "skinCluster13.ifcl[29]";
connectAttr "rightLeaf11.obcc" "skinCluster13.ifcl[30]";
connectAttr "bindPose1.msg" "skinCluster13.bp";
connectAttr "rightLeaf6.wm" "skinCluster14.ma[25]";
connectAttr "rightLeaf7.wm" "skinCluster14.ma[26]";
connectAttr "midLeaf2.wm" "skinCluster14.ma[56]";
connectAttr "midLeaf3.wm" "skinCluster14.ma[57]";
connectAttr "midLeaf4.wm" "skinCluster14.ma[58]";
connectAttr "midLeaf5.wm" "skinCluster14.ma[59]";
connectAttr "midLeaf6.wm" "skinCluster14.ma[60]";
connectAttr "midLeaf7.wm" "skinCluster14.ma[61]";
connectAttr "rightLeaf6.liw" "skinCluster14.lw[25]";
connectAttr "rightLeaf7.liw" "skinCluster14.lw[26]";
connectAttr "midLeaf2.liw" "skinCluster14.lw[56]";
connectAttr "midLeaf3.liw" "skinCluster14.lw[57]";
connectAttr "midLeaf4.liw" "skinCluster14.lw[58]";
connectAttr "midLeaf5.liw" "skinCluster14.lw[59]";
connectAttr "midLeaf6.liw" "skinCluster14.lw[60]";
connectAttr "midLeaf7.liw" "skinCluster14.lw[61]";
connectAttr "rightLeaf6.obcc" "skinCluster14.ifcl[25]";
connectAttr "rightLeaf7.obcc" "skinCluster14.ifcl[26]";
connectAttr "midLeaf2.obcc" "skinCluster14.ifcl[56]";
connectAttr "midLeaf3.obcc" "skinCluster14.ifcl[57]";
connectAttr "midLeaf4.obcc" "skinCluster14.ifcl[58]";
connectAttr "midLeaf5.obcc" "skinCluster14.ifcl[59]";
connectAttr "midLeaf6.obcc" "skinCluster14.ifcl[60]";
connectAttr "midLeaf7.obcc" "skinCluster14.ifcl[61]";
connectAttr "bindPose1.msg" "skinCluster14.bp";
connectAttr "smallShieldStem1.wm" "skinCluster15.ma[32]";
connectAttr "smallShieldStem2.wm" "skinCluster15.ma[33]";
connectAttr "smallShieldStem3.wm" "skinCluster15.ma[34]";
connectAttr "smallShieldStem4.wm" "skinCluster15.ma[35]";
connectAttr "smallShieldStem5.wm" "skinCluster15.ma[36]";
connectAttr "leftLeaf4.wm" "skinCluster15.ma[51]";
connectAttr "midLeaf.wm" "skinCluster15.ma[54]";
connectAttr "midLeaf1.wm" "skinCluster15.ma[55]";
connectAttr "midLeaf2.wm" "skinCluster15.ma[56]";
connectAttr "midLeaf3.wm" "skinCluster15.ma[57]";
connectAttr "midLeaf4.wm" "skinCluster15.ma[58]";
connectAttr "midLeaf5.wm" "skinCluster15.ma[59]";
connectAttr "midLeaf6.wm" "skinCluster15.ma[60]";
connectAttr "midLeaf7.wm" "skinCluster15.ma[61]";
connectAttr "smallShieldStem1.liw" "skinCluster15.lw[32]";
connectAttr "smallShieldStem2.liw" "skinCluster15.lw[33]";
connectAttr "smallShieldStem3.liw" "skinCluster15.lw[34]";
connectAttr "smallShieldStem4.liw" "skinCluster15.lw[35]";
connectAttr "smallShieldStem5.liw" "skinCluster15.lw[36]";
connectAttr "leftLeaf4.liw" "skinCluster15.lw[51]";
connectAttr "midLeaf.liw" "skinCluster15.lw[54]";
connectAttr "midLeaf1.liw" "skinCluster15.lw[55]";
connectAttr "midLeaf2.liw" "skinCluster15.lw[56]";
connectAttr "midLeaf3.liw" "skinCluster15.lw[57]";
connectAttr "midLeaf4.liw" "skinCluster15.lw[58]";
connectAttr "midLeaf5.liw" "skinCluster15.lw[59]";
connectAttr "midLeaf6.liw" "skinCluster15.lw[60]";
connectAttr "midLeaf7.liw" "skinCluster15.lw[61]";
connectAttr "smallShieldStem1.obcc" "skinCluster15.ifcl[32]";
connectAttr "smallShieldStem2.obcc" "skinCluster15.ifcl[33]";
connectAttr "smallShieldStem3.obcc" "skinCluster15.ifcl[34]";
connectAttr "smallShieldStem4.obcc" "skinCluster15.ifcl[35]";
connectAttr "smallShieldStem5.obcc" "skinCluster15.ifcl[36]";
connectAttr "leftLeaf4.obcc" "skinCluster15.ifcl[51]";
connectAttr "midLeaf.obcc" "skinCluster15.ifcl[54]";
connectAttr "midLeaf1.obcc" "skinCluster15.ifcl[55]";
connectAttr "midLeaf2.obcc" "skinCluster15.ifcl[56]";
connectAttr "midLeaf3.obcc" "skinCluster15.ifcl[57]";
connectAttr "midLeaf4.obcc" "skinCluster15.ifcl[58]";
connectAttr "midLeaf5.obcc" "skinCluster15.ifcl[59]";
connectAttr "midLeaf6.obcc" "skinCluster15.ifcl[60]";
connectAttr "midLeaf7.obcc" "skinCluster15.ifcl[61]";
connectAttr "bindPose1.msg" "skinCluster15.bp";
connectAttr "leftLeaf3.wm" "skinCluster16.ma[50]";
connectAttr "leftLeaf4.wm" "skinCluster16.ma[51]";
connectAttr "leftLeaf5.wm" "skinCluster16.ma[52]";
connectAttr "leftLeaf6.wm" "skinCluster16.ma[53]";
connectAttr "midLeaf1.wm" "skinCluster16.ma[55]";
connectAttr "midLeaf2.wm" "skinCluster16.ma[56]";
connectAttr "midLeaf3.wm" "skinCluster16.ma[57]";
connectAttr "midLeaf4.wm" "skinCluster16.ma[58]";
connectAttr "midLeaf5.wm" "skinCluster16.ma[59]";
connectAttr "midLeaf6.wm" "skinCluster16.ma[60]";
connectAttr "leftLeaf3.liw" "skinCluster16.lw[50]";
connectAttr "leftLeaf4.liw" "skinCluster16.lw[51]";
connectAttr "leftLeaf5.liw" "skinCluster16.lw[52]";
connectAttr "leftLeaf6.liw" "skinCluster16.lw[53]";
connectAttr "midLeaf1.liw" "skinCluster16.lw[55]";
connectAttr "midLeaf2.liw" "skinCluster16.lw[56]";
connectAttr "midLeaf3.liw" "skinCluster16.lw[57]";
connectAttr "midLeaf4.liw" "skinCluster16.lw[58]";
connectAttr "midLeaf5.liw" "skinCluster16.lw[59]";
connectAttr "midLeaf6.liw" "skinCluster16.lw[60]";
connectAttr "leftLeaf3.obcc" "skinCluster16.ifcl[50]";
connectAttr "leftLeaf4.obcc" "skinCluster16.ifcl[51]";
connectAttr "leftLeaf5.obcc" "skinCluster16.ifcl[52]";
connectAttr "leftLeaf6.obcc" "skinCluster16.ifcl[53]";
connectAttr "midLeaf1.obcc" "skinCluster16.ifcl[55]";
connectAttr "midLeaf2.obcc" "skinCluster16.ifcl[56]";
connectAttr "midLeaf3.obcc" "skinCluster16.ifcl[57]";
connectAttr "midLeaf4.obcc" "skinCluster16.ifcl[58]";
connectAttr "midLeaf5.obcc" "skinCluster16.ifcl[59]";
connectAttr "midLeaf6.obcc" "skinCluster16.ifcl[60]";
connectAttr "bindPose1.msg" "skinCluster16.bp";
connectAttr "smallShieldStem5.wm" "skinCluster17.ma[36]";
connectAttr "smallShieldStem6.wm" "skinCluster17.ma[37]";
connectAttr "smallShieldStem7.wm" "skinCluster17.ma[38]";
connectAttr "leftLeaf.wm" "skinCluster17.ma[47]";
connectAttr "leftLeaf1.wm" "skinCluster17.ma[48]";
connectAttr "leftLeaf2.wm" "skinCluster17.ma[49]";
connectAttr "leftLeaf3.wm" "skinCluster17.ma[50]";
connectAttr "leftLeaf4.wm" "skinCluster17.ma[51]";
connectAttr "smallShieldStem5.liw" "skinCluster17.lw[36]";
connectAttr "smallShieldStem6.liw" "skinCluster17.lw[37]";
connectAttr "smallShieldStem7.liw" "skinCluster17.lw[38]";
connectAttr "leftLeaf.liw" "skinCluster17.lw[47]";
connectAttr "leftLeaf1.liw" "skinCluster17.lw[48]";
connectAttr "leftLeaf2.liw" "skinCluster17.lw[49]";
connectAttr "leftLeaf3.liw" "skinCluster17.lw[50]";
connectAttr "leftLeaf4.liw" "skinCluster17.lw[51]";
connectAttr "smallShieldStem5.obcc" "skinCluster17.ifcl[36]";
connectAttr "smallShieldStem6.obcc" "skinCluster17.ifcl[37]";
connectAttr "smallShieldStem7.obcc" "skinCluster17.ifcl[38]";
connectAttr "leftLeaf.obcc" "skinCluster17.ifcl[47]";
connectAttr "leftLeaf1.obcc" "skinCluster17.ifcl[48]";
connectAttr "leftLeaf2.obcc" "skinCluster17.ifcl[49]";
connectAttr "leftLeaf3.obcc" "skinCluster17.ifcl[50]";
connectAttr "leftLeaf4.obcc" "skinCluster17.ifcl[51]";
connectAttr "bindPose1.msg" "skinCluster17.bp";
connectAttr "smallShieldStem4.wm" "skinCluster18.ma[35]";
connectAttr "smallShieldStem5.wm" "skinCluster18.ma[36]";
connectAttr "smallShieldStem6.wm" "skinCluster18.ma[37]";
connectAttr "smallShieldStem7.wm" "skinCluster18.ma[38]";
connectAttr "leftLeaf.wm" "skinCluster18.ma[47]";
connectAttr "leftLeaf1.wm" "skinCluster18.ma[48]";
connectAttr "leftLeaf2.wm" "skinCluster18.ma[49]";
connectAttr "leftLeaf3.wm" "skinCluster18.ma[50]";
connectAttr "leftLeaf4.wm" "skinCluster18.ma[51]";
connectAttr "leftLeaf5.wm" "skinCluster18.ma[52]";
connectAttr "leftLeaf6.wm" "skinCluster18.ma[53]";
connectAttr "smallShieldStem4.liw" "skinCluster18.lw[35]";
connectAttr "smallShieldStem5.liw" "skinCluster18.lw[36]";
connectAttr "smallShieldStem6.liw" "skinCluster18.lw[37]";
connectAttr "smallShieldStem7.liw" "skinCluster18.lw[38]";
connectAttr "leftLeaf.liw" "skinCluster18.lw[47]";
connectAttr "leftLeaf1.liw" "skinCluster18.lw[48]";
connectAttr "leftLeaf2.liw" "skinCluster18.lw[49]";
connectAttr "leftLeaf3.liw" "skinCluster18.lw[50]";
connectAttr "leftLeaf4.liw" "skinCluster18.lw[51]";
connectAttr "leftLeaf5.liw" "skinCluster18.lw[52]";
connectAttr "leftLeaf6.liw" "skinCluster18.lw[53]";
connectAttr "smallShieldStem4.obcc" "skinCluster18.ifcl[35]";
connectAttr "smallShieldStem5.obcc" "skinCluster18.ifcl[36]";
connectAttr "smallShieldStem6.obcc" "skinCluster18.ifcl[37]";
connectAttr "smallShieldStem7.obcc" "skinCluster18.ifcl[38]";
connectAttr "leftLeaf.obcc" "skinCluster18.ifcl[47]";
connectAttr "leftLeaf1.obcc" "skinCluster18.ifcl[48]";
connectAttr "leftLeaf2.obcc" "skinCluster18.ifcl[49]";
connectAttr "leftLeaf3.obcc" "skinCluster18.ifcl[50]";
connectAttr "leftLeaf4.obcc" "skinCluster18.ifcl[51]";
connectAttr "leftLeaf5.obcc" "skinCluster18.ifcl[52]";
connectAttr "leftLeaf6.obcc" "skinCluster18.ifcl[53]";
connectAttr "bindPose1.msg" "skinCluster18.bp";
connectAttr "leftLeaf1.wm" "skinCluster19.ma[48]";
connectAttr "leftLeaf2.wm" "skinCluster19.ma[49]";
connectAttr "leftLeaf3.wm" "skinCluster19.ma[50]";
connectAttr "leftLeaf4.wm" "skinCluster19.ma[51]";
connectAttr "leftLeaf5.wm" "skinCluster19.ma[52]";
connectAttr "leftLeaf6.wm" "skinCluster19.ma[53]";
connectAttr "midLeaf3.wm" "skinCluster19.ma[57]";
connectAttr "leftLeaf1.liw" "skinCluster19.lw[48]";
connectAttr "leftLeaf2.liw" "skinCluster19.lw[49]";
connectAttr "leftLeaf3.liw" "skinCluster19.lw[50]";
connectAttr "leftLeaf4.liw" "skinCluster19.lw[51]";
connectAttr "leftLeaf5.liw" "skinCluster19.lw[52]";
connectAttr "leftLeaf6.liw" "skinCluster19.lw[53]";
connectAttr "midLeaf3.liw" "skinCluster19.lw[57]";
connectAttr "leftLeaf1.obcc" "skinCluster19.ifcl[48]";
connectAttr "leftLeaf2.obcc" "skinCluster19.ifcl[49]";
connectAttr "leftLeaf3.obcc" "skinCluster19.ifcl[50]";
connectAttr "leftLeaf4.obcc" "skinCluster19.ifcl[51]";
connectAttr "leftLeaf5.obcc" "skinCluster19.ifcl[52]";
connectAttr "leftLeaf6.obcc" "skinCluster19.ifcl[53]";
connectAttr "midLeaf3.obcc" "skinCluster19.ifcl[57]";
connectAttr "bindPose1.msg" "skinCluster19.bp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "stemShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "thorns_bigBottomShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "shield_BigShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "thorn_smallBottomShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rightStamenShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rightStamen_spikeShape1Deformed.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "rightStamen_spikeShape2Deformed.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "rightStamen_pointShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "midStamen_pointShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "midStamenShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "midStamen_spikeShape1Deformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "leftStamen_spikeShape1Deformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "leftStamenShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "leftStamen_pointShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of ShieldRigv01.ma

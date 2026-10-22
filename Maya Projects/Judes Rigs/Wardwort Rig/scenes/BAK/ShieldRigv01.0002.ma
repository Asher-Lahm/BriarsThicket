//Maya ASCII 2024 scene
//Name: ShieldRigv01.0002.ma
//Last modified: Wed, Oct 21, 2026 10:40:03 PM
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
fileInfo "UUID" "37267B97-8A40-EE21-1887-4C99359BF4DB";
createNode transform -s -n "persp";
	rename -uid "717E5D41-C94C-9CFB-6464-0EA9F4B52184";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.0527321161345611 6.4646920293752297 2.9240394361110553 ;
	setAttr ".r" -type "double3" -8.7383527287991445 -2177.3999999994776 4.1663438790097467e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "46D00BDD-1946-3487-90F1-32A7E1F4D457";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 4.8442254631286348;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.76568794250488281 5.9394693374633789 -1.3861134052276611 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "65D72673-A941-227E-1FF6-3DB336B39209";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.012738893154259329 1000.1 -0.63184910045126075 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3667E349-3540-EBBC-23F0-5FBF034BA567";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 1.9949106679570039;
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
	setAttr ".r" -type "double3" 2.1393744025140573e-14 -2.3745170931957968e-14 -1.1274349416356617e-13 ;
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
	setAttr ".r" -type "double3" 1.3354776549406276e-14 -1.2044960594800734e-13 5.0499677947779302e-16 ;
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
	setAttr ".r" -type "double3" -1.1851515493305365e-30 -5.984668316610441e-14 5.8197629261614219e-14 ;
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
	setAttr ".r" -type "double3" 180 -180 180 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".r" -type "double3" -7.78259901475857e-15 9.7797997713086115e-15 -6.3814972012196395e-15 ;
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
	setAttr ".r" -type "double3" 4.0426843819779713e-15 1.0346607095166689e-15 1.0634257969497615e-14 ;
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
	setAttr ".r" -type "double3" 8.4933806499259124e-15 4.288006500894524e-15 2.4850159848290511e-14 ;
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
	setAttr ".r" -type "double3" 9.2346176273364938e-15 -5.3049951737976432e-16 1.8555549121151862e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.8099460006901927e-15 1.2875899460475806e-14 -24.62162866006917 ;
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
	setAttr ".r" -type "double3" 8.8858043589927052e-15 6.5372096014106368e-15 3.3852982805821416e-14 ;
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
	setAttr ".r" -type "double3" 3.8963268593250275e-15 -2.138027009204554e-15 1.5703539771830798e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -13.806029759657632 -1.3778496787426875 -18.066681574169348 ;
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
	setAttr ".r" -type "double3" 5.9497389098596813e-16 6.1874462298346152e-15 9.2348682105387632e-15 ;
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
createNode orientConstraint -n "bigShieldStem7_orientConstraint1" -p "bigShieldStem7";
	rename -uid "0164A66E-4A46-675B-8045-F8833C9D37A8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "bigShieldStemCTRLW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".lr" -type "double3" 15.305576554199325 40.795368630656419 52.774511181252997 ;
	setAttr ".o" -type "double3" 25.103574152173316 -36.257814471727478 -55.392234095589778 ;
	setAttr ".rsrr" -type "double3" -1.1310634888753532e-31 1.5902773407317584e-15 -8.1501713712502619e-15 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector3" -p "bigShieldStem6";
	rename -uid "80BD67C4-BA4B-4ABE-04BE-CB9101F2D3AD";
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
	setAttr ".jo" -type "double3" -3.403444339721224e-15 1.3854427918665319e-14 -27.603669747682488 ;
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
createNode orientConstraint -n "rightLeaf4_orientConstraint1" -p "rightLeaf4";
	rename -uid "9235611F-7447-5DB3-F2F5-9EBE47096166";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "rightLeafCTRLW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "rightLeaf1W1" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w2" -ln "rightLeaf2W2" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w3" -ln "rightLeaf3W3" -dv 1 -min 0 -at "double";
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
	setAttr -s 4 ".tg";
	setAttr ".lr" -type "double3" -36.885681615171556 -9.9192168443566846 -14.313818317710501 ;
	setAttr ".o" -type "double3" 38.004181700220862 -0.85329091300096849 17.335252366530561 ;
	setAttr ".rsrr" -type "double3" -1.9679682091555511e-14 -6.3611093629270351e-15 
		-5.1684013573782136e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
	setAttr -k on ".w3";
createNode joint -n "smallShieldStem" -p "stem5";
	rename -uid "06B1104F-D140-3BB0-9BAE-D288827CF028";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.7214538008102771 -0.47542989481631559 0.17109007118284847 ;
	setAttr ".r" -type "double3" -7.4648128330389419e-07 1.2214297575441188e-06 9.3090967892116444e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -34.307715984678708 -14.778651990558272 -20.063440985927013 ;
	setAttr ".bps" -type "matrix" -0.32924786964475866 0.89339606886512035 -0.30567843311352022 0
		 0.6964727589729891 0.44836933267261608 0.56025943769584552 0 0.6375904142495713 -0.028432475359386224 -0.76985067253461392 0
		 1.4162715936737462 4.1979607462502848 -0.83550785676499262 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem1" -p "smallShieldStem";
	rename -uid "3854FF30-9C4A-71CF-AC8C-7EAB8D7FECE8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.41016304872442655 0 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" -8.3217064499443829e-16 1.1667296661116154e-15 -1.9278140929261437e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.91322627915415022 -4.4383963063763821 0.0020031527499293493 ;
	setAttr ".bps" -type "matrix" -0.27889489367766251 0.88853219656263749 -0.36431878067442469 0
		 0.70693339326522575 0.44672740812313078 0.54834277629791284 0 0.64997139611450461 -0.10461911155790005 -0.75272307373282832 0
		 1.2812262836742292 4.5643988015744199 -0.96088585482013955 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem2" -p "smallShieldStem1";
	rename -uid "7876538F-1C46-AD36-6700-1CBDF26AE6C9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.43950330469103349 0 2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 1.6377700428727174e-15 2.0852415402997183e-15 1.1238065826467428e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.7426583572821555 -8.14972819597822 -3.8513918653720913 ;
	setAttr ".bps" -type "matrix" -0.23031898058193812 0.83303853881336321 -0.50299101387141432 0
		 0.65282056230089758 0.51558677386086182 0.55497350572517223 0 0.72164983241239367 -0.20054194441922932 -0.66257410748362189 0
		 1.1586510562414423 4.954911638288082 -1.1210051628875572 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem3" -p "smallShieldStem2";
	rename -uid "22747E98-EA47-814A-F966-A9BB21B5EF71";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.36148101215000494 8.8817841970012523e-16 1.1102230246251565e-16 ;
	setAttr ".r" -type "double3" 1.9980190392806277e-15 -1.4424498071446253e-15 6.1562315631888708e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.5148824103500027 4.6495422082962081 -13.730819255501942 ;
	setAttr ".bps" -type "matrix" -0.43594206856657142 0.7008473455733657 -0.56459499737127106 0
		 0.5974964367949136 0.69452627827057267 0.400788294251477 0 0.67301747441747728 -0.16262302110831156 -0.72152701414037512 0
		 1.0753951180233265 5.2560392524582982 -1.3028268636841529 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem4" -p "smallShieldStem3";
	rename -uid "6C771780-4346-EAF0-A21A-53AB177D1268";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.31762419942948616 -0.053696452289496932 -6.6613381477509392e-16 ;
	setAttr ".r" -type "double3" 7.8475951934415391e-16 -2.6270434737560038e-15 7.8746152748051421e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 10.655070993033183 -34.072553447965348 ;
	setAttr ".bps" -type "matrix" -0.80828667061645387 0.21819681833351892 -0.54686635165540842 0
		 0.2506903381799318 0.96794042383007683 0.015674509845052254 0 0.53275417637687161 -0.12442461325951783 -0.83707317671050707 0
		 0.90484592858573221 5.4413517323533611 -1.5036768072465585 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem5" -p "smallShieldStem4";
	rename -uid "F1BE3C7A-3843-3BED-9E9A-7E931599DF19";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.33064659980504407 -0.029177324110889913 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 2.1588478973839199e-15 -4.4436339633100947e-17 7.2718107699852349e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -31.53170881018475 ;
	setAttr ".bps" -type "matrix" -0.82004746298995312 -0.32022389937182461 -0.47431931513996384 0
		 -0.20903383935798958 0.93913533097542601 -0.27263470820300029 0 0.53275417637687161 -0.12442461325951783 -0.83707317671050707 0
		 0.63027421603011757 5.4852558569574956 -1.6849536472232371 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem6" -p "smallShieldStem5";
	rename -uid "359DB346-DE49-EEA8-328A-85BE69FDD570";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.40069291990639355 -0.0083161216917408964 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 1.469196434862986e-15 -1.8205298286016743e-15 7.413826691201379e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.0133197909663129e-16 7.851853685471835 -29.172960126272276 ;
	setAttr ".bps" -type "matrix" -0.68115616977266735 -0.71347233761844231 -0.1642665389965467 0
		 -0.58224856304555317 0.66391571243737946 -0.46925743213097315 0 0.44386133331482791 -0.22399363882048567 -0.86764852708682705 0
		 0.30342535446863617 5.3491344439969826 -1.8727427751638621 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem7" -p "smallShieldStem6";
	rename -uid "73E4E7F0-604D-6381-24E8-109918862A62";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.28567106023859301 -8.8817841970012523e-16 -6.6613381477509392e-16 ;
	setAttr ".r" -type "double3" 6.7096894493230462e-16 -3.2349256629426712e-15 5.7334209700452694e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.7978573285792427 12.535785423079835 -21.692812967091665 ;
	setAttr ".bps" -type "matrix" -0.50408143703462172 -0.83807469275740243 0.20864494769031877 0
		 -0.80314784176126852 0.3660470776453652 -0.47006710289223974 0 0.31757746946426491 -0.40452484016049417 -0.85761541764464566 0
		 0.10883874926161943 5.1453160448586139 -1.9196689715207289 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem8" -p "smallShieldStem7";
	rename -uid "644DC28B-5241-D64A-BD48-819F940DB599";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.2498980115349827 8.8817841970012523e-16 -6.106226635438361e-16 ;
	setAttr ".r" -type "double3" 1.4462786714907577e-15 -5.2573587031177236e-15 3.9522311986315375e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.1286071026018876 8.4283571700845723 -26.464725978549055 ;
	setAttr ".bps" -type "matrix" -0.13887805416914542 -0.84422276414869557 0.51768794709103227 0
		 -0.97362021444400815 0.020829102434949016 -0.22722197630897589 0 0.18104298963559556 -0.53558759599610795 -0.82484505388522211 0
		 -0.01713019950503003 4.935882845620748 -1.8675290139760976 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem9" -p "smallShieldStem8";
	rename -uid "0820F4F0-7842-930F-2265-77870F91CAB8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.42937775607340267 0.073335259225990268 -0.076394945070563658 ;
	setAttr ".r" -type "double3" -5.9413758344657133e-16 2.747576525875751e-15 -5.5237506776413246e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -111.45888323242426 22.646382560252945 16.336277200118442 ;
	setAttr ".bps" -type "matrix" -0.44544497944150702 -0.53604559259280782 0.71710103399184988 0
		 0.3179042667936075 0.6540616149689793 0.68639659161347044 0 -0.83696812809376053 0.53372139406810004 -0.1209372815521742 0
		 -0.16199280683455569 4.6158360621276051 -1.5988947148590766 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem10" -p "smallShieldStem9";
	rename -uid "51089DA1-9249-9A5C-75C8-6ABDFD2569DD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.6450728559354979 0.13026787516727234 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 38.298449876914034 8.3624468250424453 35.75776018510097 ;
	setAttr ".bps" -type "matrix" -0.052113644842615908 -0.12985134008384802 0.99016301561896669 0
		 -0.12229877356956298 0.98487688501104831 0.12272135655343439 0 -0.99112419908132487 -0.11470026525411003 -0.067206183837786412 0
		 -0.40792455854320453 4.3552508176126095 -1.0468968773561107 1;
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
	setAttr ".bps" -type "matrix" 0.51285923410589007 -0.35222853801336484 -0.78288598339814963 0
		 0.15316128048267025 0.93486282786315411 -0.32027037833776545 0 0.84469937146491836 0.044345801251915062 0.53340080779662968 0
		 -0.49563281733441655 4.2958407236184266 -0.72503801510251975 1;
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
	setAttr ".bps" -type "matrix" -0.73333549252294605 0.055614854265168913 -0.6775884026392367 0
		 0.1185097177753653 0.99184696103279235 -0.046851389337112928 0 0.66945836479868659 -0.11465859703955283 -0.73394748035945367 0
		 -1.1078133786755542 4.2778421096801162 -0.83849352788546194 1;
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
	setAttr ".bps" -type "matrix" 0.71787470010069776 -0.15418153999379075 0.67888435515960821 0
		 0.19100108051108503 0.98136713764526706 0.020907615682651065 0 -0.6694583647986867 0.11465859703955285 0.73394748035945356 0
		 -1.811622959668532 4.3649367156466434 -1.494068169705056 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldRight" -p "smallShieldStem11";
	rename -uid "CB20B6DE-EE44-11D2-2BB6-96873D643EA7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.18341372605117856 -0.19139924921718166 0.61289299875498326 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -70.878078544089661 -84.983874688523144 78.586630444899512 ;
	setAttr ".bps" -type "matrix" 0.8634649751086505 0.11820591342388169 0.49036272165840961 0
		 0.012292726638408594 0.9669332878648278 -0.2547330086398456 0 -0.5042589866649978 0.22598092585556909 0.83345995435716635 0
		 -0.10130286367147345 4.2086914599344372 -0.19322884922506622 1;
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
	setAttr ".bps" -type "matrix" 0.8507458173511977 -0.035601726522438065 0.52437016632152489 0
		 0.14817026903880445 0.97348093880572806 -0.17429983693304735 0 -0.5042589866649978 0.22598092585556909 0.83345995435716635 0
		 0.66815867777118021 4.3140285691082427 0.24374921769167923 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "smallShieldStem10_orientConstraint1" -p "smallShieldStem10";
	rename -uid "7F65E91D-9748-EA78-C67A-24947E3F2DD4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "smallShieldStemCTRLW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".lr" -type "double3" 59.632735929930917 97.639468710605982 66.920298606312585 ;
	setAttr ".o" -type "double3" 118.70653717481837 -81.956866366558302 -111.86722494488798 ;
	setAttr ".rsrr" -type "double3" 6.1722639287151377e-14 1.6716548140270163e-14 -1.5902773407317495e-15 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector2" -p "smallShieldStem9";
	rename -uid "B5EC54A2-E04F-6C22-1B32-1490B723CE5A";
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
	setAttr ".bps" -type "matrix" -0.76198227675808305 0.62286061317250896 0.17727849972552701 0
		 0.54496456709945607 0.76461428796600162 -0.34406192937369051 0 -0.3498522981383283 -0.16555859143098076 -0.92205950040695273 0
		 0.35180963479746047 5.45774207245094 -1.8963450387557315 1;
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
	setAttr ".bps" -type "matrix" -0.6378489520808367 0.76296720383682648 0.10502266516706023 0
		 0.68611375428328791 0.62487710685606324 -0.3725272037187185 0 -0.3498522981383283 -0.16555859143098076 -0.92205950040695273 0
		 0.049050243497565427 5.7052240754590731 -1.8259067460229736 1;
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
	setAttr ".bps" -type "matrix" -0.43115002080261577 0.90227886845699223 0.0015821181603363071 0
		 0.83169286942310228 0.3980994804560275 -0.38704492583084821 0 -0.3498522981383283 -0.16555859143098076 -0.92205950040695273 0
		 -0.17053553130284402 5.9678830389256756 -1.7897516606738799 1;
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
	setAttr ".bps" -type "matrix" -0.28599064808402491 0.95614812432505891 -0.063167345663331681 0
		 0.89208335860266375 0.2416011530458021 -0.38185882751499833 0 -0.3498522981383283 -0.16555859143098076 -0.92205950040695273 0
		 -0.2866985297750323 6.2109803687667933 -1.7893253970056104 1;
	setAttr ".radi" 0.5;
createNode joint -n "leftLeaf4" -p "leftLeaf3";
	rename -uid "9BAA1A2F-A044-999B-9848-C0A1E59328AF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.36302432764273806 2.2204460492503131e-16 -1.1102230246251565e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.2740358813320385e-16 -5.2285505310293168e-15 11.519878735309012 ;
	setAttr ".bps" -type "matrix" -0.10207340220925781 0.98513663511676575 -0.13815509658439429 0
		 0.93122735679787483 0.045783872206333232 -0.36155144446819287 0 -0.3498522981383283 -0.16555859143098076 -0.92205950040695273 0
		 -0.39052009250784614 6.5580853987267629 -1.8122566801940179 1;
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
	setAttr ".bps" -type "matrix" 0.23188991289304445 0.93832475914076985 -0.25646386623045442 0
		 -0.90765105507886989 0.30354077022173781 0.2898837060398663 0 0.34985229813832819 0.16555859143098078 0.92205950040695273 0
		 -0.41488262894309813 6.7932144984459164 -1.8452310741243088 1;
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
	setAttr ".bps" -type "matrix" 0.9351171570716369 -0.0026622528471228479 -0.35432868210185392 0
		 -0.056207401982203614 0.98619636240110298 -0.15574807462451462 0 0.34985229813832819 0.16555859143098078 0.92205950040695273 0
		 -0.34065488710473851 7.0935713665524078 -1.9273249151884613 1;
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
	setAttr ".bps" -type "matrix" -0.3995512077925491 0.91382911845984149 0.072630397261918889 0
		 0.88654287078454375 0.40534607056836625 -0.22301637010740771 0 -0.23323929903130447 -0.024716499139121592 -0.97210520215545126 0
		 0.96275868459222913 5.4887408960162194 -1.4219369620533591 1;
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
	setAttr ".bps" -type "matrix" -0.32480994631015825 0.94424078807895995 0.053924325735392305 0
		 0.91656856162830347 0.32832671045519668 -0.22826222428665616 0 -0.23323929903130447 -0.024716499139121592 -0.97210520215545126 0
		 0.76568792107154449 5.939469109546784 -1.3861134491617433 1;
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
	setAttr ".bps" -type "matrix" -0.20311031532577201 0.9788654905574411 0.023844311774627189 0
		 0.95097088766988569 0.20300602470381526 -0.23333007679744758 0 -0.23323929903130447 -0.024716499139121592 -0.97210520215545126 0
		 0.62556874280601082 6.346803444019673 -1.362851131315876 1;
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
	setAttr ".bps" -type "matrix" 0.055141303824235433 0.99773223418241663 -0.038598257550400514 0
		 -0.97085470900642412 0.062605778836058612 0.23134746693314218 0 0.23323929903130436 0.024716499139121599 0.97210520215545126 0
		 0.5273319146094686 6.8202439035511402 -1.3513185335966924 1;
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
	setAttr ".bps" -type "matrix" 0.2839190762162071 0.95438699790408688 -0.092387317268987232 0
		 -0.93004805657983114 0.29754756410014638 0.21558306879286196 0 0.23323929903130436 0.024716499139121599 0.97210520215545126 0
		 0.55452586159730244 7.3122938842859959 -1.3703539734004764 1;
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
	setAttr ".bps" -type "matrix" 0.55092251726407271 0.82040361842651044 -0.15304340183133192 0
		 -0.80130132244917873 0.57125038078148793 0.17773348896086474 0 0.23323929903130436 0.024716499139121599 0.97210520215545126 0
		 0.67281225455545468 7.7099106875411119 -1.4088443864451683 1;
	setAttr ".radi" 0.5;
createNode joint -n "midLeaf6" -p "midLeaf5";
	rename -uid "9DA16F6C-9646-06C7-68FB-90B4AA5F939D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.49754642076731237 -8.8817841970012523e-16 -1.3322676295501878e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -22.770130449692726 ;
	setAttr ".bps" -type "matrix" 0.8181180108976529 0.53537164030992201 -0.20990504280919764 0
		 -0.52562567444166297 0.84425487941863253 0.10464869299507412 0 0.23323929903130436 0.024716499139121599 0.97210520215545126 0
		 0.94692178114031234 8.118099571473774 -1.4849905832484025 1;
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
	setAttr ".bps" -type "matrix" 0.97241862487083397 -0.0071651614412281406 -0.23313231965095854 0
		 0.0012030759333472307 0.99966882272672053 -0.025705981336483857 0 0.23323929903130436 0.024716499139121599 0.97210520215545126 0
		 1.3424596925667056 8.3769372667993682 -1.5864739892175761 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "stem5_orientConstraint1" -p "stem5";
	rename -uid "621A8494-6B4B-B325-D69C-CBAD8A02BA96";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "basicStemCTRLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 2.2474232186633643 -177.38163622013371 -89.396637708672927 ;
	setAttr ".o" -type "double3" 177.40543548227237 2.2748617902509474 90.603207746951824 ;
	setAttr ".rsrr" -type "double3" 180 -180 180 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "stem4";
	rename -uid "6FDACF05-7049-F7F1-64FF-F192C94C810E";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "ikHandle1";
	rename -uid "36B35B55-8B4C-176F-CEFF-6D8F21CAB00A";
	setAttr ".pv" -type "double3" -0.0014225364711754609 -0.0045762999640939469 0.059808309361048528 ;
	setAttr ".roc" yes;
createNode parentConstraint -n "ikHandle1_parentConstraint1" -p "ikHandle1";
	rename -uid "565470BA-BF40-F5CB-B6E9-59B7A48B5F23";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "basicStemCTRLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -5.7536130970703425e-08 1.0735511812853815e-07 
		-2.0724754579148907e-08 ;
	setAttr ".rst" -type "double3" 1.8909521719636859 3.4896720529270175 -0.61458601639888788 ;
	setAttr -k on ".w0";
createNode transform -n "basicStemCTRL";
	rename -uid "14948A05-014A-36F5-8772-C4AE5BE60F1F";
	setAttr ".rp" -type "double3" 1.8909522294998169 3.4896719455718994 -0.6145859956741333 ;
	setAttr ".sp" -type "double3" 1.8909522294998169 3.4896719455718994 -0.6145859956741333 ;
	setAttr ".hdl" -type "double3" 1.8909522294998169 3.4896719455718994 -0.6145859956741333 ;
createNode nurbsCurve -n "basicStemCTRLShape" -p "basicStemCTRL";
	rename -uid "4E531ECA-A741-292C-EFDB-B292314ACDC0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		2.6527595555940326 3.4896719455718994 -1.3763933217683488
		2.6527595555940326 3.4896719455718994 -0.86852177103887185
		2.6527595555940326 3.4896719455718994 -0.36065022030939486
		2.6527595555940326 3.4896719455718994 0.14722133042008212
		;
createNode nurbsCurve -n "bottomnurbsSquareShape1" -p "basicStemCTRL";
	rename -uid "BDC3D835-2340-774E-4EB8-779D81831311";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		1.1291449034056016 3.4896719455718994 -1.3763933217683488
		1.6370164541350785 3.4896719455718994 -1.3763933217683488
		2.1448880048645553 3.4896719455718994 -1.3763933217683488
		2.6527595555940326 3.4896719455718994 -1.3763933217683488
		;
createNode nurbsCurve -n "leftnurbsSquareShape1" -p "basicStemCTRL";
	rename -uid "CAD46912-B94E-B21B-422B-6C9F98B063DF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		1.1291449034056016 3.4896719455718994 0.14722133042008223
		1.1291449034056016 3.4896719455718994 -0.36065022030939475
		1.1291449034056016 3.4896719455718994 -0.86852177103887174
		1.1291449034056016 3.4896719455718994 -1.3763933217683486
		;
createNode nurbsCurve -n "topnurbsSquareShape1" -p "basicStemCTRL";
	rename -uid "08514969-9343-6E83-7DA6-B6A9B625756B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		2.6527595555940326 3.4896719455718994 0.14722133042008223
		2.1448880048645558 3.4896719455718994 0.14722133042008223
		1.6370164541350787 3.4896719455718994 0.14722133042008223
		1.1291449034056016 3.4896719455718994 0.14722133042008223
		;
createNode transform -n "smallShieldStemCTRL";
	rename -uid "8403CE71-0240-4332-F12E-3CADDE8D740D";
	setAttr ".rp" -type "double3" -0.40792456269264221 4.3552508354187012 -1.0468969345092773 ;
	setAttr ".sp" -type "double3" -0.40792456269264221 4.3552508354187012 -1.0468969345092773 ;
createNode nurbsCurve -n "smallShieldStemCTRLShape" -p "smallShieldStemCTRL";
	rename -uid "939195A5-F14E-B3DF-C17A-9589E281615B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.38894699406161176 5.2858478441997754 -0.56503953717317579
		0.38020919317039381 4.6654498383457259 -0.55140571208567923
		0.37147139227917625 4.0450518324916782 -0.53777188699818268
		0.36273359138795874 3.4246538266376292 -0.5241380619106879
		;
createNode nurbsCurve -n "bottomnurbsSquareShape1" -p "smallShieldStemCTRL";
	rename -uid "60AA3ADE-2D45-CF37-993E-51BC95C247CB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-1.1785827167732421 5.2858478441997736 -1.5696558071078686
		-0.65607281316162436 5.2858478441997754 -1.2347837171296376
		-0.13356290955000699 5.2858478441997736 -0.89991162715140671
		0.38894699406161176 5.2858478441997754 -0.56503953717317579
		;
createNode nurbsCurve -n "leftnurbsSquareShape1" -p "smallShieldStemCTRL";
	rename -uid "F077208D-EA4B-5016-40A5-BDA9E0B23DEA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-1.2047961194468952 3.4246538266376287 -1.5287543318453798
		-1.1960583185556772 4.0450518324916782 -1.5423881569328755
		-1.1873205176644601 4.6654498383457259 -1.556021982020372
		-1.1785827167732421 5.2858478441997736 -1.5696558071078686
		;
createNode nurbsCurve -n "topnurbsSquareShape1" -p "smallShieldStemCTRL";
	rename -uid "7B360124-5E40-AB64-C78E-B49CE719322D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0.36273359138795869 3.4246538266376287 -0.5241380619106879
		-0.15977631222365912 3.4246538266376287 -0.85901015188891794
		-0.68228621583527727 3.4246538266376287 -1.193882241867148
		-1.2047961194468952 3.4246538266376287 -1.5287543318453798
		;
createNode transform -n "bigShieldStemCTRL";
	rename -uid "F57F39BB-BE4E-55E1-DD45-8FB09E63CED4";
	setAttr ".rp" -type "double3" 3.5420210361480704 4.778651237487793 0.68513005971908614 ;
	setAttr ".sp" -type "double3" 3.5420210361480704 4.778651237487793 0.68513005971908614 ;
createNode nurbsCurve -n "bigShieldStemCTRLShape" -p "bigShieldStemCTRL";
	rename -uid "EAB4AA90-9A44-663B-A3D6-27940EEA6E6A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		4.7430378427087163 6.2823932610272584 -0.082239200452377315
		4.8290369390520711 5.3150395969490027 0.02133763367684427
		4.9150360353954259 4.3476859328707471 0.1249144678060663
		5.0010351317387807 3.3803322687924915 0.22849130193528788
		;
createNode nurbsCurve -n "bottomnurbsSquareShape1" -p "bigShieldStemCTRL";
	rename -uid "9BD488BF-6C40-C0A9-D971-519831532FDA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		2.0830069405573619 6.1769702061830944 1.1417688175028835
		2.9696839079411461 6.2121112244644818 0.7337661448511299
		3.8563608753249312 6.2472522427458701 0.32576347219937629
		4.7430378427087163 6.2823932610272584 -0.082239200452377315
		;
createNode nurbsCurve -n "leftnurbsSquareShape1" -p "bigShieldStemCTRL";
	rename -uid "2D3446B4-F34E-85A2-65D2-C9AF56A61BB1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		2.3410042295874263 3.2749092139483271 1.4524993198905487
		2.2550051332440715 4.2422628780265832 1.3489224857613267
		2.1690060369007167 5.2096165421048379 1.2453456516321055
		2.0830069405573619 6.1769702061830936 1.1417688175028835
		;
createNode nurbsCurve -n "topnurbsSquareShape1" -p "bigShieldStemCTRL";
	rename -uid "5DAAFA52-A041-758E-B9ED-9CBD8975C244";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		5.0010351317387807 3.3803322687924915 0.22849130193528788
		4.1143581643549965 3.3451912505111032 0.63649397458704149
		3.2276811969712114 3.3100502322297154 1.0444966472387942
		2.3410042295874263 3.2749092139483271 1.4524993198905487
		;
createNode ikHandle -n "ikHandle2";
	rename -uid "BA0D0C44-3245-0750-9DCE-70BEE4116E6A";
	setAttr ".pv" -type "double3" 0.0068290479086760177 0.050810477988909766 -0.031171452183039447 ;
	setAttr ".roc" yes;
createNode parentConstraint -n "ikHandle2_parentConstraint1" -p "ikHandle2";
	rename -uid "BD4C6AEA-4541-F395-A962-D88178910625";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "smallShieldStemCTRLW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.4547885652844741e-09 9.8346042420871527e-09 
		6.6455402514264961e-08 ;
	setAttr ".rst" -type "double3" -0.40792455723785365 4.3552508452533054 -1.0468968680538748 ;
	setAttr -k on ".w0";
createNode ikHandle -n "ikHandle3";
	rename -uid "DDD5BBE6-364C-5501-D55A-C79298B82855";
	setAttr ".pv" -type "double3" -0.015511170952801669 0.056476740360898711 -0.013030018184198891 ;
	setAttr ".roc" yes;
createNode parentConstraint -n "ikHandle3_parentConstraint1" -p "ikHandle3";
	rename -uid "C807C8B8-BA48-6DE3-F015-05B73E47830B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "bigShieldStemCTRLW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -6.1351276059440352e-08 -1.3756810179899048e-07 
		-6.0065034057643629e-09 ;
	setAttr ".rst" -type "double3" 3.5420209747967943 4.7786510999196912 0.68513005371258273 ;
	setAttr -k on ".w0";
createNode transform -n "rightLeafCTRL";
	rename -uid "0B5C76FC-FB44-B406-34EC-70B835177933";
	setAttr ".rp" -type "double3" 1.4604748487472534 5.1612968444824219 -0.73556101322174072 ;
	setAttr ".sp" -type "double3" 1.4604748487472534 5.1612968444824219 -0.73556101322174072 ;
createNode nurbsCurve -n "rightLeafCTRLShape" -p "rightLeafCTRL";
	rename -uid "B8D816A1-E74D-04D4-F904-F9BA37D13482";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.69098407915125 5.1612968444824219 -0.9660702436257369
		1.4604748487472534 5.1612968444824219 -1.061550293111257
		1.229965618343257 5.1612968444824219 -0.96607024362573712
		1.1344855688577371 5.1612968444824219 -0.73556101322174083
		1.229965618343257 5.1612968444824219 -0.50505178281774443
		1.4604748487472534 5.1612968444824219 -0.40957173333222435
		1.6909840791512496 5.1612968444824219 -0.50505178281774432
		1.7864641286367697 5.1612968444824219 -0.7355610132217405
		1.69098407915125 5.1612968444824219 -0.9660702436257369
		1.4604748487472534 5.1612968444824219 -1.061550293111257
		1.229965618343257 5.1612968444824219 -0.96607024362573712
		;
createNode transform -n "midLeafCTRL";
	rename -uid "4C08E6BB-D242-3C4E-4C7B-B4A1B020D565";
	setAttr ".rp" -type "double3" 0.76568794250488281 5.9394693374633789 -1.3861134052276611 ;
	setAttr ".sp" -type "double3" 0.76568794250488281 5.9394693374633789 -1.3861134052276611 ;
createNode nurbsCurve -n "midLeafCTRLShape" -p "midLeafCTRL";
	rename -uid "8FC18EFB-BA4F-860B-0D71-059F6EFE3557";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.97973473381821585 6.0354746987753511 -1.6124670054435832
		0.76568794250488281 5.9543848510313726 -1.7117612795611019
		0.55164115119154999 5.8645576977290226 -1.6202954454520599
		0.46298006724712382 5.8186127670034518 -1.3916489482437671
		0.55164115119154988 5.8434639761514067 -1.1597598050117388
		0.7656879425048827 5.9245538238953852 -1.0604655308942204
		0.97973473381821563 6.0143809771977352 -1.1519313650032623
		1.0683958177626418 6.0603259079233061 -1.3805778622115552
		0.97973473381821585 6.0354746987753511 -1.6124670054435832
		0.76568794250488281 5.9543848510313726 -1.7117612795611019
		0.55164115119154999 5.8645576977290226 -1.6202954454520599
		;
createNode transform -n "leftLeafCTRL";
	rename -uid "E0F64E6F-6A48-0C13-828C-B38374A92E86";
	setAttr ".rp" -type "double3" 0.049050241708755493 5.7052240371704102 -1.8259067535400391 ;
	setAttr ".sp" -type "double3" 0.049050241708755493 5.7052240371704102 -1.8259067535400391 ;
createNode nurbsCurve -n "leftLeafCTRLShape" -p "leftLeafCTRL";
	rename -uid "227F12E2-4D48-09BF-2E2B-D3A73ECF78E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.20753508867287854 5.783570204121232 -2.0997925728329658
		-0.01787414410548438 5.6863468380806692 -2.1443934699675826
		-0.20407997932735483 5.6001814792472597 -2.002429168054618
		-0.2420055641127713 5.57554862621887 -1.7570604297818584
		-0.10943460525536741 5.6268778702195883 -1.5520209342471121
		0.11597462752299526 5.7241012362601511 -1.5074200371124955
		0.30218046274486576 5.8102665950935606 -1.6493843390254601
		0.34010604753028234 5.8348994481219503 -1.8947530772982197
		0.20753508867287854 5.783570204121232 -2.0997925728329658
		-0.01787414410548438 5.6863468380806692 -2.1443934699675826
		-0.20407997932735483 5.6001814792472597 -2.002429168054618
		;
createNode transform -n "rightLeafCTRL1";
	rename -uid "3D82B323-B041-6021-BA17-A0AA03ADA1C5";
	setAttr ".rp" -type "double3" 1.564420223236084 6.4630837440490723 -0.70564758777618408 ;
	setAttr ".sp" -type "double3" 1.564420223236084 6.4630837440490723 -0.70564758777618408 ;
createNode nurbsCurve -n "rightLeafCTRL1Shape" -p "rightLeafCTRL1";
	rename -uid "CA07697A-5041-623E-B7FC-25A7F52E6A46";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7885865503143568 6.4093812012258526 -0.93615681818018026
		1.564420223236084 6.4630837440490723 -1.0316368676657004
		1.3402538961578117 6.516786286872291 -0.93615681818018048
		1.247401163254628 6.5390306084435901 -0.70564758777618419
		1.3402538961578117 6.516786286872291 -0.47513835737218779
		1.564420223236084 6.4630837440490723 -0.37965830788666771
		1.7885865503143563 6.4093812012258535 -0.47513835737218768
		1.8814392832175404 6.3871368796545536 -0.70564758777618386
		1.7885865503143568 6.4093812012258526 -0.93615681818018026
		1.564420223236084 6.4630837440490723 -1.0316368676657004
		1.3402538961578117 6.516786286872291 -0.93615681818018048
		;
createNode transform -n "rightLeafCTRL2";
	rename -uid "3231AD5F-8F40-5FDA-5EFC-4687B3C12E96";
	setAttr ".rp" -type "double3" 2.4765219688415527 7.7029490470886248 -0.6080399751663208 ;
	setAttr ".sp" -type "double3" 2.4765219688415527 7.7029490470886248 -0.6080399751663208 ;
createNode nurbsCurve -n "rightLeafCTRL2Shape" -p "rightLeafCTRL2";
	rename -uid "D321C208-5046-845B-BD34-93AAFDBCD10B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.5601657176800456 7.4881509358732643 -0.83854920557031698
		2.4765219688415527 7.7029490470886248 -0.93402925505583712
		2.3928782200030607 7.9177471583039836 -0.8385492055703172
		2.3582318448264283 8.0067194491415101 -0.60803997516632091
		2.3928782200030607 7.9177471583039836 -0.37753074476232451
		2.4765219688415527 7.7029490470886248 -0.28205069527680443
		2.5601657176800456 7.4881509358732652 -0.3775307447623244
		2.594812092856678 7.3991786450357386 -0.60803997516632058
		2.5601657176800456 7.4881509358732643 -0.83854920557031698
		2.4765219688415527 7.7029490470886248 -0.93402925505583712
		2.3928782200030607 7.9177471583039836 -0.8385492055703172
		;
createNode transform -n "midLeafCTRL1";
	rename -uid "0DD95646-C546-84D0-5C99-D3AF9C8D62DC";
	setAttr ".rp" -type "double3" 0.55452585220336914 7.3122940063476562 -1.3703539371490479 ;
	setAttr ".sp" -type "double3" 0.55452585220336914 7.3122940063476562 -1.3703539371490479 ;
createNode nurbsCurve -n "midLeafCTRL1Shape" -p "midLeafCTRL1";
	rename -uid "7BA93DC9-F542-34A4-D961-D6ACD72916F5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.75736713317482884 7.2122846957088385 -1.6051358851823063
		0.5420944448559899 7.299896987270901 -1.6958701189776315
		0.33410390636186182 7.3947712844751283 -1.5959213882296788
		0.25523355429702121 7.4413315107399018 -1.3638383038686221
		0.35168457123191033 7.4123033169864749 -1.1355719891157894
		0.56695725955074838 7.3246910254244124 -1.0448377553204642
		0.77494779804487646 7.2298167282201851 -1.1447864860684169
		0.85381815010971707 7.1832565019554124 -1.3768695704294736
		0.75736713317482884 7.2122846957088385 -1.6051358851823063
		0.5420944448559899 7.299896987270901 -1.6958701189776315
		0.33410390636186182 7.3947712844751283 -1.5959213882296788
		;
createNode transform -n "leftLeafCTRL1";
	rename -uid "A07DEB9B-4540-BE01-5388-75998A04F969";
	setAttr ".rp" -type "double3" -0.28669852018356323 6.2109804153442383 -1.7893253564834595 ;
	setAttr ".sp" -type "double3" -0.28669852018356323 6.2109804153442383 -1.7893253564834595 ;
createNode nurbsCurve -n "leftLeafCTRL1Shape" -p "leftLeafCTRL1";
	rename -uid "51FA2539-F142-2C90-15A6-1692511BE4D2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.12821367321944019 6.2893265822950601 -2.0632111757763862
		-0.35362290599780311 6.1921032162544973 -2.107812072911003
		-0.53982874121967361 6.1059378574210879 -1.9658477709980384
		-0.57775432600509002 6.0813050043926982 -1.7204790327252788
		-0.44518336714768614 6.1326342483934164 -1.5154395371905325
		-0.21977413436932347 6.2298576144339792 -1.4708386400559159
		-0.033568299147452962 6.3160229732673887 -1.6128029419688805
		0.0043572856379636149 6.3406558262957784 -1.8581716802416401
		-0.12821367321944019 6.2893265822950601 -2.0632111757763862
		-0.35362290599780311 6.1921032162544973 -2.107812072911003
		-0.53982874121967361 6.1059378574210879 -1.9658477709980384
		;
createNode fosterParent -n "modelRNfosterParent1";
	rename -uid "51799503-854D-4B50-523C-19889F000725";
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
	setAttr ".vcs" 2;
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
	setAttr ".vcs" 2;
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
	setAttr ".vcs" 2;
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
	setAttr ".vcs" 2;
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
	setAttr ".vcs" 2;
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
	setAttr ".vcs" 2;
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
	setAttr ".vcs" 2;
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
	setAttr ".vcs" 2;
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
	setAttr ".vcs" 2;
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
	setAttr ".vcs" 2;
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
	setAttr ".vcs" 2;
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
	setAttr ".vcs" 2;
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
	setAttr ".vcs" 2;
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
	setAttr ".vcs" 2;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D3EDB3E3-D546-6600-D8BD-4BA4D2B526B3";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "860354C8-2D45-0747-8B03-B4812144FB73";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "705E5831-0341-2B59-EC5D-EAB0A83A0C9F";
createNode displayLayerManager -n "layerManager";
	rename -uid "0717BFD9-6343-F806-DB42-E082B65C66D0";
createNode displayLayer -n "defaultLayer";
	rename -uid "CBD33F0C-584E-ACBD-867B-E28EE5AC2B15";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E3A17EF8-A04B-3486-BF6D-DE9B320CD09C";
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
		"modelRN" 307
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
		"pt[0:165]" " -type \"float3\" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		
		2 "|model:shield_Plant|model:shield_big|model:shield_big|model:shield_bigShape" 
		"pt[166:205]" " 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		
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
		3 "model:polyTweakUV19.uvTweak[0]" "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom|model:thorn_smallBottomShape.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV5.uvTweak[0]" "|model:shield_Plant|model:shield_small|model:shield_Big|model:shield_BigShape.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV15.output" "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid|model:thorns_bigMidShape.inMesh" 
		""
		3 "model:polyTweakUV22.uvTweak[0]" "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2|model:rightStamen_spikeShape2.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV16.uvTweak[0]" "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom|model:thorns_bigBottomShape.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV18.output" "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid|model:thorn_smallMidShape.inMesh" 
		""
		3 "model:polyTweakUV1.uvTweak[0]" "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop|model:thorns_bigTopShape.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV1.output" "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop|model:thorns_bigTopShape.inMesh" 
		""
		3 "model:polyTweakUV14.uvTweak[0]" "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen|model:midStamenShape.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV21.uvTweak[0]" "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1|model:midStamen_spikeShape1.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV17.output" "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop|model:thorn_smallTopShape.inMesh" 
		""
		3 "model:polyTweakUV7.uvTweak[0]" "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen|model:leftStamenShape.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV6.uvTweak[0]" "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen|model:rightStamenShape.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV13.uvTweak[0]" "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1|model:leftStamen_spikeShape1.uvSet[0].uvSetTweakLocation" 
		""
		3 "model:polyTweakUV20.uvTweak[0]" "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1|model:rightStamen_spikeShape1.uvSet[0].uvSetTweakLocation" 
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
createNode script -n "uiConfigurationScriptNode";
	rename -uid "BE655725-384B-DCA8-812B-E8AFAB4627D3";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 776\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 776\n            -height 704\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 776\n            -height 704\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
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
createNode skinCluster -n "skinCluster1";
	rename -uid "4FB7EB75-EF49-AA75-5FF5-E4A86358B47F";
	setAttr -s 222 ".wl";
	setAttr ".wl[0:101].w"
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
		6 0.053906096299722352 31 0.007129151639465663
		5 3 0.032785000164529621 4 0.44285471647087621 5 0.46995860569429437 
		6 0.047537658214708435 31 0.0068640194555913457
		5 3 0.046796727514634096 4 0.42521300192667866 5 0.44168898332077045 
		6 0.06748153238159274 31 0.01881975485632404
		5 3 0.044178755999276308 4 0.32039608311354068 5 0.50160740756736188 
		6 0.077439222498256521 31 0.056378530821564625
		5 4 0.11087076217441798 5 0.71590304573834596 6 0.055536112955936481 
		31 0.10344973499965501 32 0.014240344131644642
		5 4 0.080584881774222225 5 0.74055449819831354 6 0.053832851730486249 
		31 0.11261072678077874 32 0.012417041516199285
		5 3 0.036497082324903084 4 0.3170124347811501 5 0.4920236894485765 
		6 0.097002541523264763 31 0.057464251922105601
		5 5 0.16247061562874388 6 0.50492203275127834 7 0.29826470775967412 
		8 0.033427543760784786 19 0.00091510009951889515
		5 5 0.18356645720085876 6 0.58940879104216293 7 0.19583586988226356 
		8 0.0172598590207815 19 0.013929022853933288
		5 4 0.011441211365434467 5 0.27417574640622849 6 0.585291137582023 
		7 0.11730015316398636 19 0.011791751482327587
		5 5 0.34143443884734365 6 0.48455261529683391 7 0.12126022455533392 
		19 0.012138795107603073 31 0.040613926192885459
		5 5 0.22927274482742838 6 0.52453251190696415 7 0.084937671335008721 
		19 0.010306769981980324 31 0.15095030194861836
		5 5 0.033847536635866204 6 0.61601366761637355 19 0.24931095540523529 
		31 0.063628351239675765 32 0.037199489102849204
		5 5 0.050537453834850324 6 0.76683544811677395 19 0.072372041642665863 
		31 0.070751671442548306 32 0.039503384963161504
		5 5 0.13586526206591987 6 0.51248202421108502 7 0.25411725446658245 
		19 0.00070732581662014127 31 0.096828133439792421
		5 6 0.21466465211979219 7 1.4205678101914092e-07 19 0.78533476591110229 
		31 2.5669987835812039e-07 32 1.8321244612100561e-07
		4 6 0.21004725921023573 7 0.039083496469535961 8 0.01168289778931399 
		19 0.73918634653091431
		5 5 0.39229764710202147 6 0.16275767498224059 19 0.019690521061420441 
		31 0.38615250612223034 32 0.03910165073208715
		5 5 0.088959040280972151 6 0.62788088071881809 7 0.15174975750709738 
		19 0.037137802690267563 31 0.094272518802844776
		5 5 0.37150345943241736 6 0.30616085099963997 7 0.040968736882853359 
		19 0.0016521175857633352 31 0.27971483509932593
		4 6 0.44751987835182377 7 0.39251453142202047 8 0.12487903295705934 
		19 0.035086557269096375
		4 6 0.011886935170106935 7 0.00080613799584227275 19 0.98711884021759033 
		32 0.00018808661646045965
		5 5 0.47297192425954704 6 0.15080234202049111 19 0.0014640722656622529 
		31 0.33229195172773923 32 0.042469709726560306
		5 3 0.03790356114302635 4 0.27127885163016235 5 0.53458358608159184 
		6 0.081350810320675593 31 0.074883190824543852
		5 3 0.1021886969479328 4 0.36243028007536365 5 0.43835193631953112 
		6 0.044322795861768155 31 0.052706290795404342
		5 4 0.085616596410368145 5 0.74492931599939605 6 0.042403494592877032 
		31 0.11402731204688187 32 0.013023280950476864
		5 5 0.46046904801067029 6 0.18629305768896279 19 0.0021786000579595566 
		31 0.30438393262174157 32 0.046675361620665733
		5 3 0.17636038658128705 4 0.45542572421464744 5 0.31796139561735504 
		6 0.027947048365437328 31 0.022305445221273056
		5 3 0.08576315513912397 4 0.38089126093601361 5 0.45957106187423563 
		6 0.034933885145468288 31 0.038840636905158564
		5 5 0.42829114242304905 6 0.033557312090698989 19 0.016304545104503632 
		31 0.42858692234304435 32 0.093260078038703981
		5 5 0.40579408514125309 6 0.029096242593993422 19 0.023145665517845422 
		31 0.41549517486516752 32 0.1264688318817406
		4 5 0.080899141655579751 6 0.25060336427067775 31 0.35533700003052249 
		32 0.31316049404321994
		4 6 0.96603410168413117 19 0.0055116084404289722 31 0.014255435643938384 
		32 0.014198854231501435
		5 5 0.32494725308511563 6 0.064101983255263797 19 0.0007541011436842382 
		31 0.43801530687923845 32 0.17218135563669784
		5 5 0.35727495150458816 6 0.049933096476566505 19 0.024491332471370697 
		31 0.40592413417796475 32 0.16237648536950988
		5 5 0.16314310737924873 6 0.28855546059028192 19 0.0017363313818350434 
		31 0.31225484151630833 32 0.23431025913232592
		3 6 0.92108990266571122 31 0.040291064668472362 32 0.038619032665816552
		5 6 0.065915503373206438 7 0.47219775194707125 8 0.367517620538233 
		9 0.083196278222016987 10 0.011172845919472303
		5 6 0.087549882138600543 7 0.43550736242038368 8 0.38189722135533388 
		9 0.088022499002715901 19 0.0070230350829660892
		5 6 0.072132627629769033 7 0.48651143587327078 8 0.36028907118771858 
		9 0.070817640918284797 10 0.010249224390956718
		5 6 0.10064049843061733 7 0.46313006766270198 8 0.36966991162087648 
		9 0.06124171136294311 19 0.0053178109228610992
		4 6 0.13559639163218284 7 0.46207176408819395 8 0.39666217037484663 
		19 0.0056696739047765732
		4 6 0.16331318721612667 7 0.41937021027471771 8 0.3759619984437374 
		19 0.041354604065418243
		5 6 0.11743279950839747 7 0.41386145145927528 8 0.38509362064194719 
		9 0.08298171881717524 19 0.00063040957320481539
		4 6 0.20576754501605618 7 0.40502268885797049 8 0.37377254497140272 
		19 0.01543722115457058
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
		14 0.19675833829798892 15 0.011238535783256334
		5 11 0.031913800841884284 12 0.21232453430922232 13 0.23157608059292992 
		14 0.45076609230112252 15 0.073419491954841043
		5 11 0.00081545376548402963 12 0.0042025632716522392 13 0.0063985867876980261 
		14 0.93530049084734157 15 0.053282905327824072;
	setAttr ".wl[102:204].w"
		5 40 0.013797154349690579 41 0.068725545117864786 42 0.77231961805082372 
		43 0.0030325216343432917 45 0.14212516084727761
		5 40 7.906211991265886e-06 41 5.3814413221381968e-05 42 0.99915192632529104 
		43 2.2854886061559726e-06 45 0.00078406756089005982
		5 40 0.0086181792871635517 41 0.082047848206053639 42 0.82444016755457861 
		43 0.0042849263494610856 45 0.080608878602743073
		5 40 0.03665835231928808 41 0.39276371904036722 42 0.48505384184609895 
		43 0.048717660797097447 45 0.03680642599714827
		5 40 0.0032040464202183691 41 0.031831685498218118 42 0.94515150429890193 
		43 0.019151656979656193 45 0.00066110680300546037
		5 40 0.015630382868099538 41 0.080050750876043367 42 0.85836168733606222 
		43 0.044437301915739261 45 0.0015198770040556692
		5 40 0.11584405394855844 41 0.38248978096189695 42 0.43439034757000872 
		43 0.049621983650573645 45 0.017653833868962156
		5 40 0.10151067726210951 41 0.34387342511196067 42 0.45492682788803712 
		43 0.023350655352152389 45 0.076338414385740322
		5 36 0.0010568840040315356 37 0.0043174983241441832 38 0.032191212264676965 
		39 0.84389382709899607 40 0.11854057830815121
		5 36 0.0020054402058360629 37 0.0072464017655785463 38 0.044039257735401502 
		39 0.66603571787892091 40 0.28067318241426303
		5 36 0.0019345590771970942 37 0.0072464572668676933 38 0.046611014913142443 
		39 0.61267379645702247 40 0.33153417228577031
		5 36 0.0017135074017612061 37 0.0072345043711689091 38 0.05656933207631331 
		39 0.64328463380742373 40 0.29119802234333292
		5 36 0.002445630213552083 37 0.011705480836465986 38 0.1062366205560524 
		39 0.66483875601515274 40 0.21477351237877684
		5 36 0.0033536046581397892 37 0.017586335971258728 38 0.16630997648529819 
		39 0.66584340436968559 40 0.14690667851561764
		5 36 0.0028514435748432884 37 0.015592388926252551 38 0.15431857346338723 
		39 0.73078802604877058 40 0.096449567986746212
		5 36 0.0010669358665428628 37 0.0054126677045850469 38 0.054466386759668611 
		39 0.88179635751696273 40 0.057257652152240726
		5 36 0.013312442524899786 37 0.18359355466834187 38 0.56515050132247235 
		39 0.23335081954273831 47 0.0045926819415477204
		5 36 0.015306386166497255 37 0.15660227376061078 38 0.48835284272547236 
		39 0.33194191728207212 40 0.0077965800653475208
		5 36 0.017024369937807881 37 0.1836241369504224 38 0.4594464108593162 
		39 0.33194066563569857 40 0.007964416616754939
		5 36 0.015694589551783076 37 0.25157639914723268 38 0.47404925679952425 
		39 0.25144844028077185 47 0.0072313142206880806
		5 36 0.012691649358308155 37 0.35410722848446097 38 0.49489323925005335 
		39 0.13238227523050455 47 0.0059256076766729107
		5 36 0.014722997770720147 37 0.41876734737031335 38 0.47563034335054216 
		39 0.083318193814779049 47 0.0075611176936452784
		5 36 0.019938481177516579 37 0.41104105075560643 38 0.47294244379780098 
		39 0.085763821859137043 47 0.01031420240993907
		5 36 0.018720610727081609 37 0.32325096966958172 38 0.52602959718790043 
		39 0.1249956703005088 47 0.0070031521149274507
		5 35 0.011553213079399561 36 0.3782074380755826 37 0.49181889423485858 
		38 0.061472497026209369 47 0.056947957583949868
		5 35 0.021300877386610365 36 0.32712413678039631 37 0.43326871996942173 
		38 0.12755774356750957 47 0.090748522296062048
		5 36 0.30007284910219639 37 0.40103870144815229 38 0.15193313510156642 
		39 0.021324048632838034 47 0.12563126571524699
		5 36 0.30122975550517267 37 0.37661698096046514 38 0.12269690940842622 
		39 0.014001603482801805 47 0.18545475064313424
		4 36 0.29498772343683349 37 0.3351516264743809 38 0.077010172387885281 
		47 0.29285047770090028
		4 36 0.14085605050011962 37 0.14872572909111773 38 0.029107934344855969 
		47 0.68131028606390664
		4 36 0.18591164165255353 37 0.1972345337952254 38 0.0308363965855936 
		47 0.58601742796662748
		4 36 0.39983675425607063 37 0.45735992453415253 38 0.043416237399995408 
		47 0.099387083809781271
		5 33 0.045733411150000298 34 0.33138600984850097 35 0.44528430782440542 
		36 0.078929401075437972 54 0.098666870101655216
		5 33 0.088404980406343744 34 0.36413645588301075 35 0.36202876224968333 
		36 0.080692745618703182 54 0.10473705584225894
		5 33 0.086904978908951991 34 0.37410480482234237 35 0.35282542150588259 
		36 0.04904997001001999 54 0.13711482475280312
		5 33 0.054624482329035079 34 0.35347600265529844 35 0.35251641130995948 
		36 0.029217418818709082 54 0.21016568488699788
		5 33 0.021003303063665081 34 0.35467093577102948 35 0.24289305065990363 
		36 0.013941390838559874 54 0.36749131966684201
		4 33 0.0014135672773791191 34 0.054489726906819365 35 0.016831083780560606 
		54 0.92726562203524088
		4 34 0.016479684575345689 35 0.0062838394037922976 36 0.0008098717248571399 
		54 0.97642660429600492
		5 33 0.024673845451273775 34 0.2856193524334939 35 0.2344900510669817 
		36 0.02756173983280031 54 0.42765501121545041
		5 32 0.095050387490506025 33 0.41131563148941042 34 0.35109997740554988 
		35 0.079573951377761562 54 0.062960052236772146
		5 32 0.17353082389593541 33 0.42356520827970406 34 0.28857082223347497 
		35 0.066024503662843334 54 0.048308641928042247
		5 32 0.18176441271946356 33 0.42381153916891307 34 0.29582776339281824 
		35 0.052915555898430937 54 0.045680728820374127
		5 32 0.13004823583375374 33 0.43937529826150773 34 0.3493944653335736 
		35 0.0370275021347546 54 0.044154498436410235
		4 32 0.089616404324456736 33 0.45135755627730495 34 0.4077740193730402 
		54 0.051252020025197936
		4 32 0.070447828486497763 33 0.43834952994042337 34 0.42176597465779725 
		54 0.069436666915281775
		5 32 0.065640197672025821 33 0.40000409887789251 34 0.3919952633348574 
		35 0.047511089517629571 54 0.094849350597594709
		5 32 0.069562460546409327 33 0.39090546837825185 34 0.37426012550377608 
		35 0.071148174634453235 54 0.094123770937109566
		5 34 0.0035765099021809357 35 0.13001358291036483 36 0.82821805031451701 
		37 0.019851024811817421 47 0.018340832061119704
		5 34 0.018315542234670489 35 0.38215909210592869 36 0.48924490884761873 
		37 0.042414262959793433 47 0.067866193851988749
		4 35 0.32817816340316996 36 0.43674686889434911 37 0.061302150899106754 
		47 0.17377281680337428
		4 35 0.30012030039947996 36 0.47995861937900508 37 0.051415887352230953 
		47 0.16850519286928417
		5 34 0.01853880346776654 35 0.28043324066372993 36 0.50496052925732937 
		37 0.047397548283506209 47 0.14866987832766798
		5 34 0.038647814175184737 35 0.30270507483938186 36 0.4221943547113054 
		37 0.082033938849361984 47 0.15441881742476607
		5 34 0.059668809199146598 35 0.30994597550522268 36 0.39268164913228659 
		37 0.1072731566647161 47 0.13043040949862822
		5 34 0.038564481410597769 35 0.28285999408413615 36 0.48708549568665682 
		37 0.10070728310856354 47 0.090782745710045784
		5 5 0.030634286317378582 31 0.27978294226576306 32 0.45355542580265379 
		33 0.20628556733419165 34 0.029741778280012985
		5 5 0.02395928007367671 6 0.016696676019389088 31 0.33248503693780546 
		32 0.51076338775711938 33 0.11609561921200949
		5 6 0.025738482079247619 19 0.0097358524799346924 31 0.25242460033338748 
		32 0.52637946734186747 33 0.18572159776556274
		5 6 0.038715428335539204 19 0.00029623683076351881 31 0.11046351041846689 
		32 0.55103991577527989 33 0.29948490863995042
		4 6 0.080405569326819984 19 0.0090880375355482101 32 0.54015424886108054 
		33 0.37035214427655128
		4 6 0.13034449769536938 19 0.015698814764618874 32 0.47997281711223883 
		33 0.37398387042777292
		4 19 0.0028875691350549459 31 0.14725389314844145 32 0.49063618895222161 
		33 0.35922234876428211
		5 6 0.046835041354316584 19 0.013143322430551052 31 0.22373217742838478 
		32 0.43775402599758356 33 0.27853543278916404
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
		5 38 0.0085005872308622984 39 0.12609353802753484 40 0.79430721023592665 
		41 0.062366938368346878 42 0.0087317261373293566
		5 38 0.0081073824308977131 39 0.15662970459855852 40 0.80612516286377578 
		41 0.025364453148522363 42 0.0037732969582455799
		5 38 0.011050950962651754 39 0.22205924098489221 40 0.73832208398834287 
		41 0.024757975480147441 42 0.003809748583965553
		5 38 0.011758872235843758 39 0.21954870581500005 40 0.71850705688840111 
		41 0.043753299196867323 42 0.0064320658638877841
		5 38 0.0071837802251494987 39 0.13262733370906898 40 0.77612673400082466 
		41 0.075547567849515634 42 0.0085145842154412399
		5 38 0.0034540462393383097 39 0.060789172830203159 40 0.82872620164769606 
		41 0.099098728892778376 42 0.0079318503899841498
		5 38 0.0036824173582630055 39 0.056630210716789489 40 0.80729355919284818 
		41 0.12192504379943241 42 0.010468768932666963
		5 38 0.0064303334665079814 39 0.088287854282741995 40 0.77678629576758751 
		41 0.11502987630230621 42 0.013465640180856229
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
		3 0.041460356641265732 4 0.015481035706817203
		5 0 0.62597532842089132 1 0.20833999954221596 2 0.097414055288452775 
		3 0.047675905250253607 4 0.020594711498186272
		5 0 0.6665272206150139 1 0.18801637795743503 2 0.084833482107072145 
		3 0.041054279528495607 4 0.019568639791983183
		5 0 0.61664860987510883 1 0.24149982722364605 2 0.091034641320432652 
		3 0.034413398043017178 4 0.01640352353779535
		5 0 0.51378490820791267 1 0.34581198694422366 2 0.10119377377350992 
		3 0.027087775332667503 4 0.012121555741686265
		3 0 0.45006907652630085 1 0.41396064701017921 2 0.10488542940066369;
	setAttr ".wl[204:221].w"
		2 3 0.021989216317304817 4 0.0090956307455514473
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
		5 39 0.014254422195258397 40 0.40282890049888692 41 0.43826363378228489 
		42 0.13377370193395613 45 0.010879341589613633
		5 39 0.038327297962047514 40 0.52594881074269939 41 0.35981945803983756 
		42 0.068716452303304296 43 0.0071879809521113724
		5 39 0.041352409830896351 40 0.61872496246660447 41 0.29426169738856955 
		42 0.036450905364215365 43 0.0092100249497142749
		5 39 0.026669174882515349 40 0.52174288396023616 41 0.37684388165010779 
		42 0.054465313831632244 43 0.020278745675508518
		5 39 0.0092544509735944004 40 0.43914690086091601 41 0.43914690086091579 
		42 0.088536736379806719 43 0.023915010924767131
		5 39 0.0040574991240157222 40 0.39320818830122128 41 0.4688931050352157 
		42 0.12258973151424597 43 0.011251476025301398
		5 40 0.25814069952845947 41 0.56749995720943891 42 0.16805842930926151 
		43 0.0029497219336464472 45 0.0033511920191937046
		5 39 0.0043926432746863074 40 0.28361647479843666 41 0.49767840319540796 
		42 0.2051939150264947 45 0.00911856370497445;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 0 0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 0 0.210011846539538 0.045642596473303459 -0.97663287764657492 0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924786964475911 0.69647275897298977 0.63759041424957175 0
		 0.89339606886512057 0.44836933267261597 -0.028432475359386224 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461459 0
		 -3.5395339554045822 -2.4005302806614881 -1.4268590620613972 1;
	setAttr ".pm[32]" -type "matrix" -0.2788948936776629 0.70693339326522631 0.64997139611450505 0
		 0.88853219656263749 0.44672740812313055 -0.10461911155789998 0 -0.36431878067442508 0.54834277629791317 -0.75272307373282876 0
		 -4.0483565879838137 -2.4178888731886135 -1.0785180430682901 1;
	setAttr ".pm[33]" -type "matrix" -0.23031898058193839 0.65282056230089813 0.72164983241239433 0
		 0.83303853881336332 0.51558677386086182 -0.20054194441922935 0 -0.50299101387141465 0.55497350572517279 -0.66257410748362233 0
		 -4.4246285444210187 -2.6889499752129318 -0.58522172147807516 1;
	setAttr ".pm[34]" -type "matrix" -0.43594206856657192 0.59749643679491415 0.67301747441747783 0
		 0.70084734557336581 0.69452627827057267 -0.16262302110831164 0 -0.56459499737127161 0.40078829425147727 -0.72152701414037579 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020182 1;
	setAttr ".pm[35]" -type "matrix" -0.80828667061645454 0.25069033817993197 0.53275417637687206 0
		 0.218196818333519 0.96794042383007695 -0.12442461325951786 0 -0.54686635165540876 0.015674509845052226 -0.83707317671050785 0
		 -1.2782209820434483 -5.4701710369415633 -1.0637098843123738 1;
	setAttr ".pm[36]" -type "matrix" -0.8200474629899539 -0.20903383935798983 0.53275417637687206 0
		 -0.32022389937182455 0.93913533097542623 -0.12442461325951783 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050785 0
		 1.4741587314170379 -5.4790257814298373 -1.063709884312374 1;
	setAttr ".pm[37]" -type "matrix" -0.68115616977266802 -0.58224856304555372 0.44386133331482819 0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048565 0 -0.16426653899654683 -0.4692574321309736 -0.8676485270868276 0
		 3.7155105341486689 -4.2535038943938579 -0.56138920422851657 1;
	setAttr ".pm[38]" -type "matrix" -0.50408143703462227 -0.8031478417612693 0.31757746946426507 0
		 -0.83807469275740265 0.36604707764536526 -0.40452484016049423 0 0.20864494769031885 -0.47006710289224019 -0.85761541764464611 0
		 4.7675519887131355 -2.6983875271677142 0.40050570930127805 1;
	setAttr ".pm[39]" -type "matrix" -0.1388780541691455 -0.97362021444400937 0.18104298963559565 0
		 -0.84422276414869568 0.020829102434949075 -0.53558759599610806 0 0.51768794709103272 -0.22722197630897623 -0.82484505388522267 0
		 5.1314029120475162 -0.54383195128390083 1.106276859770559 1;
	setAttr ".pm[40]" -type "matrix" -0.44544497944150729 0.31790426679360784 -0.83696812809376109 0
		 -0.53604559259280815 0.65406161496897919 0.53372139406810004 0 0.71710103399185043 0.68639659161347066 -0.12093728155217454 0
		 3.5487087479939037 -1.8700671021165944 -2.7925192544727229 1;
	setAttr ".pm[41]" -type "matrix" -0.052113644842615832 -0.12229877356956306 -0.99112419908132576 0
		 -0.1298513400838483 0.98487688501104831 -0.11470026525411003 0 0.99016301561896725 0.12272135655343415 -0.067206183837786523 0
		 1.5808752886267787 -4.2107979269501721 0.02488657865780947 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923410589018 0.15316128048267028 0.8446993714649188 0
		 -0.35222853801336457 0.93486282786315411 0.044345801251914924 0 -0.78288598339814919 -0.32027037833776562 0.53340080779662957 0
		 1.1996854652596876 -4.1723182493855937 0.61489409327925237 1;
	setAttr ".pm[43]" -type "matrix" -0.73333549252294628 0.11850971777536543 0.6694583647986867 0
		 0.055614854265169066 0.99184696103279246 -0.11465859703955252 0 -0.67758840263923636 -0.046851389337113233 -0.73394748035945312 0
		 -1.6184639253570581 -4.1509626321413302 0.61671609555364293 1;
	setAttr ".pm[44]" -type "matrix" 0.71787470010069754 0.19100108051108516 -0.6694583647986867 0
		 -0.15418153999379089 0.98136713764526717 0.11465859703955254 0 0.67888435515960754 0.020907615682650708 0.73394748035945312 0
		 2.9878104596161363 -3.9063461047656265 -0.61671609555364371 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497510865095 0.012292726638408521 -0.5042589866649978 0
		 0.11820591342388151 0.96693328786482735 0.22598092585556875 0 0.49036272165840955 -0.25473300863984571 0.8334599543571658 0
		 -0.31526851927338967 -4.1175003486713404 -0.84111836428203779 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581735119836 0.14817026903880451 -0.50425898666499791 0
		 -0.035601726522438204 0.97348093880572795 0.22598092585556881 0 0.52437016632152489 -0.17429983693304754 0.83345995435716591 0
		 -0.5426611529350891 -4.2561403836399734 -0.84111836428203701 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227675808372 0.54496456709945651 -0.34985229813832852 0
		 0.62286061317250907 0.76461428796600184 -0.16555859143098073 0 0.17727849972552723 -0.3440619293736909 -0.92205950040695339 0
		 -2.7951586638432317 -5.0172514867505065 -0.72188545988463759 1;
	setAttr ".pm[48]" -type "matrix" -0.63784895208083725 0.68611375428328836 -0.34985229813832847 0
		 0.7629672038368267 0.62487710685606335 -0.16555859143098076 0 0.10502266516706038 -0.37252720371871889 -0.92205950040695328 0
		 -4.1298506208874732 -4.2789178953001308 -0.72188545988463737 1;
	setAttr ".pm[49]" -type "matrix" -0.43115002080261616 0.83169286942310305 -0.34985229813832847 0
		 0.90227886845699257 0.39809948045602755 -0.16555859143098073 0 0.0015821181603363223 -0.3870449258308486 -0.92205950040695328 0
		 -5.4553895547094982 -2.9266922506119553 -0.72188545988463804 1;
	setAttr ".pm[50]" -type "matrix" -0.28599064808402525 0.89208335860266452 -0.34985229813832847 0
		 0.95614812432505913 0.24160115304580213 -0.16555859143098073 0 -0.063167345663331723 -0.38185882751499872 -0.92205950040695317 0
		 -6.1336372640080636 -1.9280907294341134 -0.72188545988463826 1;
	setAttr ".pm[51]" -type "matrix" -0.10207340220925795 0.93122735679787572 -0.34985229813832852 0
		 0.98513663511676597 0.04578387220633319 -0.16555859143098076 0 -0.1381550965843944 -0.36155144446819326 -0.92205950040695339 0
		 -6.750844393671346 -0.59181557076226199 -0.72188545988463804 1;
	setAttr ".pm[52]" -type "matrix" 0.23188991289304464 -0.90765105507887078 0.34985229813832852 0
		 0.93832475914076996 0.30354077022173792 0.16555859143098076 0 -0.2564638662304547 0.28988370603986663 0.92205950040695339 0
		 -6.7512693567178932 -1.9036837947667706 0.72188545988463826 1;
	setAttr ".pm[53]" -type "matrix" 0.93511715707163778 -0.056207401982203677 0.34985229813832847 0
		 -0.0026622528471228501 0.98619636240110298 0.16555859143098076 0 -0.35432868210185431 -0.15574807462451479 0.92205950040695339 0
		 -0.34546938704197949 -7.3149787490197635 0.72188545988463826 1;
	setAttr ".pm[54]" -type "matrix" -0.3995512077925496 0.88654287078454452 -0.23323929903130458 0
		 0.91382911845984149 0.40534607056836613 -0.024716499139121474 0 0.07263039726191893 -0.22301637010740805 -0.97210520215545215 0
		 -4.5278240127840492 -3.3954816224779094 -1.022056697587352 1;
	setAttr ".pm[55]" -type "matrix" -0.32480994631015858 0.91656856162830391 -0.23323929903130453 0
		 0.94424078807895984 0.32832671045519651 -0.024716499139121471 0 0.053924325735392298 -0.22826222428665643 -0.97210520215545193 0
		 -5.2848407070967021 -2.9682891700797711 -1.022056697587352 1;
	setAttr ".pm[56]" -type "matrix" -0.20311031532577234 0.95097088766988669 -0.23323929903130458 0
		 0.97886549055744121 0.20300602470381512 -0.024716499139121474 0 0.023844311774627147 -0.23333007679744791 -0.97210520215545215 0
		 -6.0531111548152001 -2.2013311585251061 -1.0220566975873524 1;
	setAttr ".pm[57]" -type "matrix" 0.055141303824235287 -0.9708547090064249 0.23323929903130447 0
		 0.99773223418241641 0.062605778836058751 0.024716499139121471 0 -0.038598257550400639 0.23134746693314248 0.97210520215545215 0
		 -6.8860134976711738 0.39760011084167934 1.0220566975873533 1;
	setAttr ".pm[58]" -type "matrix" 0.28391907621620699 -0.93004805657983181 0.23323929903130441 0
		 0.95438699790408643 0.29754756410014638 0.024716499139121464 0 -0.092387317268987398 0.21558306879286218 0.97210520215545204 0
		 -7.2628020056901921 -1.3645944184337013 1.0220566975873542 1;
	setAttr ".pm[59]" -type "matrix" 0.55092251726407293 -0.80130132244917951 0.23323929903130447 0
		 0.82040361842651 0.57125038078148793 0.024716499139121457 0 -0.15304340183133217 0.17773348896086494 0.97210520215545226 0
		 -6.9115203842823005 -3.614765238507994 1.0220566975873553 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801089765346 -0.52562567444166342 0.2332392990313045 0
		 0.53537164030992179 0.84425487941863231 0.024716499139121471 0 -0.20990504280919794 0.10464869299507418 0.97210520215545226 0
		 -5.4326010597893744 -6.2006164513207258 1.022056697587356 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862487083475 0.0012030759333471891 0.2332392990313045 0
		 -0.0071651614412281605 0.9996688227267202 0.024716499139121488 0 -0.23313231965095885 -0.025705981336483979 0.97210520215545226 0
		 -1.6152690614627854 -8.4165599672621738 1.0220566975873582 1;
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
createNode dagPose -n "bindPose1";
	rename -uid "F3A9D400-E943-EBCC-6C28-ACA5221D2F9E";
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
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -1.358319771700039e-16 1.706897061951237e-16
		 -1.1137813736808588e-16 0 0.6079754401307067 -2.2204460492503131e-16 1.1102230246251565e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.98734434584770925 0.10715079400338771 -0.11623565431451072 0.012614385957322569 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 5.6446483243643166e-17 1.4446588949331805e-17
		 1.484822520345474e-16 0 0.55533925221940805 -1.1102230246251565e-16 2.2204460492503131e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.16074555144242536 -0.023511311699550261 -0.088605797280780316 0.98272941270823599 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 1.1858992678205425e-16 5.9871871919637382e-17
		 3.4697368814182958e-16 0 0.46345814886940939 -1.6653345369377348e-16 4.4408920985006262e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.018192432122222563 -0.051264996091637295 -0.12845029926880239 0.99022293257980942 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 1.2893958203876926e-16 -7.4071704736596785e-18
		 2.5908434120426472e-16 0 0.32348651020118258 -0.054789604720485219 4.4408920985006262e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.21321479559645712 0.97700534846988474 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 1.240692240184612e-16 9.1276666024623953e-17
		 4.7267680952119309e-16 0 0.38749941000289478 -0.022402633287538443 -8.8817841970012523e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.037585806150123663 -0.071625759072876272 -0.276193614482863 0.9576920930717614 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 5.4402984394428238e-17 -2.9852488699959258e-17
		 2.1926277859577247e-16 0 0.35887732399454975 -0.025803637014960579 4.4408920985006262e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.12056395789947488 0.0070809145127802113 -0.15728695254559297 0.98014029978579931 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 8.3074026929209978e-18 8.6393047368224031e-17
		 1.2894308497475753e-16 0 0.3913173407191427 -0.010831968840761874 -6.6613381477509392e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0025326712694288349 -0.053426760181526499 -0.047283590601175068 0.99744845928629677 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 1.6625116743768649e-31 4.8796810249762854e-17
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
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 -1.3028556198165525e-08 2.1317970850980915e-08
		 1.6247438935857574e-08 0 0.7214538008102771 -0.47542989481631559 0.17109007118284847 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.30942406352189999 -0.070061263991847242 -0.20241466397176658 0.92648608840643509 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 -1.0042544527859696e-17 8.7202021286415968e-18
		 -1.4500410805153683e-19 0 0.41016304872442566 -4.4408920985006262e-16 -2.2204460492503131e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0079640182085822034 -0.038721262065540031 0.00032606011278074588 0.99921826042303097 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 1.4021858677977424e-17 1.561471068695401e-17
		 8.404144634778564e-18 0 0.43950330469103349 0 4.4408920985006262e-16 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.026245113507685821 -0.070197222662168712 -0.035208498141034258 0.99656605682018862 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 1.6989729847355395e-17 -1.1160018738682877e-17
		 4.5998880927648206e-17 0 0.36148101215000406 8.8817841970012523e-16 1.1102230246251565e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.017962335822028126 0.038690483842127074 -0.11996103795175508 0.99186175968499579 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 6.1272701214102275e-18 -1.9643697817839756e-17
		 5.891370439399178e-17 0 0.31762419942948572 -0.053696452289496932 -1.1102230246251565e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.02720266483500406 0.088774837267651008 -0.29171152362904451 0.95198919651222813 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 1.8289401788787352e-17 -3.9031450737727442e-19
		 5.4371888085322973e-17 0 0.33064659980504385 -0.029177324110889913 -2.2204460492503131e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.27170676196902194 0.96238008889435633 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 9.2089822330929196e-18 -1.3616618245937579e-17
		 5.5461295628487585e-17 0 0.40069291990639355 -0.0083161216917408964 6.6613381477509392e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.017242733652551894 0.066259967163810843 -0.25125003309204608 0.96549765704474066 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 5.8728005202450578e-19 -2.4201500031413894e-17
		 4.2888973428564596e-17 0 0.28567106023859301 -1.7763568394002505e-15 -4.4408920985006262e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0052258722317697019 0.11014825605637377 -0.1853467234228813 0.97646640703280663 1
		 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 5.7224459095867083e-18 -4.0205525618191313e-17
		 3.0408950215749743e-17 0 0.2498980115349827 8.8817841970012523e-16 -7.2164496600635175e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.043566267821460891 0.085587569370018532 -0.22339312712913686 0.96998570042496302 1
		 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 -4.6621889646816863e-18 2.0513953867502073e-17
		 -4.1307168503649017e-17 0 0.42937775607340267 0.073335259225990268 -0.07639494507056388 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.81779048847000324 -0.0056870879094344934 0.23905682174479528 0.52348659006356713 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6450728559354979 0.13026787516727145
		 -8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.29021174344374673 0.16598972048853516 0.26648443018652013 0.90399701610549832 1
		 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.33097801902076696 -0.0082860596346119308
		 0.072113225420726276 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.25459408656112886 0.93501336837993398 -0.061944993391687478 0.23894490961855255 1
		 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.21880009765315656
		 -0.074252153782096819 -0.57842396051182077 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
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
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.39733127729428341 -8.8817841970012523e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.10032428005067598 0.99495479235607154 1
		 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.34425983468979737 0
		 6.6613381477509392e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.13493714727221201 0.99085415994788928 1
		 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26942593730122955 1.3322676295501878e-15
		 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.08391309981356683 0.99647307624424974 1
		 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.36302432764273806 2.2204460492503131e-16
		 1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.10036066196010242 0.99495112318692824 1
		 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.23867663767400682 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.98390550708113278 0.17868954400137427 1.0941578905119157e-17 6.0246836495518137e-17 1
		 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.32009905438446484 -2.2204460492503131e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.58939855697788734 0.80784239863502094 1
		 1 1 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.27944025465969569 0.046579605665840074
		 -0.027707778617148349 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.35473097825005062 0.31613790851913148 0.11507500280660704 0.87234196253302554 1
		 1 1 yes;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.49323030359353925 -4.4408920985006262e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.041415706347221304 0.99914200155321298 1
		 1 1 yes;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.43138820056863114 -4.4408920985006262e-16
		 6.6613381477509392e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.065027835277169876 0.99788345042853843 1
		 1 1 yes;
	setAttr ".xm[57]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48366242767620093 -4.4408920985006262e-16
		 6.6613381477509392e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99109170523310786 0.13318119919166704 8.1549964648340549e-18 6.0686864223760885e-17 1
		 1 1 yes;
	setAttr ".xm[58]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.49316837110917078 5.5511151231257827e-17
		 -8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.11948989663781906 0.9928354166736213 1
		 1 1 yes;
	setAttr ".xm[59]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.41662009659427035 -2.2204460492503131e-16
		 -6.6613381477509392e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.15241517649340866 0.98831655555013498 1
		 1 1 yes;
	setAttr ".xm[60]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.49754642076731415 8.8817841970012523e-16
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
	setAttr ".xm[66]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.89113231413449223 8.8817841970012523e-16
		 -6.6613381477509392e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.079017519216358842 0.99687322747523532 1
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
	setAttr ".xm[96]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48347292952565901 -8.8817841970012523e-16
		 -1.7763568394002505e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.28226510903596957 0.95933644162041098 1
		 1 1 yes;
	setAttr ".xm[97]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.32009905438446484 -2.2204460492503131e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.58939855697788734 0.80784239863502094 1
		 1 1 yes;
	setAttr ".xm[98]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.32009905438446573 2.2204460492503131e-16
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.58939855697788734 0.80784239863502094 1
		 1 1 yes;
	setAttr -s 62 ".m";
	setAttr -s 62 ".p";
	setAttr -s 99 ".g[21:98]" yes yes yes yes yes yes yes yes yes no no 
		no no no no no no no no no no no no no no no no no yes yes yes yes no no no yes yes 
		yes yes yes no no no no no no no no no no no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "6F09E526-6B4F-98D3-63E0-64B36FE690A4";
	setAttr -s 206 ".wl";
	setAttr ".wl[0:180].w"
		3 14 0.24674565639488033 15 0.40956424648941792 16 0.34369009711570175
		2 14 0.50495635160519892 15 0.49504364839480108
		1 14 1
		3 14 0.42735954560707001 15 0.1863635583763591 17 0.38627689601657084
		3 14 0.27149815200249133 17 0.40682755556956962 18 0.32167429242793893
		3 14 0.22077651611027271 15 0.40706682984629255 16 0.37215665404343473
		2 14 0.50062351444056885 15 0.49937648555943115
		1 14 1
		3 14 0.41628253993044129 15 0.18541117421618064 17 0.39830628585337807
		3 14 0.24816982852207406 17 0.40444252199518377 18 0.34738764948274214
		3 14 0.017962831327900185 15 0.49101858433604995 16 0.49101858433604983
		1 14 1
		1 14 1
		2 14 0.5379171134888584 17 0.46208288651114154
		3 14 0.017934275993397295 17 0.49103286200330143 18 0.49103286200330132
		3 14 0.020974689656812245 15 0.48951265517159387 16 0.48951265517159387
		5 14 0.15026397104225023 15 0.20533161600484717 16 0.23632991432913705 
		17 0.23612859000087705 18 0.17194590862288853
		1 14 1
		1 14 1
		3 14 0.023532043622410379 17 0.48823397818879483 18 0.48823397818879483
		3 14 0.001877685422060025 15 0.49906115728897005 16 0.49906115728896994
		3 14 0.0015981589613077172 15 0.49920092051934623 16 0.49920092051934611
		3 14 0.50301481843615981 15 0.49441124372889306 16 0.0025739378349472143
		3 14 0.78279122766397435 15 0.12959740413778964 17 0.087611368198235992
		3 14 0.58576391923554416 17 0.41255032765530231 18 0.0016857531091535802
		3 14 0.00062806667548569585 17 0.49968596666225734 18 0.49968596666225701
		3 14 0.0021638854439910622 17 0.49891805727800465 18 0.49891805727800431
		2 14 0.99757053628331127 17 0.0024294637166887402
		3 14 0.97736599452550099 15 0.014613327973551044 17 0.0080206775009479328
		2 14 0.9998388218091111 15 0.00016117819088897953
		3 14 0.014522847337935104 15 0.49273857633103257 16 0.49273857633103235
		3 14 0.019663314279774836 15 0.49016834286011263 16 0.49016834286011263
		3 14 0.50834385794903092 15 0.47863520791586955 16 0.01302093413509952
		3 14 0.65722805237159421 15 0.2049938073180855 17 0.13777814031032032
		3 14 0.57257701499904146 15 0.016907033474635295 17 0.41051595152632325
		3 14 0.024291328008794407 17 0.48945070714952893 18 0.48625796484167672
		3 14 0.01580602749937348 17 0.49209698625031328 18 0.49209698625031328
		3 14 0.51391791219159277 15 0.020575472771639108 17 0.4655066150367681
		3 14 0.5908969254455404 15 0.23631385699820909 17 0.17278921755625062
		3 14 0.49087093797929948 15 0.48985741334455324 16 0.019271648676147328
		3 14 0.13959596688986084 15 0.43585375743448451 16 0.42455027567565456
		3 14 0.15945818140844659 15 0.43896792764625536 16 0.40157389094529805
		3 14 0.45573484611276277 15 0.4492849857163968 16 0.094980168170840401
		3 14 0.41557287045011687 15 0.31677787259558765 17 0.26764925695429553
		3 14 0.4589671353368372 15 0.1268335254687106 17 0.41419933919445223
		3 14 0.18571968511914419 17 0.43827970115289144 18 0.37600061372796439
		3 14 0.15474974890913129 17 0.43722691613876208 18 0.40802333495210663
		3 14 0.45575230861397914 15 0.11362786109529019 17 0.43061983029073064
		3 14 0.40638570272706503 15 0.31988264089666851 17 0.27373165637626651
		3 14 0.4579428261686041 15 0.45649458967824785 17 0.085562584153148102
		3 14 0.41200047174919335 15 0.41223686292562745 16 0.17576266532517928
		3 14 0.4015304922500913 15 0.40357459089432179 16 0.19489491685558691
		3 14 0.41899601960002636 15 0.43814761828125898 16 0.14285636211871475
		3 14 0.30894595782420048 15 0.61514917543665593 16 0.075904866739143609
		3 14 0.06183508721260423 15 0.90252486604364746 16 0.035640046743748321
		4 14 0.25489054655142429 15 0.25812214120820909 16 0.25663994822529501 
		17 0.23034736401507153
		4 14 0.26245663671545566 15 0.2640181257754739 16 0.2568931267339728 
		17 0.2166321107750977
		3 14 0.0021604513360531478 15 0.99690077996063697 16 0.00093876870330987733
		3 14 0.28296468532015345 15 0.65051244650887219 16 0.066522868170974456
		3 14 0.40640340077151621 15 0.43181558324470648 16 0.16178101598377734
		3 14 0.41652131432923101 17 0.41652131432923101 18 0.16695737134153793
		3 14 0.40987665761507153 17 0.40987665761507142 18 0.18024668476985706
		3 14 0.43975556129500304 17 0.44183498880555194 18 0.11840944989944507
		3 14 0.39449945464593511 17 0.56390672639021822 18 0.041593818963846688
		3 14 0.084178689202233453 17 0.90439436819660934 18 0.011426942601157069
		3 14 0.29015429344058796 17 0.40005790829124477 18 0.30978779826816721
		1 17 1
		3 14 0.024054988649490301 17 0.97315569361778065 18 0.0027893177327290249
		3 14 0.37133068757592697 17 0.58083897645865346 18 0.047830335965419565
		3 14 0.42401752473582466 17 0.43114895980632639 18 0.14483351545784892
		3 14 0.34828973849969352 15 0.40209776179272139 16 0.24961249970758506
		3 14 0.32620778651289811 15 0.39614256729907943 16 0.2776496461880224
		3 14 0.28834900492111959 15 0.45627379350299258 16 0.25537720157588795
		3 14 0.057643333142892578 15 0.58732059851042773 16 0.35503606834667961
		3 14 0.0039305368736770891 15 0.76390589382727037 16 0.23216356929905255
		2 15 0.50000000000000033 16 0.49999999999999972
		2 15 0.50152840824030742 16 0.49847159175969263
		3 14 0.0024437142170948447 15 0.71435111411095253 16 0.28320517167195253
		3 14 0.05303983718773321 15 0.57662461899507056 16 0.37033554381719619
		3 14 0.2728805056559494 15 0.44471536987481969 16 0.28240412446923091
		3 14 0.0069259442656653628 17 0.78657806651591522 18 0.20649598921841941
		3 14 0.17523376374704175 17 0.41859042417602299 18 0.40617581207693521
		3 14 0.15411451063281059 17 0.42329360477698358 18 0.4225918845902058
		3 14 0.005267453177636214 17 0.91177348965459293 18 0.082959057167770758
		3 14 0.089453731416354668 17 0.64588526600677998 18 0.26466100257686537
		3 14 0.3401433375702515 17 0.46234369167819761 18 0.19751297075155094
		3 14 0.35020438316047048 17 0.39629924974113778 18 0.25349636709839174
		3 14 0.36680425076884071 17 0.40125724075787905 18 0.23193850847328018
		3 14 0.31384701763221462 17 0.44342633190406872 18 0.24272665046371675
		3 14 0.080882038223649311 17 0.6083038510349511 18 0.31081411074139953
		3 14 0.004604373175709912 15 0.49769781341214503 16 0.49769781341214503
		3 14 0.0047699812128706425 15 0.49761500939356468 16 0.49761500939356468
		3 14 0.088753559935457332 15 0.49379180950780571 16 0.41745463055673687
		3 14 0.19147427250550678 15 0.51611194538063132 16 0.29241378211386193
		2 14 0.59250890328180228 15 0.40749109671819783
		3 14 0.84481238986505014 15 0.091531650059068728 17 0.063655960075881229
		2 14 0.59439781059486962 17 0.40560218940513038
		3 14 0.25529555371393248 17 0.52228209695554495 18 0.22242234933052266
		3 14 0.12637476215996532 17 0.51480936495537399 18 0.35881587288466071
		3 14 0.0034752963496217587 17 0.49826235182518902 18 0.49826235182518913
		3 14 0.0042880842442157945 17 0.49785595787789211 18 0.49785595787789211
		2 14 0.59078568570861323 17 0.40921431429138688
		2 14 0.94305687006072814 15 0.056943129939271815
		2 14 0.53749579688158766 15 0.46250420311841228
		3 14 0.33689710263941541 15 0.40114495239592762 16 0.26195794496465702
		3 14 0.26772125775601324 15 0.43367959055477079 16 0.29859915168921591
		3 14 0.15824165090053385 15 0.43680441913579537 16 0.4049539299636708
		3 14 0.23452943919154479 15 0.41057520915831958 16 0.35489535165013569
		3 14 0.41558127791803895 15 0.18647725628766057 17 0.39794146579430051
		3 14 0.44465579778186848 15 0.1185124375442584 17 0.43683176467387314
		3 14 0.39128119387430599 15 0.32457743802686301 17 0.284141368098831
		3 14 0.38120734291092528 15 0.3275138180650044 17 0.29127883902407031
		3 14 0.41871943893361224 17 0.41871943893361246 18 0.16256112213277535
		3 14 0.42463333246615542 17 0.42952242944163826 18 0.14584423809220637
		2 14 0.55623167925585748 17 0.44376832074414252
		3 14 0.29077020929298203 17 0.47504975318968512 18 0.23418003751733277
		3 14 0.29448799900038575 17 0.40859712367349943 18 0.29691487732611477
		2 14 0.52461639339036925 17 0.47538360660963075
		3 14 0.70872528662457446 15 0.16360576749412745 17 0.12766894588129815
		2 14 0.76112214606179007 15 0.23887785393820993
		2 14 0.55969003864825639 15 0.44030996135174361
		2 14 0.52755289871976896 15 0.47244710128023099
		3 14 0.0047848442707355823 15 0.49760757786463222 16 0.49760757786463222
		3 14 0.088143931347543156 15 0.46200733561291629 16 0.44984873303954065
		2 15 0.50002036148276396 16 0.49997963851723609
		3 14 0.016142817676437091 15 0.49192859116178145 16 0.49192859116178145
		3 14 0.052741843827868069 15 0.51155958827299242 16 0.43569856789913958
		3 14 0.006160791465499485 15 0.53538883570422779 16 0.45845037283027279
		3 14 0.0025608757862927581 15 0.49871956210685348 16 0.4987195621068537
		3 14 0.018787259046549612 15 0.49060637047672523 16 0.49060637047672512
		3 14 0.44971602305132247 15 0.44971602305132247 16 0.10056795389735507
		3 14 0.40120911034686652 15 0.42465827048250832 16 0.17413261917062522
		3 14 0.40934700620570863 15 0.41002135913048687 16 0.18063163466380452
		3 14 0.42449488914126016 15 0.42311779188406423 17 0.15238731897467564
		1 15 1
		3 14 0.22540009212341627 15 0.47695596009500135 16 0.29764394778158243
		3 14 0.18068160798743271 17 0.4418232525463916 18 0.37749513946617569
		3 14 0.31425131231055164 17 0.44258627325551619 18 0.24316241443393213
		3 14 0.36526909013316072 17 0.40252877141928162 18 0.23220213844755769
		3 14 0.26837113151999314 17 0.40931835085666973 18 0.32231051762333723
		3 14 0.02354872857143182 17 0.48908706709157457 18 0.48736420433699362
		3 14 0.078538832733240846 17 0.55771932385856693 18 0.36374184340819221
		3 14 0.0093704613243056865 17 0.67801901283351773 18 0.31261052584217658
		3 14 0.0018689786538967552 17 0.4990655106730516 18 0.4990655106730516
		3 14 0.16041359149002768 17 0.42385809736602009 18 0.41572831114395226
		3 14 0.017373368762803328 17 0.49131331561859842 18 0.49131331561859831
		3 14 0.11808405412858486 17 0.46778210937449222 18 0.41413383649692292
		3 14 0.0041244879055428669 17 0.49793775604722856 18 0.49793775604722856
		3 14 0.0090066768345332636 17 0.60020654890218139 18 0.39078677426328534
		3 14 0.0097791396115611759 17 0.8027834140469341 18 0.18743744634150469
		3 14 0.041811779447767768 17 0.92264814854184429 18 0.035540072010387995
		2 14 0.67945600461547306 17 0.32054399538452694
		3 14 0.83420549988703152 15 0.098904670728352129 17 0.066889829384616212
		2 14 0.55140521656277819 15 0.44859478343722187
		3 14 0.028677437233655491 15 0.88011044546043071 16 0.091212117305913831
		3 14 0.0055405099660881148 15 0.64884428567452535 16 0.34561520435938659
		3 14 0.0056393776113745136 15 0.50565012082665184 16 0.4887105015619736
		3 14 0.10877172367001443 15 0.67995101634962318 16 0.21127725998036234
		2 14 0.45086471312038823 15 0.54913528687961188
		2 14 0.43708434348775421 15 0.56291565651224573
		2 14 0.44591073293373007 15 0.55408926706626993
		1 15 1
		1 15 1
		3 14 0.037374914096095765 15 0.54036140983109926 16 0.42226367607280502
		3 14 0.026286450842721402 15 0.49117268700611494 16 0.48254086215116376
		3 14 0.013351919099249281 15 0.53164559507475451 16 0.45500248582599628
		3 14 0.023079419674328475 17 0.60181024749704304 18 0.37511033282862855
		3 14 0.22055133957158668 17 0.67889823331683308 18 0.10055042711158028
		2 14 0.67792815916707994 17 0.32207184083292006
		2 14 0.98946026106365426 15 0.010539738936345754
		2 14 0.55283890257997736 15 0.44716109742002264
		3 14 0.13805587248979448 15 0.72336579879189844 16 0.13857832871830708
		4 14 0.24311065438891061 15 0.26390324353679268 16 0.26390324353679268 
		17 0.22908285853750396
		2 14 0.42624274286454683 15 0.57375725713545322
		3 14 0.4494949569957008 17 0.48615193549005381 18 0.064353107514245347
		3 14 0.46935876993655218 17 0.5088295198054934 18 0.021811710257954472
		3 14 0.16828685417752751 17 0.70266331895080847 18 0.12904982687166408
		3 14 0.059532011737064572 17 0.60261727215049921 18 0.33785071611243617
		3 14 0.039375474738905396 17 0.52140231211007304 18 0.43922221315102161
		3 14 0.43514920175081712 17 0.46812030541411315 18 0.096730492835069695
		2 14 0.46812757367405322 17 0.53187242632594678;
	setAttr ".wl[181:205].w"
		1 17 1
		3 16 0.004894846457514924 17 0.99064338207244873 18 0.0044617714700363464
		2 14 0.47026421308541305 17 0.529735786914587
		3 14 0.066470271130807182 15 0.47048029182897572 16 0.46304943704021706
		3 14 0.04844933179075351 15 0.4757753341046233 16 0.47577533410462319
		3 14 0.05896622467013788 15 0.47108918053361326 16 0.46994459479624889
		3 14 0.16769846842524128 15 0.47744154054407933 16 0.35485999103067944
		3 14 0.18534184362507466 15 0.51760416656369301 16 0.29705398981123238
		3 14 0.40402061123921185 15 0.48092448115310826 16 0.11505490760767995
		3 14 0.47515743601789834 15 0.47422485666002745 16 0.050617707322074143
		3 14 0.47453211251457966 15 0.2927677844989669 17 0.23270010298645358
		3 14 0.48251456681064953 15 0.064519439325596395 17 0.45296599386375408
		3 14 0.44599548829373825 17 0.47040740796975566 18 0.083597103736506098
		3 14 0.24165957952590125 17 0.53383513399444171 18 0.22450528647965706
		3 14 0.21572031102576147 17 0.49616475573242214 18 0.28811493324181642
		3 14 0.077438569129546664 17 0.47597150435867541 18 0.44658992651177787
		3 14 0.060190839237914587 17 0.47103316663447514 18 0.46877599412761034
		3 14 0.078663608861426357 17 0.4758119112525141 18 0.44552447988605953
		3 14 0.2101620240406199 17 0.5102073188283891 18 0.279630657130991
		3 14 0.42933376181728683 17 0.4685054788599653 18 0.10216075932274793
		3 14 0.50118892377891999 15 0.066564371431159702 17 0.43224670478992033
		3 14 0.46971351085170543 15 0.2963605000025924 17 0.23392598914570212
		3 14 0.47961346342739536 15 0.46971426809674321 16 0.050672268475861433
		3 14 0.39362289059138406 15 0.4808720918700623 16 0.1255050175385537
		3 14 0.17074884169487436 15 0.50196997501678975 16 0.32728118328833589;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 0 0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 0 0.210011846539538 0.045642596473303459 -0.97663287764657492 0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924786964475911 0.69647275897298977 0.63759041424957175 0
		 0.89339606886512057 0.44836933267261597 -0.028432475359386224 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461459 0
		 -3.5395339554045822 -2.4005302806614881 -1.4268590620613972 1;
	setAttr ".pm[32]" -type "matrix" -0.2788948936776629 0.70693339326522631 0.64997139611450505 0
		 0.88853219656263749 0.44672740812313055 -0.10461911155789998 0 -0.36431878067442508 0.54834277629791317 -0.75272307373282876 0
		 -4.0483565879838137 -2.4178888731886135 -1.0785180430682901 1;
	setAttr ".pm[33]" -type "matrix" -0.23031898058193839 0.65282056230089813 0.72164983241239433 0
		 0.83303853881336332 0.51558677386086182 -0.20054194441922935 0 -0.50299101387141465 0.55497350572517279 -0.66257410748362233 0
		 -4.4246285444210187 -2.6889499752129318 -0.58522172147807516 1;
	setAttr ".pm[34]" -type "matrix" -0.43594206856657192 0.59749643679491415 0.67301747441747783 0
		 0.70084734557336581 0.69452627827057267 -0.16262302110831164 0 -0.56459499737127161 0.40078829425147727 -0.72152701414037579 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020182 1;
	setAttr ".pm[35]" -type "matrix" -0.80828667061645454 0.25069033817993197 0.53275417637687206 0
		 0.218196818333519 0.96794042383007695 -0.12442461325951786 0 -0.54686635165540876 0.015674509845052226 -0.83707317671050785 0
		 -1.2782209820434483 -5.4701710369415633 -1.0637098843123738 1;
	setAttr ".pm[36]" -type "matrix" -0.8200474629899539 -0.20903383935798983 0.53275417637687206 0
		 -0.32022389937182455 0.93913533097542623 -0.12442461325951783 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050785 0
		 1.4741587314170379 -5.4790257814298373 -1.063709884312374 1;
	setAttr ".pm[37]" -type "matrix" -0.68115616977266802 -0.58224856304555372 0.44386133331482819 0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048565 0 -0.16426653899654683 -0.4692574321309736 -0.8676485270868276 0
		 3.7155105341486689 -4.2535038943938579 -0.56138920422851657 1;
	setAttr ".pm[38]" -type "matrix" -0.50408143703462227 -0.8031478417612693 0.31757746946426507 0
		 -0.83807469275740265 0.36604707764536526 -0.40452484016049423 0 0.20864494769031885 -0.47006710289224019 -0.85761541764464611 0
		 4.7675519887131355 -2.6983875271677142 0.40050570930127805 1;
	setAttr ".pm[39]" -type "matrix" -0.1388780541691455 -0.97362021444400937 0.18104298963559565 0
		 -0.84422276414869568 0.020829102434949075 -0.53558759599610806 0 0.51768794709103272 -0.22722197630897623 -0.82484505388522267 0
		 5.1314029120475162 -0.54383195128390083 1.106276859770559 1;
	setAttr ".pm[40]" -type "matrix" -0.44544497944150729 0.31790426679360784 -0.83696812809376109 0
		 -0.53604559259280815 0.65406161496897919 0.53372139406810004 0 0.71710103399185043 0.68639659161347066 -0.12093728155217454 0
		 3.5487087479939037 -1.8700671021165944 -2.7925192544727229 1;
	setAttr ".pm[41]" -type "matrix" -0.052113644842615832 -0.12229877356956306 -0.99112419908132576 0
		 -0.1298513400838483 0.98487688501104831 -0.11470026525411003 0 0.99016301561896725 0.12272135655343415 -0.067206183837786523 0
		 1.5808752886267787 -4.2107979269501721 0.02488657865780947 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923410589018 0.15316128048267028 0.8446993714649188 0
		 -0.35222853801336457 0.93486282786315411 0.044345801251914924 0 -0.78288598339814919 -0.32027037833776562 0.53340080779662957 0
		 1.1996854652596876 -4.1723182493855937 0.61489409327925237 1;
	setAttr ".pm[43]" -type "matrix" -0.73333549252294628 0.11850971777536543 0.6694583647986867 0
		 0.055614854265169066 0.99184696103279246 -0.11465859703955252 0 -0.67758840263923636 -0.046851389337113233 -0.73394748035945312 0
		 -1.6184639253570581 -4.1509626321413302 0.61671609555364293 1;
	setAttr ".pm[44]" -type "matrix" 0.71787470010069754 0.19100108051108516 -0.6694583647986867 0
		 -0.15418153999379089 0.98136713764526717 0.11465859703955254 0 0.67888435515960754 0.020907615682650708 0.73394748035945312 0
		 2.9878104596161363 -3.9063461047656265 -0.61671609555364371 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497510865095 0.012292726638408521 -0.5042589866649978 0
		 0.11820591342388151 0.96693328786482735 0.22598092585556875 0 0.49036272165840955 -0.25473300863984571 0.8334599543571658 0
		 -0.31526851927338967 -4.1175003486713404 -0.84111836428203779 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581735119836 0.14817026903880451 -0.50425898666499791 0
		 -0.035601726522438204 0.97348093880572795 0.22598092585556881 0 0.52437016632152489 -0.17429983693304754 0.83345995435716591 0
		 -0.5426611529350891 -4.2561403836399734 -0.84111836428203701 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227675808372 0.54496456709945651 -0.34985229813832852 0
		 0.62286061317250907 0.76461428796600184 -0.16555859143098073 0 0.17727849972552723 -0.3440619293736909 -0.92205950040695339 0
		 -2.7951586638432317 -5.0172514867505065 -0.72188545988463759 1;
	setAttr ".pm[48]" -type "matrix" -0.63784895208083725 0.68611375428328836 -0.34985229813832847 0
		 0.7629672038368267 0.62487710685606335 -0.16555859143098076 0 0.10502266516706038 -0.37252720371871889 -0.92205950040695328 0
		 -4.1298506208874732 -4.2789178953001308 -0.72188545988463737 1;
	setAttr ".pm[49]" -type "matrix" -0.43115002080261616 0.83169286942310305 -0.34985229813832847 0
		 0.90227886845699257 0.39809948045602755 -0.16555859143098073 0 0.0015821181603363223 -0.3870449258308486 -0.92205950040695328 0
		 -5.4553895547094982 -2.9266922506119553 -0.72188545988463804 1;
	setAttr ".pm[50]" -type "matrix" -0.28599064808402525 0.89208335860266452 -0.34985229813832847 0
		 0.95614812432505913 0.24160115304580213 -0.16555859143098073 0 -0.063167345663331723 -0.38185882751499872 -0.92205950040695317 0
		 -6.1336372640080636 -1.9280907294341134 -0.72188545988463826 1;
	setAttr ".pm[51]" -type "matrix" -0.10207340220925795 0.93122735679787572 -0.34985229813832852 0
		 0.98513663511676597 0.04578387220633319 -0.16555859143098076 0 -0.1381550965843944 -0.36155144446819326 -0.92205950040695339 0
		 -6.750844393671346 -0.59181557076226199 -0.72188545988463804 1;
	setAttr ".pm[52]" -type "matrix" 0.23188991289304464 -0.90765105507887078 0.34985229813832852 0
		 0.93832475914076996 0.30354077022173792 0.16555859143098076 0 -0.2564638662304547 0.28988370603986663 0.92205950040695339 0
		 -6.7512693567178932 -1.9036837947667706 0.72188545988463826 1;
	setAttr ".pm[53]" -type "matrix" 0.93511715707163778 -0.056207401982203677 0.34985229813832847 0
		 -0.0026622528471228501 0.98619636240110298 0.16555859143098076 0 -0.35432868210185431 -0.15574807462451479 0.92205950040695339 0
		 -0.34546938704197949 -7.3149787490197635 0.72188545988463826 1;
	setAttr ".pm[54]" -type "matrix" -0.3995512077925496 0.88654287078454452 -0.23323929903130458 0
		 0.91382911845984149 0.40534607056836613 -0.024716499139121474 0 0.07263039726191893 -0.22301637010740805 -0.97210520215545215 0
		 -4.5278240127840492 -3.3954816224779094 -1.022056697587352 1;
	setAttr ".pm[55]" -type "matrix" -0.32480994631015858 0.91656856162830391 -0.23323929903130453 0
		 0.94424078807895984 0.32832671045519651 -0.024716499139121471 0 0.053924325735392298 -0.22826222428665643 -0.97210520215545193 0
		 -5.2848407070967021 -2.9682891700797711 -1.022056697587352 1;
	setAttr ".pm[56]" -type "matrix" -0.20311031532577234 0.95097088766988669 -0.23323929903130458 0
		 0.97886549055744121 0.20300602470381512 -0.024716499139121474 0 0.023844311774627147 -0.23333007679744791 -0.97210520215545215 0
		 -6.0531111548152001 -2.2013311585251061 -1.0220566975873524 1;
	setAttr ".pm[57]" -type "matrix" 0.055141303824235287 -0.9708547090064249 0.23323929903130447 0
		 0.99773223418241641 0.062605778836058751 0.024716499139121471 0 -0.038598257550400639 0.23134746693314248 0.97210520215545215 0
		 -6.8860134976711738 0.39760011084167934 1.0220566975873533 1;
	setAttr ".pm[58]" -type "matrix" 0.28391907621620699 -0.93004805657983181 0.23323929903130441 0
		 0.95438699790408643 0.29754756410014638 0.024716499139121464 0 -0.092387317268987398 0.21558306879286218 0.97210520215545204 0
		 -7.2628020056901921 -1.3645944184337013 1.0220566975873542 1;
	setAttr ".pm[59]" -type "matrix" 0.55092251726407293 -0.80130132244917951 0.23323929903130447 0
		 0.82040361842651 0.57125038078148793 0.024716499139121457 0 -0.15304340183133217 0.17773348896086494 0.97210520215545226 0
		 -6.9115203842823005 -3.614765238507994 1.0220566975873553 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801089765346 -0.52562567444166342 0.2332392990313045 0
		 0.53537164030992179 0.84425487941863231 0.024716499139121471 0 -0.20990504280919794 0.10464869299507418 0.97210520215545226 0
		 -5.4326010597893744 -6.2006164513207258 1.022056697587356 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862487083475 0.0012030759333471891 0.2332392990313045 0
		 -0.0071651614412281605 0.9996688227267202 0.024716499139121488 0 -0.23313231965095885 -0.025705981336483979 0.97210520215545226 0
		 -1.6152690614627854 -8.4165599672621738 1.0220566975873582 1;
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
	rename -uid "8E95285D-254A-9466-F894-4AAC350741C1";
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
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 0 0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 0 0.210011846539538 0.045642596473303459 -0.97663287764657492 0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924786964475911 0.69647275897298977 0.63759041424957175 0
		 0.89339606886512057 0.44836933267261597 -0.028432475359386224 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461459 0
		 -3.5395339554045822 -2.4005302806614881 -1.4268590620613972 1;
	setAttr ".pm[32]" -type "matrix" -0.2788948936776629 0.70693339326522631 0.64997139611450505 0
		 0.88853219656263749 0.44672740812313055 -0.10461911155789998 0 -0.36431878067442508 0.54834277629791317 -0.75272307373282876 0
		 -4.0483565879838137 -2.4178888731886135 -1.0785180430682901 1;
	setAttr ".pm[33]" -type "matrix" -0.23031898058193839 0.65282056230089813 0.72164983241239433 0
		 0.83303853881336332 0.51558677386086182 -0.20054194441922935 0 -0.50299101387141465 0.55497350572517279 -0.66257410748362233 0
		 -4.4246285444210187 -2.6889499752129318 -0.58522172147807516 1;
	setAttr ".pm[34]" -type "matrix" -0.43594206856657192 0.59749643679491415 0.67301747441747783 0
		 0.70084734557336581 0.69452627827057267 -0.16262302110831164 0 -0.56459499737127161 0.40078829425147727 -0.72152701414037579 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020182 1;
	setAttr ".pm[35]" -type "matrix" -0.80828667061645454 0.25069033817993197 0.53275417637687206 0
		 0.218196818333519 0.96794042383007695 -0.12442461325951786 0 -0.54686635165540876 0.015674509845052226 -0.83707317671050785 0
		 -1.2782209820434483 -5.4701710369415633 -1.0637098843123738 1;
	setAttr ".pm[36]" -type "matrix" -0.8200474629899539 -0.20903383935798983 0.53275417637687206 0
		 -0.32022389937182455 0.93913533097542623 -0.12442461325951783 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050785 0
		 1.4741587314170379 -5.4790257814298373 -1.063709884312374 1;
	setAttr ".pm[37]" -type "matrix" -0.68115616977266802 -0.58224856304555372 0.44386133331482819 0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048565 0 -0.16426653899654683 -0.4692574321309736 -0.8676485270868276 0
		 3.7155105341486689 -4.2535038943938579 -0.56138920422851657 1;
	setAttr ".pm[38]" -type "matrix" -0.50408143703462227 -0.8031478417612693 0.31757746946426507 0
		 -0.83807469275740265 0.36604707764536526 -0.40452484016049423 0 0.20864494769031885 -0.47006710289224019 -0.85761541764464611 0
		 4.7675519887131355 -2.6983875271677142 0.40050570930127805 1;
	setAttr ".pm[39]" -type "matrix" -0.1388780541691455 -0.97362021444400937 0.18104298963559565 0
		 -0.84422276414869568 0.020829102434949075 -0.53558759599610806 0 0.51768794709103272 -0.22722197630897623 -0.82484505388522267 0
		 5.1314029120475162 -0.54383195128390083 1.106276859770559 1;
	setAttr ".pm[40]" -type "matrix" -0.44544497944150729 0.31790426679360784 -0.83696812809376109 0
		 -0.53604559259280815 0.65406161496897919 0.53372139406810004 0 0.71710103399185043 0.68639659161347066 -0.12093728155217454 0
		 3.5487087479939037 -1.8700671021165944 -2.7925192544727229 1;
	setAttr ".pm[41]" -type "matrix" -0.052113644842615832 -0.12229877356956306 -0.99112419908132576 0
		 -0.1298513400838483 0.98487688501104831 -0.11470026525411003 0 0.99016301561896725 0.12272135655343415 -0.067206183837786523 0
		 1.5808752886267787 -4.2107979269501721 0.02488657865780947 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923410589018 0.15316128048267028 0.8446993714649188 0
		 -0.35222853801336457 0.93486282786315411 0.044345801251914924 0 -0.78288598339814919 -0.32027037833776562 0.53340080779662957 0
		 1.1996854652596876 -4.1723182493855937 0.61489409327925237 1;
	setAttr ".pm[43]" -type "matrix" -0.73333549252294628 0.11850971777536543 0.6694583647986867 0
		 0.055614854265169066 0.99184696103279246 -0.11465859703955252 0 -0.67758840263923636 -0.046851389337113233 -0.73394748035945312 0
		 -1.6184639253570581 -4.1509626321413302 0.61671609555364293 1;
	setAttr ".pm[44]" -type "matrix" 0.71787470010069754 0.19100108051108516 -0.6694583647986867 0
		 -0.15418153999379089 0.98136713764526717 0.11465859703955254 0 0.67888435515960754 0.020907615682650708 0.73394748035945312 0
		 2.9878104596161363 -3.9063461047656265 -0.61671609555364371 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497510865095 0.012292726638408521 -0.5042589866649978 0
		 0.11820591342388151 0.96693328786482735 0.22598092585556875 0 0.49036272165840955 -0.25473300863984571 0.8334599543571658 0
		 -0.31526851927338967 -4.1175003486713404 -0.84111836428203779 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581735119836 0.14817026903880451 -0.50425898666499791 0
		 -0.035601726522438204 0.97348093880572795 0.22598092585556881 0 0.52437016632152489 -0.17429983693304754 0.83345995435716591 0
		 -0.5426611529350891 -4.2561403836399734 -0.84111836428203701 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227675808372 0.54496456709945651 -0.34985229813832852 0
		 0.62286061317250907 0.76461428796600184 -0.16555859143098073 0 0.17727849972552723 -0.3440619293736909 -0.92205950040695339 0
		 -2.7951586638432317 -5.0172514867505065 -0.72188545988463759 1;
	setAttr ".pm[48]" -type "matrix" -0.63784895208083725 0.68611375428328836 -0.34985229813832847 0
		 0.7629672038368267 0.62487710685606335 -0.16555859143098076 0 0.10502266516706038 -0.37252720371871889 -0.92205950040695328 0
		 -4.1298506208874732 -4.2789178953001308 -0.72188545988463737 1;
	setAttr ".pm[49]" -type "matrix" -0.43115002080261616 0.83169286942310305 -0.34985229813832847 0
		 0.90227886845699257 0.39809948045602755 -0.16555859143098073 0 0.0015821181603363223 -0.3870449258308486 -0.92205950040695328 0
		 -5.4553895547094982 -2.9266922506119553 -0.72188545988463804 1;
	setAttr ".pm[50]" -type "matrix" -0.28599064808402525 0.89208335860266452 -0.34985229813832847 0
		 0.95614812432505913 0.24160115304580213 -0.16555859143098073 0 -0.063167345663331723 -0.38185882751499872 -0.92205950040695317 0
		 -6.1336372640080636 -1.9280907294341134 -0.72188545988463826 1;
	setAttr ".pm[51]" -type "matrix" -0.10207340220925795 0.93122735679787572 -0.34985229813832852 0
		 0.98513663511676597 0.04578387220633319 -0.16555859143098076 0 -0.1381550965843944 -0.36155144446819326 -0.92205950040695339 0
		 -6.750844393671346 -0.59181557076226199 -0.72188545988463804 1;
	setAttr ".pm[52]" -type "matrix" 0.23188991289304464 -0.90765105507887078 0.34985229813832852 0
		 0.93832475914076996 0.30354077022173792 0.16555859143098076 0 -0.2564638662304547 0.28988370603986663 0.92205950040695339 0
		 -6.7512693567178932 -1.9036837947667706 0.72188545988463826 1;
	setAttr ".pm[53]" -type "matrix" 0.93511715707163778 -0.056207401982203677 0.34985229813832847 0
		 -0.0026622528471228501 0.98619636240110298 0.16555859143098076 0 -0.35432868210185431 -0.15574807462451479 0.92205950040695339 0
		 -0.34546938704197949 -7.3149787490197635 0.72188545988463826 1;
	setAttr ".pm[54]" -type "matrix" -0.3995512077925496 0.88654287078454452 -0.23323929903130458 0
		 0.91382911845984149 0.40534607056836613 -0.024716499139121474 0 0.07263039726191893 -0.22301637010740805 -0.97210520215545215 0
		 -4.5278240127840492 -3.3954816224779094 -1.022056697587352 1;
	setAttr ".pm[55]" -type "matrix" -0.32480994631015858 0.91656856162830391 -0.23323929903130453 0
		 0.94424078807895984 0.32832671045519651 -0.024716499139121471 0 0.053924325735392298 -0.22826222428665643 -0.97210520215545193 0
		 -5.2848407070967021 -2.9682891700797711 -1.022056697587352 1;
	setAttr ".pm[56]" -type "matrix" -0.20311031532577234 0.95097088766988669 -0.23323929903130458 0
		 0.97886549055744121 0.20300602470381512 -0.024716499139121474 0 0.023844311774627147 -0.23333007679744791 -0.97210520215545215 0
		 -6.0531111548152001 -2.2013311585251061 -1.0220566975873524 1;
	setAttr ".pm[57]" -type "matrix" 0.055141303824235287 -0.9708547090064249 0.23323929903130447 0
		 0.99773223418241641 0.062605778836058751 0.024716499139121471 0 -0.038598257550400639 0.23134746693314248 0.97210520215545215 0
		 -6.8860134976711738 0.39760011084167934 1.0220566975873533 1;
	setAttr ".pm[58]" -type "matrix" 0.28391907621620699 -0.93004805657983181 0.23323929903130441 0
		 0.95438699790408643 0.29754756410014638 0.024716499139121464 0 -0.092387317268987398 0.21558306879286218 0.97210520215545204 0
		 -7.2628020056901921 -1.3645944184337013 1.0220566975873542 1;
	setAttr ".pm[59]" -type "matrix" 0.55092251726407293 -0.80130132244917951 0.23323929903130447 0
		 0.82040361842651 0.57125038078148793 0.024716499139121457 0 -0.15304340183133217 0.17773348896086494 0.97210520215545226 0
		 -6.9115203842823005 -3.614765238507994 1.0220566975873553 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801089765346 -0.52562567444166342 0.2332392990313045 0
		 0.53537164030992179 0.84425487941863231 0.024716499139121471 0 -0.20990504280919794 0.10464869299507418 0.97210520215545226 0
		 -5.4326010597893744 -6.2006164513207258 1.022056697587356 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862487083475 0.0012030759333471891 0.2332392990313045 0
		 -0.0071651614412281605 0.9996688227267202 0.024716499139121488 0 -0.23313231965095885 -0.025705981336483979 0.97210520215545226 0
		 -1.6152690614627854 -8.4165599672621738 1.0220566975873582 1;
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
	rename -uid "C256D98F-764A-9C32-1DC9-869DCDDE4ECF";
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
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 0 0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 0 0.210011846539538 0.045642596473303459 -0.97663287764657492 0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924786964475911 0.69647275897298977 0.63759041424957175 0
		 0.89339606886512057 0.44836933267261597 -0.028432475359386224 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461459 0
		 -3.5395339554045822 -2.4005302806614881 -1.4268590620613972 1;
	setAttr ".pm[32]" -type "matrix" -0.2788948936776629 0.70693339326522631 0.64997139611450505 0
		 0.88853219656263749 0.44672740812313055 -0.10461911155789998 0 -0.36431878067442508 0.54834277629791317 -0.75272307373282876 0
		 -4.0483565879838137 -2.4178888731886135 -1.0785180430682901 1;
	setAttr ".pm[33]" -type "matrix" -0.23031898058193839 0.65282056230089813 0.72164983241239433 0
		 0.83303853881336332 0.51558677386086182 -0.20054194441922935 0 -0.50299101387141465 0.55497350572517279 -0.66257410748362233 0
		 -4.4246285444210187 -2.6889499752129318 -0.58522172147807516 1;
	setAttr ".pm[34]" -type "matrix" -0.43594206856657192 0.59749643679491415 0.67301747441747783 0
		 0.70084734557336581 0.69452627827057267 -0.16262302110831164 0 -0.56459499737127161 0.40078829425147727 -0.72152701414037579 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020182 1;
	setAttr ".pm[35]" -type "matrix" -0.80828667061645454 0.25069033817993197 0.53275417637687206 0
		 0.218196818333519 0.96794042383007695 -0.12442461325951786 0 -0.54686635165540876 0.015674509845052226 -0.83707317671050785 0
		 -1.2782209820434483 -5.4701710369415633 -1.0637098843123738 1;
	setAttr ".pm[36]" -type "matrix" -0.8200474629899539 -0.20903383935798983 0.53275417637687206 0
		 -0.32022389937182455 0.93913533097542623 -0.12442461325951783 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050785 0
		 1.4741587314170379 -5.4790257814298373 -1.063709884312374 1;
	setAttr ".pm[37]" -type "matrix" -0.68115616977266802 -0.58224856304555372 0.44386133331482819 0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048565 0 -0.16426653899654683 -0.4692574321309736 -0.8676485270868276 0
		 3.7155105341486689 -4.2535038943938579 -0.56138920422851657 1;
	setAttr ".pm[38]" -type "matrix" -0.50408143703462227 -0.8031478417612693 0.31757746946426507 0
		 -0.83807469275740265 0.36604707764536526 -0.40452484016049423 0 0.20864494769031885 -0.47006710289224019 -0.85761541764464611 0
		 4.7675519887131355 -2.6983875271677142 0.40050570930127805 1;
	setAttr ".pm[39]" -type "matrix" -0.1388780541691455 -0.97362021444400937 0.18104298963559565 0
		 -0.84422276414869568 0.020829102434949075 -0.53558759599610806 0 0.51768794709103272 -0.22722197630897623 -0.82484505388522267 0
		 5.1314029120475162 -0.54383195128390083 1.106276859770559 1;
	setAttr ".pm[40]" -type "matrix" -0.44544497944150729 0.31790426679360784 -0.83696812809376109 0
		 -0.53604559259280815 0.65406161496897919 0.53372139406810004 0 0.71710103399185043 0.68639659161347066 -0.12093728155217454 0
		 3.5487087479939037 -1.8700671021165944 -2.7925192544727229 1;
	setAttr ".pm[41]" -type "matrix" -0.052113644842615832 -0.12229877356956306 -0.99112419908132576 0
		 -0.1298513400838483 0.98487688501104831 -0.11470026525411003 0 0.99016301561896725 0.12272135655343415 -0.067206183837786523 0
		 1.5808752886267787 -4.2107979269501721 0.02488657865780947 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923410589018 0.15316128048267028 0.8446993714649188 0
		 -0.35222853801336457 0.93486282786315411 0.044345801251914924 0 -0.78288598339814919 -0.32027037833776562 0.53340080779662957 0
		 1.1996854652596876 -4.1723182493855937 0.61489409327925237 1;
	setAttr ".pm[43]" -type "matrix" -0.73333549252294628 0.11850971777536543 0.6694583647986867 0
		 0.055614854265169066 0.99184696103279246 -0.11465859703955252 0 -0.67758840263923636 -0.046851389337113233 -0.73394748035945312 0
		 -1.6184639253570581 -4.1509626321413302 0.61671609555364293 1;
	setAttr ".pm[44]" -type "matrix" 0.71787470010069754 0.19100108051108516 -0.6694583647986867 0
		 -0.15418153999379089 0.98136713764526717 0.11465859703955254 0 0.67888435515960754 0.020907615682650708 0.73394748035945312 0
		 2.9878104596161363 -3.9063461047656265 -0.61671609555364371 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497510865095 0.012292726638408521 -0.5042589866649978 0
		 0.11820591342388151 0.96693328786482735 0.22598092585556875 0 0.49036272165840955 -0.25473300863984571 0.8334599543571658 0
		 -0.31526851927338967 -4.1175003486713404 -0.84111836428203779 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581735119836 0.14817026903880451 -0.50425898666499791 0
		 -0.035601726522438204 0.97348093880572795 0.22598092585556881 0 0.52437016632152489 -0.17429983693304754 0.83345995435716591 0
		 -0.5426611529350891 -4.2561403836399734 -0.84111836428203701 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227675808372 0.54496456709945651 -0.34985229813832852 0
		 0.62286061317250907 0.76461428796600184 -0.16555859143098073 0 0.17727849972552723 -0.3440619293736909 -0.92205950040695339 0
		 -2.7951586638432317 -5.0172514867505065 -0.72188545988463759 1;
	setAttr ".pm[48]" -type "matrix" -0.63784895208083725 0.68611375428328836 -0.34985229813832847 0
		 0.7629672038368267 0.62487710685606335 -0.16555859143098076 0 0.10502266516706038 -0.37252720371871889 -0.92205950040695328 0
		 -4.1298506208874732 -4.2789178953001308 -0.72188545988463737 1;
	setAttr ".pm[49]" -type "matrix" -0.43115002080261616 0.83169286942310305 -0.34985229813832847 0
		 0.90227886845699257 0.39809948045602755 -0.16555859143098073 0 0.0015821181603363223 -0.3870449258308486 -0.92205950040695328 0
		 -5.4553895547094982 -2.9266922506119553 -0.72188545988463804 1;
	setAttr ".pm[50]" -type "matrix" -0.28599064808402525 0.89208335860266452 -0.34985229813832847 0
		 0.95614812432505913 0.24160115304580213 -0.16555859143098073 0 -0.063167345663331723 -0.38185882751499872 -0.92205950040695317 0
		 -6.1336372640080636 -1.9280907294341134 -0.72188545988463826 1;
	setAttr ".pm[51]" -type "matrix" -0.10207340220925795 0.93122735679787572 -0.34985229813832852 0
		 0.98513663511676597 0.04578387220633319 -0.16555859143098076 0 -0.1381550965843944 -0.36155144446819326 -0.92205950040695339 0
		 -6.750844393671346 -0.59181557076226199 -0.72188545988463804 1;
	setAttr ".pm[52]" -type "matrix" 0.23188991289304464 -0.90765105507887078 0.34985229813832852 0
		 0.93832475914076996 0.30354077022173792 0.16555859143098076 0 -0.2564638662304547 0.28988370603986663 0.92205950040695339 0
		 -6.7512693567178932 -1.9036837947667706 0.72188545988463826 1;
	setAttr ".pm[53]" -type "matrix" 0.93511715707163778 -0.056207401982203677 0.34985229813832847 0
		 -0.0026622528471228501 0.98619636240110298 0.16555859143098076 0 -0.35432868210185431 -0.15574807462451479 0.92205950040695339 0
		 -0.34546938704197949 -7.3149787490197635 0.72188545988463826 1;
	setAttr ".pm[54]" -type "matrix" -0.3995512077925496 0.88654287078454452 -0.23323929903130458 0
		 0.91382911845984149 0.40534607056836613 -0.024716499139121474 0 0.07263039726191893 -0.22301637010740805 -0.97210520215545215 0
		 -4.5278240127840492 -3.3954816224779094 -1.022056697587352 1;
	setAttr ".pm[55]" -type "matrix" -0.32480994631015858 0.91656856162830391 -0.23323929903130453 0
		 0.94424078807895984 0.32832671045519651 -0.024716499139121471 0 0.053924325735392298 -0.22826222428665643 -0.97210520215545193 0
		 -5.2848407070967021 -2.9682891700797711 -1.022056697587352 1;
	setAttr ".pm[56]" -type "matrix" -0.20311031532577234 0.95097088766988669 -0.23323929903130458 0
		 0.97886549055744121 0.20300602470381512 -0.024716499139121474 0 0.023844311774627147 -0.23333007679744791 -0.97210520215545215 0
		 -6.0531111548152001 -2.2013311585251061 -1.0220566975873524 1;
	setAttr ".pm[57]" -type "matrix" 0.055141303824235287 -0.9708547090064249 0.23323929903130447 0
		 0.99773223418241641 0.062605778836058751 0.024716499139121471 0 -0.038598257550400639 0.23134746693314248 0.97210520215545215 0
		 -6.8860134976711738 0.39760011084167934 1.0220566975873533 1;
	setAttr ".pm[58]" -type "matrix" 0.28391907621620699 -0.93004805657983181 0.23323929903130441 0
		 0.95438699790408643 0.29754756410014638 0.024716499139121464 0 -0.092387317268987398 0.21558306879286218 0.97210520215545204 0
		 -7.2628020056901921 -1.3645944184337013 1.0220566975873542 1;
	setAttr ".pm[59]" -type "matrix" 0.55092251726407293 -0.80130132244917951 0.23323929903130447 0
		 0.82040361842651 0.57125038078148793 0.024716499139121457 0 -0.15304340183133217 0.17773348896086494 0.97210520215545226 0
		 -6.9115203842823005 -3.614765238507994 1.0220566975873553 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801089765346 -0.52562567444166342 0.2332392990313045 0
		 0.53537164030992179 0.84425487941863231 0.024716499139121471 0 -0.20990504280919794 0.10464869299507418 0.97210520215545226 0
		 -5.4326010597893744 -6.2006164513207258 1.022056697587356 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862487083475 0.0012030759333471891 0.2332392990313045 0
		 -0.0071651614412281605 0.9996688227267202 0.024716499139121488 0 -0.23313231965095885 -0.025705981336483979 0.97210520215545226 0
		 -1.6152690614627854 -8.4165599672621738 1.0220566975873582 1;
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
	rename -uid "CFE3A08A-784B-E464-475A-8CBAA791E945";
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
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 0 0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 0 0.210011846539538 0.045642596473303459 -0.97663287764657492 0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924786964475911 0.69647275897298977 0.63759041424957175 0
		 0.89339606886512057 0.44836933267261597 -0.028432475359386224 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461459 0
		 -3.5395339554045822 -2.4005302806614881 -1.4268590620613972 1;
	setAttr ".pm[32]" -type "matrix" -0.2788948936776629 0.70693339326522631 0.64997139611450505 0
		 0.88853219656263749 0.44672740812313055 -0.10461911155789998 0 -0.36431878067442508 0.54834277629791317 -0.75272307373282876 0
		 -4.0483565879838137 -2.4178888731886135 -1.0785180430682901 1;
	setAttr ".pm[33]" -type "matrix" -0.23031898058193839 0.65282056230089813 0.72164983241239433 0
		 0.83303853881336332 0.51558677386086182 -0.20054194441922935 0 -0.50299101387141465 0.55497350572517279 -0.66257410748362233 0
		 -4.4246285444210187 -2.6889499752129318 -0.58522172147807516 1;
	setAttr ".pm[34]" -type "matrix" -0.43594206856657192 0.59749643679491415 0.67301747441747783 0
		 0.70084734557336581 0.69452627827057267 -0.16262302110831164 0 -0.56459499737127161 0.40078829425147727 -0.72152701414037579 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020182 1;
	setAttr ".pm[35]" -type "matrix" -0.80828667061645454 0.25069033817993197 0.53275417637687206 0
		 0.218196818333519 0.96794042383007695 -0.12442461325951786 0 -0.54686635165540876 0.015674509845052226 -0.83707317671050785 0
		 -1.2782209820434483 -5.4701710369415633 -1.0637098843123738 1;
	setAttr ".pm[36]" -type "matrix" -0.8200474629899539 -0.20903383935798983 0.53275417637687206 0
		 -0.32022389937182455 0.93913533097542623 -0.12442461325951783 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050785 0
		 1.4741587314170379 -5.4790257814298373 -1.063709884312374 1;
	setAttr ".pm[37]" -type "matrix" -0.68115616977266802 -0.58224856304555372 0.44386133331482819 0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048565 0 -0.16426653899654683 -0.4692574321309736 -0.8676485270868276 0
		 3.7155105341486689 -4.2535038943938579 -0.56138920422851657 1;
	setAttr ".pm[38]" -type "matrix" -0.50408143703462227 -0.8031478417612693 0.31757746946426507 0
		 -0.83807469275740265 0.36604707764536526 -0.40452484016049423 0 0.20864494769031885 -0.47006710289224019 -0.85761541764464611 0
		 4.7675519887131355 -2.6983875271677142 0.40050570930127805 1;
	setAttr ".pm[39]" -type "matrix" -0.1388780541691455 -0.97362021444400937 0.18104298963559565 0
		 -0.84422276414869568 0.020829102434949075 -0.53558759599610806 0 0.51768794709103272 -0.22722197630897623 -0.82484505388522267 0
		 5.1314029120475162 -0.54383195128390083 1.106276859770559 1;
	setAttr ".pm[40]" -type "matrix" -0.44544497944150729 0.31790426679360784 -0.83696812809376109 0
		 -0.53604559259280815 0.65406161496897919 0.53372139406810004 0 0.71710103399185043 0.68639659161347066 -0.12093728155217454 0
		 3.5487087479939037 -1.8700671021165944 -2.7925192544727229 1;
	setAttr ".pm[41]" -type "matrix" -0.052113644842615832 -0.12229877356956306 -0.99112419908132576 0
		 -0.1298513400838483 0.98487688501104831 -0.11470026525411003 0 0.99016301561896725 0.12272135655343415 -0.067206183837786523 0
		 1.5808752886267787 -4.2107979269501721 0.02488657865780947 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923410589018 0.15316128048267028 0.8446993714649188 0
		 -0.35222853801336457 0.93486282786315411 0.044345801251914924 0 -0.78288598339814919 -0.32027037833776562 0.53340080779662957 0
		 1.1996854652596876 -4.1723182493855937 0.61489409327925237 1;
	setAttr ".pm[43]" -type "matrix" -0.73333549252294628 0.11850971777536543 0.6694583647986867 0
		 0.055614854265169066 0.99184696103279246 -0.11465859703955252 0 -0.67758840263923636 -0.046851389337113233 -0.73394748035945312 0
		 -1.6184639253570581 -4.1509626321413302 0.61671609555364293 1;
	setAttr ".pm[44]" -type "matrix" 0.71787470010069754 0.19100108051108516 -0.6694583647986867 0
		 -0.15418153999379089 0.98136713764526717 0.11465859703955254 0 0.67888435515960754 0.020907615682650708 0.73394748035945312 0
		 2.9878104596161363 -3.9063461047656265 -0.61671609555364371 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497510865095 0.012292726638408521 -0.5042589866649978 0
		 0.11820591342388151 0.96693328786482735 0.22598092585556875 0 0.49036272165840955 -0.25473300863984571 0.8334599543571658 0
		 -0.31526851927338967 -4.1175003486713404 -0.84111836428203779 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581735119836 0.14817026903880451 -0.50425898666499791 0
		 -0.035601726522438204 0.97348093880572795 0.22598092585556881 0 0.52437016632152489 -0.17429983693304754 0.83345995435716591 0
		 -0.5426611529350891 -4.2561403836399734 -0.84111836428203701 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227675808372 0.54496456709945651 -0.34985229813832852 0
		 0.62286061317250907 0.76461428796600184 -0.16555859143098073 0 0.17727849972552723 -0.3440619293736909 -0.92205950040695339 0
		 -2.7951586638432317 -5.0172514867505065 -0.72188545988463759 1;
	setAttr ".pm[48]" -type "matrix" -0.63784895208083725 0.68611375428328836 -0.34985229813832847 0
		 0.7629672038368267 0.62487710685606335 -0.16555859143098076 0 0.10502266516706038 -0.37252720371871889 -0.92205950040695328 0
		 -4.1298506208874732 -4.2789178953001308 -0.72188545988463737 1;
	setAttr ".pm[49]" -type "matrix" -0.43115002080261616 0.83169286942310305 -0.34985229813832847 0
		 0.90227886845699257 0.39809948045602755 -0.16555859143098073 0 0.0015821181603363223 -0.3870449258308486 -0.92205950040695328 0
		 -5.4553895547094982 -2.9266922506119553 -0.72188545988463804 1;
	setAttr ".pm[50]" -type "matrix" -0.28599064808402525 0.89208335860266452 -0.34985229813832847 0
		 0.95614812432505913 0.24160115304580213 -0.16555859143098073 0 -0.063167345663331723 -0.38185882751499872 -0.92205950040695317 0
		 -6.1336372640080636 -1.9280907294341134 -0.72188545988463826 1;
	setAttr ".pm[51]" -type "matrix" -0.10207340220925795 0.93122735679787572 -0.34985229813832852 0
		 0.98513663511676597 0.04578387220633319 -0.16555859143098076 0 -0.1381550965843944 -0.36155144446819326 -0.92205950040695339 0
		 -6.750844393671346 -0.59181557076226199 -0.72188545988463804 1;
	setAttr ".pm[52]" -type "matrix" 0.23188991289304464 -0.90765105507887078 0.34985229813832852 0
		 0.93832475914076996 0.30354077022173792 0.16555859143098076 0 -0.2564638662304547 0.28988370603986663 0.92205950040695339 0
		 -6.7512693567178932 -1.9036837947667706 0.72188545988463826 1;
	setAttr ".pm[53]" -type "matrix" 0.93511715707163778 -0.056207401982203677 0.34985229813832847 0
		 -0.0026622528471228501 0.98619636240110298 0.16555859143098076 0 -0.35432868210185431 -0.15574807462451479 0.92205950040695339 0
		 -0.34546938704197949 -7.3149787490197635 0.72188545988463826 1;
	setAttr ".pm[54]" -type "matrix" -0.3995512077925496 0.88654287078454452 -0.23323929903130458 0
		 0.91382911845984149 0.40534607056836613 -0.024716499139121474 0 0.07263039726191893 -0.22301637010740805 -0.97210520215545215 0
		 -4.5278240127840492 -3.3954816224779094 -1.022056697587352 1;
	setAttr ".pm[55]" -type "matrix" -0.32480994631015858 0.91656856162830391 -0.23323929903130453 0
		 0.94424078807895984 0.32832671045519651 -0.024716499139121471 0 0.053924325735392298 -0.22826222428665643 -0.97210520215545193 0
		 -5.2848407070967021 -2.9682891700797711 -1.022056697587352 1;
	setAttr ".pm[56]" -type "matrix" -0.20311031532577234 0.95097088766988669 -0.23323929903130458 0
		 0.97886549055744121 0.20300602470381512 -0.024716499139121474 0 0.023844311774627147 -0.23333007679744791 -0.97210520215545215 0
		 -6.0531111548152001 -2.2013311585251061 -1.0220566975873524 1;
	setAttr ".pm[57]" -type "matrix" 0.055141303824235287 -0.9708547090064249 0.23323929903130447 0
		 0.99773223418241641 0.062605778836058751 0.024716499139121471 0 -0.038598257550400639 0.23134746693314248 0.97210520215545215 0
		 -6.8860134976711738 0.39760011084167934 1.0220566975873533 1;
	setAttr ".pm[58]" -type "matrix" 0.28391907621620699 -0.93004805657983181 0.23323929903130441 0
		 0.95438699790408643 0.29754756410014638 0.024716499139121464 0 -0.092387317268987398 0.21558306879286218 0.97210520215545204 0
		 -7.2628020056901921 -1.3645944184337013 1.0220566975873542 1;
	setAttr ".pm[59]" -type "matrix" 0.55092251726407293 -0.80130132244917951 0.23323929903130447 0
		 0.82040361842651 0.57125038078148793 0.024716499139121457 0 -0.15304340183133217 0.17773348896086494 0.97210520215545226 0
		 -6.9115203842823005 -3.614765238507994 1.0220566975873553 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801089765346 -0.52562567444166342 0.2332392990313045 0
		 0.53537164030992179 0.84425487941863231 0.024716499139121471 0 -0.20990504280919794 0.10464869299507418 0.97210520215545226 0
		 -5.4326010597893744 -6.2006164513207258 1.022056697587356 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862487083475 0.0012030759333471891 0.2332392990313045 0
		 -0.0071651614412281605 0.9996688227267202 0.024716499139121488 0 -0.23313231965095885 -0.025705981336483979 0.97210520215545226 0
		 -1.6152690614627854 -8.4165599672621738 1.0220566975873582 1;
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
	rename -uid "9E2281E3-CD41-D4AA-7099-798CF7DA833E";
	setAttr -s 206 ".wl";
	setAttr ".wl[0:166].w"
		3 42 0.17933782291901762 43 0.43320823477650272 44 0.38745394230447966
		3 42 0.40446218223804137 43 0.39824982523403646 45 0.1972879925279222
		3 42 0.36522925961316205 43 0.2944534783209225 45 0.34031726206591539
		3 42 0.4230291331878826 45 0.42302913318788299 46 0.15394173362423449
		3 42 0.17252847637882776 45 0.42618793994209508 46 0.40128358367907718
		3 42 0.15814890004555027 43 0.43230219085780969 44 0.40954890909663993
		3 42 0.40352254920013664 43 0.40352254920013697 45 0.19295490159972642
		3 42 0.35585985512691615 43 0.30161917345733569 45 0.34252097141574828
		3 42 0.41900451130949473 45 0.41900451130949451 46 0.16199097738101079
		3 42 0.15231112349835543 45 0.42727606137910901 46 0.42041281512253553
		3 42 0.033433155448744527 43 0.48328342227562782 44 0.48328342227562771
		2 42 0.58494171525711014 43 0.41505828474288997
		3 42 0.72140105081322259 43 0.14271761673139569 45 0.13588133245538167
		2 42 0.55628775949740461 45 0.44371224050259539
		2 45 0.31619322299957275 46 0.68380677700042725
		3 42 0.041340124881453597 43 0.47932993755927322 44 0.47932993755927322
		2 42 0.66245353216500069 43 0.33754646783499925
		3 42 0.85454756702660228 43 0.071037236412554466 45 0.074415196560843277
		2 42 0.60144580733366526 45 0.39855419266633468
		2 45 0.50102800130844116 46 0.49897199869155884
		3 42 0.00084145280763004023 43 0.49957927359618498 44 0.49957927359618498
		3 42 0.00024809129039508263 43 0.49987595435480248 44 0.49987595435480248
		3 42 0.50879694412441301 43 0.49059954097650987 45 0.00060351489907704652
		3 42 0.71894561072389573 43 0.12832349373509722 45 0.15273089554100705
		3 42 0.4994138041232718 45 0.49941380412327169 46 0.0011723917534565427
		3 42 0.0016364938955037828 45 0.4991817530522481 46 0.4991817530522481
		3 42 0.0014921364157076177 45 0.49925393179214617 46 0.49925393179214617
		3 42 0.92704988391730958 45 0.072936965857276409 46 1.3150225413992754e-05
		3 42 0.95243153591646545 43 0.019584537138200148 45 0.0279839269453344
		3 42 0.94366611455604155 43 0.056295660455836519 44 3.822498812192889e-05
		3 42 0.0030280093666728482 43 0.4984859953166636 44 0.4984859953166636
		3 42 0.0060221392830192349 43 0.49698893035849029 44 0.49698893035849051
		3 42 0.51276021680912387 43 0.47025279190745412 45 0.016986991283421942
		3 42 0.55992017052765708 43 0.18556905412446539 45 0.25451077534787747
		3 42 0.49439416178639034 45 0.49285439237721912 46 0.012751445836390646
		3 42 0.0057019122298010263 45 0.49714904388509945 46 0.49714904388509945
		3 42 0.0050252605387464374 45 0.49748736973062679 46 0.49748736973062679
		3 42 0.49206729664864618 45 0.49206729664864618 46 0.015865406702707693
		3 42 0.5037060939568484 43 0.22096462308309375 45 0.27532928296005782
		3 42 0.49145556423864356 43 0.49145556423864395 45 0.017088871522712532
		3 42 0.084142587889183829 43 0.46137629179340894 44 0.45448112031740723
		3 42 0.098363319838276481 43 0.46388602991935968 44 0.43775065024236381
		3 42 0.4357273585360914 43 0.43057836731490307 45 0.13369427414900559
		3 42 0.37611976477861542 43 0.28588276803024837 45 0.33799746719113616
		3 42 0.4446872104314738 45 0.44468721043147369 46 0.11062557913705248
		3 42 0.090536535494918052 45 0.45733690942117877 46 0.45212655508390315
		3 42 0.071649134232878761 45 0.46417543288356067 46 0.46417543288356056
		3 42 0.45418366665490367 45 0.45418366665490367 46 0.091632666690192641
		3 42 0.36834341903449053 43 0.29130336557238279 45 0.34035321539312668
		3 42 0.44209692892098168 43 0.44209692892098196 45 0.11580614215803629
		3 42 0.3834567577008044 43 0.40703856626548596 44 0.20950467603370967
		3 42 0.37381828011059814 43 0.40299168581930905 44 0.22319003407009277
		3 42 0.39180285340104015 43 0.45753840444782901 44 0.15065874215113084
		3 42 0.24489307472294286 43 0.71023185204965977 44 0.044875073227397477
		3 42 0.016174367132758476 43 0.97943612142877146 44 0.0043895114384700888
		5 43 0.94509804248809814 47 0.012947585383108955 48 0.014227128441664995 
		49 0.014227128441665002 50 0.013500115245462902
		5 38 0.0009798787292694558 39 0.0010155166952574765 43 0.99607843160629272 
		48 0.00096337906382399133 49 0.00096279390535635194
		3 42 0.015795170247877129 43 0.97985003608181387 44 0.0043547936703090236
		3 42 0.22039123621366832 43 0.71994079715531933 44 0.059667966631012412
		3 42 0.36306532954765874 43 0.4477925713726274 44 0.18914209907971385
		3 42 0.38186248551419549 45 0.40278212760971238 46 0.21535538687609215
		3 42 0.36841465897708098 45 0.39708410380285997 46 0.23450123722005897
		3 42 0.37719787644983083 45 0.45121744088227556 46 0.17158468266789359
		3 42 0.20378314041027584 45 0.72506990173769381 46 0.071146957852030318
		3 42 0.019970011286698747 45 0.96167419185781233 46 0.018355796855489014
		5 20 0.0057100641566284333 21 0.0055836102520488038 33 0.0055930305605656292 
		45 0.38592270016670227 46 0.5971905948640549
		5 32 0.00011683122501418214 33 0.0001180116927823905 34 0.0001150475917672555 
		45 0.378339022397995 46 0.62131108709244121
		3 42 0.0045826347592332686 45 0.99195868347870053 46 0.0034586817620662468
		3 42 0.16731050298550579 45 0.76381003283361948 46 0.068879464180874705
		3 42 0.35619812440327209 45 0.44165818901133924 46 0.20214368658538873
		3 42 0.29190410600966671 43 0.41731205286122419 44 0.2907838411291091
		3 42 0.27250754391167559 43 0.41439747076270644 44 0.31309498532561808
		3 42 0.23128377599082353 43 0.50111100988622337 44 0.26760521412295318
		3 42 0.026593886959909708 43 0.71878021527425473 44 0.25462589776583555
		3 42 0.00046920978886056801 43 0.98045525579388104 44 0.019075534417258486
		2 43 0.51141922039640242 44 0.48858077960359753
		2 43 0.52451846111333611 44 0.47548153888666383
		3 42 0.0028772705767684272 43 0.81972158909958137 44 0.17740114032365015
		3 42 0.026610501109231591 43 0.64583174336813998 44 0.32755775552262845
		3 42 0.20513222691452362 43 0.47662388806584088 44 0.31824388501963546
		3 42 0.0010474792458489552 45 0.64831964314240287 46 0.35063287761174822
		5 19 0.00023686172171733305 20 0.00023987487771562129 21 0.0002137294875724408 
		45 0.29216739535331726 46 0.70714213855967734
		5 19 0.000195814852622297 20 0.0002049745132980745 21 0.00019788677767741813 
		45 0.44961202144622803 46 0.54978930241017421
		3 42 0.00074553955407126351 45 0.8367840228084692 46 0.16247043763745955
		3 42 0.018454423436152022 45 0.60717040656217469 46 0.37437517000167331
		3 42 0.2075224440896872 45 0.49713793038246912 46 0.2953396255278436
		3 42 0.26376705351856311 45 0.40618870269411606 46 0.33004424378732089
		3 42 0.28547717245766951 45 0.410153440210211 46 0.30436938733211955
		3 42 0.19250019249908426 45 0.46901228822250851 46 0.33848751927840726
		3 42 0.016365494609012644 45 0.56990158039711103 46 0.41373292499387643
		3 42 0.01103233738366117 43 0.49448383130816942 44 0.49448383130816942
		3 42 0.0094297878005929776 43 0.4952851060997035 44 0.4952851060997035
		3 42 0.17162706726686042 43 0.50978166542582259 44 0.31859126730731696
		3 42 0.29345240850004267 43 0.51123408471695786 44 0.19531350678299936
		3 42 0.64109314502903691 43 0.33975929311365327 45 0.019147561857309783
		3 42 0.84310049901152007 43 0.076415128748159505 45 0.080484372240320429
		3 42 0.5628026813062178 45 0.41327124542928861 46 0.023926073264493565
		3 42 0.24602869663982915 45 0.48377431877538585 46 0.27019698458478497
		3 42 0.041965746051243868 45 0.24948494136333466 46 0.70854931258542142
		3 42 0.0052725547302554174 45 0.34764748811721802 46 0.64707995715252653
		2 45 0.50000000000000011 46 0.49999999999999994
		3 42 0.55580480902658636 45 0.39577651249642481 46 0.048418678476988823
		3 42 0.94723913867166598 43 0.025098055629812443 45 0.027662805698521604
		2 42 0.61021340724998052 43 0.38978659275001942
		3 42 0.29050937399208776 43 0.42101017538720092 44 0.28848045062071137
		3 42 0.21423719606532055 43 0.4707812529201954 44 0.31498155101448405
		3 42 0.1045168259252133 43 0.46613417364869203 44 0.4293490004260947
		3 42 0.17643539780430315 43 0.43722477408708998 44 0.38633982810860695
		4 42 0.36844473270868611 43 0.13352753502432679 45 0.36844473270868633 
		46 0.12958299955830058
		4 42 0.40762408049943422 43 0.083221763766133494 45 0.40762408049943455 
		46 0.10153007523499777
		3 42 0.35942013952449259 43 0.29838487448676809 45 0.34219498598873938
		3 42 0.35438761827681753 43 0.30272621793663862 45 0.34288616378654396
		3 42 0.38228092249177464 45 0.40333118990510197 46 0.21438788760312336
		3 42 0.35749991620890886 45 0.43470480576781823 46 0.20779527802327294
		3 42 0.53081270300094352 43 0.043337624049472508 45 0.42584967294958398
		3 42 0.28231086884594492 45 0.44980630123972382 46 0.26788282991433127
		3 42 0.05969633318643966 45 0.35376888513565063 46 0.58653478167790973
		3 42 0.48153028185482555 45 0.41214238389074176 46 0.10632733425443269
		3 42 0.70023233746591207 43 0.15275613343331548 45 0.14701152910077245
		3 42 0.6695807182529192 43 0.17216543042551785 45 0.15825385132156294
		3 42 0.57249636395745107 43 0.39018373148568658 45 0.037319904556862384
		2 42 0.55855122942686297 43 0.44144877057313708
		3 42 0.011428572195821768 43 0.49428571390208925 44 0.49428571390208892
		3 42 0.16445832065185575 43 0.46633972726889988 44 0.36920195207924433
		3 42 0.2076721293387537 43 0.41485473317817406 44 0.37747313748307221
		3 42 0.035123678155002273 43 0.48243816092249892 44 0.48243816092249892
		3 42 0.026763063010864816 43 0.59174143837342308 44 0.38149549861571208
		3 42 0.0039515051151221524 43 0.7261763386504182 44 0.2698721562344597
		3 42 0.00097030228845239601 43 0.49951484885577407 44 0.49951484885577363
		3 42 0.0058005126231418279 43 0.49709974368842913 44 0.49709974368842902
		3 42 0.44016929924329301 43 0.44016929924329301 45 0.11966140151341405
		3 42 0.37481343514752136 43 0.44337313971390402 44 0.18181342513857468
		3 42 0.38921563331898651 43 0.40987326382336392 44 0.20091110285764957
		3 42 0.4035196756814633 43 0.4035196756814633 45 0.19296064863707341
		2 42 0.12323778867721558 43 0.87676221132278442
		3 42 0.32541652917481717 43 0.47653486081314811 44 0.19804861001203458
		3 42 0.086472459054167533 45 0.45875137753131745 46 0.45477616341451504
		3 42 0.19235621494712687 45 0.46403599765311893 46 0.34360778739975412
		3 42 0.27880680290903309 45 0.41129412299800833 46 0.30989907409295864
		3 42 0.16664278871742821 45 0.42809704706924906 46 0.40526016421332278
		3 42 0.0070084069074926435 45 0.4964957965462537 46 0.4964957965462537
		3 42 0.021045013813599731 45 0.51183382400383393 46 0.46712116218256633
		3 42 0.0034877708827060379 45 0.52311068486335788 46 0.4734015442539361
		3 42 0.0023780130044537607 45 0.49881099349777314 46 0.49881099349777314
		2 45 0.50438439846038818 46 0.49561560153961182
		3 42 9.8375286844401983e-05 45 0.30301135778427124 46 0.69689026692888434
		3 42 0.0047833998262129911 45 0.27748984098434448 46 0.71772675918944251
		3 42 0.0070758108193678098 45 0.39864352345466614 46 0.59428066572596605
		3 42 0.016369336440054554 45 0.49971089050252715 46 0.48391977305741823
		3 42 0.019205867605170877 45 0.57517075464120715 46 0.40562337775362201
		3 42 0.059553067414055381 45 0.78976578941474795 46 0.15068114317119657
		3 42 0.56358680652043303 45 0.43361914296046628 46 0.0027940505191005873
		3 42 0.80231300582409981 43 0.093029534178901391 45 0.1046574599969988
		3 42 0.62087112858191695 43 0.37792206943096762 45 0.0012068019871154098
		3 42 0.064782875019379238 43 0.87834906874274798 44 0.056868056237872798
		3 42 0.024835228198106192 43 0.72969374297980194 44 0.2454710288220919
		3 42 0.019889832279370724 43 0.59366283349469451 44 0.38644733422593475
		3 42 0.20255634860555743 43 0.66661339801935893 44 0.13083025337508372
		3 42 0.48269919230551089 43 0.49942196184549831 44 0.017878845848990747
		3 42 0.45797322420088182 43 0.48704219970646395 44 0.054984576092654162
		3 42 0.44996391348765435 43 0.47136690663817304 44 0.078669179874172657
		2 42 0.45282059907913208 43 0.54717940092086792
		2 42 0.18881094455718994 43 0.81118905544281006
		3 42 0.097378914675173192 43 0.58500821651902346 44 0.31761286880580325
		3 42 0.070822931414033799 43 0.52723624527588075 44 0.40194082331008552
		3 42 0.042604845157512602 43 0.57253589572797747 44 0.38485925911450991
		3 42 0.03048225575449762 45 0.51223612575154953 46 0.45728161849395288;
	setAttr ".wl[167:205].w"
		3 42 0.19814444843443085 45 0.62626880407333374 46 0.17558674749223543
		3 42 0.52191187730276467 45 0.46966966986656189 46 0.0084184528306734761
		3 42 0.99327261742464856 43 0.0030691682450888279 45 0.0036582143302626748
		2 42 0.65977997732056037 43 0.34022002267943968
		3 42 0.23526548055668339 43 0.65813507454192854 44 0.10659944490138816
		2 42 0.44313722848892212 43 0.55686277151107788
		2 42 0.48579546307410026 43 0.51420453692589974
		3 42 0.42198538801097379 45 0.48202397130264574 46 0.095990640686380468
		3 42 0.42732450017432916 45 0.5265523936597748 46 0.046123106165895912
		3 42 0.16309206700312709 45 0.61030599057341983 46 0.22660194242345311
		3 42 0.05705061461589201 45 0.46954888105392456 46 0.47340050433018344
		3 42 0.017790201246602307 45 0.28847330808639526 46 0.69373649066700238
		3 42 0.41248036829429607 45 0.45911966203333821 46 0.1283999696723658
		3 42 0.35852492932068103 45 0.42459568381309509 46 0.21687938686622382
		3 42 0.15414473346168192 45 0.42183694243431091 46 0.42401832410400714
		3 42 0.14025451338562225 45 0.33775216341018677 46 0.52199332320419101
		3 42 0.37037213672997493 45 0.43051437507269835 46 0.19911348819732666
		3 42 0.030423121147192679 43 0.48765195213486529 44 0.48192492671794207
		3 42 0.019099520545565799 43 0.49045023972721713 44 0.49045023972721713
		3 42 0.027819036903162876 43 0.49024589690983422 44 0.48193506618700299
		3 42 0.11732266455731115 43 0.53332334144011118 44 0.34935399400257772
		3 42 0.12822020556179686 43 0.59110355155481253 44 0.28067624288339071
		3 42 0.369797216520517 43 0.52504751523683579 44 0.1051552682426473
		3 42 0.46873904951456097 43 0.46873904951456125 45 0.062521900970877786
		3 42 0.41100411885019655 43 0.2654850548927622 45 0.32351082625704131
		3 42 0.47419064067025701 45 0.47419064067025701 46 0.051618718659486015
		3 42 0.34261457275080437 45 0.5242471829564409 46 0.13313824429275462
		3 42 0.10142911354437616 45 0.56208578140850496 46 0.33648510504711893
		3 42 0.095635986296860973 45 0.50366565895002868 46 0.40069835475311028
		3 42 0.025809609523560005 45 0.48709519523821987 46 0.48709519523822009
		3 42 0.01998352774018575 45 0.49000823612990713 46 0.49000823612990713
		3 42 0.024589613679134741 45 0.4877051931604327 46 0.48770519316043259
		3 42 0.085940042637663819 45 0.52560858005361477 46 0.38845137730872131
		3 42 0.31900525953347059 45 0.52566559792292489 46 0.15532914254360453
		3 42 0.47162816213789066 45 0.47162816213789038 46 0.056743675724218977
		3 42 0.41110335364933048 43 0.26243906759814317 45 0.32645757875252635
		3 42 0.47010775926307019 43 0.46024481754359242 45 0.069647423193337388
		3 42 0.34082657612886202 43 0.5201511195880516 44 0.13902230428308635
		3 42 0.11003893120123651 43 0.54562991639484959 44 0.34433115240391393;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 0 0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 0 0.210011846539538 0.045642596473303459 -0.97663287764657492 0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924786964475911 0.69647275897298977 0.63759041424957175 0
		 0.89339606886512057 0.44836933267261597 -0.028432475359386224 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461459 0
		 -3.5395339554045822 -2.4005302806614881 -1.4268590620613972 1;
	setAttr ".pm[32]" -type "matrix" -0.2788948936776629 0.70693339326522631 0.64997139611450505 0
		 0.88853219656263749 0.44672740812313055 -0.10461911155789998 0 -0.36431878067442508 0.54834277629791317 -0.75272307373282876 0
		 -4.0483565879838137 -2.4178888731886135 -1.0785180430682901 1;
	setAttr ".pm[33]" -type "matrix" -0.23031898058193839 0.65282056230089813 0.72164983241239433 0
		 0.83303853881336332 0.51558677386086182 -0.20054194441922935 0 -0.50299101387141465 0.55497350572517279 -0.66257410748362233 0
		 -4.4246285444210187 -2.6889499752129318 -0.58522172147807516 1;
	setAttr ".pm[34]" -type "matrix" -0.43594206856657192 0.59749643679491415 0.67301747441747783 0
		 0.70084734557336581 0.69452627827057267 -0.16262302110831164 0 -0.56459499737127161 0.40078829425147727 -0.72152701414037579 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020182 1;
	setAttr ".pm[35]" -type "matrix" -0.80828667061645454 0.25069033817993197 0.53275417637687206 0
		 0.218196818333519 0.96794042383007695 -0.12442461325951786 0 -0.54686635165540876 0.015674509845052226 -0.83707317671050785 0
		 -1.2782209820434483 -5.4701710369415633 -1.0637098843123738 1;
	setAttr ".pm[36]" -type "matrix" -0.8200474629899539 -0.20903383935798983 0.53275417637687206 0
		 -0.32022389937182455 0.93913533097542623 -0.12442461325951783 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050785 0
		 1.4741587314170379 -5.4790257814298373 -1.063709884312374 1;
	setAttr ".pm[37]" -type "matrix" -0.68115616977266802 -0.58224856304555372 0.44386133331482819 0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048565 0 -0.16426653899654683 -0.4692574321309736 -0.8676485270868276 0
		 3.7155105341486689 -4.2535038943938579 -0.56138920422851657 1;
	setAttr ".pm[38]" -type "matrix" -0.50408143703462227 -0.8031478417612693 0.31757746946426507 0
		 -0.83807469275740265 0.36604707764536526 -0.40452484016049423 0 0.20864494769031885 -0.47006710289224019 -0.85761541764464611 0
		 4.7675519887131355 -2.6983875271677142 0.40050570930127805 1;
	setAttr ".pm[39]" -type "matrix" -0.1388780541691455 -0.97362021444400937 0.18104298963559565 0
		 -0.84422276414869568 0.020829102434949075 -0.53558759599610806 0 0.51768794709103272 -0.22722197630897623 -0.82484505388522267 0
		 5.1314029120475162 -0.54383195128390083 1.106276859770559 1;
	setAttr ".pm[40]" -type "matrix" -0.44544497944150729 0.31790426679360784 -0.83696812809376109 0
		 -0.53604559259280815 0.65406161496897919 0.53372139406810004 0 0.71710103399185043 0.68639659161347066 -0.12093728155217454 0
		 3.5487087479939037 -1.8700671021165944 -2.7925192544727229 1;
	setAttr ".pm[41]" -type "matrix" -0.052113644842615832 -0.12229877356956306 -0.99112419908132576 0
		 -0.1298513400838483 0.98487688501104831 -0.11470026525411003 0 0.99016301561896725 0.12272135655343415 -0.067206183837786523 0
		 1.5808752886267787 -4.2107979269501721 0.02488657865780947 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923410589018 0.15316128048267028 0.8446993714649188 0
		 -0.35222853801336457 0.93486282786315411 0.044345801251914924 0 -0.78288598339814919 -0.32027037833776562 0.53340080779662957 0
		 1.1996854652596876 -4.1723182493855937 0.61489409327925237 1;
	setAttr ".pm[43]" -type "matrix" -0.73333549252294628 0.11850971777536543 0.6694583647986867 0
		 0.055614854265169066 0.99184696103279246 -0.11465859703955252 0 -0.67758840263923636 -0.046851389337113233 -0.73394748035945312 0
		 -1.6184639253570581 -4.1509626321413302 0.61671609555364293 1;
	setAttr ".pm[44]" -type "matrix" 0.71787470010069754 0.19100108051108516 -0.6694583647986867 0
		 -0.15418153999379089 0.98136713764526717 0.11465859703955254 0 0.67888435515960754 0.020907615682650708 0.73394748035945312 0
		 2.9878104596161363 -3.9063461047656265 -0.61671609555364371 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497510865095 0.012292726638408521 -0.5042589866649978 0
		 0.11820591342388151 0.96693328786482735 0.22598092585556875 0 0.49036272165840955 -0.25473300863984571 0.8334599543571658 0
		 -0.31526851927338967 -4.1175003486713404 -0.84111836428203779 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581735119836 0.14817026903880451 -0.50425898666499791 0
		 -0.035601726522438204 0.97348093880572795 0.22598092585556881 0 0.52437016632152489 -0.17429983693304754 0.83345995435716591 0
		 -0.5426611529350891 -4.2561403836399734 -0.84111836428203701 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227675808372 0.54496456709945651 -0.34985229813832852 0
		 0.62286061317250907 0.76461428796600184 -0.16555859143098073 0 0.17727849972552723 -0.3440619293736909 -0.92205950040695339 0
		 -2.7951586638432317 -5.0172514867505065 -0.72188545988463759 1;
	setAttr ".pm[48]" -type "matrix" -0.63784895208083725 0.68611375428328836 -0.34985229813832847 0
		 0.7629672038368267 0.62487710685606335 -0.16555859143098076 0 0.10502266516706038 -0.37252720371871889 -0.92205950040695328 0
		 -4.1298506208874732 -4.2789178953001308 -0.72188545988463737 1;
	setAttr ".pm[49]" -type "matrix" -0.43115002080261616 0.83169286942310305 -0.34985229813832847 0
		 0.90227886845699257 0.39809948045602755 -0.16555859143098073 0 0.0015821181603363223 -0.3870449258308486 -0.92205950040695328 0
		 -5.4553895547094982 -2.9266922506119553 -0.72188545988463804 1;
	setAttr ".pm[50]" -type "matrix" -0.28599064808402525 0.89208335860266452 -0.34985229813832847 0
		 0.95614812432505913 0.24160115304580213 -0.16555859143098073 0 -0.063167345663331723 -0.38185882751499872 -0.92205950040695317 0
		 -6.1336372640080636 -1.9280907294341134 -0.72188545988463826 1;
	setAttr ".pm[51]" -type "matrix" -0.10207340220925795 0.93122735679787572 -0.34985229813832852 0
		 0.98513663511676597 0.04578387220633319 -0.16555859143098076 0 -0.1381550965843944 -0.36155144446819326 -0.92205950040695339 0
		 -6.750844393671346 -0.59181557076226199 -0.72188545988463804 1;
	setAttr ".pm[52]" -type "matrix" 0.23188991289304464 -0.90765105507887078 0.34985229813832852 0
		 0.93832475914076996 0.30354077022173792 0.16555859143098076 0 -0.2564638662304547 0.28988370603986663 0.92205950040695339 0
		 -6.7512693567178932 -1.9036837947667706 0.72188545988463826 1;
	setAttr ".pm[53]" -type "matrix" 0.93511715707163778 -0.056207401982203677 0.34985229813832847 0
		 -0.0026622528471228501 0.98619636240110298 0.16555859143098076 0 -0.35432868210185431 -0.15574807462451479 0.92205950040695339 0
		 -0.34546938704197949 -7.3149787490197635 0.72188545988463826 1;
	setAttr ".pm[54]" -type "matrix" -0.3995512077925496 0.88654287078454452 -0.23323929903130458 0
		 0.91382911845984149 0.40534607056836613 -0.024716499139121474 0 0.07263039726191893 -0.22301637010740805 -0.97210520215545215 0
		 -4.5278240127840492 -3.3954816224779094 -1.022056697587352 1;
	setAttr ".pm[55]" -type "matrix" -0.32480994631015858 0.91656856162830391 -0.23323929903130453 0
		 0.94424078807895984 0.32832671045519651 -0.024716499139121471 0 0.053924325735392298 -0.22826222428665643 -0.97210520215545193 0
		 -5.2848407070967021 -2.9682891700797711 -1.022056697587352 1;
	setAttr ".pm[56]" -type "matrix" -0.20311031532577234 0.95097088766988669 -0.23323929903130458 0
		 0.97886549055744121 0.20300602470381512 -0.024716499139121474 0 0.023844311774627147 -0.23333007679744791 -0.97210520215545215 0
		 -6.0531111548152001 -2.2013311585251061 -1.0220566975873524 1;
	setAttr ".pm[57]" -type "matrix" 0.055141303824235287 -0.9708547090064249 0.23323929903130447 0
		 0.99773223418241641 0.062605778836058751 0.024716499139121471 0 -0.038598257550400639 0.23134746693314248 0.97210520215545215 0
		 -6.8860134976711738 0.39760011084167934 1.0220566975873533 1;
	setAttr ".pm[58]" -type "matrix" 0.28391907621620699 -0.93004805657983181 0.23323929903130441 0
		 0.95438699790408643 0.29754756410014638 0.024716499139121464 0 -0.092387317268987398 0.21558306879286218 0.97210520215545204 0
		 -7.2628020056901921 -1.3645944184337013 1.0220566975873542 1;
	setAttr ".pm[59]" -type "matrix" 0.55092251726407293 -0.80130132244917951 0.23323929903130447 0
		 0.82040361842651 0.57125038078148793 0.024716499139121457 0 -0.15304340183133217 0.17773348896086494 0.97210520215545226 0
		 -6.9115203842823005 -3.614765238507994 1.0220566975873553 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801089765346 -0.52562567444166342 0.2332392990313045 0
		 0.53537164030992179 0.84425487941863231 0.024716499139121471 0 -0.20990504280919794 0.10464869299507418 0.97210520215545226 0
		 -5.4326010597893744 -6.2006164513207258 1.022056697587356 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862487083475 0.0012030759333471891 0.2332392990313045 0
		 -0.0071651614412281605 0.9996688227267202 0.024716499139121488 0 -0.23313231965095885 -0.025705981336483979 0.97210520215545226 0
		 -1.6152690614627854 -8.4165599672621738 1.0220566975873582 1;
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
	rename -uid "DD1191E1-BD4C-5432-B09A-E484AB3A2360";
	setAttr -s 17 ".wl";
	setAttr ".wl[0:16].w"
		5 40 0.040116518742875779 41 0.2252198486553984 42 0.47491969674113466 
		43 0.21278932156161331 45 0.046954614298977813
		5 40 0.052879196192411639 41 0.28597357134353202 42 0.38889369902728083 
		43 0.13188006332010221 45 0.14037347011667317
		5 40 0.032022735890754571 41 0.18775625124037928 42 0.49704809456685745 
		43 0.045399403237445311 45 0.23777351506456329
		5 40 0.02257736020170566 41 0.15466744205621089 42 0.61154403654517575 
		43 0.19497413915332937 45 0.016237022043578159
		5 40 0.015029451147724103 41 0.10580629659152488 42 0.61979354100790396 
		43 0.015110027890064149 45 0.24426068336278289
		5 40 0.02531263083358859 41 0.24288177321239457 42 0.60899053945971027 
		43 0.1030860305464727 45 0.019729025947833947
		5 40 0.030355364101498375 41 0.34026687464787447 42 0.52685225238078737 
		43 0.04373525998448706 45 0.058790248885352746
		5 40 0.016400225221009587 41 0.15072965913535227 42 0.67887049942834288 
		43 0.015510324645678607 45 0.13848929156961667
		5 40 0.064656608206105484 41 0.20725306728465948 42 0.2802517490864071 
		43 0.23658244531430561 45 0.21125613010852237
		5 40 0.064817349051123532 41 0.20791237416755254 42 0.27731139433629964 
		43 0.23246913338620953 45 0.2174897490588148
		5 40 0.064724886771753198 41 0.20816469366403328 42 0.27828732194521133 
		43 0.2291877798220944 45 0.21963531779690793
		5 40 0.06460586803656572 41 0.20738126126219272 42 0.28178136720401564 
		43 0.23795410032114053 45 0.20827740317608551
		5 40 0.064544628498385437 41 0.20753012719434596 42 0.27943677220009172 
		43 0.22653354001564605 45 0.22195493209153078
		5 40 0.064415459812188783 41 0.2076732262387409 42 0.28098386931268376 
		43 0.22362478028782798 45 0.22330266434855864
		5 40 0.06490647752158428 41 0.20941482492048652 42 0.27836100125238072 
		43 0.23125353081006592 45 0.21606416549548249
		5 40 0.06471884377608747 41 0.20830620089629379 42 0.2810010629982479 
		43 0.23574397095975047 45 0.21022992136962049
		5 40 0.064602877145647775 41 0.20857758781871638 42 0.28021996060462534 
		43 0.22564487859516902 45 0.22095469583584149;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 0 0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 0 0.210011846539538 0.045642596473303459 -0.97663287764657492 0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924786964475911 0.69647275897298977 0.63759041424957175 0
		 0.89339606886512057 0.44836933267261597 -0.028432475359386224 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461459 0
		 -3.5395339554045822 -2.4005302806614881 -1.4268590620613972 1;
	setAttr ".pm[32]" -type "matrix" -0.2788948936776629 0.70693339326522631 0.64997139611450505 0
		 0.88853219656263749 0.44672740812313055 -0.10461911155789998 0 -0.36431878067442508 0.54834277629791317 -0.75272307373282876 0
		 -4.0483565879838137 -2.4178888731886135 -1.0785180430682901 1;
	setAttr ".pm[33]" -type "matrix" -0.23031898058193839 0.65282056230089813 0.72164983241239433 0
		 0.83303853881336332 0.51558677386086182 -0.20054194441922935 0 -0.50299101387141465 0.55497350572517279 -0.66257410748362233 0
		 -4.4246285444210187 -2.6889499752129318 -0.58522172147807516 1;
	setAttr ".pm[34]" -type "matrix" -0.43594206856657192 0.59749643679491415 0.67301747441747783 0
		 0.70084734557336581 0.69452627827057267 -0.16262302110831164 0 -0.56459499737127161 0.40078829425147727 -0.72152701414037579 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020182 1;
	setAttr ".pm[35]" -type "matrix" -0.80828667061645454 0.25069033817993197 0.53275417637687206 0
		 0.218196818333519 0.96794042383007695 -0.12442461325951786 0 -0.54686635165540876 0.015674509845052226 -0.83707317671050785 0
		 -1.2782209820434483 -5.4701710369415633 -1.0637098843123738 1;
	setAttr ".pm[36]" -type "matrix" -0.8200474629899539 -0.20903383935798983 0.53275417637687206 0
		 -0.32022389937182455 0.93913533097542623 -0.12442461325951783 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050785 0
		 1.4741587314170379 -5.4790257814298373 -1.063709884312374 1;
	setAttr ".pm[37]" -type "matrix" -0.68115616977266802 -0.58224856304555372 0.44386133331482819 0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048565 0 -0.16426653899654683 -0.4692574321309736 -0.8676485270868276 0
		 3.7155105341486689 -4.2535038943938579 -0.56138920422851657 1;
	setAttr ".pm[38]" -type "matrix" -0.50408143703462227 -0.8031478417612693 0.31757746946426507 0
		 -0.83807469275740265 0.36604707764536526 -0.40452484016049423 0 0.20864494769031885 -0.47006710289224019 -0.85761541764464611 0
		 4.7675519887131355 -2.6983875271677142 0.40050570930127805 1;
	setAttr ".pm[39]" -type "matrix" -0.1388780541691455 -0.97362021444400937 0.18104298963559565 0
		 -0.84422276414869568 0.020829102434949075 -0.53558759599610806 0 0.51768794709103272 -0.22722197630897623 -0.82484505388522267 0
		 5.1314029120475162 -0.54383195128390083 1.106276859770559 1;
	setAttr ".pm[40]" -type "matrix" -0.44544497944150729 0.31790426679360784 -0.83696812809376109 0
		 -0.53604559259280815 0.65406161496897919 0.53372139406810004 0 0.71710103399185043 0.68639659161347066 -0.12093728155217454 0
		 3.5487087479939037 -1.8700671021165944 -2.7925192544727229 1;
	setAttr ".pm[41]" -type "matrix" -0.052113644842615832 -0.12229877356956306 -0.99112419908132576 0
		 -0.1298513400838483 0.98487688501104831 -0.11470026525411003 0 0.99016301561896725 0.12272135655343415 -0.067206183837786523 0
		 1.5808752886267787 -4.2107979269501721 0.02488657865780947 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923410589018 0.15316128048267028 0.8446993714649188 0
		 -0.35222853801336457 0.93486282786315411 0.044345801251914924 0 -0.78288598339814919 -0.32027037833776562 0.53340080779662957 0
		 1.1996854652596876 -4.1723182493855937 0.61489409327925237 1;
	setAttr ".pm[43]" -type "matrix" -0.73333549252294628 0.11850971777536543 0.6694583647986867 0
		 0.055614854265169066 0.99184696103279246 -0.11465859703955252 0 -0.67758840263923636 -0.046851389337113233 -0.73394748035945312 0
		 -1.6184639253570581 -4.1509626321413302 0.61671609555364293 1;
	setAttr ".pm[44]" -type "matrix" 0.71787470010069754 0.19100108051108516 -0.6694583647986867 0
		 -0.15418153999379089 0.98136713764526717 0.11465859703955254 0 0.67888435515960754 0.020907615682650708 0.73394748035945312 0
		 2.9878104596161363 -3.9063461047656265 -0.61671609555364371 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497510865095 0.012292726638408521 -0.5042589866649978 0
		 0.11820591342388151 0.96693328786482735 0.22598092585556875 0 0.49036272165840955 -0.25473300863984571 0.8334599543571658 0
		 -0.31526851927338967 -4.1175003486713404 -0.84111836428203779 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581735119836 0.14817026903880451 -0.50425898666499791 0
		 -0.035601726522438204 0.97348093880572795 0.22598092585556881 0 0.52437016632152489 -0.17429983693304754 0.83345995435716591 0
		 -0.5426611529350891 -4.2561403836399734 -0.84111836428203701 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227675808372 0.54496456709945651 -0.34985229813832852 0
		 0.62286061317250907 0.76461428796600184 -0.16555859143098073 0 0.17727849972552723 -0.3440619293736909 -0.92205950040695339 0
		 -2.7951586638432317 -5.0172514867505065 -0.72188545988463759 1;
	setAttr ".pm[48]" -type "matrix" -0.63784895208083725 0.68611375428328836 -0.34985229813832847 0
		 0.7629672038368267 0.62487710685606335 -0.16555859143098076 0 0.10502266516706038 -0.37252720371871889 -0.92205950040695328 0
		 -4.1298506208874732 -4.2789178953001308 -0.72188545988463737 1;
	setAttr ".pm[49]" -type "matrix" -0.43115002080261616 0.83169286942310305 -0.34985229813832847 0
		 0.90227886845699257 0.39809948045602755 -0.16555859143098073 0 0.0015821181603363223 -0.3870449258308486 -0.92205950040695328 0
		 -5.4553895547094982 -2.9266922506119553 -0.72188545988463804 1;
	setAttr ".pm[50]" -type "matrix" -0.28599064808402525 0.89208335860266452 -0.34985229813832847 0
		 0.95614812432505913 0.24160115304580213 -0.16555859143098073 0 -0.063167345663331723 -0.38185882751499872 -0.92205950040695317 0
		 -6.1336372640080636 -1.9280907294341134 -0.72188545988463826 1;
	setAttr ".pm[51]" -type "matrix" -0.10207340220925795 0.93122735679787572 -0.34985229813832852 0
		 0.98513663511676597 0.04578387220633319 -0.16555859143098076 0 -0.1381550965843944 -0.36155144446819326 -0.92205950040695339 0
		 -6.750844393671346 -0.59181557076226199 -0.72188545988463804 1;
	setAttr ".pm[52]" -type "matrix" 0.23188991289304464 -0.90765105507887078 0.34985229813832852 0
		 0.93832475914076996 0.30354077022173792 0.16555859143098076 0 -0.2564638662304547 0.28988370603986663 0.92205950040695339 0
		 -6.7512693567178932 -1.9036837947667706 0.72188545988463826 1;
	setAttr ".pm[53]" -type "matrix" 0.93511715707163778 -0.056207401982203677 0.34985229813832847 0
		 -0.0026622528471228501 0.98619636240110298 0.16555859143098076 0 -0.35432868210185431 -0.15574807462451479 0.92205950040695339 0
		 -0.34546938704197949 -7.3149787490197635 0.72188545988463826 1;
	setAttr ".pm[54]" -type "matrix" -0.3995512077925496 0.88654287078454452 -0.23323929903130458 0
		 0.91382911845984149 0.40534607056836613 -0.024716499139121474 0 0.07263039726191893 -0.22301637010740805 -0.97210520215545215 0
		 -4.5278240127840492 -3.3954816224779094 -1.022056697587352 1;
	setAttr ".pm[55]" -type "matrix" -0.32480994631015858 0.91656856162830391 -0.23323929903130453 0
		 0.94424078807895984 0.32832671045519651 -0.024716499139121471 0 0.053924325735392298 -0.22826222428665643 -0.97210520215545193 0
		 -5.2848407070967021 -2.9682891700797711 -1.022056697587352 1;
	setAttr ".pm[56]" -type "matrix" -0.20311031532577234 0.95097088766988669 -0.23323929903130458 0
		 0.97886549055744121 0.20300602470381512 -0.024716499139121474 0 0.023844311774627147 -0.23333007679744791 -0.97210520215545215 0
		 -6.0531111548152001 -2.2013311585251061 -1.0220566975873524 1;
	setAttr ".pm[57]" -type "matrix" 0.055141303824235287 -0.9708547090064249 0.23323929903130447 0
		 0.99773223418241641 0.062605778836058751 0.024716499139121471 0 -0.038598257550400639 0.23134746693314248 0.97210520215545215 0
		 -6.8860134976711738 0.39760011084167934 1.0220566975873533 1;
	setAttr ".pm[58]" -type "matrix" 0.28391907621620699 -0.93004805657983181 0.23323929903130441 0
		 0.95438699790408643 0.29754756410014638 0.024716499139121464 0 -0.092387317268987398 0.21558306879286218 0.97210520215545204 0
		 -7.2628020056901921 -1.3645944184337013 1.0220566975873542 1;
	setAttr ".pm[59]" -type "matrix" 0.55092251726407293 -0.80130132244917951 0.23323929903130447 0
		 0.82040361842651 0.57125038078148793 0.024716499139121457 0 -0.15304340183133217 0.17773348896086494 0.97210520215545226 0
		 -6.9115203842823005 -3.614765238507994 1.0220566975873553 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801089765346 -0.52562567444166342 0.2332392990313045 0
		 0.53537164030992179 0.84425487941863231 0.024716499139121471 0 -0.20990504280919794 0.10464869299507418 0.97210520215545226 0
		 -5.4326010597893744 -6.2006164513207258 1.022056697587356 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862487083475 0.0012030759333471891 0.2332392990313045 0
		 -0.0071651614412281605 0.9996688227267202 0.024716499139121488 0 -0.23313231965095885 -0.025705981336483979 0.97210520215545226 0
		 -1.6152690614627854 -8.4165599672621738 1.0220566975873582 1;
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
	rename -uid "543DD120-D941-CB7A-FF00-969F5B14A597";
	setAttr -s 17 ".wl";
	setAttr ".wl[0:16].w"
		5 40 0.089630733984089495 41 0.23146397018400361 42 0.29904523639846176 
		43 0.23439897231548057 45 0.14546108711796457
		5 40 0.091884283149917256 41 0.2330914449878059 42 0.28654513096899165 
		43 0.17737911073204629 45 0.21110003016123899
		5 40 0.076217737749115541 41 0.20890360057785456 42 0.32536730740275721 
		43 0.11804049534162728 45 0.27147085892864531
		5 40 0.075085960928072945 41 0.22178259819945392 42 0.33851320516529437 
		43 0.26163973183976352 45 0.10297850386741533
		5 40 0.058084778013864927 41 0.18755898177008382 42 0.3679785415834762 
		43 0.081993513579037072 45 0.30438418505353804
		5 40 0.065058621629645361 41 0.24466352579645451 42 0.36094766614050616 
		43 0.22516154629019075 45 0.10416864014320322
		5 40 0.060116115883253232 41 0.26686986298666165 42 0.36502049155234645 
		43 0.1379579031040947 45 0.17003562647364404
		5 40 0.051706266952601006 41 0.20706301886793307 42 0.39510241703127319 
		43 0.0814381315760008 45 0.26469016557219199
		5 40 0.07557103682255345 41 0.19641114592964903 42 0.25965021151575746 
		43 0.23475003783739909 45 0.23361756789464097
		5 40 0.075297309649969002 41 0.19562943397770161 42 0.2620014574795661 
		43 0.22954325895936034 45 0.23752853993340295
		5 40 0.074785716381958203 41 0.19596597898600052 42 0.26183119337417238 
		43 0.23126554696545959 45 0.23615156429240938
		5 40 0.075372539913315648 41 0.19681245042692688 42 0.258809159565145 
		43 0.2373810350093753 45 0.23162481508523722
		5 40 0.074698799789586046 41 0.19487561342279225 42 0.26452399055668269 
		43 0.22477307009704542 45 0.24112852613389354
		5 40 0.074142565697934301 41 0.19463965924030821 42 0.26575474519696091 
		43 0.22312749161172946 45 0.2423355382530672
		5 40 0.074260482438560718 41 0.19596665923482759 42 0.26253139176104984 
		43 0.23086032227813985 45 0.23638114428742196
		5 40 0.074835101319186415 41 0.19664921769300614 42 0.25998709750740745 
		43 0.23578491849140853 45 0.2327436649889916
		5 40 0.073967922356109286 41 0.19511215008783586 42 0.26493563245638152 
		43 0.22560370150095702 45 0.24038059359871627;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 0 0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 0 0.210011846539538 0.045642596473303459 -0.97663287764657492 0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924786964475911 0.69647275897298977 0.63759041424957175 0
		 0.89339606886512057 0.44836933267261597 -0.028432475359386224 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461459 0
		 -3.5395339554045822 -2.4005302806614881 -1.4268590620613972 1;
	setAttr ".pm[32]" -type "matrix" -0.2788948936776629 0.70693339326522631 0.64997139611450505 0
		 0.88853219656263749 0.44672740812313055 -0.10461911155789998 0 -0.36431878067442508 0.54834277629791317 -0.75272307373282876 0
		 -4.0483565879838137 -2.4178888731886135 -1.0785180430682901 1;
	setAttr ".pm[33]" -type "matrix" -0.23031898058193839 0.65282056230089813 0.72164983241239433 0
		 0.83303853881336332 0.51558677386086182 -0.20054194441922935 0 -0.50299101387141465 0.55497350572517279 -0.66257410748362233 0
		 -4.4246285444210187 -2.6889499752129318 -0.58522172147807516 1;
	setAttr ".pm[34]" -type "matrix" -0.43594206856657192 0.59749643679491415 0.67301747441747783 0
		 0.70084734557336581 0.69452627827057267 -0.16262302110831164 0 -0.56459499737127161 0.40078829425147727 -0.72152701414037579 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020182 1;
	setAttr ".pm[35]" -type "matrix" -0.80828667061645454 0.25069033817993197 0.53275417637687206 0
		 0.218196818333519 0.96794042383007695 -0.12442461325951786 0 -0.54686635165540876 0.015674509845052226 -0.83707317671050785 0
		 -1.2782209820434483 -5.4701710369415633 -1.0637098843123738 1;
	setAttr ".pm[36]" -type "matrix" -0.8200474629899539 -0.20903383935798983 0.53275417637687206 0
		 -0.32022389937182455 0.93913533097542623 -0.12442461325951783 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050785 0
		 1.4741587314170379 -5.4790257814298373 -1.063709884312374 1;
	setAttr ".pm[37]" -type "matrix" -0.68115616977266802 -0.58224856304555372 0.44386133331482819 0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048565 0 -0.16426653899654683 -0.4692574321309736 -0.8676485270868276 0
		 3.7155105341486689 -4.2535038943938579 -0.56138920422851657 1;
	setAttr ".pm[38]" -type "matrix" -0.50408143703462227 -0.8031478417612693 0.31757746946426507 0
		 -0.83807469275740265 0.36604707764536526 -0.40452484016049423 0 0.20864494769031885 -0.47006710289224019 -0.85761541764464611 0
		 4.7675519887131355 -2.6983875271677142 0.40050570930127805 1;
	setAttr ".pm[39]" -type "matrix" -0.1388780541691455 -0.97362021444400937 0.18104298963559565 0
		 -0.84422276414869568 0.020829102434949075 -0.53558759599610806 0 0.51768794709103272 -0.22722197630897623 -0.82484505388522267 0
		 5.1314029120475162 -0.54383195128390083 1.106276859770559 1;
	setAttr ".pm[40]" -type "matrix" -0.44544497944150729 0.31790426679360784 -0.83696812809376109 0
		 -0.53604559259280815 0.65406161496897919 0.53372139406810004 0 0.71710103399185043 0.68639659161347066 -0.12093728155217454 0
		 3.5487087479939037 -1.8700671021165944 -2.7925192544727229 1;
	setAttr ".pm[41]" -type "matrix" -0.052113644842615832 -0.12229877356956306 -0.99112419908132576 0
		 -0.1298513400838483 0.98487688501104831 -0.11470026525411003 0 0.99016301561896725 0.12272135655343415 -0.067206183837786523 0
		 1.5808752886267787 -4.2107979269501721 0.02488657865780947 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923410589018 0.15316128048267028 0.8446993714649188 0
		 -0.35222853801336457 0.93486282786315411 0.044345801251914924 0 -0.78288598339814919 -0.32027037833776562 0.53340080779662957 0
		 1.1996854652596876 -4.1723182493855937 0.61489409327925237 1;
	setAttr ".pm[43]" -type "matrix" -0.73333549252294628 0.11850971777536543 0.6694583647986867 0
		 0.055614854265169066 0.99184696103279246 -0.11465859703955252 0 -0.67758840263923636 -0.046851389337113233 -0.73394748035945312 0
		 -1.6184639253570581 -4.1509626321413302 0.61671609555364293 1;
	setAttr ".pm[44]" -type "matrix" 0.71787470010069754 0.19100108051108516 -0.6694583647986867 0
		 -0.15418153999379089 0.98136713764526717 0.11465859703955254 0 0.67888435515960754 0.020907615682650708 0.73394748035945312 0
		 2.9878104596161363 -3.9063461047656265 -0.61671609555364371 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497510865095 0.012292726638408521 -0.5042589866649978 0
		 0.11820591342388151 0.96693328786482735 0.22598092585556875 0 0.49036272165840955 -0.25473300863984571 0.8334599543571658 0
		 -0.31526851927338967 -4.1175003486713404 -0.84111836428203779 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581735119836 0.14817026903880451 -0.50425898666499791 0
		 -0.035601726522438204 0.97348093880572795 0.22598092585556881 0 0.52437016632152489 -0.17429983693304754 0.83345995435716591 0
		 -0.5426611529350891 -4.2561403836399734 -0.84111836428203701 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227675808372 0.54496456709945651 -0.34985229813832852 0
		 0.62286061317250907 0.76461428796600184 -0.16555859143098073 0 0.17727849972552723 -0.3440619293736909 -0.92205950040695339 0
		 -2.7951586638432317 -5.0172514867505065 -0.72188545988463759 1;
	setAttr ".pm[48]" -type "matrix" -0.63784895208083725 0.68611375428328836 -0.34985229813832847 0
		 0.7629672038368267 0.62487710685606335 -0.16555859143098076 0 0.10502266516706038 -0.37252720371871889 -0.92205950040695328 0
		 -4.1298506208874732 -4.2789178953001308 -0.72188545988463737 1;
	setAttr ".pm[49]" -type "matrix" -0.43115002080261616 0.83169286942310305 -0.34985229813832847 0
		 0.90227886845699257 0.39809948045602755 -0.16555859143098073 0 0.0015821181603363223 -0.3870449258308486 -0.92205950040695328 0
		 -5.4553895547094982 -2.9266922506119553 -0.72188545988463804 1;
	setAttr ".pm[50]" -type "matrix" -0.28599064808402525 0.89208335860266452 -0.34985229813832847 0
		 0.95614812432505913 0.24160115304580213 -0.16555859143098073 0 -0.063167345663331723 -0.38185882751499872 -0.92205950040695317 0
		 -6.1336372640080636 -1.9280907294341134 -0.72188545988463826 1;
	setAttr ".pm[51]" -type "matrix" -0.10207340220925795 0.93122735679787572 -0.34985229813832852 0
		 0.98513663511676597 0.04578387220633319 -0.16555859143098076 0 -0.1381550965843944 -0.36155144446819326 -0.92205950040695339 0
		 -6.750844393671346 -0.59181557076226199 -0.72188545988463804 1;
	setAttr ".pm[52]" -type "matrix" 0.23188991289304464 -0.90765105507887078 0.34985229813832852 0
		 0.93832475914076996 0.30354077022173792 0.16555859143098076 0 -0.2564638662304547 0.28988370603986663 0.92205950040695339 0
		 -6.7512693567178932 -1.9036837947667706 0.72188545988463826 1;
	setAttr ".pm[53]" -type "matrix" 0.93511715707163778 -0.056207401982203677 0.34985229813832847 0
		 -0.0026622528471228501 0.98619636240110298 0.16555859143098076 0 -0.35432868210185431 -0.15574807462451479 0.92205950040695339 0
		 -0.34546938704197949 -7.3149787490197635 0.72188545988463826 1;
	setAttr ".pm[54]" -type "matrix" -0.3995512077925496 0.88654287078454452 -0.23323929903130458 0
		 0.91382911845984149 0.40534607056836613 -0.024716499139121474 0 0.07263039726191893 -0.22301637010740805 -0.97210520215545215 0
		 -4.5278240127840492 -3.3954816224779094 -1.022056697587352 1;
	setAttr ".pm[55]" -type "matrix" -0.32480994631015858 0.91656856162830391 -0.23323929903130453 0
		 0.94424078807895984 0.32832671045519651 -0.024716499139121471 0 0.053924325735392298 -0.22826222428665643 -0.97210520215545193 0
		 -5.2848407070967021 -2.9682891700797711 -1.022056697587352 1;
	setAttr ".pm[56]" -type "matrix" -0.20311031532577234 0.95097088766988669 -0.23323929903130458 0
		 0.97886549055744121 0.20300602470381512 -0.024716499139121474 0 0.023844311774627147 -0.23333007679744791 -0.97210520215545215 0
		 -6.0531111548152001 -2.2013311585251061 -1.0220566975873524 1;
	setAttr ".pm[57]" -type "matrix" 0.055141303824235287 -0.9708547090064249 0.23323929903130447 0
		 0.99773223418241641 0.062605778836058751 0.024716499139121471 0 -0.038598257550400639 0.23134746693314248 0.97210520215545215 0
		 -6.8860134976711738 0.39760011084167934 1.0220566975873533 1;
	setAttr ".pm[58]" -type "matrix" 0.28391907621620699 -0.93004805657983181 0.23323929903130441 0
		 0.95438699790408643 0.29754756410014638 0.024716499139121464 0 -0.092387317268987398 0.21558306879286218 0.97210520215545204 0
		 -7.2628020056901921 -1.3645944184337013 1.0220566975873542 1;
	setAttr ".pm[59]" -type "matrix" 0.55092251726407293 -0.80130132244917951 0.23323929903130447 0
		 0.82040361842651 0.57125038078148793 0.024716499139121457 0 -0.15304340183133217 0.17773348896086494 0.97210520215545226 0
		 -6.9115203842823005 -3.614765238507994 1.0220566975873553 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801089765346 -0.52562567444166342 0.2332392990313045 0
		 0.53537164030992179 0.84425487941863231 0.024716499139121471 0 -0.20990504280919794 0.10464869299507418 0.97210520215545226 0
		 -5.4326010597893744 -6.2006164513207258 1.022056697587356 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862487083475 0.0012030759333471891 0.2332392990313045 0
		 -0.0071651614412281605 0.9996688227267202 0.024716499139121488 0 -0.23313231965095885 -0.025705981336483979 0.97210520215545226 0
		 -1.6152690614627854 -8.4165599672621738 1.0220566975873582 1;
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
	rename -uid "1163D12B-214B-55C9-4212-B5AC23B1A9A1";
	setAttr -s 17 ".wl";
	setAttr ".wl[0:16].w"
		5 40 0.12491422810515991 41 0.2214119453025799 42 0.24788266068831297 
		43 0.21696161605683481 45 0.18882954984711245
		5 40 0.12418938524803955 41 0.21877277704186832 42 0.25004663323628423 
		43 0.18852467390380728 45 0.21846653057000076
		5 40 0.11496687366362193 41 0.21124757731942057 42 0.26720535256413996 
		43 0.15946395978025216 45 0.24711623667256541
		5 40 0.11729506941744169 41 0.22065991421621131 42 0.26112890674330674 
		43 0.23110879239571938 45 0.16980731722732087
		5 40 0.1038471171808537 41 0.20636167405122127 42 0.28330503233979776 
		43 0.14218018085851369 45 0.26430599556961371
		5 40 0.109454128764793 41 0.22659373494645185 42 0.26441757651007047 
		43 0.22112262292957413 45 0.17841193684911064
		5 40 0.10262601205095806 41 0.22694624279345496 42 0.27181068307124934 
		43 0.18260368011513914 45 0.21601338196919845
		5 40 0.098606850351977193 41 0.2128334991067771 42 0.28654447198510641 
		43 0.14776482016891151 45 0.2542503583872277
		5 40 0.10414025357238613 41 0.20113338112036108 42 0.24420378348440772 
		43 0.21971552663800403 45 0.2308070551848411
		5 40 0.1040208595369289 41 0.20069254184687602 42 0.24542335604071316 
		43 0.21694557637049539 45 0.2329176662049865
		5 40 0.10330400312192209 41 0.20070521026602436 42 0.24572611920987852 
		43 0.21741358713673284 45 0.23285108026544216
		5 40 0.10375144654378998 41 0.20127684896886885 42 0.24399090020826372 
		43 0.22089988447139869 45 0.23008091980767875
		5 40 0.10345624895023173 41 0.2001875581164981 42 0.24696150024666902 
		43 0.21419037010119354 45 0.23520432258540769
		5 40 0.10277976252105663 41 0.19992279874081995 42 0.24792780040028567 
		43 0.21301055470743591 45 0.23635908363040198
		5 40 0.10252416828587492 41 0.20055640815547335 42 0.2464734985243166 
		43 0.21691819631605988 45 0.23352772871827523
		5 40 0.10308490750461809 41 0.20104853576058729 42 0.24492010000820028 
		43 0.2197507086205007 45 0.23119574810609367
		5 40 0.10239485930751109 41 0.20007915271779025 42 0.24773001035468079 
		43 0.21411793056099049 45 0.23567804705902742;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 0 0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 0 0.210011846539538 0.045642596473303459 -0.97663287764657492 0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924786964475911 0.69647275897298977 0.63759041424957175 0
		 0.89339606886512057 0.44836933267261597 -0.028432475359386224 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461459 0
		 -3.5395339554045822 -2.4005302806614881 -1.4268590620613972 1;
	setAttr ".pm[32]" -type "matrix" -0.2788948936776629 0.70693339326522631 0.64997139611450505 0
		 0.88853219656263749 0.44672740812313055 -0.10461911155789998 0 -0.36431878067442508 0.54834277629791317 -0.75272307373282876 0
		 -4.0483565879838137 -2.4178888731886135 -1.0785180430682901 1;
	setAttr ".pm[33]" -type "matrix" -0.23031898058193839 0.65282056230089813 0.72164983241239433 0
		 0.83303853881336332 0.51558677386086182 -0.20054194441922935 0 -0.50299101387141465 0.55497350572517279 -0.66257410748362233 0
		 -4.4246285444210187 -2.6889499752129318 -0.58522172147807516 1;
	setAttr ".pm[34]" -type "matrix" -0.43594206856657192 0.59749643679491415 0.67301747441747783 0
		 0.70084734557336581 0.69452627827057267 -0.16262302110831164 0 -0.56459499737127161 0.40078829425147727 -0.72152701414037579 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020182 1;
	setAttr ".pm[35]" -type "matrix" -0.80828667061645454 0.25069033817993197 0.53275417637687206 0
		 0.218196818333519 0.96794042383007695 -0.12442461325951786 0 -0.54686635165540876 0.015674509845052226 -0.83707317671050785 0
		 -1.2782209820434483 -5.4701710369415633 -1.0637098843123738 1;
	setAttr ".pm[36]" -type "matrix" -0.8200474629899539 -0.20903383935798983 0.53275417637687206 0
		 -0.32022389937182455 0.93913533097542623 -0.12442461325951783 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050785 0
		 1.4741587314170379 -5.4790257814298373 -1.063709884312374 1;
	setAttr ".pm[37]" -type "matrix" -0.68115616977266802 -0.58224856304555372 0.44386133331482819 0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048565 0 -0.16426653899654683 -0.4692574321309736 -0.8676485270868276 0
		 3.7155105341486689 -4.2535038943938579 -0.56138920422851657 1;
	setAttr ".pm[38]" -type "matrix" -0.50408143703462227 -0.8031478417612693 0.31757746946426507 0
		 -0.83807469275740265 0.36604707764536526 -0.40452484016049423 0 0.20864494769031885 -0.47006710289224019 -0.85761541764464611 0
		 4.7675519887131355 -2.6983875271677142 0.40050570930127805 1;
	setAttr ".pm[39]" -type "matrix" -0.1388780541691455 -0.97362021444400937 0.18104298963559565 0
		 -0.84422276414869568 0.020829102434949075 -0.53558759599610806 0 0.51768794709103272 -0.22722197630897623 -0.82484505388522267 0
		 5.1314029120475162 -0.54383195128390083 1.106276859770559 1;
	setAttr ".pm[40]" -type "matrix" -0.44544497944150729 0.31790426679360784 -0.83696812809376109 0
		 -0.53604559259280815 0.65406161496897919 0.53372139406810004 0 0.71710103399185043 0.68639659161347066 -0.12093728155217454 0
		 3.5487087479939037 -1.8700671021165944 -2.7925192544727229 1;
	setAttr ".pm[41]" -type "matrix" -0.052113644842615832 -0.12229877356956306 -0.99112419908132576 0
		 -0.1298513400838483 0.98487688501104831 -0.11470026525411003 0 0.99016301561896725 0.12272135655343415 -0.067206183837786523 0
		 1.5808752886267787 -4.2107979269501721 0.02488657865780947 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923410589018 0.15316128048267028 0.8446993714649188 0
		 -0.35222853801336457 0.93486282786315411 0.044345801251914924 0 -0.78288598339814919 -0.32027037833776562 0.53340080779662957 0
		 1.1996854652596876 -4.1723182493855937 0.61489409327925237 1;
	setAttr ".pm[43]" -type "matrix" -0.73333549252294628 0.11850971777536543 0.6694583647986867 0
		 0.055614854265169066 0.99184696103279246 -0.11465859703955252 0 -0.67758840263923636 -0.046851389337113233 -0.73394748035945312 0
		 -1.6184639253570581 -4.1509626321413302 0.61671609555364293 1;
	setAttr ".pm[44]" -type "matrix" 0.71787470010069754 0.19100108051108516 -0.6694583647986867 0
		 -0.15418153999379089 0.98136713764526717 0.11465859703955254 0 0.67888435515960754 0.020907615682650708 0.73394748035945312 0
		 2.9878104596161363 -3.9063461047656265 -0.61671609555364371 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497510865095 0.012292726638408521 -0.5042589866649978 0
		 0.11820591342388151 0.96693328786482735 0.22598092585556875 0 0.49036272165840955 -0.25473300863984571 0.8334599543571658 0
		 -0.31526851927338967 -4.1175003486713404 -0.84111836428203779 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581735119836 0.14817026903880451 -0.50425898666499791 0
		 -0.035601726522438204 0.97348093880572795 0.22598092585556881 0 0.52437016632152489 -0.17429983693304754 0.83345995435716591 0
		 -0.5426611529350891 -4.2561403836399734 -0.84111836428203701 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227675808372 0.54496456709945651 -0.34985229813832852 0
		 0.62286061317250907 0.76461428796600184 -0.16555859143098073 0 0.17727849972552723 -0.3440619293736909 -0.92205950040695339 0
		 -2.7951586638432317 -5.0172514867505065 -0.72188545988463759 1;
	setAttr ".pm[48]" -type "matrix" -0.63784895208083725 0.68611375428328836 -0.34985229813832847 0
		 0.7629672038368267 0.62487710685606335 -0.16555859143098076 0 0.10502266516706038 -0.37252720371871889 -0.92205950040695328 0
		 -4.1298506208874732 -4.2789178953001308 -0.72188545988463737 1;
	setAttr ".pm[49]" -type "matrix" -0.43115002080261616 0.83169286942310305 -0.34985229813832847 0
		 0.90227886845699257 0.39809948045602755 -0.16555859143098073 0 0.0015821181603363223 -0.3870449258308486 -0.92205950040695328 0
		 -5.4553895547094982 -2.9266922506119553 -0.72188545988463804 1;
	setAttr ".pm[50]" -type "matrix" -0.28599064808402525 0.89208335860266452 -0.34985229813832847 0
		 0.95614812432505913 0.24160115304580213 -0.16555859143098073 0 -0.063167345663331723 -0.38185882751499872 -0.92205950040695317 0
		 -6.1336372640080636 -1.9280907294341134 -0.72188545988463826 1;
	setAttr ".pm[51]" -type "matrix" -0.10207340220925795 0.93122735679787572 -0.34985229813832852 0
		 0.98513663511676597 0.04578387220633319 -0.16555859143098076 0 -0.1381550965843944 -0.36155144446819326 -0.92205950040695339 0
		 -6.750844393671346 -0.59181557076226199 -0.72188545988463804 1;
	setAttr ".pm[52]" -type "matrix" 0.23188991289304464 -0.90765105507887078 0.34985229813832852 0
		 0.93832475914076996 0.30354077022173792 0.16555859143098076 0 -0.2564638662304547 0.28988370603986663 0.92205950040695339 0
		 -6.7512693567178932 -1.9036837947667706 0.72188545988463826 1;
	setAttr ".pm[53]" -type "matrix" 0.93511715707163778 -0.056207401982203677 0.34985229813832847 0
		 -0.0026622528471228501 0.98619636240110298 0.16555859143098076 0 -0.35432868210185431 -0.15574807462451479 0.92205950040695339 0
		 -0.34546938704197949 -7.3149787490197635 0.72188545988463826 1;
	setAttr ".pm[54]" -type "matrix" -0.3995512077925496 0.88654287078454452 -0.23323929903130458 0
		 0.91382911845984149 0.40534607056836613 -0.024716499139121474 0 0.07263039726191893 -0.22301637010740805 -0.97210520215545215 0
		 -4.5278240127840492 -3.3954816224779094 -1.022056697587352 1;
	setAttr ".pm[55]" -type "matrix" -0.32480994631015858 0.91656856162830391 -0.23323929903130453 0
		 0.94424078807895984 0.32832671045519651 -0.024716499139121471 0 0.053924325735392298 -0.22826222428665643 -0.97210520215545193 0
		 -5.2848407070967021 -2.9682891700797711 -1.022056697587352 1;
	setAttr ".pm[56]" -type "matrix" -0.20311031532577234 0.95097088766988669 -0.23323929903130458 0
		 0.97886549055744121 0.20300602470381512 -0.024716499139121474 0 0.023844311774627147 -0.23333007679744791 -0.97210520215545215 0
		 -6.0531111548152001 -2.2013311585251061 -1.0220566975873524 1;
	setAttr ".pm[57]" -type "matrix" 0.055141303824235287 -0.9708547090064249 0.23323929903130447 0
		 0.99773223418241641 0.062605778836058751 0.024716499139121471 0 -0.038598257550400639 0.23134746693314248 0.97210520215545215 0
		 -6.8860134976711738 0.39760011084167934 1.0220566975873533 1;
	setAttr ".pm[58]" -type "matrix" 0.28391907621620699 -0.93004805657983181 0.23323929903130441 0
		 0.95438699790408643 0.29754756410014638 0.024716499139121464 0 -0.092387317268987398 0.21558306879286218 0.97210520215545204 0
		 -7.2628020056901921 -1.3645944184337013 1.0220566975873542 1;
	setAttr ".pm[59]" -type "matrix" 0.55092251726407293 -0.80130132244917951 0.23323929903130447 0
		 0.82040361842651 0.57125038078148793 0.024716499139121457 0 -0.15304340183133217 0.17773348896086494 0.97210520215545226 0
		 -6.9115203842823005 -3.614765238507994 1.0220566975873553 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801089765346 -0.52562567444166342 0.2332392990313045 0
		 0.53537164030992179 0.84425487941863231 0.024716499139121471 0 -0.20990504280919794 0.10464869299507418 0.97210520215545226 0
		 -5.4326010597893744 -6.2006164513207258 1.022056697587356 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862487083475 0.0012030759333471891 0.2332392990313045 0
		 -0.0071651614412281605 0.9996688227267202 0.024716499139121488 0 -0.23313231965095885 -0.025705981336483979 0.97210520215545226 0
		 -1.6152690614627854 -8.4165599672621738 1.0220566975873582 1;
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
	rename -uid "93F5B579-374F-541F-E891-DFAF2714D821";
	setAttr -s 72 ".wl";
	setAttr ".wl[0:71].w"
		5 6 0.41091300925219099 7 0.060316586679315123 19 0.47842329275220052 
		20 0.033864556762598828 32 0.016482554553694719
		5 5 0.046027331141616112 6 0.67797793123761974 19 0.15154495357564479 
		31 0.080487506605948306 32 0.043962277439171041
		5 5 0.11035693483058352 6 0.27558747236103359 19 0.084025854016133758 
		31 0.44471076812533611 32 0.08531897066691306
		5 5 0.15313528043066146 6 0.26891800897801488 19 0.085102453701197886 
		31 0.43171855170027029 32 0.061125705189855488
		5 5 0.039534100666046075 6 0.59982518508499838 19 0.27439332141907935 
		31 0.055346372037686671 32 0.03090102079218952
		5 6 0.34879402712008273 7 0.064900020002291142 8 0.019400181386274931 
		19 0.49812047065911058 20 0.068785300832240562
		5 6 0.1628372577136894 7 0.086010840334682176 8 0.043108790092365103 
		19 0.5319172342212326 20 0.1761258776380307
		5 6 0.17410835476820599 7 0.12122553601814659 8 0.055253673241118538 
		19 0.49051486405808031 20 0.15889757191444853
		5 6 0.037426797297924988 19 0.7367696177752443 20 0.21199458093805693 
		32 0.0075486561833606495 33 0.0062603478054131792
		5 6 0.02839085139672682 19 0.68016389561793467 20 0.2526757188067737 
		32 0.020709667163794743 33 0.018059867014770123
		5 6 0.02753132867032956 19 0.6363730848066953 20 0.24448635640488867 
		32 0.05041691710575226 33 0.041192313012334211
		5 6 0.029850978814689833 19 0.648371731271841 20 0.26779407513881065 
		32 0.030349899734538749 33 0.023633315040119868
		5 6 0.031762170932974947 19 0.65885474481059625 20 0.29024377527414669 
		32 0.010795306072053814 33 0.0083440029102282414
		5 6 0.029325445874094712 7 0.0048877708821554724 19 0.63759218061665734 
		20 0.32352180329586805 32 0.0046727993312243908
		5 6 0.022897072227431682 7 0.0071587100387921869 8 0.0054899685330101851 
		19 0.59933934125398869 20 0.3651149079467772
		5 6 0.030825385376244643 7 0.0080117470556024042 8 0.0055262889065255793 
		19 0.67956434063653803 20 0.27607223802508923
		5 19 0.0032677118958050633 20 0.46912270939261835 21 0.51070645945336068 
		22 0.015917953125657365 23 0.0009851661325584642
		5 19 0.0046525462683696906 20 0.48593050602842203 21 0.49012130271506782 
		22 0.017329432802306723 34 0.0019662121858337951
		5 19 0.0057540211257997203 20 0.48679147003305206 21 0.48679147003305206 
		22 0.017496399033042953 34 0.0031666397750532674
		5 19 0.0058035360177976269 20 0.48754352544800866 21 0.48754352544800866 
		22 0.016828006184081538 34 0.00228140690210355
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
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 0 0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 0 0.210011846539538 0.045642596473303459 -0.97663287764657492 0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924786964475911 0.69647275897298977 0.63759041424957175 0
		 0.89339606886512057 0.44836933267261597 -0.028432475359386224 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461459 0
		 -3.5395339554045822 -2.4005302806614881 -1.4268590620613972 1;
	setAttr ".pm[32]" -type "matrix" -0.2788948936776629 0.70693339326522631 0.64997139611450505 0
		 0.88853219656263749 0.44672740812313055 -0.10461911155789998 0 -0.36431878067442508 0.54834277629791317 -0.75272307373282876 0
		 -4.0483565879838137 -2.4178888731886135 -1.0785180430682901 1;
	setAttr ".pm[33]" -type "matrix" -0.23031898058193839 0.65282056230089813 0.72164983241239433 0
		 0.83303853881336332 0.51558677386086182 -0.20054194441922935 0 -0.50299101387141465 0.55497350572517279 -0.66257410748362233 0
		 -4.4246285444210187 -2.6889499752129318 -0.58522172147807516 1;
	setAttr ".pm[34]" -type "matrix" -0.43594206856657192 0.59749643679491415 0.67301747441747783 0
		 0.70084734557336581 0.69452627827057267 -0.16262302110831164 0 -0.56459499737127161 0.40078829425147727 -0.72152701414037579 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020182 1;
	setAttr ".pm[35]" -type "matrix" -0.80828667061645454 0.25069033817993197 0.53275417637687206 0
		 0.218196818333519 0.96794042383007695 -0.12442461325951786 0 -0.54686635165540876 0.015674509845052226 -0.83707317671050785 0
		 -1.2782209820434483 -5.4701710369415633 -1.0637098843123738 1;
	setAttr ".pm[36]" -type "matrix" -0.8200474629899539 -0.20903383935798983 0.53275417637687206 0
		 -0.32022389937182455 0.93913533097542623 -0.12442461325951783 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050785 0
		 1.4741587314170379 -5.4790257814298373 -1.063709884312374 1;
	setAttr ".pm[37]" -type "matrix" -0.68115616977266802 -0.58224856304555372 0.44386133331482819 0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048565 0 -0.16426653899654683 -0.4692574321309736 -0.8676485270868276 0
		 3.7155105341486689 -4.2535038943938579 -0.56138920422851657 1;
	setAttr ".pm[38]" -type "matrix" -0.50408143703462227 -0.8031478417612693 0.31757746946426507 0
		 -0.83807469275740265 0.36604707764536526 -0.40452484016049423 0 0.20864494769031885 -0.47006710289224019 -0.85761541764464611 0
		 4.7675519887131355 -2.6983875271677142 0.40050570930127805 1;
	setAttr ".pm[39]" -type "matrix" -0.1388780541691455 -0.97362021444400937 0.18104298963559565 0
		 -0.84422276414869568 0.020829102434949075 -0.53558759599610806 0 0.51768794709103272 -0.22722197630897623 -0.82484505388522267 0
		 5.1314029120475162 -0.54383195128390083 1.106276859770559 1;
	setAttr ".pm[40]" -type "matrix" -0.44544497944150729 0.31790426679360784 -0.83696812809376109 0
		 -0.53604559259280815 0.65406161496897919 0.53372139406810004 0 0.71710103399185043 0.68639659161347066 -0.12093728155217454 0
		 3.5487087479939037 -1.8700671021165944 -2.7925192544727229 1;
	setAttr ".pm[41]" -type "matrix" -0.052113644842615832 -0.12229877356956306 -0.99112419908132576 0
		 -0.1298513400838483 0.98487688501104831 -0.11470026525411003 0 0.99016301561896725 0.12272135655343415 -0.067206183837786523 0
		 1.5808752886267787 -4.2107979269501721 0.02488657865780947 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923410589018 0.15316128048267028 0.8446993714649188 0
		 -0.35222853801336457 0.93486282786315411 0.044345801251914924 0 -0.78288598339814919 -0.32027037833776562 0.53340080779662957 0
		 1.1996854652596876 -4.1723182493855937 0.61489409327925237 1;
	setAttr ".pm[43]" -type "matrix" -0.73333549252294628 0.11850971777536543 0.6694583647986867 0
		 0.055614854265169066 0.99184696103279246 -0.11465859703955252 0 -0.67758840263923636 -0.046851389337113233 -0.73394748035945312 0
		 -1.6184639253570581 -4.1509626321413302 0.61671609555364293 1;
	setAttr ".pm[44]" -type "matrix" 0.71787470010069754 0.19100108051108516 -0.6694583647986867 0
		 -0.15418153999379089 0.98136713764526717 0.11465859703955254 0 0.67888435515960754 0.020907615682650708 0.73394748035945312 0
		 2.9878104596161363 -3.9063461047656265 -0.61671609555364371 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497510865095 0.012292726638408521 -0.5042589866649978 0
		 0.11820591342388151 0.96693328786482735 0.22598092585556875 0 0.49036272165840955 -0.25473300863984571 0.8334599543571658 0
		 -0.31526851927338967 -4.1175003486713404 -0.84111836428203779 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581735119836 0.14817026903880451 -0.50425898666499791 0
		 -0.035601726522438204 0.97348093880572795 0.22598092585556881 0 0.52437016632152489 -0.17429983693304754 0.83345995435716591 0
		 -0.5426611529350891 -4.2561403836399734 -0.84111836428203701 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227675808372 0.54496456709945651 -0.34985229813832852 0
		 0.62286061317250907 0.76461428796600184 -0.16555859143098073 0 0.17727849972552723 -0.3440619293736909 -0.92205950040695339 0
		 -2.7951586638432317 -5.0172514867505065 -0.72188545988463759 1;
	setAttr ".pm[48]" -type "matrix" -0.63784895208083725 0.68611375428328836 -0.34985229813832847 0
		 0.7629672038368267 0.62487710685606335 -0.16555859143098076 0 0.10502266516706038 -0.37252720371871889 -0.92205950040695328 0
		 -4.1298506208874732 -4.2789178953001308 -0.72188545988463737 1;
	setAttr ".pm[49]" -type "matrix" -0.43115002080261616 0.83169286942310305 -0.34985229813832847 0
		 0.90227886845699257 0.39809948045602755 -0.16555859143098073 0 0.0015821181603363223 -0.3870449258308486 -0.92205950040695328 0
		 -5.4553895547094982 -2.9266922506119553 -0.72188545988463804 1;
	setAttr ".pm[50]" -type "matrix" -0.28599064808402525 0.89208335860266452 -0.34985229813832847 0
		 0.95614812432505913 0.24160115304580213 -0.16555859143098073 0 -0.063167345663331723 -0.38185882751499872 -0.92205950040695317 0
		 -6.1336372640080636 -1.9280907294341134 -0.72188545988463826 1;
	setAttr ".pm[51]" -type "matrix" -0.10207340220925795 0.93122735679787572 -0.34985229813832852 0
		 0.98513663511676597 0.04578387220633319 -0.16555859143098076 0 -0.1381550965843944 -0.36155144446819326 -0.92205950040695339 0
		 -6.750844393671346 -0.59181557076226199 -0.72188545988463804 1;
	setAttr ".pm[52]" -type "matrix" 0.23188991289304464 -0.90765105507887078 0.34985229813832852 0
		 0.93832475914076996 0.30354077022173792 0.16555859143098076 0 -0.2564638662304547 0.28988370603986663 0.92205950040695339 0
		 -6.7512693567178932 -1.9036837947667706 0.72188545988463826 1;
	setAttr ".pm[53]" -type "matrix" 0.93511715707163778 -0.056207401982203677 0.34985229813832847 0
		 -0.0026622528471228501 0.98619636240110298 0.16555859143098076 0 -0.35432868210185431 -0.15574807462451479 0.92205950040695339 0
		 -0.34546938704197949 -7.3149787490197635 0.72188545988463826 1;
	setAttr ".pm[54]" -type "matrix" -0.3995512077925496 0.88654287078454452 -0.23323929903130458 0
		 0.91382911845984149 0.40534607056836613 -0.024716499139121474 0 0.07263039726191893 -0.22301637010740805 -0.97210520215545215 0
		 -4.5278240127840492 -3.3954816224779094 -1.022056697587352 1;
	setAttr ".pm[55]" -type "matrix" -0.32480994631015858 0.91656856162830391 -0.23323929903130453 0
		 0.94424078807895984 0.32832671045519651 -0.024716499139121471 0 0.053924325735392298 -0.22826222428665643 -0.97210520215545193 0
		 -5.2848407070967021 -2.9682891700797711 -1.022056697587352 1;
	setAttr ".pm[56]" -type "matrix" -0.20311031532577234 0.95097088766988669 -0.23323929903130458 0
		 0.97886549055744121 0.20300602470381512 -0.024716499139121474 0 0.023844311774627147 -0.23333007679744791 -0.97210520215545215 0
		 -6.0531111548152001 -2.2013311585251061 -1.0220566975873524 1;
	setAttr ".pm[57]" -type "matrix" 0.055141303824235287 -0.9708547090064249 0.23323929903130447 0
		 0.99773223418241641 0.062605778836058751 0.024716499139121471 0 -0.038598257550400639 0.23134746693314248 0.97210520215545215 0
		 -6.8860134976711738 0.39760011084167934 1.0220566975873533 1;
	setAttr ".pm[58]" -type "matrix" 0.28391907621620699 -0.93004805657983181 0.23323929903130441 0
		 0.95438699790408643 0.29754756410014638 0.024716499139121464 0 -0.092387317268987398 0.21558306879286218 0.97210520215545204 0
		 -7.2628020056901921 -1.3645944184337013 1.0220566975873542 1;
	setAttr ".pm[59]" -type "matrix" 0.55092251726407293 -0.80130132244917951 0.23323929903130447 0
		 0.82040361842651 0.57125038078148793 0.024716499139121457 0 -0.15304340183133217 0.17773348896086494 0.97210520215545226 0
		 -6.9115203842823005 -3.614765238507994 1.0220566975873553 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801089765346 -0.52562567444166342 0.2332392990313045 0
		 0.53537164030992179 0.84425487941863231 0.024716499139121471 0 -0.20990504280919794 0.10464869299507418 0.97210520215545226 0
		 -5.4326010597893744 -6.2006164513207258 1.022056697587356 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862487083475 0.0012030759333471891 0.2332392990313045 0
		 -0.0071651614412281605 0.9996688227267202 0.024716499139121488 0 -0.23313231965095885 -0.025705981336483979 0.97210520215545226 0
		 -1.6152690614627854 -8.4165599672621738 1.0220566975873582 1;
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
	rename -uid "0540D1E9-0A4F-854A-9F47-BDB74924629A";
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
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 0 0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 0 0.210011846539538 0.045642596473303459 -0.97663287764657492 0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924786964475911 0.69647275897298977 0.63759041424957175 0
		 0.89339606886512057 0.44836933267261597 -0.028432475359386224 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461459 0
		 -3.5395339554045822 -2.4005302806614881 -1.4268590620613972 1;
	setAttr ".pm[32]" -type "matrix" -0.2788948936776629 0.70693339326522631 0.64997139611450505 0
		 0.88853219656263749 0.44672740812313055 -0.10461911155789998 0 -0.36431878067442508 0.54834277629791317 -0.75272307373282876 0
		 -4.0483565879838137 -2.4178888731886135 -1.0785180430682901 1;
	setAttr ".pm[33]" -type "matrix" -0.23031898058193839 0.65282056230089813 0.72164983241239433 0
		 0.83303853881336332 0.51558677386086182 -0.20054194441922935 0 -0.50299101387141465 0.55497350572517279 -0.66257410748362233 0
		 -4.4246285444210187 -2.6889499752129318 -0.58522172147807516 1;
	setAttr ".pm[34]" -type "matrix" -0.43594206856657192 0.59749643679491415 0.67301747441747783 0
		 0.70084734557336581 0.69452627827057267 -0.16262302110831164 0 -0.56459499737127161 0.40078829425147727 -0.72152701414037579 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020182 1;
	setAttr ".pm[35]" -type "matrix" -0.80828667061645454 0.25069033817993197 0.53275417637687206 0
		 0.218196818333519 0.96794042383007695 -0.12442461325951786 0 -0.54686635165540876 0.015674509845052226 -0.83707317671050785 0
		 -1.2782209820434483 -5.4701710369415633 -1.0637098843123738 1;
	setAttr ".pm[36]" -type "matrix" -0.8200474629899539 -0.20903383935798983 0.53275417637687206 0
		 -0.32022389937182455 0.93913533097542623 -0.12442461325951783 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050785 0
		 1.4741587314170379 -5.4790257814298373 -1.063709884312374 1;
	setAttr ".pm[37]" -type "matrix" -0.68115616977266802 -0.58224856304555372 0.44386133331482819 0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048565 0 -0.16426653899654683 -0.4692574321309736 -0.8676485270868276 0
		 3.7155105341486689 -4.2535038943938579 -0.56138920422851657 1;
	setAttr ".pm[38]" -type "matrix" -0.50408143703462227 -0.8031478417612693 0.31757746946426507 0
		 -0.83807469275740265 0.36604707764536526 -0.40452484016049423 0 0.20864494769031885 -0.47006710289224019 -0.85761541764464611 0
		 4.7675519887131355 -2.6983875271677142 0.40050570930127805 1;
	setAttr ".pm[39]" -type "matrix" -0.1388780541691455 -0.97362021444400937 0.18104298963559565 0
		 -0.84422276414869568 0.020829102434949075 -0.53558759599610806 0 0.51768794709103272 -0.22722197630897623 -0.82484505388522267 0
		 5.1314029120475162 -0.54383195128390083 1.106276859770559 1;
	setAttr ".pm[40]" -type "matrix" -0.44544497944150729 0.31790426679360784 -0.83696812809376109 0
		 -0.53604559259280815 0.65406161496897919 0.53372139406810004 0 0.71710103399185043 0.68639659161347066 -0.12093728155217454 0
		 3.5487087479939037 -1.8700671021165944 -2.7925192544727229 1;
	setAttr ".pm[41]" -type "matrix" -0.052113644842615832 -0.12229877356956306 -0.99112419908132576 0
		 -0.1298513400838483 0.98487688501104831 -0.11470026525411003 0 0.99016301561896725 0.12272135655343415 -0.067206183837786523 0
		 1.5808752886267787 -4.2107979269501721 0.02488657865780947 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923410589018 0.15316128048267028 0.8446993714649188 0
		 -0.35222853801336457 0.93486282786315411 0.044345801251914924 0 -0.78288598339814919 -0.32027037833776562 0.53340080779662957 0
		 1.1996854652596876 -4.1723182493855937 0.61489409327925237 1;
	setAttr ".pm[43]" -type "matrix" -0.73333549252294628 0.11850971777536543 0.6694583647986867 0
		 0.055614854265169066 0.99184696103279246 -0.11465859703955252 0 -0.67758840263923636 -0.046851389337113233 -0.73394748035945312 0
		 -1.6184639253570581 -4.1509626321413302 0.61671609555364293 1;
	setAttr ".pm[44]" -type "matrix" 0.71787470010069754 0.19100108051108516 -0.6694583647986867 0
		 -0.15418153999379089 0.98136713764526717 0.11465859703955254 0 0.67888435515960754 0.020907615682650708 0.73394748035945312 0
		 2.9878104596161363 -3.9063461047656265 -0.61671609555364371 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497510865095 0.012292726638408521 -0.5042589866649978 0
		 0.11820591342388151 0.96693328786482735 0.22598092585556875 0 0.49036272165840955 -0.25473300863984571 0.8334599543571658 0
		 -0.31526851927338967 -4.1175003486713404 -0.84111836428203779 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581735119836 0.14817026903880451 -0.50425898666499791 0
		 -0.035601726522438204 0.97348093880572795 0.22598092585556881 0 0.52437016632152489 -0.17429983693304754 0.83345995435716591 0
		 -0.5426611529350891 -4.2561403836399734 -0.84111836428203701 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227675808372 0.54496456709945651 -0.34985229813832852 0
		 0.62286061317250907 0.76461428796600184 -0.16555859143098073 0 0.17727849972552723 -0.3440619293736909 -0.92205950040695339 0
		 -2.7951586638432317 -5.0172514867505065 -0.72188545988463759 1;
	setAttr ".pm[48]" -type "matrix" -0.63784895208083725 0.68611375428328836 -0.34985229813832847 0
		 0.7629672038368267 0.62487710685606335 -0.16555859143098076 0 0.10502266516706038 -0.37252720371871889 -0.92205950040695328 0
		 -4.1298506208874732 -4.2789178953001308 -0.72188545988463737 1;
	setAttr ".pm[49]" -type "matrix" -0.43115002080261616 0.83169286942310305 -0.34985229813832847 0
		 0.90227886845699257 0.39809948045602755 -0.16555859143098073 0 0.0015821181603363223 -0.3870449258308486 -0.92205950040695328 0
		 -5.4553895547094982 -2.9266922506119553 -0.72188545988463804 1;
	setAttr ".pm[50]" -type "matrix" -0.28599064808402525 0.89208335860266452 -0.34985229813832847 0
		 0.95614812432505913 0.24160115304580213 -0.16555859143098073 0 -0.063167345663331723 -0.38185882751499872 -0.92205950040695317 0
		 -6.1336372640080636 -1.9280907294341134 -0.72188545988463826 1;
	setAttr ".pm[51]" -type "matrix" -0.10207340220925795 0.93122735679787572 -0.34985229813832852 0
		 0.98513663511676597 0.04578387220633319 -0.16555859143098076 0 -0.1381550965843944 -0.36155144446819326 -0.92205950040695339 0
		 -6.750844393671346 -0.59181557076226199 -0.72188545988463804 1;
	setAttr ".pm[52]" -type "matrix" 0.23188991289304464 -0.90765105507887078 0.34985229813832852 0
		 0.93832475914076996 0.30354077022173792 0.16555859143098076 0 -0.2564638662304547 0.28988370603986663 0.92205950040695339 0
		 -6.7512693567178932 -1.9036837947667706 0.72188545988463826 1;
	setAttr ".pm[53]" -type "matrix" 0.93511715707163778 -0.056207401982203677 0.34985229813832847 0
		 -0.0026622528471228501 0.98619636240110298 0.16555859143098076 0 -0.35432868210185431 -0.15574807462451479 0.92205950040695339 0
		 -0.34546938704197949 -7.3149787490197635 0.72188545988463826 1;
	setAttr ".pm[54]" -type "matrix" -0.3995512077925496 0.88654287078454452 -0.23323929903130458 0
		 0.91382911845984149 0.40534607056836613 -0.024716499139121474 0 0.07263039726191893 -0.22301637010740805 -0.97210520215545215 0
		 -4.5278240127840492 -3.3954816224779094 -1.022056697587352 1;
	setAttr ".pm[55]" -type "matrix" -0.32480994631015858 0.91656856162830391 -0.23323929903130453 0
		 0.94424078807895984 0.32832671045519651 -0.024716499139121471 0 0.053924325735392298 -0.22826222428665643 -0.97210520215545193 0
		 -5.2848407070967021 -2.9682891700797711 -1.022056697587352 1;
	setAttr ".pm[56]" -type "matrix" -0.20311031532577234 0.95097088766988669 -0.23323929903130458 0
		 0.97886549055744121 0.20300602470381512 -0.024716499139121474 0 0.023844311774627147 -0.23333007679744791 -0.97210520215545215 0
		 -6.0531111548152001 -2.2013311585251061 -1.0220566975873524 1;
	setAttr ".pm[57]" -type "matrix" 0.055141303824235287 -0.9708547090064249 0.23323929903130447 0
		 0.99773223418241641 0.062605778836058751 0.024716499139121471 0 -0.038598257550400639 0.23134746693314248 0.97210520215545215 0
		 -6.8860134976711738 0.39760011084167934 1.0220566975873533 1;
	setAttr ".pm[58]" -type "matrix" 0.28391907621620699 -0.93004805657983181 0.23323929903130441 0
		 0.95438699790408643 0.29754756410014638 0.024716499139121464 0 -0.092387317268987398 0.21558306879286218 0.97210520215545204 0
		 -7.2628020056901921 -1.3645944184337013 1.0220566975873542 1;
	setAttr ".pm[59]" -type "matrix" 0.55092251726407293 -0.80130132244917951 0.23323929903130447 0
		 0.82040361842651 0.57125038078148793 0.024716499139121457 0 -0.15304340183133217 0.17773348896086494 0.97210520215545226 0
		 -6.9115203842823005 -3.614765238507994 1.0220566975873553 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801089765346 -0.52562567444166342 0.2332392990313045 0
		 0.53537164030992179 0.84425487941863231 0.024716499139121471 0 -0.20990504280919794 0.10464869299507418 0.97210520215545226 0
		 -5.4326010597893744 -6.2006164513207258 1.022056697587356 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862487083475 0.0012030759333471891 0.2332392990313045 0
		 -0.0071651614412281605 0.9996688227267202 0.024716499139121488 0 -0.23313231965095885 -0.025705981336483979 0.97210520215545226 0
		 -1.6152690614627854 -8.4165599672621738 1.0220566975873582 1;
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
	rename -uid "E0B6C4D1-784A-CA01-FA64-6B9CD5EEF3DA";
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
		5 22 0.097155878571255697 23 0.37146201372939824 24 0.37146201372939813 
		25 0.12919346064990653 57 0.030726633320041469
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
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 0 0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 0 0.210011846539538 0.045642596473303459 -0.97663287764657492 0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924786964475911 0.69647275897298977 0.63759041424957175 0
		 0.89339606886512057 0.44836933267261597 -0.028432475359386224 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461459 0
		 -3.5395339554045822 -2.4005302806614881 -1.4268590620613972 1;
	setAttr ".pm[32]" -type "matrix" -0.2788948936776629 0.70693339326522631 0.64997139611450505 0
		 0.88853219656263749 0.44672740812313055 -0.10461911155789998 0 -0.36431878067442508 0.54834277629791317 -0.75272307373282876 0
		 -4.0483565879838137 -2.4178888731886135 -1.0785180430682901 1;
	setAttr ".pm[33]" -type "matrix" -0.23031898058193839 0.65282056230089813 0.72164983241239433 0
		 0.83303853881336332 0.51558677386086182 -0.20054194441922935 0 -0.50299101387141465 0.55497350572517279 -0.66257410748362233 0
		 -4.4246285444210187 -2.6889499752129318 -0.58522172147807516 1;
	setAttr ".pm[34]" -type "matrix" -0.43594206856657192 0.59749643679491415 0.67301747441747783 0
		 0.70084734557336581 0.69452627827057267 -0.16262302110831164 0 -0.56459499737127161 0.40078829425147727 -0.72152701414037579 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020182 1;
	setAttr ".pm[35]" -type "matrix" -0.80828667061645454 0.25069033817993197 0.53275417637687206 0
		 0.218196818333519 0.96794042383007695 -0.12442461325951786 0 -0.54686635165540876 0.015674509845052226 -0.83707317671050785 0
		 -1.2782209820434483 -5.4701710369415633 -1.0637098843123738 1;
	setAttr ".pm[36]" -type "matrix" -0.8200474629899539 -0.20903383935798983 0.53275417637687206 0
		 -0.32022389937182455 0.93913533097542623 -0.12442461325951783 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050785 0
		 1.4741587314170379 -5.4790257814298373 -1.063709884312374 1;
	setAttr ".pm[37]" -type "matrix" -0.68115616977266802 -0.58224856304555372 0.44386133331482819 0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048565 0 -0.16426653899654683 -0.4692574321309736 -0.8676485270868276 0
		 3.7155105341486689 -4.2535038943938579 -0.56138920422851657 1;
	setAttr ".pm[38]" -type "matrix" -0.50408143703462227 -0.8031478417612693 0.31757746946426507 0
		 -0.83807469275740265 0.36604707764536526 -0.40452484016049423 0 0.20864494769031885 -0.47006710289224019 -0.85761541764464611 0
		 4.7675519887131355 -2.6983875271677142 0.40050570930127805 1;
	setAttr ".pm[39]" -type "matrix" -0.1388780541691455 -0.97362021444400937 0.18104298963559565 0
		 -0.84422276414869568 0.020829102434949075 -0.53558759599610806 0 0.51768794709103272 -0.22722197630897623 -0.82484505388522267 0
		 5.1314029120475162 -0.54383195128390083 1.106276859770559 1;
	setAttr ".pm[40]" -type "matrix" -0.44544497944150729 0.31790426679360784 -0.83696812809376109 0
		 -0.53604559259280815 0.65406161496897919 0.53372139406810004 0 0.71710103399185043 0.68639659161347066 -0.12093728155217454 0
		 3.5487087479939037 -1.8700671021165944 -2.7925192544727229 1;
	setAttr ".pm[41]" -type "matrix" -0.052113644842615832 -0.12229877356956306 -0.99112419908132576 0
		 -0.1298513400838483 0.98487688501104831 -0.11470026525411003 0 0.99016301561896725 0.12272135655343415 -0.067206183837786523 0
		 1.5808752886267787 -4.2107979269501721 0.02488657865780947 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923410589018 0.15316128048267028 0.8446993714649188 0
		 -0.35222853801336457 0.93486282786315411 0.044345801251914924 0 -0.78288598339814919 -0.32027037833776562 0.53340080779662957 0
		 1.1996854652596876 -4.1723182493855937 0.61489409327925237 1;
	setAttr ".pm[43]" -type "matrix" -0.73333549252294628 0.11850971777536543 0.6694583647986867 0
		 0.055614854265169066 0.99184696103279246 -0.11465859703955252 0 -0.67758840263923636 -0.046851389337113233 -0.73394748035945312 0
		 -1.6184639253570581 -4.1509626321413302 0.61671609555364293 1;
	setAttr ".pm[44]" -type "matrix" 0.71787470010069754 0.19100108051108516 -0.6694583647986867 0
		 -0.15418153999379089 0.98136713764526717 0.11465859703955254 0 0.67888435515960754 0.020907615682650708 0.73394748035945312 0
		 2.9878104596161363 -3.9063461047656265 -0.61671609555364371 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497510865095 0.012292726638408521 -0.5042589866649978 0
		 0.11820591342388151 0.96693328786482735 0.22598092585556875 0 0.49036272165840955 -0.25473300863984571 0.8334599543571658 0
		 -0.31526851927338967 -4.1175003486713404 -0.84111836428203779 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581735119836 0.14817026903880451 -0.50425898666499791 0
		 -0.035601726522438204 0.97348093880572795 0.22598092585556881 0 0.52437016632152489 -0.17429983693304754 0.83345995435716591 0
		 -0.5426611529350891 -4.2561403836399734 -0.84111836428203701 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227675808372 0.54496456709945651 -0.34985229813832852 0
		 0.62286061317250907 0.76461428796600184 -0.16555859143098073 0 0.17727849972552723 -0.3440619293736909 -0.92205950040695339 0
		 -2.7951586638432317 -5.0172514867505065 -0.72188545988463759 1;
	setAttr ".pm[48]" -type "matrix" -0.63784895208083725 0.68611375428328836 -0.34985229813832847 0
		 0.7629672038368267 0.62487710685606335 -0.16555859143098076 0 0.10502266516706038 -0.37252720371871889 -0.92205950040695328 0
		 -4.1298506208874732 -4.2789178953001308 -0.72188545988463737 1;
	setAttr ".pm[49]" -type "matrix" -0.43115002080261616 0.83169286942310305 -0.34985229813832847 0
		 0.90227886845699257 0.39809948045602755 -0.16555859143098073 0 0.0015821181603363223 -0.3870449258308486 -0.92205950040695328 0
		 -5.4553895547094982 -2.9266922506119553 -0.72188545988463804 1;
	setAttr ".pm[50]" -type "matrix" -0.28599064808402525 0.89208335860266452 -0.34985229813832847 0
		 0.95614812432505913 0.24160115304580213 -0.16555859143098073 0 -0.063167345663331723 -0.38185882751499872 -0.92205950040695317 0
		 -6.1336372640080636 -1.9280907294341134 -0.72188545988463826 1;
	setAttr ".pm[51]" -type "matrix" -0.10207340220925795 0.93122735679787572 -0.34985229813832852 0
		 0.98513663511676597 0.04578387220633319 -0.16555859143098076 0 -0.1381550965843944 -0.36155144446819326 -0.92205950040695339 0
		 -6.750844393671346 -0.59181557076226199 -0.72188545988463804 1;
	setAttr ".pm[52]" -type "matrix" 0.23188991289304464 -0.90765105507887078 0.34985229813832852 0
		 0.93832475914076996 0.30354077022173792 0.16555859143098076 0 -0.2564638662304547 0.28988370603986663 0.92205950040695339 0
		 -6.7512693567178932 -1.9036837947667706 0.72188545988463826 1;
	setAttr ".pm[53]" -type "matrix" 0.93511715707163778 -0.056207401982203677 0.34985229813832847 0
		 -0.0026622528471228501 0.98619636240110298 0.16555859143098076 0 -0.35432868210185431 -0.15574807462451479 0.92205950040695339 0
		 -0.34546938704197949 -7.3149787490197635 0.72188545988463826 1;
	setAttr ".pm[54]" -type "matrix" -0.3995512077925496 0.88654287078454452 -0.23323929903130458 0
		 0.91382911845984149 0.40534607056836613 -0.024716499139121474 0 0.07263039726191893 -0.22301637010740805 -0.97210520215545215 0
		 -4.5278240127840492 -3.3954816224779094 -1.022056697587352 1;
	setAttr ".pm[55]" -type "matrix" -0.32480994631015858 0.91656856162830391 -0.23323929903130453 0
		 0.94424078807895984 0.32832671045519651 -0.024716499139121471 0 0.053924325735392298 -0.22826222428665643 -0.97210520215545193 0
		 -5.2848407070967021 -2.9682891700797711 -1.022056697587352 1;
	setAttr ".pm[56]" -type "matrix" -0.20311031532577234 0.95097088766988669 -0.23323929903130458 0
		 0.97886549055744121 0.20300602470381512 -0.024716499139121474 0 0.023844311774627147 -0.23333007679744791 -0.97210520215545215 0
		 -6.0531111548152001 -2.2013311585251061 -1.0220566975873524 1;
	setAttr ".pm[57]" -type "matrix" 0.055141303824235287 -0.9708547090064249 0.23323929903130447 0
		 0.99773223418241641 0.062605778836058751 0.024716499139121471 0 -0.038598257550400639 0.23134746693314248 0.97210520215545215 0
		 -6.8860134976711738 0.39760011084167934 1.0220566975873533 1;
	setAttr ".pm[58]" -type "matrix" 0.28391907621620699 -0.93004805657983181 0.23323929903130441 0
		 0.95438699790408643 0.29754756410014638 0.024716499139121464 0 -0.092387317268987398 0.21558306879286218 0.97210520215545204 0
		 -7.2628020056901921 -1.3645944184337013 1.0220566975873542 1;
	setAttr ".pm[59]" -type "matrix" 0.55092251726407293 -0.80130132244917951 0.23323929903130447 0
		 0.82040361842651 0.57125038078148793 0.024716499139121457 0 -0.15304340183133217 0.17773348896086494 0.97210520215545226 0
		 -6.9115203842823005 -3.614765238507994 1.0220566975873553 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801089765346 -0.52562567444166342 0.2332392990313045 0
		 0.53537164030992179 0.84425487941863231 0.024716499139121471 0 -0.20990504280919794 0.10464869299507418 0.97210520215545226 0
		 -5.4326010597893744 -6.2006164513207258 1.022056697587356 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862487083475 0.0012030759333471891 0.2332392990313045 0
		 -0.0071651614412281605 0.9996688227267202 0.024716499139121488 0 -0.23313231965095885 -0.025705981336483979 0.97210520215545226 0
		 -1.6152690614627854 -8.4165599672621738 1.0220566975873582 1;
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
	rename -uid "4EB270FB-FF42-65F7-A885-E484875F948F";
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
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 0 0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 0 0.210011846539538 0.045642596473303459 -0.97663287764657492 0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924786964475911 0.69647275897298977 0.63759041424957175 0
		 0.89339606886512057 0.44836933267261597 -0.028432475359386224 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461459 0
		 -3.5395339554045822 -2.4005302806614881 -1.4268590620613972 1;
	setAttr ".pm[32]" -type "matrix" -0.2788948936776629 0.70693339326522631 0.64997139611450505 0
		 0.88853219656263749 0.44672740812313055 -0.10461911155789998 0 -0.36431878067442508 0.54834277629791317 -0.75272307373282876 0
		 -4.0483565879838137 -2.4178888731886135 -1.0785180430682901 1;
	setAttr ".pm[33]" -type "matrix" -0.23031898058193839 0.65282056230089813 0.72164983241239433 0
		 0.83303853881336332 0.51558677386086182 -0.20054194441922935 0 -0.50299101387141465 0.55497350572517279 -0.66257410748362233 0
		 -4.4246285444210187 -2.6889499752129318 -0.58522172147807516 1;
	setAttr ".pm[34]" -type "matrix" -0.43594206856657192 0.59749643679491415 0.67301747441747783 0
		 0.70084734557336581 0.69452627827057267 -0.16262302110831164 0 -0.56459499737127161 0.40078829425147727 -0.72152701414037579 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020182 1;
	setAttr ".pm[35]" -type "matrix" -0.80828667061645454 0.25069033817993197 0.53275417637687206 0
		 0.218196818333519 0.96794042383007695 -0.12442461325951786 0 -0.54686635165540876 0.015674509845052226 -0.83707317671050785 0
		 -1.2782209820434483 -5.4701710369415633 -1.0637098843123738 1;
	setAttr ".pm[36]" -type "matrix" -0.8200474629899539 -0.20903383935798983 0.53275417637687206 0
		 -0.32022389937182455 0.93913533097542623 -0.12442461325951783 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050785 0
		 1.4741587314170379 -5.4790257814298373 -1.063709884312374 1;
	setAttr ".pm[37]" -type "matrix" -0.68115616977266802 -0.58224856304555372 0.44386133331482819 0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048565 0 -0.16426653899654683 -0.4692574321309736 -0.8676485270868276 0
		 3.7155105341486689 -4.2535038943938579 -0.56138920422851657 1;
	setAttr ".pm[38]" -type "matrix" -0.50408143703462227 -0.8031478417612693 0.31757746946426507 0
		 -0.83807469275740265 0.36604707764536526 -0.40452484016049423 0 0.20864494769031885 -0.47006710289224019 -0.85761541764464611 0
		 4.7675519887131355 -2.6983875271677142 0.40050570930127805 1;
	setAttr ".pm[39]" -type "matrix" -0.1388780541691455 -0.97362021444400937 0.18104298963559565 0
		 -0.84422276414869568 0.020829102434949075 -0.53558759599610806 0 0.51768794709103272 -0.22722197630897623 -0.82484505388522267 0
		 5.1314029120475162 -0.54383195128390083 1.106276859770559 1;
	setAttr ".pm[40]" -type "matrix" -0.44544497944150729 0.31790426679360784 -0.83696812809376109 0
		 -0.53604559259280815 0.65406161496897919 0.53372139406810004 0 0.71710103399185043 0.68639659161347066 -0.12093728155217454 0
		 3.5487087479939037 -1.8700671021165944 -2.7925192544727229 1;
	setAttr ".pm[41]" -type "matrix" -0.052113644842615832 -0.12229877356956306 -0.99112419908132576 0
		 -0.1298513400838483 0.98487688501104831 -0.11470026525411003 0 0.99016301561896725 0.12272135655343415 -0.067206183837786523 0
		 1.5808752886267787 -4.2107979269501721 0.02488657865780947 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923410589018 0.15316128048267028 0.8446993714649188 0
		 -0.35222853801336457 0.93486282786315411 0.044345801251914924 0 -0.78288598339814919 -0.32027037833776562 0.53340080779662957 0
		 1.1996854652596876 -4.1723182493855937 0.61489409327925237 1;
	setAttr ".pm[43]" -type "matrix" -0.73333549252294628 0.11850971777536543 0.6694583647986867 0
		 0.055614854265169066 0.99184696103279246 -0.11465859703955252 0 -0.67758840263923636 -0.046851389337113233 -0.73394748035945312 0
		 -1.6184639253570581 -4.1509626321413302 0.61671609555364293 1;
	setAttr ".pm[44]" -type "matrix" 0.71787470010069754 0.19100108051108516 -0.6694583647986867 0
		 -0.15418153999379089 0.98136713764526717 0.11465859703955254 0 0.67888435515960754 0.020907615682650708 0.73394748035945312 0
		 2.9878104596161363 -3.9063461047656265 -0.61671609555364371 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497510865095 0.012292726638408521 -0.5042589866649978 0
		 0.11820591342388151 0.96693328786482735 0.22598092585556875 0 0.49036272165840955 -0.25473300863984571 0.8334599543571658 0
		 -0.31526851927338967 -4.1175003486713404 -0.84111836428203779 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581735119836 0.14817026903880451 -0.50425898666499791 0
		 -0.035601726522438204 0.97348093880572795 0.22598092585556881 0 0.52437016632152489 -0.17429983693304754 0.83345995435716591 0
		 -0.5426611529350891 -4.2561403836399734 -0.84111836428203701 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227675808372 0.54496456709945651 -0.34985229813832852 0
		 0.62286061317250907 0.76461428796600184 -0.16555859143098073 0 0.17727849972552723 -0.3440619293736909 -0.92205950040695339 0
		 -2.7951586638432317 -5.0172514867505065 -0.72188545988463759 1;
	setAttr ".pm[48]" -type "matrix" -0.63784895208083725 0.68611375428328836 -0.34985229813832847 0
		 0.7629672038368267 0.62487710685606335 -0.16555859143098076 0 0.10502266516706038 -0.37252720371871889 -0.92205950040695328 0
		 -4.1298506208874732 -4.2789178953001308 -0.72188545988463737 1;
	setAttr ".pm[49]" -type "matrix" -0.43115002080261616 0.83169286942310305 -0.34985229813832847 0
		 0.90227886845699257 0.39809948045602755 -0.16555859143098073 0 0.0015821181603363223 -0.3870449258308486 -0.92205950040695328 0
		 -5.4553895547094982 -2.9266922506119553 -0.72188545988463804 1;
	setAttr ".pm[50]" -type "matrix" -0.28599064808402525 0.89208335860266452 -0.34985229813832847 0
		 0.95614812432505913 0.24160115304580213 -0.16555859143098073 0 -0.063167345663331723 -0.38185882751499872 -0.92205950040695317 0
		 -6.1336372640080636 -1.9280907294341134 -0.72188545988463826 1;
	setAttr ".pm[51]" -type "matrix" -0.10207340220925795 0.93122735679787572 -0.34985229813832852 0
		 0.98513663511676597 0.04578387220633319 -0.16555859143098076 0 -0.1381550965843944 -0.36155144446819326 -0.92205950040695339 0
		 -6.750844393671346 -0.59181557076226199 -0.72188545988463804 1;
	setAttr ".pm[52]" -type "matrix" 0.23188991289304464 -0.90765105507887078 0.34985229813832852 0
		 0.93832475914076996 0.30354077022173792 0.16555859143098076 0 -0.2564638662304547 0.28988370603986663 0.92205950040695339 0
		 -6.7512693567178932 -1.9036837947667706 0.72188545988463826 1;
	setAttr ".pm[53]" -type "matrix" 0.93511715707163778 -0.056207401982203677 0.34985229813832847 0
		 -0.0026622528471228501 0.98619636240110298 0.16555859143098076 0 -0.35432868210185431 -0.15574807462451479 0.92205950040695339 0
		 -0.34546938704197949 -7.3149787490197635 0.72188545988463826 1;
	setAttr ".pm[54]" -type "matrix" -0.3995512077925496 0.88654287078454452 -0.23323929903130458 0
		 0.91382911845984149 0.40534607056836613 -0.024716499139121474 0 0.07263039726191893 -0.22301637010740805 -0.97210520215545215 0
		 -4.5278240127840492 -3.3954816224779094 -1.022056697587352 1;
	setAttr ".pm[55]" -type "matrix" -0.32480994631015858 0.91656856162830391 -0.23323929903130453 0
		 0.94424078807895984 0.32832671045519651 -0.024716499139121471 0 0.053924325735392298 -0.22826222428665643 -0.97210520215545193 0
		 -5.2848407070967021 -2.9682891700797711 -1.022056697587352 1;
	setAttr ".pm[56]" -type "matrix" -0.20311031532577234 0.95097088766988669 -0.23323929903130458 0
		 0.97886549055744121 0.20300602470381512 -0.024716499139121474 0 0.023844311774627147 -0.23333007679744791 -0.97210520215545215 0
		 -6.0531111548152001 -2.2013311585251061 -1.0220566975873524 1;
	setAttr ".pm[57]" -type "matrix" 0.055141303824235287 -0.9708547090064249 0.23323929903130447 0
		 0.99773223418241641 0.062605778836058751 0.024716499139121471 0 -0.038598257550400639 0.23134746693314248 0.97210520215545215 0
		 -6.8860134976711738 0.39760011084167934 1.0220566975873533 1;
	setAttr ".pm[58]" -type "matrix" 0.28391907621620699 -0.93004805657983181 0.23323929903130441 0
		 0.95438699790408643 0.29754756410014638 0.024716499139121464 0 -0.092387317268987398 0.21558306879286218 0.97210520215545204 0
		 -7.2628020056901921 -1.3645944184337013 1.0220566975873542 1;
	setAttr ".pm[59]" -type "matrix" 0.55092251726407293 -0.80130132244917951 0.23323929903130447 0
		 0.82040361842651 0.57125038078148793 0.024716499139121457 0 -0.15304340183133217 0.17773348896086494 0.97210520215545226 0
		 -6.9115203842823005 -3.614765238507994 1.0220566975873553 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801089765346 -0.52562567444166342 0.2332392990313045 0
		 0.53537164030992179 0.84425487941863231 0.024716499139121471 0 -0.20990504280919794 0.10464869299507418 0.97210520215545226 0
		 -5.4326010597893744 -6.2006164513207258 1.022056697587356 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862487083475 0.0012030759333471891 0.2332392990313045 0
		 -0.0071651614412281605 0.9996688227267202 0.024716499139121488 0 -0.23313231965095885 -0.025705981336483979 0.97210520215545226 0
		 -1.6152690614627854 -8.4165599672621738 1.0220566975873582 1;
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
	rename -uid "0A351DE3-5049-D8DB-34D0-F38BF337BEE9";
	setAttr -s 30 ".wl";
	setAttr ".wl[0:29].w"
		5 56 0.0003960381512485595 57 0.0069204057305210769 58 0.49438279495177345 
		59 0.49438279495177334 60 0.0039179662146836304
		5 56 0.00050101596108632581 57 0.0082994743417144079 58 0.49301198510752631 
		59 0.49301198510752631 60 0.0051755394821466887
		5 57 0.00055362322992610945 58 0.0056439667898108871 59 0.49481428839595787 
		60 0.49481428839595776 61 0.0041738331883474132
		5 57 0.0082069685283609924 58 0.05725600585249601 59 0.45448788990065597 
		60 0.43801398031978434 61 0.042035155398702777
		5 56 0.00057623762414691097 57 0.009880076031183245 58 0.49213472942790737 
		59 0.49213472942790726 60 0.0052742274888551953
		5 57 0.010932235286411062 58 0.070310106875105582 59 0.44250871003103676 
		60 0.42421124660278087 61 0.052037701204665852
		5 57 0.0069631987569420571 58 0.13997652106457908 59 0.71032578417146564 
		60 0.13781060545445387 61 0.0049238905525593891
		5 57 0.0032631397206077041 58 0.10448559296179023 59 0.81047882801139182 
		60 0.079793107878136024 61 0.0019793314280743069
		5 57 0.0052416586849840926 58 0.11756901757721439 59 0.74799644389719677 
		60 0.12536600873715176 61 0.003826871103453039
		5 56 0.00046118678964869207 57 0.0078524421924945041 58 0.49355134561389064 
		59 0.49355134561389064 60 0.0045836797900755868
		5 57 0.0036227541705444143 58 0.10780026124400759 59 0.79906343044705885 
		60 0.087248437942514037 61 0.0022651161958750668
		5 57 0.0016114441372647621 58 0.014817745462373173 59 0.48632144028247032 
		60 0.48606838364677107 61 0.011180986471120724
		5 56 0.00042774884738170418 57 0.0072916403807019971 58 0.49397265769328091 
		59 0.49397265769328091 60 0.0043352953853545116
		5 57 0.0030480975004956961 58 0.095794765918087221 59 0.81923361926164051 
		60 0.079992723026004478 61 0.0019307942937721659
		5 57 0.001102331068606469 58 0.010564625993144125 59 0.49019702702952977 
		60 0.49019435274506545 61 0.0079416631636542896
		5 57 0.01477767017349764 58 0.047931356435639123 59 0.23092322528174755 
		60 0.39531717909037323 61 0.31105056901874234
		5 57 0.0016391935111460848 58 0.0076779929382602002 59 0.16192046867376664 
		60 0.59276464868551682 61 0.23599769619131031
		5 57 0.00052860648072031245 58 0.0027977372055855358 59 0.12637999150531146 
		60 0.75726125033358571 61 0.11303241447479703
		5 57 0.0025351507234328821 58 0.011579499738664152 59 0.19903927641987282 
		60 0.53953338636854453 61 0.24731268674948567
		5 25 0.033725268196384398 58 0.051256482645013965 59 0.22324749280479894 
		60 0.38076117236726931 61 0.31100958398653344
		5 57 0.0013637222394327977 58 0.0041786985133448924 59 0.030634122428155493 
		60 0.48191172840953345 61 0.48191172840953345
		5 57 0.00021032428595453022 58 0.00072379310783118867 59 0.0078943653595360177 
		60 0.49558575862333926 61 0.49558575862333903
		5 57 7.6462998854621587e-05 58 0.00027240197997386309 59 0.003396795018152883 
		60 0.49812717000150936 61 0.49812717000150936
		5 57 0.0002910823098104373 58 0.00099244973054852951 59 0.010399148174744336 
		60 0.49415865989244839 61 0.49415865989244839
		5 25 0.0035954757901519264 58 0.005205016363643877 59 0.034459536990918187 
		60 0.47836998542764303 61 0.47836998542764303
		5 26 0.0033263141921215504 58 0.0054700552629590778 59 0.027518086736101656 
		60 0.48184277190440872 61 0.48184277190440894
		5 26 0.003989405730280113 58 0.006014977057171772 59 0.029478083344401544 
		60 0.48025876693407332 61 0.48025876693407321
		5 26 0.0041704398686320384 58 0.0061055902833074887 59 0.029839718170124881 
		60 0.47994212583896795 61 0.47994212583896773
		5 26 0.0042231077905135151 58 0.0060152797792214392 59 0.029469468470546389 
		60 0.48014607197985937 61 0.48014607197985937
		5 26 0.0041141406582077154 58 0.0057590012552674926 59 0.028527935160395822 
		60 0.48079946146306451 61 0.48079946146306451;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 0 0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 0 0.210011846539538 0.045642596473303459 -0.97663287764657492 0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924786964475911 0.69647275897298977 0.63759041424957175 0
		 0.89339606886512057 0.44836933267261597 -0.028432475359386224 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461459 0
		 -3.5395339554045822 -2.4005302806614881 -1.4268590620613972 1;
	setAttr ".pm[32]" -type "matrix" -0.2788948936776629 0.70693339326522631 0.64997139611450505 0
		 0.88853219656263749 0.44672740812313055 -0.10461911155789998 0 -0.36431878067442508 0.54834277629791317 -0.75272307373282876 0
		 -4.0483565879838137 -2.4178888731886135 -1.0785180430682901 1;
	setAttr ".pm[33]" -type "matrix" -0.23031898058193839 0.65282056230089813 0.72164983241239433 0
		 0.83303853881336332 0.51558677386086182 -0.20054194441922935 0 -0.50299101387141465 0.55497350572517279 -0.66257410748362233 0
		 -4.4246285444210187 -2.6889499752129318 -0.58522172147807516 1;
	setAttr ".pm[34]" -type "matrix" -0.43594206856657192 0.59749643679491415 0.67301747441747783 0
		 0.70084734557336581 0.69452627827057267 -0.16262302110831164 0 -0.56459499737127161 0.40078829425147727 -0.72152701414037579 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020182 1;
	setAttr ".pm[35]" -type "matrix" -0.80828667061645454 0.25069033817993197 0.53275417637687206 0
		 0.218196818333519 0.96794042383007695 -0.12442461325951786 0 -0.54686635165540876 0.015674509845052226 -0.83707317671050785 0
		 -1.2782209820434483 -5.4701710369415633 -1.0637098843123738 1;
	setAttr ".pm[36]" -type "matrix" -0.8200474629899539 -0.20903383935798983 0.53275417637687206 0
		 -0.32022389937182455 0.93913533097542623 -0.12442461325951783 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050785 0
		 1.4741587314170379 -5.4790257814298373 -1.063709884312374 1;
	setAttr ".pm[37]" -type "matrix" -0.68115616977266802 -0.58224856304555372 0.44386133331482819 0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048565 0 -0.16426653899654683 -0.4692574321309736 -0.8676485270868276 0
		 3.7155105341486689 -4.2535038943938579 -0.56138920422851657 1;
	setAttr ".pm[38]" -type "matrix" -0.50408143703462227 -0.8031478417612693 0.31757746946426507 0
		 -0.83807469275740265 0.36604707764536526 -0.40452484016049423 0 0.20864494769031885 -0.47006710289224019 -0.85761541764464611 0
		 4.7675519887131355 -2.6983875271677142 0.40050570930127805 1;
	setAttr ".pm[39]" -type "matrix" -0.1388780541691455 -0.97362021444400937 0.18104298963559565 0
		 -0.84422276414869568 0.020829102434949075 -0.53558759599610806 0 0.51768794709103272 -0.22722197630897623 -0.82484505388522267 0
		 5.1314029120475162 -0.54383195128390083 1.106276859770559 1;
	setAttr ".pm[40]" -type "matrix" -0.44544497944150729 0.31790426679360784 -0.83696812809376109 0
		 -0.53604559259280815 0.65406161496897919 0.53372139406810004 0 0.71710103399185043 0.68639659161347066 -0.12093728155217454 0
		 3.5487087479939037 -1.8700671021165944 -2.7925192544727229 1;
	setAttr ".pm[41]" -type "matrix" -0.052113644842615832 -0.12229877356956306 -0.99112419908132576 0
		 -0.1298513400838483 0.98487688501104831 -0.11470026525411003 0 0.99016301561896725 0.12272135655343415 -0.067206183837786523 0
		 1.5808752886267787 -4.2107979269501721 0.02488657865780947 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923410589018 0.15316128048267028 0.8446993714649188 0
		 -0.35222853801336457 0.93486282786315411 0.044345801251914924 0 -0.78288598339814919 -0.32027037833776562 0.53340080779662957 0
		 1.1996854652596876 -4.1723182493855937 0.61489409327925237 1;
	setAttr ".pm[43]" -type "matrix" -0.73333549252294628 0.11850971777536543 0.6694583647986867 0
		 0.055614854265169066 0.99184696103279246 -0.11465859703955252 0 -0.67758840263923636 -0.046851389337113233 -0.73394748035945312 0
		 -1.6184639253570581 -4.1509626321413302 0.61671609555364293 1;
	setAttr ".pm[44]" -type "matrix" 0.71787470010069754 0.19100108051108516 -0.6694583647986867 0
		 -0.15418153999379089 0.98136713764526717 0.11465859703955254 0 0.67888435515960754 0.020907615682650708 0.73394748035945312 0
		 2.9878104596161363 -3.9063461047656265 -0.61671609555364371 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497510865095 0.012292726638408521 -0.5042589866649978 0
		 0.11820591342388151 0.96693328786482735 0.22598092585556875 0 0.49036272165840955 -0.25473300863984571 0.8334599543571658 0
		 -0.31526851927338967 -4.1175003486713404 -0.84111836428203779 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581735119836 0.14817026903880451 -0.50425898666499791 0
		 -0.035601726522438204 0.97348093880572795 0.22598092585556881 0 0.52437016632152489 -0.17429983693304754 0.83345995435716591 0
		 -0.5426611529350891 -4.2561403836399734 -0.84111836428203701 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227675808372 0.54496456709945651 -0.34985229813832852 0
		 0.62286061317250907 0.76461428796600184 -0.16555859143098073 0 0.17727849972552723 -0.3440619293736909 -0.92205950040695339 0
		 -2.7951586638432317 -5.0172514867505065 -0.72188545988463759 1;
	setAttr ".pm[48]" -type "matrix" -0.63784895208083725 0.68611375428328836 -0.34985229813832847 0
		 0.7629672038368267 0.62487710685606335 -0.16555859143098076 0 0.10502266516706038 -0.37252720371871889 -0.92205950040695328 0
		 -4.1298506208874732 -4.2789178953001308 -0.72188545988463737 1;
	setAttr ".pm[49]" -type "matrix" -0.43115002080261616 0.83169286942310305 -0.34985229813832847 0
		 0.90227886845699257 0.39809948045602755 -0.16555859143098073 0 0.0015821181603363223 -0.3870449258308486 -0.92205950040695328 0
		 -5.4553895547094982 -2.9266922506119553 -0.72188545988463804 1;
	setAttr ".pm[50]" -type "matrix" -0.28599064808402525 0.89208335860266452 -0.34985229813832847 0
		 0.95614812432505913 0.24160115304580213 -0.16555859143098073 0 -0.063167345663331723 -0.38185882751499872 -0.92205950040695317 0
		 -6.1336372640080636 -1.9280907294341134 -0.72188545988463826 1;
	setAttr ".pm[51]" -type "matrix" -0.10207340220925795 0.93122735679787572 -0.34985229813832852 0
		 0.98513663511676597 0.04578387220633319 -0.16555859143098076 0 -0.1381550965843944 -0.36155144446819326 -0.92205950040695339 0
		 -6.750844393671346 -0.59181557076226199 -0.72188545988463804 1;
	setAttr ".pm[52]" -type "matrix" 0.23188991289304464 -0.90765105507887078 0.34985229813832852 0
		 0.93832475914076996 0.30354077022173792 0.16555859143098076 0 -0.2564638662304547 0.28988370603986663 0.92205950040695339 0
		 -6.7512693567178932 -1.9036837947667706 0.72188545988463826 1;
	setAttr ".pm[53]" -type "matrix" 0.93511715707163778 -0.056207401982203677 0.34985229813832847 0
		 -0.0026622528471228501 0.98619636240110298 0.16555859143098076 0 -0.35432868210185431 -0.15574807462451479 0.92205950040695339 0
		 -0.34546938704197949 -7.3149787490197635 0.72188545988463826 1;
	setAttr ".pm[54]" -type "matrix" -0.3995512077925496 0.88654287078454452 -0.23323929903130458 0
		 0.91382911845984149 0.40534607056836613 -0.024716499139121474 0 0.07263039726191893 -0.22301637010740805 -0.97210520215545215 0
		 -4.5278240127840492 -3.3954816224779094 -1.022056697587352 1;
	setAttr ".pm[55]" -type "matrix" -0.32480994631015858 0.91656856162830391 -0.23323929903130453 0
		 0.94424078807895984 0.32832671045519651 -0.024716499139121471 0 0.053924325735392298 -0.22826222428665643 -0.97210520215545193 0
		 -5.2848407070967021 -2.9682891700797711 -1.022056697587352 1;
	setAttr ".pm[56]" -type "matrix" -0.20311031532577234 0.95097088766988669 -0.23323929903130458 0
		 0.97886549055744121 0.20300602470381512 -0.024716499139121474 0 0.023844311774627147 -0.23333007679744791 -0.97210520215545215 0
		 -6.0531111548152001 -2.2013311585251061 -1.0220566975873524 1;
	setAttr ".pm[57]" -type "matrix" 0.055141303824235287 -0.9708547090064249 0.23323929903130447 0
		 0.99773223418241641 0.062605778836058751 0.024716499139121471 0 -0.038598257550400639 0.23134746693314248 0.97210520215545215 0
		 -6.8860134976711738 0.39760011084167934 1.0220566975873533 1;
	setAttr ".pm[58]" -type "matrix" 0.28391907621620699 -0.93004805657983181 0.23323929903130441 0
		 0.95438699790408643 0.29754756410014638 0.024716499139121464 0 -0.092387317268987398 0.21558306879286218 0.97210520215545204 0
		 -7.2628020056901921 -1.3645944184337013 1.0220566975873542 1;
	setAttr ".pm[59]" -type "matrix" 0.55092251726407293 -0.80130132244917951 0.23323929903130447 0
		 0.82040361842651 0.57125038078148793 0.024716499139121457 0 -0.15304340183133217 0.17773348896086494 0.97210520215545226 0
		 -6.9115203842823005 -3.614765238507994 1.0220566975873553 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801089765346 -0.52562567444166342 0.2332392990313045 0
		 0.53537164030992179 0.84425487941863231 0.024716499139121471 0 -0.20990504280919794 0.10464869299507418 0.97210520215545226 0
		 -5.4326010597893744 -6.2006164513207258 1.022056697587356 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862487083475 0.0012030759333471891 0.2332392990313045 0
		 -0.0071651614412281605 0.9996688227267202 0.024716499139121488 0 -0.23313231965095885 -0.025705981336483979 0.97210520215545226 0
		 -1.6152690614627854 -8.4165599672621738 1.0220566975873582 1;
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
	rename -uid "44BCB409-4C47-9782-EBC8-37A09C8F6D9B";
	setAttr -s 56 ".wl";
	setAttr ".wl[0:55].w"
		5 32 0.063333212371321668 33 0.38195369054186978 34 0.38207499256466199 
		35 0.087650837939832527 54 0.084987266582314022
		5 32 0.070031674352375256 33 0.37254546150857315 34 0.37628992751184431 
		35 0.099576321083617178 54 0.081556615543590144
		5 32 0.087814055281321385 33 0.41228162666944163 34 0.37445661725842699 
		35 0.070017331580982986 54 0.055430369209826982
		5 32 0.10083297912507969 33 0.53823675665506876 34 0.31133197913588279 
		35 0.026246939093922662 54 0.023351345990046009
		5 32 0.071306286345447334 33 0.73853856394837802 34 0.17691353972379989 
		35 0.006406550965611448 54 0.006835059016763333
		5 32 0.065055083950203277 33 0.68206834228545521 34 0.23669044693553495 
		35 0.0072469928281847429 54 0.0089391340006217661
		5 32 0.070202911444296148 33 0.48941992422331065 34 0.38902457463529527 
		35 0.022504581307513868 54 0.028848008389583912
		5 32 0.065175457298693035 33 0.41262256612851111 34 0.40779290774300542 
		35 0.052774796784482776 54 0.06163427204530772
		5 34 0.11292461037594206 35 0.062422849364176601 36 0.0058185511143057436 
		54 0.80919716929140062 55 0.0096368198541749439
		5 34 0.15958750657785617 35 0.24632880986358188 36 0.022103848384169743 
		54 0.56228671109733441 55 0.0096931240770578714
		5 34 0.17322483732907473 35 0.41840167085344881 36 0.042155014605071435 
		54 0.35604222756012638 55 0.01017624965227862
		5 34 0.1878250437850556 35 0.19670785818589653 36 0.033819255780121169 
		54 0.55951101534968894 55 0.022136826899237728
		5 33 0.019939372033089511 34 0.21335470663693543 35 0.092811578752463111 
		54 0.64699930602038613 55 0.026895036557125919
		5 33 0.018080543309906039 34 0.19468875804551497 35 0.051511231124471361 
		54 0.71163960400441062 55 0.024079863515697013
		5 33 0.010131738833346818 34 0.15574117091263887 35 0.033910931669830592 
		54 0.78285843825963541 55 0.017357720324548243
		5 33 0.0048158944999044159 34 0.12175080104174289 35 0.032577978546347482 
		54 0.82951876615753051 55 0.01133655975447458
		5 35 0.00089340861718874298 54 0.036748184573325557 55 0.82661747401614838 
		56 0.1341697502110118 57 0.0015711825823255083
		5 35 0.0022727568110836086 54 0.063320053626475734 55 0.76084283979645229 
		56 0.17094734067633452 57 0.0026170090896537501
		5 35 0.0040976283163313455 36 0.0040976283163313455 54 0.092534560936742963 
		55 0.70034546340651826 56 0.19892471902407613
		5 35 0.0040621744417427457 54 0.10591861597298782 55 0.67305822032850393 
		56 0.2124257026481442 57 0.0045352866086213611
		5 34 0.002825201167640051 54 0.096824141458242224 55 0.68258454655200718 
		56 0.21342260014497938 57 0.0043435106771311238
		5 34 0.0019274288072431106 54 0.070813911653041364 55 0.72754211073237451 
		56 0.19642261740891551 57 0.0032939313984254341
		5 34 0.0010531778548176355 54 0.042795647041241912 55 0.79650095176908331 
		56 0.15765078387000117 57 0.0019994394648559306
		5 34 0.00066608243841768098 54 0.029064601096140619 55 0.8448001458496226 
		56 0.12415384169873007 57 0.0013153289170889807
		5 55 0.0038823292538315559 56 0.48236049386465318 57 0.50898671652243566 
		58 0.0043482181435870806 59 0.00042224221549259965
		5 55 0.0061125861526597196 56 0.49346754472358562 57 0.49362817507663492 
		58 0.0061595628145158831 59 0.00063213123260386366
		5 51 0.0012936376786657293 55 0.0084634881041157854 56 0.49122549394644571 
		57 0.4912254939464456 58 0.0077918863243272617
		5 54 0.0008661467720728149 55 0.0087251824770689622 56 0.49119895343767517 
		57 0.49119895343767517 58 0.0080107638755079653
		5 55 0.0064694773388653728 56 0.49318803353409069 57 0.49318803353409058 
		58 0.0064848374779453094 59 0.00066961811500810078
		5 55 0.0041291096253035014 56 0.48433293793807314 57 0.50648759370797525 
		58 0.0046011632636813685 59 0.00044919546496687484
		5 55 0.0030791331110293081 56 0.46908844912046699 57 0.52387376225493953 
		58 0.0036158826313133353 59 0.00034277288225096248
		5 56 0.00023327091947815255 57 0.0055408695581855216 58 0.57558730513544565 
		59 0.41717496866685011 60 0.0014635857200405689
		5 56 0.00030390095674066349 57 0.0060778665361143581 58 0.49995649164576722 
		59 0.49119580619626668 60 0.0024659346651109259
		5 56 0.00039604296939593325 57 0.0069204804047248575 58 0.49438273215366729 
		59 0.49438273215366718 60 0.0039180123185448817
		5 56 0.00050102089511415914 57 0.0082995472034001049 58 0.49301192267806521 
		59 0.4930119226780651 60 0.0051755865453554234
		5 56 0.0005762427657763961 57 0.0098801593791269012 58 0.4921346673508965 
		59 0.4921346673508965 60 0.0052742631533037
		5 56 0.0005681067280149906 57 0.011003795090429135 58 0.49835650902303824 
		59 0.48594095298911422 60 0.0041306361694034965
		5 56 0.00041082010435823354 57 0.0094882100182558243 58 0.56250381519757375 
		59 0.42521153496418884 60 0.0023856197156233703
		5 56 0.0002462611304304432 57 0.0063221202428078065 58 0.63596126220405613 
		59 0.35613775106837303 60 0.001332605354332519
		5 57 0.00010814373787534436 58 0.0012156178136539814 59 0.56797003476415231 
		60 0.4297727829156005 61 0.00093342076871781934
		5 57 9.0583090926025603e-05 58 0.00090965147395445157 59 0.49827684778495152 
		60 0.49962423699398217 61 0.0010986806561859308
		5 57 0.00012879618994380155 58 0.0011786118642321309 59 0.49500874504527231 
		60 0.50168920952990437 61 0.0019946373706474303
		5 57 0.00022600417871542804 58 0.0019811970045511213 59 0.49479902687707561 
		60 0.49935365447794916 61 0.0036401174617087021
		5 57 0.00036195082901605534 58 0.0032267723969028263 59 0.49565713682561413 
		60 0.49587598068238231 61 0.0048781592660845979
		5 57 0.00046743670123918516 58 0.0044945602545897276 59 0.49522407769223908 
		60 0.49513153436859131 61 0.0046823909833406336
		5 57 0.00039710878683730513 58 0.0043001805942342874 59 0.54303436864510146 
		60 0.44926170477823896 61 0.0030066371955878527
		5 57 0.00019983168261651773 58 0.0023472234307078681 59 0.62378314183351724 
		60 0.37227243215999195 61 0.0013973708931662833
		5 56 0.0015155540898514556 57 0.26825682568877596 58 0.71590511313456207 
		59 0.013871748576607362 60 0.0004507585102031517
		5 56 0.0010614691097377258 57 0.22244597183754175 58 0.76607555045257636 
		59 0.010098128276215694 60 0.00031888032392842121
		5 56 0.002053332204686099 57 0.30575079386836856 58 0.67449926487282208 
		59 0.017106605747426534 60 0.00059000330669675867
		5 56 0.0041154492441882176 57 0.38786778147261186 58 0.57836705210574402 
		59 0.028540712413303936 60 0.0011090047641519806
		5 56 0.0058876617446861302 57 0.42244894086779267 58 0.53380911289158095 
		59 0.036336302635567183 60 0.001517981860373009
		5 56 0.0051974602974019938 57 0.41313487151316913 58 0.54587982424442449 
		59 0.03440912057280774 60 0.0013787233721965426
		5 56 0.0032135049340334602 57 0.36295786602291136 58 0.60795782420331013 
		59 0.024965807117360999 60 0.00090499772238418898
		5 51 0.0012668582828936294 55 0.0095617516381143412 56 0.49033256864471686 
		57 0.49033256864471675 58 0.0085062527895584366
		5 56 0.0062898115273647172 57 0.42877264773544671 58 0.52505629203320769 
		59 0.038268547072917755 60 0.0016127016310630083;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 0 0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 0 0.210011846539538 0.045642596473303459 -0.97663287764657492 0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924786964475911 0.69647275897298977 0.63759041424957175 0
		 0.89339606886512057 0.44836933267261597 -0.028432475359386224 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461459 0
		 -3.5395339554045822 -2.4005302806614881 -1.4268590620613972 1;
	setAttr ".pm[32]" -type "matrix" -0.2788948936776629 0.70693339326522631 0.64997139611450505 0
		 0.88853219656263749 0.44672740812313055 -0.10461911155789998 0 -0.36431878067442508 0.54834277629791317 -0.75272307373282876 0
		 -4.0483565879838137 -2.4178888731886135 -1.0785180430682901 1;
	setAttr ".pm[33]" -type "matrix" -0.23031898058193839 0.65282056230089813 0.72164983241239433 0
		 0.83303853881336332 0.51558677386086182 -0.20054194441922935 0 -0.50299101387141465 0.55497350572517279 -0.66257410748362233 0
		 -4.4246285444210187 -2.6889499752129318 -0.58522172147807516 1;
	setAttr ".pm[34]" -type "matrix" -0.43594206856657192 0.59749643679491415 0.67301747441747783 0
		 0.70084734557336581 0.69452627827057267 -0.16262302110831164 0 -0.56459499737127161 0.40078829425147727 -0.72152701414037579 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020182 1;
	setAttr ".pm[35]" -type "matrix" -0.80828667061645454 0.25069033817993197 0.53275417637687206 0
		 0.218196818333519 0.96794042383007695 -0.12442461325951786 0 -0.54686635165540876 0.015674509845052226 -0.83707317671050785 0
		 -1.2782209820434483 -5.4701710369415633 -1.0637098843123738 1;
	setAttr ".pm[36]" -type "matrix" -0.8200474629899539 -0.20903383935798983 0.53275417637687206 0
		 -0.32022389937182455 0.93913533097542623 -0.12442461325951783 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050785 0
		 1.4741587314170379 -5.4790257814298373 -1.063709884312374 1;
	setAttr ".pm[37]" -type "matrix" -0.68115616977266802 -0.58224856304555372 0.44386133331482819 0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048565 0 -0.16426653899654683 -0.4692574321309736 -0.8676485270868276 0
		 3.7155105341486689 -4.2535038943938579 -0.56138920422851657 1;
	setAttr ".pm[38]" -type "matrix" -0.50408143703462227 -0.8031478417612693 0.31757746946426507 0
		 -0.83807469275740265 0.36604707764536526 -0.40452484016049423 0 0.20864494769031885 -0.47006710289224019 -0.85761541764464611 0
		 4.7675519887131355 -2.6983875271677142 0.40050570930127805 1;
	setAttr ".pm[39]" -type "matrix" -0.1388780541691455 -0.97362021444400937 0.18104298963559565 0
		 -0.84422276414869568 0.020829102434949075 -0.53558759599610806 0 0.51768794709103272 -0.22722197630897623 -0.82484505388522267 0
		 5.1314029120475162 -0.54383195128390083 1.106276859770559 1;
	setAttr ".pm[40]" -type "matrix" -0.44544497944150729 0.31790426679360784 -0.83696812809376109 0
		 -0.53604559259280815 0.65406161496897919 0.53372139406810004 0 0.71710103399185043 0.68639659161347066 -0.12093728155217454 0
		 3.5487087479939037 -1.8700671021165944 -2.7925192544727229 1;
	setAttr ".pm[41]" -type "matrix" -0.052113644842615832 -0.12229877356956306 -0.99112419908132576 0
		 -0.1298513400838483 0.98487688501104831 -0.11470026525411003 0 0.99016301561896725 0.12272135655343415 -0.067206183837786523 0
		 1.5808752886267787 -4.2107979269501721 0.02488657865780947 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923410589018 0.15316128048267028 0.8446993714649188 0
		 -0.35222853801336457 0.93486282786315411 0.044345801251914924 0 -0.78288598339814919 -0.32027037833776562 0.53340080779662957 0
		 1.1996854652596876 -4.1723182493855937 0.61489409327925237 1;
	setAttr ".pm[43]" -type "matrix" -0.73333549252294628 0.11850971777536543 0.6694583647986867 0
		 0.055614854265169066 0.99184696103279246 -0.11465859703955252 0 -0.67758840263923636 -0.046851389337113233 -0.73394748035945312 0
		 -1.6184639253570581 -4.1509626321413302 0.61671609555364293 1;
	setAttr ".pm[44]" -type "matrix" 0.71787470010069754 0.19100108051108516 -0.6694583647986867 0
		 -0.15418153999379089 0.98136713764526717 0.11465859703955254 0 0.67888435515960754 0.020907615682650708 0.73394748035945312 0
		 2.9878104596161363 -3.9063461047656265 -0.61671609555364371 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497510865095 0.012292726638408521 -0.5042589866649978 0
		 0.11820591342388151 0.96693328786482735 0.22598092585556875 0 0.49036272165840955 -0.25473300863984571 0.8334599543571658 0
		 -0.31526851927338967 -4.1175003486713404 -0.84111836428203779 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581735119836 0.14817026903880451 -0.50425898666499791 0
		 -0.035601726522438204 0.97348093880572795 0.22598092585556881 0 0.52437016632152489 -0.17429983693304754 0.83345995435716591 0
		 -0.5426611529350891 -4.2561403836399734 -0.84111836428203701 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227675808372 0.54496456709945651 -0.34985229813832852 0
		 0.62286061317250907 0.76461428796600184 -0.16555859143098073 0 0.17727849972552723 -0.3440619293736909 -0.92205950040695339 0
		 -2.7951586638432317 -5.0172514867505065 -0.72188545988463759 1;
	setAttr ".pm[48]" -type "matrix" -0.63784895208083725 0.68611375428328836 -0.34985229813832847 0
		 0.7629672038368267 0.62487710685606335 -0.16555859143098076 0 0.10502266516706038 -0.37252720371871889 -0.92205950040695328 0
		 -4.1298506208874732 -4.2789178953001308 -0.72188545988463737 1;
	setAttr ".pm[49]" -type "matrix" -0.43115002080261616 0.83169286942310305 -0.34985229813832847 0
		 0.90227886845699257 0.39809948045602755 -0.16555859143098073 0 0.0015821181603363223 -0.3870449258308486 -0.92205950040695328 0
		 -5.4553895547094982 -2.9266922506119553 -0.72188545988463804 1;
	setAttr ".pm[50]" -type "matrix" -0.28599064808402525 0.89208335860266452 -0.34985229813832847 0
		 0.95614812432505913 0.24160115304580213 -0.16555859143098073 0 -0.063167345663331723 -0.38185882751499872 -0.92205950040695317 0
		 -6.1336372640080636 -1.9280907294341134 -0.72188545988463826 1;
	setAttr ".pm[51]" -type "matrix" -0.10207340220925795 0.93122735679787572 -0.34985229813832852 0
		 0.98513663511676597 0.04578387220633319 -0.16555859143098076 0 -0.1381550965843944 -0.36155144446819326 -0.92205950040695339 0
		 -6.750844393671346 -0.59181557076226199 -0.72188545988463804 1;
	setAttr ".pm[52]" -type "matrix" 0.23188991289304464 -0.90765105507887078 0.34985229813832852 0
		 0.93832475914076996 0.30354077022173792 0.16555859143098076 0 -0.2564638662304547 0.28988370603986663 0.92205950040695339 0
		 -6.7512693567178932 -1.9036837947667706 0.72188545988463826 1;
	setAttr ".pm[53]" -type "matrix" 0.93511715707163778 -0.056207401982203677 0.34985229813832847 0
		 -0.0026622528471228501 0.98619636240110298 0.16555859143098076 0 -0.35432868210185431 -0.15574807462451479 0.92205950040695339 0
		 -0.34546938704197949 -7.3149787490197635 0.72188545988463826 1;
	setAttr ".pm[54]" -type "matrix" -0.3995512077925496 0.88654287078454452 -0.23323929903130458 0
		 0.91382911845984149 0.40534607056836613 -0.024716499139121474 0 0.07263039726191893 -0.22301637010740805 -0.97210520215545215 0
		 -4.5278240127840492 -3.3954816224779094 -1.022056697587352 1;
	setAttr ".pm[55]" -type "matrix" -0.32480994631015858 0.91656856162830391 -0.23323929903130453 0
		 0.94424078807895984 0.32832671045519651 -0.024716499139121471 0 0.053924325735392298 -0.22826222428665643 -0.97210520215545193 0
		 -5.2848407070967021 -2.9682891700797711 -1.022056697587352 1;
	setAttr ".pm[56]" -type "matrix" -0.20311031532577234 0.95097088766988669 -0.23323929903130458 0
		 0.97886549055744121 0.20300602470381512 -0.024716499139121474 0 0.023844311774627147 -0.23333007679744791 -0.97210520215545215 0
		 -6.0531111548152001 -2.2013311585251061 -1.0220566975873524 1;
	setAttr ".pm[57]" -type "matrix" 0.055141303824235287 -0.9708547090064249 0.23323929903130447 0
		 0.99773223418241641 0.062605778836058751 0.024716499139121471 0 -0.038598257550400639 0.23134746693314248 0.97210520215545215 0
		 -6.8860134976711738 0.39760011084167934 1.0220566975873533 1;
	setAttr ".pm[58]" -type "matrix" 0.28391907621620699 -0.93004805657983181 0.23323929903130441 0
		 0.95438699790408643 0.29754756410014638 0.024716499139121464 0 -0.092387317268987398 0.21558306879286218 0.97210520215545204 0
		 -7.2628020056901921 -1.3645944184337013 1.0220566975873542 1;
	setAttr ".pm[59]" -type "matrix" 0.55092251726407293 -0.80130132244917951 0.23323929903130447 0
		 0.82040361842651 0.57125038078148793 0.024716499139121457 0 -0.15304340183133217 0.17773348896086494 0.97210520215545226 0
		 -6.9115203842823005 -3.614765238507994 1.0220566975873553 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801089765346 -0.52562567444166342 0.2332392990313045 0
		 0.53537164030992179 0.84425487941863231 0.024716499139121471 0 -0.20990504280919794 0.10464869299507418 0.97210520215545226 0
		 -5.4326010597893744 -6.2006164513207258 1.022056697587356 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862487083475 0.0012030759333471891 0.2332392990313045 0
		 -0.0071651614412281605 0.9996688227267202 0.024716499139121488 0 -0.23313231965095885 -0.025705981336483979 0.97210520215545226 0
		 -1.6152690614627854 -8.4165599672621738 1.0220566975873582 1;
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
	rename -uid "02B31FCA-A14D-C29E-A567-508D5A2E082B";
	setAttr -s 11 ".wl";
	setAttr ".wl[0:10].w"
		5 51 0.0012668582828936294 55 0.0095617516381143412 56 0.49033256864471686 
		57 0.49033256864471675 58 0.0085062527895584366
		5 56 0.0062898115273647172 57 0.42877264773544671 58 0.52505629203320769 
		59 0.038268547072917755 60 0.0016127016310630083
		5 50 0.12466632581755212 51 0.10993769040741955 55 0.18092539733293275 
		56 0.32007784838573128 57 0.26439273805636437
		5 52 0.050268414173033647 53 0.050120901683171688 56 0.21262385629124714 
		57 0.40461119385883226 58 0.28237563399371518
		5 52 0.00429494429827448 56 0.021503570877733889 57 0.46503579252867777 
		58 0.46503579252867777 59 0.044129899766636137
		5 52 0.012578028228189759 55 0.018869348044253005 56 0.37091347399792507 
		57 0.49366653079726075 58 0.10397261893237141
		5 51 0.083117045739281373 52 0.083576639477462453 56 0.35591923997278885 
		57 0.36108191494226111 58 0.11630515986820619
		5 51 0.022507281093450803 55 0.064501799456258516 56 0.43819366782781571 
		57 0.43794629147979269 58 0.036850960142682299
		5 51 0.034409663851384567 52 0.036451369764411115 56 0.3697917061111865 
		57 0.42604082843448615 58 0.13330643183853169
		5 52 0.013943420259202059 56 0.067312017436495564 57 0.4434980773370224 
		58 0.43118116843746551 59 0.044065316529814526
		5 51 0.0012668582828936294 55 0.0095617516381143412 56 0.49033256864471686 
		57 0.49033256864471675 58 0.0085062527895584366;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 0 0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 0 0.210011846539538 0.045642596473303459 -0.97663287764657492 0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924786964475911 0.69647275897298977 0.63759041424957175 0
		 0.89339606886512057 0.44836933267261597 -0.028432475359386224 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461459 0
		 -3.5395339554045822 -2.4005302806614881 -1.4268590620613972 1;
	setAttr ".pm[32]" -type "matrix" -0.2788948936776629 0.70693339326522631 0.64997139611450505 0
		 0.88853219656263749 0.44672740812313055 -0.10461911155789998 0 -0.36431878067442508 0.54834277629791317 -0.75272307373282876 0
		 -4.0483565879838137 -2.4178888731886135 -1.0785180430682901 1;
	setAttr ".pm[33]" -type "matrix" -0.23031898058193839 0.65282056230089813 0.72164983241239433 0
		 0.83303853881336332 0.51558677386086182 -0.20054194441922935 0 -0.50299101387141465 0.55497350572517279 -0.66257410748362233 0
		 -4.4246285444210187 -2.6889499752129318 -0.58522172147807516 1;
	setAttr ".pm[34]" -type "matrix" -0.43594206856657192 0.59749643679491415 0.67301747441747783 0
		 0.70084734557336581 0.69452627827057267 -0.16262302110831164 0 -0.56459499737127161 0.40078829425147727 -0.72152701414037579 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020182 1;
	setAttr ".pm[35]" -type "matrix" -0.80828667061645454 0.25069033817993197 0.53275417637687206 0
		 0.218196818333519 0.96794042383007695 -0.12442461325951786 0 -0.54686635165540876 0.015674509845052226 -0.83707317671050785 0
		 -1.2782209820434483 -5.4701710369415633 -1.0637098843123738 1;
	setAttr ".pm[36]" -type "matrix" -0.8200474629899539 -0.20903383935798983 0.53275417637687206 0
		 -0.32022389937182455 0.93913533097542623 -0.12442461325951783 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050785 0
		 1.4741587314170379 -5.4790257814298373 -1.063709884312374 1;
	setAttr ".pm[37]" -type "matrix" -0.68115616977266802 -0.58224856304555372 0.44386133331482819 0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048565 0 -0.16426653899654683 -0.4692574321309736 -0.8676485270868276 0
		 3.7155105341486689 -4.2535038943938579 -0.56138920422851657 1;
	setAttr ".pm[38]" -type "matrix" -0.50408143703462227 -0.8031478417612693 0.31757746946426507 0
		 -0.83807469275740265 0.36604707764536526 -0.40452484016049423 0 0.20864494769031885 -0.47006710289224019 -0.85761541764464611 0
		 4.7675519887131355 -2.6983875271677142 0.40050570930127805 1;
	setAttr ".pm[39]" -type "matrix" -0.1388780541691455 -0.97362021444400937 0.18104298963559565 0
		 -0.84422276414869568 0.020829102434949075 -0.53558759599610806 0 0.51768794709103272 -0.22722197630897623 -0.82484505388522267 0
		 5.1314029120475162 -0.54383195128390083 1.106276859770559 1;
	setAttr ".pm[40]" -type "matrix" -0.44544497944150729 0.31790426679360784 -0.83696812809376109 0
		 -0.53604559259280815 0.65406161496897919 0.53372139406810004 0 0.71710103399185043 0.68639659161347066 -0.12093728155217454 0
		 3.5487087479939037 -1.8700671021165944 -2.7925192544727229 1;
	setAttr ".pm[41]" -type "matrix" -0.052113644842615832 -0.12229877356956306 -0.99112419908132576 0
		 -0.1298513400838483 0.98487688501104831 -0.11470026525411003 0 0.99016301561896725 0.12272135655343415 -0.067206183837786523 0
		 1.5808752886267787 -4.2107979269501721 0.02488657865780947 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923410589018 0.15316128048267028 0.8446993714649188 0
		 -0.35222853801336457 0.93486282786315411 0.044345801251914924 0 -0.78288598339814919 -0.32027037833776562 0.53340080779662957 0
		 1.1996854652596876 -4.1723182493855937 0.61489409327925237 1;
	setAttr ".pm[43]" -type "matrix" -0.73333549252294628 0.11850971777536543 0.6694583647986867 0
		 0.055614854265169066 0.99184696103279246 -0.11465859703955252 0 -0.67758840263923636 -0.046851389337113233 -0.73394748035945312 0
		 -1.6184639253570581 -4.1509626321413302 0.61671609555364293 1;
	setAttr ".pm[44]" -type "matrix" 0.71787470010069754 0.19100108051108516 -0.6694583647986867 0
		 -0.15418153999379089 0.98136713764526717 0.11465859703955254 0 0.67888435515960754 0.020907615682650708 0.73394748035945312 0
		 2.9878104596161363 -3.9063461047656265 -0.61671609555364371 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497510865095 0.012292726638408521 -0.5042589866649978 0
		 0.11820591342388151 0.96693328786482735 0.22598092585556875 0 0.49036272165840955 -0.25473300863984571 0.8334599543571658 0
		 -0.31526851927338967 -4.1175003486713404 -0.84111836428203779 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581735119836 0.14817026903880451 -0.50425898666499791 0
		 -0.035601726522438204 0.97348093880572795 0.22598092585556881 0 0.52437016632152489 -0.17429983693304754 0.83345995435716591 0
		 -0.5426611529350891 -4.2561403836399734 -0.84111836428203701 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227675808372 0.54496456709945651 -0.34985229813832852 0
		 0.62286061317250907 0.76461428796600184 -0.16555859143098073 0 0.17727849972552723 -0.3440619293736909 -0.92205950040695339 0
		 -2.7951586638432317 -5.0172514867505065 -0.72188545988463759 1;
	setAttr ".pm[48]" -type "matrix" -0.63784895208083725 0.68611375428328836 -0.34985229813832847 0
		 0.7629672038368267 0.62487710685606335 -0.16555859143098076 0 0.10502266516706038 -0.37252720371871889 -0.92205950040695328 0
		 -4.1298506208874732 -4.2789178953001308 -0.72188545988463737 1;
	setAttr ".pm[49]" -type "matrix" -0.43115002080261616 0.83169286942310305 -0.34985229813832847 0
		 0.90227886845699257 0.39809948045602755 -0.16555859143098073 0 0.0015821181603363223 -0.3870449258308486 -0.92205950040695328 0
		 -5.4553895547094982 -2.9266922506119553 -0.72188545988463804 1;
	setAttr ".pm[50]" -type "matrix" -0.28599064808402525 0.89208335860266452 -0.34985229813832847 0
		 0.95614812432505913 0.24160115304580213 -0.16555859143098073 0 -0.063167345663331723 -0.38185882751499872 -0.92205950040695317 0
		 -6.1336372640080636 -1.9280907294341134 -0.72188545988463826 1;
	setAttr ".pm[51]" -type "matrix" -0.10207340220925795 0.93122735679787572 -0.34985229813832852 0
		 0.98513663511676597 0.04578387220633319 -0.16555859143098076 0 -0.1381550965843944 -0.36155144446819326 -0.92205950040695339 0
		 -6.750844393671346 -0.59181557076226199 -0.72188545988463804 1;
	setAttr ".pm[52]" -type "matrix" 0.23188991289304464 -0.90765105507887078 0.34985229813832852 0
		 0.93832475914076996 0.30354077022173792 0.16555859143098076 0 -0.2564638662304547 0.28988370603986663 0.92205950040695339 0
		 -6.7512693567178932 -1.9036837947667706 0.72188545988463826 1;
	setAttr ".pm[53]" -type "matrix" 0.93511715707163778 -0.056207401982203677 0.34985229813832847 0
		 -0.0026622528471228501 0.98619636240110298 0.16555859143098076 0 -0.35432868210185431 -0.15574807462451479 0.92205950040695339 0
		 -0.34546938704197949 -7.3149787490197635 0.72188545988463826 1;
	setAttr ".pm[54]" -type "matrix" -0.3995512077925496 0.88654287078454452 -0.23323929903130458 0
		 0.91382911845984149 0.40534607056836613 -0.024716499139121474 0 0.07263039726191893 -0.22301637010740805 -0.97210520215545215 0
		 -4.5278240127840492 -3.3954816224779094 -1.022056697587352 1;
	setAttr ".pm[55]" -type "matrix" -0.32480994631015858 0.91656856162830391 -0.23323929903130453 0
		 0.94424078807895984 0.32832671045519651 -0.024716499139121471 0 0.053924325735392298 -0.22826222428665643 -0.97210520215545193 0
		 -5.2848407070967021 -2.9682891700797711 -1.022056697587352 1;
	setAttr ".pm[56]" -type "matrix" -0.20311031532577234 0.95097088766988669 -0.23323929903130458 0
		 0.97886549055744121 0.20300602470381512 -0.024716499139121474 0 0.023844311774627147 -0.23333007679744791 -0.97210520215545215 0
		 -6.0531111548152001 -2.2013311585251061 -1.0220566975873524 1;
	setAttr ".pm[57]" -type "matrix" 0.055141303824235287 -0.9708547090064249 0.23323929903130447 0
		 0.99773223418241641 0.062605778836058751 0.024716499139121471 0 -0.038598257550400639 0.23134746693314248 0.97210520215545215 0
		 -6.8860134976711738 0.39760011084167934 1.0220566975873533 1;
	setAttr ".pm[58]" -type "matrix" 0.28391907621620699 -0.93004805657983181 0.23323929903130441 0
		 0.95438699790408643 0.29754756410014638 0.024716499139121464 0 -0.092387317268987398 0.21558306879286218 0.97210520215545204 0
		 -7.2628020056901921 -1.3645944184337013 1.0220566975873542 1;
	setAttr ".pm[59]" -type "matrix" 0.55092251726407293 -0.80130132244917951 0.23323929903130447 0
		 0.82040361842651 0.57125038078148793 0.024716499139121457 0 -0.15304340183133217 0.17773348896086494 0.97210520215545226 0
		 -6.9115203842823005 -3.614765238507994 1.0220566975873553 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801089765346 -0.52562567444166342 0.2332392990313045 0
		 0.53537164030992179 0.84425487941863231 0.024716499139121471 0 -0.20990504280919794 0.10464869299507418 0.97210520215545226 0
		 -5.4326010597893744 -6.2006164513207258 1.022056697587356 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862487083475 0.0012030759333471891 0.2332392990313045 0
		 -0.0071651614412281605 0.9996688227267202 0.024716499139121488 0 -0.23313231965095885 -0.025705981336483979 0.97210520215545226 0
		 -1.6152690614627854 -8.4165599672621738 1.0220566975873582 1;
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
	rename -uid "E9F63EFD-7F4D-577A-FCE7-7EABE28D1D9C";
	setAttr -s 6 ".wl";
	setAttr ".wl[0:5].w"
		5 36 0.0041777172252331716 37 0.0038887299217255375 47 0.31520427413110597 
		48 0.6259241896017993 49 0.050805089120136038
		5 36 0.02042252844619373 37 0.022486327428135135 47 0.43128439096355525 
		48 0.45704372885038735 49 0.068763024311728552
		5 37 0.0076579212652728643 47 0.09707907253881598 48 0.43374450366478989 
		49 0.40693572015395152 50 0.054582782377169667
		5 36 0.091499976804859606 37 0.14597589943810421 38 0.13883934263823283 
		47 0.31198414866004637 48 0.31170063245875707
		5 37 0.06291018182548315 38 0.060709497010038485 47 0.35822128680355364 
		48 0.37849236839177047 49 0.1396666659691542
		5 47 0.0049493840582670312 48 0.27987272324764906 49 0.59542926221514791 
		50 0.11683662561639285 51 0.0029120048625432041;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 0 0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 0 0.210011846539538 0.045642596473303459 -0.97663287764657492 0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924786964475911 0.69647275897298977 0.63759041424957175 0
		 0.89339606886512057 0.44836933267261597 -0.028432475359386224 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461459 0
		 -3.5395339554045822 -2.4005302806614881 -1.4268590620613972 1;
	setAttr ".pm[32]" -type "matrix" -0.2788948936776629 0.70693339326522631 0.64997139611450505 0
		 0.88853219656263749 0.44672740812313055 -0.10461911155789998 0 -0.36431878067442508 0.54834277629791317 -0.75272307373282876 0
		 -4.0483565879838137 -2.4178888731886135 -1.0785180430682901 1;
	setAttr ".pm[33]" -type "matrix" -0.23031898058193839 0.65282056230089813 0.72164983241239433 0
		 0.83303853881336332 0.51558677386086182 -0.20054194441922935 0 -0.50299101387141465 0.55497350572517279 -0.66257410748362233 0
		 -4.4246285444210187 -2.6889499752129318 -0.58522172147807516 1;
	setAttr ".pm[34]" -type "matrix" -0.43594206856657192 0.59749643679491415 0.67301747441747783 0
		 0.70084734557336581 0.69452627827057267 -0.16262302110831164 0 -0.56459499737127161 0.40078829425147727 -0.72152701414037579 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020182 1;
	setAttr ".pm[35]" -type "matrix" -0.80828667061645454 0.25069033817993197 0.53275417637687206 0
		 0.218196818333519 0.96794042383007695 -0.12442461325951786 0 -0.54686635165540876 0.015674509845052226 -0.83707317671050785 0
		 -1.2782209820434483 -5.4701710369415633 -1.0637098843123738 1;
	setAttr ".pm[36]" -type "matrix" -0.8200474629899539 -0.20903383935798983 0.53275417637687206 0
		 -0.32022389937182455 0.93913533097542623 -0.12442461325951783 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050785 0
		 1.4741587314170379 -5.4790257814298373 -1.063709884312374 1;
	setAttr ".pm[37]" -type "matrix" -0.68115616977266802 -0.58224856304555372 0.44386133331482819 0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048565 0 -0.16426653899654683 -0.4692574321309736 -0.8676485270868276 0
		 3.7155105341486689 -4.2535038943938579 -0.56138920422851657 1;
	setAttr ".pm[38]" -type "matrix" -0.50408143703462227 -0.8031478417612693 0.31757746946426507 0
		 -0.83807469275740265 0.36604707764536526 -0.40452484016049423 0 0.20864494769031885 -0.47006710289224019 -0.85761541764464611 0
		 4.7675519887131355 -2.6983875271677142 0.40050570930127805 1;
	setAttr ".pm[39]" -type "matrix" -0.1388780541691455 -0.97362021444400937 0.18104298963559565 0
		 -0.84422276414869568 0.020829102434949075 -0.53558759599610806 0 0.51768794709103272 -0.22722197630897623 -0.82484505388522267 0
		 5.1314029120475162 -0.54383195128390083 1.106276859770559 1;
	setAttr ".pm[40]" -type "matrix" -0.44544497944150729 0.31790426679360784 -0.83696812809376109 0
		 -0.53604559259280815 0.65406161496897919 0.53372139406810004 0 0.71710103399185043 0.68639659161347066 -0.12093728155217454 0
		 3.5487087479939037 -1.8700671021165944 -2.7925192544727229 1;
	setAttr ".pm[41]" -type "matrix" -0.052113644842615832 -0.12229877356956306 -0.99112419908132576 0
		 -0.1298513400838483 0.98487688501104831 -0.11470026525411003 0 0.99016301561896725 0.12272135655343415 -0.067206183837786523 0
		 1.5808752886267787 -4.2107979269501721 0.02488657865780947 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923410589018 0.15316128048267028 0.8446993714649188 0
		 -0.35222853801336457 0.93486282786315411 0.044345801251914924 0 -0.78288598339814919 -0.32027037833776562 0.53340080779662957 0
		 1.1996854652596876 -4.1723182493855937 0.61489409327925237 1;
	setAttr ".pm[43]" -type "matrix" -0.73333549252294628 0.11850971777536543 0.6694583647986867 0
		 0.055614854265169066 0.99184696103279246 -0.11465859703955252 0 -0.67758840263923636 -0.046851389337113233 -0.73394748035945312 0
		 -1.6184639253570581 -4.1509626321413302 0.61671609555364293 1;
	setAttr ".pm[44]" -type "matrix" 0.71787470010069754 0.19100108051108516 -0.6694583647986867 0
		 -0.15418153999379089 0.98136713764526717 0.11465859703955254 0 0.67888435515960754 0.020907615682650708 0.73394748035945312 0
		 2.9878104596161363 -3.9063461047656265 -0.61671609555364371 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497510865095 0.012292726638408521 -0.5042589866649978 0
		 0.11820591342388151 0.96693328786482735 0.22598092585556875 0 0.49036272165840955 -0.25473300863984571 0.8334599543571658 0
		 -0.31526851927338967 -4.1175003486713404 -0.84111836428203779 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581735119836 0.14817026903880451 -0.50425898666499791 0
		 -0.035601726522438204 0.97348093880572795 0.22598092585556881 0 0.52437016632152489 -0.17429983693304754 0.83345995435716591 0
		 -0.5426611529350891 -4.2561403836399734 -0.84111836428203701 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227675808372 0.54496456709945651 -0.34985229813832852 0
		 0.62286061317250907 0.76461428796600184 -0.16555859143098073 0 0.17727849972552723 -0.3440619293736909 -0.92205950040695339 0
		 -2.7951586638432317 -5.0172514867505065 -0.72188545988463759 1;
	setAttr ".pm[48]" -type "matrix" -0.63784895208083725 0.68611375428328836 -0.34985229813832847 0
		 0.7629672038368267 0.62487710685606335 -0.16555859143098076 0 0.10502266516706038 -0.37252720371871889 -0.92205950040695328 0
		 -4.1298506208874732 -4.2789178953001308 -0.72188545988463737 1;
	setAttr ".pm[49]" -type "matrix" -0.43115002080261616 0.83169286942310305 -0.34985229813832847 0
		 0.90227886845699257 0.39809948045602755 -0.16555859143098073 0 0.0015821181603363223 -0.3870449258308486 -0.92205950040695328 0
		 -5.4553895547094982 -2.9266922506119553 -0.72188545988463804 1;
	setAttr ".pm[50]" -type "matrix" -0.28599064808402525 0.89208335860266452 -0.34985229813832847 0
		 0.95614812432505913 0.24160115304580213 -0.16555859143098073 0 -0.063167345663331723 -0.38185882751499872 -0.92205950040695317 0
		 -6.1336372640080636 -1.9280907294341134 -0.72188545988463826 1;
	setAttr ".pm[51]" -type "matrix" -0.10207340220925795 0.93122735679787572 -0.34985229813832852 0
		 0.98513663511676597 0.04578387220633319 -0.16555859143098076 0 -0.1381550965843944 -0.36155144446819326 -0.92205950040695339 0
		 -6.750844393671346 -0.59181557076226199 -0.72188545988463804 1;
	setAttr ".pm[52]" -type "matrix" 0.23188991289304464 -0.90765105507887078 0.34985229813832852 0
		 0.93832475914076996 0.30354077022173792 0.16555859143098076 0 -0.2564638662304547 0.28988370603986663 0.92205950040695339 0
		 -6.7512693567178932 -1.9036837947667706 0.72188545988463826 1;
	setAttr ".pm[53]" -type "matrix" 0.93511715707163778 -0.056207401982203677 0.34985229813832847 0
		 -0.0026622528471228501 0.98619636240110298 0.16555859143098076 0 -0.35432868210185431 -0.15574807462451479 0.92205950040695339 0
		 -0.34546938704197949 -7.3149787490197635 0.72188545988463826 1;
	setAttr ".pm[54]" -type "matrix" -0.3995512077925496 0.88654287078454452 -0.23323929903130458 0
		 0.91382911845984149 0.40534607056836613 -0.024716499139121474 0 0.07263039726191893 -0.22301637010740805 -0.97210520215545215 0
		 -4.5278240127840492 -3.3954816224779094 -1.022056697587352 1;
	setAttr ".pm[55]" -type "matrix" -0.32480994631015858 0.91656856162830391 -0.23323929903130453 0
		 0.94424078807895984 0.32832671045519651 -0.024716499139121471 0 0.053924325735392298 -0.22826222428665643 -0.97210520215545193 0
		 -5.2848407070967021 -2.9682891700797711 -1.022056697587352 1;
	setAttr ".pm[56]" -type "matrix" -0.20311031532577234 0.95097088766988669 -0.23323929903130458 0
		 0.97886549055744121 0.20300602470381512 -0.024716499139121474 0 0.023844311774627147 -0.23333007679744791 -0.97210520215545215 0
		 -6.0531111548152001 -2.2013311585251061 -1.0220566975873524 1;
	setAttr ".pm[57]" -type "matrix" 0.055141303824235287 -0.9708547090064249 0.23323929903130447 0
		 0.99773223418241641 0.062605778836058751 0.024716499139121471 0 -0.038598257550400639 0.23134746693314248 0.97210520215545215 0
		 -6.8860134976711738 0.39760011084167934 1.0220566975873533 1;
	setAttr ".pm[58]" -type "matrix" 0.28391907621620699 -0.93004805657983181 0.23323929903130441 0
		 0.95438699790408643 0.29754756410014638 0.024716499139121464 0 -0.092387317268987398 0.21558306879286218 0.97210520215545204 0
		 -7.2628020056901921 -1.3645944184337013 1.0220566975873542 1;
	setAttr ".pm[59]" -type "matrix" 0.55092251726407293 -0.80130132244917951 0.23323929903130447 0
		 0.82040361842651 0.57125038078148793 0.024716499139121457 0 -0.15304340183133217 0.17773348896086494 0.97210520215545226 0
		 -6.9115203842823005 -3.614765238507994 1.0220566975873553 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801089765346 -0.52562567444166342 0.2332392990313045 0
		 0.53537164030992179 0.84425487941863231 0.024716499139121471 0 -0.20990504280919794 0.10464869299507418 0.97210520215545226 0
		 -5.4326010597893744 -6.2006164513207258 1.022056697587356 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862487083475 0.0012030759333471891 0.2332392990313045 0
		 -0.0071651614412281605 0.9996688227267202 0.024716499139121488 0 -0.23313231965095885 -0.025705981336483979 0.97210520215545226 0
		 -1.6152690614627854 -8.4165599672621738 1.0220566975873582 1;
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
	rename -uid "3E372429-4C43-7BFD-D476-BE99D28EC383";
	setAttr -s 40 ".wl";
	setAttr ".wl[0:39].w"
		5 35 0.0020972533233912134 36 0.47163874209243872 37 0.035459258976718547 
		47 0.48835471387782237 48 0.002450031729629141
		5 36 0.4038287212417469 37 0.18222464074178971 38 0.006101388827044172 
		47 0.40477780943971253 48 0.0030674397497067098
		5 36 0.37733635721465475 37 0.59002002621176275 38 0.0025652256046798934 
		47 0.029719104178485861 48 0.00035928679041676253
		5 35 0.0031204981397597422 36 0.72437212447261412 37 0.20687153944417438 
		38 0.0023760621111931467 47 0.063259775832258669
		5 35 0.012342260137199686 36 0.80947906260400837 37 0.050807708986328616 
		47 0.12551618637324938 48 0.0018547818992140615
		5 35 0.0058390314943668354 36 0.87482998948213375 37 0.010787079683863526 
		47 0.10752779868942527 48 0.0010161006502106549
		5 35 0.0048961438777023487 36 0.52414408173874572 37 0.021188172834139773 
		47 0.44728718343520218 48 0.0024844181142100975
		5 36 0.0022213555975603479 47 0.21812908715997426 48 0.74721405081621095 
		49 0.03015942335855766 50 0.0022760830676968528
		5 36 0.0027297248022518619 47 0.25708537651295799 48 0.70160673537728402 
		49 0.035926471972542305 50 0.0026516913349639696
		5 36 0.0035277601658315742 47 0.29668868789966252 48 0.6521397319247324 
		49 0.044364642518492217 50 0.0032791774912813349
		5 36 0.004376121319500559 47 0.31080481074903271 48 0.62792302282950563 
		49 0.052800327911903491 50 0.0040957171900577191
		5 36 0.0039395642435584672 47 0.2855210483665328 48 0.65802552759132971 
		49 0.048651103341944432 50 0.0038627564566346148
		5 36 0.00307435933464419 47 0.24611756515012359 48 0.70790240038162644 
		49 0.03973601670692558 50 0.0031696584266802151
		5 36 0.0023406759786179618 47 0.2138649280083405 48 0.74978660397486696 
		49 0.031544364349958588 50 0.0024634276882160256
		5 48 0.0026832562463287818 49 0.046748344515217422 50 0.84539808904573466 
		51 0.099710662160629723 52 0.0054596480320894675
		5 48 0.0027185575168854276 49 0.04027719892546875 50 0.77722349887275133 
		51 0.17167431211495746 52 0.0081064325699369919
		5 48 0.0021870104221036108 49 0.029378397645982841 50 0.71801767160798646 
		51 0.241233011399136 52 0.0091839089247910573
		5 48 0.0018796668280031165 49 0.024724600122059678 50 0.69971982461765503 
		51 0.26476531392855257 52 0.0089105945037296058
		5 48 0.0019924683964026545 49 0.027777378063580802 50 0.73750924025617137 
		51 0.2246423046322886 52 0.0080786086515565545
		5 48 0.002169480494526485 49 0.034674141726910468 50 0.81361394081319338 
		51 0.14338560242823833 52 0.0061568345371311875
		5 48 0.0020881542011309167 49 0.039211912231923683 50 0.87460555273640972 
		51 0.080002075595816236 52 0.0040923052347194462
		5 48 0.0021804111209356384 49 0.042985258695324297 50 0.88545424510451876 
		51 0.065691762251697025 52 0.0036883228275243918
		5 49 0.001194265355240728 50 0.026313092984150386 51 0.429799013618472 
		52 0.52475435807163262 53 0.017939269970504296
		5 49 0.00064065152745499234 50 0.012643608550801683 51 0.38431552944026537 
		52 0.58610964229897389 53 0.016290568182503976
		5 49 0.00024505282298532534 50 0.0045816126101564415 51 0.29305666944790065 
		52 0.69172664311189602 53 0.01039002200706168
		5 49 0.00010463293128287262 50 0.0019614719479758495 51 0.21143520286274267 
		52 0.78098979108952804 53 0.0055089011684705449
		5 49 0.00013600080948023366 50 0.0026987090982133516 51 0.26551409668453713 
		52 0.72599618137441324 53 0.0056550120333561339
		5 49 0.00036858031633313923 50 0.0080367333810175395 51 0.38222448057245056 
		52 0.60030476318991621 53 0.0090654425402825096
		5 49 0.00088537308282081873 50 0.02127263459968325 51 0.43669257986710602 
		52 0.52822200447696532 53 0.01292740797342464
		5 49 0.0013447744485690812 50 0.032762326512440113 51 0.44888728089944513 
		52 0.5011187188383911 53 0.015886899301154576
		5 47 0.0033508876563011891 48 0.22899865703635211 49 0.69514723286768487 
		50 0.070958230786536444 51 0.001544991653125441
		5 47 0.0033077168289811663 48 0.22550083857771885 49 0.70439255036387061 
		50 0.06536138424007247 51 0.0014375099893569462
		5 47 0.0042429031114483255 48 0.25266264050744686 49 0.660250226587769 
		50 0.080907158264216184 51 0.001937071529119556
		5 47 0.0052467255037655092 48 0.27736127833097141 49 0.61137954225123725 
		50 0.1033307334287933 51 0.002681720485232597
		5 47 0.0053884163644403026 48 0.28461143769163666 49 0.59054750223282182 
		50 0.11641078160869803 51 0.0030418621024032515
		5 47 0.0044676010501698993 48 0.2686921669775672 49 0.61685445491127266 
		50 0.10743798359283514 51 0.0025477934681550742
		5 47 0.0039383031587491056 48 0.25093628925721018 49 0.65303536839753262 
		50 0.090048489922381736 51 0.0020415492641264513
		5 36 0.0041777172252331716 37 0.0038887299217255375 47 0.31520427413110597 
		48 0.6259241896017993 49 0.050805089120136038
		5 47 0.0049493471996258278 48 0.27987135333440399 49 0.5954304422827329 
		50 0.11683686144279434 51 0.0029119957404430087
		5 35 5.543736176466999e-05 36 0.36298066457039002 37 0.63382261513183169 
		38 0.00032525291833773788 47 0.0028160300176759091;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 0 0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 0 0.210011846539538 0.045642596473303459 -0.97663287764657492 0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924786964475911 0.69647275897298977 0.63759041424957175 0
		 0.89339606886512057 0.44836933267261597 -0.028432475359386224 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461459 0
		 -3.5395339554045822 -2.4005302806614881 -1.4268590620613972 1;
	setAttr ".pm[32]" -type "matrix" -0.2788948936776629 0.70693339326522631 0.64997139611450505 0
		 0.88853219656263749 0.44672740812313055 -0.10461911155789998 0 -0.36431878067442508 0.54834277629791317 -0.75272307373282876 0
		 -4.0483565879838137 -2.4178888731886135 -1.0785180430682901 1;
	setAttr ".pm[33]" -type "matrix" -0.23031898058193839 0.65282056230089813 0.72164983241239433 0
		 0.83303853881336332 0.51558677386086182 -0.20054194441922935 0 -0.50299101387141465 0.55497350572517279 -0.66257410748362233 0
		 -4.4246285444210187 -2.6889499752129318 -0.58522172147807516 1;
	setAttr ".pm[34]" -type "matrix" -0.43594206856657192 0.59749643679491415 0.67301747441747783 0
		 0.70084734557336581 0.69452627827057267 -0.16262302110831164 0 -0.56459499737127161 0.40078829425147727 -0.72152701414037579 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020182 1;
	setAttr ".pm[35]" -type "matrix" -0.80828667061645454 0.25069033817993197 0.53275417637687206 0
		 0.218196818333519 0.96794042383007695 -0.12442461325951786 0 -0.54686635165540876 0.015674509845052226 -0.83707317671050785 0
		 -1.2782209820434483 -5.4701710369415633 -1.0637098843123738 1;
	setAttr ".pm[36]" -type "matrix" -0.8200474629899539 -0.20903383935798983 0.53275417637687206 0
		 -0.32022389937182455 0.93913533097542623 -0.12442461325951783 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050785 0
		 1.4741587314170379 -5.4790257814298373 -1.063709884312374 1;
	setAttr ".pm[37]" -type "matrix" -0.68115616977266802 -0.58224856304555372 0.44386133331482819 0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048565 0 -0.16426653899654683 -0.4692574321309736 -0.8676485270868276 0
		 3.7155105341486689 -4.2535038943938579 -0.56138920422851657 1;
	setAttr ".pm[38]" -type "matrix" -0.50408143703462227 -0.8031478417612693 0.31757746946426507 0
		 -0.83807469275740265 0.36604707764536526 -0.40452484016049423 0 0.20864494769031885 -0.47006710289224019 -0.85761541764464611 0
		 4.7675519887131355 -2.6983875271677142 0.40050570930127805 1;
	setAttr ".pm[39]" -type "matrix" -0.1388780541691455 -0.97362021444400937 0.18104298963559565 0
		 -0.84422276414869568 0.020829102434949075 -0.53558759599610806 0 0.51768794709103272 -0.22722197630897623 -0.82484505388522267 0
		 5.1314029120475162 -0.54383195128390083 1.106276859770559 1;
	setAttr ".pm[40]" -type "matrix" -0.44544497944150729 0.31790426679360784 -0.83696812809376109 0
		 -0.53604559259280815 0.65406161496897919 0.53372139406810004 0 0.71710103399185043 0.68639659161347066 -0.12093728155217454 0
		 3.5487087479939037 -1.8700671021165944 -2.7925192544727229 1;
	setAttr ".pm[41]" -type "matrix" -0.052113644842615832 -0.12229877356956306 -0.99112419908132576 0
		 -0.1298513400838483 0.98487688501104831 -0.11470026525411003 0 0.99016301561896725 0.12272135655343415 -0.067206183837786523 0
		 1.5808752886267787 -4.2107979269501721 0.02488657865780947 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923410589018 0.15316128048267028 0.8446993714649188 0
		 -0.35222853801336457 0.93486282786315411 0.044345801251914924 0 -0.78288598339814919 -0.32027037833776562 0.53340080779662957 0
		 1.1996854652596876 -4.1723182493855937 0.61489409327925237 1;
	setAttr ".pm[43]" -type "matrix" -0.73333549252294628 0.11850971777536543 0.6694583647986867 0
		 0.055614854265169066 0.99184696103279246 -0.11465859703955252 0 -0.67758840263923636 -0.046851389337113233 -0.73394748035945312 0
		 -1.6184639253570581 -4.1509626321413302 0.61671609555364293 1;
	setAttr ".pm[44]" -type "matrix" 0.71787470010069754 0.19100108051108516 -0.6694583647986867 0
		 -0.15418153999379089 0.98136713764526717 0.11465859703955254 0 0.67888435515960754 0.020907615682650708 0.73394748035945312 0
		 2.9878104596161363 -3.9063461047656265 -0.61671609555364371 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497510865095 0.012292726638408521 -0.5042589866649978 0
		 0.11820591342388151 0.96693328786482735 0.22598092585556875 0 0.49036272165840955 -0.25473300863984571 0.8334599543571658 0
		 -0.31526851927338967 -4.1175003486713404 -0.84111836428203779 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581735119836 0.14817026903880451 -0.50425898666499791 0
		 -0.035601726522438204 0.97348093880572795 0.22598092585556881 0 0.52437016632152489 -0.17429983693304754 0.83345995435716591 0
		 -0.5426611529350891 -4.2561403836399734 -0.84111836428203701 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227675808372 0.54496456709945651 -0.34985229813832852 0
		 0.62286061317250907 0.76461428796600184 -0.16555859143098073 0 0.17727849972552723 -0.3440619293736909 -0.92205950040695339 0
		 -2.7951586638432317 -5.0172514867505065 -0.72188545988463759 1;
	setAttr ".pm[48]" -type "matrix" -0.63784895208083725 0.68611375428328836 -0.34985229813832847 0
		 0.7629672038368267 0.62487710685606335 -0.16555859143098076 0 0.10502266516706038 -0.37252720371871889 -0.92205950040695328 0
		 -4.1298506208874732 -4.2789178953001308 -0.72188545988463737 1;
	setAttr ".pm[49]" -type "matrix" -0.43115002080261616 0.83169286942310305 -0.34985229813832847 0
		 0.90227886845699257 0.39809948045602755 -0.16555859143098073 0 0.0015821181603363223 -0.3870449258308486 -0.92205950040695328 0
		 -5.4553895547094982 -2.9266922506119553 -0.72188545988463804 1;
	setAttr ".pm[50]" -type "matrix" -0.28599064808402525 0.89208335860266452 -0.34985229813832847 0
		 0.95614812432505913 0.24160115304580213 -0.16555859143098073 0 -0.063167345663331723 -0.38185882751499872 -0.92205950040695317 0
		 -6.1336372640080636 -1.9280907294341134 -0.72188545988463826 1;
	setAttr ".pm[51]" -type "matrix" -0.10207340220925795 0.93122735679787572 -0.34985229813832852 0
		 0.98513663511676597 0.04578387220633319 -0.16555859143098076 0 -0.1381550965843944 -0.36155144446819326 -0.92205950040695339 0
		 -6.750844393671346 -0.59181557076226199 -0.72188545988463804 1;
	setAttr ".pm[52]" -type "matrix" 0.23188991289304464 -0.90765105507887078 0.34985229813832852 0
		 0.93832475914076996 0.30354077022173792 0.16555859143098076 0 -0.2564638662304547 0.28988370603986663 0.92205950040695339 0
		 -6.7512693567178932 -1.9036837947667706 0.72188545988463826 1;
	setAttr ".pm[53]" -type "matrix" 0.93511715707163778 -0.056207401982203677 0.34985229813832847 0
		 -0.0026622528471228501 0.98619636240110298 0.16555859143098076 0 -0.35432868210185431 -0.15574807462451479 0.92205950040695339 0
		 -0.34546938704197949 -7.3149787490197635 0.72188545988463826 1;
	setAttr ".pm[54]" -type "matrix" -0.3995512077925496 0.88654287078454452 -0.23323929903130458 0
		 0.91382911845984149 0.40534607056836613 -0.024716499139121474 0 0.07263039726191893 -0.22301637010740805 -0.97210520215545215 0
		 -4.5278240127840492 -3.3954816224779094 -1.022056697587352 1;
	setAttr ".pm[55]" -type "matrix" -0.32480994631015858 0.91656856162830391 -0.23323929903130453 0
		 0.94424078807895984 0.32832671045519651 -0.024716499139121471 0 0.053924325735392298 -0.22826222428665643 -0.97210520215545193 0
		 -5.2848407070967021 -2.9682891700797711 -1.022056697587352 1;
	setAttr ".pm[56]" -type "matrix" -0.20311031532577234 0.95097088766988669 -0.23323929903130458 0
		 0.97886549055744121 0.20300602470381512 -0.024716499139121474 0 0.023844311774627147 -0.23333007679744791 -0.97210520215545215 0
		 -6.0531111548152001 -2.2013311585251061 -1.0220566975873524 1;
	setAttr ".pm[57]" -type "matrix" 0.055141303824235287 -0.9708547090064249 0.23323929903130447 0
		 0.99773223418241641 0.062605778836058751 0.024716499139121471 0 -0.038598257550400639 0.23134746693314248 0.97210520215545215 0
		 -6.8860134976711738 0.39760011084167934 1.0220566975873533 1;
	setAttr ".pm[58]" -type "matrix" 0.28391907621620699 -0.93004805657983181 0.23323929903130441 0
		 0.95438699790408643 0.29754756410014638 0.024716499139121464 0 -0.092387317268987398 0.21558306879286218 0.97210520215545204 0
		 -7.2628020056901921 -1.3645944184337013 1.0220566975873542 1;
	setAttr ".pm[59]" -type "matrix" 0.55092251726407293 -0.80130132244917951 0.23323929903130447 0
		 0.82040361842651 0.57125038078148793 0.024716499139121457 0 -0.15304340183133217 0.17773348896086494 0.97210520215545226 0
		 -6.9115203842823005 -3.614765238507994 1.0220566975873553 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801089765346 -0.52562567444166342 0.2332392990313045 0
		 0.53537164030992179 0.84425487941863231 0.024716499139121471 0 -0.20990504280919794 0.10464869299507418 0.97210520215545226 0
		 -5.4326010597893744 -6.2006164513207258 1.022056697587356 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862487083475 0.0012030759333471891 0.2332392990313045 0
		 -0.0071651614412281605 0.9996688227267202 0.024716499139121488 0 -0.23313231965095885 -0.025705981336483979 0.97210520215545226 0
		 -1.6152690614627854 -8.4165599672621738 1.0220566975873582 1;
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
	rename -uid "71B8D511-6B49-81D8-4C53-C79BB26CEB24";
	setAttr -s 30 ".wl";
	setAttr ".wl[0:29].w"
		5 48 0.0021870176553797646 49 0.029378443733264759 50 0.71801666445901613 
		51 0.24123391453809476 52 0.0091839596142445218
		5 48 0.0018796494559575477 49 0.024724319167063549 50 0.69971896661885347 
		51 0.26476647756043614 52 0.0089105871976893833
		5 49 0.0004421135181730765 50 0.017053244597907889 51 0.51051120262818872 
		52 0.46943679615979522 53 0.0025566430959352024
		5 49 0.010243932228476934 50 0.15371923832780676 51 0.41735376508692978 
		52 0.37949809292527953 53 0.039184971431507051
		5 48 0.0019924467015144795 49 0.027777146869989999 50 0.73751090191534141 
		51 0.22464098976607244 52 0.0080785147470817196
		5 49 0.011820074528716759 50 0.17444492632667183 51 0.41488837197306644 
		52 0.36124072229900578 53 0.03760590487253921
		5 49 0.0042795482231258349 50 0.39086495705290747 51 0.53962249291126096 
		52 0.06298261124925647 53 0.0022503905634493732
		5 49 0.0016169208656970878 50 0.37429449756907035 51 0.59304447023052931 
		52 0.030267551670157378 53 0.00077655966454588719
		5 49 0.0046800613336127686 50 0.37183208920434502 51 0.54261949585494818 
		52 0.078095908398158623 53 0.0027724452089354632
		5 48 0.0017048577137959947 49 0.023550523068976356 50 0.73460087444437527 
		51 0.23259739773744359 52 0.0075463470354088244
		5 49 0.001694504739373069 50 0.3740153447868147 51 0.59225857692732542 
		52 0.031211153341635902 53 0.00082042020485099054
		5 49 0.0014233158842763046 50 0.044517989605985339 51 0.49076686664093327 
		52 0.45591910478285991 53 0.0073727230859451671
		5 48 0.0017701038862725593 49 0.023797752188780965 50 0.71857055050833285 
		51 0.24768266592658952 52 0.0081789274900241037
		5 49 0.0018558462332541401 50 0.36633520663297475 51 0.59467249699565017 
		52 0.03619121964464278 53 0.00094523049347827227
		5 49 0.0011481395288744187 50 0.03590530106665199 51 0.48968945922048446 
		52 0.46666615763023894 53 0.0065909425537502876
		5 49 0.020668470101136559 50 0.098447147696472476 51 0.24485939177210236 
		52 0.35839162803403513 53 0.27763336239625358
		5 49 0.0019169398186332969 50 0.018272154884886718 51 0.18819255339125468 
		52 0.58209287991450542 53 0.20952547199071986
		5 49 0.00035282210930007944 50 0.0044191744833625892 51 0.12599446288688917 
		52 0.80807132674742155 53 0.061162213773026622
		5 49 0.0030506284483740728 50 0.02843082530790517 51 0.24800156910794938 
		52 0.52161386103995044 53 0.19890311609582106
		5 50 0.11163401075319668 51 0.252975717433993 52 0.33772781420173653 
		53 0.2514511614489473 57 0.046211296162126457
		5 49 0.0021026486579029473 50 0.0097522495088543538 51 0.039085939539008421 
		52 0.47452958114711713 53 0.47452958114711713
		5 49 0.00016836438689775556 50 0.00094955477255046232 51 0.0055964890271217411 
		52 0.49664279590671501 53 0.49664279590671501
		5 49 2.518514178610526e-05 50 0.00015253396534980262 51 0.0010444878624907017 
		52 0.49938889651518664 53 0.49938889651518664
		5 50 0.0018678560711140996 51 0.010756243622867739 52 0.49351233757515961 
		53 0.49351233757515961 57 0.00035122515569897974
		5 50 0.014593711725852405 51 0.053640233403289626 52 0.46173239576645086 
		53 0.46173239576645064 57 0.0083012633379564923
		5 50 0.012643046388669008 51 0.038498801864981322 52 0.4704482325978539 
		53 0.4704482325978539 57 0.0079616865506418298
		5 50 0.013486524416592555 51 0.040423434695423324 52 0.46833704518682062 
		53 0.46833704518682062 57 0.0094159505143428905
		5 50 0.013557149654520373 51 0.040612148881578602 52 0.4679994864750317 
		53 0.46799948647503192 57 0.0098317285138373092
		5 50 0.013524905493985344 51 0.040533415370800817 52 0.46790530165299571 
		53 0.46790530165299571 57 0.010131075829222501
		5 50 0.013225723517050416 51 0.039874011708618859 52 0.46838190625462672 
		53 0.46838190625462672 57 0.010136452265077331;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 0 0.92136416095832874 0.38870050540429557 0 0
		 0 0 1 0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.01272829523386056 0.99991782735513501 -0.0015261185493631111 0
		 0.99280702824109124 0.012819459325065998 0.11903724685032832 0 0.11904702925958592 1.0668549377257371e-16 -0.99288861652476801 0
		 -0.90795101870048123 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513466 0.91862659735055907 -0.041563650809936688 0
		 0.89526386431128202 0.39248175502475213 0.21085702556737571 0 0.210011846539538 0.045642596473303459 -0.97663287764657492 0
		 -0.37507697621182812 -2.8657604802815317 -0.94611761528610527 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402901 0.94454476507935081 0.045683164274527482 0
		 0.94422144490049709 0.32697288226068955 -0.039173935928819348 0 -0.051938692002751162 0.030396069274366264 -0.99818758319551959 0
		 -1.529759685058268 -2.7773530357943357 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790589 0.99329326174337507 0.045683164274527475 0
		 0.99337604742855179 0.10802514123606749 -0.039173935928819348 0 -0.043846136866929411 0.041219716594552321 -0.99818758319551948 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810493 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885173 0.99890059027644984 0.045683164274527475 0
		 0.9991565317501071 0.012313724251499937 -0.039173935928819341 0 -0.039693397610562127 0.045232542935573931 -0.99818758319551948 0
		 -3.491231817984862 -1.9040448117726041 -0.56315261966810504 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871758 -0.97790201180662828 -0.091812310658711968 0
		 0.96088145788389723 0.20231395106606306 -0.18914515351696132 0 0.20354033747357878 -0.052694596578665993 0.97764748785671929 0
		 -4.1608222065879756 0.98034715670107331 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.84925661410204911 -0.40332677146099277 0
		 0.89689896658620172 0.42225370977580395 -0.13143077385899601 0 0.28192467949760508 -0.31696215544524414 0.90556803560289068 0
		 -4.6827584700038951 -0.43291834424742026 1.8868280135693327 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143814 -0.47572266972118687 0
		 0.74200082470018758 0.64087873460052991 -0.19674659763529503 0 0.44735243757901605 -0.2547490505572706 0.85730899787199377 0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547862 -0.45027497011225109 -0.47572266972118682 0
		 0.4075318385356253 0.89174468145243668 -0.19674659763529498 0 0.51281322894014214 -0.045209229054513779 0.85730899787199388 0
		 -3.7930210190858702 -3.6363074555288435 2.3527934785693616 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988814 -0.60770287165339076 0
		 -0.15684837943322547 0.97734058610779639 -0.14214065082037372 0 0.58840109184103562 0.20806465329722429 0.78134067804548835 0
		 -1.2358328313690479 -5.3627024397852328 2.4055843427903008 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304338 0.42405058758597697 -0.53977069894956753 0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867543 0.1857344468609074 0.83774129179212109 0
		 0.19681728127624393 -5.9805478664821452 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348487 0.49094017626205771 -0.60972944210779878 0
		 -0.5253983994062138 0.83932464881653157 0.13960893879116207 0 0.58030058688811992 0.23347778742481173 0.78021750277503954 0
		 0.47614274721700167 -5.9613449000199887 0.95798160440020319 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516272 0.60280760005635925 -0.6533594119436904 0
		 -0.66368542414675358 0.72082410497382143 0.19983560109207882 0 0.5914196324406692 0.34210467258279464 0.73019669361122352 0
		 1.144151608410573 -5.8141102579502961 0.85898842630906791 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387931 -0.10503749339307376 -0.91693018807666549 0
		 0.17781968135064363 0.98332967287429884 -0.037985725862222479 0 0.90563458731928081 -0.14842465909216199 0.39723559108470141 0
		 -3.0698135514498928 -3.9119159816185105 3.2206463961358018 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042275 0.077623837547557833 -0.38340119123536726 0
		 0.20793806673474058 0.92724908623729174 -0.31140149722621119 0 0.33133622500252979 -0.36631089516488308 -0.86950137095037139 0
		 1.3350913447026547 -3.8738355210740298 3.8541836841977988 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364858 -0.094924216888717661 0.3834011912353672 0
		 -0.031825581119802479 0.94974535529880899 0.3114014972262113 0 -0.39369304385399284 -0.29828367896417524 0.86950137095037128 0
		 -0.78530619882558816 -3.793973291056854 -3.8541836841977988 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071699 -0.39002924497921798 0.45212447070577183 0
		 0.24185728369770265 0.90452625422546062 0.35119411973896519 0 -0.54593443129409047 -0.17236427552657005 0.8199061856394303 0
		 -4.4547110826954057 -2.2284950952224629 -4.3922481294192028 1;
	setAttr ".pm[18]" -type "matrix" 0.88060096981426983 -0.14186400160433213 0.45212447070577172 0
		 -0.029550252819743203 0.93583624252273023 0.35119411973896514 0 -0.47293626898394842 -0.32262227485054978 0.81990618563943019 0
		 -4.8264647244913883 -3.7828002607320319 -4.392248129419202 1;
	setAttr ".pm[19]" -type "matrix" -0.18711210788999577 0.97868126903566566 0.084687854617426075 0
		 0.98233856642247463 0.18641547981631759 0.016131019927128887 0 -6.2450045135165092e-17 0.086210454839257891 -0.99627694818078039 0
		 -4.3282792426751149 -2.3280719542924309 -0.93976396749077307 1;
	setAttr ".pm[20]" -type "matrix" -0.025586512480230219 0.99607896155846865 0.084687854617426075 0
		 0.9995744423471653 0.024304822617412715 0.016131019927128887 0 0.014009446293567587 0.085064551595475837 -0.99627694818078039 0
		 -5.1114271395825899 -1.5176225073931979 -0.93976396749077318 1;
	setAttr ".pm[21]" -type "matrix" 0.12573873783903602 -0.98844207573683585 -0.084687854617426214 0
		 0.99170280777953446 0.12753560772701192 -0.016131019927128874 0 0.026745295826253668 -0.081956889123233095 0.99627694818078039 0
		 -5.8025904123281382 0.64527129967434804 0.9397639674907734 1;
	setAttr ".pm[22]" -type "matrix" 0.17187175366399762 -0.98147239776407391 -0.0846878546174262 0
		 0.98464544022727529 0.17381929477404309 -0.016131019927128867 0 0.030552533971786807 -0.08061504320841463 0.99627694818078039 0
		 -6.2061088228147003 0.35514083155927778 0.93976396749077307 1;
	setAttr ".pm[23]" -type "matrix" 0.30029718820419721 -0.95007871570567837 -0.0846878546174262 0
		 0.95296599024721551 0.30264766912741009 -0.016131019927128867 0 0.040956320498754188 -0.075860545310425187 0.99627694818078016 0
		 -6.5999894158067711 -0.52324567137980615 0.93976396749077318 1;
	setAttr ".pm[24]" -type "matrix" 0.48547138306980431 -0.87014108252661515 -0.0846878546174262 0
		 0.87249586792866696 0.48835514806697022 -0.016131019927128867 0 0.055394012922817419 -0.066058654663098321 0.99627694818078028 0
		 -6.8143607787533966 -1.9351626750519244 0.93976396749077318 1;
	setAttr ".pm[25]" -type "matrix" 0.65643985667802773 -0.74960968633338054 -0.084687854617426228 0
		 0.75131051073919941 0.65975170075484757 -0.016131019927128856 0 0.067964924904938703 -0.053037830896990795 0.9962769481807805 0
		 -6.5941431072021688 -3.386507358511655 0.93976396749077351 1;
	setAttr ".pm[26]" -type "matrix" 0.85498017293203965 -0.51169998160386787 -0.084687854617426228 0
		 0.51230114697347495 0.85865436876881551 -0.016131019927128853 0 0.080971838948874719 -0.029593982848363665 0.9962769481807805 0
		 -5.5955977491721693 -5.3649287584103416 0.93976396749077362 1;
	setAttr ".pm[27]" -type "matrix" 0.99475873398428527 -0.057297717600968905 -0.084687854617426186 0
		 0.056128005753766246 0.99829326210598845 -0.016131019927128853 0 0.085467585271188334 0.011293112569344826 0.99627694818078028 0
		 -2.8439252901998855 -7.5410362029459916 0.93976396749077373 1;
	setAttr ".pm[28]" -type "matrix" 0.83281604353067606 0.54703327587835959 -0.0846878546174262 0
		 -0.55007954234320744 0.83495645832079057 -0.016131019927128849 0 0.061886466480155888 0.060019228503807732 0.99627694818078028 0
		 1.7787519388906077 -8.071856811873829 0.93976396749077407 1;
	setAttr ".pm[29]" -type "matrix" 0.51953044338016718 0.850244721054771 -0.084687854617426214 0
		 -0.85391324090545595 0.52016532679759753 -0.016131019927128853 0 0.030336371034590436 0.08069663633661199 0.99627694818078028 0
		 4.5806205914476497 -6.763591333470357 0.93976396749077429 1;
	setAttr ".pm[30]" -type "matrix" 0.99544603067991633 -0.043762624280291047 -0.084687854617426214 0
		 0.042544947229704352 0.99896432251674172 -0.016131019927128856 0 0.085306081077622317 0.012454519451583627 0.99627694818078028 0
		 -4.0307955152116817 -6.6920422254437639 0.93976396749077407 1;
	setAttr ".pm[31]" -type "matrix" -0.32924786964475911 0.69647275897298977 0.63759041424957175 0
		 0.89339606886512057 0.44836933267261597 -0.028432475359386224 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461459 0
		 -3.5395339554045822 -2.4005302806614881 -1.4268590620613972 1;
	setAttr ".pm[32]" -type "matrix" -0.2788948936776629 0.70693339326522631 0.64997139611450505 0
		 0.88853219656263749 0.44672740812313055 -0.10461911155789998 0 -0.36431878067442508 0.54834277629791317 -0.75272307373282876 0
		 -4.0483565879838137 -2.4178888731886135 -1.0785180430682901 1;
	setAttr ".pm[33]" -type "matrix" -0.23031898058193839 0.65282056230089813 0.72164983241239433 0
		 0.83303853881336332 0.51558677386086182 -0.20054194441922935 0 -0.50299101387141465 0.55497350572517279 -0.66257410748362233 0
		 -4.4246285444210187 -2.6889499752129318 -0.58522172147807516 1;
	setAttr ".pm[34]" -type "matrix" -0.43594206856657192 0.59749643679491415 0.67301747441747783 0
		 0.70084734557336581 0.69452627827057267 -0.16262302110831164 0 -0.56459499737127161 0.40078829425147727 -0.72152701414037579 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020182 1;
	setAttr ".pm[35]" -type "matrix" -0.80828667061645454 0.25069033817993197 0.53275417637687206 0
		 0.218196818333519 0.96794042383007695 -0.12442461325951786 0 -0.54686635165540876 0.015674509845052226 -0.83707317671050785 0
		 -1.2782209820434483 -5.4701710369415633 -1.0637098843123738 1;
	setAttr ".pm[36]" -type "matrix" -0.8200474629899539 -0.20903383935798983 0.53275417637687206 0
		 -0.32022389937182455 0.93913533097542623 -0.12442461325951783 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050785 0
		 1.4741587314170379 -5.4790257814298373 -1.063709884312374 1;
	setAttr ".pm[37]" -type "matrix" -0.68115616977266802 -0.58224856304555372 0.44386133331482819 0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048565 0 -0.16426653899654683 -0.4692574321309736 -0.8676485270868276 0
		 3.7155105341486689 -4.2535038943938579 -0.56138920422851657 1;
	setAttr ".pm[38]" -type "matrix" -0.50408143703462227 -0.8031478417612693 0.31757746946426507 0
		 -0.83807469275740265 0.36604707764536526 -0.40452484016049423 0 0.20864494769031885 -0.47006710289224019 -0.85761541764464611 0
		 4.7675519887131355 -2.6983875271677142 0.40050570930127805 1;
	setAttr ".pm[39]" -type "matrix" -0.1388780541691455 -0.97362021444400937 0.18104298963559565 0
		 -0.84422276414869568 0.020829102434949075 -0.53558759599610806 0 0.51768794709103272 -0.22722197630897623 -0.82484505388522267 0
		 5.1314029120475162 -0.54383195128390083 1.106276859770559 1;
	setAttr ".pm[40]" -type "matrix" -0.44544497944150729 0.31790426679360784 -0.83696812809376109 0
		 -0.53604559259280815 0.65406161496897919 0.53372139406810004 0 0.71710103399185043 0.68639659161347066 -0.12093728155217454 0
		 3.5487087479939037 -1.8700671021165944 -2.7925192544727229 1;
	setAttr ".pm[41]" -type "matrix" -0.052113644842615832 -0.12229877356956306 -0.99112419908132576 0
		 -0.1298513400838483 0.98487688501104831 -0.11470026525411003 0 0.99016301561896725 0.12272135655343415 -0.067206183837786523 0
		 1.5808752886267787 -4.2107979269501721 0.02488657865780947 1;
	setAttr ".pm[42]" -type "matrix" 0.51285923410589018 0.15316128048267028 0.8446993714649188 0
		 -0.35222853801336457 0.93486282786315411 0.044345801251914924 0 -0.78288598339814919 -0.32027037833776562 0.53340080779662957 0
		 1.1996854652596876 -4.1723182493855937 0.61489409327925237 1;
	setAttr ".pm[43]" -type "matrix" -0.73333549252294628 0.11850971777536543 0.6694583647986867 0
		 0.055614854265169066 0.99184696103279246 -0.11465859703955252 0 -0.67758840263923636 -0.046851389337113233 -0.73394748035945312 0
		 -1.6184639253570581 -4.1509626321413302 0.61671609555364293 1;
	setAttr ".pm[44]" -type "matrix" 0.71787470010069754 0.19100108051108516 -0.6694583647986867 0
		 -0.15418153999379089 0.98136713764526717 0.11465859703955254 0 0.67888435515960754 0.020907615682650708 0.73394748035945312 0
		 2.9878104596161363 -3.9063461047656265 -0.61671609555364371 1;
	setAttr ".pm[45]" -type "matrix" 0.86346497510865095 0.012292726638408521 -0.5042589866649978 0
		 0.11820591342388151 0.96693328786482735 0.22598092585556875 0 0.49036272165840955 -0.25473300863984571 0.8334599543571658 0
		 -0.31526851927338967 -4.1175003486713404 -0.84111836428203779 1;
	setAttr ".pm[46]" -type "matrix" 0.85074581735119836 0.14817026903880451 -0.50425898666499791 0
		 -0.035601726522438204 0.97348093880572795 0.22598092585556881 0 0.52437016632152489 -0.17429983693304754 0.83345995435716591 0
		 -0.5426611529350891 -4.2561403836399734 -0.84111836428203701 1;
	setAttr ".pm[47]" -type "matrix" -0.76198227675808372 0.54496456709945651 -0.34985229813832852 0
		 0.62286061317250907 0.76461428796600184 -0.16555859143098073 0 0.17727849972552723 -0.3440619293736909 -0.92205950040695339 0
		 -2.7951586638432317 -5.0172514867505065 -0.72188545988463759 1;
	setAttr ".pm[48]" -type "matrix" -0.63784895208083725 0.68611375428328836 -0.34985229813832847 0
		 0.7629672038368267 0.62487710685606335 -0.16555859143098076 0 0.10502266516706038 -0.37252720371871889 -0.92205950040695328 0
		 -4.1298506208874732 -4.2789178953001308 -0.72188545988463737 1;
	setAttr ".pm[49]" -type "matrix" -0.43115002080261616 0.83169286942310305 -0.34985229813832847 0
		 0.90227886845699257 0.39809948045602755 -0.16555859143098073 0 0.0015821181603363223 -0.3870449258308486 -0.92205950040695328 0
		 -5.4553895547094982 -2.9266922506119553 -0.72188545988463804 1;
	setAttr ".pm[50]" -type "matrix" -0.28599064808402525 0.89208335860266452 -0.34985229813832847 0
		 0.95614812432505913 0.24160115304580213 -0.16555859143098073 0 -0.063167345663331723 -0.38185882751499872 -0.92205950040695317 0
		 -6.1336372640080636 -1.9280907294341134 -0.72188545988463826 1;
	setAttr ".pm[51]" -type "matrix" -0.10207340220925795 0.93122735679787572 -0.34985229813832852 0
		 0.98513663511676597 0.04578387220633319 -0.16555859143098076 0 -0.1381550965843944 -0.36155144446819326 -0.92205950040695339 0
		 -6.750844393671346 -0.59181557076226199 -0.72188545988463804 1;
	setAttr ".pm[52]" -type "matrix" 0.23188991289304464 -0.90765105507887078 0.34985229813832852 0
		 0.93832475914076996 0.30354077022173792 0.16555859143098076 0 -0.2564638662304547 0.28988370603986663 0.92205950040695339 0
		 -6.7512693567178932 -1.9036837947667706 0.72188545988463826 1;
	setAttr ".pm[53]" -type "matrix" 0.93511715707163778 -0.056207401982203677 0.34985229813832847 0
		 -0.0026622528471228501 0.98619636240110298 0.16555859143098076 0 -0.35432868210185431 -0.15574807462451479 0.92205950040695339 0
		 -0.34546938704197949 -7.3149787490197635 0.72188545988463826 1;
	setAttr ".pm[54]" -type "matrix" -0.3995512077925496 0.88654287078454452 -0.23323929903130458 0
		 0.91382911845984149 0.40534607056836613 -0.024716499139121474 0 0.07263039726191893 -0.22301637010740805 -0.97210520215545215 0
		 -4.5278240127840492 -3.3954816224779094 -1.022056697587352 1;
	setAttr ".pm[55]" -type "matrix" -0.32480994631015858 0.91656856162830391 -0.23323929903130453 0
		 0.94424078807895984 0.32832671045519651 -0.024716499139121471 0 0.053924325735392298 -0.22826222428665643 -0.97210520215545193 0
		 -5.2848407070967021 -2.9682891700797711 -1.022056697587352 1;
	setAttr ".pm[56]" -type "matrix" -0.20311031532577234 0.95097088766988669 -0.23323929903130458 0
		 0.97886549055744121 0.20300602470381512 -0.024716499139121474 0 0.023844311774627147 -0.23333007679744791 -0.97210520215545215 0
		 -6.0531111548152001 -2.2013311585251061 -1.0220566975873524 1;
	setAttr ".pm[57]" -type "matrix" 0.055141303824235287 -0.9708547090064249 0.23323929903130447 0
		 0.99773223418241641 0.062605778836058751 0.024716499139121471 0 -0.038598257550400639 0.23134746693314248 0.97210520215545215 0
		 -6.8860134976711738 0.39760011084167934 1.0220566975873533 1;
	setAttr ".pm[58]" -type "matrix" 0.28391907621620699 -0.93004805657983181 0.23323929903130441 0
		 0.95438699790408643 0.29754756410014638 0.024716499139121464 0 -0.092387317268987398 0.21558306879286218 0.97210520215545204 0
		 -7.2628020056901921 -1.3645944184337013 1.0220566975873542 1;
	setAttr ".pm[59]" -type "matrix" 0.55092251726407293 -0.80130132244917951 0.23323929903130447 0
		 0.82040361842651 0.57125038078148793 0.024716499139121457 0 -0.15304340183133217 0.17773348896086494 0.97210520215545226 0
		 -6.9115203842823005 -3.614765238507994 1.0220566975873553 1;
	setAttr ".pm[60]" -type "matrix" 0.81811801089765346 -0.52562567444166342 0.2332392990313045 0
		 0.53537164030992179 0.84425487941863231 0.024716499139121471 0 -0.20990504280919794 0.10464869299507418 0.97210520215545226 0
		 -5.4326010597893744 -6.2006164513207258 1.022056697587356 1;
	setAttr ".pm[61]" -type "matrix" 0.97241862487083475 0.0012030759333471891 0.2332392990313045 0
		 -0.0071651614412281605 0.9996688227267202 0.024716499139121488 0 -0.23313231965095885 -0.025705981336483979 0.97210520215545226 0
		 -1.6152690614627854 -8.4165599672621738 1.0220566975873582 1;
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
	rename -uid "A69E0A01-A147-17F1-C53D-2A94228153B2";
	setAttr ".sst" -type "string" "";
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
connectAttr "modelRN.phl[2]" "skinCluster1.ip[0].ig";
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
connectAttr "stem5_orientConstraint1.crx" "stem5.rx";
connectAttr "stem5_orientConstraint1.cry" "stem5.ry";
connectAttr "stem5_orientConstraint1.crz" "stem5.rz";
connectAttr "stem5.s" "bigShieldStem.is";
connectAttr "bigShieldStem.s" "bigShieldStem1.is";
connectAttr "bigShieldStem1.s" "bigShieldStem2.is";
connectAttr "bigShieldStem2.s" "bigShieldStem3.is";
connectAttr "bigShieldStem3.s" "bigShieldStem4.is";
connectAttr "bigShieldStem4.s" "bigShieldStem5.is";
connectAttr "bigShieldStem5.s" "bigShieldStem6.is";
connectAttr "bigShieldStem6.s" "bigShieldStem7.is";
connectAttr "bigShieldStem7_orientConstraint1.crx" "bigShieldStem7.rx";
connectAttr "bigShieldStem7_orientConstraint1.cry" "bigShieldStem7.ry";
connectAttr "bigShieldStem7_orientConstraint1.crz" "bigShieldStem7.rz";
connectAttr "bigShieldStem7.s" "bigShieldStem8.is";
connectAttr "bigShieldStem8.s" "bigShieldLeft.is";
connectAttr "bigShieldLeft.s" "bigShieldLeft1.is";
connectAttr "bigShieldStem8.s" "bigShieldRight.is";
connectAttr "bigShieldRight.s" "bigShieldRight1.is";
connectAttr "bigShieldStem7.ro" "bigShieldStem7_orientConstraint1.cro";
connectAttr "bigShieldStem7.pim" "bigShieldStem7_orientConstraint1.cpim";
connectAttr "bigShieldStem7.jo" "bigShieldStem7_orientConstraint1.cjo";
connectAttr "bigShieldStem7.is" "bigShieldStem7_orientConstraint1.is";
connectAttr "bigShieldStemCTRL.r" "bigShieldStem7_orientConstraint1.tg[0].tr";
connectAttr "bigShieldStemCTRL.ro" "bigShieldStem7_orientConstraint1.tg[0].tro";
connectAttr "bigShieldStemCTRL.pm" "bigShieldStem7_orientConstraint1.tg[0].tpm";
connectAttr "bigShieldStem7_orientConstraint1.w0" "bigShieldStem7_orientConstraint1.tg[0].tw"
		;
connectAttr "bigShieldStem7.tx" "effector3.tx";
connectAttr "bigShieldStem7.ty" "effector3.ty";
connectAttr "bigShieldStem7.tz" "effector3.tz";
connectAttr "bigShieldStem7.opm" "effector3.opm";
connectAttr "bigShieldStem.s" "rightLeaf.is";
connectAttr "rightLeaf.s" "rightLeaf1.is";
connectAttr "rightLeaf1.s" "rightLeaf2.is";
connectAttr "rightLeaf2.s" "rightLeaf3.is";
connectAttr "rightLeaf3.s" "rightLeaf4.is";
connectAttr "rightLeaf4_orientConstraint1.crx" "rightLeaf4.rx";
connectAttr "rightLeaf4_orientConstraint1.cry" "rightLeaf4.ry";
connectAttr "rightLeaf4_orientConstraint1.crz" "rightLeaf4.rz";
connectAttr "rightLeaf4.s" "rightLeaf5.is";
connectAttr "rightLeaf5.s" "rightLeaf6.is";
connectAttr "rightLeaf6.s" "rightLeaf7.is";
connectAttr "rightLeaf7.s" "rightLeaf8.is";
connectAttr "rightLeaf8.s" "rightLeaf9.is";
connectAttr "rightLeaf9.s" "rightLeaf10.is";
connectAttr "rightLeaf10.s" "rightLeaf11.is";
connectAttr "rightLeaf4.ro" "rightLeaf4_orientConstraint1.cro";
connectAttr "rightLeaf4.pim" "rightLeaf4_orientConstraint1.cpim";
connectAttr "rightLeaf4.jo" "rightLeaf4_orientConstraint1.cjo";
connectAttr "rightLeaf4.is" "rightLeaf4_orientConstraint1.is";
connectAttr "rightLeafCTRL.r" "rightLeaf4_orientConstraint1.tg[0].tr";
connectAttr "rightLeafCTRL.ro" "rightLeaf4_orientConstraint1.tg[0].tro";
connectAttr "rightLeafCTRL.pm" "rightLeaf4_orientConstraint1.tg[0].tpm";
connectAttr "rightLeaf4_orientConstraint1.w0" "rightLeaf4_orientConstraint1.tg[0].tw"
		;
connectAttr "rightLeaf1.r" "rightLeaf4_orientConstraint1.tg[1].tr";
connectAttr "rightLeaf1.ro" "rightLeaf4_orientConstraint1.tg[1].tro";
connectAttr "rightLeaf1.pm" "rightLeaf4_orientConstraint1.tg[1].tpm";
connectAttr "rightLeaf1.jo" "rightLeaf4_orientConstraint1.tg[1].tjo";
connectAttr "rightLeaf4_orientConstraint1.w1" "rightLeaf4_orientConstraint1.tg[1].tw"
		;
connectAttr "rightLeaf2.r" "rightLeaf4_orientConstraint1.tg[2].tr";
connectAttr "rightLeaf2.ro" "rightLeaf4_orientConstraint1.tg[2].tro";
connectAttr "rightLeaf2.pm" "rightLeaf4_orientConstraint1.tg[2].tpm";
connectAttr "rightLeaf2.jo" "rightLeaf4_orientConstraint1.tg[2].tjo";
connectAttr "rightLeaf4_orientConstraint1.w2" "rightLeaf4_orientConstraint1.tg[2].tw"
		;
connectAttr "rightLeaf3.r" "rightLeaf4_orientConstraint1.tg[3].tr";
connectAttr "rightLeaf3.ro" "rightLeaf4_orientConstraint1.tg[3].tro";
connectAttr "rightLeaf3.pm" "rightLeaf4_orientConstraint1.tg[3].tpm";
connectAttr "rightLeaf3.jo" "rightLeaf4_orientConstraint1.tg[3].tjo";
connectAttr "rightLeaf4_orientConstraint1.w3" "rightLeaf4_orientConstraint1.tg[3].tw"
		;
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
connectAttr "smallShieldStem10_orientConstraint1.crx" "smallShieldStem10.rx";
connectAttr "smallShieldStem10_orientConstraint1.cry" "smallShieldStem10.ry";
connectAttr "smallShieldStem10_orientConstraint1.crz" "smallShieldStem10.rz";
connectAttr "smallShieldStem10.s" "smallShieldStem11.is";
connectAttr "smallShieldStem11.s" "smallShieldLeft.is";
connectAttr "smallShieldLeft.s" "smallShieldLeft1.is";
connectAttr "smallShieldStem11.s" "smallShieldRight.is";
connectAttr "smallShieldRight.s" "smallShieldRight1.is";
connectAttr "smallShieldStem10.ro" "smallShieldStem10_orientConstraint1.cro";
connectAttr "smallShieldStem10.pim" "smallShieldStem10_orientConstraint1.cpim";
connectAttr "smallShieldStem10.jo" "smallShieldStem10_orientConstraint1.cjo";
connectAttr "smallShieldStem10.is" "smallShieldStem10_orientConstraint1.is";
connectAttr "smallShieldStemCTRL.r" "smallShieldStem10_orientConstraint1.tg[0].tr"
		;
connectAttr "smallShieldStemCTRL.ro" "smallShieldStem10_orientConstraint1.tg[0].tro"
		;
connectAttr "smallShieldStemCTRL.pm" "smallShieldStem10_orientConstraint1.tg[0].tpm"
		;
connectAttr "smallShieldStem10_orientConstraint1.w0" "smallShieldStem10_orientConstraint1.tg[0].tw"
		;
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
connectAttr "stem5.ro" "stem5_orientConstraint1.cro";
connectAttr "stem5.pim" "stem5_orientConstraint1.cpim";
connectAttr "stem5.jo" "stem5_orientConstraint1.cjo";
connectAttr "stem5.is" "stem5_orientConstraint1.is";
connectAttr "basicStemCTRL.r" "stem5_orientConstraint1.tg[0].tr";
connectAttr "basicStemCTRL.ro" "stem5_orientConstraint1.tg[0].tro";
connectAttr "basicStemCTRL.pm" "stem5_orientConstraint1.tg[0].tpm";
connectAttr "stem5_orientConstraint1.w0" "stem5_orientConstraint1.tg[0].tw";
connectAttr "stem5.tx" "effector1.tx";
connectAttr "stem5.ty" "effector1.ty";
connectAttr "stem5.tz" "effector1.tz";
connectAttr "stem5.opm" "effector1.opm";
connectAttr "stem1.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_parentConstraint1.ctx" "ikHandle1.tx";
connectAttr "ikHandle1_parentConstraint1.cty" "ikHandle1.ty";
connectAttr "ikHandle1_parentConstraint1.ctz" "ikHandle1.tz";
connectAttr "ikHandle1.ro" "ikHandle1_parentConstraint1.cro";
connectAttr "ikHandle1.pim" "ikHandle1_parentConstraint1.cpim";
connectAttr "ikHandle1.rp" "ikHandle1_parentConstraint1.crp";
connectAttr "ikHandle1.rpt" "ikHandle1_parentConstraint1.crt";
connectAttr "basicStemCTRL.t" "ikHandle1_parentConstraint1.tg[0].tt";
connectAttr "basicStemCTRL.rp" "ikHandle1_parentConstraint1.tg[0].trp";
connectAttr "basicStemCTRL.rpt" "ikHandle1_parentConstraint1.tg[0].trt";
connectAttr "basicStemCTRL.r" "ikHandle1_parentConstraint1.tg[0].tr";
connectAttr "basicStemCTRL.ro" "ikHandle1_parentConstraint1.tg[0].tro";
connectAttr "basicStemCTRL.s" "ikHandle1_parentConstraint1.tg[0].ts";
connectAttr "basicStemCTRL.pm" "ikHandle1_parentConstraint1.tg[0].tpm";
connectAttr "ikHandle1_parentConstraint1.w0" "ikHandle1_parentConstraint1.tg[0].tw"
		;
connectAttr "smallShieldStem.msg" "ikHandle2.hsj";
connectAttr "effector2.hp" "ikHandle2.hee";
connectAttr "ikRPsolver.msg" "ikHandle2.hsv";
connectAttr "ikHandle2_parentConstraint1.ctx" "ikHandle2.tx";
connectAttr "ikHandle2_parentConstraint1.cty" "ikHandle2.ty";
connectAttr "ikHandle2_parentConstraint1.ctz" "ikHandle2.tz";
connectAttr "ikHandle2.ro" "ikHandle2_parentConstraint1.cro";
connectAttr "ikHandle2.pim" "ikHandle2_parentConstraint1.cpim";
connectAttr "ikHandle2.rp" "ikHandle2_parentConstraint1.crp";
connectAttr "ikHandle2.rpt" "ikHandle2_parentConstraint1.crt";
connectAttr "smallShieldStemCTRL.t" "ikHandle2_parentConstraint1.tg[0].tt";
connectAttr "smallShieldStemCTRL.rp" "ikHandle2_parentConstraint1.tg[0].trp";
connectAttr "smallShieldStemCTRL.rpt" "ikHandle2_parentConstraint1.tg[0].trt";
connectAttr "smallShieldStemCTRL.r" "ikHandle2_parentConstraint1.tg[0].tr";
connectAttr "smallShieldStemCTRL.ro" "ikHandle2_parentConstraint1.tg[0].tro";
connectAttr "smallShieldStemCTRL.s" "ikHandle2_parentConstraint1.tg[0].ts";
connectAttr "smallShieldStemCTRL.pm" "ikHandle2_parentConstraint1.tg[0].tpm";
connectAttr "ikHandle2_parentConstraint1.w0" "ikHandle2_parentConstraint1.tg[0].tw"
		;
connectAttr "bigShieldStem.msg" "ikHandle3.hsj";
connectAttr "effector3.hp" "ikHandle3.hee";
connectAttr "ikRPsolver.msg" "ikHandle3.hsv";
connectAttr "ikHandle3_parentConstraint1.ctx" "ikHandle3.tx";
connectAttr "ikHandle3_parentConstraint1.cty" "ikHandle3.ty";
connectAttr "ikHandle3_parentConstraint1.ctz" "ikHandle3.tz";
connectAttr "ikHandle3.ro" "ikHandle3_parentConstraint1.cro";
connectAttr "ikHandle3.pim" "ikHandle3_parentConstraint1.cpim";
connectAttr "ikHandle3.rp" "ikHandle3_parentConstraint1.crp";
connectAttr "ikHandle3.rpt" "ikHandle3_parentConstraint1.crt";
connectAttr "bigShieldStemCTRL.t" "ikHandle3_parentConstraint1.tg[0].tt";
connectAttr "bigShieldStemCTRL.rp" "ikHandle3_parentConstraint1.tg[0].trp";
connectAttr "bigShieldStemCTRL.rpt" "ikHandle3_parentConstraint1.tg[0].trt";
connectAttr "bigShieldStemCTRL.r" "ikHandle3_parentConstraint1.tg[0].tr";
connectAttr "bigShieldStemCTRL.ro" "ikHandle3_parentConstraint1.tg[0].tro";
connectAttr "bigShieldStemCTRL.s" "ikHandle3_parentConstraint1.tg[0].ts";
connectAttr "bigShieldStemCTRL.pm" "ikHandle3_parentConstraint1.tg[0].tpm";
connectAttr "ikHandle3_parentConstraint1.w0" "ikHandle3_parentConstraint1.tg[0].tw"
		;
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
connectAttr "rightLeaf.msg" "skinCluster1.ptt";
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
connectAttr "bigShieldRight.msg" "skinCluster2.ptt";
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
connectAttr "smallShieldRight.msg" "skinCluster6.ptt";
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
// End of ShieldRigv01.0002.ma

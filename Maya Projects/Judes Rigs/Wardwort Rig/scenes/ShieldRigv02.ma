//Maya ASCII 2024 scene
//Name: ShieldRigv02.ma
//Last modified: Wed, Oct 21, 2026 11:31:04 PM
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
fileInfo "UUID" "CB6661A6-4B47-2FA3-CBC6-2EA988794B5D";
createNode transform -s -n "persp";
	rename -uid "717E5D41-C94C-9CFB-6464-0EA9F4B52184";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.6733620064596515 12.615689369732813 13.713554482633132 ;
	setAttr ".r" -type "double3" -33.938352728578529 -2182.9999999977354 2.5914214380411893e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "46D00BDD-1946-3487-90F1-32A7E1F4D457";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 18.94044529864119;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.27550724148750305 6.2319602966308594 -1.8018159866333008 ;
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
	setAttr ".t" -type "double3" 2.3139458778326087 6.1642485003061438 1000.1 ;
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
	setAttr ".r" -type "double3" 2.2462311968206365 12.842999153605941 20.895214426899262 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -6.8371071337381597 23.608186224881578 ;
	setAttr ".bps" -type "matrix" -0.012728295233860265 0.99280702824109124 0.11904702925958589 0
		 0.99991782735513435 0.012819459325066174 1.1796119636642286e-16 0 -0.0015261185493630897 0.11903724685032827 -0.99288861652476745 0
		 2.4538010576233793 1.0405632656929256 -0.7887202317130233 1;
	setAttr ".radi" 0.5;
createNode joint -n "stem2" -p "stem1";
	rename -uid "7D71500B-C54D-5F67-79A7-279D5FEAD24C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.62397205982694903 0 1.1102230246251565e-16 ;
	setAttr ".r" -type "double3" 2.2618485980472212 -2.5104526594188719 -11.919779628714688 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 5.8168549547642723 -22.544428163747856 ;
	setAttr ".bps" -type "matrix" -0.39293464796513411 0.89526386431128202 0.21001184653953792 0
		 0.91862659735055852 0.3924817550247523 0.045642596473303459 0 -0.041563650809936604 0.21085702556737562 -0.97663287764657403 0
		 2.4458589570282219 1.6600471121151912 -0.7144382116496405 1;
	setAttr ".radi" 0.5;
createNode joint -n "stem3" -p "stem2";
	rename -uid "7BBF4C8A-BF40-EB5E-1CB5-FBA66DE25792";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.74887755142998624 -8.8817841970012523e-16 1.1102230246251565e-16 ;
	setAttr ".r" -type "double3" 1.411930636358542 -12.734506500063187 0.053390666745284782 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -15.268150001313533 4.1308117400630024 ;
	setAttr ".bps" -type "matrix" -0.32518953744402851 0.94422144490049686 -0.051938692002750975 0
		 0.94454476507935015 0.32697288226068966 0.030396069274366291 0 0.045683164274527441 -0.039173935928819459 -0.9981875831955187 0
		 2.1515990199880877 2.3304901227043713 -0.55716505424182139 1;
	setAttr ".radi" 0.5;
createNode joint -n "stem4" -p "stem3";
	rename -uid "B0D5F672-E540-4D3A-A0B5-0E8587774F9C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.60965696573473704 0 0 ;
	setAttr ".r" -type "double3" -1.2529987117620249e-16 -6.3272766215188012 6.1529307820251491 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.626345678157911e-17 6.7490023840764397e-16 12.894104714023173 ;
	setAttr ".bps" -type "matrix" -0.10621461611790561 0.9933760474285519 -0.043846136866929231 0
		 0.99329326174337451 0.1080251412360676 0.041219716594552321 0 0.045683164274527441 -0.039173935928819459 -0.9981875831955187 0
		 1.9533449533012786 2.9061413037840773 -0.58882983961244961 1;
	setAttr ".radi" 0.5;
createNode joint -n "stem5" -p "stem4";
	rename -uid "21C8350D-064E-98A3-FE83-4BBDC8CC2DE1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.58742180330748406 0 0 ;
	setAttr ".r" -type "double3" 0.16284882004458062 9.3386912814149223 344.22547804968775 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.1369472604034872e-19 2.3669114182346121e-18 5.5001844108457512 ;
	setAttr ".bps" -type "matrix" -0.010519469911885066 0.99915653175010721 -0.039693397610562078 0
		 0.99890059027644929 0.012313724251500185 0.045232542935574035 0 0.045683164274527566 -0.039173935928819577 -0.9981875831955187 0
		 1.8909521719636864 3.489672052927018 -0.61458601639888799 1;
	setAttr ".radi" 0.5;
createNode joint -n "bigShieldStem" -p "stem5";
	rename -uid "CD9CC98A-3E47-30B3-0E05-3D9BAD94A239";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.6079754401307067 -2.2204460492503131e-16 2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" -1.3316601428049104e-05 1.6733896946363371e-05 -1.0919159752191857e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 13.428544959562297 12.387482332011222 ;
	setAttr ".bps" -type "matrix" 0.18782479845871752 0.96088145788389745 0.20354033747357864 0
		 -0.97790201180662761 0.20231395106606292 -0.052694596578666091 0 -0.091812310658712051 -0.18914515351696115 0.97764748785671862 0
		 1.8845565926140662 4.0971346850772594 -0.6387186272814529 1;
	setAttr ".radi" 0.5;
createNode joint -n "bigShieldStem1" -p "bigShieldStem";
	rename -uid "279175E7-3740-0FCD-384A-638FE84C3863";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.55533925221940805 0 2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 7.5524831977909535e-06 1.9329378417159073e-06 1.9866763528126177e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -18.218746380773485 -4.2837835782912901 -9.6168715081927356 ;
	setAttr ".bps" -type "matrix" 0.34072088111352383 0.89689896658620194 0.28192467949760491 0
		 -0.84925661410204834 0.4222537097758039 -0.31696215544524409 0 -0.40332677146099272 -0.13143077385899593 0.90556803560289001 0
		 1.9888630757383914 4.6307498753699976 -0.52568468847238958 1;
	setAttr ".radi" 0.5;
createNode joint -n "bigShieldStem2" -p "bigShieldStem1";
	rename -uid "2CDA4C8F-BE47-CB1C-9807-CDAA9A478B69";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.4634581488694085 -4.4408920985006262e-16 2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 1.586720816914809e-05 8.0107903536558429e-06 4.6424701258723224e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.3172961789634436 -6.0963770209036312 -14.71195852135441 ;
	setAttr ".bps" -type "matrix" 0.49931009676988669 0.74200082470018813 0.44735243757901577 0
		 -0.72413905348143759 0.64087873460052991 -0.25474905055727054 0 -0.47572266972118682 -0.19674659763529503 0.85730899787199333 0
		 2.1467729445804191 5.0464250101469244 -0.39502439839182801 1;
	setAttr ".radi" 0.5;
createNode joint -n "bigShieldStem3" -p "bigShieldStem2";
	rename -uid "756A9B84-CD46-CB40-7E92-12AF44A1A271";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.32348651020118346 -0.054789604720485219 0 ;
	setAttr ".r" -type "double3" 1.7251976132343803e-05 -9.910713557823104e-07 3.4665202554031024e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.8099460006901927e-15 1.2875899460475806e-14 -24.62162866006917 ;
	setAttr ".bps" -type "matrix" 0.75560597721547818 0.4075318385356258 0.51281322894014203 0
		 -0.45027497011225059 0.89174468145243702 -0.0452092290545138 0 -0.47572266972118682 -0.19674659763529503 0.85730899787199333 0
		 2.3479683177956394 5.2513387749530605 -0.23635431974644769 1;
	setAttr ".radi" 0.5;
createNode joint -n "bigShieldStem4" -p "bigShieldStem3";
	rename -uid "BDAC6C26-5D4E-C94F-D0B2-3793225A7628";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.38749941000289345 -0.022402633287539775 -8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 1.6600328341070011e-05 1.2212718335170929e-05 6.3243642015649564e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.8818362992066768 -9.0880873399122564 -32.02502119042186 ;
	setAttr ".bps" -type "matrix" 0.79321040146322319 -0.15684837943322524 0.58840109184103551 0
		 0.038916304998989008 0.97734058610779684 0.20806465329722418 0 -0.60770287165339065 -0.14214065082037375 0.78134067804548779 0
		 2.6508525331952799 5.3892796928583175 -0.036626690310744031 1;
	setAttr ".radi" 0.5;
createNode joint -n "bigShieldStem5" -p "bigShieldStem4";
	rename -uid "D7EE9797-994C-E900-14E2-E096AFC6F498";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.35887732399454952 -0.025803637014959691 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 7.2790602376325235e-06 -3.9942304512874595e-06 2.9337120850024433e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -13.806029759657632 -1.3778496787426875 -18.066681574169348 ;
	setAttr ".bps" -type "matrix" 0.72720608614304283 -0.4554986992306076 0.51350973045867532 0
		 0.42405058758597702 0.88638807213164872 0.1857344468609074 0 -0.53977069894956731 0.082686882768454623 0.83774129179212053 0
		 2.9345135772288859 5.3077714244505261 0.16916829417531332 1;
	setAttr ".radi" 0.5;
createNode joint -n "bigShieldStem6" -p "bigShieldStem5";
	rename -uid "4D10B7FE-454F-C54D-95AE-1CB7001163DC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.39131734071914265 -0.010831968840761874 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 1.1115214274029655e-06 1.1559295575084432e-05 1.7252444268177812e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -6.1320569934678248 -5.4280971861108887 ;
	setAttr ".bps" -type "matrix" 0.62226019538348432 -0.52539839940621391 0.5803005868881197 0
		 0.49094017626205766 0.8393246488165319 0.23347778742481168 0 -0.60972944210779856 0.13960893879116221 0.78021750277503887 0
		 3.2144886262615193 5.1199255567884228 0.36810168659075204 1;
	setAttr ".radi" 0.5;
createNode joint -n "bigShieldStem7" -p "bigShieldStem6";
	rename -uid "D912655D-A24E-F8D5-F67C-C8863FC42264";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.56708714409200833 -0.05162219303346216 -3.3306690738754696e-16 ;
	setAttr ".r" -type "double3" -3.872148484736794 2.0219431201970282 1.5550534337055506 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -5.1369395488299272 -11.239284199697407 ;
	setAttr ".bps" -type "matrix" 0.45797868524516216 -0.6636854241467538 0.59141963244066909 0
		 0.60280760005635925 0.72082410497382199 0.3421046725827947 0 -0.65335941194369018 0.19983560109207893 0.73019669361122308 0
		 3.542020974796793 4.7786510999196903 0.68513005371258262 1;
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
	setAttr ".bps" -type "matrix" 0.38497552542387908 0.17781968135064408 0.90563458731928037 0
		 -0.1050374933930734 0.98332967287429895 -0.14842465909216199 0 -0.91693018807666482 -0.037985725862222625 0.39723559108470097 0
		 3.7240131415864859 4.5149149211441504 0.92014915800173414 1;
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
	setAttr ".bps" -type "matrix" -0.92031411290042253 0.2079380667347403 0.33133622500252957 0
		 0.077623837547557945 0.92724908623729185 -0.36631089516488291 0 -0.38340119123536731 -0.31140149722621169 -0.86950137095037117 0
		 3.0071040014762174 4.5145927038617337 1.4898257136710624 1;
	setAttr ".radi" 0.5139257689348149;
createNode joint -n "bigShieldLeft1" -p "bigShieldLeft";
	rename -uid "5735177A-C144-78E9-9EFD-478D8247C0CD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.2692315327397536 -1.7763568394002505e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 169.27961975375021 ;
	setAttr ".bps" -type "matrix" 0.91869087271364858 -0.031825581119802215 -0.39369304385399267 0
		 -0.094924216888717536 0.94974535529880899 -0.29828367896417513 0 0.38340119123536731 0.3114014972262118 0.86950137095037117 0
		 1.8390123093575872 4.7785142550184077 1.9103680983832276 1;
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
	setAttr ".bps" -type "matrix" 0.80215999093071644 0.24185728369770279 -0.54593443129409014 0
		 -0.3900292449792172 0.90452625422546062 -0.17236427552656966 0 0.45212447070577183 0.35119411973896519 0.81990618563942974 0
		 4.6900556029864733 4.635668358646643 0.78513830606068802 1;
	setAttr ".radi" 0.51335877639326322;
createNode joint -n "bigShieldRight1" -p "bigShieldRight";
	rename -uid "2955404C-C941-E29C-D787-40A3DF46918C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.2582696769364246 -8.8817841970012523e-16 8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -16.778454938616388 ;
	setAttr ".bps" -type "matrix" 0.88060096981426927 -0.029550252819743078 -0.47293626898394825 0
		 -0.1418640016043316 0.93583624252273057 -0.3226222748505494 0 0.45212447070577183 0.35119411973896519 0.81990618563942974 0
		 5.6993891956261917 4.9399900448696723 0.098205565567803466 1;
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
	setAttr ".lr" -type "double3" 15.305502089802662 40.79540671429146 52.774259102994044 ;
	setAttr ".o" -type "double3" 25.103574152173316 -36.257814471727478 -55.392234095589778 ;
	setAttr ".rsrr" -type "double3" -1.1310634888753532e-31 1.5902773407317584e-15 -8.1501713712502619e-15 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector3" -p "bigShieldStem6";
	rename -uid "80BD67C4-BA4B-4ABE-04BE-CB9101F2D3AD";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "rightLeaf" -p "bigShieldStem";
	rename -uid "8DAEBA17-EE40-C433-4D24-1AB9C1F6AE1B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.92192445812557189 0.61921407680863805 -0.2538961450196251 ;
	setAttr ".r" -type "double3" -5.1650176893228039 -1.307780997082487 0.10239383856701183 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 4.8507060482907667 11.138937653594192 9.2002012115469913 ;
	setAttr ".bps" -type "matrix" 0.044449909632304864 0.99875087560877929 0.022823102426645037 0
		 -0.99486331132534467 0.04633356430883593 -0.090001069978133286 0 -0.090946123130399736 -0.018705327827550799 0.99568012604370759 0
		 1.4754969684471044 5.1562936742217627 -0.73191997627763183 1;
	setAttr ".radi" 0.51598367207874007;
createNode joint -n "rightLeaf1" -p "rightLeaf";
	rename -uid "1EDAEF0A-1443-4CC2-346C-17A92D3799D0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.3090176601889745 1.5265566588595902e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -34.308107471397463 ;
	setAttr ".bps" -type "matrix" 0.59746412934814963 0.79887115989862201 0.06958077338236654 0
		 -0.79672166835715419 0.60121126119950108 -0.061478472468805924 0 -0.090946123130399736 -0.018705327827550799 0.99568012604370759 0
		 1.5336826851495953 6.4636762085228563 -0.70204413214085171 1;
	setAttr ".radi" 0.52900002079868502;
createNode joint -n "rightLeaf2" -p "rightLeaf1";
	rename -uid "5FED7D97-5B4E-B73D-E0D3-AD937B75410B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.5606670687745772 -1.1102230246251565e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -82.815740340050695 ;
	setAttr ".bps" -type "matrix" 0.86518594954605221 -0.49658384305064762 0.069697629293580324 0
		 0.49313494643519806 0.86778718447088976 0.06134596215270105 0 -0.090946123130399736 -0.018705327827550799 0.99568012604370759 0
		 2.4661252765973272 7.7104481199703852 -0.59345171050312562 1;
	setAttr ".radi" 0.52331202087091733;
createNode joint -n "rightLeaf3" -p "rightLeaf2";
	rename -uid "A2C84A1E-1743-1526-4004-81B4B95074A0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.4506990701710685 -1.1102230246251565e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 29.774537494869985 ;
	setAttr ".bps" -type "matrix" 0.99585451783966239 -9.4996095158617067e-05 0.090960267557186184 0
		 -0.001606855899937587 0.99982503553702151 0.018636424751305662 0 -0.090946123130399736 -0.018705327827550799 0.99568012604370759 0
		 3.7212497291288575 6.9900544005948335 -0.49234142449380092 1;
	setAttr ".radi" 0.52331202087091733;
createNode joint -n "smallShieldStem" -p "stem5";
	rename -uid "06B1104F-D140-3BB0-9BAE-D288827CF028";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.7214538008102771 -0.47542989481631559 0.17109007118284847 ;
	setAttr ".r" -type "double3" -1.3965387326809264e-06 2.2850859086162631e-06 1.7415722897158474e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -34.307715984678708 -14.778651990558272 -20.063440985927013 ;
	setAttr ".bps" -type "matrix" -0.32924786964475872 0.89339606886512035 -0.30567843311352039 0
		 0.69647275897298899 0.44836933267261619 0.56025943769584574 0 0.63759041424957141 -0.028432475359386169 -0.76985067253461381 0
		 1.4162715936737462 4.1979607462502848 -0.83550785676499273 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem1" -p "smallShieldStem";
	rename -uid "3854FF30-9C4A-71CF-AC8C-7EAB8D7FECE8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.41016304872442655 0 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" -2.8882671497176677e-07 4.0494422478141653e-07 -6.6909859760777281e-09 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.91322627915415022 -4.4383963063763821 0.0020031527499293493 ;
	setAttr ".bps" -type "matrix" -0.27889489367766257 0.88853219656263749 -0.36431878067442486 0
		 0.70693339326522564 0.44672740812313089 0.54834277629791306 0 0.64997139611450472 -0.10461911155789996 -0.75272307373282821 0
		 1.2812262836742292 4.5643988015744199 -0.96088585482013977 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem2" -p "smallShieldStem1";
	rename -uid "7876538F-1C46-AD36-6700-1CBDF26AE6C9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.43950330469103349 0 2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 5.6843117959929747e-07 7.2373793479756783e-07 3.9004663945058454e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.7426583572821555 -8.14972819597822 -3.8513918653720913 ;
	setAttr ".bps" -type "matrix" -0.23031898058193817 0.83303853881336321 -0.50299101387141443 0
		 0.65282056230089747 0.51558677386086194 0.55497350572517246 0 0.72164983241239389 -0.20054194441922923 -0.66257410748362178 0
		 1.1586510562414423 4.954911638288082 -1.1210051628875575 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem3" -p "smallShieldStem2";
	rename -uid "22747E98-EA47-814A-F966-A9BB21B5EF71";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.36148101215000494 8.8817841970012523e-16 1.1102230246251565e-16 ;
	setAttr ".r" -type "double3" 6.9346507118179608e-07 -5.0064015333300432e-07 2.1366821212652001e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.5148824103500027 4.6495422082962081 -13.730819255501942 ;
	setAttr ".bps" -type "matrix" -0.43594206856657147 0.7008473455733657 -0.56459499737127117 0
		 0.59749643679491349 0.69452627827057278 0.40078829425147716 0 0.6730174744174775 -0.16262302110831148 -0.72152701414037501 0
		 1.0753951180233265 5.2560392524582982 -1.3028268636841531 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem4" -p "smallShieldStem3";
	rename -uid "6C771780-4346-EAF0-A21A-53AB177D1268";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.31762419942948616 -0.053696452289496932 -6.6613381477509392e-16 ;
	setAttr ".r" -type "double3" 2.7237143652971499e-07 -9.1178454945143686e-07 2.7330923953748292e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 10.655070993033183 -34.072553447965348 ;
	setAttr ".bps" -type "matrix" -0.80828667061645398 0.21819681833351887 -0.54686635165540864 0
		 0.25069033817993169 0.96794042383007695 0.015674509845052309 0 0.53275417637687184 -0.12442461325951776 -0.83707317671050696 0
		 0.90484592858573221 5.4413517323533611 -1.5036768072465587 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem5" -p "smallShieldStem4";
	rename -uid "F1BE3C7A-3843-3BED-9E9A-7E931599DF19";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.33064659980504407 -0.029177324110889913 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 7.4928495744916689e-07 -1.5422800694542705e-08 2.5238732334822822e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -31.53170881018475 ;
	setAttr ".bps" -type "matrix" -0.82004746298995324 -0.32022389937182472 -0.47431931513996411 0
		 -0.20903383935798972 0.93913533097542601 -0.2726347082030004 0 0.53275417637687184 -0.12442461325951776 -0.83707317671050696 0
		 0.63027421603011757 5.4852558569574956 -1.6849536472232374 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem6" -p "smallShieldStem5";
	rename -uid "359DB346-DE49-EEA8-328A-85BE69FDD570";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.40069291990639355 -0.0083161216917408964 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 5.0992327412912246e-07 -6.3186277125486627e-07 2.5731635950749124e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.0133197909663129e-16 7.851853685471835 -29.172960126272276 ;
	setAttr ".bps" -type "matrix" -0.68115616977266757 -0.71347233761844253 -0.16426653899654692 0
		 -0.58224856304555339 0.66391571243737935 -0.46925743213097337 0 0.44386133331482808 -0.22399363882048562 -0.86764852708682694 0
		 0.30342535446863611 5.3491344439969826 -1.8727427751638623 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem7" -p "smallShieldStem6";
	rename -uid "73E4E7F0-604D-6381-24E8-109918862A62";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.28567106023859301 -8.8817841970012523e-16 -6.6613381477509392e-16 ;
	setAttr ".r" -type "double3" 2.3287742409390689e-07 -1.1227660552864624e-06 1.9899345816740305e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.7978573285792427 12.535785423079835 -21.692812967091665 ;
	setAttr ".bps" -type "matrix" -0.50408143703462183 -0.83807469275740254 0.20864494769031872 0
		 -0.80314784176126897 0.36604707764536493 -0.47006710289224002 0 0.31757746946426502 -0.40452484016049428 -0.85761541764464555 0
		 0.10883874926161932 5.1453160448586139 -1.9196689715207291 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem8" -p "smallShieldStem7";
	rename -uid "644DC28B-5241-D64A-BD48-819F940DB599";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.2498980115349827 8.8817841970012523e-16 -6.106226635438361e-16 ;
	setAttr ".r" -type "double3" 5.019690614335459e-07 -1.8247046477587161e-06 1.3717258122188441e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.1286071026018876 8.4283571700845723 -26.464725978549055 ;
	setAttr ".bps" -type "matrix" -0.13887805416914534 -0.84422276414869557 0.51768794709103239 0
		 -0.9736202144440087 0.020829102434948697 -0.22722197630897617 0 0.18104298963559562 -0.53558759599610806 -0.824845053885222 0
		 -0.017130199505030169 4.935882845620748 -1.8675290139760978 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem9" -p "smallShieldStem8";
	rename -uid "0820F4F0-7842-930F-2265-77870F91CAB8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.42937775607340267 0.073335259225990268 -0.076394945070563658 ;
	setAttr ".r" -type "double3" -2.0621107882180112e-07 9.5361871615591122e-07 -1.9171629907191418e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -111.45888323242426 22.646382560252945 16.336277200118442 ;
	setAttr ".bps" -type "matrix" -0.44544497944150707 -0.53604559259280804 0.71710103399184977 0
		 0.3179042667936075 0.6540616149689793 0.68639659161347022 0 -0.83696812809376075 0.5337213940680996 -0.12093728155217454 0
		 -0.16199280683455583 4.6158360621276051 -1.5988947148590769 1;
	setAttr ".radi" 0.5;
createNode joint -n "smallShieldStem10" -p "smallShieldStem9";
	rename -uid "51089DA1-9249-9A5C-75C8-6ABDFD2569DD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.6450728559354979 0.13026787516727234 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 364.09604134447073 -2.3663504711822165 6.9619220295787247 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 38.298449876914034 8.3624468250424453 35.75776018510097 ;
	setAttr ".bps" -type "matrix" -0.052113644842615936 -0.1298513400838481 0.99016301561896647 0
		 -0.1222987735695632 0.98487688501104809 0.12272135655343407 0 -0.9911241990813251 -0.11470026525411037 -0.067206183837786621 0
		 -0.4079245585432047 4.3552508176126095 -1.0468968773561111 1;
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
	setAttr ".bps" -type "matrix" 0.51285923410589029 -0.35222853801336446 -0.7828859833981493 0
		 0.15316128048267014 0.934862827863154 -0.3202703783377655 0 0.84469937146491858 0.044345801251915312 0.53340080779662968 0
		 -0.49563281733441678 4.2958407236184266 -0.72503801510252019 1;
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
	setAttr ".bps" -type "matrix" -0.73333549252294583 0.055614854265168684 -0.67758840263923648 0
		 0.11850971777536516 0.99184696103279213 -0.046851389337113067 0 0.6694583647986867 -0.11465859703955231 -0.73394748035945301 0
		 -1.1078133786755544 4.2778421096801154 -0.83849352788546239 1;
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
	setAttr ".bps" -type "matrix" 0.71787470010069765 -0.1541815399937905 0.67888435515960799 0
		 0.19100108051108489 0.98136713764526684 0.020907615682650912 0 -0.66945836479868681 0.11465859703955232 0.7339474803594529 0
		 -1.811622959668532 4.3649367156466425 -1.4940681697050562 1;
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
	setAttr ".bps" -type "matrix" 0.86346497510865083 0.11820591342388186 0.49036272165840955 0
		 0.012292726638408663 0.96693328786482735 -0.2547330086398461 0 -0.5042589866649978 0.22598092585556914 0.83345995435716591 0
		 -0.10130286367147351 4.2086914599344372 -0.19322884922506667 1;
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
	setAttr ".bps" -type "matrix" 0.85074581735119803 -0.035601726522437843 0.52437016632152489 0
		 0.14817026903880459 0.97348093880572761 -0.17429983693304785 0 -0.5042589866649978 0.22598092585556914 0.83345995435716591 0
		 0.66815867777118054 4.3140285691082427 0.24374921769167873 1;
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
	setAttr ".lr" -type "double3" 59.63265154980084 97.639462019452253 66.920225530900922 ;
	setAttr ".o" -type "double3" 118.70653717481837 -81.956866366558302 -111.86722494488798 ;
	setAttr ".rsrr" -type "double3" 6.1722639287151377e-14 1.6716548140270163e-14 -1.5902773407317495e-15 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector2" -p "smallShieldStem9";
	rename -uid "B5EC54A2-E04F-6C22-1B32-1490B723CE5A";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "leftLeaf" -p "smallShieldStem6";
	rename -uid "3EED47E4-9246-2F69-822F-488062EB624E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -0.08541628538685675 0.35317714014744439 -0.24457861319397833 ;
	setAttr ".r" -type "double3" 19.496198532580859 0.95828037001331856 3.0800461136704174 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 15.485739504761094 25.798075905120619 103.18862590733001 ;
	setAttr ".bps" -type "matrix" -0.51836859257157597 0.85499374135413675 0.016724367869042467 0
		 0.80319048658789138 0.49348852949922861 -0.33369763785108641 0 -0.29356267557383642 -0.15954552171071604 -0.94253179363456241 0
		 0.047411312554998142 5.699340506967201 -1.8122344619676787 1;
	setAttr ".radi" 0.5;
createNode joint -n "leftLeaf1" -p "leftLeaf";
	rename -uid "31772DDF-0948-4B18-A41D-AE89C76FC0C1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.6229515989804254 1.6653345369377348e-16 1.8488927466117464e-32 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 3.5311250384401278e-31 40.854078628009937 ;
	setAttr ".bps" -type "matrix" 0.13331225767208416 0.96950646724456258 -0.20563329478793019 0
		 -0.94659854081035943 0.18601730154215082 0.26334153880972516 0 0.29356267557383631 0.15954552171071607 0.94253179363456241 0
		 -0.27550723104869768 6.231960225262017 -1.8018159902617219 1;
	setAttr ".radi" 0.50595410498113458;
createNode joint -n "leftLeaf2" -p "leftLeaf1";
	rename -uid "93654A11-2D4C-3FD6-3497-8A94A773E927";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 1.1151126963019367 -8.6042284408449632e-16 -8.9329904217447794e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -83.453709216706002 ;
	setAttr ".bps" -type "matrix" 0.95562517126066415 -0.07427501514018657 -0.28506798167972242 0
		 0.024525243382202064 0.98439242613298317 -0.17427008868151542 0 0.29356267557383631 0.15954552171071607 0.94253179363456241 0
		 -0.12684903994588059 7.3130691960332666 -2.0311202880621422 1;
	setAttr ".radi" 0.50595410498113458;
createNode joint -n "midLeaf" -p "smallShieldStem4";
	rename -uid "C3B6C69B-DD4B-0EA4-3A50-C38B467D603F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.13961625800315547 0.44501038335955023 -0.27866313554060806 ;
	setAttr ".r" -type "double3" 11.644409245921674 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 31.051710067206489 12.288643379286716 68.889878839037095 ;
	setAttr ".bps" -type "matrix" -0.16932532307067236 0.98556021377032688 1.6653345369377348e-16 0
		 0.96527649990704489 0.16584045593116589 -0.20183711725980291 0 -0.19892263243335817 -0.034176135087669243 -0.97941910237459218 0
		 0.75509682247688725 5.9372316475844338 -1.3397914851583175 1;
	setAttr ".radi" 0.52039703580423591;
createNode joint -n "midLeaf1" -p "midLeaf";
	rename -uid "A3D993B9-9147-A722-0C3F-7B885994E026";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.3943426922152282 -1.1102230246251565e-16 -1.2325951644078309e-32 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -5.3302986655499774e-15 49.434048571740618 ;
	setAttr ".bps" -type "matrix" 0.62316378607661949 0.76691438726971339 -0.15332716106865416 0
		 -0.75637073054715431 0.64083875849482552 0.13125929903200909 0 0.19892263243335809 0.03417613508766932 0.97941910237459218 0
		 0.51899929564631253 7.3114403293931671 -1.3397914851583173 1;
	setAttr ".radi" 0.52477111749807392;
createNode joint -n "midLeaf2" -p "midLeaf1";
	rename -uid "E489C338-0046-F165-D949-90B0BD27C800";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.4789082716294291 4.4408920985006262e-16 -1.3758470263830223e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -50.314545669944721 ;
	setAttr ".bps" -type "matrix" 0.98000917862884762 -0.0034345464029732486 -0.19892263243335784 0
		 -0.0034345464029732486 0.99940992374574467 -0.034176135087669215 0 0.19892263243335809 0.03417613508766932 0.97941910237459218 0
		 1.4406013734549368 8.4456363603579625 -1.5665482919282077 1;
	setAttr ".radi" 0.52477111749807392;
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
	setAttr ".lr" -type "double3" -168.4045204186053 -2.8422341469534795 74.369258806775548 ;
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
	setAttr ".t" -type "double3" 0.58544553620312234 -0.063446002829651071 0.13277051593526856 ;
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
createNode transform -n "smallShieldStemCTRL" -p "basicStemCTRL";
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
createNode transform -n "bigShieldStemCTRL" -p "basicStemCTRL";
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
	setAttr ".pv" -type "double3" 0.0068290479417628044 0.050810477523189478 -0.031171452934929979 ;
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
createNode fosterParent -n "modelRNfosterParent1";
	rename -uid "C4F9537D-5E42-6273-44E8-578656685E11";
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
		"modelRN" 478
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
		"scaleZ"
		9 "|model:shield_Plant|model:stem" "translateX"
		9 "|model:shield_Plant|model:stem" "translateY"
		9 "|model:shield_Plant|model:stem" "translateZ"
		9 "|model:shield_Plant|model:stem" "rotateX"
		9 "|model:shield_Plant|model:stem" "rotateY"
		9 "|model:shield_Plant|model:stem" "rotateZ"
		9 "|model:shield_Plant|model:stem" "scaleX"
		9 "|model:shield_Plant|model:stem" "scaleY"
		9 "|model:shield_Plant|model:stem" "scaleZ"
		9 "|model:shield_Plant|model:shield_big|model:shield_big" "translateX"
		9 "|model:shield_Plant|model:shield_big|model:shield_big" "translateY"
		9 "|model:shield_Plant|model:shield_big|model:shield_big" "translateZ"
		9 "|model:shield_Plant|model:shield_big|model:shield_big" "rotateX"
		9 "|model:shield_Plant|model:shield_big|model:shield_big" "rotateY"
		9 "|model:shield_Plant|model:shield_big|model:shield_big" "rotateZ"
		9 "|model:shield_Plant|model:shield_big|model:shield_big" "scaleX"
		9 "|model:shield_Plant|model:shield_big|model:shield_big" "scaleY"
		9 "|model:shield_Plant|model:shield_big|model:shield_big" "scaleZ"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"scaleX"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"scaleY"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"scaleZ"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"translateX"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"translateY"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"translateZ"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"rotateX"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"rotateY"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigTop" 
		"rotateZ"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid" 
		"translateX"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid" 
		"translateY"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid" 
		"translateZ"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid" 
		"rotateX"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid" 
		"rotateY"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid" 
		"rotateZ"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid" 
		"scaleX"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid" 
		"scaleY"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigMid" 
		"scaleZ"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom" 
		"translateX"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom" 
		"translateY"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom" 
		"translateZ"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom" 
		"rotateX"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom" 
		"rotateY"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom" 
		"rotateZ"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom" 
		"scaleX"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom" 
		"scaleY"
		9 "|model:shield_Plant|model:shield_big|model:thorns_Big|model:thorns_bigBottom" 
		"scaleZ"
		9 "|model:shield_Plant|model:shield_small|model:shield_Big" "translateX"
		9 "|model:shield_Plant|model:shield_small|model:shield_Big" "translateY"
		9 "|model:shield_Plant|model:shield_small|model:shield_Big" "translateZ"
		9 "|model:shield_Plant|model:shield_small|model:shield_Big" "rotateX"
		9 "|model:shield_Plant|model:shield_small|model:shield_Big" "rotateY"
		9 "|model:shield_Plant|model:shield_small|model:shield_Big" "rotateZ"
		9 "|model:shield_Plant|model:shield_small|model:shield_Big" "scaleX"
		9 "|model:shield_Plant|model:shield_small|model:shield_Big" "scaleY"
		9 "|model:shield_Plant|model:shield_small|model:shield_Big" "scaleZ"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop" 
		"translateX"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop" 
		"translateY"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop" 
		"translateZ"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop" 
		"rotateX"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop" 
		"rotateY"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop" 
		"rotateZ"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop" 
		"scaleX"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop" 
		"scaleY"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallTop" 
		"scaleZ"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid" 
		"translateX"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid" 
		"translateY"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid" 
		"translateZ"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid" 
		"rotateX"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid" 
		"rotateY"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid" 
		"rotateZ"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid" 
		"scaleX"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid" 
		"scaleY"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallMid" 
		"scaleZ"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom" 
		"translateX"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom" 
		"translateY"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom" 
		"translateZ"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom" 
		"rotateX"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom" 
		"rotateY"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom" 
		"rotateZ"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom" 
		"scaleX"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom" 
		"scaleY"
		9 "|model:shield_Plant|model:shield_small|model:thorns_Small|model:thorn_smallBottom" 
		"scaleZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen" 
		"translateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen" 
		"translateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen" 
		"translateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen" 
		"rotateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen" 
		"rotateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen" 
		"rotateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen" 
		"scaleX"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen" 
		"scaleY"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen" 
		"scaleZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1" 
		"translateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1" 
		"translateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1" 
		"translateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1" 
		"rotateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1" 
		"rotateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1" 
		"rotateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1" 
		"scaleX"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1" 
		"scaleY"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike1" 
		"scaleZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2" 
		"translateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2" 
		"translateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2" 
		"translateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2" 
		"rotateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2" 
		"rotateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2" 
		"rotateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2" 
		"scaleX"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2" 
		"scaleY"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_main|model:rightStamen_spike2" 
		"scaleZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point" 
		"translateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point" 
		"translateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point" 
		"translateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point" 
		"rotateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point" 
		"rotateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point" 
		"rotateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point" 
		"scaleX"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point" 
		"scaleY"
		9 "|model:shield_Plant|model:stamens|model:stamen_right|model:rightStamen_point" 
		"scaleZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point" 
		"translateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point" 
		"translateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point" 
		"translateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point" 
		"rotateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point" 
		"rotateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point" 
		"rotateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point" 
		"scaleX"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point" 
		"scaleY"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_point" 
		"scaleZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen" 
		"translateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen" 
		"translateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen" 
		"translateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen" 
		"rotateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen" 
		"rotateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen" 
		"rotateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen" 
		"scaleX"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen" 
		"scaleY"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen" 
		"scaleZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1" 
		"translateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1" 
		"translateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1" 
		"translateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1" 
		"rotateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1" 
		"rotateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1" 
		"rotateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1" 
		"scaleX"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1" 
		"scaleY"
		9 "|model:shield_Plant|model:stamens|model:stamen_mid|model:midStamen_main|model:midStamen_spike1" 
		"scaleZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1" 
		"translateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1" 
		"translateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1" 
		"translateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1" 
		"rotateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1" 
		"rotateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1" 
		"rotateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1" 
		"scaleX"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1" 
		"scaleY"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen_spike1" 
		"scaleZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen" 
		"translateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen" 
		"translateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen" 
		"translateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen" 
		"rotateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen" 
		"rotateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen" 
		"rotateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen" 
		"scaleX"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen" 
		"scaleY"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_main|model:leftStamen" 
		"scaleZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point" 
		"translateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point" 
		"translateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point" 
		"translateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point" 
		"rotateX"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point" 
		"rotateY"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point" 
		"rotateZ"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point" 
		"scaleX"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point" 
		"scaleY"
		9 "|model:shield_Plant|model:stamens|model:stamen_left|model:leftStamen_point" 
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
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 976\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
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
createNode skinCluster -n "skinCluster1";
	rename -uid "42ED8285-6743-21BE-116D-AF9C94C22FAF";
	setAttr -s 222 ".wl";
	setAttr ".wl[0:100].w"
		5 0 0.60936035497963525 1 0.26708616577839139 2 0.084971332969123181 
		3 0.027134391868097019 4 0.011447754404753225
		5 0 0.56576694411413375 1 0.32415009748759893 2 0.080691168824797641 
		3 0.020617267821637367 4 0.0087745217518321421
		5 0 0.5932823897347379 1 0.29859049102911317 2 0.07754863910599015 
		3 0.020961160410766462 4 0.0096173197193922862
		5 0 0.7002599394785709 1 0.19930373990075734 2 0.065776997321230754 
		3 0.023025226270207141 4 0.011634097029233865
		5 0 0.74858574589768967 1 0.14174082542040484 2 0.062573047510666002 
		3 0.030269740542596808 4 0.016830640628642621
		5 0 0.73376295685157455 1 0.13431011538715276 2 0.068847379967392722 
		3 0.040151942074385598 4 0.022927605719494377
		5 0 0.71660823997087597 1 0.14329765480865211 2 0.073983674076007033 
		3 0.043119270301739739 4 0.022991160842725077
		5 0 0.69481481985826687 1 0.17846268362524872 2 0.076289792354271801 
		3 0.034518878636805826 4 0.015913825525406752
		5 0 0.36742063855539425 1 0.37317298329794452 2 0.20614201306836444 
		3 0.041274557184364853 4 0.011989807893931911
		5 0 0.40287795702577012 1 0.40287795702577012 2 0.16474759589106192 
		3 0.022465246978333464 4 0.0070312430790644351
		5 0 0.41701412350465661 1 0.41701412350465661 2 0.1401103025260724 
		3 0.019224595086156676 4 0.00663685537845775
		5 0 0.41113954301687766 1 0.41113954301687766 2 0.14241178057515952 
		3 0.025741920584055267 4 0.0095672128070298287
		5 0 0.42048027714763908 1 0.36310170141741177 2 0.15597474421101357 
		3 0.043716255459771286 4 0.016727021764164303
		5 0 0.4285393634161383 1 0.30732629135135608 2 0.16838823551868842 
		3 0.070028991985348996 4 0.025717117728468349
		5 0 0.38132345926848527 1 0.30521149831143224 2 0.19446550650317562 
		3 0.089734632126242483 4 0.029264903790664418
		5 0 0.34200593396252021 1 0.34085002455528041 2 0.22014707304277184 
		3 0.075018359982686078 4 0.021978608456741485
		5 1 0.0083549021716787155 2 0.13878505109951514 3 0.4436932506685779 
		4 0.36402575167114715 5 0.045141044389081127
		5 1 0.011162294762781343 2 0.19715988353199829 3 0.46753529551201406 
		4 0.28753178980419236 5 0.036610736389013937
		5 1 0.012877607487597824 2 0.19858917314834476 3 0.47889817136405194 
		4 0.27534555450989801 5 0.034289493490107563
		5 1 0.013424887802121369 2 0.14897469951094522 3 0.44908058381704968 
		4 0.34293828051563136 5 0.045581548354252294
		5 1 0.0089128607430968097 2 0.085954758006080725 3 0.42869836752804114 
		4 0.41826587760311823 5 0.058168136119663018
		5 2 0.05945775503329901 3 0.42575903716656471 4 0.42575903716656471 
		5 0.078905152828640593 6 0.010119017804930961
		5 2 0.047554010314668944 3 0.44238325318606442 4 0.44238325318606442 
		5 0.060627822002418758 6 0.0070516613107834154
		5 2 0.074697251006236517 3 0.43472205032735473 4 0.43192311523123972 
		5 0.051872740022970189 6 0.0067848434121988918
		5 3 0.041530931246226963 4 0.41010481227194906 5 0.44432019827035008 
		6 0.084009787108894007 23 0.020034271102579961
		5 3 0.029189251443583055 4 0.43209576803146438 5 0.4776797325857649 
		6 0.053906096299722088 23 0.0071291516394656118
		5 3 0.032785000164529295 4 0.44285471647087682 5 0.46995860569429454 
		6 0.047537658214708137 23 0.0068640194555912824
		5 3 0.046796727514633922 4 0.42521300192667916 5 0.44168898332077045 
		6 0.067481532381592588 23 0.018819754856323919
		5 3 0.044178755999276433 4 0.32039608311354068 5 0.50160740756736177 
		6 0.077439222498256632 23 0.056378530821564431
		5 4 0.11087076217441798 5 0.71590304573834596 6 0.05553611295593662 
		23 0.10344973499965465 24 0.014240344131644699
		5 4 0.080584881774222267 5 0.74055449819831298 6 0.05383285173048645 
		23 0.11261072678077888 24 0.012417041516199356
		5 3 0.036497082324903264 4 0.31701243478114921 5 0.49202368944857711 
		6 0.09700254152326486 23 0.057464251922105601
		5 5 0.15778909651761816 6 0.49037292713728126 7 0.2896703417929592 
		8 0.032464343834764361 23 0.029703290717377068
		5 5 0.18413762206795903 6 0.59124272954561652 7 0.19644521088225206 
		8 0.017313562868609113 23 0.010860874635563256
		5 4 0.011449606018863658 5 0.27437691482242699 6 0.58572057779584807 
		7 0.11738621871260417 8 0.011066682650257188
		5 5 0.33960083791218598 6 0.48195042867634835 7 0.12060902234535062 
		23 0.040395817752216283 24 0.017443893313898808
		5 5 0.22369632759563321 6 0.48186356193190233 7 0.082871800424720393 
		23 0.14727885872685836 24 0.064289451320885635
		5 5 0.08298717903121966 6 0.63289451599121094 7 0.036909235441623438 
		23 0.15600359437067665 24 0.09120547516526932
		5 5 0.24619931547143151 6 0.081058517098426819 7 0.1356213321966345 
		23 0.34467532010096763 24 0.19244551513253952
		5 5 0.12548839285771879 6 0.50632599856804372 7 0.23470875023930432 
		23 0.089432770849674353 24 0.044044087485258787
		5 5 0.13273149685203511 6 0.23499502241611481 7 0.15433591671440106 
		23 0.2788885596495197 24 0.19904900436792933
		5 6 0.84265678911782949 7 0.058032996687040324 8 0.017347311012226519 
		19 0.067442110544701922 23 0.01452079263820171
		5 5 0.45192654826709933 6 0.041625432670116425 7 0.01655560022442279 
		23 0.44484735120301522 24 0.045045067635346166
		5 5 0.10770027595281871 6 0.52948832511901855 7 0.18371927920611208 
		23 0.1141331590107697 24 0.064958960711280905
		5 5 0.37276773978956101 6 0.26465810967112929 7 0.041108159458829334 
		23 0.28066674540497438 24 0.040799245675506003
		5 6 0.5221343719067465 7 0.26464268498152882 8 0.084196430791808663 
		19 0.09795362439000832 23 0.031072887929907783
		5 6 0.99095633174039 7 0.0036102262078700825 19 0.0037488120422513788 
		23 0.00084229875156824688 24 0.00084233125792028624
		5 5 0.4768452850888889 6 0.1314943890461123 7 0.013829587652944501 
		23 0.33501322663584726 24 0.042817511576207029
		5 3 0.037903561143026489 4 0.27127885163016258 5 0.5345835860815914 
		6 0.081350810320675773 23 0.074883190824543616
		5 3 0.10218869694793355 4 0.36243028007536371 5 0.43835193631953012 
		6 0.044322795861768259 23 0.052706290795404273
		5 4 0.085616596410367951 5 0.7449293159993966 6 0.042403494592877101 
		23 0.11402731204688157 24 0.013023280950476907
		5 4 0.020747291116890085 5 0.46053320219859067 6 0.1676113016107961 
		23 0.30442634047542261 24 0.046681864598300496
		5 3 0.1763603865812878 4 0.45542572421464783 5 0.31796139561735426 
		6 0.027947048365437308 23 0.022305445221272972
		5 3 0.085763155139124761 4 0.3808912609360135 5 0.45957106187423474 
		6 0.034933885145468406 23 0.03884063690515855
		5 5 0.43261979073115853 6 0.027793335603737663 23 0.43291856003646578 
		24 0.09420263799157351 25 0.012465675637064549
		5 5 0.41124164853768685 6 0.022583038301657889 23 0.42107297007921562 
		24 0.1281666067004863 25 0.01693573638095338
		5 5 0.091978277194378483 6 0.11563950777053833 23 0.40400039379122299 
		24 0.35604781630521837 25 0.032334004938641775
		5 5 0.066782953277335674 6 0.00055184582015499473 19 1.0210727899243573e-07 
		23 0.4672598526065781 24 0.4654052461886522
		5 5 0.32460182396070769 6 0.047789768364041675 23 0.43754968286643053 
		24 0.17199832145391261 25 0.018060403354907537
		5 5 0.37210971945754034 6 0.015908144414424896 23 0.42277891314210264 
		24 0.16911868062089289 25 0.02008454236503927
		5 5 0.22977261696275211 6 6.3167497899030423e-09 19 0.0004388423841714208 
		23 0.43978328748945555 24 0.33000524684687116
		4 5 0.11636510308260055 6 2.2001682737027295e-05 23 0.45116791775044296 
		24 0.43244497748421951
		5 6 0.065915503373205855 7 0.4721977519470707 8 0.36751762053823434 
		9 0.083196278222017001 10 0.011172845919472162
		5 6 0.087029897802578637 7 0.43292075692019572 8 0.37962902215021826 
		9 0.087499707657018699 10 0.012920615469988489
		5 6 0.072132627629768534 7 0.4865114358732705 8 0.36028907118771908 
		9 0.070817640918285227 10 0.010249224390956633
		5 6 0.10018096041911759 7 0.46101535366905294 8 0.36798194923251232 
		9 0.060962073496484262 10 0.0098596631828328212
		5 6 0.12056852289861934 7 0.41086130241869229 8 0.35270091922199476 
		9 0.054971061531597261 19 0.06089819392909631
		5 6 0.53971846775315435 7 0.22560125951833893 8 0.20224970277306412 
		9 0.031956390413517652 19 0.00047417954192496836
		5 6 0.12212971808529198 7 0.40121956382527957 8 0.37333048043268613 
		9 0.080446944048315358 19 0.022873293608427048
		5 6 0.6257006646952511 7 0.17752840180832713 8 0.16383092694314005 
		9 0.031500201992776936 19 0.0014398045605048537
		5 7 0.017936351260007782 8 0.39728668255829946 9 0.55251841642035626 
		10 0.029039736949508069 11 0.0032188128118282554
		5 7 0.021203074196270186 8 0.38537634170978291 9 0.55348274483768911 
		10 0.036187961187801099 11 0.0037498780684566868
		5 7 0.051051885657200126 8 0.39149972601272248 9 0.45165953283255278 
		10 0.09482746367883467 11 0.010961391818689943
		5 7 0.073469197409070097 8 0.37495797305873296 9 0.39588473892396764 
		10 0.13749328024783142 11 0.018194810360398005
		5 7 0.084662805180019673 8 0.37214072004581017 9 0.38113929693819198 
		10 0.15481368472976195 19 0.0072434931062161922
		5 7 0.084917423007341758 8 0.37414632582885921 9 0.38083321094737271 
		10 0.15172432309941469 19 0.0083787171170115471
		5 7 0.073917142623844717 8 0.38329796719010528 9 0.39452640128839933 
		10 0.12863300877744097 11 0.019625480120209676
		5 7 0.048680767716116305 8 0.41065745297906686 9 0.4479079864675925 
		10 0.081638522102175273 11 0.011115270735049226
		5 9 0.011302344790090091 10 0.067464439265598475 11 0.44180387068196192 
		12 0.45327066344856498 13 0.026158681813784408
		5 9 0.010845839419893137 10 0.056577292712945634 11 0.42879784764561341 
		12 0.46644849960641277 13 0.037330520615135046
		5 9 0.0071772814204830717 10 0.038518871591453355 11 0.41813442724722272 
		12 0.49423133167106248 13 0.041938088069778369
		5 10 0.030146040440650598 11 0.4144594004307402 12 0.50860813376356251 
		13 0.041479402651985561 14 0.0053070227130611186
		5 9 0.0048809238636978664 10 0.031458500096446539 11 0.43301178911816945 
		12 0.49502668599573091 13 0.035622100925955351
		5 9 0.0051731719576191123 10 0.038132906577654155 11 0.45687697300072577 
		12 0.4750328655205428 13 0.024784082943458092
		5 9 0.0053624333132957364 10 0.045064583066293282 11 0.46569218133268953 
		12 0.46807698015239496 13 0.01580382213532645
		5 9 0.0073569493207403707 10 0.057299352561216113 11 0.46446526028473883 
		12 0.45483843761158133 13 0.016040000221723281
		5 11 0.011606844082472199 12 0.34241503288376646 13 0.4725070705886677 
		14 0.16755874411210694 15 0.0059123083329867291
		5 11 0.0079739226346970185 12 0.2669043764581267 13 0.53096009659006316 
		14 0.19144272198169565 15 0.0027188823354175138
		5 11 0.0056081340159261405 12 0.27036290487215542 13 0.56072187837138621 
		14 0.16121357567203828 17 0.0020935070684939138
		5 11 0.0063996025852365544 12 0.39672704122466884 13 0.50057024776961734 
		14 0.093851890996893977 17 0.0024512174235833393
		5 11 0.017251518699636436 12 0.46366283299323752 13 0.46366283299323752 
		14 0.052516072398032229 17 0.0029067429158563117
		5 10 0.0061428185273282128 11 0.040734987960948842 12 0.47227607714111913 
		13 0.43230618864387504 14 0.048539927726728722
		5 11 0.036839282224733746 12 0.47345718094059952 13 0.41339482997365279 
		14 0.0676469957995042 15 0.0086617110615098657
		5 11 0.02180950232750016 12 0.43263451034527761 13 0.42088758029014905 
		14 0.11525674638392841 15 0.0094116606531447679
		5 11 0.00047339082121727373 12 0.0027625764922875871 13 0.01018733529713913 
		14 0.94578259219734007 15 0.040794105192016011
		5 12 0.032478476577773148 13 0.28975721332733656 14 0.61891353151369777 
		15 0.051210405141540148 17 0.0076403734396524462
		5 12 0.026487267714450216 13 0.37226257796356127 14 0.57265075540808874 
		15 0.0092415723300386526 17 0.019357826583861103
		5 12 0.0010500054116434165 13 0.010336477820362748 14 0.98686453945415076 
		15 0.00011295610719753035 17 0.0016360212066455113
		5 11 0.0038616772671101252 12 0.05517219541271761 13 0.1513853457394517 
		14 0.7749453427630637 17 0.014635438817656889
		5 11 0.023827529502242626 12 0.3496362043594155 13 0.41853939205709417 
		14 0.19675833829799141 15 0.011238535783256398
		1 11 0.031913800841884256;
	setAttr ".wl[100:200].w"
		4 12 0.21232453430922235 13 0.23157608059293011 14 0.45076609230112269 
		15 0.073419491954840516
		5 11 0.00081545376548403407 12 0.0042025632716522687 13 0.0063985867876980651 
		14 0.93530049084734235 15 0.053282905327823329
		5 32 0.013797154349690711 33 0.0687255451178653 34 0.77231961805082128 
		35 0.0030325216343433234 37 0.14212516084727947
		5 32 7.9062119912660638e-06 33 5.3814413221383072e-05 34 0.99915192632529104 
		35 2.2854886061560247e-06 37 0.00078406756089008183
		5 32 0.0086181792871635621 33 0.082047848206053556 34 0.82444016755457838 
		35 0.0042849263494610917 37 0.080608878602743406
		5 32 0.036658352319288129 33 0.39276371904036744 34 0.48505384184609862 
		35 0.048717660797097502 37 0.036806425997148368
		5 32 0.0032040464202184181 33 0.031831685498218666 34 0.94515150429890094 
		35 0.019151656979656463 37 0.00066110680300547121
		5 32 0.015630382868099573 33 0.080050750876043755 34 0.85836168733606166 
		35 0.044437301915739393 37 0.0015198770040556738
		5 32 0.11584405394855835 33 0.38248978096189723 34 0.43439034757000861 
		35 0.04962198365057368 37 0.017653833868962181
		5 32 0.10151067726210954 33 0.34387342511196017 34 0.45492682788803745 
		35 0.023350655352152413 37 0.076338414385740516
		5 28 0.0010568840040315521 29 0.004317498324144263 30 0.032191212264676722 
		31 0.84389382709899541 32 0.11854057830815203
		5 28 0.0020054402058360728 29 0.0072464017655785966 30 0.044039257735400808 
		31 0.66603571787891958 32 0.28067318241426492
		5 28 0.0019345590771970738 29 0.0072464572668676378 30 0.046611014913141076 
		31 0.6126737964570228 32 0.33153417228577137
		5 28 0.0017135074017611788 29 0.0072345043711688145 30 0.056569332076311478 
		31 0.64328463380742495 32 0.29119802234333353
		5 28 0.0024456302135520409 29 0.011705480836465826 30 0.1062366205560492 
		31 0.66483875601515707 32 0.21477351237877587
		5 28 0.0033536046581397571 29 0.017586335971258613 30 0.16630997648529497 
		31 0.66584340436968958 32 0.14690667851561701
		5 28 0.0028514435748432537 29 0.015592388926252407 30 0.15431857346338376 
		31 0.73078802604877569 32 0.096449567986744936
		5 28 0.0010669358665428748 29 0.0054126677045851215 30 0.054466386759668167 
		31 0.88179635751696284 32 0.057257652152240976
		5 28 0.013312966125036177 29 0.18360077570310548 30 0.56517272961595433 
		31 0.23335999761210705 32 0.0045535309437968506
		5 28 0.015306386166497286 29 0.1566022737606115 30 0.48835284272547075 
		31 0.33194191728207278 32 0.0077965800653475763
		5 28 0.017024369937807791 29 0.18362413695042235 30 0.45944641085931553 
		31 0.33194066563569929 32 0.0079644166167549286
		5 28 0.0157321344144979 29 0.25217822446653398 30 0.47518328545366495 
		31 0.25204995949471076 32 0.0048563961705924662
		5 28 0.012736131692109525 29 0.35534832138691125 30 0.4966277660749745 
		31 0.13284625531614938 39 0.0024415255298554459
		5 28 0.014770245058527117 29 0.42011120557728665 30 0.47715667949974483 
		31 0.083585568621463407 39 0.0043763012429780136
		5 28 0.020014949569453648 29 0.41261748217440786 30 0.47475628046038254 
		31 0.086092744683578998 39 0.0065185431121770176
		5 28 0.018786745917699913 29 0.32439293372237293 30 0.52788792692874298 
		31 0.12543724844143331 39 0.0034951449897508828
		5 27 0.01214364504531781 28 0.3975358932553727 29 0.51695351216347529 
		30 0.064614075651968195 31 0.0087528738838660233
		5 27 0.022911264830777833 28 0.35185535291735792 29 0.46602467146969878 
		30 0.13720135518590013 31 0.022007355596265307
		5 27 0.018876082615246564 28 0.33670994589345732 29 0.45000312380745194 
		30 0.17048326049001872 31 0.023927587193825463
		5 27 0.013359676070780306 28 0.3648728217166643 29 0.45618767083285816 
		30 0.14862000427775585 31 0.016959827101941313
		5 28 0.38353245678442943 29 0.47456924316500476 30 0.10012586377901303 
		31 0.010371245703682842 39 0.031401190567869899
		5 27 0.0019780927386797062 28 0.078479825669332509 29 0.87067163155225136 
		30 0.016271178802541024 39 0.032599271237195422
		5 27 0.00072187804428034883 28 0.028303539463591654 29 0.95601140240738514 
		30 0.0046945912580688195 39 0.010268588826674099
		5 27 0.0082253555038682494 28 0.39584344481938433 29 0.54133017732272859 
		30 0.042982624259959627 39 0.011618398094059332
		5 25 0.050393957687255471 26 0.36515650458872878 27 0.49066181601240988 
		28 0.086972845411204674 29 0.0068148763004012352
		5 24 0.013137292835860339 25 0.097450228293183103 26 0.40139345761477929 
		27 0.399070113106404 28 0.088948908149773215
		5 24 0.011381735291412152 25 0.099568113936935765 26 0.42861652230455466 
		27 0.40423646848990485 28 0.056197159977192677
		5 25 0.068640202566394554 26 0.44417197912230977 27 0.44296617283332246 
		28 0.036714115368693664 42 0.0075075301092794849
		5 25 0.037218687536639039 26 0.43041613644909937 27 0.49312139147644252 
		28 0.02470469848831346 42 0.014539086049505625
		5 25 0.006316908660962941 26 0.075214261541161009 27 0.89809522859599 
		28 0.0060008058377601318 42 0.014372795364125952
		5 25 0.0012642404046101113 26 0.011589010989847952 27 0.98029209769637005 
		28 0.0014936111056676618 42 0.0053610398035041891
		5 25 0.027354480425506228 26 0.25352052461097196 27 0.67197494937867164 
		28 0.030556123658880486 42 0.016593921925969729
		5 24 0.099521408908160261 25 0.43066327484318878 26 0.36761517066422078 
		27 0.083316985470417521 28 0.018883160114012545
		5 24 0.17909726438187207 25 0.43715213463012303 26 0.29782746190057552 
		27 0.068142406765019717 28 0.017780732322409693
		5 23 0.016500000806637639 24 0.18732231985843142 25 0.43677065005251214 
		26 0.30487344628236768 27 0.054533583000051143
		5 6 0.0043715261854231358 24 0.13546093626389732 25 0.45766241189013623 
		26 0.36393651244921793 27 0.038568613211325375
		4 24 0.091576514002399106 25 0.46122974788040627 26 0.41669294228466519 
		27 0.030500795832529518
		4 6 1.5136981062287545e-06 24 0.075704381792291275 25 0.47105753131115896 
		26 0.45323657319844357
		5 19 0.00094025512225925922 24 0.072433818841707548 25 0.44140367429773225 
		26 0.43242545786012115 27 0.052796793878179794
		5 24 0.075707527882857728 25 0.42543760548929288 26 0.40709364844685497 
		27 0.077433322120033038 28 0.014327896060961262
		5 26 0.0036363053933938607 27 0.13218727353813112 28 0.84206498671463803 
		29 0.020182913108555675 30 0.0019285212452812076
		5 26 0.019107855043593743 27 0.39869092828323033 28 0.5104091748580849 
		29 0.054120637301494037 39 0.017671404513596937
		5 27 0.35916504125529081 28 0.3940418233281649 29 0.12820256230233965 
		39 0.076055422291727418 42 0.042535150822477177
		5 27 0.38998435827178424 28 0.42365280745191181 29 0.10253957914372293 
		39 0.054138987447045997 42 0.029684267685535053
		5 26 0.027223118570997761 27 0.41179935776931664 28 0.47275590272726065 
		29 0.070074686715377976 39 0.018146934217046946
		5 26 0.048331354566301492 27 0.37855042033592728 28 0.45349250715218153 
		29 0.1025882438532464 30 0.01703747409234338
		5 26 0.06692039627880754 27 0.34761390053227087 28 0.44040449145957272 
		29 0.12031012936963525 30 0.024751082359713662
		5 26 0.041590123060304844 27 0.30505225358906496 28 0.52530061251985771 
		29 0.10860844342647162 30 0.019448567404300853
		5 5 0.030634286317378644 23 0.27978294226576278 24 0.45355542580265429 
		25 0.20628556733419162 26 0.02974177828001277
		5 5 0.02402204317110649 23 0.33335600596121134 24 0.51210137004084366 
		25 0.11639974023056097 26 0.014120840596277485
		5 5 0.020474043614702595 23 0.2504513441831871 24 0.52226464842208054 
		25 0.18426977300469524 26 0.022540190775334569
		5 6 0.0023907918948680162 23 0.11173768401573264 24 0.55739604649265928 
		25 0.30293940471673508 26 0.02553607288000501
		5 6 5.3301861044019461e-05 19 0.0011617422599313736 23 0.077524017316942792 
		24 0.54653433959890463 25 0.37472659896317723
		4 6 1.9788153338140546e-07 23 0.09443484467485995 24 0.50897963567030213 
		25 0.39658532177330452
		5 6 1.8692707044465351e-06 19 0.00047206759716245691 23 0.14761033915891161 
		24 0.49182383369563182 25 0.36009189027758975
		5 6 0.0060652759857475758 23 0.22663764869364883 24 0.44343886649933356 
		25 0.28215260000055414 26 0.041705608820715889
		5 8 0.016268276342182149 9 0.18607072172621211 10 0.58625844065914445 
		11 0.20060508146883105 12 0.010797479803630185
		5 8 0.023027706286072612 9 0.23468920925547054 10 0.48243837903710202 
		11 0.24116841714969062 12 0.018676288271664176
		5 8 0.026154511980815722 9 0.28569668925776054 10 0.43024291535233905 
		11 0.23545471631730513 12 0.022451167091779571
		5 8 0.02555096515098226 9 0.32498380535927202 10 0.41676236151078683 
		11 0.21180109273448874 12 0.020901775244470143
		5 8 0.027834998976316562 9 0.34406522176360987 10 0.4100928787635853 
		11 0.19712382626991157 12 0.02088307422657662
		5 8 0.032467392459240282 9 0.33809382606295585 10 0.41074846977705631 
		11 0.19646176311392699 12 0.02222854858682068
		5 8 0.031424472447773036 9 0.30749982746602988 10 0.44437484797179955 
		11 0.19714049081439186 12 0.019560361300005727
		5 8 0.021201102051181381 9 0.23434656208507779 10 0.54452922500650691 
		11 0.18756143407657652 12 0.012361676780657355
		5 0 0.04492053437352745 1 0.2033755070517296 2 0.38866386376607409 
		3 0.30810835279996229 4 0.054931742008706493
		5 0 0.031920879035684864 1 0.12093734879828774 2 0.39372604341266265 
		3 0.38200529240354714 4 0.071410436349817585
		5 0 0.026838416864502244 1 0.098975188860941601 2 0.40371584174751818 
		3 0.39553045904687589 4 0.074940093480162159
		5 0 0.032768693194988173 1 0.14260313279101267 2 0.42037084516274448 
		3 0.34099304594804553 4 0.063264282903209054
		5 0 0.037446923776081588 1 0.26902100979599286 2 0.46925225048190133 
		3 0.19176279793486542 4 0.032517018011158721
		5 0 0.032499617531683359 1 0.41569045752737738 2 0.46631181453294929 
		3 0.073320560613676838 4 0.012177549794313213
		5 0 0.037233265933813091 1 0.42256411349107459 2 0.44690375876903188 
		3 0.080152501763321241 4 0.01314636004275924
		5 0 0.051003586613965403 1 0.34721418031208073 2 0.41654967111701918 
		3 0.15895694471362956 4 0.026275617243305172
		5 30 0.0085005872308622967 31 0.12609353802753492 32 0.79430721023592588 
		33 0.062366938368347558 34 0.0087317261373294607
		5 30 0.0081073824308977444 31 0.15662970459855882 32 0.806125162863775 
		33 0.025364453148522786 34 0.0037732969582456462
		5 30 0.011050950962651723 31 0.2220592409848921 32 0.73832208398834298 
		33 0.024757975480147638 34 0.0038097485839655863
		5 30 0.011758872235843607 31 0.2195487058149998 32 0.71850705688840166 
		33 0.043753299196867268 34 0.0064320658638877797
		5 30 0.0071837802251493495 31 0.13262733370906815 32 0.77612673400082643 
		33 0.075547567849514899 34 0.0085145842154411636
		5 30 0.0034540462393382629 31 0.060789172830203166 32 0.82872620164769628 
		33 0.099098728892778182 34 0.0079318503899841377
		5 30 0.003682417358262976 31 0.0566302107167896 32 0.80729355919284773 
		33 0.12192504379943274 34 0.010468768932666999
		5 30 0.0064303334665079459 31 0.088287854282742134 32 0.77678629576758684 
		33 0.11502987630230682 34 0.013465640180856315
		5 0 0.17091661114678236 1 0.35809851837073148 2 0.35494493795175014 
		3 0.095110618656028073 4 0.020929313874707759
		5 0 0.15767529081150952 1 0.30638372778481054 2 0.32929434648619349 
		3 0.17021779922823929 4 0.036428835689247124
		5 0 0.15834208317473586 1 0.27496459424390873 2 0.32180065681588366 
		3 0.19911298606838304 4 0.045779679697088786
		5 0 0.19399581622108772 1 0.30841496060256313 2 0.30741890681511158 
		3 0.15059486381961701 4 0.039575452541620565
		5 0 0.22805930720262238 1 0.36629270163719674 2 0.31203526182564378 
		3 0.073248308793671404 4 0.020364420540865721
		5 0 0.23890444051486476 1 0.40160304672019759 2 0.31510858678981174 
		3 0.034708964798047665 4 0.0096749611770783235
		5 0 0.21353391500512497 1 0.4085843307297885 2 0.34229548587788394 
		3 0.028231103496343744 4 0.007355164890858891
		5 0 0.19246826554551777 1 0.39155892201495052 2 0.36377678057162349 
		3 0.042120728795066439 4 0.010075303072841851
		5 0 0.45763083858206499 1 0.38641570873864972 2 0.11757902069586022 
		3 0.028265657788601337 4 0.010108774194823726
		5 0 0.53326483266523572 1 0.29373754903163996 2 0.11605622595504156 
		3 0.04146035664126569 4 0.015481035706817192
		4 0 0.62597532842089121 1 0.20833999954221591 2 0.097414055288452969 
		3 0.047675905250253517;
	setAttr ".wl[200:221].w"
		1 4 0.020594711498186279
		5 0 0.66652722061501402 1 0.188016377957435 2 0.084833482107072297 
		3 0.041054279528495538 4 0.019568639791983203
		5 0 0.61664860987510872 1 0.24149982722364599 2 0.091034641320432833 
		3 0.034413398043017143 4 0.016403523537795346
		5 0 0.51378490820791256 1 0.34581198694422366 2 0.10119377377351003 
		3 0.027087775332667503 4 0.012121555741686265
		5 0 0.45006907652630085 1 0.41396064701017921 2 0.10488542940066369 
		3 0.021989216317304817 4 0.0090956307455514387
		5 0 0.44059391107955698 1 0.42503629893431583 2 0.10593230003740393 
		3 0.020636942723237715 4 0.0078005472254854043
		5 1 0.044968557722771106 2 0.42401037316497181 3 0.42401037316497181 
		4 0.090946747116354851 5 0.016063948830930524
		5 1 0.029718520889810723 2 0.38629781218804504 3 0.4165814817033488 
		4 0.14676424622776466 5 0.020637938991030752
		5 1 0.024818986866985117 2 0.32917170704227672 3 0.4277582590125375 
		4 0.19575265590989527 5 0.022498391168305362
		5 1 0.034963860247269572 2 0.3282121770680641 3 0.41921833874792125 
		4 0.1939748763770191 5 0.023630747559725981
		5 1 0.062089586770675671 2 0.39464817646845513 3 0.40832806862082621 
		4 0.11819857349158507 5 0.016735594648457981
		5 0 0.010545040986026905 1 0.10476698646728928 2 0.47614559780346105 
		3 0.35196020855063781 4 0.056582166192585007
		5 0 0.0096055001078102914 1 0.10492731623253733 2 0.48894640825013641 
		3 0.35478423095664174 4 0.041736544452874141
		5 1 0.076797665191497028 2 0.43961477753299377 3 0.41751358608544042 
		4 0.055255502839167046 5 0.010818468350901786
		5 31 0.014254422195258359 32 0.4028289004988872 33 0.4382636337822845 
		34 0.13377370193395641 37 0.010879341589613654
		5 31 0.038327297962047459 32 0.52594881074269739 33 0.35981945803983911 
		34 0.068716452303304698 35 0.0071879809521114132
		5 31 0.041352409830896095 32 0.61872496246660513 33 0.29426169738856922 
		34 0.036450905364215365 35 0.0092100249497142784
		5 31 0.026669174882515283 32 0.52174288396023549 33 0.37684388165010824 
		34 0.054465313831632431 35 0.02027874567550857
		5 31 0.0092544509735943761 32 0.43914690086091573 33 0.43914690086091573 
		34 0.088536736379806927 35 0.023915010924767176
		5 31 0.0040574991240157239 32 0.3932081883012209 33 0.46889310503521547 
		34 0.12258973151424644 35 0.011251476025301427
		5 32 0.25814069952845931 33 0.56749995720943835 34 0.16805842930926215 
		35 0.0029497219336464533 37 0.0033511920191937154
		5 31 0.0043926432746863031 32 0.28361647479843638 33 0.49767840319540729 
		34 0.20519391502649564 37 0.0091185637049744882;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.012728295233860504 0.99991782735513501 -0.0015261185493631081 -0
		 0.99280702824109124 0.012819459325065943 0.11903724685032832 -0 0.11904702925958592 1.0690233420707081e-16 -0.99288861652476801 -0
		 -0.90795101870048134 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513461 0.91862659735055918 -0.041563650809936667 -0
		 0.89526386431128191 0.39248175502475208 0.21085702556737568 -0 0.210011846539538 0.045642596473303453 -0.9766328776465748 -0
		 -0.37507697621182828 -2.8657604802815309 -0.94611761528610516 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402895 0.9445447650793507 0.045683164274527482 -0
		 0.94422144490049698 0.32697288226068943 -0.039173935928819348 0 -0.051938692002751134 0.030396069274366267 -0.99818758319551948 0
		 -1.5297596850582682 -2.7773530357943352 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790586 0.99329326174337518 0.045683164274527482 -0
		 0.99337604742855179 0.10802514123606741 -0.039173935928819348 0 -0.043846136866929383 0.041219716594552334 -0.99818758319551959 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810515 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885265 0.99890059027644973 0.045683164274527607 -0
		 0.99915653175010688 0.012313724251499982 -0.039173935928819466 0 -0.039693397610562217 0.045232542935574056 -0.99818758319551937 0
		 -3.4912318179848607 -1.9040448117726043 -0.56315261966810481 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871752 -0.9779020118066285 -0.091812310658712079 -0
		 0.96088145788389734 0.20231395106606309 -0.18914515351696121 -0 0.20354033747357872 -0.052694596578666153 0.9776474878567194 -0
		 -4.1608222065879765 0.98034715670107386 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.849256614102049 -0.40332677146099288 -0
		 0.89689896658620161 0.4222537097758039 -0.13143077385899588 -0 0.28192467949760502 -0.31696215544524442 0.90556803560289056 -0
		 -4.6827584700038933 -0.43291834424742021 1.8868280135693325 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143826 -0.47572266972118704 -0
		 0.74200082470018769 0.64087873460052991 -0.19674659763529495 -0 0.4473524375790161 -0.25474905055727082 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547873 -0.45027497011225115 -0.47572266972118704 -0
		 0.40753183853562547 0.89174468145243679 -0.19674659763529498 -0 0.51281322894014236 -0.045209229054513987 0.85730899787199377 -0
		 -3.7930210190858711 -3.6363074555288435 2.3527934785693625 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988877 -0.60770287165339087 -0
		 -0.15684837943322541 0.97734058610779651 -0.14214065082037369 0 0.58840109184103584 0.20806465329722415 0.78134067804548823 -0
		 -1.2358328313690483 -5.3627024397852345 2.4055843427903012 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304327 0.42405058758597708 -0.53977069894956764 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867554 0.18573444686090734 0.83774129179212098 -0
		 0.1968172812762447 -5.9805478664821443 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348465 0.49094017626205783 -0.60972944210779889 -0
		 -0.5253983994062138 0.83932464881653146 0.13960893879116207 0 0.58030058688812003 0.23347778742481168 0.78021750277503932 -0
		 0.47614274721700267 -5.961344900019987 0.95798160440020297 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516239 0.60280760005635936 -0.65335941194369052 -0
		 -0.66368542414675347 0.72082410497382132 0.19983560109207887 0 0.5914196324406692 0.34210467258279464 0.7301966936112233 -0
		 1.1441516084105745 -5.8141102579502952 0.85898842630906724 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387919 -0.10503749339307361 -0.91693018807666515 -0
		 0.17781968135064385 0.98332967287429862 -0.037985725862222486 -0 0.90563458731928081 -0.14842465909216213 0.39723559108470113 -0
		 -3.0698135514498937 -3.9119159816185101 3.2206463961358001 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042264 0.077623837547557792 -0.3834011912353672 -0
		 0.20793806673474038 0.92724908623729163 -0.31140149722621147 -0 0.33133622500252974 -0.36631089516488313 -0.86950137095037139 -0
		 1.3350913447026536 -3.8738355210740298 3.8541836841977992 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364847 -0.094924216888717688 0.38340119123536714 -0
		 -0.031825581119802333 0.94974535529880866 0.31140149722621158 0 -0.39369304385399273 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558672 -3.7939732910568535 -3.8541836841977997 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071677 -0.39002924497921759 0.452124470705772 -0
		 0.2418572836977026 0.90452625422546051 0.35119411973896503 -0 -0.54593443129409036 -0.17236427552656972 0.81990618563942996 -0
		 -4.4547110826954048 -2.2284950952224647 -4.392248129419202 1;
	setAttr ".pm[18]" -type "matrix" 0.8806009698142695 -0.14186400160433182 0.45212447070577194 -0
		 -0.029550252819743231 0.93583624252273023 0.35119411973896497 0 -0.47293626898394825 -0.32262227485054945 0.81990618563942974 -0
		 -4.8264647244913848 -3.7828002607320328 -4.3922481294192028 1;
	setAttr ".pm[19]" -type "matrix" 0.04444990963230469 -0.99486331132534522 -0.090946123130399792 -0
		 0.99875087560877895 0.046333564308836124 -0.018705327827550827 -0 0.022823102426645002 -0.090001069978133355 0.99568012604370837 -0
		 -5.1987338443485154 1.1631347543266388 0.9593990667563872 1;
	setAttr ".pm[20]" -type "matrix" 0.59746412934814974 -0.79672166835715486 -0.090946123130399792 -0
		 0.79887115989862156 0.60121126119950097 -0.018705327827550827 -0 0.06958077338236654 -0.061478472468806014 0.99568012604370837 -0
		 -6.0311161264281017 -2.7072772985180777 0.9593990667563872 1;
	setAttr ".pm[21]" -type "matrix" 0.86518594954605277 0.49313494643519812 -0.090946123130399764 -0
		 -0.49658384305064746 0.86778718447088932 -0.018705327827550817 0 0.069697629293580379 0.061345962152701043 0.99568012604370804 -0
		 1.7365891972474419 -7.8707547550432926 0.95939906675638709 1;
	setAttr ".pm[22]" -type "matrix" 0.99585451783966294 -0.0016068558999377096 -0.090946123130399764 -0
		 -9.4996095158742211e-05 0.99982503553702085 -0.018705327827550817 0 0.090960267557186225 0.018636424751305627 0.99568012604370815 -0
		 -3.6603758191881481 -6.9736763934885175 0.95939906675638698 1;
	setAttr ".pm[23]" -type "matrix" -0.32924786964475911 0.69647275897298944 0.63759041424957197 -0
		 0.89339606886512035 0.44836933267261597 -0.02843247535938619 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461437 0
		 -3.5395339554045822 -2.4005302806614881 -1.426859062061397 1;
	setAttr ".pm[24]" -type "matrix" -0.2788948936776629 0.7069333932652262 0.64997139611450527 -0
		 0.8885321965626376 0.44672740812313078 -0.10461911155789998 0 -0.36431878067442514 0.54834277629791328 -0.75272307373282876 0
		 -4.0483565879838146 -2.4178888731886139 -1.0785180430682908 1;
	setAttr ".pm[25]" -type "matrix" -0.23031898058193831 0.6528205623008978 0.72164983241239422 -0
		 0.83303853881336309 0.51558677386086182 -0.20054194441922923 0 -0.50299101387141465 0.55497350572517268 -0.66257410748362211 0
		 -4.4246285444210187 -2.6889499752129313 -0.5852217214780755 1;
	setAttr ".pm[26]" -type "matrix" -0.43594206856657181 0.59749643679491382 0.67301747441747795 -0
		 0.7008473455733657 0.69452627827057267 -0.16262302110831151 0 -0.5645949973712715 0.40078829425147744 -0.72152701414037557 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020237 1;
	setAttr ".pm[27]" -type "matrix" -0.80828667061645421 0.2506903381799318 0.53275417637687217 -0
		 0.21819681833351881 0.96794042383007672 -0.12442461325951773 0 -0.54686635165540887 0.015674509845052274 -0.83707317671050763 0
		 -1.278220982043448 -5.4701710369415641 -1.0637098843123747 1;
	setAttr ".pm[28]" -type "matrix" -0.82004746298995335 -0.20903383935798978 0.53275417637687217 -0
		 -0.32022389937182466 0.93913533097542601 -0.12442461325951776 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050752 0
		 1.4741587314170379 -5.4790257814298382 -1.0637098843123742 1;
	setAttr ".pm[29]" -type "matrix" -0.68115616977266769 -0.5822485630455535 0.44386133331482847 -0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048567 0 -0.16426653899654681 -0.4692574321309736 -0.86764852708682749 0
		 3.7155105341486685 -4.2535038943938588 -0.56138920422851701 1;
	setAttr ".pm[30]" -type "matrix" -0.50408143703462183 -0.80314784176126897 0.31757746946426541 0
		 -0.83807469275740265 0.36604707764536509 -0.40452484016049428 0 0.20864494769031905 -0.47006710289224019 -0.85761541764464611 -0
		 4.7675519887131355 -2.6983875271677138 0.40050570930127832 1;
	setAttr ".pm[31]" -type "matrix" -0.13887805416914528 -0.9736202144440087 0.18104298963559595 0
		 -0.84422276414869568 0.020829102434948937 -0.53558759599610806 0 0.51768794709103294 -0.22722197630897611 -0.82484505388522256 -0
		 5.131402912047518 -0.54383195128390038 1.1062768597705592 1;
	setAttr ".pm[32]" -type "matrix" -0.44544497944150713 0.31790426679360734 -0.8369681280937612 0
		 -0.53604559259280804 0.65406161496897952 0.53372139406810004 0 0.71710103399185066 0.68639659161347089 -0.12093728155217454 -0
		 3.5487087479939037 -1.8700671021165951 -2.7925192544727233 1;
	setAttr ".pm[33]" -type "matrix" -0.052113644842616026 -0.12229877356956341 -0.99112419908132532 0
		 -0.12985134008384805 0.98487688501104831 -0.11470026525411023 0 0.99016301561896736 0.12272135655343426 -0.067206183837786579 -0
		 1.5808752886267781 -4.2107979269501721 0.024886578657810372 1;
	setAttr ".pm[34]" -type "matrix" 0.51285923410589029 0.15316128048266991 0.84469937146491858 -0
		 -0.35222853801336468 0.93486282786315433 0.044345801251915153 0 -0.78288598339814941 -0.3202703783377655 0.53340080779662979 -0
		 1.1996854652596878 -4.1723182493855946 0.61489409327925182 1;
	setAttr ".pm[35]" -type "matrix" -0.73333549252294605 0.11850971777536495 0.66945836479868692 -0
		 0.055614854265168837 0.99184696103279268 -0.11465859703955258 0 -0.67758840263923692 -0.046851389337113004 -0.73394748035945334 0
		 -1.6184639253570574 -4.1509626321413302 0.61671609555364271 1;
	setAttr ".pm[36]" -type "matrix" 0.71787470010069721 0.19100108051108461 -0.66945836479868681 -0
		 -0.15418153999379064 0.98136713764526728 0.1146585970395526 0 0.67888435515960788 0.020907615682650958 0.73394748035945312 -0
		 2.987810459616135 -3.9063461047656256 -0.61671609555364337 1;
	setAttr ".pm[37]" -type "matrix" 0.86346497510865083 0.01229272663840846 -0.50425898666499791 -0
		 0.11820591342388179 0.96693328786482802 0.22598092585556948 -0 0.49036272165840966 -0.25473300863984616 0.83345995435716624 -0
		 -0.31526851927339061 -4.1175003486713431 -0.84111836428204012 1;
	setAttr ".pm[38]" -type "matrix" 0.85074581735119792 0.14817026903880434 -0.50425898666499791 -0
		 -0.035601726522438017 0.97348093880572806 0.22598092585556945 0 0.52437016632152489 -0.17429983693304779 0.83345995435716613 -0
		 -0.54266115293508965 -4.2561403836399734 -0.84111836428203923 1;
	setAttr ".pm[39]" -type "matrix" -0.51836859257157597 0.80319048658789161 -0.2935626755738362 -0
		 0.85499374135413664 0.49348852949922861 -0.15954552171071609 -0 0.016724367869042668 -0.33369763785108691 -0.94253179363456308 -0
		 -4.8180154521350591 -3.4553778402904016 -0.7848661515675518 1;
	setAttr ".pm[40]" -type "matrix" 0.13331225767208435 -0.9465985408103601 0.29356267557383614 -0
		 0.96950646724456246 0.18601730154215074 0.15954552171071607 0 -0.20563329478793038 0.26334153880972577 0.94253179363456319 -0
		 -6.3757106097054148 -0.94555417178716261 0.7848661515675518 1;
	setAttr ".pm[41]" -type "matrix" 0.95562517126066493 0.024525243382202185 0.2935626755738362 -0
		 -0.074275015140186543 0.98439242613298306 0.15954552171071609 0 -0.28506798167972303 -0.17427008868151553 0.94253179363456319 -0
		 0.085391099712523177 -7.5497824375075142 0.78486615156755213 1;
	setAttr ".pm[42]" -type "matrix" -0.16932532307067247 0.96527649990704545 -0.19892263243335806 -0
		 0.98556021377032699 0.16584045593116589 -0.034176135087669167 -0 1.3183898417423744e-16 -0.2018371172598033 -0.97941910237459295 -0
		 -5.7236422783817282 -1.9839300723893565 -0.95909989525908557 1;
	setAttr ".pm[43]" -type "matrix" 0.62316378607661982 -0.75637073054715476 0.19892263243335795 -0
		 0.7669143872697135 0.64083875849482563 0.034176135087669222 0 -0.15332716106865452 0.13125929903200931 0.97941910237459284 -0
		 -6.1360967711649694 -4.1170383759049205 0.95909989525908523 1;
	setAttr ".pm[44]" -type "matrix" 0.98000917862884818 -0.0034345464029732859 0.19892263243335798 -0
		 -0.0034345464029732738 0.99940992374574489 0.034176135087669222 0 -0.19892263243335823 -0.034176135087669333 0.97941910237459295 -0
		 -1.6944175488132156 -8.489243544670618 0.95909989525908523 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.03996262683058216 3.8922764855263239 0 1;
	setAttr -s 34 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 34 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 34 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "2ECF19FF-9942-24E5-A8C1-8F854ABAE219";
	setAttr -s 45 ".wm";
	setAttr -s 76 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0218558978132068 0.016693257253999505
		 -0.7887202317130233 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.55285599146418973 0.83327681637145512 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 -0 0 0 1.1112544331808816 2.2204460492503131e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.97711097834547334 0.2042019692831975 0.058368620435898071 -0.01219819191627142 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 3.7339127256756752e-16 -4.1443141421151696e-16
		 -1.9677451833572399e-15 0 0.62397205982694914 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 1 0.0099181449541167633 0.049761045010923273 -0.19521878179821359 0.97944632115972108 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 2.3308482165526669e-16 -2.102242206522474e-15
		 8.8138565138552196e-18 0 0.74887755142998613 -8.8817841970012523e-16 1.1102230246251565e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0047878082407099556 -0.13275955836529899 0.035720890210997724 0.99049280388977823 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -2.068479667092986e-32 -1.0445216676463865e-15
		 1.0157402474701645e-15 0 0.6096569657347366 4.4408920985006262e-16 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.11228499517756048 0.99367604371745588 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 3.1415926535897931 -3.1415926535897931
		 3.1415926535897931 0 0.5874218033074845 8.8817841970012523e-16 1.1102230246251565e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.047979735956221133 0.99884830927302037 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -1.358319771700038e-16 1.7068970619512373e-16
		 -1.113781373680858e-16 0 0.6079754401307067 0 2.2204460492503131e-16 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.98734434584770925 0.10715079400338773 -0.11623565431451072 0.012614385957322571 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 7.0558153084467704e-17 1.8058236022086499e-17
		 1.856028150741801e-16 0 0.55533925221940716 -1.1102230246251565e-16 2.2204460492503131e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.16074555144242539 -0.023511311699550258 -0.08860579728078033 0.98272941270823599 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 1.4823745696638306e-16 7.4839831787530615e-17
		 4.3371710899956399e-16 0 0.4634581488694085 2.2204460492503131e-16 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.01819243212222256 -0.051264996091637288 -0.12845029926880236 0.99022293257980942 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 1.6117448275972853e-16 -9.2589632585177684e-18
		 3.2385542667964016e-16 0 0.32348651020118346 -0.054789604720485885 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.21321479559645715 0.97700534846988474 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 1.5508654275248692e-16 1.1409583143760175e-16
		 5.9084601158261191e-16 0 0.3874994100028939 -0.022402633287539331 -1.3322676295501878e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.03758580615012367 -0.071625759072876258 -0.276193614482863 0.9576920930717614 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 6.8003732429111654e-17 -3.7315610807186579e-17
		 2.740784732363265e-16 0 0.3588773239945493 -0.025803637014960579 8.8817841970012523e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.12056395789947492 0.0070809145127802234 -0.15728695254559302 0.98014029978579931 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 1.0384253361106955e-17 1.0799130900072383e-16
		 1.6117885626165833e-16 0 0.39131734071914304 -0.010831968840762762 -6.6613381477509392e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0025326712694288354 -0.053426760181526506 -0.047283590601175068 0.99744845928629677 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 3.3306690738754696e-16 -1.2490009027033009e-16
		 -8.3266726846886765e-17 0 0.56708714409200811 -0.05162219303346216 -6.6613381477509392e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0043882953238115552 -0.044597864090661396 -0.097825700908710039 0.994194098566483 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.39738130321997622 -8.8817841970012523e-16
		 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.17149094958719491 -0.17266662258529386 0.41621397488893758 0.87609532515692645 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.23986902292944379 -0.0095685553151647618
		 0.88366367565094883 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.041094016232215536 -0.69951358685991871 0.13895119035844639 0.69977467110938507 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2692315327397536 -1.7763568394002505e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.093416560838335716 0.99562711200586418 6.0964577793115245e-17 5.7201146109010913e-18 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.27110454475667201 0.037308699214135377
		 -0.94401151836907626 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.030060597928280086 0.74175593766853054 0.14524877306425527 0.65406214025045195 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2582696769364246 -8.8817841970012523e-16
		 8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.14589702682657424 0.98929978144299913 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 -0.090146564602432491 -0.022825084294103754
		 0.0017871096167499088 0 0.92192445812557189 0.61921407680863805 -0.2538961450196251 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.03420560277443728 0.10003115919791172 0.075656746862530877 0.9915138932877029 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3090176601889736 0
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.29494190434452577 0.95551518724802309 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.5606670687745785 1.3322676295501878e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.66141489462584557 0.75002022450536732 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4506990701710685 -1.1102230246251565e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.25691805584515742 0.96643319095566282 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 -1.3028556198165528e-08 2.1317970850980921e-08
		 1.6247438935857574e-08 0 0.7214538008102771 -0.47542989481631559 0.17109007118284847 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.30942406352190005 -0.070061263991847228 -0.20241466397176658 0.92648608840643509 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 -1.4524117693597816e-17 2.0363274154341795e-17
		 -3.3646703287909134e-19 0 0.41016304872442566 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 1 0.0079640182085822016 -0.038721262065540017 0.00032606011278074577 0.99921826042303097 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 2.8584479638657611e-17 3.6394330577588111e-17
		 1.9614125022771431e-17 0 0.43950330469103438 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 -0.026245113507685824 -0.070197222662168698 -0.035208498141034258 0.99656605682018862 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 3.4872010752980869e-17 -2.5175498429430936e-17
		 1.0744651029284314e-16 0 0.36148101215000406 8.8817841970012523e-16 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.017962335822028122 0.038690483842127081 -0.11996103795175507 0.99186175968499579 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 1.3696637448923616e-17 -4.5850558210071512e-17
		 1.374379638731878e-16 0 0.31762419942948572 -0.053696452289497376 -8.8817841970012523e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.027202664835004064 0.088774837267651022 -0.29171152362904451 0.95198919651222813 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 3.767900385910608e-17 -7.7556043413206053e-19
		 1.2691704051822638e-16 0 0.33064659980504385 -0.029177324110889025 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.27170676196902194 0.96238008889435633 1 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 2.5642315146921512e-17 -3.1774239639867251e-17
		 1.2939568593370097e-16 0 0.40069291990639355 -0.0083161216917408964 4.4408920985006262e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.017242733652551898 0.066259967163810857 -0.25125003309204608 0.96549765704474066 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 1.1710617267701237e-17 -5.646010387560993e-17
		 1.0006707333017713e-16 0 0.28567106023859301 -8.8817841970012523e-16 -4.4408920985006262e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0052258722317697123 0.11014825605637379 -0.18534672342288136 0.97646640703280663 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 2.5242324718883169e-17 -9.1758219327783346e-17
		 6.8979447216162339e-17 0 0.24989801153498359 4.4408920985006262e-16 -2.7755575615628914e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.043566267821460891 0.085587569370018532 -0.22339312712913686 0.96998570042496302 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 -1.0369657040985229e-17 4.7954256827039031e-17
		 -9.6407636384109033e-17 0 0.42937775607340267 0.073335259225990268 -0.076394945070563436 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.81779048847000324 -0.0056870879094344934 0.23905682174479531 0.52348659006356713 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 2.2050160652369435e-09 2.0370181188503682e-09
		 -3.7340538971721155e-09 0 0.6450728559354979 0.13026787516727145 -4.4408920985006262e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.29021174344374673 0.16598972048853516 0.26648443018652013 0.90399701610549832 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.33097801902076696 -0.0082860596346119308
		 0.072113225420726401 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.25459408656112886 0.93501336837993398 -0.061944993391687478 0.23894490961855255 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.21880009765315633
		 -0.074252153782096819 -0.57842396051182032 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.036986904010762378 0.64356261706075946 0.13576978815635576 0.75234678937148614 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.96518207389929267 0.033690828222600722
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.049890147150474039 0.99875471123659987 3.0548904508409238e-18 6.1156088012462058e-17 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.18341372605117856
		 -0.19139924921718166 0.61289299875498326 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.017634656700069751 -0.69668348936681157 0.077336418048189026 0.71297981245630659 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.89113231413449201 8.8817841970012523e-16
		 -7.7715611723760958e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.079017519216358842 0.99687322747523532 1
		 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0.34027285601602297 0.016725147613961946
		 0.05375694579680431 0 -0.08541628538685675 0.35317714014744439 -0.24457861319397833 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.091753980019481388 0.24032674342896382 0.73820864706970779 0.62359622908972523 1
		 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.62295159898042485 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.93711738524218136 0.34901433534578058 2.1370964431887556e-17 5.7381890313108729e-17 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1151126963019367 -8.6042284408449632e-16
		 -8.9329904217447794e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.66558023188520277 0.74632630593034821 1
		 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0.20323328079100328 0 0 0 0.13961625800315547
		 0.44501038335955023 -0.27866313554060806 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.16114363125886288 0.23557619096473642 0.51821723820443044 0.80621801169598428 1
		 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3943426922152282 -6.6613381477509392e-16
		 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.90838397664691084 0.4181370002417204 2.5603506947554948e-17 5.5622476469869169e-17 1
		 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4789082716294291 4.4408920985006262e-16
		 -1.3758470263830223e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.42510441682172889 0.90514431711117638 1
		 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2692315327397541 -1.3322676295501878e-15
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.093416560838335716 0.99562711200586418 6.0964577793115245e-17 5.7201146109010913e-18 1
		 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2582696769364246 -8.8817841970012523e-16
		 8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.14589702682657424 0.98929978144299913 1
		 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4506990701710685 -8.8817841970012523e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.25691805584515742 0.96643319095566282 1
		 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.96518207389929267 0.033690828222600722
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.049890147150474039 0.99875471123659987 3.0548904508409238e-18 6.1156088012462058e-17 1
		 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.89113231413449223 8.8817841970012523e-16
		 -9.9920072216264089e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.079017519216358842 0.99687322747523532 1
		 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1151126963019367 -8.6042284408449632e-16
		 -8.9329904217447794e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.66558023188520277 0.74632630593034821 1
		 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4789082716294291 4.4408920985006262e-16
		 -1.3758470263830223e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.42510441682172889 0.90514431711117638 1
		 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.96518207389929267 0.033690828222600722
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.049890147150474039 0.99875471123659987 3.0548904508409238e-18 6.1156088012462058e-17 1
		 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1151126963019367 -8.6042284408449632e-16
		 -8.9329904217447794e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.66558023188520277 0.74632630593034821 1
		 1 1 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4789082716294291 4.4408920985006262e-16
		 -1.3758470263830223e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.42510441682172889 0.90514431711117638 1
		 1 1 yes;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.96518207389929267 0.033690828222600722
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.049890147150474039 0.99875471123659987 3.0548904508409238e-18 6.1156088012462058e-17 1
		 1 1 yes;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1151126963019367 -8.6042284408449632e-16
		 -8.9329904217447794e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.66558023188520277 0.74632630593034821 1
		 1 1 yes;
	setAttr ".xm[57]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4789082716294291 4.4408920985006262e-16
		 -1.3758470263830223e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.42510441682172889 0.90514431711117638 1
		 1 1 yes;
	setAttr ".xm[58]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.96518207389929267 0.033690828222600722
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.049890147150474039 0.99875471123659987 3.0548904508409238e-18 6.1156088012462058e-17 1
		 1 1 yes;
	setAttr ".xm[59]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1151126963019367 -8.6042284408449632e-16
		 -8.9329904217447794e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.66558023188520277 0.74632630593034821 1
		 1 1 yes;
	setAttr ".xm[60]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4789082716294291 4.4408920985006262e-16
		 -1.3758470263830223e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.42510441682172889 0.90514431711117638 1
		 1 1 yes;
	setAttr ".xm[61]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.96518207389929267 0.033690828222600722
		 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.049890147150474039 0.99875471123659987 3.0548904508409238e-18 6.1156088012462058e-17 1
		 1 1 yes;
	setAttr ".xm[62]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1151126963019367 -8.6042284408449632e-16
		 -8.9329904217447794e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.66558023188520277 0.74632630593034821 1
		 1 1 yes;
	setAttr ".xm[63]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4789082716294291 4.4408920985006262e-16
		 -1.3758470263830223e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.42510441682172889 0.90514431711117638 1
		 1 1 yes;
	setAttr ".xm[64]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1151126963019367 -8.6042284408449632e-16
		 -8.9329904217447794e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.66558023188520277 0.74632630593034821 1
		 1 1 yes;
	setAttr ".xm[65]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4789082716294291 4.4408920985006262e-16
		 -1.3758470263830223e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.42510441682172889 0.90514431711117638 1
		 1 1 yes;
	setAttr ".xm[66]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1151126963019367 -8.6042284408449632e-16
		 -8.9329904217447794e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.66558023188520277 0.74632630593034821 1
		 1 1 yes;
	setAttr ".xm[67]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4789082716294291 4.4408920985006262e-16
		 -1.3758470263830223e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.42510441682172889 0.90514431711117638 1
		 1 1 yes;
	setAttr ".xm[68]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1151126963019367 -8.6042284408449632e-16
		 -8.9329904217447794e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.66558023188520277 0.74632630593034821 1
		 1 1 yes;
	setAttr ".xm[69]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4789082716294291 4.4408920985006262e-16
		 -1.3758470263830223e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.42510441682172889 0.90514431711117638 1
		 1 1 yes;
	setAttr ".xm[70]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1151126963019367 -8.6042284408449632e-16
		 -8.9329904217447794e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.66558023188520277 0.74632630593034821 1
		 1 1 yes;
	setAttr ".xm[71]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4789082716294288 0
		 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.42510441682172889 0.90514431711117638 1
		 1 1 yes;
	setAttr ".xm[72]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1151126963019367 -8.6042284408449632e-16
		 -8.9329904217447794e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.66558023188520277 0.74632630593034821 1
		 1 1 yes;
	setAttr ".xm[73]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1151126963019367 -8.6042284408449632e-16
		 -8.9329904217447794e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.66558023188520277 0.74632630593034821 1
		 1 1 yes;
	setAttr ".xm[74]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1151126963019367 -8.6042284408449632e-16
		 -8.9329904217447794e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.66558023188520277 0.74632630593034821 1
		 1 1 yes;
	setAttr ".xm[75]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1151126963019369 -8.8817841970012523e-16
		 -3.3306690738754696e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.66558023188520277 0.74632630593034821 1
		 1 1 yes;
	setAttr -s 45 ".m";
	setAttr -s 45 ".p";
	setAttr -s 76 ".g[20:75]" yes yes no no no no no no no no no no no no 
		no no no no no no yes no no yes no no no no no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "70DA7B65-CA4E-7777-EF1C-E2B780B77F78";
	setAttr -s 206 ".wl";
	setAttr ".wl[0:179].w"
		3 14 0.2467456563948818 15 0.40956424648941725 16 0.34369009711570092
		2 14 0.50495635160519947 15 0.49504364839480053
		1 14 1
		3 14 0.42735954560707001 15 0.18636355837635848 17 0.3862768960165715
		3 14 0.27149815200249228 17 0.40682755556956923 18 0.32167429242793849
		3 14 0.22077651611027374 15 0.40706682984629255 16 0.37215665404343368
		2 14 0.50062351444056896 15 0.49937648555943104
		1 14 1
		3 14 0.41628253993044179 15 0.18541117421618006 17 0.39830628585337818
		3 14 0.24816982852207481 17 0.40444252199518349 18 0.34738764948274165
		3 14 0.017962831327900042 15 0.49101858433605006 16 0.49101858433604995
		1 14 1
		1 14 1
		2 14 0.53791711348885862 17 0.46208288651114143
		3 14 0.017934275993397274 17 0.49103286200330143 18 0.49103286200330132
		3 14 0.020974689656812134 15 0.48951265517159398 16 0.48951265517159387
		5 14 0.15026397104225037 15 0.20533161600484715 16 0.2363299143291368 
		17 0.2361285900008768 18 0.17194590862288869
		1 14 1
		1 14 1
		3 14 0.023532043622410407 17 0.48823397818879477 18 0.48823397818879477
		3 14 0.0018776854220600267 15 0.49906115728897005 16 0.49906115728896994
		3 14 0.0015981589613077074 15 0.49920092051934617 16 0.49920092051934617
		3 14 0.50301481843616114 15 0.49441124372889173 16 0.0025739378349472486
		3 14 0.78279122766397546 15 0.12959740413778856 17 0.087611368198235992
		3 14 0.58576391923554505 17 0.41255032765530142 18 0.0016857531091535806
		3 14 0.00062806667548570008 17 0.49968596666225729 18 0.49968596666225706
		3 14 0.002163885443991106 17 0.49891805727800459 18 0.49891805727800426
		2 14 0.99757053628331138 17 0.0024294637166886249
		3 14 0.97736599452550121 15 0.014613327973550907 17 0.008020677500947912
		2 14 0.9998388218091111 15 0.00016117819088891307
		3 14 0.014522847337935239 15 0.49273857633103252 16 0.4927385763310323
		3 14 0.019663314279775093 15 0.49016834286011246 16 0.49016834286011246
		3 14 0.50834385794903159 15 0.47863520791586894 16 0.013020934135099478
		3 14 0.65722805237159487 15 0.20499380731808473 17 0.13777814031032046
		3 14 0.57257701499904101 15 0.016907033474635187 17 0.41051595152632392
		3 14 0.024291328008794605 17 0.4894507071495296 18 0.48625796484167577
		3 14 0.015806027499373567 17 0.49209698625031328 18 0.49209698625031317
		3 14 0.51391791219159344 15 0.020575472771638924 17 0.4655066150367676
		3 14 0.59089692544554095 15 0.23631385699820803 17 0.1727892175562511
		3 14 0.49087093797929926 15 0.48985741334455341 16 0.019271648676147359
		3 14 0.13959596688986184 15 0.43585375743448423 16 0.4245502756756539
		3 14 0.15945818140844753 15 0.43896792764625597 16 0.40157389094529655
		3 14 0.45573484611276316 15 0.4492849857163968 16 0.094980168170840068
		3 14 0.41557287045011715 15 0.31677787259558721 17 0.2676492569542957
		3 14 0.45896713533683731 15 0.1268335254687101 17 0.41419933919445262
		3 14 0.18571968511914502 17 0.43827970115289083 18 0.37600061372796406
		3 14 0.15474974890913182 17 0.43722691613876191 18 0.40802333495210635
		3 14 0.45575230861397914 15 0.11362786109528958 17 0.4306198302907312
		3 14 0.40638570272706548 15 0.31988264089666785 17 0.27373165637626662
		3 14 0.45794282616860388 15 0.4564945896782478 17 0.085562584153148394
		3 14 0.41200047174919324 15 0.41223686292562844 16 0.1757626653251784
		3 14 0.40153049225009196 15 0.40357459089432191 16 0.1948949168555861
		3 14 0.41899601960002691 15 0.43814761828125925 16 0.14285636211871389
		3 14 0.30894595782420253 15 0.61514917543665426 16 0.075904866739143151
		3 14 0.061835087212605465 15 0.90252486604364623 16 0.03564004674374828
		5 13 0.18112134291809465 14 0.20872442846290326 15 0.21137071235568433 
		16 0.21015697615629919 17 0.18862654010701846
		5 13 0.1814704257641471 14 0.21482851910607598 15 0.21610664408154648 
		16 0.21027462164967567 17 0.17731978939855481
		3 14 0.0021604513360531622 15 0.99690077996063697 16 0.00093876870330985532
		3 14 0.28296468532015606 15 0.65051244650887019 16 0.06652286817097372
		3 14 0.40640340077151688 15 0.43181558324470681 16 0.16178101598377628
		3 14 0.4165213143292314 17 0.41652131432923128 18 0.16695737134153735
		3 14 0.40987665761507186 17 0.40987665761507164 18 0.18024668476985656
		3 14 0.43975556129500337 17 0.441834988805552 18 0.11840944989944464
		3 14 0.39449945464593661 17 0.56390672639021688 18 0.041593818963846597
		3 14 0.08417868920223319 17 0.9043943681966099 18 0.011426942601156986
		3 14 0.29015429344058763 17 0.40005790829124432 18 0.30978779826816805
		1 17 1
		3 14 0.024054988649490697 17 0.9731556936177802 18 0.0027893177327290583
		3 14 0.37133068757592763 17 0.58083897645865312 18 0.047830335965419281
		3 14 0.42401752473582538 17 0.431148959806326 18 0.14483351545784862
		3 14 0.34828973849969486 15 0.40209776179272116 16 0.24961249970758403
		3 14 0.32620778651289917 15 0.39614256729907948 16 0.27764964618802135
		3 14 0.28834900492112098 15 0.45627379350299235 16 0.25537720157588673
		3 14 0.05764333314289348 15 0.58732059851042817 16 0.35503606834667845
		3 14 0.0039305368736772036 15 0.76390589382727137 16 0.23216356929905146
		2 15 0.50000000000000011 16 0.49999999999999983
		2 15 0.50152840824030731 16 0.49847159175969263
		3 14 0.0024437142170948833 15 0.71435111411095675 16 0.28320517167194847
		3 14 0.053039837187734029 15 0.57662461899507134 16 0.37033554381719463
		3 14 0.27288050565595079 15 0.44471536987481991 16 0.28240412446922936
		3 14 0.0069259442656654808 17 0.78657806651591344 18 0.20649598921842102
		3 14 0.17523376374704164 17 0.4185904241760231 18 0.40617581207693521
		3 14 0.15411451063281031 17 0.42329360477698363 18 0.42259188459020597
		3 14 0.0052674531776361897 17 0.91177348965459337 18 0.082959057167770522
		3 14 0.08945373141635482 17 0.64588526600678031 18 0.26466100257686487
		3 14 0.34014333757025178 17 0.46234369167819789 18 0.19751297075155039
		3 14 0.35020438316047098 17 0.39629924974113778 18 0.2534963670983913
		3 14 0.36680425076884154 17 0.40125724075787889 18 0.2319385084732796
		3 14 0.31384701763221567 17 0.44342633190406799 18 0.24272665046371628
		3 14 0.080882038223649838 17 0.60830385103495088 18 0.31081411074139925
		3 14 0.0046043731757098565 15 0.49769781341214514 16 0.49769781341214503
		3 14 0.0047699812128705697 15 0.49761500939356479 16 0.49761500939356468
		3 14 0.088753559935457457 15 0.49379180950780577 16 0.41745463055673676
		3 14 0.19147427250550703 15 0.51611194538063165 16 0.29241378211386138
		2 14 0.59250890328180328 15 0.40749109671819678
		3 14 0.84481238986505092 15 0.091531650059068007 17 0.063655960075881091
		2 14 0.59439781059487018 17 0.40560218940512982
		3 14 0.25529555371393214 17 0.52228209695554451 18 0.22242234933052335
		3 14 0.12637476215996485 17 0.51480936495537399 18 0.35881587288466116
		3 14 0.0034752963496217522 17 0.49826235182518919 18 0.49826235182518908
		3 14 0.0042880842442158231 17 0.49785595787789216 18 0.49785595787789205
		2 14 0.59078568570861456 17 0.40921431429138549
		2 14 0.94305687006072847 15 0.056943129939271524
		2 14 0.53749579688158799 15 0.46250420311841201
		3 14 0.33689710263941625 15 0.40114495239592779 16 0.26195794496465608
		3 14 0.26772125775601457 15 0.43367959055477062 16 0.2985991516892148
		3 14 0.15824165090053494 15 0.43680441913579521 16 0.4049539299636698
		3 14 0.23452943919154584 15 0.41057520915831985 16 0.35489535165013436
		3 14 0.41558127791803867 15 0.1864772562876601 17 0.39794146579430129
		3 14 0.44465579778186876 15 0.11851243754425779 17 0.43683176467387341
		3 14 0.39128119387430582 15 0.32457743802686251 17 0.28414136809883156
		3 14 0.38120734291092534 15 0.3275138180650039 17 0.29127883902407076
		3 14 0.41871943893361258 17 0.41871943893361258 18 0.16256112213277485
		3 14 0.42463333246615542 17 0.42952242944163854 18 0.14584423809220598
		2 14 0.55623167925585781 17 0.44376832074414219
		3 14 0.29077020929298159 17 0.4750497531896849 18 0.23418003751733352
		3 14 0.29448799900038519 17 0.40859712367349921 18 0.2969148773261156
		2 14 0.52461639339036947 17 0.47538360660963058
		3 14 0.70872528662457579 15 0.16360576749412625 17 0.1276689458812979
		2 14 0.7611221460617914 15 0.23887785393820868
		2 14 0.55969003864825684 15 0.44030996135174311
		2 14 0.52755289871976951 15 0.4724471012802306
		3 14 0.0047848442707355259 15 0.49760757786463222 16 0.49760757786463222
		3 14 0.08814393134754317 15 0.46200733561291574 16 0.44984873303954104
		2 15 0.50002036148276396 16 0.49997963851723598
		3 14 0.016142817676436973 15 0.49192859116178156 16 0.49192859116178145
		3 14 0.052741843827868763 15 0.51155958827299308 16 0.43569856789913813
		3 14 0.0061607914654996047 15 0.53538883570422846 16 0.4584503728302719
		3 14 0.0025608757862927677 15 0.49871956210685348 16 0.4987195621068537
		3 14 0.018787259046549848 15 0.49060637047672506 16 0.49060637047672506
		3 14 0.44971602305132263 15 0.44971602305132252 16 0.10056795389735486
		3 14 0.40120911034686757 15 0.42465827048250798 16 0.17413261917062456
		3 14 0.40934700620570935 15 0.41002135913048665 16 0.18063163466380402
		3 14 0.42449488914126021 15 0.42311779188406401 17 0.15238731897467578
		1 15 1
		3 14 0.2254000921234165 15 0.47695596009500141 16 0.29764394778158204
		3 14 0.18068160798743327 17 0.44182325254639143 18 0.3774951394661753
		3 14 0.31425131231055242 17 0.44258627325551581 18 0.24316241443393183
		3 14 0.36526909013316156 17 0.40252877141928101 18 0.23220213844755741
		3 14 0.26837113151999342 17 0.40931835085667007 18 0.32231051762333657
		3 14 0.023548728571431903 17 0.48908706709157362 18 0.4873642043369944
		3 14 0.078538832733241054 17 0.55771932385856671 18 0.36374184340819221
		3 14 0.0093704613243056518 17 0.67801901283351707 18 0.31261052584217736
		3 14 0.0018689786538967417 17 0.49906551067305166 18 0.49906551067305155
		3 14 0.16041359149002729 17 0.42385809736601993 18 0.41572831114395281
		3 14 0.017373368762803262 17 0.49131331561859837 18 0.49131331561859837
		3 14 0.11808405412858437 17 0.46778210937449222 18 0.41413383649692348
		3 14 0.0041244879055428322 17 0.49793775604722862 18 0.49793775604722862
		3 14 0.009006676834533163 17 0.60020654890218073 18 0.39078677426328623
		3 14 0.009779139611561077 17 0.80278341404693443 18 0.18743744634150453
		3 14 0.041811779447767768 17 0.92264814854184407 18 0.035540072010388182
		2 14 0.67945600461547362 17 0.32054399538452638
		3 14 0.83420549988703252 15 0.098904670728351268 17 0.06688982938461617
		2 14 0.55140521656278008 15 0.44859478343721992
		3 14 0.028677437233655633 15 0.88011044546043149 16 0.091212117305912915
		3 14 0.0055405099660881287 15 0.64884428567452734 16 0.34561520435938453
		3 14 0.0056393776113745145 15 0.50565012082665273 16 0.48871050156197277
		3 14 0.10877172367001485 15 0.67995101634962396 16 0.21127725998036126
		2 14 0.45086471312038895 15 0.54913528687961111
		2 14 0.4370843434877541 15 0.56291565651224595
		2 14 0.44591073293373013 15 0.55408926706626993
		1 15 1
		1 15 1
		3 14 0.037374914096095821 15 0.54036140983109959 16 0.42226367607280452
		3 14 0.026286450842721309 15 0.49117268700611566 16 0.48254086215116304
		3 14 0.013351919099249276 15 0.53164559507475506 16 0.45500248582599562
		3 14 0.023079419674328503 17 0.60181024749704282 18 0.37511033282862877
		3 14 0.22055133957158693 17 0.6788982333168323 18 0.10055042711158083
		2 14 0.6779281591670806 17 0.32207184083291934
		2 14 0.98946026106365437 15 0.010539738936345669
		2 14 0.5528389025799787 15 0.44716109742002125
		3 14 0.13805587248979476 15 0.72336579879189955 16 0.13857832871830572
		5 13 0.15986143152953849 14 0.20424663715821664 15 0.22171529323971254 
		16 0.22171529323971254 17 0.19246134483281982
		2 14 0.42624274286454716 15 0.57375725713545278
		3 14 0.44949495699569936 17 0.48615193549005481 18 0.064353107514245791
		3 14 0.46935876993655223 17 0.50882951980549307 18 0.021811710257954683
		3 14 0.16828685417752745 17 0.7026633189508078 18 0.12904982687166472
		3 14 0.059532011737064565 17 0.60261727215049765 18 0.33785071611243778
		3 14 0.039375474738905188 17 0.52140231211007249 18 0.43922221315102222
		2 14 0.43514920175081662 17 0.46812030541411337;
	setAttr ".wl[179:205].w"
		1 18 0.096730492835070112
		2 14 0.46812757367405294 17 0.531872426325947
		1 17 1
		4 15 0.027867345242202725 16 0.03070089835669405 17 0.91344714164733887 
		18 0.027984614753764361
		2 14 0.47026421308541339 17 0.52973578691458656
		3 14 0.066470271130807973 15 0.47048029182897494 16 0.46304943704021706
		3 14 0.048449331790754044 15 0.47577533410462286 16 0.47577533410462319
		3 14 0.058966224670138491 15 0.47108918053361348 16 0.46994459479624806
		3 14 0.16769846842524247 15 0.47744154054407945 16 0.35485999103067817
		3 14 0.18534184362507644 15 0.51760416656369246 16 0.2970539898112311
		3 14 0.40402061123921329 15 0.48092448115310743 16 0.11505490760767922
		3 14 0.47515743601789862 15 0.47422485666002734 16 0.050617707322074088
		3 14 0.47453211251458033 15 0.29276778449896568 17 0.23270010298645402
		3 14 0.48251456681064936 15 0.064519439325596048 17 0.45296599386375458
		3 14 0.44599548829373892 17 0.47040740796975522 18 0.083597103736505862
		3 14 0.24165957952590172 17 0.53383513399444182 18 0.22450528647965648
		3 14 0.21572031102576175 17 0.49616475573242219 18 0.28811493324181603
		3 14 0.077438569129547025 17 0.47597150435867486 18 0.44658992651177809
		3 14 0.060190839237914892 17 0.47103316663447459 18 0.46877599412761056
		3 14 0.078663608861426856 17 0.47581191125251443 18 0.44552447988605864
		3 14 0.2101620240406209 17 0.51020731882838843 18 0.27963065713099072
		3 14 0.42933376181728766 17 0.46850547885996485 18 0.10216075932274749
		3 14 0.50118892377891955 15 0.066564371431159355 17 0.43224670478992105
		3 14 0.46971351085170565 15 0.29636050000259179 17 0.23392598914570259
		3 14 0.47961346342739519 15 0.46971426809674344 16 0.050672268475861267
		3 14 0.39362289059138511 15 0.48087209187006241 16 0.1255050175385525
		3 14 0.17074884169487603 15 0.50196997501678942 16 0.3272811832883345;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.012728295233860504 0.99991782735513501 -0.0015261185493631081 -0
		 0.99280702824109124 0.012819459325065943 0.11903724685032832 -0 0.11904702925958592 1.0690233420707081e-16 -0.99288861652476801 -0
		 -0.90795101870048134 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513461 0.91862659735055918 -0.041563650809936667 -0
		 0.89526386431128191 0.39248175502475208 0.21085702556737568 -0 0.210011846539538 0.045642596473303453 -0.9766328776465748 -0
		 -0.37507697621182828 -2.8657604802815309 -0.94611761528610516 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402895 0.9445447650793507 0.045683164274527482 -0
		 0.94422144490049698 0.32697288226068943 -0.039173935928819348 0 -0.051938692002751134 0.030396069274366267 -0.99818758319551948 0
		 -1.5297596850582682 -2.7773530357943352 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790586 0.99329326174337518 0.045683164274527482 -0
		 0.99337604742855179 0.10802514123606741 -0.039173935928819348 0 -0.043846136866929383 0.041219716594552334 -0.99818758319551959 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810515 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885265 0.99890059027644973 0.045683164274527607 -0
		 0.99915653175010688 0.012313724251499982 -0.039173935928819466 0 -0.039693397610562217 0.045232542935574056 -0.99818758319551937 0
		 -3.4912318179848607 -1.9040448117726043 -0.56315261966810481 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871752 -0.9779020118066285 -0.091812310658712079 -0
		 0.96088145788389734 0.20231395106606309 -0.18914515351696121 -0 0.20354033747357872 -0.052694596578666153 0.9776474878567194 -0
		 -4.1608222065879765 0.98034715670107386 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.849256614102049 -0.40332677146099288 -0
		 0.89689896658620161 0.4222537097758039 -0.13143077385899588 -0 0.28192467949760502 -0.31696215544524442 0.90556803560289056 -0
		 -4.6827584700038933 -0.43291834424742021 1.8868280135693325 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143826 -0.47572266972118704 -0
		 0.74200082470018769 0.64087873460052991 -0.19674659763529495 -0 0.4473524375790161 -0.25474905055727082 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547873 -0.45027497011225115 -0.47572266972118704 -0
		 0.40753183853562547 0.89174468145243679 -0.19674659763529498 -0 0.51281322894014236 -0.045209229054513987 0.85730899787199377 -0
		 -3.7930210190858711 -3.6363074555288435 2.3527934785693625 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988877 -0.60770287165339087 -0
		 -0.15684837943322541 0.97734058610779651 -0.14214065082037369 0 0.58840109184103584 0.20806465329722415 0.78134067804548823 -0
		 -1.2358328313690483 -5.3627024397852345 2.4055843427903012 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304327 0.42405058758597708 -0.53977069894956764 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867554 0.18573444686090734 0.83774129179212098 -0
		 0.1968172812762447 -5.9805478664821443 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348465 0.49094017626205783 -0.60972944210779889 -0
		 -0.5253983994062138 0.83932464881653146 0.13960893879116207 0 0.58030058688812003 0.23347778742481168 0.78021750277503932 -0
		 0.47614274721700267 -5.961344900019987 0.95798160440020297 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516239 0.60280760005635936 -0.65335941194369052 -0
		 -0.66368542414675347 0.72082410497382132 0.19983560109207887 0 0.5914196324406692 0.34210467258279464 0.7301966936112233 -0
		 1.1441516084105745 -5.8141102579502952 0.85898842630906724 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387919 -0.10503749339307361 -0.91693018807666515 -0
		 0.17781968135064385 0.98332967287429862 -0.037985725862222486 -0 0.90563458731928081 -0.14842465909216213 0.39723559108470113 -0
		 -3.0698135514498937 -3.9119159816185101 3.2206463961358001 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042264 0.077623837547557792 -0.3834011912353672 -0
		 0.20793806673474038 0.92724908623729163 -0.31140149722621147 -0 0.33133622500252974 -0.36631089516488313 -0.86950137095037139 -0
		 1.3350913447026536 -3.8738355210740298 3.8541836841977992 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364847 -0.094924216888717688 0.38340119123536714 -0
		 -0.031825581119802333 0.94974535529880866 0.31140149722621158 0 -0.39369304385399273 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558672 -3.7939732910568535 -3.8541836841977997 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071677 -0.39002924497921759 0.452124470705772 -0
		 0.2418572836977026 0.90452625422546051 0.35119411973896503 -0 -0.54593443129409036 -0.17236427552656972 0.81990618563942996 -0
		 -4.4547110826954048 -2.2284950952224647 -4.392248129419202 1;
	setAttr ".pm[18]" -type "matrix" 0.8806009698142695 -0.14186400160433182 0.45212447070577194 -0
		 -0.029550252819743231 0.93583624252273023 0.35119411973896497 0 -0.47293626898394825 -0.32262227485054945 0.81990618563942974 -0
		 -4.8264647244913848 -3.7828002607320328 -4.3922481294192028 1;
	setAttr ".pm[19]" -type "matrix" 0.04444990963230469 -0.99486331132534522 -0.090946123130399792 -0
		 0.99875087560877895 0.046333564308836124 -0.018705327827550827 -0 0.022823102426645002 -0.090001069978133355 0.99568012604370837 -0
		 -5.1987338443485154 1.1631347543266388 0.9593990667563872 1;
	setAttr ".pm[20]" -type "matrix" 0.59746412934814974 -0.79672166835715486 -0.090946123130399792 -0
		 0.79887115989862156 0.60121126119950097 -0.018705327827550827 -0 0.06958077338236654 -0.061478472468806014 0.99568012604370837 -0
		 -6.0311161264281017 -2.7072772985180777 0.9593990667563872 1;
	setAttr ".pm[21]" -type "matrix" 0.86518594954605277 0.49313494643519812 -0.090946123130399764 -0
		 -0.49658384305064746 0.86778718447088932 -0.018705327827550817 0 0.069697629293580379 0.061345962152701043 0.99568012604370804 -0
		 1.7365891972474419 -7.8707547550432926 0.95939906675638709 1;
	setAttr ".pm[22]" -type "matrix" 0.99585451783966294 -0.0016068558999377096 -0.090946123130399764 -0
		 -9.4996095158742211e-05 0.99982503553702085 -0.018705327827550817 0 0.090960267557186225 0.018636424751305627 0.99568012604370815 -0
		 -3.6603758191881481 -6.9736763934885175 0.95939906675638698 1;
	setAttr ".pm[23]" -type "matrix" -0.32924786964475911 0.69647275897298944 0.63759041424957197 -0
		 0.89339606886512035 0.44836933267261597 -0.02843247535938619 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461437 0
		 -3.5395339554045822 -2.4005302806614881 -1.426859062061397 1;
	setAttr ".pm[24]" -type "matrix" -0.2788948936776629 0.7069333932652262 0.64997139611450527 -0
		 0.8885321965626376 0.44672740812313078 -0.10461911155789998 0 -0.36431878067442514 0.54834277629791328 -0.75272307373282876 0
		 -4.0483565879838146 -2.4178888731886139 -1.0785180430682908 1;
	setAttr ".pm[25]" -type "matrix" -0.23031898058193831 0.6528205623008978 0.72164983241239422 -0
		 0.83303853881336309 0.51558677386086182 -0.20054194441922923 0 -0.50299101387141465 0.55497350572517268 -0.66257410748362211 0
		 -4.4246285444210187 -2.6889499752129313 -0.5852217214780755 1;
	setAttr ".pm[26]" -type "matrix" -0.43594206856657181 0.59749643679491382 0.67301747441747795 -0
		 0.7008473455733657 0.69452627827057267 -0.16262302110831151 0 -0.5645949973712715 0.40078829425147744 -0.72152701414037557 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020237 1;
	setAttr ".pm[27]" -type "matrix" -0.80828667061645421 0.2506903381799318 0.53275417637687217 -0
		 0.21819681833351881 0.96794042383007672 -0.12442461325951773 0 -0.54686635165540887 0.015674509845052274 -0.83707317671050763 0
		 -1.278220982043448 -5.4701710369415641 -1.0637098843123747 1;
	setAttr ".pm[28]" -type "matrix" -0.82004746298995335 -0.20903383935798978 0.53275417637687217 -0
		 -0.32022389937182466 0.93913533097542601 -0.12442461325951776 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050752 0
		 1.4741587314170379 -5.4790257814298382 -1.0637098843123742 1;
	setAttr ".pm[29]" -type "matrix" -0.68115616977266769 -0.5822485630455535 0.44386133331482847 -0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048567 0 -0.16426653899654681 -0.4692574321309736 -0.86764852708682749 0
		 3.7155105341486685 -4.2535038943938588 -0.56138920422851701 1;
	setAttr ".pm[30]" -type "matrix" -0.50408143703462183 -0.80314784176126897 0.31757746946426541 0
		 -0.83807469275740265 0.36604707764536509 -0.40452484016049428 0 0.20864494769031905 -0.47006710289224019 -0.85761541764464611 -0
		 4.7675519887131355 -2.6983875271677138 0.40050570930127832 1;
	setAttr ".pm[31]" -type "matrix" -0.13887805416914528 -0.9736202144440087 0.18104298963559595 0
		 -0.84422276414869568 0.020829102434948937 -0.53558759599610806 0 0.51768794709103294 -0.22722197630897611 -0.82484505388522256 -0
		 5.131402912047518 -0.54383195128390038 1.1062768597705592 1;
	setAttr ".pm[32]" -type "matrix" -0.44544497944150713 0.31790426679360734 -0.8369681280937612 0
		 -0.53604559259280804 0.65406161496897952 0.53372139406810004 0 0.71710103399185066 0.68639659161347089 -0.12093728155217454 -0
		 3.5487087479939037 -1.8700671021165951 -2.7925192544727233 1;
	setAttr ".pm[33]" -type "matrix" -0.052113644842616026 -0.12229877356956341 -0.99112419908132532 0
		 -0.12985134008384805 0.98487688501104831 -0.11470026525411023 0 0.99016301561896736 0.12272135655343426 -0.067206183837786579 -0
		 1.5808752886267781 -4.2107979269501721 0.024886578657810372 1;
	setAttr ".pm[34]" -type "matrix" 0.51285923410589029 0.15316128048266991 0.84469937146491858 -0
		 -0.35222853801336468 0.93486282786315433 0.044345801251915153 0 -0.78288598339814941 -0.3202703783377655 0.53340080779662979 -0
		 1.1996854652596878 -4.1723182493855946 0.61489409327925182 1;
	setAttr ".pm[35]" -type "matrix" -0.73333549252294605 0.11850971777536495 0.66945836479868692 -0
		 0.055614854265168837 0.99184696103279268 -0.11465859703955258 0 -0.67758840263923692 -0.046851389337113004 -0.73394748035945334 0
		 -1.6184639253570574 -4.1509626321413302 0.61671609555364271 1;
	setAttr ".pm[36]" -type "matrix" 0.71787470010069721 0.19100108051108461 -0.66945836479868681 -0
		 -0.15418153999379064 0.98136713764526728 0.1146585970395526 0 0.67888435515960788 0.020907615682650958 0.73394748035945312 -0
		 2.987810459616135 -3.9063461047656256 -0.61671609555364337 1;
	setAttr ".pm[37]" -type "matrix" 0.86346497510865083 0.01229272663840846 -0.50425898666499791 -0
		 0.11820591342388179 0.96693328786482802 0.22598092585556948 -0 0.49036272165840966 -0.25473300863984616 0.83345995435716624 -0
		 -0.31526851927339061 -4.1175003486713431 -0.84111836428204012 1;
	setAttr ".pm[38]" -type "matrix" 0.85074581735119792 0.14817026903880434 -0.50425898666499791 -0
		 -0.035601726522438017 0.97348093880572806 0.22598092585556945 0 0.52437016632152489 -0.17429983693304779 0.83345995435716613 -0
		 -0.54266115293508965 -4.2561403836399734 -0.84111836428203923 1;
	setAttr ".pm[39]" -type "matrix" -0.51836859257157597 0.80319048658789161 -0.2935626755738362 -0
		 0.85499374135413664 0.49348852949922861 -0.15954552171071609 -0 0.016724367869042668 -0.33369763785108691 -0.94253179363456308 -0
		 -4.8180154521350591 -3.4553778402904016 -0.7848661515675518 1;
	setAttr ".pm[40]" -type "matrix" 0.13331225767208435 -0.9465985408103601 0.29356267557383614 -0
		 0.96950646724456246 0.18601730154215074 0.15954552171071607 0 -0.20563329478793038 0.26334153880972577 0.94253179363456319 -0
		 -6.3757106097054148 -0.94555417178716261 0.7848661515675518 1;
	setAttr ".pm[41]" -type "matrix" 0.95562517126066493 0.024525243382202185 0.2935626755738362 -0
		 -0.074275015140186543 0.98439242613298306 0.15954552171071609 0 -0.28506798167972303 -0.17427008868151553 0.94253179363456319 -0
		 0.085391099712523177 -7.5497824375075142 0.78486615156755213 1;
	setAttr ".pm[42]" -type "matrix" -0.16932532307067247 0.96527649990704545 -0.19892263243335806 -0
		 0.98556021377032699 0.16584045593116589 -0.034176135087669167 -0 1.3183898417423744e-16 -0.2018371172598033 -0.97941910237459295 -0
		 -5.7236422783817282 -1.9839300723893565 -0.95909989525908557 1;
	setAttr ".pm[43]" -type "matrix" 0.62316378607661982 -0.75637073054715476 0.19892263243335795 -0
		 0.7669143872697135 0.64083875849482563 0.034176135087669222 0 -0.15332716106865452 0.13125929903200931 0.97941910237459284 -0
		 -6.1360967711649694 -4.1170383759049205 0.95909989525908523 1;
	setAttr ".pm[44]" -type "matrix" 0.98000917862884818 -0.0034345464029732859 0.19892263243335798 -0
		 -0.0034345464029732738 0.99940992374574489 0.034176135087669222 0 -0.19892263243335823 -0.034176135087669333 0.97941910237459295 -0
		 -1.6944175488132156 -8.489243544670618 0.95909989525908523 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2.9481192621602541 0 1;
	setAttr -s 18 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 18 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 18 ".ifcl";
createNode skinCluster -n "skinCluster3";
	rename -uid "6B3EC168-584D-F92C-6C16-70BA8F2F8DD5";
	setAttr -s 17 ".wl";
	setAttr ".wl[0:16].w"
		5 12 0.054471718892292673 13 0.24396073524948145 14 0.4878398908083878 
		15 0.1861490313868531 17 0.027578623662984973
		5 12 0.070564737609647835 13 0.34450204728130585 14 0.40039943958123264 
		15 0.11453549608155958 17 0.069998279446254155
		5 12 0.058906629285402148 13 0.30678184426906951 14 0.46440260751542228 
		15 0.047909917703312314 17 0.12199900122679377
		5 12 0.040513675616152225 13 0.16540817557303769 14 0.59420520418027811 
		15 0.1877705710515723 17 0.012102373578959496
		5 12 0.039923241941095554 13 0.21267795060420736 14 0.59994053676993719 
		15 0.018666270215538263 17 0.12879200046922168
		5 12 0.061352087692864522 13 0.23857554431818087 14 0.57786167102152508 
		15 0.10712618067556597 17 0.015084516291863505
		5 12 0.089278724100861712 13 0.37966752262895842 14 0.44716860472628517 
		15 0.045260681424385399 17 0.038624467119509384
		5 12 0.048849262016347886 13 0.24385599412993603 14 0.61221035861911965 
		15 0.017180049905566069 17 0.077904335329030308
		5 12 0.1116407375644181 13 0.23583879622359333 14 0.2743463322871299 
		15 0.1955712712187184 17 0.18260286270614029
		5 12 0.11101735747568169 13 0.23521967256409462 14 0.27635976755117192 
		15 0.19113022207695196 17 0.18627298033209991
		5 12 0.11149736919453065 13 0.2352200147224475 14 0.27707496228652506 
		15 0.18968601055021853 17 0.18652164324627835
		5 12 0.11213980810566837 13 0.2359122078375081 14 0.27442297023806811 
		15 0.19680234262282842 17 0.18072267119592694
		5 12 0.11069908891302498 13 0.23456852113349075 14 0.27861787480732531 
		15 0.18631213665779153 17 0.18980237848836734
		5 12 0.11089841852795908 13 0.23432191408175826 14 0.27980368823408042 
		15 0.18387414128706989 17 0.19110183786913221
		5 12 0.11222538171443974 13 0.23542171214421273 14 0.27715590930509559 
		15 0.18957079924236861 17 0.18562619759388327
		5 12 0.11250613385585015 13 0.23599383334640694 14 0.2748888016829702 
		15 0.19448450474318418 17 0.18212672637158844
		5 12 0.1115413992769627 13 0.23469822425162698 14 0.27920069222614813 
		15 0.18519642275765402 17 0.1893632614876081;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.012728295233860504 0.99991782735513501 -0.0015261185493631081 -0
		 0.99280702824109124 0.012819459325065943 0.11903724685032832 -0 0.11904702925958592 1.0690233420707081e-16 -0.99288861652476801 -0
		 -0.90795101870048134 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513461 0.91862659735055918 -0.041563650809936667 -0
		 0.89526386431128191 0.39248175502475208 0.21085702556737568 -0 0.210011846539538 0.045642596473303453 -0.9766328776465748 -0
		 -0.37507697621182828 -2.8657604802815309 -0.94611761528610516 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402895 0.9445447650793507 0.045683164274527482 -0
		 0.94422144490049698 0.32697288226068943 -0.039173935928819348 0 -0.051938692002751134 0.030396069274366267 -0.99818758319551948 0
		 -1.5297596850582682 -2.7773530357943352 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790586 0.99329326174337518 0.045683164274527482 -0
		 0.99337604742855179 0.10802514123606741 -0.039173935928819348 0 -0.043846136866929383 0.041219716594552334 -0.99818758319551959 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810515 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885265 0.99890059027644973 0.045683164274527607 -0
		 0.99915653175010688 0.012313724251499982 -0.039173935928819466 0 -0.039693397610562217 0.045232542935574056 -0.99818758319551937 0
		 -3.4912318179848607 -1.9040448117726043 -0.56315261966810481 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871752 -0.9779020118066285 -0.091812310658712079 -0
		 0.96088145788389734 0.20231395106606309 -0.18914515351696121 -0 0.20354033747357872 -0.052694596578666153 0.9776474878567194 -0
		 -4.1608222065879765 0.98034715670107386 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.849256614102049 -0.40332677146099288 -0
		 0.89689896658620161 0.4222537097758039 -0.13143077385899588 -0 0.28192467949760502 -0.31696215544524442 0.90556803560289056 -0
		 -4.6827584700038933 -0.43291834424742021 1.8868280135693325 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143826 -0.47572266972118704 -0
		 0.74200082470018769 0.64087873460052991 -0.19674659763529495 -0 0.4473524375790161 -0.25474905055727082 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547873 -0.45027497011225115 -0.47572266972118704 -0
		 0.40753183853562547 0.89174468145243679 -0.19674659763529498 -0 0.51281322894014236 -0.045209229054513987 0.85730899787199377 -0
		 -3.7930210190858711 -3.6363074555288435 2.3527934785693625 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988877 -0.60770287165339087 -0
		 -0.15684837943322541 0.97734058610779651 -0.14214065082037369 0 0.58840109184103584 0.20806465329722415 0.78134067804548823 -0
		 -1.2358328313690483 -5.3627024397852345 2.4055843427903012 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304327 0.42405058758597708 -0.53977069894956764 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867554 0.18573444686090734 0.83774129179212098 -0
		 0.1968172812762447 -5.9805478664821443 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348465 0.49094017626205783 -0.60972944210779889 -0
		 -0.5253983994062138 0.83932464881653146 0.13960893879116207 0 0.58030058688812003 0.23347778742481168 0.78021750277503932 -0
		 0.47614274721700267 -5.961344900019987 0.95798160440020297 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516239 0.60280760005635936 -0.65335941194369052 -0
		 -0.66368542414675347 0.72082410497382132 0.19983560109207887 0 0.5914196324406692 0.34210467258279464 0.7301966936112233 -0
		 1.1441516084105745 -5.8141102579502952 0.85898842630906724 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387919 -0.10503749339307361 -0.91693018807666515 -0
		 0.17781968135064385 0.98332967287429862 -0.037985725862222486 -0 0.90563458731928081 -0.14842465909216213 0.39723559108470113 -0
		 -3.0698135514498937 -3.9119159816185101 3.2206463961358001 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042264 0.077623837547557792 -0.3834011912353672 -0
		 0.20793806673474038 0.92724908623729163 -0.31140149722621147 -0 0.33133622500252974 -0.36631089516488313 -0.86950137095037139 -0
		 1.3350913447026536 -3.8738355210740298 3.8541836841977992 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364847 -0.094924216888717688 0.38340119123536714 -0
		 -0.031825581119802333 0.94974535529880866 0.31140149722621158 0 -0.39369304385399273 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558672 -3.7939732910568535 -3.8541836841977997 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071677 -0.39002924497921759 0.452124470705772 -0
		 0.2418572836977026 0.90452625422546051 0.35119411973896503 -0 -0.54593443129409036 -0.17236427552656972 0.81990618563942996 -0
		 -4.4547110826954048 -2.2284950952224647 -4.392248129419202 1;
	setAttr ".pm[18]" -type "matrix" 0.8806009698142695 -0.14186400160433182 0.45212447070577194 -0
		 -0.029550252819743231 0.93583624252273023 0.35119411973896497 0 -0.47293626898394825 -0.32262227485054945 0.81990618563942974 -0
		 -4.8264647244913848 -3.7828002607320328 -4.3922481294192028 1;
	setAttr ".pm[19]" -type "matrix" 0.04444990963230469 -0.99486331132534522 -0.090946123130399792 -0
		 0.99875087560877895 0.046333564308836124 -0.018705327827550827 -0 0.022823102426645002 -0.090001069978133355 0.99568012604370837 -0
		 -5.1987338443485154 1.1631347543266388 0.9593990667563872 1;
	setAttr ".pm[20]" -type "matrix" 0.59746412934814974 -0.79672166835715486 -0.090946123130399792 -0
		 0.79887115989862156 0.60121126119950097 -0.018705327827550827 -0 0.06958077338236654 -0.061478472468806014 0.99568012604370837 -0
		 -6.0311161264281017 -2.7072772985180777 0.9593990667563872 1;
	setAttr ".pm[21]" -type "matrix" 0.86518594954605277 0.49313494643519812 -0.090946123130399764 -0
		 -0.49658384305064746 0.86778718447088932 -0.018705327827550817 0 0.069697629293580379 0.061345962152701043 0.99568012604370804 -0
		 1.7365891972474419 -7.8707547550432926 0.95939906675638709 1;
	setAttr ".pm[22]" -type "matrix" 0.99585451783966294 -0.0016068558999377096 -0.090946123130399764 -0
		 -9.4996095158742211e-05 0.99982503553702085 -0.018705327827550817 0 0.090960267557186225 0.018636424751305627 0.99568012604370815 -0
		 -3.6603758191881481 -6.9736763934885175 0.95939906675638698 1;
	setAttr ".pm[23]" -type "matrix" -0.32924786964475911 0.69647275897298944 0.63759041424957197 -0
		 0.89339606886512035 0.44836933267261597 -0.02843247535938619 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461437 0
		 -3.5395339554045822 -2.4005302806614881 -1.426859062061397 1;
	setAttr ".pm[24]" -type "matrix" -0.2788948936776629 0.7069333932652262 0.64997139611450527 -0
		 0.8885321965626376 0.44672740812313078 -0.10461911155789998 0 -0.36431878067442514 0.54834277629791328 -0.75272307373282876 0
		 -4.0483565879838146 -2.4178888731886139 -1.0785180430682908 1;
	setAttr ".pm[25]" -type "matrix" -0.23031898058193831 0.6528205623008978 0.72164983241239422 -0
		 0.83303853881336309 0.51558677386086182 -0.20054194441922923 0 -0.50299101387141465 0.55497350572517268 -0.66257410748362211 0
		 -4.4246285444210187 -2.6889499752129313 -0.5852217214780755 1;
	setAttr ".pm[26]" -type "matrix" -0.43594206856657181 0.59749643679491382 0.67301747441747795 -0
		 0.7008473455733657 0.69452627827057267 -0.16262302110831151 0 -0.5645949973712715 0.40078829425147744 -0.72152701414037557 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020237 1;
	setAttr ".pm[27]" -type "matrix" -0.80828667061645421 0.2506903381799318 0.53275417637687217 -0
		 0.21819681833351881 0.96794042383007672 -0.12442461325951773 0 -0.54686635165540887 0.015674509845052274 -0.83707317671050763 0
		 -1.278220982043448 -5.4701710369415641 -1.0637098843123747 1;
	setAttr ".pm[28]" -type "matrix" -0.82004746298995335 -0.20903383935798978 0.53275417637687217 -0
		 -0.32022389937182466 0.93913533097542601 -0.12442461325951776 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050752 0
		 1.4741587314170379 -5.4790257814298382 -1.0637098843123742 1;
	setAttr ".pm[29]" -type "matrix" -0.68115616977266769 -0.5822485630455535 0.44386133331482847 -0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048567 0 -0.16426653899654681 -0.4692574321309736 -0.86764852708682749 0
		 3.7155105341486685 -4.2535038943938588 -0.56138920422851701 1;
	setAttr ".pm[30]" -type "matrix" -0.50408143703462183 -0.80314784176126897 0.31757746946426541 0
		 -0.83807469275740265 0.36604707764536509 -0.40452484016049428 0 0.20864494769031905 -0.47006710289224019 -0.85761541764464611 -0
		 4.7675519887131355 -2.6983875271677138 0.40050570930127832 1;
	setAttr ".pm[31]" -type "matrix" -0.13887805416914528 -0.9736202144440087 0.18104298963559595 0
		 -0.84422276414869568 0.020829102434948937 -0.53558759599610806 0 0.51768794709103294 -0.22722197630897611 -0.82484505388522256 -0
		 5.131402912047518 -0.54383195128390038 1.1062768597705592 1;
	setAttr ".pm[32]" -type "matrix" -0.44544497944150713 0.31790426679360734 -0.8369681280937612 0
		 -0.53604559259280804 0.65406161496897952 0.53372139406810004 0 0.71710103399185066 0.68639659161347089 -0.12093728155217454 -0
		 3.5487087479939037 -1.8700671021165951 -2.7925192544727233 1;
	setAttr ".pm[33]" -type "matrix" -0.052113644842616026 -0.12229877356956341 -0.99112419908132532 0
		 -0.12985134008384805 0.98487688501104831 -0.11470026525411023 0 0.99016301561896736 0.12272135655343426 -0.067206183837786579 -0
		 1.5808752886267781 -4.2107979269501721 0.024886578657810372 1;
	setAttr ".pm[34]" -type "matrix" 0.51285923410589029 0.15316128048266991 0.84469937146491858 -0
		 -0.35222853801336468 0.93486282786315433 0.044345801251915153 0 -0.78288598339814941 -0.3202703783377655 0.53340080779662979 -0
		 1.1996854652596878 -4.1723182493855946 0.61489409327925182 1;
	setAttr ".pm[35]" -type "matrix" -0.73333549252294605 0.11850971777536495 0.66945836479868692 -0
		 0.055614854265168837 0.99184696103279268 -0.11465859703955258 0 -0.67758840263923692 -0.046851389337113004 -0.73394748035945334 0
		 -1.6184639253570574 -4.1509626321413302 0.61671609555364271 1;
	setAttr ".pm[36]" -type "matrix" 0.71787470010069721 0.19100108051108461 -0.66945836479868681 -0
		 -0.15418153999379064 0.98136713764526728 0.1146585970395526 0 0.67888435515960788 0.020907615682650958 0.73394748035945312 -0
		 2.987810459616135 -3.9063461047656256 -0.61671609555364337 1;
	setAttr ".pm[37]" -type "matrix" 0.86346497510865083 0.01229272663840846 -0.50425898666499791 -0
		 0.11820591342388179 0.96693328786482802 0.22598092585556948 -0 0.49036272165840966 -0.25473300863984616 0.83345995435716624 -0
		 -0.31526851927339061 -4.1175003486713431 -0.84111836428204012 1;
	setAttr ".pm[38]" -type "matrix" 0.85074581735119792 0.14817026903880434 -0.50425898666499791 -0
		 -0.035601726522438017 0.97348093880572806 0.22598092585556945 0 0.52437016632152489 -0.17429983693304779 0.83345995435716613 -0
		 -0.54266115293508965 -4.2561403836399734 -0.84111836428203923 1;
	setAttr ".pm[39]" -type "matrix" -0.51836859257157597 0.80319048658789161 -0.2935626755738362 -0
		 0.85499374135413664 0.49348852949922861 -0.15954552171071609 -0 0.016724367869042668 -0.33369763785108691 -0.94253179363456308 -0
		 -4.8180154521350591 -3.4553778402904016 -0.7848661515675518 1;
	setAttr ".pm[40]" -type "matrix" 0.13331225767208435 -0.9465985408103601 0.29356267557383614 -0
		 0.96950646724456246 0.18601730154215074 0.15954552171071607 0 -0.20563329478793038 0.26334153880972577 0.94253179363456319 -0
		 -6.3757106097054148 -0.94555417178716261 0.7848661515675518 1;
	setAttr ".pm[41]" -type "matrix" 0.95562517126066493 0.024525243382202185 0.2935626755738362 -0
		 -0.074275015140186543 0.98439242613298306 0.15954552171071609 0 -0.28506798167972303 -0.17427008868151553 0.94253179363456319 -0
		 0.085391099712523177 -7.5497824375075142 0.78486615156755213 1;
	setAttr ".pm[42]" -type "matrix" -0.16932532307067247 0.96527649990704545 -0.19892263243335806 -0
		 0.98556021377032699 0.16584045593116589 -0.034176135087669167 -0 1.3183898417423744e-16 -0.2018371172598033 -0.97941910237459295 -0
		 -5.7236422783817282 -1.9839300723893565 -0.95909989525908557 1;
	setAttr ".pm[43]" -type "matrix" 0.62316378607661982 -0.75637073054715476 0.19892263243335795 -0
		 0.7669143872697135 0.64083875849482563 0.034176135087669222 0 -0.15332716106865452 0.13125929903200931 0.97941910237459284 -0
		 -6.1360967711649694 -4.1170383759049205 0.95909989525908523 1;
	setAttr ".pm[44]" -type "matrix" 0.98000917862884818 -0.0034345464029732859 0.19892263243335798 -0
		 -0.0034345464029732738 0.99940992374574489 0.034176135087669222 0 -0.19892263243335823 -0.034176135087669333 0.97941910237459295 -0
		 -1.6944175488132156 -8.489243544670618 0.95909989525908523 1;
	setAttr ".gm" -type "matrix" 2.8111605529886936 -0.0073032583518964434 -1.314361194316511 0
		 1.1930342377176868 1.3164992517603069 2.5443508738252496 0 0.76333658674085325 -3.888830163605832 1.6542354126645016 0
		 4.3595424953135264 4.2080814008643879 2.3882914173254743 1;
	setAttr -s 5 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster4";
	rename -uid "F63CC96D-6348-8407-EC7C-B2867D3C2566";
	setAttr -s 17 ".wl";
	setAttr ".wl[0:16].w"
		5 12 0.09204794246872447 13 0.26782509512182701 14 0.32614355698168945 
		15 0.22381049026123084 17 0.090172915166528256
		5 12 0.10002371414235589 13 0.28816953518203842 14 0.30334261444641514 
		15 0.17550207334042406 17 0.13296206288876644
		5 12 0.094472398577204034 13 0.28832379462947 14 0.31883848308012119 
		15 0.12410224851035519 17 0.17426307520284962
		5 12 0.079227162680419114 13 0.25207524004226012 14 0.36066136512069424 
		15 0.24513867419638763 17 0.062897557960238965
		5 12 0.082200086645439527 13 0.28436536732411394 14 0.3551677627591428 
		15 0.089499174606691587 17 0.18876760866461223
		5 12 0.073640020633237727 13 0.2784264870448579 14 0.38704454960914109 
		15 0.20201792633905788 17 0.05887101637370535
		5 12 0.077080063922964903 13 0.33599344958624316 14 0.37137271323972659 
		15 0.12623839368286002 17 0.089315379568205233
		5 12 0.075825391536294445 13 0.30994130873749082 14 0.38025132583474469 
		15 0.084892195655409938 17 0.14908977823606018
		5 12 0.10195040822876202 13 0.23731179714052408 14 0.26582575197602593 
		15 0.21098843217885638 17 0.18392361047583161
		5 12 0.1021668828843508 13 0.23795725678490201 14 0.26426548054980015 
		15 0.20775840355452038 17 0.18785197622642671
		5 12 0.10188726665617324 13 0.2379170996240996 14 0.26523398231128781 
		15 0.20841190529779155 17 0.18654974611064781
		5 12 0.10172276507387877 13 0.23705199250114969 14 0.26685349910419348 
		15 0.21238019461043206 17 0.18199154871034609
		5 12 0.10223135117901498 13 0.23857948670996892 14 0.26306977381150065 
		15 0.2045587761997946 17 0.19156061209972081
		5 12 0.10205279954454738 13 0.23869728063632784 14 0.26345691943420618 
		15 0.20306766151661043 17 0.19272533886830823
		5 12 0.10173690339738319 13 0.23810073444220606 14 0.26548849745267622 
		15 0.20780404526246701 17 0.18686981944526754
		5 12 0.1016402061297932 13 0.2373915779312514 14 0.26672055039202164 
		15 0.21107061633078814 17 0.18317704921614564
		5 12 0.10193273800724729 13 0.23870069302034841 14 0.26390441278607946 
		15 0.20454216085728671 17 0.19091999532903817;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.012728295233860504 0.99991782735513501 -0.0015261185493631081 -0
		 0.99280702824109124 0.012819459325065943 0.11903724685032832 -0 0.11904702925958592 1.0690233420707081e-16 -0.99288861652476801 -0
		 -0.90795101870048134 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513461 0.91862659735055918 -0.041563650809936667 -0
		 0.89526386431128191 0.39248175502475208 0.21085702556737568 -0 0.210011846539538 0.045642596473303453 -0.9766328776465748 -0
		 -0.37507697621182828 -2.8657604802815309 -0.94611761528610516 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402895 0.9445447650793507 0.045683164274527482 -0
		 0.94422144490049698 0.32697288226068943 -0.039173935928819348 0 -0.051938692002751134 0.030396069274366267 -0.99818758319551948 0
		 -1.5297596850582682 -2.7773530357943352 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790586 0.99329326174337518 0.045683164274527482 -0
		 0.99337604742855179 0.10802514123606741 -0.039173935928819348 0 -0.043846136866929383 0.041219716594552334 -0.99818758319551959 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810515 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885265 0.99890059027644973 0.045683164274527607 -0
		 0.99915653175010688 0.012313724251499982 -0.039173935928819466 0 -0.039693397610562217 0.045232542935574056 -0.99818758319551937 0
		 -3.4912318179848607 -1.9040448117726043 -0.56315261966810481 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871752 -0.9779020118066285 -0.091812310658712079 -0
		 0.96088145788389734 0.20231395106606309 -0.18914515351696121 -0 0.20354033747357872 -0.052694596578666153 0.9776474878567194 -0
		 -4.1608222065879765 0.98034715670107386 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.849256614102049 -0.40332677146099288 -0
		 0.89689896658620161 0.4222537097758039 -0.13143077385899588 -0 0.28192467949760502 -0.31696215544524442 0.90556803560289056 -0
		 -4.6827584700038933 -0.43291834424742021 1.8868280135693325 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143826 -0.47572266972118704 -0
		 0.74200082470018769 0.64087873460052991 -0.19674659763529495 -0 0.4473524375790161 -0.25474905055727082 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547873 -0.45027497011225115 -0.47572266972118704 -0
		 0.40753183853562547 0.89174468145243679 -0.19674659763529498 -0 0.51281322894014236 -0.045209229054513987 0.85730899787199377 -0
		 -3.7930210190858711 -3.6363074555288435 2.3527934785693625 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988877 -0.60770287165339087 -0
		 -0.15684837943322541 0.97734058610779651 -0.14214065082037369 0 0.58840109184103584 0.20806465329722415 0.78134067804548823 -0
		 -1.2358328313690483 -5.3627024397852345 2.4055843427903012 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304327 0.42405058758597708 -0.53977069894956764 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867554 0.18573444686090734 0.83774129179212098 -0
		 0.1968172812762447 -5.9805478664821443 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348465 0.49094017626205783 -0.60972944210779889 -0
		 -0.5253983994062138 0.83932464881653146 0.13960893879116207 0 0.58030058688812003 0.23347778742481168 0.78021750277503932 -0
		 0.47614274721700267 -5.961344900019987 0.95798160440020297 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516239 0.60280760005635936 -0.65335941194369052 -0
		 -0.66368542414675347 0.72082410497382132 0.19983560109207887 0 0.5914196324406692 0.34210467258279464 0.7301966936112233 -0
		 1.1441516084105745 -5.8141102579502952 0.85898842630906724 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387919 -0.10503749339307361 -0.91693018807666515 -0
		 0.17781968135064385 0.98332967287429862 -0.037985725862222486 -0 0.90563458731928081 -0.14842465909216213 0.39723559108470113 -0
		 -3.0698135514498937 -3.9119159816185101 3.2206463961358001 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042264 0.077623837547557792 -0.3834011912353672 -0
		 0.20793806673474038 0.92724908623729163 -0.31140149722621147 -0 0.33133622500252974 -0.36631089516488313 -0.86950137095037139 -0
		 1.3350913447026536 -3.8738355210740298 3.8541836841977992 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364847 -0.094924216888717688 0.38340119123536714 -0
		 -0.031825581119802333 0.94974535529880866 0.31140149722621158 0 -0.39369304385399273 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558672 -3.7939732910568535 -3.8541836841977997 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071677 -0.39002924497921759 0.452124470705772 -0
		 0.2418572836977026 0.90452625422546051 0.35119411973896503 -0 -0.54593443129409036 -0.17236427552656972 0.81990618563942996 -0
		 -4.4547110826954048 -2.2284950952224647 -4.392248129419202 1;
	setAttr ".pm[18]" -type "matrix" 0.8806009698142695 -0.14186400160433182 0.45212447070577194 -0
		 -0.029550252819743231 0.93583624252273023 0.35119411973896497 0 -0.47293626898394825 -0.32262227485054945 0.81990618563942974 -0
		 -4.8264647244913848 -3.7828002607320328 -4.3922481294192028 1;
	setAttr ".pm[19]" -type "matrix" 0.04444990963230469 -0.99486331132534522 -0.090946123130399792 -0
		 0.99875087560877895 0.046333564308836124 -0.018705327827550827 -0 0.022823102426645002 -0.090001069978133355 0.99568012604370837 -0
		 -5.1987338443485154 1.1631347543266388 0.9593990667563872 1;
	setAttr ".pm[20]" -type "matrix" 0.59746412934814974 -0.79672166835715486 -0.090946123130399792 -0
		 0.79887115989862156 0.60121126119950097 -0.018705327827550827 -0 0.06958077338236654 -0.061478472468806014 0.99568012604370837 -0
		 -6.0311161264281017 -2.7072772985180777 0.9593990667563872 1;
	setAttr ".pm[21]" -type "matrix" 0.86518594954605277 0.49313494643519812 -0.090946123130399764 -0
		 -0.49658384305064746 0.86778718447088932 -0.018705327827550817 0 0.069697629293580379 0.061345962152701043 0.99568012604370804 -0
		 1.7365891972474419 -7.8707547550432926 0.95939906675638709 1;
	setAttr ".pm[22]" -type "matrix" 0.99585451783966294 -0.0016068558999377096 -0.090946123130399764 -0
		 -9.4996095158742211e-05 0.99982503553702085 -0.018705327827550817 0 0.090960267557186225 0.018636424751305627 0.99568012604370815 -0
		 -3.6603758191881481 -6.9736763934885175 0.95939906675638698 1;
	setAttr ".pm[23]" -type "matrix" -0.32924786964475911 0.69647275897298944 0.63759041424957197 -0
		 0.89339606886512035 0.44836933267261597 -0.02843247535938619 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461437 0
		 -3.5395339554045822 -2.4005302806614881 -1.426859062061397 1;
	setAttr ".pm[24]" -type "matrix" -0.2788948936776629 0.7069333932652262 0.64997139611450527 -0
		 0.8885321965626376 0.44672740812313078 -0.10461911155789998 0 -0.36431878067442514 0.54834277629791328 -0.75272307373282876 0
		 -4.0483565879838146 -2.4178888731886139 -1.0785180430682908 1;
	setAttr ".pm[25]" -type "matrix" -0.23031898058193831 0.6528205623008978 0.72164983241239422 -0
		 0.83303853881336309 0.51558677386086182 -0.20054194441922923 0 -0.50299101387141465 0.55497350572517268 -0.66257410748362211 0
		 -4.4246285444210187 -2.6889499752129313 -0.5852217214780755 1;
	setAttr ".pm[26]" -type "matrix" -0.43594206856657181 0.59749643679491382 0.67301747441747795 -0
		 0.7008473455733657 0.69452627827057267 -0.16262302110831151 0 -0.5645949973712715 0.40078829425147744 -0.72152701414037557 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020237 1;
	setAttr ".pm[27]" -type "matrix" -0.80828667061645421 0.2506903381799318 0.53275417637687217 -0
		 0.21819681833351881 0.96794042383007672 -0.12442461325951773 0 -0.54686635165540887 0.015674509845052274 -0.83707317671050763 0
		 -1.278220982043448 -5.4701710369415641 -1.0637098843123747 1;
	setAttr ".pm[28]" -type "matrix" -0.82004746298995335 -0.20903383935798978 0.53275417637687217 -0
		 -0.32022389937182466 0.93913533097542601 -0.12442461325951776 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050752 0
		 1.4741587314170379 -5.4790257814298382 -1.0637098843123742 1;
	setAttr ".pm[29]" -type "matrix" -0.68115616977266769 -0.5822485630455535 0.44386133331482847 -0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048567 0 -0.16426653899654681 -0.4692574321309736 -0.86764852708682749 0
		 3.7155105341486685 -4.2535038943938588 -0.56138920422851701 1;
	setAttr ".pm[30]" -type "matrix" -0.50408143703462183 -0.80314784176126897 0.31757746946426541 0
		 -0.83807469275740265 0.36604707764536509 -0.40452484016049428 0 0.20864494769031905 -0.47006710289224019 -0.85761541764464611 -0
		 4.7675519887131355 -2.6983875271677138 0.40050570930127832 1;
	setAttr ".pm[31]" -type "matrix" -0.13887805416914528 -0.9736202144440087 0.18104298963559595 0
		 -0.84422276414869568 0.020829102434948937 -0.53558759599610806 0 0.51768794709103294 -0.22722197630897611 -0.82484505388522256 -0
		 5.131402912047518 -0.54383195128390038 1.1062768597705592 1;
	setAttr ".pm[32]" -type "matrix" -0.44544497944150713 0.31790426679360734 -0.8369681280937612 0
		 -0.53604559259280804 0.65406161496897952 0.53372139406810004 0 0.71710103399185066 0.68639659161347089 -0.12093728155217454 -0
		 3.5487087479939037 -1.8700671021165951 -2.7925192544727233 1;
	setAttr ".pm[33]" -type "matrix" -0.052113644842616026 -0.12229877356956341 -0.99112419908132532 0
		 -0.12985134008384805 0.98487688501104831 -0.11470026525411023 0 0.99016301561896736 0.12272135655343426 -0.067206183837786579 -0
		 1.5808752886267781 -4.2107979269501721 0.024886578657810372 1;
	setAttr ".pm[34]" -type "matrix" 0.51285923410589029 0.15316128048266991 0.84469937146491858 -0
		 -0.35222853801336468 0.93486282786315433 0.044345801251915153 0 -0.78288598339814941 -0.3202703783377655 0.53340080779662979 -0
		 1.1996854652596878 -4.1723182493855946 0.61489409327925182 1;
	setAttr ".pm[35]" -type "matrix" -0.73333549252294605 0.11850971777536495 0.66945836479868692 -0
		 0.055614854265168837 0.99184696103279268 -0.11465859703955258 0 -0.67758840263923692 -0.046851389337113004 -0.73394748035945334 0
		 -1.6184639253570574 -4.1509626321413302 0.61671609555364271 1;
	setAttr ".pm[36]" -type "matrix" 0.71787470010069721 0.19100108051108461 -0.66945836479868681 -0
		 -0.15418153999379064 0.98136713764526728 0.1146585970395526 0 0.67888435515960788 0.020907615682650958 0.73394748035945312 -0
		 2.987810459616135 -3.9063461047656256 -0.61671609555364337 1;
	setAttr ".pm[37]" -type "matrix" 0.86346497510865083 0.01229272663840846 -0.50425898666499791 -0
		 0.11820591342388179 0.96693328786482802 0.22598092585556948 -0 0.49036272165840966 -0.25473300863984616 0.83345995435716624 -0
		 -0.31526851927339061 -4.1175003486713431 -0.84111836428204012 1;
	setAttr ".pm[38]" -type "matrix" 0.85074581735119792 0.14817026903880434 -0.50425898666499791 -0
		 -0.035601726522438017 0.97348093880572806 0.22598092585556945 0 0.52437016632152489 -0.17429983693304779 0.83345995435716613 -0
		 -0.54266115293508965 -4.2561403836399734 -0.84111836428203923 1;
	setAttr ".pm[39]" -type "matrix" -0.51836859257157597 0.80319048658789161 -0.2935626755738362 -0
		 0.85499374135413664 0.49348852949922861 -0.15954552171071609 -0 0.016724367869042668 -0.33369763785108691 -0.94253179363456308 -0
		 -4.8180154521350591 -3.4553778402904016 -0.7848661515675518 1;
	setAttr ".pm[40]" -type "matrix" 0.13331225767208435 -0.9465985408103601 0.29356267557383614 -0
		 0.96950646724456246 0.18601730154215074 0.15954552171071607 0 -0.20563329478793038 0.26334153880972577 0.94253179363456319 -0
		 -6.3757106097054148 -0.94555417178716261 0.7848661515675518 1;
	setAttr ".pm[41]" -type "matrix" 0.95562517126066493 0.024525243382202185 0.2935626755738362 -0
		 -0.074275015140186543 0.98439242613298306 0.15954552171071609 0 -0.28506798167972303 -0.17427008868151553 0.94253179363456319 -0
		 0.085391099712523177 -7.5497824375075142 0.78486615156755213 1;
	setAttr ".pm[42]" -type "matrix" -0.16932532307067247 0.96527649990704545 -0.19892263243335806 -0
		 0.98556021377032699 0.16584045593116589 -0.034176135087669167 -0 1.3183898417423744e-16 -0.2018371172598033 -0.97941910237459295 -0
		 -5.7236422783817282 -1.9839300723893565 -0.95909989525908557 1;
	setAttr ".pm[43]" -type "matrix" 0.62316378607661982 -0.75637073054715476 0.19892263243335795 -0
		 0.7669143872697135 0.64083875849482563 0.034176135087669222 0 -0.15332716106865452 0.13125929903200931 0.97941910237459284 -0
		 -6.1360967711649694 -4.1170383759049205 0.95909989525908523 1;
	setAttr ".pm[44]" -type "matrix" 0.98000917862884818 -0.0034345464029732859 0.19892263243335798 -0
		 -0.0034345464029732738 0.99940992374574489 0.034176135087669222 0 -0.19892263243335823 -0.034176135087669333 0.97941910237459295 -0
		 -1.6944175488132156 -8.489243544670618 0.95909989525908523 1;
	setAttr ".gm" -type "matrix" 2.6749682748819188 -0.0069494374392169303 -1.2506843455791465 0
		 1.1352353153041634 1.2527188205670476 2.4210847226120724 0 0.72635522379452122 -3.7004280324686607 1.5740926797508099 0
		 4.3877335395692683 4.1628757265942022 2.3984631100837901 1;
	setAttr -s 5 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster5";
	rename -uid "4AE4F455-F24E-D230-8631-4E98BD9A1B2A";
	setAttr -s 17 ".wl";
	setAttr ".wl[0:16].w"
		5 12 0.11838607592754399 13 0.25454297431479567 14 0.27420949787729693 
		15 0.21997220010176843 17 0.13288925177859506
		5 12 0.12205580618559783 13 0.25981320585028966 14 0.26577216120915514 
		15 0.19491104934017797 17 0.15744777741477928
		5 12 0.11976571348855805 13 0.26277101034322292 14 0.26827895482145558 
		15 0.16854481725473264 17 0.18063950409203081
		5 12 0.11174603933702268 13 0.25299287162629674 14 0.28585659066922736 
		15 0.23242063045001185 17 0.11698386791744134
		5 12 0.11359815780243625 13 0.26571641598031837 14 0.27897134904247983 
		15 0.15139315088826313 17 0.19032092628650235
		5 12 0.10731680925686862 13 0.26281292907006698 14 0.29236217314275614 
		15 0.2189840094591349 17 0.11852407907117335
		5 12 0.10744087570364161 13 0.27718164486491359 14 0.28836569622351715 
		15 0.18398629737586797 17 0.14302548583205973
		5 12 0.10906134628905076 13 0.27435745424350871 14 0.2856257641146695 
		15 0.15509891362743572 17 0.17585652172533542
		5 12 0.11533262907289162 13 0.23792642336674569 14 0.25288340028520334 
		15 0.21385563970536065 17 0.18000190756979886
		5 12 0.11557726933568677 13 0.23825180041997862 14 0.25206133687243099 
		15 0.21189410144486359 17 0.18221549192704001
		5 12 0.11511627659893643 13 0.2384017943739154 14 0.25256138247534066 
		15 0.21201962279218231 17 0.18190092375962527
		5 12 0.11497932667486789 13 0.23789950774344384 14 0.25345047959451844 
		15 0.21456565952273537 17 0.17910502646443455
		5 12 0.11556419750375038 13 0.23866834747567661 14 0.25146439529100001 
		15 0.20981490822363205 17 0.18448815150594094
		5 12 0.11530814689436489 13 0.23895647478236515 14 0.25142312631235775 
		15 0.20880567928599109 17 0.18550657272492121
		5 12 0.11472888840617873 13 0.23866454036288035 14 0.25278716928871647 
		15 0.21145439621587536 17 0.18236500572634909
		5 12 0.11473162696346549 13 0.23821231379158864 14 0.25341133764707247 
		15 0.21357753511992286 17 0.18006718647795061
		5 12 0.11496516667214629 13 0.23896517148281085 14 0.25196303597333686 
		15 0.20947198437245276 17 0.18463464149925338;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.012728295233860504 0.99991782735513501 -0.0015261185493631081 -0
		 0.99280702824109124 0.012819459325065943 0.11903724685032832 -0 0.11904702925958592 1.0690233420707081e-16 -0.99288861652476801 -0
		 -0.90795101870048134 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513461 0.91862659735055918 -0.041563650809936667 -0
		 0.89526386431128191 0.39248175502475208 0.21085702556737568 -0 0.210011846539538 0.045642596473303453 -0.9766328776465748 -0
		 -0.37507697621182828 -2.8657604802815309 -0.94611761528610516 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402895 0.9445447650793507 0.045683164274527482 -0
		 0.94422144490049698 0.32697288226068943 -0.039173935928819348 0 -0.051938692002751134 0.030396069274366267 -0.99818758319551948 0
		 -1.5297596850582682 -2.7773530357943352 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790586 0.99329326174337518 0.045683164274527482 -0
		 0.99337604742855179 0.10802514123606741 -0.039173935928819348 0 -0.043846136866929383 0.041219716594552334 -0.99818758319551959 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810515 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885265 0.99890059027644973 0.045683164274527607 -0
		 0.99915653175010688 0.012313724251499982 -0.039173935928819466 0 -0.039693397610562217 0.045232542935574056 -0.99818758319551937 0
		 -3.4912318179848607 -1.9040448117726043 -0.56315261966810481 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871752 -0.9779020118066285 -0.091812310658712079 -0
		 0.96088145788389734 0.20231395106606309 -0.18914515351696121 -0 0.20354033747357872 -0.052694596578666153 0.9776474878567194 -0
		 -4.1608222065879765 0.98034715670107386 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.849256614102049 -0.40332677146099288 -0
		 0.89689896658620161 0.4222537097758039 -0.13143077385899588 -0 0.28192467949760502 -0.31696215544524442 0.90556803560289056 -0
		 -4.6827584700038933 -0.43291834424742021 1.8868280135693325 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143826 -0.47572266972118704 -0
		 0.74200082470018769 0.64087873460052991 -0.19674659763529495 -0 0.4473524375790161 -0.25474905055727082 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547873 -0.45027497011225115 -0.47572266972118704 -0
		 0.40753183853562547 0.89174468145243679 -0.19674659763529498 -0 0.51281322894014236 -0.045209229054513987 0.85730899787199377 -0
		 -3.7930210190858711 -3.6363074555288435 2.3527934785693625 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988877 -0.60770287165339087 -0
		 -0.15684837943322541 0.97734058610779651 -0.14214065082037369 0 0.58840109184103584 0.20806465329722415 0.78134067804548823 -0
		 -1.2358328313690483 -5.3627024397852345 2.4055843427903012 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304327 0.42405058758597708 -0.53977069894956764 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867554 0.18573444686090734 0.83774129179212098 -0
		 0.1968172812762447 -5.9805478664821443 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348465 0.49094017626205783 -0.60972944210779889 -0
		 -0.5253983994062138 0.83932464881653146 0.13960893879116207 0 0.58030058688812003 0.23347778742481168 0.78021750277503932 -0
		 0.47614274721700267 -5.961344900019987 0.95798160440020297 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516239 0.60280760005635936 -0.65335941194369052 -0
		 -0.66368542414675347 0.72082410497382132 0.19983560109207887 0 0.5914196324406692 0.34210467258279464 0.7301966936112233 -0
		 1.1441516084105745 -5.8141102579502952 0.85898842630906724 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387919 -0.10503749339307361 -0.91693018807666515 -0
		 0.17781968135064385 0.98332967287429862 -0.037985725862222486 -0 0.90563458731928081 -0.14842465909216213 0.39723559108470113 -0
		 -3.0698135514498937 -3.9119159816185101 3.2206463961358001 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042264 0.077623837547557792 -0.3834011912353672 -0
		 0.20793806673474038 0.92724908623729163 -0.31140149722621147 -0 0.33133622500252974 -0.36631089516488313 -0.86950137095037139 -0
		 1.3350913447026536 -3.8738355210740298 3.8541836841977992 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364847 -0.094924216888717688 0.38340119123536714 -0
		 -0.031825581119802333 0.94974535529880866 0.31140149722621158 0 -0.39369304385399273 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558672 -3.7939732910568535 -3.8541836841977997 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071677 -0.39002924497921759 0.452124470705772 -0
		 0.2418572836977026 0.90452625422546051 0.35119411973896503 -0 -0.54593443129409036 -0.17236427552656972 0.81990618563942996 -0
		 -4.4547110826954048 -2.2284950952224647 -4.392248129419202 1;
	setAttr ".pm[18]" -type "matrix" 0.8806009698142695 -0.14186400160433182 0.45212447070577194 -0
		 -0.029550252819743231 0.93583624252273023 0.35119411973896497 0 -0.47293626898394825 -0.32262227485054945 0.81990618563942974 -0
		 -4.8264647244913848 -3.7828002607320328 -4.3922481294192028 1;
	setAttr ".pm[19]" -type "matrix" 0.04444990963230469 -0.99486331132534522 -0.090946123130399792 -0
		 0.99875087560877895 0.046333564308836124 -0.018705327827550827 -0 0.022823102426645002 -0.090001069978133355 0.99568012604370837 -0
		 -5.1987338443485154 1.1631347543266388 0.9593990667563872 1;
	setAttr ".pm[20]" -type "matrix" 0.59746412934814974 -0.79672166835715486 -0.090946123130399792 -0
		 0.79887115989862156 0.60121126119950097 -0.018705327827550827 -0 0.06958077338236654 -0.061478472468806014 0.99568012604370837 -0
		 -6.0311161264281017 -2.7072772985180777 0.9593990667563872 1;
	setAttr ".pm[21]" -type "matrix" 0.86518594954605277 0.49313494643519812 -0.090946123130399764 -0
		 -0.49658384305064746 0.86778718447088932 -0.018705327827550817 0 0.069697629293580379 0.061345962152701043 0.99568012604370804 -0
		 1.7365891972474419 -7.8707547550432926 0.95939906675638709 1;
	setAttr ".pm[22]" -type "matrix" 0.99585451783966294 -0.0016068558999377096 -0.090946123130399764 -0
		 -9.4996095158742211e-05 0.99982503553702085 -0.018705327827550817 0 0.090960267557186225 0.018636424751305627 0.99568012604370815 -0
		 -3.6603758191881481 -6.9736763934885175 0.95939906675638698 1;
	setAttr ".pm[23]" -type "matrix" -0.32924786964475911 0.69647275897298944 0.63759041424957197 -0
		 0.89339606886512035 0.44836933267261597 -0.02843247535938619 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461437 0
		 -3.5395339554045822 -2.4005302806614881 -1.426859062061397 1;
	setAttr ".pm[24]" -type "matrix" -0.2788948936776629 0.7069333932652262 0.64997139611450527 -0
		 0.8885321965626376 0.44672740812313078 -0.10461911155789998 0 -0.36431878067442514 0.54834277629791328 -0.75272307373282876 0
		 -4.0483565879838146 -2.4178888731886139 -1.0785180430682908 1;
	setAttr ".pm[25]" -type "matrix" -0.23031898058193831 0.6528205623008978 0.72164983241239422 -0
		 0.83303853881336309 0.51558677386086182 -0.20054194441922923 0 -0.50299101387141465 0.55497350572517268 -0.66257410748362211 0
		 -4.4246285444210187 -2.6889499752129313 -0.5852217214780755 1;
	setAttr ".pm[26]" -type "matrix" -0.43594206856657181 0.59749643679491382 0.67301747441747795 -0
		 0.7008473455733657 0.69452627827057267 -0.16262302110831151 0 -0.5645949973712715 0.40078829425147744 -0.72152701414037557 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020237 1;
	setAttr ".pm[27]" -type "matrix" -0.80828667061645421 0.2506903381799318 0.53275417637687217 -0
		 0.21819681833351881 0.96794042383007672 -0.12442461325951773 0 -0.54686635165540887 0.015674509845052274 -0.83707317671050763 0
		 -1.278220982043448 -5.4701710369415641 -1.0637098843123747 1;
	setAttr ".pm[28]" -type "matrix" -0.82004746298995335 -0.20903383935798978 0.53275417637687217 -0
		 -0.32022389937182466 0.93913533097542601 -0.12442461325951776 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050752 0
		 1.4741587314170379 -5.4790257814298382 -1.0637098843123742 1;
	setAttr ".pm[29]" -type "matrix" -0.68115616977266769 -0.5822485630455535 0.44386133331482847 -0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048567 0 -0.16426653899654681 -0.4692574321309736 -0.86764852708682749 0
		 3.7155105341486685 -4.2535038943938588 -0.56138920422851701 1;
	setAttr ".pm[30]" -type "matrix" -0.50408143703462183 -0.80314784176126897 0.31757746946426541 0
		 -0.83807469275740265 0.36604707764536509 -0.40452484016049428 0 0.20864494769031905 -0.47006710289224019 -0.85761541764464611 -0
		 4.7675519887131355 -2.6983875271677138 0.40050570930127832 1;
	setAttr ".pm[31]" -type "matrix" -0.13887805416914528 -0.9736202144440087 0.18104298963559595 0
		 -0.84422276414869568 0.020829102434948937 -0.53558759599610806 0 0.51768794709103294 -0.22722197630897611 -0.82484505388522256 -0
		 5.131402912047518 -0.54383195128390038 1.1062768597705592 1;
	setAttr ".pm[32]" -type "matrix" -0.44544497944150713 0.31790426679360734 -0.8369681280937612 0
		 -0.53604559259280804 0.65406161496897952 0.53372139406810004 0 0.71710103399185066 0.68639659161347089 -0.12093728155217454 -0
		 3.5487087479939037 -1.8700671021165951 -2.7925192544727233 1;
	setAttr ".pm[33]" -type "matrix" -0.052113644842616026 -0.12229877356956341 -0.99112419908132532 0
		 -0.12985134008384805 0.98487688501104831 -0.11470026525411023 0 0.99016301561896736 0.12272135655343426 -0.067206183837786579 -0
		 1.5808752886267781 -4.2107979269501721 0.024886578657810372 1;
	setAttr ".pm[34]" -type "matrix" 0.51285923410589029 0.15316128048266991 0.84469937146491858 -0
		 -0.35222853801336468 0.93486282786315433 0.044345801251915153 0 -0.78288598339814941 -0.3202703783377655 0.53340080779662979 -0
		 1.1996854652596878 -4.1723182493855946 0.61489409327925182 1;
	setAttr ".pm[35]" -type "matrix" -0.73333549252294605 0.11850971777536495 0.66945836479868692 -0
		 0.055614854265168837 0.99184696103279268 -0.11465859703955258 0 -0.67758840263923692 -0.046851389337113004 -0.73394748035945334 0
		 -1.6184639253570574 -4.1509626321413302 0.61671609555364271 1;
	setAttr ".pm[36]" -type "matrix" 0.71787470010069721 0.19100108051108461 -0.66945836479868681 -0
		 -0.15418153999379064 0.98136713764526728 0.1146585970395526 0 0.67888435515960788 0.020907615682650958 0.73394748035945312 -0
		 2.987810459616135 -3.9063461047656256 -0.61671609555364337 1;
	setAttr ".pm[37]" -type "matrix" 0.86346497510865083 0.01229272663840846 -0.50425898666499791 -0
		 0.11820591342388179 0.96693328786482802 0.22598092585556948 -0 0.49036272165840966 -0.25473300863984616 0.83345995435716624 -0
		 -0.31526851927339061 -4.1175003486713431 -0.84111836428204012 1;
	setAttr ".pm[38]" -type "matrix" 0.85074581735119792 0.14817026903880434 -0.50425898666499791 -0
		 -0.035601726522438017 0.97348093880572806 0.22598092585556945 0 0.52437016632152489 -0.17429983693304779 0.83345995435716613 -0
		 -0.54266115293508965 -4.2561403836399734 -0.84111836428203923 1;
	setAttr ".pm[39]" -type "matrix" -0.51836859257157597 0.80319048658789161 -0.2935626755738362 -0
		 0.85499374135413664 0.49348852949922861 -0.15954552171071609 -0 0.016724367869042668 -0.33369763785108691 -0.94253179363456308 -0
		 -4.8180154521350591 -3.4553778402904016 -0.7848661515675518 1;
	setAttr ".pm[40]" -type "matrix" 0.13331225767208435 -0.9465985408103601 0.29356267557383614 -0
		 0.96950646724456246 0.18601730154215074 0.15954552171071607 0 -0.20563329478793038 0.26334153880972577 0.94253179363456319 -0
		 -6.3757106097054148 -0.94555417178716261 0.7848661515675518 1;
	setAttr ".pm[41]" -type "matrix" 0.95562517126066493 0.024525243382202185 0.2935626755738362 -0
		 -0.074275015140186543 0.98439242613298306 0.15954552171071609 0 -0.28506798167972303 -0.17427008868151553 0.94253179363456319 -0
		 0.085391099712523177 -7.5497824375075142 0.78486615156755213 1;
	setAttr ".pm[42]" -type "matrix" -0.16932532307067247 0.96527649990704545 -0.19892263243335806 -0
		 0.98556021377032699 0.16584045593116589 -0.034176135087669167 -0 1.3183898417423744e-16 -0.2018371172598033 -0.97941910237459295 -0
		 -5.7236422783817282 -1.9839300723893565 -0.95909989525908557 1;
	setAttr ".pm[43]" -type "matrix" 0.62316378607661982 -0.75637073054715476 0.19892263243335795 -0
		 0.7669143872697135 0.64083875849482563 0.034176135087669222 0 -0.15332716106865452 0.13125929903200931 0.97941910237459284 -0
		 -6.1360967711649694 -4.1170383759049205 0.95909989525908523 1;
	setAttr ".pm[44]" -type "matrix" 0.98000917862884818 -0.0034345464029732859 0.19892263243335798 -0
		 -0.0034345464029732738 0.99940992374574489 0.034176135087669222 0 -0.19892263243335823 -0.034176135087669333 0.97941910237459295 -0
		 -1.6944175488132156 -8.489243544670618 0.95909989525908523 1;
	setAttr ".gm" -type "matrix" 2.8111605529886936 -0.0073032583518964434 -1.314361194316511 0
		 1.1930342377176868 1.3164992517603069 2.5443508738252496 0 0.76333658674085325 -3.888830163605832 1.6542354126645016 0
		 4.3473624227306962 4.2708030604125611 2.3615491252323917 1;
	setAttr -s 5 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster6";
	rename -uid "48C7EAC8-7B4F-5246-ED09-1F8CDA302B6F";
	setAttr -s 206 ".wl";
	setAttr ".wl[0:173].w"
		3 34 0.17933782291901765 35 0.43320823477650272 36 0.38745394230447955
		3 34 0.40446218223804137 35 0.39824982523403629 37 0.19728799252792228
		3 34 0.36522925961316216 35 0.29445347832092239 37 0.3403172620659155
		3 34 0.42302913318788277 37 0.42302913318788277 38 0.15394173362423444
		3 34 0.17252847637882787 37 0.42618793994209431 38 0.40128358367907779
		3 34 0.15814890004555038 35 0.43230219085780985 36 0.40954890909663971
		3 34 0.40352254920013697 35 0.40352254920013664 37 0.19295490159972636
		3 34 0.35585985512691598 35 0.30161917345733558 37 0.34252097141574844
		3 34 0.41900451130949451 37 0.41900451130949479 38 0.16199097738101079
		3 34 0.15231112349835543 37 0.42727606137910901 38 0.42041281512253559
		3 34 0.033433155448744506 35 0.48328342227562782 36 0.48328342227562771
		2 34 0.58494171525711036 35 0.41505828474288969
		3 34 0.7214010508132227 35 0.14271761673139563 37 0.13588133245538167
		2 34 0.55628775949740461 37 0.44371224050259533
		2 37 0.5 38 0.5
		3 34 0.041340124881453548 35 0.47932993755927328 36 0.47932993755927328
		2 34 0.66245353216500069 35 0.33754646783499931
		3 34 0.85454756702660206 35 0.07103723641255455 37 0.074415196560843402
		2 34 0.60144580733366526 37 0.39855419266633474
		2 37 0.5 38 0.5
		3 34 0.00084145280763002429 35 0.49957927359618498 36 0.49957927359618498
		3 34 0.00024809129039507938 35 0.49987595435480248 36 0.49987595435480248
		3 34 0.50879694412441334 35 0.4905995409765096 37 0.00060351489907705411
		3 34 0.71894561072389573 35 0.12832349373509708 37 0.15273089554100722
		3 34 0.49941380412327185 37 0.49941380412327163 38 0.0011723917534565498
		3 34 0.0016364938955037828 37 0.49918175305224799 38 0.49918175305224821
		3 34 0.0014921364157075997 37 0.49925393179214622 38 0.49925393179214622
		3 34 0.92704988391731002 37 0.072936965857276007 38 1.3150225413992449e-05
		3 34 0.95243153591646523 35 0.019584537138200148 37 0.02798392694533448
		3 34 0.94366611455604277 35 0.056295660455835332 36 3.8224988121927568e-05
		3 34 0.0030280093666728482 35 0.4984859953166636 36 0.4984859953166636
		3 34 0.0060221392830192089 35 0.4969889303584904 36 0.4969889303584904
		3 34 0.51276021680912542 35 0.47025279190745273 37 0.016986991283421869
		3 34 0.55992017052765708 35 0.18556905412446531 37 0.25451077534787758
		3 34 0.49439416178639045 37 0.49285439237721901 38 0.012751445836390632
		3 34 0.0057019122298009994 37 0.49714904388509951 38 0.49714904388509951
		3 34 0.0050252605387464512 37 0.49748736973062668 38 0.4974873697306269
		3 34 0.49206729664864618 37 0.49206729664864618 38 0.015865406702707703
		3 34 0.50370609395684851 35 0.22096462308309345 37 0.2753292829600581
		3 34 0.49145556423864389 35 0.49145556423864362 37 0.01708887152271258
		3 34 0.084142587889183995 35 0.46137629179340889 36 0.45448112031740717
		3 34 0.098363319838276647 35 0.46388602991935968 36 0.4377506502423637
		3 34 0.43572735853609112 35 0.43057836731490334 37 0.13369427414900559
		3 34 0.37611976477861531 35 0.28588276803024842 37 0.33799746719113632
		3 34 0.44468721043147375 37 0.44468721043147375 38 0.11062557913705248
		3 34 0.090536535494917955 37 0.45733690942117888 38 0.45212655508390315
		3 34 0.071649134232878858 37 0.46417543288356067 38 0.46417543288356056
		3 34 0.45418366665490367 37 0.45418366665490367 38 0.091632666690192613
		3 34 0.36834341903449075 35 0.29130336557238251 37 0.34035321539312674
		3 34 0.44209692892098207 35 0.44209692892098162 37 0.11580614215803631
		3 34 0.3834567577008044 35 0.4070385662654864 36 0.20950467603370929
		3 34 0.37381828011059848 35 0.40299168581930889 36 0.22319003407009258
		3 34 0.39180285340104049 35 0.45753840444782895 36 0.15065874215113062
		3 34 0.24489307472294355 35 0.71023185204965911 36 0.044875073227397345
		3 34 0.016174367132758733 35 0.97943612142877112 36 0.0043895114384701174
		1 35 1
		1 35 0.99999994039535522
		3 34 0.032771330326795578 35 0.96294899011758284 36 0.0042796795556215798
		3 34 0.22039123621366857 35 0.71994079715531945 36 0.059667966631012044
		3 34 0.36306532954765885 35 0.44779257137262762 36 0.18914209907971358
		3 34 0.38186248551419549 37 0.40278212760971227 38 0.21535538687609215
		3 34 0.3684146589770807 37 0.39708410380286047 38 0.23450123722005886
		3 34 0.37719787644983088 37 0.45121744088227567 38 0.17158468266789348
		3 34 0.20378314041027606 37 0.72506990173769359 38 0.07114695785203036
		3 34 0.019970011286698983 37 0.96167419185781189 38 0.018355796855489197
		3 25 0.0025836213759760085 37 0.91764706373214722 38 0.079769314891876775
		3 25 0.034786616383676972 37 0.65882354974746704 38 0.30638983386885599
		3 34 0.0045826347592331828 37 0.99195868347870064 38 0.0034586817620661813
		3 34 0.16731050298550559 37 0.76381003283361992 38 0.068879464180874567
		3 34 0.35619812440327187 37 0.44165818901133941 38 0.20214368658538875
		3 34 0.29190410600966682 35 0.41731205286122453 36 0.2907838411291086
		3 34 0.27250754391167564 35 0.41439747076270655 36 0.31309498532561786
		3 34 0.23128377599082386 35 0.50111100988622337 36 0.26760521412295279
		3 34 0.026593886959909725 35 0.71878021527425717 36 0.25462589776583316
		3 34 0.00046920978886058238 35 0.98045525579388082 36 0.019075534417258701
		2 35 0.84340061292167323 36 0.1565993870783268
		2 35 0.99639445543289185 36 0.0036055445671081543
		3 34 0.0028772705767684003 35 0.81972158909958415 36 0.17740114032364743
		3 34 0.026610501109231639 35 0.64583174336814098 36 0.32755775552262739
		3 34 0.20513222691452371 35 0.47662388806584127 36 0.31824388501963502
		3 34 0.0010474792458489393 37 0.64831964314240387 38 0.35063287761174722
		3 25 0.013348710442542711 37 0.87843137979507446 38 0.10821990976238283
		2 37 0.75294119119644165 38 0.24705880880355835
		3 34 0.00074553955407127847 37 0.83678402280846809 38 0.16247043763746066
		3 34 0.018454423436152084 37 0.6071704065621748 38 0.37437517000167309
		3 34 0.20752244408968723 37 0.49713793038246917 38 0.29533962552784349
		3 34 0.26376705351856322 37 0.40618870269411617 38 0.33004424378732067
		3 34 0.28547717245766951 37 0.41015344021021122 38 0.30436938733211927
		3 34 0.19250019249908429 37 0.46901228822250873 38 0.33848751927840703
		3 34 0.016365494609012592 37 0.56990158039711136 38 0.41373292499387615
		3 34 0.011032337383661129 35 0.49448383130816942 36 0.49448383130816942
		3 34 0.0094297878005929585 35 0.49528510609970355 36 0.49528510609970355
		3 34 0.17162706726686108 35 0.50978166542582193 36 0.31859126730731702
		3 34 0.29345240850004367 35 0.51123408471695708 36 0.19531350678299914
		3 34 0.64109314502903658 35 0.3397592931136536 37 0.019147561857309831
		3 34 0.84310049901151995 35 0.076415128748159519 37 0.080484372240320609
		3 34 0.56280268130621791 37 0.41327124542928856 38 0.023926073264493537
		3 34 0.24602869663982921 37 0.48377431877538601 38 0.27019698458478486
		3 34 0.13943599481232574 37 0.4714439386099849 38 0.38912006657768933
		3 34 0.013187146219832873 37 0.49340642689008374 38 0.49340642689008346
		2 37 0.5 38 0.5
		3 34 0.55580480902658591 37 0.39577651249642531 38 0.048418678476988823
		3 34 0.94723913867166587 35 0.02509805562981246 37 0.027662805698521659
		2 34 0.61021340724998052 35 0.38978659275001953
		3 34 0.29050937399208798 35 0.42101017538720098 36 0.28848045062071098
		3 34 0.21423719606532102 35 0.47078125292019535 36 0.31498155101448361
		3 34 0.10451682592521352 35 0.46613417364869192 36 0.42934900042609453
		3 34 0.17643539780430334 35 0.43722477408708982 36 0.3863398281086069
		4 34 0.36844473270868627 35 0.13352753502432682 37 0.36844473270868627 
		38 0.12958299955830066
		4 34 0.40762408049943444 35 0.083221763766133466 37 0.40762408049943444 
		38 0.10153007523499766
		3 34 0.35942013952449303 35 0.29838487448676787 37 0.34219498598873904
		3 34 0.35438761827681742 35 0.30272621793663856 37 0.34288616378654407
		3 34 0.3822809224917747 37 0.40333118990510192 38 0.21438788760312347
		3 34 0.35749991620890903 37 0.43470480576781817 38 0.20779527802327283
		3 34 0.53081270300094374 35 0.043337624049472473 37 0.42584967294958376
		3 34 0.28231086884594492 37 0.44980630123972382 38 0.26788282991433127
		3 34 0.11074785326226459 37 0.77812206745147705 38 0.11113007928625836
		3 34 0.48153028185482555 37 0.4121423838907417 38 0.10632733425443273
		3 34 0.70023233746591196 35 0.15275613343331537 37 0.14701152910077261
		3 34 0.6695807182529192 35 0.17216543042551774 37 0.15825385132156311
		3 34 0.57249636395745085 35 0.39018373148568675 37 0.037319904556862439
		2 34 0.55855122942686297 35 0.44144877057313708
		3 34 0.011428572195821803 35 0.49428571390208914 36 0.49428571390208903
		3 34 0.16445832065185598 35 0.46633972726890033 36 0.36920195207924372
		3 34 0.14121641557926312 35 0.60210300035513875 36 0.25668058406559813
		3 34 0.035123678155002308 35 0.48243816092249892 36 0.48243816092249875
		3 34 0.026763063010865028 35 0.59174143837342363 36 0.38149549861571141
		3 34 0.0039515051151222044 35 0.72617633865041986 36 0.26987215623445804
		3 34 0.00097030228845240566 35 0.49951484885577407 36 0.49951484885577363
		3 34 0.0058005126231418704 35 0.49709974368842907 36 0.49709974368842896
		3 34 0.44016929924329307 35 0.4401692992432929 37 0.11966140151341406
		3 34 0.37481343514752147 35 0.44337313971390413 36 0.18181342513857437
		3 34 0.38921563331898668 35 0.40987326382336403 36 0.2009111028576494
		3 34 0.40351967568146335 35 0.40351967568146319 37 0.19296064863707346
		2 34 0.32217884063720703 35 0.67782115936279297
		3 34 0.32541652917481734 35 0.47653486081314866 36 0.198048610012034
		3 34 0.086472459054167602 37 0.45875137753131756 38 0.45477616341451488
		3 34 0.19235621494712699 37 0.46403599765311898 38 0.34360778739975406
		3 34 0.27880680290903315 37 0.41129412299800827 38 0.30989907409295858
		3 34 0.16664278871742827 37 0.428097047069249 38 0.40526016421332267
		3 34 0.0070084069074926808 37 0.4964957965462537 38 0.4964957965462537
		3 34 0.021045013813599824 37 0.51183382400383426 38 0.46712116218256589
		3 34 0.0034877708827060765 37 0.52311068486335821 38 0.47340154425393577
		3 34 0.0023780130044537763 37 0.49881099349777314 38 0.49881099349777314
		2 37 0.74510389566421509 38 0.25489610433578491
		3 34 0.035923792828601919 37 0.4820381035856991 38 0.48203810358569898
		3 34 0.13774571212549208 37 0.44415897783790337 38 0.41809531003660461
		3 34 0.013808727169975332 37 0.49309563641501242 38 0.49309563641501231
		3 34 0.016369336440054599 37 0.49971089050252726 38 0.48391977305741818
		3 34 0.019205867605170863 37 0.57517075464120737 38 0.40562337775362178
		3 34 0.059553067414055458 37 0.78976578941474795 38 0.1506811431711966
		3 34 0.5635868065204328 37 0.4336191429604665 38 0.0027940505191005952
		3 34 0.8023130058240997 35 0.093029534178901349 37 0.10465745999699891
		3 34 0.62087112858191595 35 0.37792206943096862 37 0.0012068019871154213
		3 34 0.064782875019379432 35 0.87834906874274821 36 0.056868056237872465
		3 34 0.024835228198106279 35 0.72969374297980316 36 0.2454710288220906
		3 34 0.019889832279370842 35 0.59366283349469551 36 0.38644733422593364
		3 34 0.20255634860555771 35 0.66661339801935926 36 0.13083025337508308
		3 34 0.48269919230551089 35 0.49942196184549842 36 0.017878845848990667
		3 34 0.45797322420088221 35 0.48704219970646384 36 0.05498457609265392
		3 34 0.4499639134876548 35 0.47136690663817282 36 0.078669179874172407
		2 34 0.48516494472478472 35 0.51483505527521534
		2 34 0.38340187072753906 35 0.61659812927246094
		3 34 0.097378914675173317 35 0.58500821651902446 36 0.3176128688058022
		3 34 0.070822931414033938 35 0.52723624527588131 36 0.40194082331008479
		3 34 0.045448053628206253 35 0.57083561669452354 36 0.38371632967727021
		3 34 0.030482255754497513 37 0.51223612575154953 38 0.45728161849395299
		3 34 0.19828033905535997 37 0.62601249326232533 38 0.17570716768231476
		3 34 0.58709206606986364 37 0.40343812287503245 38 0.0094698110551039386
		3 34 0.99327261742464845 35 0.0030691682450888326 37 0.0036582143302626852
		2 34 0.65977997732056071 35 0.34022002267943935
		3 34 0.2415836900472641 35 0.65269758588628202 36 0.10571872406645393
		2 34 0.033647835254669189 35 0.96635216474533081
		1 34 0.48579546307410049;
	setAttr ".wl[173:205].w"
		1 35 0.51420453692589951
		3 34 0.42198538801097379 37 0.4820239713026459 38 0.095990640686380357
		3 34 0.42732450017432916 37 0.5265523936597748 38 0.046123106165895919
		3 34 0.16309206700312703 37 0.61030599057342017 38 0.22660194242345288
		3 34 0.073940255724686599 37 0.51440711572465037 38 0.41165262855066304
		3 34 0.056643219512964534 37 0.4795909448092508 38 0.46376583567778473
		3 34 0.41248036829429607 37 0.45911966203333832 38 0.12839996967236572
		3 34 0.36759405695952696 37 0.41004044717354027 38 0.22236549586693277
		2 34 0.28940099477767944 37 0.71059900522232056
		2 34 0.50115263584565573 37 0.49884736415434433
		3 34 0.39850166584332081 37 0.46321166908148415 38 0.13828666507519502
		3 34 0.030423121147192693 35 0.48765195213486529 36 0.48192492671794207
		3 34 0.019099520545565834 35 0.49045023972721707 36 0.49045023972721707
		3 34 0.027819036903162994 35 0.490245896909834 36 0.4819350661870031
		3 34 0.11732266455731151 35 0.5333233414401114 36 0.34935399400257705
		3 34 0.1282202055617972 35 0.59110355155481253 36 0.28067624288339027
		3 34 0.36979721652051711 35 0.5250475152368359 36 0.10515526824264702
		3 34 0.46873904951456102 35 0.46873904951456097 37 0.062521900970877869
		3 34 0.41100411885019622 35 0.26548505489276208 37 0.32351082625704158
		3 34 0.47419064067025701 37 0.47419064067025701 38 0.051618718659486001
		3 34 0.34261457275080442 37 0.5242471829564409 38 0.13313824429275462
		3 34 0.1014291135443763 37 0.56208578140850496 38 0.3364851050471187
		3 34 0.095635986296861084 37 0.5036656589500289 38 0.40069835475311005
		3 34 0.025809609523560064 37 0.48709519523821998 38 0.48709519523821998
		3 34 0.019983527740185792 37 0.49000823612990718 38 0.49000823612990707
		3 34 0.024589613679134707 37 0.4877051931604327 38 0.48770519316043259
		3 34 0.085940042637663749 37 0.52560858005361522 38 0.38845137730872098
		3 34 0.31900525953347042 37 0.52566559792292522 38 0.15532914254360439
		3 34 0.47162816213789055 37 0.47162816213789055 38 0.056743675724218942
		3 34 0.41110335364933037 35 0.26243906759814323 37 0.3264575787525264
		3 34 0.47010775926307036 35 0.46024481754359237 37 0.069647423193337374
		3 34 0.34082657612886258 35 0.52015111958805149 36 0.13902230428308587
		3 34 0.11003893120123666 35 0.54562991639485015 36 0.34433115240391315;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.012728295233860504 0.99991782735513501 -0.0015261185493631081 -0
		 0.99280702824109124 0.012819459325065943 0.11903724685032832 -0 0.11904702925958592 1.0690233420707081e-16 -0.99288861652476801 -0
		 -0.90795101870048134 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513461 0.91862659735055918 -0.041563650809936667 -0
		 0.89526386431128191 0.39248175502475208 0.21085702556737568 -0 0.210011846539538 0.045642596473303453 -0.9766328776465748 -0
		 -0.37507697621182828 -2.8657604802815309 -0.94611761528610516 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402895 0.9445447650793507 0.045683164274527482 -0
		 0.94422144490049698 0.32697288226068943 -0.039173935928819348 0 -0.051938692002751134 0.030396069274366267 -0.99818758319551948 0
		 -1.5297596850582682 -2.7773530357943352 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790586 0.99329326174337518 0.045683164274527482 -0
		 0.99337604742855179 0.10802514123606741 -0.039173935928819348 0 -0.043846136866929383 0.041219716594552334 -0.99818758319551959 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810515 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885265 0.99890059027644973 0.045683164274527607 -0
		 0.99915653175010688 0.012313724251499982 -0.039173935928819466 0 -0.039693397610562217 0.045232542935574056 -0.99818758319551937 0
		 -3.4912318179848607 -1.9040448117726043 -0.56315261966810481 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871752 -0.9779020118066285 -0.091812310658712079 -0
		 0.96088145788389734 0.20231395106606309 -0.18914515351696121 -0 0.20354033747357872 -0.052694596578666153 0.9776474878567194 -0
		 -4.1608222065879765 0.98034715670107386 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.849256614102049 -0.40332677146099288 -0
		 0.89689896658620161 0.4222537097758039 -0.13143077385899588 -0 0.28192467949760502 -0.31696215544524442 0.90556803560289056 -0
		 -4.6827584700038933 -0.43291834424742021 1.8868280135693325 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143826 -0.47572266972118704 -0
		 0.74200082470018769 0.64087873460052991 -0.19674659763529495 -0 0.4473524375790161 -0.25474905055727082 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547873 -0.45027497011225115 -0.47572266972118704 -0
		 0.40753183853562547 0.89174468145243679 -0.19674659763529498 -0 0.51281322894014236 -0.045209229054513987 0.85730899787199377 -0
		 -3.7930210190858711 -3.6363074555288435 2.3527934785693625 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988877 -0.60770287165339087 -0
		 -0.15684837943322541 0.97734058610779651 -0.14214065082037369 0 0.58840109184103584 0.20806465329722415 0.78134067804548823 -0
		 -1.2358328313690483 -5.3627024397852345 2.4055843427903012 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304327 0.42405058758597708 -0.53977069894956764 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867554 0.18573444686090734 0.83774129179212098 -0
		 0.1968172812762447 -5.9805478664821443 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348465 0.49094017626205783 -0.60972944210779889 -0
		 -0.5253983994062138 0.83932464881653146 0.13960893879116207 0 0.58030058688812003 0.23347778742481168 0.78021750277503932 -0
		 0.47614274721700267 -5.961344900019987 0.95798160440020297 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516239 0.60280760005635936 -0.65335941194369052 -0
		 -0.66368542414675347 0.72082410497382132 0.19983560109207887 0 0.5914196324406692 0.34210467258279464 0.7301966936112233 -0
		 1.1441516084105745 -5.8141102579502952 0.85898842630906724 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387919 -0.10503749339307361 -0.91693018807666515 -0
		 0.17781968135064385 0.98332967287429862 -0.037985725862222486 -0 0.90563458731928081 -0.14842465909216213 0.39723559108470113 -0
		 -3.0698135514498937 -3.9119159816185101 3.2206463961358001 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042264 0.077623837547557792 -0.3834011912353672 -0
		 0.20793806673474038 0.92724908623729163 -0.31140149722621147 -0 0.33133622500252974 -0.36631089516488313 -0.86950137095037139 -0
		 1.3350913447026536 -3.8738355210740298 3.8541836841977992 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364847 -0.094924216888717688 0.38340119123536714 -0
		 -0.031825581119802333 0.94974535529880866 0.31140149722621158 0 -0.39369304385399273 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558672 -3.7939732910568535 -3.8541836841977997 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071677 -0.39002924497921759 0.452124470705772 -0
		 0.2418572836977026 0.90452625422546051 0.35119411973896503 -0 -0.54593443129409036 -0.17236427552656972 0.81990618563942996 -0
		 -4.4547110826954048 -2.2284950952224647 -4.392248129419202 1;
	setAttr ".pm[18]" -type "matrix" 0.8806009698142695 -0.14186400160433182 0.45212447070577194 -0
		 -0.029550252819743231 0.93583624252273023 0.35119411973896497 0 -0.47293626898394825 -0.32262227485054945 0.81990618563942974 -0
		 -4.8264647244913848 -3.7828002607320328 -4.3922481294192028 1;
	setAttr ".pm[19]" -type "matrix" 0.04444990963230469 -0.99486331132534522 -0.090946123130399792 -0
		 0.99875087560877895 0.046333564308836124 -0.018705327827550827 -0 0.022823102426645002 -0.090001069978133355 0.99568012604370837 -0
		 -5.1987338443485154 1.1631347543266388 0.9593990667563872 1;
	setAttr ".pm[20]" -type "matrix" 0.59746412934814974 -0.79672166835715486 -0.090946123130399792 -0
		 0.79887115989862156 0.60121126119950097 -0.018705327827550827 -0 0.06958077338236654 -0.061478472468806014 0.99568012604370837 -0
		 -6.0311161264281017 -2.7072772985180777 0.9593990667563872 1;
	setAttr ".pm[21]" -type "matrix" 0.86518594954605277 0.49313494643519812 -0.090946123130399764 -0
		 -0.49658384305064746 0.86778718447088932 -0.018705327827550817 0 0.069697629293580379 0.061345962152701043 0.99568012604370804 -0
		 1.7365891972474419 -7.8707547550432926 0.95939906675638709 1;
	setAttr ".pm[22]" -type "matrix" 0.99585451783966294 -0.0016068558999377096 -0.090946123130399764 -0
		 -9.4996095158742211e-05 0.99982503553702085 -0.018705327827550817 0 0.090960267557186225 0.018636424751305627 0.99568012604370815 -0
		 -3.6603758191881481 -6.9736763934885175 0.95939906675638698 1;
	setAttr ".pm[23]" -type "matrix" -0.32924786964475911 0.69647275897298944 0.63759041424957197 -0
		 0.89339606886512035 0.44836933267261597 -0.02843247535938619 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461437 0
		 -3.5395339554045822 -2.4005302806614881 -1.426859062061397 1;
	setAttr ".pm[24]" -type "matrix" -0.2788948936776629 0.7069333932652262 0.64997139611450527 -0
		 0.8885321965626376 0.44672740812313078 -0.10461911155789998 0 -0.36431878067442514 0.54834277629791328 -0.75272307373282876 0
		 -4.0483565879838146 -2.4178888731886139 -1.0785180430682908 1;
	setAttr ".pm[25]" -type "matrix" -0.23031898058193831 0.6528205623008978 0.72164983241239422 -0
		 0.83303853881336309 0.51558677386086182 -0.20054194441922923 0 -0.50299101387141465 0.55497350572517268 -0.66257410748362211 0
		 -4.4246285444210187 -2.6889499752129313 -0.5852217214780755 1;
	setAttr ".pm[26]" -type "matrix" -0.43594206856657181 0.59749643679491382 0.67301747441747795 -0
		 0.7008473455733657 0.69452627827057267 -0.16262302110831151 0 -0.5645949973712715 0.40078829425147744 -0.72152701414037557 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020237 1;
	setAttr ".pm[27]" -type "matrix" -0.80828667061645421 0.2506903381799318 0.53275417637687217 -0
		 0.21819681833351881 0.96794042383007672 -0.12442461325951773 0 -0.54686635165540887 0.015674509845052274 -0.83707317671050763 0
		 -1.278220982043448 -5.4701710369415641 -1.0637098843123747 1;
	setAttr ".pm[28]" -type "matrix" -0.82004746298995335 -0.20903383935798978 0.53275417637687217 -0
		 -0.32022389937182466 0.93913533097542601 -0.12442461325951776 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050752 0
		 1.4741587314170379 -5.4790257814298382 -1.0637098843123742 1;
	setAttr ".pm[29]" -type "matrix" -0.68115616977266769 -0.5822485630455535 0.44386133331482847 -0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048567 0 -0.16426653899654681 -0.4692574321309736 -0.86764852708682749 0
		 3.7155105341486685 -4.2535038943938588 -0.56138920422851701 1;
	setAttr ".pm[30]" -type "matrix" -0.50408143703462183 -0.80314784176126897 0.31757746946426541 0
		 -0.83807469275740265 0.36604707764536509 -0.40452484016049428 0 0.20864494769031905 -0.47006710289224019 -0.85761541764464611 -0
		 4.7675519887131355 -2.6983875271677138 0.40050570930127832 1;
	setAttr ".pm[31]" -type "matrix" -0.13887805416914528 -0.9736202144440087 0.18104298963559595 0
		 -0.84422276414869568 0.020829102434948937 -0.53558759599610806 0 0.51768794709103294 -0.22722197630897611 -0.82484505388522256 -0
		 5.131402912047518 -0.54383195128390038 1.1062768597705592 1;
	setAttr ".pm[32]" -type "matrix" -0.44544497944150713 0.31790426679360734 -0.8369681280937612 0
		 -0.53604559259280804 0.65406161496897952 0.53372139406810004 0 0.71710103399185066 0.68639659161347089 -0.12093728155217454 -0
		 3.5487087479939037 -1.8700671021165951 -2.7925192544727233 1;
	setAttr ".pm[33]" -type "matrix" -0.052113644842616026 -0.12229877356956341 -0.99112419908132532 0
		 -0.12985134008384805 0.98487688501104831 -0.11470026525411023 0 0.99016301561896736 0.12272135655343426 -0.067206183837786579 -0
		 1.5808752886267781 -4.2107979269501721 0.024886578657810372 1;
	setAttr ".pm[34]" -type "matrix" 0.51285923410589029 0.15316128048266991 0.84469937146491858 -0
		 -0.35222853801336468 0.93486282786315433 0.044345801251915153 0 -0.78288598339814941 -0.3202703783377655 0.53340080779662979 -0
		 1.1996854652596878 -4.1723182493855946 0.61489409327925182 1;
	setAttr ".pm[35]" -type "matrix" -0.73333549252294605 0.11850971777536495 0.66945836479868692 -0
		 0.055614854265168837 0.99184696103279268 -0.11465859703955258 0 -0.67758840263923692 -0.046851389337113004 -0.73394748035945334 0
		 -1.6184639253570574 -4.1509626321413302 0.61671609555364271 1;
	setAttr ".pm[36]" -type "matrix" 0.71787470010069721 0.19100108051108461 -0.66945836479868681 -0
		 -0.15418153999379064 0.98136713764526728 0.1146585970395526 0 0.67888435515960788 0.020907615682650958 0.73394748035945312 -0
		 2.987810459616135 -3.9063461047656256 -0.61671609555364337 1;
	setAttr ".pm[37]" -type "matrix" 0.86346497510865083 0.01229272663840846 -0.50425898666499791 -0
		 0.11820591342388179 0.96693328786482802 0.22598092585556948 -0 0.49036272165840966 -0.25473300863984616 0.83345995435716624 -0
		 -0.31526851927339061 -4.1175003486713431 -0.84111836428204012 1;
	setAttr ".pm[38]" -type "matrix" 0.85074581735119792 0.14817026903880434 -0.50425898666499791 -0
		 -0.035601726522438017 0.97348093880572806 0.22598092585556945 0 0.52437016632152489 -0.17429983693304779 0.83345995435716613 -0
		 -0.54266115293508965 -4.2561403836399734 -0.84111836428203923 1;
	setAttr ".pm[39]" -type "matrix" -0.51836859257157597 0.80319048658789161 -0.2935626755738362 -0
		 0.85499374135413664 0.49348852949922861 -0.15954552171071609 -0 0.016724367869042668 -0.33369763785108691 -0.94253179363456308 -0
		 -4.8180154521350591 -3.4553778402904016 -0.7848661515675518 1;
	setAttr ".pm[40]" -type "matrix" 0.13331225767208435 -0.9465985408103601 0.29356267557383614 -0
		 0.96950646724456246 0.18601730154215074 0.15954552171071607 0 -0.20563329478793038 0.26334153880972577 0.94253179363456319 -0
		 -6.3757106097054148 -0.94555417178716261 0.7848661515675518 1;
	setAttr ".pm[41]" -type "matrix" 0.95562517126066493 0.024525243382202185 0.2935626755738362 -0
		 -0.074275015140186543 0.98439242613298306 0.15954552171071609 0 -0.28506798167972303 -0.17427008868151553 0.94253179363456319 -0
		 0.085391099712523177 -7.5497824375075142 0.78486615156755213 1;
	setAttr ".pm[42]" -type "matrix" -0.16932532307067247 0.96527649990704545 -0.19892263243335806 -0
		 0.98556021377032699 0.16584045593116589 -0.034176135087669167 -0 1.3183898417423744e-16 -0.2018371172598033 -0.97941910237459295 -0
		 -5.7236422783817282 -1.9839300723893565 -0.95909989525908557 1;
	setAttr ".pm[43]" -type "matrix" 0.62316378607661982 -0.75637073054715476 0.19892263243335795 -0
		 0.7669143872697135 0.64083875849482563 0.034176135087669222 0 -0.15332716106865452 0.13125929903200931 0.97941910237459284 -0
		 -6.1360967711649694 -4.1170383759049205 0.95909989525908523 1;
	setAttr ".pm[44]" -type "matrix" 0.98000917862884818 -0.0034345464029732859 0.19892263243335798 -0
		 -0.0034345464029732738 0.99940992374574489 0.034176135087669222 0 -0.19892263243335823 -0.034176135087669333 0.97941910237459295 -0
		 -1.6944175488132156 -8.489243544670618 0.95909989525908523 1;
	setAttr ".gm" -type "matrix" 2.8669651198868564 -0.030024718752978741 2.017118758919028 0
		 -0.13842372580738663 0.058356023939296876 0.19761261705507749 0 -0.45890098020722242 -3.1390259838425818 0.60551949458215293 0
		 -0.31004498877871489 3.8263897323164651 -0.90938729904501114 1;
	setAttr -s 22 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 22 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 22 ".ifcl";
createNode skinCluster -n "skinCluster7";
	rename -uid "BD1C37A0-2641-F132-0BF3-E08C3A3FFA4D";
	setAttr -s 17 ".wl";
	setAttr ".wl[0:16].w"
		5 32 0.04011651874287589 33 0.22521984865539874 34 0.47491969674113405 
		35 0.21278932156161318 37 0.046954614298977973
		5 32 0.052879196192411652 33 0.2859735713435318 34 0.38889369902728133 
		35 0.13188006332010202 37 0.14037347011667325
		5 32 0.032022735890754606 33 0.1877562512403792 34 0.49704809456685728 
		35 0.045399403237445297 37 0.23777351506456357
		5 32 0.022577360201705761 33 0.15466744205621163 34 0.61154403654517508 
		35 0.19497413915332934 37 0.016237022043578242
		5 32 0.015029451147724129 33 0.10580629659152485 34 0.61979354100790351 
		35 0.015110027890064151 37 0.24426068336278342
		5 32 0.025312630833588711 33 0.24288177321239546 34 0.60899053945970882 
		35 0.1030860305464729 37 0.019729025947834058
		5 32 0.030355364101498441 33 0.34026687464787425 34 0.52685225238078737 
		35 0.043735259984487088 37 0.05879024888535285
		5 32 0.016400225221009607 33 0.15072965913535219 34 0.67887049942834266 
		35 0.015510324645678622 37 0.13848929156961706
		5 32 0.064656608206105623 33 0.20725306728465975 34 0.28025174908640671 
		35 0.23658244531430533 37 0.21125613010852243
		5 32 0.064817349051123671 33 0.20791237416755279 34 0.27731139433629931 
		35 0.23246913338620931 37 0.21748974905881499
		5 32 0.06472488677175324 33 0.20816469366403328 34 0.27828732194521127 
		35 0.22918777982209415 37 0.21963531779690809
		5 32 0.064605868036565789 33 0.20738126126219289 34 0.28178136720401542 
		35 0.2379541003211402 37 0.2082774031760857
		5 32 0.064544628498385548 33 0.20753012719434605 34 0.27943677220009167 
		35 0.22653354001564571 37 0.22195493209153089
		5 32 0.064415459812188894 33 0.20767322623874096 34 0.28098386931268365 
		35 0.22362478028782762 37 0.22330266434855883
		5 32 0.064906477521584391 33 0.20941482492048669 34 0.27836100125238067 
		35 0.23125353081006556 37 0.21606416549548266
		5 32 0.064718843776087609 33 0.20830620089629404 34 0.28100106299824767 
		35 0.23574397095975008 37 0.21022992136962065
		5 32 0.064602877145647886 33 0.20857758781871652 34 0.28021996060462545 
		35 0.22564487859516866 37 0.22095469583584149;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.012728295233860504 0.99991782735513501 -0.0015261185493631081 -0
		 0.99280702824109124 0.012819459325065943 0.11903724685032832 -0 0.11904702925958592 1.0690233420707081e-16 -0.99288861652476801 -0
		 -0.90795101870048134 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513461 0.91862659735055918 -0.041563650809936667 -0
		 0.89526386431128191 0.39248175502475208 0.21085702556737568 -0 0.210011846539538 0.045642596473303453 -0.9766328776465748 -0
		 -0.37507697621182828 -2.8657604802815309 -0.94611761528610516 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402895 0.9445447650793507 0.045683164274527482 -0
		 0.94422144490049698 0.32697288226068943 -0.039173935928819348 0 -0.051938692002751134 0.030396069274366267 -0.99818758319551948 0
		 -1.5297596850582682 -2.7773530357943352 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790586 0.99329326174337518 0.045683164274527482 -0
		 0.99337604742855179 0.10802514123606741 -0.039173935928819348 0 -0.043846136866929383 0.041219716594552334 -0.99818758319551959 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810515 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885265 0.99890059027644973 0.045683164274527607 -0
		 0.99915653175010688 0.012313724251499982 -0.039173935928819466 0 -0.039693397610562217 0.045232542935574056 -0.99818758319551937 0
		 -3.4912318179848607 -1.9040448117726043 -0.56315261966810481 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871752 -0.9779020118066285 -0.091812310658712079 -0
		 0.96088145788389734 0.20231395106606309 -0.18914515351696121 -0 0.20354033747357872 -0.052694596578666153 0.9776474878567194 -0
		 -4.1608222065879765 0.98034715670107386 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.849256614102049 -0.40332677146099288 -0
		 0.89689896658620161 0.4222537097758039 -0.13143077385899588 -0 0.28192467949760502 -0.31696215544524442 0.90556803560289056 -0
		 -4.6827584700038933 -0.43291834424742021 1.8868280135693325 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143826 -0.47572266972118704 -0
		 0.74200082470018769 0.64087873460052991 -0.19674659763529495 -0 0.4473524375790161 -0.25474905055727082 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547873 -0.45027497011225115 -0.47572266972118704 -0
		 0.40753183853562547 0.89174468145243679 -0.19674659763529498 -0 0.51281322894014236 -0.045209229054513987 0.85730899787199377 -0
		 -3.7930210190858711 -3.6363074555288435 2.3527934785693625 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988877 -0.60770287165339087 -0
		 -0.15684837943322541 0.97734058610779651 -0.14214065082037369 0 0.58840109184103584 0.20806465329722415 0.78134067804548823 -0
		 -1.2358328313690483 -5.3627024397852345 2.4055843427903012 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304327 0.42405058758597708 -0.53977069894956764 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867554 0.18573444686090734 0.83774129179212098 -0
		 0.1968172812762447 -5.9805478664821443 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348465 0.49094017626205783 -0.60972944210779889 -0
		 -0.5253983994062138 0.83932464881653146 0.13960893879116207 0 0.58030058688812003 0.23347778742481168 0.78021750277503932 -0
		 0.47614274721700267 -5.961344900019987 0.95798160440020297 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516239 0.60280760005635936 -0.65335941194369052 -0
		 -0.66368542414675347 0.72082410497382132 0.19983560109207887 0 0.5914196324406692 0.34210467258279464 0.7301966936112233 -0
		 1.1441516084105745 -5.8141102579502952 0.85898842630906724 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387919 -0.10503749339307361 -0.91693018807666515 -0
		 0.17781968135064385 0.98332967287429862 -0.037985725862222486 -0 0.90563458731928081 -0.14842465909216213 0.39723559108470113 -0
		 -3.0698135514498937 -3.9119159816185101 3.2206463961358001 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042264 0.077623837547557792 -0.3834011912353672 -0
		 0.20793806673474038 0.92724908623729163 -0.31140149722621147 -0 0.33133622500252974 -0.36631089516488313 -0.86950137095037139 -0
		 1.3350913447026536 -3.8738355210740298 3.8541836841977992 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364847 -0.094924216888717688 0.38340119123536714 -0
		 -0.031825581119802333 0.94974535529880866 0.31140149722621158 0 -0.39369304385399273 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558672 -3.7939732910568535 -3.8541836841977997 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071677 -0.39002924497921759 0.452124470705772 -0
		 0.2418572836977026 0.90452625422546051 0.35119411973896503 -0 -0.54593443129409036 -0.17236427552656972 0.81990618563942996 -0
		 -4.4547110826954048 -2.2284950952224647 -4.392248129419202 1;
	setAttr ".pm[18]" -type "matrix" 0.8806009698142695 -0.14186400160433182 0.45212447070577194 -0
		 -0.029550252819743231 0.93583624252273023 0.35119411973896497 0 -0.47293626898394825 -0.32262227485054945 0.81990618563942974 -0
		 -4.8264647244913848 -3.7828002607320328 -4.3922481294192028 1;
	setAttr ".pm[19]" -type "matrix" 0.04444990963230469 -0.99486331132534522 -0.090946123130399792 -0
		 0.99875087560877895 0.046333564308836124 -0.018705327827550827 -0 0.022823102426645002 -0.090001069978133355 0.99568012604370837 -0
		 -5.1987338443485154 1.1631347543266388 0.9593990667563872 1;
	setAttr ".pm[20]" -type "matrix" 0.59746412934814974 -0.79672166835715486 -0.090946123130399792 -0
		 0.79887115989862156 0.60121126119950097 -0.018705327827550827 -0 0.06958077338236654 -0.061478472468806014 0.99568012604370837 -0
		 -6.0311161264281017 -2.7072772985180777 0.9593990667563872 1;
	setAttr ".pm[21]" -type "matrix" 0.86518594954605277 0.49313494643519812 -0.090946123130399764 -0
		 -0.49658384305064746 0.86778718447088932 -0.018705327827550817 0 0.069697629293580379 0.061345962152701043 0.99568012604370804 -0
		 1.7365891972474419 -7.8707547550432926 0.95939906675638709 1;
	setAttr ".pm[22]" -type "matrix" 0.99585451783966294 -0.0016068558999377096 -0.090946123130399764 -0
		 -9.4996095158742211e-05 0.99982503553702085 -0.018705327827550817 0 0.090960267557186225 0.018636424751305627 0.99568012604370815 -0
		 -3.6603758191881481 -6.9736763934885175 0.95939906675638698 1;
	setAttr ".pm[23]" -type "matrix" -0.32924786964475911 0.69647275897298944 0.63759041424957197 -0
		 0.89339606886512035 0.44836933267261597 -0.02843247535938619 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461437 0
		 -3.5395339554045822 -2.4005302806614881 -1.426859062061397 1;
	setAttr ".pm[24]" -type "matrix" -0.2788948936776629 0.7069333932652262 0.64997139611450527 -0
		 0.8885321965626376 0.44672740812313078 -0.10461911155789998 0 -0.36431878067442514 0.54834277629791328 -0.75272307373282876 0
		 -4.0483565879838146 -2.4178888731886139 -1.0785180430682908 1;
	setAttr ".pm[25]" -type "matrix" -0.23031898058193831 0.6528205623008978 0.72164983241239422 -0
		 0.83303853881336309 0.51558677386086182 -0.20054194441922923 0 -0.50299101387141465 0.55497350572517268 -0.66257410748362211 0
		 -4.4246285444210187 -2.6889499752129313 -0.5852217214780755 1;
	setAttr ".pm[26]" -type "matrix" -0.43594206856657181 0.59749643679491382 0.67301747441747795 -0
		 0.7008473455733657 0.69452627827057267 -0.16262302110831151 0 -0.5645949973712715 0.40078829425147744 -0.72152701414037557 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020237 1;
	setAttr ".pm[27]" -type "matrix" -0.80828667061645421 0.2506903381799318 0.53275417637687217 -0
		 0.21819681833351881 0.96794042383007672 -0.12442461325951773 0 -0.54686635165540887 0.015674509845052274 -0.83707317671050763 0
		 -1.278220982043448 -5.4701710369415641 -1.0637098843123747 1;
	setAttr ".pm[28]" -type "matrix" -0.82004746298995335 -0.20903383935798978 0.53275417637687217 -0
		 -0.32022389937182466 0.93913533097542601 -0.12442461325951776 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050752 0
		 1.4741587314170379 -5.4790257814298382 -1.0637098843123742 1;
	setAttr ".pm[29]" -type "matrix" -0.68115616977266769 -0.5822485630455535 0.44386133331482847 -0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048567 0 -0.16426653899654681 -0.4692574321309736 -0.86764852708682749 0
		 3.7155105341486685 -4.2535038943938588 -0.56138920422851701 1;
	setAttr ".pm[30]" -type "matrix" -0.50408143703462183 -0.80314784176126897 0.31757746946426541 0
		 -0.83807469275740265 0.36604707764536509 -0.40452484016049428 0 0.20864494769031905 -0.47006710289224019 -0.85761541764464611 -0
		 4.7675519887131355 -2.6983875271677138 0.40050570930127832 1;
	setAttr ".pm[31]" -type "matrix" -0.13887805416914528 -0.9736202144440087 0.18104298963559595 0
		 -0.84422276414869568 0.020829102434948937 -0.53558759599610806 0 0.51768794709103294 -0.22722197630897611 -0.82484505388522256 -0
		 5.131402912047518 -0.54383195128390038 1.1062768597705592 1;
	setAttr ".pm[32]" -type "matrix" -0.44544497944150713 0.31790426679360734 -0.8369681280937612 0
		 -0.53604559259280804 0.65406161496897952 0.53372139406810004 0 0.71710103399185066 0.68639659161347089 -0.12093728155217454 -0
		 3.5487087479939037 -1.8700671021165951 -2.7925192544727233 1;
	setAttr ".pm[33]" -type "matrix" -0.052113644842616026 -0.12229877356956341 -0.99112419908132532 0
		 -0.12985134008384805 0.98487688501104831 -0.11470026525411023 0 0.99016301561896736 0.12272135655343426 -0.067206183837786579 -0
		 1.5808752886267781 -4.2107979269501721 0.024886578657810372 1;
	setAttr ".pm[34]" -type "matrix" 0.51285923410589029 0.15316128048266991 0.84469937146491858 -0
		 -0.35222853801336468 0.93486282786315433 0.044345801251915153 0 -0.78288598339814941 -0.3202703783377655 0.53340080779662979 -0
		 1.1996854652596878 -4.1723182493855946 0.61489409327925182 1;
	setAttr ".pm[35]" -type "matrix" -0.73333549252294605 0.11850971777536495 0.66945836479868692 -0
		 0.055614854265168837 0.99184696103279268 -0.11465859703955258 0 -0.67758840263923692 -0.046851389337113004 -0.73394748035945334 0
		 -1.6184639253570574 -4.1509626321413302 0.61671609555364271 1;
	setAttr ".pm[36]" -type "matrix" 0.71787470010069721 0.19100108051108461 -0.66945836479868681 -0
		 -0.15418153999379064 0.98136713764526728 0.1146585970395526 0 0.67888435515960788 0.020907615682650958 0.73394748035945312 -0
		 2.987810459616135 -3.9063461047656256 -0.61671609555364337 1;
	setAttr ".pm[37]" -type "matrix" 0.86346497510865083 0.01229272663840846 -0.50425898666499791 -0
		 0.11820591342388179 0.96693328786482802 0.22598092585556948 -0 0.49036272165840966 -0.25473300863984616 0.83345995435716624 -0
		 -0.31526851927339061 -4.1175003486713431 -0.84111836428204012 1;
	setAttr ".pm[38]" -type "matrix" 0.85074581735119792 0.14817026903880434 -0.50425898666499791 -0
		 -0.035601726522438017 0.97348093880572806 0.22598092585556945 0 0.52437016632152489 -0.17429983693304779 0.83345995435716613 -0
		 -0.54266115293508965 -4.2561403836399734 -0.84111836428203923 1;
	setAttr ".pm[39]" -type "matrix" -0.51836859257157597 0.80319048658789161 -0.2935626755738362 -0
		 0.85499374135413664 0.49348852949922861 -0.15954552171071609 -0 0.016724367869042668 -0.33369763785108691 -0.94253179363456308 -0
		 -4.8180154521350591 -3.4553778402904016 -0.7848661515675518 1;
	setAttr ".pm[40]" -type "matrix" 0.13331225767208435 -0.9465985408103601 0.29356267557383614 -0
		 0.96950646724456246 0.18601730154215074 0.15954552171071607 0 -0.20563329478793038 0.26334153880972577 0.94253179363456319 -0
		 -6.3757106097054148 -0.94555417178716261 0.7848661515675518 1;
	setAttr ".pm[41]" -type "matrix" 0.95562517126066493 0.024525243382202185 0.2935626755738362 -0
		 -0.074275015140186543 0.98439242613298306 0.15954552171071609 0 -0.28506798167972303 -0.17427008868151553 0.94253179363456319 -0
		 0.085391099712523177 -7.5497824375075142 0.78486615156755213 1;
	setAttr ".pm[42]" -type "matrix" -0.16932532307067247 0.96527649990704545 -0.19892263243335806 -0
		 0.98556021377032699 0.16584045593116589 -0.034176135087669167 -0 1.3183898417423744e-16 -0.2018371172598033 -0.97941910237459295 -0
		 -5.7236422783817282 -1.9839300723893565 -0.95909989525908557 1;
	setAttr ".pm[43]" -type "matrix" 0.62316378607661982 -0.75637073054715476 0.19892263243335795 -0
		 0.7669143872697135 0.64083875849482563 0.034176135087669222 0 -0.15332716106865452 0.13125929903200931 0.97941910237459284 -0
		 -6.1360967711649694 -4.1170383759049205 0.95909989525908523 1;
	setAttr ".pm[44]" -type "matrix" 0.98000917862884818 -0.0034345464029732859 0.19892263243335798 -0
		 -0.0034345464029732738 0.99940992374574489 0.034176135087669222 0 -0.19892263243335823 -0.034176135087669333 0.97941910237459295 -0
		 -1.6944175488132156 -8.489243544670618 0.95909989525908523 1;
	setAttr ".gm" -type "matrix" 1.7824803456928526 -0.092559673103370183 1.2566238137786081 0
		 -1.1539129236974299 0.75451694496466437 1.6923640357520739 0 -0.7003899841750324 -2.8316638291808713 0.78490753710821881 0
		 -1.1079649590681793 3.930443734028561 0.20307050244601177 1;
	setAttr -s 5 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster8";
	rename -uid "93FEFAD0-A64D-6C58-856C-48926DECB42E";
	setAttr -s 17 ".wl";
	setAttr ".wl[0:16].w"
		5 32 0.089630733984089592 33 0.23146397018400378 34 0.29904523639846142 
		35 0.23439897231548035 37 0.14546108711796474
		5 32 0.091884283149917312 33 0.2330914449878059 34 0.28654513096899159 
		35 0.17737911073204624 37 0.21110003016123902
		5 32 0.076217737749115583 33 0.20890360057785445 34 0.32536730740275727 
		35 0.11804049534162725 37 0.27147085892864548
		5 32 0.075085960928072987 33 0.22178259819945406 34 0.3385132051652941 
		35 0.26163973183976336 37 0.10297850386741546
		5 32 0.058084778013864927 33 0.18755898177008379 34 0.36797854158347626 
		35 0.081993513579036989 37 0.30438418505353809
		5 32 0.06505862162964543 33 0.24466352579645462 34 0.36094766614050605 
		35 0.22516154629019064 37 0.10416864014320341
		5 32 0.060116115883253239 33 0.2668698629866616 34 0.36502049155234656 
		35 0.13795790310409464 37 0.17003562647364398
		5 32 0.051706266952601089 33 0.20706301886793299 34 0.39510241703127291 
		35 0.081438131576000813 37 0.2646901655721921
		5 32 0.075571036822553547 33 0.19641114592964914 34 0.25965021151575735 
		35 0.23475003783739876 37 0.23361756789464108
		5 32 0.075297309649969085 33 0.19562943397770177 34 0.26200145747956577 
		35 0.22954325895936012 37 0.23752853993340314
		5 32 0.074785716381958217 33 0.19596597898600057 34 0.26183119337417238 
		35 0.23126554696545953 37 0.23615156429240947
		5 32 0.075372539913315731 33 0.19681245042692694 34 0.25880915956514505 
		35 0.23738103500937507 37 0.23162481508523705
		5 32 0.074698799789586115 33 0.19487561342279242 34 0.26452399055668302 
		35 0.22477307009704509 37 0.24112852613389341
		5 32 0.074142565697934343 33 0.19463965924030821 34 0.26575474519696124 
		35 0.22312749161172912 37 0.24233553825306706
		5 32 0.074260482438560732 33 0.1959666592348277 34 0.26253139176104989 
		35 0.23086032227813977 37 0.23638114428742191
		5 32 0.074835101319186456 33 0.19664921769300625 34 0.25998709750740767 
		35 0.23578491849140809 37 0.23274366498899154
		5 32 0.073967922356109342 33 0.19511215008783594 34 0.26493563245638163 
		35 0.22560370150095674 37 0.24038059359871633;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.012728295233860504 0.99991782735513501 -0.0015261185493631081 -0
		 0.99280702824109124 0.012819459325065943 0.11903724685032832 -0 0.11904702925958592 1.0690233420707081e-16 -0.99288861652476801 -0
		 -0.90795101870048134 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513461 0.91862659735055918 -0.041563650809936667 -0
		 0.89526386431128191 0.39248175502475208 0.21085702556737568 -0 0.210011846539538 0.045642596473303453 -0.9766328776465748 -0
		 -0.37507697621182828 -2.8657604802815309 -0.94611761528610516 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402895 0.9445447650793507 0.045683164274527482 -0
		 0.94422144490049698 0.32697288226068943 -0.039173935928819348 0 -0.051938692002751134 0.030396069274366267 -0.99818758319551948 0
		 -1.5297596850582682 -2.7773530357943352 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790586 0.99329326174337518 0.045683164274527482 -0
		 0.99337604742855179 0.10802514123606741 -0.039173935928819348 0 -0.043846136866929383 0.041219716594552334 -0.99818758319551959 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810515 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885265 0.99890059027644973 0.045683164274527607 -0
		 0.99915653175010688 0.012313724251499982 -0.039173935928819466 0 -0.039693397610562217 0.045232542935574056 -0.99818758319551937 0
		 -3.4912318179848607 -1.9040448117726043 -0.56315261966810481 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871752 -0.9779020118066285 -0.091812310658712079 -0
		 0.96088145788389734 0.20231395106606309 -0.18914515351696121 -0 0.20354033747357872 -0.052694596578666153 0.9776474878567194 -0
		 -4.1608222065879765 0.98034715670107386 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.849256614102049 -0.40332677146099288 -0
		 0.89689896658620161 0.4222537097758039 -0.13143077385899588 -0 0.28192467949760502 -0.31696215544524442 0.90556803560289056 -0
		 -4.6827584700038933 -0.43291834424742021 1.8868280135693325 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143826 -0.47572266972118704 -0
		 0.74200082470018769 0.64087873460052991 -0.19674659763529495 -0 0.4473524375790161 -0.25474905055727082 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547873 -0.45027497011225115 -0.47572266972118704 -0
		 0.40753183853562547 0.89174468145243679 -0.19674659763529498 -0 0.51281322894014236 -0.045209229054513987 0.85730899787199377 -0
		 -3.7930210190858711 -3.6363074555288435 2.3527934785693625 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988877 -0.60770287165339087 -0
		 -0.15684837943322541 0.97734058610779651 -0.14214065082037369 0 0.58840109184103584 0.20806465329722415 0.78134067804548823 -0
		 -1.2358328313690483 -5.3627024397852345 2.4055843427903012 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304327 0.42405058758597708 -0.53977069894956764 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867554 0.18573444686090734 0.83774129179212098 -0
		 0.1968172812762447 -5.9805478664821443 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348465 0.49094017626205783 -0.60972944210779889 -0
		 -0.5253983994062138 0.83932464881653146 0.13960893879116207 0 0.58030058688812003 0.23347778742481168 0.78021750277503932 -0
		 0.47614274721700267 -5.961344900019987 0.95798160440020297 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516239 0.60280760005635936 -0.65335941194369052 -0
		 -0.66368542414675347 0.72082410497382132 0.19983560109207887 0 0.5914196324406692 0.34210467258279464 0.7301966936112233 -0
		 1.1441516084105745 -5.8141102579502952 0.85898842630906724 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387919 -0.10503749339307361 -0.91693018807666515 -0
		 0.17781968135064385 0.98332967287429862 -0.037985725862222486 -0 0.90563458731928081 -0.14842465909216213 0.39723559108470113 -0
		 -3.0698135514498937 -3.9119159816185101 3.2206463961358001 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042264 0.077623837547557792 -0.3834011912353672 -0
		 0.20793806673474038 0.92724908623729163 -0.31140149722621147 -0 0.33133622500252974 -0.36631089516488313 -0.86950137095037139 -0
		 1.3350913447026536 -3.8738355210740298 3.8541836841977992 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364847 -0.094924216888717688 0.38340119123536714 -0
		 -0.031825581119802333 0.94974535529880866 0.31140149722621158 0 -0.39369304385399273 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558672 -3.7939732910568535 -3.8541836841977997 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071677 -0.39002924497921759 0.452124470705772 -0
		 0.2418572836977026 0.90452625422546051 0.35119411973896503 -0 -0.54593443129409036 -0.17236427552656972 0.81990618563942996 -0
		 -4.4547110826954048 -2.2284950952224647 -4.392248129419202 1;
	setAttr ".pm[18]" -type "matrix" 0.8806009698142695 -0.14186400160433182 0.45212447070577194 -0
		 -0.029550252819743231 0.93583624252273023 0.35119411973896497 0 -0.47293626898394825 -0.32262227485054945 0.81990618563942974 -0
		 -4.8264647244913848 -3.7828002607320328 -4.3922481294192028 1;
	setAttr ".pm[19]" -type "matrix" 0.04444990963230469 -0.99486331132534522 -0.090946123130399792 -0
		 0.99875087560877895 0.046333564308836124 -0.018705327827550827 -0 0.022823102426645002 -0.090001069978133355 0.99568012604370837 -0
		 -5.1987338443485154 1.1631347543266388 0.9593990667563872 1;
	setAttr ".pm[20]" -type "matrix" 0.59746412934814974 -0.79672166835715486 -0.090946123130399792 -0
		 0.79887115989862156 0.60121126119950097 -0.018705327827550827 -0 0.06958077338236654 -0.061478472468806014 0.99568012604370837 -0
		 -6.0311161264281017 -2.7072772985180777 0.9593990667563872 1;
	setAttr ".pm[21]" -type "matrix" 0.86518594954605277 0.49313494643519812 -0.090946123130399764 -0
		 -0.49658384305064746 0.86778718447088932 -0.018705327827550817 0 0.069697629293580379 0.061345962152701043 0.99568012604370804 -0
		 1.7365891972474419 -7.8707547550432926 0.95939906675638709 1;
	setAttr ".pm[22]" -type "matrix" 0.99585451783966294 -0.0016068558999377096 -0.090946123130399764 -0
		 -9.4996095158742211e-05 0.99982503553702085 -0.018705327827550817 0 0.090960267557186225 0.018636424751305627 0.99568012604370815 -0
		 -3.6603758191881481 -6.9736763934885175 0.95939906675638698 1;
	setAttr ".pm[23]" -type "matrix" -0.32924786964475911 0.69647275897298944 0.63759041424957197 -0
		 0.89339606886512035 0.44836933267261597 -0.02843247535938619 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461437 0
		 -3.5395339554045822 -2.4005302806614881 -1.426859062061397 1;
	setAttr ".pm[24]" -type "matrix" -0.2788948936776629 0.7069333932652262 0.64997139611450527 -0
		 0.8885321965626376 0.44672740812313078 -0.10461911155789998 0 -0.36431878067442514 0.54834277629791328 -0.75272307373282876 0
		 -4.0483565879838146 -2.4178888731886139 -1.0785180430682908 1;
	setAttr ".pm[25]" -type "matrix" -0.23031898058193831 0.6528205623008978 0.72164983241239422 -0
		 0.83303853881336309 0.51558677386086182 -0.20054194441922923 0 -0.50299101387141465 0.55497350572517268 -0.66257410748362211 0
		 -4.4246285444210187 -2.6889499752129313 -0.5852217214780755 1;
	setAttr ".pm[26]" -type "matrix" -0.43594206856657181 0.59749643679491382 0.67301747441747795 -0
		 0.7008473455733657 0.69452627827057267 -0.16262302110831151 0 -0.5645949973712715 0.40078829425147744 -0.72152701414037557 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020237 1;
	setAttr ".pm[27]" -type "matrix" -0.80828667061645421 0.2506903381799318 0.53275417637687217 -0
		 0.21819681833351881 0.96794042383007672 -0.12442461325951773 0 -0.54686635165540887 0.015674509845052274 -0.83707317671050763 0
		 -1.278220982043448 -5.4701710369415641 -1.0637098843123747 1;
	setAttr ".pm[28]" -type "matrix" -0.82004746298995335 -0.20903383935798978 0.53275417637687217 -0
		 -0.32022389937182466 0.93913533097542601 -0.12442461325951776 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050752 0
		 1.4741587314170379 -5.4790257814298382 -1.0637098843123742 1;
	setAttr ".pm[29]" -type "matrix" -0.68115616977266769 -0.5822485630455535 0.44386133331482847 -0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048567 0 -0.16426653899654681 -0.4692574321309736 -0.86764852708682749 0
		 3.7155105341486685 -4.2535038943938588 -0.56138920422851701 1;
	setAttr ".pm[30]" -type "matrix" -0.50408143703462183 -0.80314784176126897 0.31757746946426541 0
		 -0.83807469275740265 0.36604707764536509 -0.40452484016049428 0 0.20864494769031905 -0.47006710289224019 -0.85761541764464611 -0
		 4.7675519887131355 -2.6983875271677138 0.40050570930127832 1;
	setAttr ".pm[31]" -type "matrix" -0.13887805416914528 -0.9736202144440087 0.18104298963559595 0
		 -0.84422276414869568 0.020829102434948937 -0.53558759599610806 0 0.51768794709103294 -0.22722197630897611 -0.82484505388522256 -0
		 5.131402912047518 -0.54383195128390038 1.1062768597705592 1;
	setAttr ".pm[32]" -type "matrix" -0.44544497944150713 0.31790426679360734 -0.8369681280937612 0
		 -0.53604559259280804 0.65406161496897952 0.53372139406810004 0 0.71710103399185066 0.68639659161347089 -0.12093728155217454 -0
		 3.5487087479939037 -1.8700671021165951 -2.7925192544727233 1;
	setAttr ".pm[33]" -type "matrix" -0.052113644842616026 -0.12229877356956341 -0.99112419908132532 0
		 -0.12985134008384805 0.98487688501104831 -0.11470026525411023 0 0.99016301561896736 0.12272135655343426 -0.067206183837786579 -0
		 1.5808752886267781 -4.2107979269501721 0.024886578657810372 1;
	setAttr ".pm[34]" -type "matrix" 0.51285923410589029 0.15316128048266991 0.84469937146491858 -0
		 -0.35222853801336468 0.93486282786315433 0.044345801251915153 0 -0.78288598339814941 -0.3202703783377655 0.53340080779662979 -0
		 1.1996854652596878 -4.1723182493855946 0.61489409327925182 1;
	setAttr ".pm[35]" -type "matrix" -0.73333549252294605 0.11850971777536495 0.66945836479868692 -0
		 0.055614854265168837 0.99184696103279268 -0.11465859703955258 0 -0.67758840263923692 -0.046851389337113004 -0.73394748035945334 0
		 -1.6184639253570574 -4.1509626321413302 0.61671609555364271 1;
	setAttr ".pm[36]" -type "matrix" 0.71787470010069721 0.19100108051108461 -0.66945836479868681 -0
		 -0.15418153999379064 0.98136713764526728 0.1146585970395526 0 0.67888435515960788 0.020907615682650958 0.73394748035945312 -0
		 2.987810459616135 -3.9063461047656256 -0.61671609555364337 1;
	setAttr ".pm[37]" -type "matrix" 0.86346497510865083 0.01229272663840846 -0.50425898666499791 -0
		 0.11820591342388179 0.96693328786482802 0.22598092585556948 -0 0.49036272165840966 -0.25473300863984616 0.83345995435716624 -0
		 -0.31526851927339061 -4.1175003486713431 -0.84111836428204012 1;
	setAttr ".pm[38]" -type "matrix" 0.85074581735119792 0.14817026903880434 -0.50425898666499791 -0
		 -0.035601726522438017 0.97348093880572806 0.22598092585556945 0 0.52437016632152489 -0.17429983693304779 0.83345995435716613 -0
		 -0.54266115293508965 -4.2561403836399734 -0.84111836428203923 1;
	setAttr ".pm[39]" -type "matrix" -0.51836859257157597 0.80319048658789161 -0.2935626755738362 -0
		 0.85499374135413664 0.49348852949922861 -0.15954552171071609 -0 0.016724367869042668 -0.33369763785108691 -0.94253179363456308 -0
		 -4.8180154521350591 -3.4553778402904016 -0.7848661515675518 1;
	setAttr ".pm[40]" -type "matrix" 0.13331225767208435 -0.9465985408103601 0.29356267557383614 -0
		 0.96950646724456246 0.18601730154215074 0.15954552171071607 0 -0.20563329478793038 0.26334153880972577 0.94253179363456319 -0
		 -6.3757106097054148 -0.94555417178716261 0.7848661515675518 1;
	setAttr ".pm[41]" -type "matrix" 0.95562517126066493 0.024525243382202185 0.2935626755738362 -0
		 -0.074275015140186543 0.98439242613298306 0.15954552171071609 0 -0.28506798167972303 -0.17427008868151553 0.94253179363456319 -0
		 0.085391099712523177 -7.5497824375075142 0.78486615156755213 1;
	setAttr ".pm[42]" -type "matrix" -0.16932532307067247 0.96527649990704545 -0.19892263243335806 -0
		 0.98556021377032699 0.16584045593116589 -0.034176135087669167 -0 1.3183898417423744e-16 -0.2018371172598033 -0.97941910237459295 -0
		 -5.7236422783817282 -1.9839300723893565 -0.95909989525908557 1;
	setAttr ".pm[43]" -type "matrix" 0.62316378607661982 -0.75637073054715476 0.19892263243335795 -0
		 0.7669143872697135 0.64083875849482563 0.034176135087669222 0 -0.15332716106865452 0.13125929903200931 0.97941910237459284 -0
		 -6.1360967711649694 -4.1170383759049205 0.95909989525908523 1;
	setAttr ".pm[44]" -type "matrix" 0.98000917862884818 -0.0034345464029732859 0.19892263243335798 -0
		 -0.0034345464029732738 0.99940992374574489 0.034176135087669222 0 -0.19892263243335823 -0.034176135087669333 0.97941910237459295 -0
		 -1.6944175488132156 -8.489243544670618 0.95909989525908523 1;
	setAttr ".gm" -type "matrix" 1.6961245312935751 -0.088075435186982104 1.1957441675628193 0
		 -1.0980093113448295 0.71796286714948865 1.6103740856690001 0 -0.66645819489798308 -2.694478228977891 0.74688112646144988 0
		 -1.1038425517101573 3.8969272699192836 0.22082415272348443 1;
	setAttr -s 5 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster9";
	rename -uid "3D26352B-B544-6C50-52A6-FFB61577C9B4";
	setAttr -s 17 ".wl";
	setAttr ".wl[0:16].w"
		5 32 0.12491422810515994 33 0.22141194530257996 34 0.24788266068831272 
		35 0.21696161605683487 37 0.1888295498471125
		5 32 0.12418938524803952 33 0.21877277704186837 34 0.25004663323628429 
		35 0.18852467390380717 37 0.21846653057000065
		5 32 0.11496687366362189 33 0.21124757731942054 34 0.26720535256413996 
		35 0.15946395978025213 37 0.24711623667256549
		5 32 0.11729506941744167 33 0.2206599142162112 34 0.26112890674330663 
		35 0.2311087923957193 37 0.16980731722732106
		5 32 0.10384711718085374 33 0.20636167405122119 34 0.28330503233979787 
		35 0.14218018085851375 37 0.26430599556961354
		5 32 0.109454128764793 33 0.22659373494645199 34 0.26441757651007025 
		35 0.22112262292957396 37 0.17841193684911077
		5 32 0.10262601205095813 33 0.2269462427934551 34 0.27181068307124928 
		35 0.18260368011513917 37 0.21601338196919839
		5 32 0.098606850351977249 33 0.21283349910677701 34 0.2865444719851068 
		35 0.14776482016891135 37 0.25425035838722765
		5 32 0.10414025357238622 33 0.20113338112036111 34 0.24420378348440755 
		35 0.21971552663800384 37 0.23080705518484118
		5 32 0.10402085953692894 33 0.2006925418468761 34 0.24542335604071328 
		35 0.21694557637049519 37 0.23291766620498658
		5 32 0.10330400312192219 33 0.20070521026602425 34 0.24572611920987858 
		35 0.21741358713673273 37 0.23285108026544218
		5 32 0.10375144654379005 33 0.20127684896886894 34 0.24399090020826369 
		35 0.22089988447139858 37 0.23008091980767878
		5 32 0.10345624895023174 33 0.20018755811649805 34 0.24696150024666916 
		35 0.21419037010119338 37 0.23520432258540763
		5 32 0.10277976252105664 33 0.19992279874082003 34 0.2479278004002855 
		35 0.2130105547074358 37 0.23635908363040203
		5 32 0.10252416828587488 33 0.20055640815547338 34 0.24647349852431688 
		35 0.21691819631605977 37 0.23352772871827515
		5 32 0.10308490750461814 33 0.2010485357605872 34 0.24492010000820041 
		35 0.21975070862050053 37 0.23119574810609367
		5 32 0.10239485930751108 33 0.20007915271779037 34 0.24773001035468079 
		35 0.21411793056099027 37 0.23567804705902748;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.012728295233860504 0.99991782735513501 -0.0015261185493631081 -0
		 0.99280702824109124 0.012819459325065943 0.11903724685032832 -0 0.11904702925958592 1.0690233420707081e-16 -0.99288861652476801 -0
		 -0.90795101870048134 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513461 0.91862659735055918 -0.041563650809936667 -0
		 0.89526386431128191 0.39248175502475208 0.21085702556737568 -0 0.210011846539538 0.045642596473303453 -0.9766328776465748 -0
		 -0.37507697621182828 -2.8657604802815309 -0.94611761528610516 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402895 0.9445447650793507 0.045683164274527482 -0
		 0.94422144490049698 0.32697288226068943 -0.039173935928819348 0 -0.051938692002751134 0.030396069274366267 -0.99818758319551948 0
		 -1.5297596850582682 -2.7773530357943352 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790586 0.99329326174337518 0.045683164274527482 -0
		 0.99337604742855179 0.10802514123606741 -0.039173935928819348 0 -0.043846136866929383 0.041219716594552334 -0.99818758319551959 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810515 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885265 0.99890059027644973 0.045683164274527607 -0
		 0.99915653175010688 0.012313724251499982 -0.039173935928819466 0 -0.039693397610562217 0.045232542935574056 -0.99818758319551937 0
		 -3.4912318179848607 -1.9040448117726043 -0.56315261966810481 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871752 -0.9779020118066285 -0.091812310658712079 -0
		 0.96088145788389734 0.20231395106606309 -0.18914515351696121 -0 0.20354033747357872 -0.052694596578666153 0.9776474878567194 -0
		 -4.1608222065879765 0.98034715670107386 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.849256614102049 -0.40332677146099288 -0
		 0.89689896658620161 0.4222537097758039 -0.13143077385899588 -0 0.28192467949760502 -0.31696215544524442 0.90556803560289056 -0
		 -4.6827584700038933 -0.43291834424742021 1.8868280135693325 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143826 -0.47572266972118704 -0
		 0.74200082470018769 0.64087873460052991 -0.19674659763529495 -0 0.4473524375790161 -0.25474905055727082 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547873 -0.45027497011225115 -0.47572266972118704 -0
		 0.40753183853562547 0.89174468145243679 -0.19674659763529498 -0 0.51281322894014236 -0.045209229054513987 0.85730899787199377 -0
		 -3.7930210190858711 -3.6363074555288435 2.3527934785693625 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988877 -0.60770287165339087 -0
		 -0.15684837943322541 0.97734058610779651 -0.14214065082037369 0 0.58840109184103584 0.20806465329722415 0.78134067804548823 -0
		 -1.2358328313690483 -5.3627024397852345 2.4055843427903012 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304327 0.42405058758597708 -0.53977069894956764 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867554 0.18573444686090734 0.83774129179212098 -0
		 0.1968172812762447 -5.9805478664821443 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348465 0.49094017626205783 -0.60972944210779889 -0
		 -0.5253983994062138 0.83932464881653146 0.13960893879116207 0 0.58030058688812003 0.23347778742481168 0.78021750277503932 -0
		 0.47614274721700267 -5.961344900019987 0.95798160440020297 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516239 0.60280760005635936 -0.65335941194369052 -0
		 -0.66368542414675347 0.72082410497382132 0.19983560109207887 0 0.5914196324406692 0.34210467258279464 0.7301966936112233 -0
		 1.1441516084105745 -5.8141102579502952 0.85898842630906724 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387919 -0.10503749339307361 -0.91693018807666515 -0
		 0.17781968135064385 0.98332967287429862 -0.037985725862222486 -0 0.90563458731928081 -0.14842465909216213 0.39723559108470113 -0
		 -3.0698135514498937 -3.9119159816185101 3.2206463961358001 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042264 0.077623837547557792 -0.3834011912353672 -0
		 0.20793806673474038 0.92724908623729163 -0.31140149722621147 -0 0.33133622500252974 -0.36631089516488313 -0.86950137095037139 -0
		 1.3350913447026536 -3.8738355210740298 3.8541836841977992 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364847 -0.094924216888717688 0.38340119123536714 -0
		 -0.031825581119802333 0.94974535529880866 0.31140149722621158 0 -0.39369304385399273 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558672 -3.7939732910568535 -3.8541836841977997 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071677 -0.39002924497921759 0.452124470705772 -0
		 0.2418572836977026 0.90452625422546051 0.35119411973896503 -0 -0.54593443129409036 -0.17236427552656972 0.81990618563942996 -0
		 -4.4547110826954048 -2.2284950952224647 -4.392248129419202 1;
	setAttr ".pm[18]" -type "matrix" 0.8806009698142695 -0.14186400160433182 0.45212447070577194 -0
		 -0.029550252819743231 0.93583624252273023 0.35119411973896497 0 -0.47293626898394825 -0.32262227485054945 0.81990618563942974 -0
		 -4.8264647244913848 -3.7828002607320328 -4.3922481294192028 1;
	setAttr ".pm[19]" -type "matrix" 0.04444990963230469 -0.99486331132534522 -0.090946123130399792 -0
		 0.99875087560877895 0.046333564308836124 -0.018705327827550827 -0 0.022823102426645002 -0.090001069978133355 0.99568012604370837 -0
		 -5.1987338443485154 1.1631347543266388 0.9593990667563872 1;
	setAttr ".pm[20]" -type "matrix" 0.59746412934814974 -0.79672166835715486 -0.090946123130399792 -0
		 0.79887115989862156 0.60121126119950097 -0.018705327827550827 -0 0.06958077338236654 -0.061478472468806014 0.99568012604370837 -0
		 -6.0311161264281017 -2.7072772985180777 0.9593990667563872 1;
	setAttr ".pm[21]" -type "matrix" 0.86518594954605277 0.49313494643519812 -0.090946123130399764 -0
		 -0.49658384305064746 0.86778718447088932 -0.018705327827550817 0 0.069697629293580379 0.061345962152701043 0.99568012604370804 -0
		 1.7365891972474419 -7.8707547550432926 0.95939906675638709 1;
	setAttr ".pm[22]" -type "matrix" 0.99585451783966294 -0.0016068558999377096 -0.090946123130399764 -0
		 -9.4996095158742211e-05 0.99982503553702085 -0.018705327827550817 0 0.090960267557186225 0.018636424751305627 0.99568012604370815 -0
		 -3.6603758191881481 -6.9736763934885175 0.95939906675638698 1;
	setAttr ".pm[23]" -type "matrix" -0.32924786964475911 0.69647275897298944 0.63759041424957197 -0
		 0.89339606886512035 0.44836933267261597 -0.02843247535938619 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461437 0
		 -3.5395339554045822 -2.4005302806614881 -1.426859062061397 1;
	setAttr ".pm[24]" -type "matrix" -0.2788948936776629 0.7069333932652262 0.64997139611450527 -0
		 0.8885321965626376 0.44672740812313078 -0.10461911155789998 0 -0.36431878067442514 0.54834277629791328 -0.75272307373282876 0
		 -4.0483565879838146 -2.4178888731886139 -1.0785180430682908 1;
	setAttr ".pm[25]" -type "matrix" -0.23031898058193831 0.6528205623008978 0.72164983241239422 -0
		 0.83303853881336309 0.51558677386086182 -0.20054194441922923 0 -0.50299101387141465 0.55497350572517268 -0.66257410748362211 0
		 -4.4246285444210187 -2.6889499752129313 -0.5852217214780755 1;
	setAttr ".pm[26]" -type "matrix" -0.43594206856657181 0.59749643679491382 0.67301747441747795 -0
		 0.7008473455733657 0.69452627827057267 -0.16262302110831151 0 -0.5645949973712715 0.40078829425147744 -0.72152701414037557 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020237 1;
	setAttr ".pm[27]" -type "matrix" -0.80828667061645421 0.2506903381799318 0.53275417637687217 -0
		 0.21819681833351881 0.96794042383007672 -0.12442461325951773 0 -0.54686635165540887 0.015674509845052274 -0.83707317671050763 0
		 -1.278220982043448 -5.4701710369415641 -1.0637098843123747 1;
	setAttr ".pm[28]" -type "matrix" -0.82004746298995335 -0.20903383935798978 0.53275417637687217 -0
		 -0.32022389937182466 0.93913533097542601 -0.12442461325951776 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050752 0
		 1.4741587314170379 -5.4790257814298382 -1.0637098843123742 1;
	setAttr ".pm[29]" -type "matrix" -0.68115616977266769 -0.5822485630455535 0.44386133331482847 -0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048567 0 -0.16426653899654681 -0.4692574321309736 -0.86764852708682749 0
		 3.7155105341486685 -4.2535038943938588 -0.56138920422851701 1;
	setAttr ".pm[30]" -type "matrix" -0.50408143703462183 -0.80314784176126897 0.31757746946426541 0
		 -0.83807469275740265 0.36604707764536509 -0.40452484016049428 0 0.20864494769031905 -0.47006710289224019 -0.85761541764464611 -0
		 4.7675519887131355 -2.6983875271677138 0.40050570930127832 1;
	setAttr ".pm[31]" -type "matrix" -0.13887805416914528 -0.9736202144440087 0.18104298963559595 0
		 -0.84422276414869568 0.020829102434948937 -0.53558759599610806 0 0.51768794709103294 -0.22722197630897611 -0.82484505388522256 -0
		 5.131402912047518 -0.54383195128390038 1.1062768597705592 1;
	setAttr ".pm[32]" -type "matrix" -0.44544497944150713 0.31790426679360734 -0.8369681280937612 0
		 -0.53604559259280804 0.65406161496897952 0.53372139406810004 0 0.71710103399185066 0.68639659161347089 -0.12093728155217454 -0
		 3.5487087479939037 -1.8700671021165951 -2.7925192544727233 1;
	setAttr ".pm[33]" -type "matrix" -0.052113644842616026 -0.12229877356956341 -0.99112419908132532 0
		 -0.12985134008384805 0.98487688501104831 -0.11470026525411023 0 0.99016301561896736 0.12272135655343426 -0.067206183837786579 -0
		 1.5808752886267781 -4.2107979269501721 0.024886578657810372 1;
	setAttr ".pm[34]" -type "matrix" 0.51285923410589029 0.15316128048266991 0.84469937146491858 -0
		 -0.35222853801336468 0.93486282786315433 0.044345801251915153 0 -0.78288598339814941 -0.3202703783377655 0.53340080779662979 -0
		 1.1996854652596878 -4.1723182493855946 0.61489409327925182 1;
	setAttr ".pm[35]" -type "matrix" -0.73333549252294605 0.11850971777536495 0.66945836479868692 -0
		 0.055614854265168837 0.99184696103279268 -0.11465859703955258 0 -0.67758840263923692 -0.046851389337113004 -0.73394748035945334 0
		 -1.6184639253570574 -4.1509626321413302 0.61671609555364271 1;
	setAttr ".pm[36]" -type "matrix" 0.71787470010069721 0.19100108051108461 -0.66945836479868681 -0
		 -0.15418153999379064 0.98136713764526728 0.1146585970395526 0 0.67888435515960788 0.020907615682650958 0.73394748035945312 -0
		 2.987810459616135 -3.9063461047656256 -0.61671609555364337 1;
	setAttr ".pm[37]" -type "matrix" 0.86346497510865083 0.01229272663840846 -0.50425898666499791 -0
		 0.11820591342388179 0.96693328786482802 0.22598092585556948 -0 0.49036272165840966 -0.25473300863984616 0.83345995435716624 -0
		 -0.31526851927339061 -4.1175003486713431 -0.84111836428204012 1;
	setAttr ".pm[38]" -type "matrix" 0.85074581735119792 0.14817026903880434 -0.50425898666499791 -0
		 -0.035601726522438017 0.97348093880572806 0.22598092585556945 0 0.52437016632152489 -0.17429983693304779 0.83345995435716613 -0
		 -0.54266115293508965 -4.2561403836399734 -0.84111836428203923 1;
	setAttr ".pm[39]" -type "matrix" -0.51836859257157597 0.80319048658789161 -0.2935626755738362 -0
		 0.85499374135413664 0.49348852949922861 -0.15954552171071609 -0 0.016724367869042668 -0.33369763785108691 -0.94253179363456308 -0
		 -4.8180154521350591 -3.4553778402904016 -0.7848661515675518 1;
	setAttr ".pm[40]" -type "matrix" 0.13331225767208435 -0.9465985408103601 0.29356267557383614 -0
		 0.96950646724456246 0.18601730154215074 0.15954552171071607 0 -0.20563329478793038 0.26334153880972577 0.94253179363456319 -0
		 -6.3757106097054148 -0.94555417178716261 0.7848661515675518 1;
	setAttr ".pm[41]" -type "matrix" 0.95562517126066493 0.024525243382202185 0.2935626755738362 -0
		 -0.074275015140186543 0.98439242613298306 0.15954552171071609 0 -0.28506798167972303 -0.17427008868151553 0.94253179363456319 -0
		 0.085391099712523177 -7.5497824375075142 0.78486615156755213 1;
	setAttr ".pm[42]" -type "matrix" -0.16932532307067247 0.96527649990704545 -0.19892263243335806 -0
		 0.98556021377032699 0.16584045593116589 -0.034176135087669167 -0 1.3183898417423744e-16 -0.2018371172598033 -0.97941910237459295 -0
		 -5.7236422783817282 -1.9839300723893565 -0.95909989525908557 1;
	setAttr ".pm[43]" -type "matrix" 0.62316378607661982 -0.75637073054715476 0.19892263243335795 -0
		 0.7669143872697135 0.64083875849482563 0.034176135087669222 0 -0.15332716106865452 0.13125929903200931 0.97941910237459284 -0
		 -6.1360967711649694 -4.1170383759049205 0.95909989525908523 1;
	setAttr ".pm[44]" -type "matrix" 0.98000917862884818 -0.0034345464029732859 0.19892263243335798 -0
		 -0.0034345464029732738 0.99940992374574489 0.034176135087669222 0 -0.19892263243335823 -0.034176135087669333 0.97941910237459295 -0
		 -1.6944175488132156 -8.489243544670618 0.95909989525908523 1;
	setAttr ".gm" -type "matrix" 1.7824803456928526 -0.092559673103370183 1.2566238137786081 0
		 -1.1539129236974299 0.75451694496466437 1.6923640357520739 0 -0.7003899841750324 -2.8316638291808713 0.78490753710821881 0
		 -1.0965850952340106 3.9761106222767917 0.19046974480260515 1;
	setAttr -s 5 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster13";
	rename -uid "E0AEFFC3-C140-C7C3-7891-88AF55F4976A";
	setAttr -s 30 ".wl";
	setAttr ".wl[0:29].w"
		5 20 0.14370203547081783 21 0.83586726428536295 22 0.017677199185224857 
		43 0.0013767505292971488 44 0.0013767505292971488
		5 20 0.17175572838613271 21 0.80464878367564152 22 0.020355439991876365 
		43 0.0016200239731747014 44 0.0016200239731747014
		5 9 0.0003919081412432686 19 0.00042249434602795313 20 0.0071818910700343517 
		21 0.83259045302389634 22 0.15941325341879817
		5 9 0.00076132665548453839 19 0.0010625118610335155 20 0.014788594881919618 
		21 0.8497677172251682 22 0.13361984937639407
		5 19 0.0012460103041906309 20 0.15010501388728295 21 0.82995856963495473 
		22 0.017484311101136515 43 0.0012060950724352734
		5 9 0.0018741111500409002 10 0.0018751307249333417 20 0.025211617540571194 
		21 0.8189364668095751 22 0.15210267377487935
		5 9 0.00062408458240624976 19 0.00090867875870750286 20 0.034163001854112696 
		21 0.92368677150009371 22 0.040617463304679857
		5 19 0.00095064811901153067 20 0.039489363885295482 21 0.90748944939130038 
		22 0.051318392870664135 43 0.00075214573372860832
		5 19 0.00070335522680292975 20 0.025801555123446621 21 0.93650931827446715 
		22 0.036443622985697109 43 0.00054214838958614113
		5 20 0.15893276442791646 21 0.81982056829264682 22 0.018512951383814681 
		43 0.0013668579478109456 44 0.0013668579478109456
		5 19 0.00092647676278076528 20 0.038098148152634292 21 0.91209749056451717 
		22 0.048214359130344227 43 0.00066352538972362033
		5 10 0.00066099240353840398 19 0.00066270850504196737 20 0.010936235363234535 
		21 0.80857200771974103 22 0.1791680560084441
		5 20 0.15569315433439412 21 0.82275173660791323 22 0.018630611976311221 
		43 0.0014622485406907385 44 0.0014622485406907385
		5 19 0.00084372212225447747 20 0.03434353357088625 21 0.91748993452639149 
		22 0.046634426812894932 43 0.00068838296757280201
		5 9 0.00040349520327653289 19 0.00047042731507130053 20 0.0077179920958409141 
		21 0.82793705909882043 22 0.16347102628699095
		5 9 0.004988808891122209 10 0.004988808891122209 20 0.022017185286778158 
		21 0.54775334196683045 22 0.42025185496414691
		5 9 0.00016555380454851365 10 0.00016575381116454532 20 0.00087989055594898697 
		21 0.52107902177273502 22 0.47770978005560299
		5 10 4.0502401707620096e-05 11 4.0239379960088517e-05 20 0.00021667902196907056 
		21 0.54192585709633334 22 0.4577767221000299
		5 10 0.00074191413833947723 11 0.00074191413833947723 20 0.0028656888939845755 
		21 0.51438754900349459 22 0.48126293382584179
		5 10 0.016843750637362636 11 0.016651456015601366 20 0.033560128658583661 
		21 0.53712846804186021 22 0.39581619664659207
		5 9 0.0019098027459961808 10 0.0019299909757087644 20 0.0029456979254888246 
		21 0.49660725417640322 22 0.496607254176403
		5 10 0.0002272379423643751 11 0.0002270060062137702 20 0.00040166199923139976 
		21 0.4995720470260952 22 0.4995720470260952
		5 10 0.00011634422653017416 11 0.00011634422653017416 20 0.00019341615982318709 
		21 0.49978694769355825 22 0.49978694769355825
		5 10 0.00066427738887487643 11 0.00066427738887487643 20 0.00086341424447564552 
		21 0.49890401548888719 22 0.49890401548888741
		5 9 0.0069044930932457421 10 0.0082831309466878666 11 0.0082831309466878666 
		21 0.48826462250668934 22 0.48826462250668923
		5 10 0.018052565896930318 11 0.018052565896930318 12 0.015299772259842139 
		21 0.47429754797314866 22 0.47429754797314866
		5 10 0.021404434104021548 11 0.021404434104021548 12 0.018356501880689515 
		21 0.46941731495563371 22 0.46941731495563371
		5 10 0.022034059831198365 11 0.022034059831198365 12 0.019038769850837203 
		21 0.46844655524338308 22 0.46844655524338308
		5 10 0.022434376621742289 11 0.022434376621742289 12 0.019352334684473255 
		21 0.46788945603602111 22 0.46788945603602111
		5 10 0.021878642386934686 11 0.021878642386934686 12 0.018827722242381398 
		21 0.46870749649187465 22 0.46870749649187465;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.012728295233860504 0.99991782735513501 -0.0015261185493631081 -0
		 0.99280702824109124 0.012819459325065943 0.11903724685032832 -0 0.11904702925958592 1.0690233420707081e-16 -0.99288861652476801 -0
		 -0.90795101870048134 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513461 0.91862659735055918 -0.041563650809936667 -0
		 0.89526386431128191 0.39248175502475208 0.21085702556737568 -0 0.210011846539538 0.045642596473303453 -0.9766328776465748 -0
		 -0.37507697621182828 -2.8657604802815309 -0.94611761528610516 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402895 0.9445447650793507 0.045683164274527482 -0
		 0.94422144490049698 0.32697288226068943 -0.039173935928819348 0 -0.051938692002751134 0.030396069274366267 -0.99818758319551948 0
		 -1.5297596850582682 -2.7773530357943352 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790586 0.99329326174337518 0.045683164274527482 -0
		 0.99337604742855179 0.10802514123606741 -0.039173935928819348 0 -0.043846136866929383 0.041219716594552334 -0.99818758319551959 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810515 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885265 0.99890059027644973 0.045683164274527607 -0
		 0.99915653175010688 0.012313724251499982 -0.039173935928819466 0 -0.039693397610562217 0.045232542935574056 -0.99818758319551937 0
		 -3.4912318179848607 -1.9040448117726043 -0.56315261966810481 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871752 -0.9779020118066285 -0.091812310658712079 -0
		 0.96088145788389734 0.20231395106606309 -0.18914515351696121 -0 0.20354033747357872 -0.052694596578666153 0.9776474878567194 -0
		 -4.1608222065879765 0.98034715670107386 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.849256614102049 -0.40332677146099288 -0
		 0.89689896658620161 0.4222537097758039 -0.13143077385899588 -0 0.28192467949760502 -0.31696215544524442 0.90556803560289056 -0
		 -4.6827584700038933 -0.43291834424742021 1.8868280135693325 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143826 -0.47572266972118704 -0
		 0.74200082470018769 0.64087873460052991 -0.19674659763529495 -0 0.4473524375790161 -0.25474905055727082 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547873 -0.45027497011225115 -0.47572266972118704 -0
		 0.40753183853562547 0.89174468145243679 -0.19674659763529498 -0 0.51281322894014236 -0.045209229054513987 0.85730899787199377 -0
		 -3.7930210190858711 -3.6363074555288435 2.3527934785693625 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988877 -0.60770287165339087 -0
		 -0.15684837943322541 0.97734058610779651 -0.14214065082037369 0 0.58840109184103584 0.20806465329722415 0.78134067804548823 -0
		 -1.2358328313690483 -5.3627024397852345 2.4055843427903012 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304327 0.42405058758597708 -0.53977069894956764 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867554 0.18573444686090734 0.83774129179212098 -0
		 0.1968172812762447 -5.9805478664821443 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348465 0.49094017626205783 -0.60972944210779889 -0
		 -0.5253983994062138 0.83932464881653146 0.13960893879116207 0 0.58030058688812003 0.23347778742481168 0.78021750277503932 -0
		 0.47614274721700267 -5.961344900019987 0.95798160440020297 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516239 0.60280760005635936 -0.65335941194369052 -0
		 -0.66368542414675347 0.72082410497382132 0.19983560109207887 0 0.5914196324406692 0.34210467258279464 0.7301966936112233 -0
		 1.1441516084105745 -5.8141102579502952 0.85898842630906724 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387919 -0.10503749339307361 -0.91693018807666515 -0
		 0.17781968135064385 0.98332967287429862 -0.037985725862222486 -0 0.90563458731928081 -0.14842465909216213 0.39723559108470113 -0
		 -3.0698135514498937 -3.9119159816185101 3.2206463961358001 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042264 0.077623837547557792 -0.3834011912353672 -0
		 0.20793806673474038 0.92724908623729163 -0.31140149722621147 -0 0.33133622500252974 -0.36631089516488313 -0.86950137095037139 -0
		 1.3350913447026536 -3.8738355210740298 3.8541836841977992 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364847 -0.094924216888717688 0.38340119123536714 -0
		 -0.031825581119802333 0.94974535529880866 0.31140149722621158 0 -0.39369304385399273 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558672 -3.7939732910568535 -3.8541836841977997 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071677 -0.39002924497921759 0.452124470705772 -0
		 0.2418572836977026 0.90452625422546051 0.35119411973896503 -0 -0.54593443129409036 -0.17236427552656972 0.81990618563942996 -0
		 -4.4547110826954048 -2.2284950952224647 -4.392248129419202 1;
	setAttr ".pm[18]" -type "matrix" 0.8806009698142695 -0.14186400160433182 0.45212447070577194 -0
		 -0.029550252819743231 0.93583624252273023 0.35119411973896497 0 -0.47293626898394825 -0.32262227485054945 0.81990618563942974 -0
		 -4.8264647244913848 -3.7828002607320328 -4.3922481294192028 1;
	setAttr ".pm[19]" -type "matrix" 0.04444990963230469 -0.99486331132534522 -0.090946123130399792 -0
		 0.99875087560877895 0.046333564308836124 -0.018705327827550827 -0 0.022823102426645002 -0.090001069978133355 0.99568012604370837 -0
		 -5.1987338443485154 1.1631347543266388 0.9593990667563872 1;
	setAttr ".pm[20]" -type "matrix" 0.59746412934814974 -0.79672166835715486 -0.090946123130399792 -0
		 0.79887115989862156 0.60121126119950097 -0.018705327827550827 -0 0.06958077338236654 -0.061478472468806014 0.99568012604370837 -0
		 -6.0311161264281017 -2.7072772985180777 0.9593990667563872 1;
	setAttr ".pm[21]" -type "matrix" 0.86518594954605277 0.49313494643519812 -0.090946123130399764 -0
		 -0.49658384305064746 0.86778718447088932 -0.018705327827550817 0 0.069697629293580379 0.061345962152701043 0.99568012604370804 -0
		 1.7365891972474419 -7.8707547550432926 0.95939906675638709 1;
	setAttr ".pm[22]" -type "matrix" 0.99585451783966294 -0.0016068558999377096 -0.090946123130399764 -0
		 -9.4996095158742211e-05 0.99982503553702085 -0.018705327827550817 0 0.090960267557186225 0.018636424751305627 0.99568012604370815 -0
		 -3.6603758191881481 -6.9736763934885175 0.95939906675638698 1;
	setAttr ".pm[23]" -type "matrix" -0.32924786964475911 0.69647275897298944 0.63759041424957197 -0
		 0.89339606886512035 0.44836933267261597 -0.02843247535938619 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461437 0
		 -3.5395339554045822 -2.4005302806614881 -1.426859062061397 1;
	setAttr ".pm[24]" -type "matrix" -0.2788948936776629 0.7069333932652262 0.64997139611450527 -0
		 0.8885321965626376 0.44672740812313078 -0.10461911155789998 0 -0.36431878067442514 0.54834277629791328 -0.75272307373282876 0
		 -4.0483565879838146 -2.4178888731886139 -1.0785180430682908 1;
	setAttr ".pm[25]" -type "matrix" -0.23031898058193831 0.6528205623008978 0.72164983241239422 -0
		 0.83303853881336309 0.51558677386086182 -0.20054194441922923 0 -0.50299101387141465 0.55497350572517268 -0.66257410748362211 0
		 -4.4246285444210187 -2.6889499752129313 -0.5852217214780755 1;
	setAttr ".pm[26]" -type "matrix" -0.43594206856657181 0.59749643679491382 0.67301747441747795 -0
		 0.7008473455733657 0.69452627827057267 -0.16262302110831151 0 -0.5645949973712715 0.40078829425147744 -0.72152701414037557 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020237 1;
	setAttr ".pm[27]" -type "matrix" -0.80828667061645421 0.2506903381799318 0.53275417637687217 -0
		 0.21819681833351881 0.96794042383007672 -0.12442461325951773 0 -0.54686635165540887 0.015674509845052274 -0.83707317671050763 0
		 -1.278220982043448 -5.4701710369415641 -1.0637098843123747 1;
	setAttr ".pm[28]" -type "matrix" -0.82004746298995335 -0.20903383935798978 0.53275417637687217 -0
		 -0.32022389937182466 0.93913533097542601 -0.12442461325951776 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050752 0
		 1.4741587314170379 -5.4790257814298382 -1.0637098843123742 1;
	setAttr ".pm[29]" -type "matrix" -0.68115616977266769 -0.5822485630455535 0.44386133331482847 -0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048567 0 -0.16426653899654681 -0.4692574321309736 -0.86764852708682749 0
		 3.7155105341486685 -4.2535038943938588 -0.56138920422851701 1;
	setAttr ".pm[30]" -type "matrix" -0.50408143703462183 -0.80314784176126897 0.31757746946426541 0
		 -0.83807469275740265 0.36604707764536509 -0.40452484016049428 0 0.20864494769031905 -0.47006710289224019 -0.85761541764464611 -0
		 4.7675519887131355 -2.6983875271677138 0.40050570930127832 1;
	setAttr ".pm[31]" -type "matrix" -0.13887805416914528 -0.9736202144440087 0.18104298963559595 0
		 -0.84422276414869568 0.020829102434948937 -0.53558759599610806 0 0.51768794709103294 -0.22722197630897611 -0.82484505388522256 -0
		 5.131402912047518 -0.54383195128390038 1.1062768597705592 1;
	setAttr ".pm[32]" -type "matrix" -0.44544497944150713 0.31790426679360734 -0.8369681280937612 0
		 -0.53604559259280804 0.65406161496897952 0.53372139406810004 0 0.71710103399185066 0.68639659161347089 -0.12093728155217454 -0
		 3.5487087479939037 -1.8700671021165951 -2.7925192544727233 1;
	setAttr ".pm[33]" -type "matrix" -0.052113644842616026 -0.12229877356956341 -0.99112419908132532 0
		 -0.12985134008384805 0.98487688501104831 -0.11470026525411023 0 0.99016301561896736 0.12272135655343426 -0.067206183837786579 -0
		 1.5808752886267781 -4.2107979269501721 0.024886578657810372 1;
	setAttr ".pm[34]" -type "matrix" 0.51285923410589029 0.15316128048266991 0.84469937146491858 -0
		 -0.35222853801336468 0.93486282786315433 0.044345801251915153 0 -0.78288598339814941 -0.3202703783377655 0.53340080779662979 -0
		 1.1996854652596878 -4.1723182493855946 0.61489409327925182 1;
	setAttr ".pm[35]" -type "matrix" -0.73333549252294605 0.11850971777536495 0.66945836479868692 -0
		 0.055614854265168837 0.99184696103279268 -0.11465859703955258 0 -0.67758840263923692 -0.046851389337113004 -0.73394748035945334 0
		 -1.6184639253570574 -4.1509626321413302 0.61671609555364271 1;
	setAttr ".pm[36]" -type "matrix" 0.71787470010069721 0.19100108051108461 -0.66945836479868681 -0
		 -0.15418153999379064 0.98136713764526728 0.1146585970395526 0 0.67888435515960788 0.020907615682650958 0.73394748035945312 -0
		 2.987810459616135 -3.9063461047656256 -0.61671609555364337 1;
	setAttr ".pm[37]" -type "matrix" 0.86346497510865083 0.01229272663840846 -0.50425898666499791 -0
		 0.11820591342388179 0.96693328786482802 0.22598092585556948 -0 0.49036272165840966 -0.25473300863984616 0.83345995435716624 -0
		 -0.31526851927339061 -4.1175003486713431 -0.84111836428204012 1;
	setAttr ".pm[38]" -type "matrix" 0.85074581735119792 0.14817026903880434 -0.50425898666499791 -0
		 -0.035601726522438017 0.97348093880572806 0.22598092585556945 0 0.52437016632152489 -0.17429983693304779 0.83345995435716613 -0
		 -0.54266115293508965 -4.2561403836399734 -0.84111836428203923 1;
	setAttr ".pm[39]" -type "matrix" -0.51836859257157597 0.80319048658789161 -0.2935626755738362 -0
		 0.85499374135413664 0.49348852949922861 -0.15954552171071609 -0 0.016724367869042668 -0.33369763785108691 -0.94253179363456308 -0
		 -4.8180154521350591 -3.4553778402904016 -0.7848661515675518 1;
	setAttr ".pm[40]" -type "matrix" 0.13331225767208435 -0.9465985408103601 0.29356267557383614 -0
		 0.96950646724456246 0.18601730154215074 0.15954552171071607 0 -0.20563329478793038 0.26334153880972577 0.94253179363456319 -0
		 -6.3757106097054148 -0.94555417178716261 0.7848661515675518 1;
	setAttr ".pm[41]" -type "matrix" 0.95562517126066493 0.024525243382202185 0.2935626755738362 -0
		 -0.074275015140186543 0.98439242613298306 0.15954552171071609 0 -0.28506798167972303 -0.17427008868151553 0.94253179363456319 -0
		 0.085391099712523177 -7.5497824375075142 0.78486615156755213 1;
	setAttr ".pm[42]" -type "matrix" -0.16932532307067247 0.96527649990704545 -0.19892263243335806 -0
		 0.98556021377032699 0.16584045593116589 -0.034176135087669167 -0 1.3183898417423744e-16 -0.2018371172598033 -0.97941910237459295 -0
		 -5.7236422783817282 -1.9839300723893565 -0.95909989525908557 1;
	setAttr ".pm[43]" -type "matrix" 0.62316378607661982 -0.75637073054715476 0.19892263243335795 -0
		 0.7669143872697135 0.64083875849482563 0.034176135087669222 0 -0.15332716106865452 0.13125929903200931 0.97941910237459284 -0
		 -6.1360967711649694 -4.1170383759049205 0.95909989525908523 1;
	setAttr ".pm[44]" -type "matrix" 0.98000917862884818 -0.0034345464029732859 0.19892263243335798 -0
		 -0.0034345464029732738 0.99940992374574489 0.034176135087669222 0 -0.19892263243335823 -0.034176135087669333 0.97941910237459295 -0
		 -1.6944175488132156 -8.489243544670618 0.95909989525908523 1;
	setAttr ".gm" -type "matrix" 0.15837777301350067 0.00033604978785740502 0.019955156822722718 0
		 -0.0049405971660277824 2.3284668069611176 -6.3113361338737083e-20 0 -0.019955111902441109 -4.2341238886560659e-05 0.15837812953238176 0
		 1.3355121684236719 6.7757255861608829 -0.74918741214069939 1;
	setAttr -s 10 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 10 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 10 ".ifcl";
createNode skinCluster -n "skinCluster11";
	rename -uid "739DAB25-2145-A0B5-E3F3-9EB1EC84600C";
	setAttr -s 8 ".wl";
	setAttr ".wl[0:7].w"
		3 20 0.49910114414860951 21 0.4991011441486094 22 0.0017977117027810907
		3 20 0.49190713819273529 21 0.49843409377613312 22 0.009658768031131644
		3 20 0.49547356726036401 21 0.49547356726036423 22 0.0090528654792717319
		3 20 0.49543035730805568 21 0.49543035730805568 22 0.0091392853838886574
		3 20 0.49974853330068147 21 0.49974853330068147 22 0.00050293339863712299
		3 20 0.34858132760557181 21 0.63360411578901954 22 0.017814556605408618
		3 20 0.49994637714281559 21 0.49994637714281548 22 0.00010724571436892169
		3 20 0.1723140341185059 21 0.80726435890386883 22 0.020421606977625347;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.012728295233860504 0.99991782735513501 -0.0015261185493631081 -0
		 0.99280702824109124 0.012819459325065943 0.11903724685032832 -0 0.11904702925958592 1.0690233420707081e-16 -0.99288861652476801 -0
		 -0.90795101870048134 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513461 0.91862659735055918 -0.041563650809936667 -0
		 0.89526386431128191 0.39248175502475208 0.21085702556737568 -0 0.210011846539538 0.045642596473303453 -0.9766328776465748 -0
		 -0.37507697621182828 -2.8657604802815309 -0.94611761528610516 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402895 0.9445447650793507 0.045683164274527482 -0
		 0.94422144490049698 0.32697288226068943 -0.039173935928819348 0 -0.051938692002751134 0.030396069274366267 -0.99818758319551948 0
		 -1.5297596850582682 -2.7773530357943352 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790586 0.99329326174337518 0.045683164274527482 -0
		 0.99337604742855179 0.10802514123606741 -0.039173935928819348 0 -0.043846136866929383 0.041219716594552334 -0.99818758319551959 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810515 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885265 0.99890059027644973 0.045683164274527607 -0
		 0.99915653175010688 0.012313724251499982 -0.039173935928819466 0 -0.039693397610562217 0.045232542935574056 -0.99818758319551937 0
		 -3.4912318179848607 -1.9040448117726043 -0.56315261966810481 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871752 -0.9779020118066285 -0.091812310658712079 -0
		 0.96088145788389734 0.20231395106606309 -0.18914515351696121 -0 0.20354033747357872 -0.052694596578666153 0.9776474878567194 -0
		 -4.1608222065879765 0.98034715670107386 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.849256614102049 -0.40332677146099288 -0
		 0.89689896658620161 0.4222537097758039 -0.13143077385899588 -0 0.28192467949760502 -0.31696215544524442 0.90556803560289056 -0
		 -4.6827584700038933 -0.43291834424742021 1.8868280135693325 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143826 -0.47572266972118704 -0
		 0.74200082470018769 0.64087873460052991 -0.19674659763529495 -0 0.4473524375790161 -0.25474905055727082 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547873 -0.45027497011225115 -0.47572266972118704 -0
		 0.40753183853562547 0.89174468145243679 -0.19674659763529498 -0 0.51281322894014236 -0.045209229054513987 0.85730899787199377 -0
		 -3.7930210190858711 -3.6363074555288435 2.3527934785693625 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988877 -0.60770287165339087 -0
		 -0.15684837943322541 0.97734058610779651 -0.14214065082037369 0 0.58840109184103584 0.20806465329722415 0.78134067804548823 -0
		 -1.2358328313690483 -5.3627024397852345 2.4055843427903012 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304327 0.42405058758597708 -0.53977069894956764 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867554 0.18573444686090734 0.83774129179212098 -0
		 0.1968172812762447 -5.9805478664821443 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348465 0.49094017626205783 -0.60972944210779889 -0
		 -0.5253983994062138 0.83932464881653146 0.13960893879116207 0 0.58030058688812003 0.23347778742481168 0.78021750277503932 -0
		 0.47614274721700267 -5.961344900019987 0.95798160440020297 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516239 0.60280760005635936 -0.65335941194369052 -0
		 -0.66368542414675347 0.72082410497382132 0.19983560109207887 0 0.5914196324406692 0.34210467258279464 0.7301966936112233 -0
		 1.1441516084105745 -5.8141102579502952 0.85898842630906724 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387919 -0.10503749339307361 -0.91693018807666515 -0
		 0.17781968135064385 0.98332967287429862 -0.037985725862222486 -0 0.90563458731928081 -0.14842465909216213 0.39723559108470113 -0
		 -3.0698135514498937 -3.9119159816185101 3.2206463961358001 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042264 0.077623837547557792 -0.3834011912353672 -0
		 0.20793806673474038 0.92724908623729163 -0.31140149722621147 -0 0.33133622500252974 -0.36631089516488313 -0.86950137095037139 -0
		 1.3350913447026536 -3.8738355210740298 3.8541836841977992 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364847 -0.094924216888717688 0.38340119123536714 -0
		 -0.031825581119802333 0.94974535529880866 0.31140149722621158 0 -0.39369304385399273 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558672 -3.7939732910568535 -3.8541836841977997 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071677 -0.39002924497921759 0.452124470705772 -0
		 0.2418572836977026 0.90452625422546051 0.35119411973896503 -0 -0.54593443129409036 -0.17236427552656972 0.81990618563942996 -0
		 -4.4547110826954048 -2.2284950952224647 -4.392248129419202 1;
	setAttr ".pm[18]" -type "matrix" 0.8806009698142695 -0.14186400160433182 0.45212447070577194 -0
		 -0.029550252819743231 0.93583624252273023 0.35119411973896497 0 -0.47293626898394825 -0.32262227485054945 0.81990618563942974 -0
		 -4.8264647244913848 -3.7828002607320328 -4.3922481294192028 1;
	setAttr ".pm[19]" -type "matrix" 0.04444990963230469 -0.99486331132534522 -0.090946123130399792 -0
		 0.99875087560877895 0.046333564308836124 -0.018705327827550827 -0 0.022823102426645002 -0.090001069978133355 0.99568012604370837 -0
		 -5.1987338443485154 1.1631347543266388 0.9593990667563872 1;
	setAttr ".pm[20]" -type "matrix" 0.59746412934814974 -0.79672166835715486 -0.090946123130399792 -0
		 0.79887115989862156 0.60121126119950097 -0.018705327827550827 -0 0.06958077338236654 -0.061478472468806014 0.99568012604370837 -0
		 -6.0311161264281017 -2.7072772985180777 0.9593990667563872 1;
	setAttr ".pm[21]" -type "matrix" 0.86518594954605277 0.49313494643519812 -0.090946123130399764 -0
		 -0.49658384305064746 0.86778718447088932 -0.018705327827550817 0 0.069697629293580379 0.061345962152701043 0.99568012604370804 -0
		 1.7365891972474419 -7.8707547550432926 0.95939906675638709 1;
	setAttr ".pm[22]" -type "matrix" 0.99585451783966294 -0.0016068558999377096 -0.090946123130399764 -0
		 -9.4996095158742211e-05 0.99982503553702085 -0.018705327827550817 0 0.090960267557186225 0.018636424751305627 0.99568012604370815 -0
		 -3.6603758191881481 -6.9736763934885175 0.95939906675638698 1;
	setAttr ".pm[23]" -type "matrix" -0.32924786964475911 0.69647275897298944 0.63759041424957197 -0
		 0.89339606886512035 0.44836933267261597 -0.02843247535938619 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461437 0
		 -3.5395339554045822 -2.4005302806614881 -1.426859062061397 1;
	setAttr ".pm[24]" -type "matrix" -0.2788948936776629 0.7069333932652262 0.64997139611450527 -0
		 0.8885321965626376 0.44672740812313078 -0.10461911155789998 0 -0.36431878067442514 0.54834277629791328 -0.75272307373282876 0
		 -4.0483565879838146 -2.4178888731886139 -1.0785180430682908 1;
	setAttr ".pm[25]" -type "matrix" -0.23031898058193831 0.6528205623008978 0.72164983241239422 -0
		 0.83303853881336309 0.51558677386086182 -0.20054194441922923 0 -0.50299101387141465 0.55497350572517268 -0.66257410748362211 0
		 -4.4246285444210187 -2.6889499752129313 -0.5852217214780755 1;
	setAttr ".pm[26]" -type "matrix" -0.43594206856657181 0.59749643679491382 0.67301747441747795 -0
		 0.7008473455733657 0.69452627827057267 -0.16262302110831151 0 -0.5645949973712715 0.40078829425147744 -0.72152701414037557 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020237 1;
	setAttr ".pm[27]" -type "matrix" -0.80828667061645421 0.2506903381799318 0.53275417637687217 -0
		 0.21819681833351881 0.96794042383007672 -0.12442461325951773 0 -0.54686635165540887 0.015674509845052274 -0.83707317671050763 0
		 -1.278220982043448 -5.4701710369415641 -1.0637098843123747 1;
	setAttr ".pm[28]" -type "matrix" -0.82004746298995335 -0.20903383935798978 0.53275417637687217 -0
		 -0.32022389937182466 0.93913533097542601 -0.12442461325951776 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050752 0
		 1.4741587314170379 -5.4790257814298382 -1.0637098843123742 1;
	setAttr ".pm[29]" -type "matrix" -0.68115616977266769 -0.5822485630455535 0.44386133331482847 -0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048567 0 -0.16426653899654681 -0.4692574321309736 -0.86764852708682749 0
		 3.7155105341486685 -4.2535038943938588 -0.56138920422851701 1;
	setAttr ".pm[30]" -type "matrix" -0.50408143703462183 -0.80314784176126897 0.31757746946426541 0
		 -0.83807469275740265 0.36604707764536509 -0.40452484016049428 0 0.20864494769031905 -0.47006710289224019 -0.85761541764464611 -0
		 4.7675519887131355 -2.6983875271677138 0.40050570930127832 1;
	setAttr ".pm[31]" -type "matrix" -0.13887805416914528 -0.9736202144440087 0.18104298963559595 0
		 -0.84422276414869568 0.020829102434948937 -0.53558759599610806 0 0.51768794709103294 -0.22722197630897611 -0.82484505388522256 -0
		 5.131402912047518 -0.54383195128390038 1.1062768597705592 1;
	setAttr ".pm[32]" -type "matrix" -0.44544497944150713 0.31790426679360734 -0.8369681280937612 0
		 -0.53604559259280804 0.65406161496897952 0.53372139406810004 0 0.71710103399185066 0.68639659161347089 -0.12093728155217454 -0
		 3.5487087479939037 -1.8700671021165951 -2.7925192544727233 1;
	setAttr ".pm[33]" -type "matrix" -0.052113644842616026 -0.12229877356956341 -0.99112419908132532 0
		 -0.12985134008384805 0.98487688501104831 -0.11470026525411023 0 0.99016301561896736 0.12272135655343426 -0.067206183837786579 -0
		 1.5808752886267781 -4.2107979269501721 0.024886578657810372 1;
	setAttr ".pm[34]" -type "matrix" 0.51285923410589029 0.15316128048266991 0.84469937146491858 -0
		 -0.35222853801336468 0.93486282786315433 0.044345801251915153 0 -0.78288598339814941 -0.3202703783377655 0.53340080779662979 -0
		 1.1996854652596878 -4.1723182493855946 0.61489409327925182 1;
	setAttr ".pm[35]" -type "matrix" -0.73333549252294605 0.11850971777536495 0.66945836479868692 -0
		 0.055614854265168837 0.99184696103279268 -0.11465859703955258 0 -0.67758840263923692 -0.046851389337113004 -0.73394748035945334 0
		 -1.6184639253570574 -4.1509626321413302 0.61671609555364271 1;
	setAttr ".pm[36]" -type "matrix" 0.71787470010069721 0.19100108051108461 -0.66945836479868681 -0
		 -0.15418153999379064 0.98136713764526728 0.1146585970395526 0 0.67888435515960788 0.020907615682650958 0.73394748035945312 -0
		 2.987810459616135 -3.9063461047656256 -0.61671609555364337 1;
	setAttr ".pm[37]" -type "matrix" 0.86346497510865083 0.01229272663840846 -0.50425898666499791 -0
		 0.11820591342388179 0.96693328786482802 0.22598092585556948 -0 0.49036272165840966 -0.25473300863984616 0.83345995435716624 -0
		 -0.31526851927339061 -4.1175003486713431 -0.84111836428204012 1;
	setAttr ".pm[38]" -type "matrix" 0.85074581735119792 0.14817026903880434 -0.50425898666499791 -0
		 -0.035601726522438017 0.97348093880572806 0.22598092585556945 0 0.52437016632152489 -0.17429983693304779 0.83345995435716613 -0
		 -0.54266115293508965 -4.2561403836399734 -0.84111836428203923 1;
	setAttr ".pm[39]" -type "matrix" -0.51836859257157597 0.80319048658789161 -0.2935626755738362 -0
		 0.85499374135413664 0.49348852949922861 -0.15954552171071609 -0 0.016724367869042668 -0.33369763785108691 -0.94253179363456308 -0
		 -4.8180154521350591 -3.4553778402904016 -0.7848661515675518 1;
	setAttr ".pm[40]" -type "matrix" 0.13331225767208435 -0.9465985408103601 0.29356267557383614 -0
		 0.96950646724456246 0.18601730154215074 0.15954552171071607 0 -0.20563329478793038 0.26334153880972577 0.94253179363456319 -0
		 -6.3757106097054148 -0.94555417178716261 0.7848661515675518 1;
	setAttr ".pm[41]" -type "matrix" 0.95562517126066493 0.024525243382202185 0.2935626755738362 -0
		 -0.074275015140186543 0.98439242613298306 0.15954552171071609 0 -0.28506798167972303 -0.17427008868151553 0.94253179363456319 -0
		 0.085391099712523177 -7.5497824375075142 0.78486615156755213 1;
	setAttr ".pm[42]" -type "matrix" -0.16932532307067247 0.96527649990704545 -0.19892263243335806 -0
		 0.98556021377032699 0.16584045593116589 -0.034176135087669167 -0 1.3183898417423744e-16 -0.2018371172598033 -0.97941910237459295 -0
		 -5.7236422783817282 -1.9839300723893565 -0.95909989525908557 1;
	setAttr ".pm[43]" -type "matrix" 0.62316378607661982 -0.75637073054715476 0.19892263243335795 -0
		 0.7669143872697135 0.64083875849482563 0.034176135087669222 0 -0.15332716106865452 0.13125929903200931 0.97941910237459284 -0
		 -6.1360967711649694 -4.1170383759049205 0.95909989525908523 1;
	setAttr ".pm[44]" -type "matrix" 0.98000917862884818 -0.0034345464029732859 0.19892263243335798 -0
		 -0.0034345464029732738 0.99940992374574489 0.034176135087669222 0 -0.19892263243335823 -0.034176135087669333 0.97941910237459295 -0
		 -1.6944175488132156 -8.489243544670618 0.95909989525908523 1;
	setAttr ".gm" -type "matrix" 0.15837777301350067 0.00033604978785740502 0.019955156822722718 0
		 -0.0049405971660277824 2.3284668069611176 -6.3113361338737083e-20 0 -0.019955111902441109 -4.2341238886560659e-05 0.15837812953238176 0
		 1.3355121684236715 6.7757255861608829 -0.74918741214069884 1;
	setAttr -s 5 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
createNode skinCluster -n "skinCluster10";
	rename -uid "A820184C-7C41-33C8-B095-A6B156ED68CC";
	setAttr -s 72 ".wl";
	setAttr ".wl[0:71].w"
		5 6 0.92118090542272579 7 0.036287777325911617 19 0.022752873713959048 
		23 0.0098621783384681225 24 0.0099162651989354034
		5 5 0.079579627873947928 6 0.67319460260818942 7 0.032056493836152965 
		23 0.13916005263255352 24 0.076009223049156249
		5 5 0.14945396772625094 6 0.1266100589872263 7 0.0061283647568187941 
		23 0.60226200454872214 24 0.11554560398098192
		5 5 0.20767222115706499 6 0.11796164661478641 7 0.0060024395177803907 
		23 0.58546894154088314 24 0.082894751169485054
		5 5 0.081968052271926939 6 0.69406113890393872 7 0.045149723110950724 
		23 0.11475243498185558 24 0.064068650731327947
		5 6 0.84265637275686933 7 0.058032563887329427 8 0.01734733310844961 
		19 0.067442954445671763 23 0.014520775801679837
		5 6 0.7887023514450261 7 0.052373643832268252 8 0.02624976583826211 
		19 0.12590114748517295 24 0.006773091399270622
		5 6 0.78515003641748493 7 0.068732286248714747 8 0.031327651006905329 
		19 0.10745982106672657 24 0.0073302052601683845
		5 6 0.81356450172196915 19 0.17411508213149604 23 0.0031270008337366375 
		24 0.0050255566153485373 25 0.0041678586974496657
		5 6 0.6200168374681716 19 0.32384127078608271 23 0.0089936552520347799 
		24 0.025185349936045553 25 0.021962886557665366
		5 6 0.49655770537011351 19 0.34433566769310514 23 0.01810184299688905 
		24 0.077601640077624781 25 0.063403143862267516
		5 6 0.51597774500638671 19 0.37887814127008007 23 0.018325767032908589 
		24 0.04881013715425854 25 0.038008209536366099
		5 6 0.58762195208272183 19 0.37678183237492469 23 0.0094327997346708992 
		24 0.014757172361646384 25 0.011406243446036059
		5 6 0.68062122592422103 7 0.004074724596538187 19 0.30829883684125758 
		24 0.0038955120501128157 25 0.0031097005878702737
		5 6 0.70520984659885699 7 0.0042703990795943609 8 0.0032749414969074843 
		19 0.28521871698915979 24 0.0020260958354813606
		5 6 0.83226893338273733 7 0.003433254647283516 8 0.0023681672597605174 
		19 0.16015114157365196 24 0.0017785031365667005
		5 6 0.00335597370612347 19 0.99397289776090714 20 0.0010235853109525272 
		25 0.00082377161100838858 26 0.00082377161100838858
		5 6 0.012169007868381713 19 0.97381357726050044 20 0.0033774685605069432 
		25 0.0053199731553054798 26 0.0053199731553054798
		5 6 0.023647151073277133 19 0.94053576597142374 25 0.013469947661162876 
		26 0.013469947661162876 27 0.008877187632973493
		5 6 0.027939651490447807 19 0.94040906534647861 25 0.011635109774551592 
		26 0.011635109774551592 27 0.0083810636139703566
		5 6 0.020518484582624695 19 0.96429895195473403 20 0.0055034406771560769 
		25 0.0048420477629772529 26 0.0048370750225079865
		5 6 0.0085678698838321278 19 0.98632579066422454 20 0.0024956256464273947 
		25 0.0013135326273228491 26 0.0012971811781931164
		5 6 0.0019766422468428034 7 0.00028427980408653078 8 0.00028427980408653078 
		19 0.99682961025002359 20 0.00062518789496061769
		5 6 0.00089375423250470524 19 0.99854518390739322 20 0.00028635743893234576 
		25 0.00013757508499567345 26 0.00013712933617407102
		5 6 0.00047549786689533185 19 0.79476428559803003 20 0.2035609183190141 
		27 0.00058125988291714314 42 0.00061803833314334343
		5 6 0.00052750248566202232 19 0.74038615808014108 20 0.25682678311330948 
		27 0.0010642257532377604 42 0.00119533056764958
		5 6 0.00045662659563900233 19 0.70181103338719941 20 0.29482336887699423 
		27 0.0013131167040831406 42 0.0015958544360841736
		5 6 0.00034145377614936697 19 0.70030784432012927 20 0.29734126715431525 
		27 0.00089785711631832775 42 0.0011115776330878372
		5 6 0.00025935242287234897 19 0.74155408513918875 20 0.25722989984647093 
		27 0.0004415709932401361 42 0.00051509159822789579
		5 6 0.00022954604971769956 19 0.80314283009438125 20 0.19610849920488516 
		27 0.0002479257218778037 42 0.00027119892913804916
		5 6 0.00025528562849166025 19 0.84139211740376085 20 0.1579137401037278 
		27 0.00021357184247563943 42 0.00022528502154413823
		5 6 0.00034819136839998681 19 0.83608766719135985 20 0.16294327807249898 
		27 0.00030359762583761227 42 0.00031726574190359602
		5 19 0.006178603088425918 20 0.99328577301835386 21 0.0003016498390840205 
		42 0.00013447553701397273 43 9.9498517122348376e-05
		5 19 0.042974917644212574 20 0.95279320949328927 21 0.0018064848455389894 
		42 0.0013856911161994484 43 0.0010396969007596295
		5 19 0.094147406469989994 20 0.89537777512850991 21 0.0033531146275329457 
		42 0.0040473771679059682 43 0.0030743266060612394
		5 19 0.081979544540557531 20 0.91128640338517064 21 0.0027078884898932868 
		42 0.002278764033698638 43 0.0017473995506798923
		5 19 0.028386392776235763 20 0.969605632765286 21 0.001073158725938429 
		42 0.00053201041235860838 43 0.00040280532018126491
		5 19 0.0019635991960647351 20 0.99789467875455895 21 8.898181011925737e-05 
		42 3.0251981768663442e-05 43 2.2488257488318352e-05
		5 19 2.3996379700247872e-05 20 0.99997410572326872 21 1.2148133761938268e-06 
		42 3.9346636020580785e-07 43 2.8961729461414944e-07
		5 19 0.00034785524407125409 20 0.98951348927110694 21 0.0099045767402085559 
		43 0.0001301029887771604 44 0.00010397575583622905
		5 19 0.0024902093726611369 20 0.92749255917087681 21 0.067212758823811697 
		43 0.0015661217538704691 44 0.0012383508787798456
		5 19 0.0051457551014902347 20 0.85200970936528475 21 0.13439023415283433 
		43 0.004762080287723975 44 0.0036922210926667583
		5 19 0.0060384585148679408 20 0.82675903346264068 21 0.15763267131037284 
		43 0.0054153143898453288 44 0.0041545223222731889
		5 19 0.0046305876525623213 20 0.86583162266745606 21 0.12459164381972462 
		43 0.0027932201039579277 44 0.0021529257562990078
		5 19 0.0018687000419108555 20 0.94404968296348579 21 0.052842181007817908 
		43 0.00069655243116113828 44 0.00054288355562422423
		5 19 0.00016397574190333051 20 0.99491275700945592 21 0.0048439736412015282 
		43 4.4323077603143484e-05 44 3.4970529836097412e-05
		5 19 3.7383003254187934e-07 20 0.99998835330517688 21 1.1090826014523334e-05 
		22 8.1804191323561636e-08 43 1.0023458480595914e-07
		5 19 2.4859231622281275e-05 20 0.18970954722293884 21 0.81019728780132971 
		22 4.7353302590137156e-05 43 2.0952441519032657e-05
		5 20 0.46139867958290659 21 0.538304255216973 22 0.00012499407214336993 
		43 8.6035563988510447e-05 44 8.6035563988510447e-05
		5 20 0.4998169860601851 21 0.49981698606018532 22 0.00012627310448667576 
		43 0.0001198773875714143 44 0.0001198773875714143
		5 20 0.49989226341761384 21 0.49989226341761384 22 8.810971636463522e-05 
		43 6.368172420386619e-05 44 6.368172420386619e-05
		5 19 4.1281603965164481e-05 20 0.47090333561954723 21 0.52894855442863375 
		22 7.1954945129734955e-05 43 3.4873402724261887e-05
		5 19 1.3975407672263712e-05 20 0.16418499584701948 21 0.83576599236168603 
		22 2.5872542604779039e-05 43 9.1638410174034683e-06
		5 19 1.0554896620111396e-06 20 0.011133155861418833 21 0.98886306676052693 
		22 2.0361971085480136e-06 43 6.8569128362379095e-07
		5 19 0.00019758803583142873 20 0.02386965985017583 21 0.9726100845414265 
		22 0.0031666880988639296 43 0.0001559794737024312
		5 19 0.00067074853279882425 20 0.079433235288777104 21 0.90895813406791515 
		22 0.010279460044160671 43 0.00065842206634821369
		5 20 0.14369821021969012 21 0.83587160018898909 22 0.017676789359828225 
		43 0.0013767001157463446 44 0.0013767001157463446
		5 20 0.17175572838613309 21 0.80464878367564119 22 0.020355439991876337 
		43 0.0016200239731747029 44 0.0016200239731747029
		5 19 0.0012459581970499485 20 0.15009851691241372 21 0.82996570740116749 
		22 0.017483789139664793 43 0.0012060283497040769
		5 19 0.00071294069490761421 20 0.087228033903751556 21 0.90112023237524441 
		22 0.010375221976731264 43 0.00056357104936524314
		5 19 0.00021978658985737741 20 0.027229167967384799 21 0.96901937027453722 
		22 0.003382590646460913 43 0.00014908452175969942
		5 19 7.1617470855727511e-05 20 0.0088538759817544128 21 0.98987730156146836 
		22 0.0011488888248109902 43 4.8316161110345594e-05
		5 9 4.2288167373393247e-05 19 4.9921895563508997e-05 20 0.00091329568604285203 
		21 0.98200515312221737 22 0.016989341128802862
		5 9 0.00013396257894015417 19 0.0001570864767086306 20 0.0028335828171084671 
		21 0.94099190596378779 22 0.055883462163454883
		5 9 0.0002656207932318778 19 0.00030293530369688247 20 0.0054046598770214 
		21 0.88604243803306237 22 0.1079843459929874
		5 9 0.00032513009429726577 19 0.0003514211899485695 20 0.0062919626790098855 
		21 0.87851568348211717 22 0.11451580255462716
		5 9 0.00019601360875877446 19 0.00021220684046303274 20 0.0038483579054902827 
		21 0.92964435460465022 22 0.066099067040637768
		5 9 6.6657621289638547e-05 19 7.4143933077428444e-05 20 0.00136198889692359 
		21 0.97563663040051607 22 0.022860579148193325
		5 9 2.2404432811785764e-05 19 2.5873291578472705e-05 20 0.00047722876925507084 
		21 0.99119853680120307 22 0.0082759567051515076
		5 19 0.11286588306329774 20 0.87542198676018645 21 0.0036516425317539383 
		42 0.0045639416658606576 43 0.0034965459789012116
		5 20 0.49984379548306129 21 0.49984379548306118 22 0.00010722370912219029 
		43 0.00010259266237769098 44 0.00010259266237769098
		5 9 0.00034971955069014162 19 0.00038614041283470136 20 0.0068702252343641511 
		21 0.85962840661139461 22 0.13276550819071639;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.012728295233860504 0.99991782735513501 -0.0015261185493631081 -0
		 0.99280702824109124 0.012819459325065943 0.11903724685032832 -0 0.11904702925958592 1.0690233420707081e-16 -0.99288861652476801 -0
		 -0.90795101870048134 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513461 0.91862659735055918 -0.041563650809936667 -0
		 0.89526386431128191 0.39248175502475208 0.21085702556737568 -0 0.210011846539538 0.045642596473303453 -0.9766328776465748 -0
		 -0.37507697621182828 -2.8657604802815309 -0.94611761528610516 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402895 0.9445447650793507 0.045683164274527482 -0
		 0.94422144490049698 0.32697288226068943 -0.039173935928819348 0 -0.051938692002751134 0.030396069274366267 -0.99818758319551948 0
		 -1.5297596850582682 -2.7773530357943352 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790586 0.99329326174337518 0.045683164274527482 -0
		 0.99337604742855179 0.10802514123606741 -0.039173935928819348 0 -0.043846136866929383 0.041219716594552334 -0.99818758319551959 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810515 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885265 0.99890059027644973 0.045683164274527607 -0
		 0.99915653175010688 0.012313724251499982 -0.039173935928819466 0 -0.039693397610562217 0.045232542935574056 -0.99818758319551937 0
		 -3.4912318179848607 -1.9040448117726043 -0.56315261966810481 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871752 -0.9779020118066285 -0.091812310658712079 -0
		 0.96088145788389734 0.20231395106606309 -0.18914515351696121 -0 0.20354033747357872 -0.052694596578666153 0.9776474878567194 -0
		 -4.1608222065879765 0.98034715670107386 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.849256614102049 -0.40332677146099288 -0
		 0.89689896658620161 0.4222537097758039 -0.13143077385899588 -0 0.28192467949760502 -0.31696215544524442 0.90556803560289056 -0
		 -4.6827584700038933 -0.43291834424742021 1.8868280135693325 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143826 -0.47572266972118704 -0
		 0.74200082470018769 0.64087873460052991 -0.19674659763529495 -0 0.4473524375790161 -0.25474905055727082 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547873 -0.45027497011225115 -0.47572266972118704 -0
		 0.40753183853562547 0.89174468145243679 -0.19674659763529498 -0 0.51281322894014236 -0.045209229054513987 0.85730899787199377 -0
		 -3.7930210190858711 -3.6363074555288435 2.3527934785693625 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988877 -0.60770287165339087 -0
		 -0.15684837943322541 0.97734058610779651 -0.14214065082037369 0 0.58840109184103584 0.20806465329722415 0.78134067804548823 -0
		 -1.2358328313690483 -5.3627024397852345 2.4055843427903012 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304327 0.42405058758597708 -0.53977069894956764 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867554 0.18573444686090734 0.83774129179212098 -0
		 0.1968172812762447 -5.9805478664821443 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348465 0.49094017626205783 -0.60972944210779889 -0
		 -0.5253983994062138 0.83932464881653146 0.13960893879116207 0 0.58030058688812003 0.23347778742481168 0.78021750277503932 -0
		 0.47614274721700267 -5.961344900019987 0.95798160440020297 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516239 0.60280760005635936 -0.65335941194369052 -0
		 -0.66368542414675347 0.72082410497382132 0.19983560109207887 0 0.5914196324406692 0.34210467258279464 0.7301966936112233 -0
		 1.1441516084105745 -5.8141102579502952 0.85898842630906724 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387919 -0.10503749339307361 -0.91693018807666515 -0
		 0.17781968135064385 0.98332967287429862 -0.037985725862222486 -0 0.90563458731928081 -0.14842465909216213 0.39723559108470113 -0
		 -3.0698135514498937 -3.9119159816185101 3.2206463961358001 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042264 0.077623837547557792 -0.3834011912353672 -0
		 0.20793806673474038 0.92724908623729163 -0.31140149722621147 -0 0.33133622500252974 -0.36631089516488313 -0.86950137095037139 -0
		 1.3350913447026536 -3.8738355210740298 3.8541836841977992 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364847 -0.094924216888717688 0.38340119123536714 -0
		 -0.031825581119802333 0.94974535529880866 0.31140149722621158 0 -0.39369304385399273 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558672 -3.7939732910568535 -3.8541836841977997 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071677 -0.39002924497921759 0.452124470705772 -0
		 0.2418572836977026 0.90452625422546051 0.35119411973896503 -0 -0.54593443129409036 -0.17236427552656972 0.81990618563942996 -0
		 -4.4547110826954048 -2.2284950952224647 -4.392248129419202 1;
	setAttr ".pm[18]" -type "matrix" 0.8806009698142695 -0.14186400160433182 0.45212447070577194 -0
		 -0.029550252819743231 0.93583624252273023 0.35119411973896497 0 -0.47293626898394825 -0.32262227485054945 0.81990618563942974 -0
		 -4.8264647244913848 -3.7828002607320328 -4.3922481294192028 1;
	setAttr ".pm[19]" -type "matrix" 0.04444990963230469 -0.99486331132534522 -0.090946123130399792 -0
		 0.99875087560877895 0.046333564308836124 -0.018705327827550827 -0 0.022823102426645002 -0.090001069978133355 0.99568012604370837 -0
		 -5.1987338443485154 1.1631347543266388 0.9593990667563872 1;
	setAttr ".pm[20]" -type "matrix" 0.59746412934814974 -0.79672166835715486 -0.090946123130399792 -0
		 0.79887115989862156 0.60121126119950097 -0.018705327827550827 -0 0.06958077338236654 -0.061478472468806014 0.99568012604370837 -0
		 -6.0311161264281017 -2.7072772985180777 0.9593990667563872 1;
	setAttr ".pm[21]" -type "matrix" 0.86518594954605277 0.49313494643519812 -0.090946123130399764 -0
		 -0.49658384305064746 0.86778718447088932 -0.018705327827550817 0 0.069697629293580379 0.061345962152701043 0.99568012604370804 -0
		 1.7365891972474419 -7.8707547550432926 0.95939906675638709 1;
	setAttr ".pm[22]" -type "matrix" 0.99585451783966294 -0.0016068558999377096 -0.090946123130399764 -0
		 -9.4996095158742211e-05 0.99982503553702085 -0.018705327827550817 0 0.090960267557186225 0.018636424751305627 0.99568012604370815 -0
		 -3.6603758191881481 -6.9736763934885175 0.95939906675638698 1;
	setAttr ".pm[23]" -type "matrix" -0.32924786964475911 0.69647275897298944 0.63759041424957197 -0
		 0.89339606886512035 0.44836933267261597 -0.02843247535938619 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461437 0
		 -3.5395339554045822 -2.4005302806614881 -1.426859062061397 1;
	setAttr ".pm[24]" -type "matrix" -0.2788948936776629 0.7069333932652262 0.64997139611450527 -0
		 0.8885321965626376 0.44672740812313078 -0.10461911155789998 0 -0.36431878067442514 0.54834277629791328 -0.75272307373282876 0
		 -4.0483565879838146 -2.4178888731886139 -1.0785180430682908 1;
	setAttr ".pm[25]" -type "matrix" -0.23031898058193831 0.6528205623008978 0.72164983241239422 -0
		 0.83303853881336309 0.51558677386086182 -0.20054194441922923 0 -0.50299101387141465 0.55497350572517268 -0.66257410748362211 0
		 -4.4246285444210187 -2.6889499752129313 -0.5852217214780755 1;
	setAttr ".pm[26]" -type "matrix" -0.43594206856657181 0.59749643679491382 0.67301747441747795 -0
		 0.7008473455733657 0.69452627827057267 -0.16262302110831151 0 -0.5645949973712715 0.40078829425147744 -0.72152701414037557 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020237 1;
	setAttr ".pm[27]" -type "matrix" -0.80828667061645421 0.2506903381799318 0.53275417637687217 -0
		 0.21819681833351881 0.96794042383007672 -0.12442461325951773 0 -0.54686635165540887 0.015674509845052274 -0.83707317671050763 0
		 -1.278220982043448 -5.4701710369415641 -1.0637098843123747 1;
	setAttr ".pm[28]" -type "matrix" -0.82004746298995335 -0.20903383935798978 0.53275417637687217 -0
		 -0.32022389937182466 0.93913533097542601 -0.12442461325951776 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050752 0
		 1.4741587314170379 -5.4790257814298382 -1.0637098843123742 1;
	setAttr ".pm[29]" -type "matrix" -0.68115616977266769 -0.5822485630455535 0.44386133331482847 -0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048567 0 -0.16426653899654681 -0.4692574321309736 -0.86764852708682749 0
		 3.7155105341486685 -4.2535038943938588 -0.56138920422851701 1;
	setAttr ".pm[30]" -type "matrix" -0.50408143703462183 -0.80314784176126897 0.31757746946426541 0
		 -0.83807469275740265 0.36604707764536509 -0.40452484016049428 0 0.20864494769031905 -0.47006710289224019 -0.85761541764464611 -0
		 4.7675519887131355 -2.6983875271677138 0.40050570930127832 1;
	setAttr ".pm[31]" -type "matrix" -0.13887805416914528 -0.9736202144440087 0.18104298963559595 0
		 -0.84422276414869568 0.020829102434948937 -0.53558759599610806 0 0.51768794709103294 -0.22722197630897611 -0.82484505388522256 -0
		 5.131402912047518 -0.54383195128390038 1.1062768597705592 1;
	setAttr ".pm[32]" -type "matrix" -0.44544497944150713 0.31790426679360734 -0.8369681280937612 0
		 -0.53604559259280804 0.65406161496897952 0.53372139406810004 0 0.71710103399185066 0.68639659161347089 -0.12093728155217454 -0
		 3.5487087479939037 -1.8700671021165951 -2.7925192544727233 1;
	setAttr ".pm[33]" -type "matrix" -0.052113644842616026 -0.12229877356956341 -0.99112419908132532 0
		 -0.12985134008384805 0.98487688501104831 -0.11470026525411023 0 0.99016301561896736 0.12272135655343426 -0.067206183837786579 -0
		 1.5808752886267781 -4.2107979269501721 0.024886578657810372 1;
	setAttr ".pm[34]" -type "matrix" 0.51285923410589029 0.15316128048266991 0.84469937146491858 -0
		 -0.35222853801336468 0.93486282786315433 0.044345801251915153 0 -0.78288598339814941 -0.3202703783377655 0.53340080779662979 -0
		 1.1996854652596878 -4.1723182493855946 0.61489409327925182 1;
	setAttr ".pm[35]" -type "matrix" -0.73333549252294605 0.11850971777536495 0.66945836479868692 -0
		 0.055614854265168837 0.99184696103279268 -0.11465859703955258 0 -0.67758840263923692 -0.046851389337113004 -0.73394748035945334 0
		 -1.6184639253570574 -4.1509626321413302 0.61671609555364271 1;
	setAttr ".pm[36]" -type "matrix" 0.71787470010069721 0.19100108051108461 -0.66945836479868681 -0
		 -0.15418153999379064 0.98136713764526728 0.1146585970395526 0 0.67888435515960788 0.020907615682650958 0.73394748035945312 -0
		 2.987810459616135 -3.9063461047656256 -0.61671609555364337 1;
	setAttr ".pm[37]" -type "matrix" 0.86346497510865083 0.01229272663840846 -0.50425898666499791 -0
		 0.11820591342388179 0.96693328786482802 0.22598092585556948 -0 0.49036272165840966 -0.25473300863984616 0.83345995435716624 -0
		 -0.31526851927339061 -4.1175003486713431 -0.84111836428204012 1;
	setAttr ".pm[38]" -type "matrix" 0.85074581735119792 0.14817026903880434 -0.50425898666499791 -0
		 -0.035601726522438017 0.97348093880572806 0.22598092585556945 0 0.52437016632152489 -0.17429983693304779 0.83345995435716613 -0
		 -0.54266115293508965 -4.2561403836399734 -0.84111836428203923 1;
	setAttr ".pm[39]" -type "matrix" -0.51836859257157597 0.80319048658789161 -0.2935626755738362 -0
		 0.85499374135413664 0.49348852949922861 -0.15954552171071609 -0 0.016724367869042668 -0.33369763785108691 -0.94253179363456308 -0
		 -4.8180154521350591 -3.4553778402904016 -0.7848661515675518 1;
	setAttr ".pm[40]" -type "matrix" 0.13331225767208435 -0.9465985408103601 0.29356267557383614 -0
		 0.96950646724456246 0.18601730154215074 0.15954552171071607 0 -0.20563329478793038 0.26334153880972577 0.94253179363456319 -0
		 -6.3757106097054148 -0.94555417178716261 0.7848661515675518 1;
	setAttr ".pm[41]" -type "matrix" 0.95562517126066493 0.024525243382202185 0.2935626755738362 -0
		 -0.074275015140186543 0.98439242613298306 0.15954552171071609 0 -0.28506798167972303 -0.17427008868151553 0.94253179363456319 -0
		 0.085391099712523177 -7.5497824375075142 0.78486615156755213 1;
	setAttr ".pm[42]" -type "matrix" -0.16932532307067247 0.96527649990704545 -0.19892263243335806 -0
		 0.98556021377032699 0.16584045593116589 -0.034176135087669167 -0 1.3183898417423744e-16 -0.2018371172598033 -0.97941910237459295 -0
		 -5.7236422783817282 -1.9839300723893565 -0.95909989525908557 1;
	setAttr ".pm[43]" -type "matrix" 0.62316378607661982 -0.75637073054715476 0.19892263243335795 -0
		 0.7669143872697135 0.64083875849482563 0.034176135087669222 0 -0.15332716106865452 0.13125929903200931 0.97941910237459284 -0
		 -6.1360967711649694 -4.1170383759049205 0.95909989525908523 1;
	setAttr ".pm[44]" -type "matrix" 0.98000917862884818 -0.0034345464029732859 0.19892263243335798 -0
		 -0.0034345464029732738 0.99940992374574489 0.034176135087669222 0 -0.19892263243335823 -0.034176135087669333 0.97941910237459295 -0
		 -1.6944175488132156 -8.489243544670618 0.95909989525908523 1;
	setAttr ".gm" -type "matrix" 0.15837777301350067 0.00033604978785740502 0.019955156822722718 0
		 -0.0049405971660277824 2.3284668069611176 -6.3113361338737083e-20 0 -0.019955111902441109 -4.2341238886560659e-05 0.15837812953238176 0
		 1.3355121684236715 6.7757255861608829 -0.74918741214069884 1;
	setAttr -s 17 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 17 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 17 ".ifcl";
createNode skinCluster -n "skinCluster12";
	rename -uid "CE3BB63E-7A49-4D1A-9E18-42AF6A108A8B";
	setAttr -s 12 ".wl";
	setAttr ".wl[0:11].w"
		1 20 1
		2 20 0.92885944423558264 21 0.071140555764417301
		2 20 0.98936941165254677 21 0.010630588347453195
		2 20 0.86647713784937641 21 0.13352286215062359
		1 20 1
		2 20 0.96286022527490767 21 0.037139774725092285
		2 20 0.85845449319850076 21 0.14154550680149922
		2 20 0.96859338353674862 21 0.031406616463251415
		2 20 0.99584603335821231 21 0.0041539666417876684
		2 20 0.83986794022535904 21 0.1601320597746409
		2 20 0.98000111387490885 21 0.019998886125091125
		2 20 0.99298094352003941 21 0.0070190564799605558;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.012728295233860504 0.99991782735513501 -0.0015261185493631081 -0
		 0.99280702824109124 0.012819459325065943 0.11903724685032832 -0 0.11904702925958592 1.0690233420707081e-16 -0.99288861652476801 -0
		 -0.90795101870048134 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513461 0.91862659735055918 -0.041563650809936667 -0
		 0.89526386431128191 0.39248175502475208 0.21085702556737568 -0 0.210011846539538 0.045642596473303453 -0.9766328776465748 -0
		 -0.37507697621182828 -2.8657604802815309 -0.94611761528610516 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402895 0.9445447650793507 0.045683164274527482 -0
		 0.94422144490049698 0.32697288226068943 -0.039173935928819348 0 -0.051938692002751134 0.030396069274366267 -0.99818758319551948 0
		 -1.5297596850582682 -2.7773530357943352 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790586 0.99329326174337518 0.045683164274527482 -0
		 0.99337604742855179 0.10802514123606741 -0.039173935928819348 0 -0.043846136866929383 0.041219716594552334 -0.99818758319551959 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810515 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885265 0.99890059027644973 0.045683164274527607 -0
		 0.99915653175010688 0.012313724251499982 -0.039173935928819466 0 -0.039693397610562217 0.045232542935574056 -0.99818758319551937 0
		 -3.4912318179848607 -1.9040448117726043 -0.56315261966810481 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871752 -0.9779020118066285 -0.091812310658712079 -0
		 0.96088145788389734 0.20231395106606309 -0.18914515351696121 -0 0.20354033747357872 -0.052694596578666153 0.9776474878567194 -0
		 -4.1608222065879765 0.98034715670107386 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.849256614102049 -0.40332677146099288 -0
		 0.89689896658620161 0.4222537097758039 -0.13143077385899588 -0 0.28192467949760502 -0.31696215544524442 0.90556803560289056 -0
		 -4.6827584700038933 -0.43291834424742021 1.8868280135693325 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143826 -0.47572266972118704 -0
		 0.74200082470018769 0.64087873460052991 -0.19674659763529495 -0 0.4473524375790161 -0.25474905055727082 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547873 -0.45027497011225115 -0.47572266972118704 -0
		 0.40753183853562547 0.89174468145243679 -0.19674659763529498 -0 0.51281322894014236 -0.045209229054513987 0.85730899787199377 -0
		 -3.7930210190858711 -3.6363074555288435 2.3527934785693625 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988877 -0.60770287165339087 -0
		 -0.15684837943322541 0.97734058610779651 -0.14214065082037369 0 0.58840109184103584 0.20806465329722415 0.78134067804548823 -0
		 -1.2358328313690483 -5.3627024397852345 2.4055843427903012 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304327 0.42405058758597708 -0.53977069894956764 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867554 0.18573444686090734 0.83774129179212098 -0
		 0.1968172812762447 -5.9805478664821443 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348465 0.49094017626205783 -0.60972944210779889 -0
		 -0.5253983994062138 0.83932464881653146 0.13960893879116207 0 0.58030058688812003 0.23347778742481168 0.78021750277503932 -0
		 0.47614274721700267 -5.961344900019987 0.95798160440020297 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516239 0.60280760005635936 -0.65335941194369052 -0
		 -0.66368542414675347 0.72082410497382132 0.19983560109207887 0 0.5914196324406692 0.34210467258279464 0.7301966936112233 -0
		 1.1441516084105745 -5.8141102579502952 0.85898842630906724 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387919 -0.10503749339307361 -0.91693018807666515 -0
		 0.17781968135064385 0.98332967287429862 -0.037985725862222486 -0 0.90563458731928081 -0.14842465909216213 0.39723559108470113 -0
		 -3.0698135514498937 -3.9119159816185101 3.2206463961358001 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042264 0.077623837547557792 -0.3834011912353672 -0
		 0.20793806673474038 0.92724908623729163 -0.31140149722621147 -0 0.33133622500252974 -0.36631089516488313 -0.86950137095037139 -0
		 1.3350913447026536 -3.8738355210740298 3.8541836841977992 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364847 -0.094924216888717688 0.38340119123536714 -0
		 -0.031825581119802333 0.94974535529880866 0.31140149722621158 0 -0.39369304385399273 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558672 -3.7939732910568535 -3.8541836841977997 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071677 -0.39002924497921759 0.452124470705772 -0
		 0.2418572836977026 0.90452625422546051 0.35119411973896503 -0 -0.54593443129409036 -0.17236427552656972 0.81990618563942996 -0
		 -4.4547110826954048 -2.2284950952224647 -4.392248129419202 1;
	setAttr ".pm[18]" -type "matrix" 0.8806009698142695 -0.14186400160433182 0.45212447070577194 -0
		 -0.029550252819743231 0.93583624252273023 0.35119411973896497 0 -0.47293626898394825 -0.32262227485054945 0.81990618563942974 -0
		 -4.8264647244913848 -3.7828002607320328 -4.3922481294192028 1;
	setAttr ".pm[19]" -type "matrix" 0.04444990963230469 -0.99486331132534522 -0.090946123130399792 -0
		 0.99875087560877895 0.046333564308836124 -0.018705327827550827 -0 0.022823102426645002 -0.090001069978133355 0.99568012604370837 -0
		 -5.1987338443485154 1.1631347543266388 0.9593990667563872 1;
	setAttr ".pm[20]" -type "matrix" 0.59746412934814974 -0.79672166835715486 -0.090946123130399792 -0
		 0.79887115989862156 0.60121126119950097 -0.018705327827550827 -0 0.06958077338236654 -0.061478472468806014 0.99568012604370837 -0
		 -6.0311161264281017 -2.7072772985180777 0.9593990667563872 1;
	setAttr ".pm[21]" -type "matrix" 0.86518594954605277 0.49313494643519812 -0.090946123130399764 -0
		 -0.49658384305064746 0.86778718447088932 -0.018705327827550817 0 0.069697629293580379 0.061345962152701043 0.99568012604370804 -0
		 1.7365891972474419 -7.8707547550432926 0.95939906675638709 1;
	setAttr ".pm[22]" -type "matrix" 0.99585451783966294 -0.0016068558999377096 -0.090946123130399764 -0
		 -9.4996095158742211e-05 0.99982503553702085 -0.018705327827550817 0 0.090960267557186225 0.018636424751305627 0.99568012604370815 -0
		 -3.6603758191881481 -6.9736763934885175 0.95939906675638698 1;
	setAttr ".pm[23]" -type "matrix" -0.32924786964475911 0.69647275897298944 0.63759041424957197 -0
		 0.89339606886512035 0.44836933267261597 -0.02843247535938619 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461437 0
		 -3.5395339554045822 -2.4005302806614881 -1.426859062061397 1;
	setAttr ".pm[24]" -type "matrix" -0.2788948936776629 0.7069333932652262 0.64997139611450527 -0
		 0.8885321965626376 0.44672740812313078 -0.10461911155789998 0 -0.36431878067442514 0.54834277629791328 -0.75272307373282876 0
		 -4.0483565879838146 -2.4178888731886139 -1.0785180430682908 1;
	setAttr ".pm[25]" -type "matrix" -0.23031898058193831 0.6528205623008978 0.72164983241239422 -0
		 0.83303853881336309 0.51558677386086182 -0.20054194441922923 0 -0.50299101387141465 0.55497350572517268 -0.66257410748362211 0
		 -4.4246285444210187 -2.6889499752129313 -0.5852217214780755 1;
	setAttr ".pm[26]" -type "matrix" -0.43594206856657181 0.59749643679491382 0.67301747441747795 -0
		 0.7008473455733657 0.69452627827057267 -0.16262302110831151 0 -0.5645949973712715 0.40078829425147744 -0.72152701414037557 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020237 1;
	setAttr ".pm[27]" -type "matrix" -0.80828667061645421 0.2506903381799318 0.53275417637687217 -0
		 0.21819681833351881 0.96794042383007672 -0.12442461325951773 0 -0.54686635165540887 0.015674509845052274 -0.83707317671050763 0
		 -1.278220982043448 -5.4701710369415641 -1.0637098843123747 1;
	setAttr ".pm[28]" -type "matrix" -0.82004746298995335 -0.20903383935798978 0.53275417637687217 -0
		 -0.32022389937182466 0.93913533097542601 -0.12442461325951776 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050752 0
		 1.4741587314170379 -5.4790257814298382 -1.0637098843123742 1;
	setAttr ".pm[29]" -type "matrix" -0.68115616977266769 -0.5822485630455535 0.44386133331482847 -0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048567 0 -0.16426653899654681 -0.4692574321309736 -0.86764852708682749 0
		 3.7155105341486685 -4.2535038943938588 -0.56138920422851701 1;
	setAttr ".pm[30]" -type "matrix" -0.50408143703462183 -0.80314784176126897 0.31757746946426541 0
		 -0.83807469275740265 0.36604707764536509 -0.40452484016049428 0 0.20864494769031905 -0.47006710289224019 -0.85761541764464611 -0
		 4.7675519887131355 -2.6983875271677138 0.40050570930127832 1;
	setAttr ".pm[31]" -type "matrix" -0.13887805416914528 -0.9736202144440087 0.18104298963559595 0
		 -0.84422276414869568 0.020829102434948937 -0.53558759599610806 0 0.51768794709103294 -0.22722197630897611 -0.82484505388522256 -0
		 5.131402912047518 -0.54383195128390038 1.1062768597705592 1;
	setAttr ".pm[32]" -type "matrix" -0.44544497944150713 0.31790426679360734 -0.8369681280937612 0
		 -0.53604559259280804 0.65406161496897952 0.53372139406810004 0 0.71710103399185066 0.68639659161347089 -0.12093728155217454 -0
		 3.5487087479939037 -1.8700671021165951 -2.7925192544727233 1;
	setAttr ".pm[33]" -type "matrix" -0.052113644842616026 -0.12229877356956341 -0.99112419908132532 0
		 -0.12985134008384805 0.98487688501104831 -0.11470026525411023 0 0.99016301561896736 0.12272135655343426 -0.067206183837786579 -0
		 1.5808752886267781 -4.2107979269501721 0.024886578657810372 1;
	setAttr ".pm[34]" -type "matrix" 0.51285923410589029 0.15316128048266991 0.84469937146491858 -0
		 -0.35222853801336468 0.93486282786315433 0.044345801251915153 0 -0.78288598339814941 -0.3202703783377655 0.53340080779662979 -0
		 1.1996854652596878 -4.1723182493855946 0.61489409327925182 1;
	setAttr ".pm[35]" -type "matrix" -0.73333549252294605 0.11850971777536495 0.66945836479868692 -0
		 0.055614854265168837 0.99184696103279268 -0.11465859703955258 0 -0.67758840263923692 -0.046851389337113004 -0.73394748035945334 0
		 -1.6184639253570574 -4.1509626321413302 0.61671609555364271 1;
	setAttr ".pm[36]" -type "matrix" 0.71787470010069721 0.19100108051108461 -0.66945836479868681 -0
		 -0.15418153999379064 0.98136713764526728 0.1146585970395526 0 0.67888435515960788 0.020907615682650958 0.73394748035945312 -0
		 2.987810459616135 -3.9063461047656256 -0.61671609555364337 1;
	setAttr ".pm[37]" -type "matrix" 0.86346497510865083 0.01229272663840846 -0.50425898666499791 -0
		 0.11820591342388179 0.96693328786482802 0.22598092585556948 -0 0.49036272165840966 -0.25473300863984616 0.83345995435716624 -0
		 -0.31526851927339061 -4.1175003486713431 -0.84111836428204012 1;
	setAttr ".pm[38]" -type "matrix" 0.85074581735119792 0.14817026903880434 -0.50425898666499791 -0
		 -0.035601726522438017 0.97348093880572806 0.22598092585556945 0 0.52437016632152489 -0.17429983693304779 0.83345995435716613 -0
		 -0.54266115293508965 -4.2561403836399734 -0.84111836428203923 1;
	setAttr ".pm[39]" -type "matrix" -0.51836859257157597 0.80319048658789161 -0.2935626755738362 -0
		 0.85499374135413664 0.49348852949922861 -0.15954552171071609 -0 0.016724367869042668 -0.33369763785108691 -0.94253179363456308 -0
		 -4.8180154521350591 -3.4553778402904016 -0.7848661515675518 1;
	setAttr ".pm[40]" -type "matrix" 0.13331225767208435 -0.9465985408103601 0.29356267557383614 -0
		 0.96950646724456246 0.18601730154215074 0.15954552171071607 0 -0.20563329478793038 0.26334153880972577 0.94253179363456319 -0
		 -6.3757106097054148 -0.94555417178716261 0.7848661515675518 1;
	setAttr ".pm[41]" -type "matrix" 0.95562517126066493 0.024525243382202185 0.2935626755738362 -0
		 -0.074275015140186543 0.98439242613298306 0.15954552171071609 0 -0.28506798167972303 -0.17427008868151553 0.94253179363456319 -0
		 0.085391099712523177 -7.5497824375075142 0.78486615156755213 1;
	setAttr ".pm[42]" -type "matrix" -0.16932532307067247 0.96527649990704545 -0.19892263243335806 -0
		 0.98556021377032699 0.16584045593116589 -0.034176135087669167 -0 1.3183898417423744e-16 -0.2018371172598033 -0.97941910237459295 -0
		 -5.7236422783817282 -1.9839300723893565 -0.95909989525908557 1;
	setAttr ".pm[43]" -type "matrix" 0.62316378607661982 -0.75637073054715476 0.19892263243335795 -0
		 0.7669143872697135 0.64083875849482563 0.034176135087669222 0 -0.15332716106865452 0.13125929903200931 0.97941910237459284 -0
		 -6.1360967711649694 -4.1170383759049205 0.95909989525908523 1;
	setAttr ".pm[44]" -type "matrix" 0.98000917862884818 -0.0034345464029732859 0.19892263243335798 -0
		 -0.0034345464029732738 0.99940992374574489 0.034176135087669222 0 -0.19892263243335823 -0.034176135087669333 0.97941910237459295 -0
		 -1.6944175488132156 -8.489243544670618 0.95909989525908523 1;
	setAttr ".gm" -type "matrix" 0.15837777301350067 0.00033604978785740502 0.019955156822722718 0
		 -0.0049405971660277824 2.3284668069611176 -6.3113361338737083e-20 0 -0.019955111902441109 -4.2341238886560659e-05 0.15837812953238176 0
		 1.3355121684236715 6.7757255861608829 -0.74918741214069884 1;
	setAttr -s 7 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 7 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 7 ".ifcl";
createNode skinCluster -n "skinCluster14";
	rename -uid "BB6C9D64-344D-CF34-129B-5D9033CBC771";
	setAttr -s 30 ".wl";
	setAttr ".wl[0:29].w"
		3 42 0.10953835739299582 43 0.88703014288673498 44 0.0034314997202691934
		3 42 0.12901161936793049 43 0.86679931229322649 44 0.0041890683388430237
		3 42 0.015321141046156428 43 0.92317405560336985 44 0.061504803350473737
		3 42 0.024809087678734444 43 0.90485669355426801 44 0.070334218766997483
		3 42 0.10408925018744317 43 0.89288422500967879 44 0.0030265248028780584
		3 42 0.014530843599709235 43 0.93883886635414593 44 0.04663029004614485
		3 42 0.022034199139453241 43 0.96789301578140052 44 0.010072785079146223
		3 42 0.041431166954694648 43 0.9429631946512731 44 0.015605638394032251
		3 42 0.034760553066158939 43 0.94942306636882035 44 0.015816380565020584
		3 42 0.11670929807290065 43 0.87972655012473089 44 0.0035641518023685394
		3 42 0.034297488494399037 43 0.9522694314831307 44 0.013433080022470321
		3 42 0.015119006130084834 43 0.92445192089747463 44 0.060429072972440483
		3 42 0.12420275652490213 43 0.87190935030909256 44 0.0038878931660053621
		3 42 0.04029206891599979 43 0.94391953911530413 44 0.01578839196869607
		3 42 0.019439835277606361 43 0.90780916892358543 44 0.07275099579880813
		3 42 0.023495620033565538 43 0.66069148762768382 44 0.31581289233875065
		3 42 0.0049131836420331556 43 0.71785338573306934 44 0.27723343062489753
		3 42 0.0024178266590555351 43 0.79691456999701826 44 0.20066760334392614
		3 42 0.0040120460366904987 43 0.72896855435920394 44 0.26701939960410559
		3 42 0.015974216390745442 43 0.69258706485625987 44 0.29143871875299465
		3 42 0.0017333415989380697 43 0.50080959787441259 44 0.4974570605266494
		3 42 0.00029286129235941218 43 0.50020757588040887 44 0.49949956282723174
		3 42 5.8142562746256481e-05 43 0.50149916631293556 44 0.49844269112431816
		3 42 0.00010211193495985941 43 0.50006053959085139 44 0.49983734847418881
		3 42 0.00079937542097908596 43 0.49983933128936425 44 0.49936129328965667
		3 42 0.00075949360340930741 43 0.49962025319829539 44 0.49962025319829539
		3 42 0.00085351313142150928 43 0.49957324343428916 44 0.49957324343428938
		3 42 0.00085597243960959871 43 0.49957201378019517 44 0.49957201378019517
		3 42 0.00082193993978557959 43 0.49958903003010724 44 0.49958903003010713
		3 42 0.00074970198057176059 43 0.49962514900971411 44 0.49962514900971411;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.012728295233860504 0.99991782735513501 -0.0015261185493631081 -0
		 0.99280702824109124 0.012819459325065943 0.11903724685032832 -0 0.11904702925958592 1.0690233420707081e-16 -0.99288861652476801 -0
		 -0.90795101870048134 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513461 0.91862659735055918 -0.041563650809936667 -0
		 0.89526386431128191 0.39248175502475208 0.21085702556737568 -0 0.210011846539538 0.045642596473303453 -0.9766328776465748 -0
		 -0.37507697621182828 -2.8657604802815309 -0.94611761528610516 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402895 0.9445447650793507 0.045683164274527482 -0
		 0.94422144490049698 0.32697288226068943 -0.039173935928819348 0 -0.051938692002751134 0.030396069274366267 -0.99818758319551948 0
		 -1.5297596850582682 -2.7773530357943352 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790586 0.99329326174337518 0.045683164274527482 -0
		 0.99337604742855179 0.10802514123606741 -0.039173935928819348 0 -0.043846136866929383 0.041219716594552334 -0.99818758319551959 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810515 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885265 0.99890059027644973 0.045683164274527607 -0
		 0.99915653175010688 0.012313724251499982 -0.039173935928819466 0 -0.039693397610562217 0.045232542935574056 -0.99818758319551937 0
		 -3.4912318179848607 -1.9040448117726043 -0.56315261966810481 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871752 -0.9779020118066285 -0.091812310658712079 -0
		 0.96088145788389734 0.20231395106606309 -0.18914515351696121 -0 0.20354033747357872 -0.052694596578666153 0.9776474878567194 -0
		 -4.1608222065879765 0.98034715670107386 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.849256614102049 -0.40332677146099288 -0
		 0.89689896658620161 0.4222537097758039 -0.13143077385899588 -0 0.28192467949760502 -0.31696215544524442 0.90556803560289056 -0
		 -4.6827584700038933 -0.43291834424742021 1.8868280135693325 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143826 -0.47572266972118704 -0
		 0.74200082470018769 0.64087873460052991 -0.19674659763529495 -0 0.4473524375790161 -0.25474905055727082 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547873 -0.45027497011225115 -0.47572266972118704 -0
		 0.40753183853562547 0.89174468145243679 -0.19674659763529498 -0 0.51281322894014236 -0.045209229054513987 0.85730899787199377 -0
		 -3.7930210190858711 -3.6363074555288435 2.3527934785693625 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988877 -0.60770287165339087 -0
		 -0.15684837943322541 0.97734058610779651 -0.14214065082037369 0 0.58840109184103584 0.20806465329722415 0.78134067804548823 -0
		 -1.2358328313690483 -5.3627024397852345 2.4055843427903012 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304327 0.42405058758597708 -0.53977069894956764 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867554 0.18573444686090734 0.83774129179212098 -0
		 0.1968172812762447 -5.9805478664821443 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348465 0.49094017626205783 -0.60972944210779889 -0
		 -0.5253983994062138 0.83932464881653146 0.13960893879116207 0 0.58030058688812003 0.23347778742481168 0.78021750277503932 -0
		 0.47614274721700267 -5.961344900019987 0.95798160440020297 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516239 0.60280760005635936 -0.65335941194369052 -0
		 -0.66368542414675347 0.72082410497382132 0.19983560109207887 0 0.5914196324406692 0.34210467258279464 0.7301966936112233 -0
		 1.1441516084105745 -5.8141102579502952 0.85898842630906724 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387919 -0.10503749339307361 -0.91693018807666515 -0
		 0.17781968135064385 0.98332967287429862 -0.037985725862222486 -0 0.90563458731928081 -0.14842465909216213 0.39723559108470113 -0
		 -3.0698135514498937 -3.9119159816185101 3.2206463961358001 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042264 0.077623837547557792 -0.3834011912353672 -0
		 0.20793806673474038 0.92724908623729163 -0.31140149722621147 -0 0.33133622500252974 -0.36631089516488313 -0.86950137095037139 -0
		 1.3350913447026536 -3.8738355210740298 3.8541836841977992 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364847 -0.094924216888717688 0.38340119123536714 -0
		 -0.031825581119802333 0.94974535529880866 0.31140149722621158 0 -0.39369304385399273 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558672 -3.7939732910568535 -3.8541836841977997 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071677 -0.39002924497921759 0.452124470705772 -0
		 0.2418572836977026 0.90452625422546051 0.35119411973896503 -0 -0.54593443129409036 -0.17236427552656972 0.81990618563942996 -0
		 -4.4547110826954048 -2.2284950952224647 -4.392248129419202 1;
	setAttr ".pm[18]" -type "matrix" 0.8806009698142695 -0.14186400160433182 0.45212447070577194 -0
		 -0.029550252819743231 0.93583624252273023 0.35119411973896497 0 -0.47293626898394825 -0.32262227485054945 0.81990618563942974 -0
		 -4.8264647244913848 -3.7828002607320328 -4.3922481294192028 1;
	setAttr ".pm[19]" -type "matrix" 0.04444990963230469 -0.99486331132534522 -0.090946123130399792 -0
		 0.99875087560877895 0.046333564308836124 -0.018705327827550827 -0 0.022823102426645002 -0.090001069978133355 0.99568012604370837 -0
		 -5.1987338443485154 1.1631347543266388 0.9593990667563872 1;
	setAttr ".pm[20]" -type "matrix" 0.59746412934814974 -0.79672166835715486 -0.090946123130399792 -0
		 0.79887115989862156 0.60121126119950097 -0.018705327827550827 -0 0.06958077338236654 -0.061478472468806014 0.99568012604370837 -0
		 -6.0311161264281017 -2.7072772985180777 0.9593990667563872 1;
	setAttr ".pm[21]" -type "matrix" 0.86518594954605277 0.49313494643519812 -0.090946123130399764 -0
		 -0.49658384305064746 0.86778718447088932 -0.018705327827550817 0 0.069697629293580379 0.061345962152701043 0.99568012604370804 -0
		 1.7365891972474419 -7.8707547550432926 0.95939906675638709 1;
	setAttr ".pm[22]" -type "matrix" 0.99585451783966294 -0.0016068558999377096 -0.090946123130399764 -0
		 -9.4996095158742211e-05 0.99982503553702085 -0.018705327827550817 0 0.090960267557186225 0.018636424751305627 0.99568012604370815 -0
		 -3.6603758191881481 -6.9736763934885175 0.95939906675638698 1;
	setAttr ".pm[23]" -type "matrix" -0.32924786964475911 0.69647275897298944 0.63759041424957197 -0
		 0.89339606886512035 0.44836933267261597 -0.02843247535938619 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461437 0
		 -3.5395339554045822 -2.4005302806614881 -1.426859062061397 1;
	setAttr ".pm[24]" -type "matrix" -0.2788948936776629 0.7069333932652262 0.64997139611450527 -0
		 0.8885321965626376 0.44672740812313078 -0.10461911155789998 0 -0.36431878067442514 0.54834277629791328 -0.75272307373282876 0
		 -4.0483565879838146 -2.4178888731886139 -1.0785180430682908 1;
	setAttr ".pm[25]" -type "matrix" -0.23031898058193831 0.6528205623008978 0.72164983241239422 -0
		 0.83303853881336309 0.51558677386086182 -0.20054194441922923 0 -0.50299101387141465 0.55497350572517268 -0.66257410748362211 0
		 -4.4246285444210187 -2.6889499752129313 -0.5852217214780755 1;
	setAttr ".pm[26]" -type "matrix" -0.43594206856657181 0.59749643679491382 0.67301747441747795 -0
		 0.7008473455733657 0.69452627827057267 -0.16262302110831151 0 -0.5645949973712715 0.40078829425147744 -0.72152701414037557 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020237 1;
	setAttr ".pm[27]" -type "matrix" -0.80828667061645421 0.2506903381799318 0.53275417637687217 -0
		 0.21819681833351881 0.96794042383007672 -0.12442461325951773 0 -0.54686635165540887 0.015674509845052274 -0.83707317671050763 0
		 -1.278220982043448 -5.4701710369415641 -1.0637098843123747 1;
	setAttr ".pm[28]" -type "matrix" -0.82004746298995335 -0.20903383935798978 0.53275417637687217 -0
		 -0.32022389937182466 0.93913533097542601 -0.12442461325951776 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050752 0
		 1.4741587314170379 -5.4790257814298382 -1.0637098843123742 1;
	setAttr ".pm[29]" -type "matrix" -0.68115616977266769 -0.5822485630455535 0.44386133331482847 -0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048567 0 -0.16426653899654681 -0.4692574321309736 -0.86764852708682749 0
		 3.7155105341486685 -4.2535038943938588 -0.56138920422851701 1;
	setAttr ".pm[30]" -type "matrix" -0.50408143703462183 -0.80314784176126897 0.31757746946426541 0
		 -0.83807469275740265 0.36604707764536509 -0.40452484016049428 0 0.20864494769031905 -0.47006710289224019 -0.85761541764464611 -0
		 4.7675519887131355 -2.6983875271677138 0.40050570930127832 1;
	setAttr ".pm[31]" -type "matrix" -0.13887805416914528 -0.9736202144440087 0.18104298963559595 0
		 -0.84422276414869568 0.020829102434948937 -0.53558759599610806 0 0.51768794709103294 -0.22722197630897611 -0.82484505388522256 -0
		 5.131402912047518 -0.54383195128390038 1.1062768597705592 1;
	setAttr ".pm[32]" -type "matrix" -0.44544497944150713 0.31790426679360734 -0.8369681280937612 0
		 -0.53604559259280804 0.65406161496897952 0.53372139406810004 0 0.71710103399185066 0.68639659161347089 -0.12093728155217454 -0
		 3.5487087479939037 -1.8700671021165951 -2.7925192544727233 1;
	setAttr ".pm[33]" -type "matrix" -0.052113644842616026 -0.12229877356956341 -0.99112419908132532 0
		 -0.12985134008384805 0.98487688501104831 -0.11470026525411023 0 0.99016301561896736 0.12272135655343426 -0.067206183837786579 -0
		 1.5808752886267781 -4.2107979269501721 0.024886578657810372 1;
	setAttr ".pm[34]" -type "matrix" 0.51285923410589029 0.15316128048266991 0.84469937146491858 -0
		 -0.35222853801336468 0.93486282786315433 0.044345801251915153 0 -0.78288598339814941 -0.3202703783377655 0.53340080779662979 -0
		 1.1996854652596878 -4.1723182493855946 0.61489409327925182 1;
	setAttr ".pm[35]" -type "matrix" -0.73333549252294605 0.11850971777536495 0.66945836479868692 -0
		 0.055614854265168837 0.99184696103279268 -0.11465859703955258 0 -0.67758840263923692 -0.046851389337113004 -0.73394748035945334 0
		 -1.6184639253570574 -4.1509626321413302 0.61671609555364271 1;
	setAttr ".pm[36]" -type "matrix" 0.71787470010069721 0.19100108051108461 -0.66945836479868681 -0
		 -0.15418153999379064 0.98136713764526728 0.1146585970395526 0 0.67888435515960788 0.020907615682650958 0.73394748035945312 -0
		 2.987810459616135 -3.9063461047656256 -0.61671609555364337 1;
	setAttr ".pm[37]" -type "matrix" 0.86346497510865083 0.01229272663840846 -0.50425898666499791 -0
		 0.11820591342388179 0.96693328786482802 0.22598092585556948 -0 0.49036272165840966 -0.25473300863984616 0.83345995435716624 -0
		 -0.31526851927339061 -4.1175003486713431 -0.84111836428204012 1;
	setAttr ".pm[38]" -type "matrix" 0.85074581735119792 0.14817026903880434 -0.50425898666499791 -0
		 -0.035601726522438017 0.97348093880572806 0.22598092585556945 0 0.52437016632152489 -0.17429983693304779 0.83345995435716613 -0
		 -0.54266115293508965 -4.2561403836399734 -0.84111836428203923 1;
	setAttr ".pm[39]" -type "matrix" -0.51836859257157597 0.80319048658789161 -0.2935626755738362 -0
		 0.85499374135413664 0.49348852949922861 -0.15954552171071609 -0 0.016724367869042668 -0.33369763785108691 -0.94253179363456308 -0
		 -4.8180154521350591 -3.4553778402904016 -0.7848661515675518 1;
	setAttr ".pm[40]" -type "matrix" 0.13331225767208435 -0.9465985408103601 0.29356267557383614 -0
		 0.96950646724456246 0.18601730154215074 0.15954552171071607 0 -0.20563329478793038 0.26334153880972577 0.94253179363456319 -0
		 -6.3757106097054148 -0.94555417178716261 0.7848661515675518 1;
	setAttr ".pm[41]" -type "matrix" 0.95562517126066493 0.024525243382202185 0.2935626755738362 -0
		 -0.074275015140186543 0.98439242613298306 0.15954552171071609 0 -0.28506798167972303 -0.17427008868151553 0.94253179363456319 -0
		 0.085391099712523177 -7.5497824375075142 0.78486615156755213 1;
	setAttr ".pm[42]" -type "matrix" -0.16932532307067247 0.96527649990704545 -0.19892263243335806 -0
		 0.98556021377032699 0.16584045593116589 -0.034176135087669167 -0 1.3183898417423744e-16 -0.2018371172598033 -0.97941910237459295 -0
		 -5.7236422783817282 -1.9839300723893565 -0.95909989525908557 1;
	setAttr ".pm[43]" -type "matrix" 0.62316378607661982 -0.75637073054715476 0.19892263243335795 -0
		 0.7669143872697135 0.64083875849482563 0.034176135087669222 0 -0.15332716106865452 0.13125929903200931 0.97941910237459284 -0
		 -6.1360967711649694 -4.1170383759049205 0.95909989525908523 1;
	setAttr ".pm[44]" -type "matrix" 0.98000917862884818 -0.0034345464029732859 0.19892263243335798 -0
		 -0.0034345464029732738 0.99940992374574489 0.034176135087669222 0 -0.19892263243335823 -0.034176135087669333 0.97941910237459295 -0
		 -1.6944175488132156 -8.489243544670618 0.95909989525908523 1;
	setAttr ".gm" -type "matrix" -0.0064825443692293127 0.13452296029500724 0.0035911009450061721 0
		 -1.8910960065279039 -0.10512355111075777 0.52418953189573769 0 0.036073935570800304 -0.0017265463950238774 0.12979613416434232 0
		 1.4708110060887547 6.3662678336559191 -1.6422270724056163 1;
	setAttr -s 7 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 7 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 7 ".ifcl";
createNode skinCluster -n "skinCluster16";
	rename -uid "B44EF41D-164A-1EB6-F456-4E86F8D63886";
	setAttr -s 11 ".wl";
	setAttr ".wl[0:10].w"
		2 42 0.93858727436423861 43 0.061412725635761355
		2 42 0.49867719058286902 43 0.50132280941713092
		2 42 0.83443754274622139 43 0.16556245725377863
		2 42 0.5234952066334696 43 0.47650479336653034
		2 42 0.5 43 0.5
		2 42 0.71687156583089184 43 0.28312843416910816
		2 42 0.64071529216039147 43 0.35928470783960859
		2 42 0.83823492963263457 43 0.16176507036736554
		2 42 0.64951263783310564 43 0.35048736216689441
		2 42 0.5 43 0.5
		2 42 0.93858727436423861 43 0.061412725635761355;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.012728295233860504 0.99991782735513501 -0.0015261185493631081 -0
		 0.99280702824109124 0.012819459325065943 0.11903724685032832 -0 0.11904702925958592 1.0690233420707081e-16 -0.99288861652476801 -0
		 -0.90795101870048134 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513461 0.91862659735055918 -0.041563650809936667 -0
		 0.89526386431128191 0.39248175502475208 0.21085702556737568 -0 0.210011846539538 0.045642596473303453 -0.9766328776465748 -0
		 -0.37507697621182828 -2.8657604802815309 -0.94611761528610516 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402895 0.9445447650793507 0.045683164274527482 -0
		 0.94422144490049698 0.32697288226068943 -0.039173935928819348 0 -0.051938692002751134 0.030396069274366267 -0.99818758319551948 0
		 -1.5297596850582682 -2.7773530357943352 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790586 0.99329326174337518 0.045683164274527482 -0
		 0.99337604742855179 0.10802514123606741 -0.039173935928819348 0 -0.043846136866929383 0.041219716594552334 -0.99818758319551959 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810515 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885265 0.99890059027644973 0.045683164274527607 -0
		 0.99915653175010688 0.012313724251499982 -0.039173935928819466 0 -0.039693397610562217 0.045232542935574056 -0.99818758319551937 0
		 -3.4912318179848607 -1.9040448117726043 -0.56315261966810481 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871752 -0.9779020118066285 -0.091812310658712079 -0
		 0.96088145788389734 0.20231395106606309 -0.18914515351696121 -0 0.20354033747357872 -0.052694596578666153 0.9776474878567194 -0
		 -4.1608222065879765 0.98034715670107386 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.849256614102049 -0.40332677146099288 -0
		 0.89689896658620161 0.4222537097758039 -0.13143077385899588 -0 0.28192467949760502 -0.31696215544524442 0.90556803560289056 -0
		 -4.6827584700038933 -0.43291834424742021 1.8868280135693325 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143826 -0.47572266972118704 -0
		 0.74200082470018769 0.64087873460052991 -0.19674659763529495 -0 0.4473524375790161 -0.25474905055727082 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547873 -0.45027497011225115 -0.47572266972118704 -0
		 0.40753183853562547 0.89174468145243679 -0.19674659763529498 -0 0.51281322894014236 -0.045209229054513987 0.85730899787199377 -0
		 -3.7930210190858711 -3.6363074555288435 2.3527934785693625 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988877 -0.60770287165339087 -0
		 -0.15684837943322541 0.97734058610779651 -0.14214065082037369 0 0.58840109184103584 0.20806465329722415 0.78134067804548823 -0
		 -1.2358328313690483 -5.3627024397852345 2.4055843427903012 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304327 0.42405058758597708 -0.53977069894956764 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867554 0.18573444686090734 0.83774129179212098 -0
		 0.1968172812762447 -5.9805478664821443 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348465 0.49094017626205783 -0.60972944210779889 -0
		 -0.5253983994062138 0.83932464881653146 0.13960893879116207 0 0.58030058688812003 0.23347778742481168 0.78021750277503932 -0
		 0.47614274721700267 -5.961344900019987 0.95798160440020297 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516239 0.60280760005635936 -0.65335941194369052 -0
		 -0.66368542414675347 0.72082410497382132 0.19983560109207887 0 0.5914196324406692 0.34210467258279464 0.7301966936112233 -0
		 1.1441516084105745 -5.8141102579502952 0.85898842630906724 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387919 -0.10503749339307361 -0.91693018807666515 -0
		 0.17781968135064385 0.98332967287429862 -0.037985725862222486 -0 0.90563458731928081 -0.14842465909216213 0.39723559108470113 -0
		 -3.0698135514498937 -3.9119159816185101 3.2206463961358001 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042264 0.077623837547557792 -0.3834011912353672 -0
		 0.20793806673474038 0.92724908623729163 -0.31140149722621147 -0 0.33133622500252974 -0.36631089516488313 -0.86950137095037139 -0
		 1.3350913447026536 -3.8738355210740298 3.8541836841977992 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364847 -0.094924216888717688 0.38340119123536714 -0
		 -0.031825581119802333 0.94974535529880866 0.31140149722621158 0 -0.39369304385399273 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558672 -3.7939732910568535 -3.8541836841977997 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071677 -0.39002924497921759 0.452124470705772 -0
		 0.2418572836977026 0.90452625422546051 0.35119411973896503 -0 -0.54593443129409036 -0.17236427552656972 0.81990618563942996 -0
		 -4.4547110826954048 -2.2284950952224647 -4.392248129419202 1;
	setAttr ".pm[18]" -type "matrix" 0.8806009698142695 -0.14186400160433182 0.45212447070577194 -0
		 -0.029550252819743231 0.93583624252273023 0.35119411973896497 0 -0.47293626898394825 -0.32262227485054945 0.81990618563942974 -0
		 -4.8264647244913848 -3.7828002607320328 -4.3922481294192028 1;
	setAttr ".pm[19]" -type "matrix" 0.04444990963230469 -0.99486331132534522 -0.090946123130399792 -0
		 0.99875087560877895 0.046333564308836124 -0.018705327827550827 -0 0.022823102426645002 -0.090001069978133355 0.99568012604370837 -0
		 -5.1987338443485154 1.1631347543266388 0.9593990667563872 1;
	setAttr ".pm[20]" -type "matrix" 0.59746412934814974 -0.79672166835715486 -0.090946123130399792 -0
		 0.79887115989862156 0.60121126119950097 -0.018705327827550827 -0 0.06958077338236654 -0.061478472468806014 0.99568012604370837 -0
		 -6.0311161264281017 -2.7072772985180777 0.9593990667563872 1;
	setAttr ".pm[21]" -type "matrix" 0.86518594954605277 0.49313494643519812 -0.090946123130399764 -0
		 -0.49658384305064746 0.86778718447088932 -0.018705327827550817 0 0.069697629293580379 0.061345962152701043 0.99568012604370804 -0
		 1.7365891972474419 -7.8707547550432926 0.95939906675638709 1;
	setAttr ".pm[22]" -type "matrix" 0.99585451783966294 -0.0016068558999377096 -0.090946123130399764 -0
		 -9.4996095158742211e-05 0.99982503553702085 -0.018705327827550817 0 0.090960267557186225 0.018636424751305627 0.99568012604370815 -0
		 -3.6603758191881481 -6.9736763934885175 0.95939906675638698 1;
	setAttr ".pm[23]" -type "matrix" -0.32924786964475911 0.69647275897298944 0.63759041424957197 -0
		 0.89339606886512035 0.44836933267261597 -0.02843247535938619 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461437 0
		 -3.5395339554045822 -2.4005302806614881 -1.426859062061397 1;
	setAttr ".pm[24]" -type "matrix" -0.2788948936776629 0.7069333932652262 0.64997139611450527 -0
		 0.8885321965626376 0.44672740812313078 -0.10461911155789998 0 -0.36431878067442514 0.54834277629791328 -0.75272307373282876 0
		 -4.0483565879838146 -2.4178888731886139 -1.0785180430682908 1;
	setAttr ".pm[25]" -type "matrix" -0.23031898058193831 0.6528205623008978 0.72164983241239422 -0
		 0.83303853881336309 0.51558677386086182 -0.20054194441922923 0 -0.50299101387141465 0.55497350572517268 -0.66257410748362211 0
		 -4.4246285444210187 -2.6889499752129313 -0.5852217214780755 1;
	setAttr ".pm[26]" -type "matrix" -0.43594206856657181 0.59749643679491382 0.67301747441747795 -0
		 0.7008473455733657 0.69452627827057267 -0.16262302110831151 0 -0.5645949973712715 0.40078829425147744 -0.72152701414037557 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020237 1;
	setAttr ".pm[27]" -type "matrix" -0.80828667061645421 0.2506903381799318 0.53275417637687217 -0
		 0.21819681833351881 0.96794042383007672 -0.12442461325951773 0 -0.54686635165540887 0.015674509845052274 -0.83707317671050763 0
		 -1.278220982043448 -5.4701710369415641 -1.0637098843123747 1;
	setAttr ".pm[28]" -type "matrix" -0.82004746298995335 -0.20903383935798978 0.53275417637687217 -0
		 -0.32022389937182466 0.93913533097542601 -0.12442461325951776 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050752 0
		 1.4741587314170379 -5.4790257814298382 -1.0637098843123742 1;
	setAttr ".pm[29]" -type "matrix" -0.68115616977266769 -0.5822485630455535 0.44386133331482847 -0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048567 0 -0.16426653899654681 -0.4692574321309736 -0.86764852708682749 0
		 3.7155105341486685 -4.2535038943938588 -0.56138920422851701 1;
	setAttr ".pm[30]" -type "matrix" -0.50408143703462183 -0.80314784176126897 0.31757746946426541 0
		 -0.83807469275740265 0.36604707764536509 -0.40452484016049428 0 0.20864494769031905 -0.47006710289224019 -0.85761541764464611 -0
		 4.7675519887131355 -2.6983875271677138 0.40050570930127832 1;
	setAttr ".pm[31]" -type "matrix" -0.13887805416914528 -0.9736202144440087 0.18104298963559595 0
		 -0.84422276414869568 0.020829102434948937 -0.53558759599610806 0 0.51768794709103294 -0.22722197630897611 -0.82484505388522256 -0
		 5.131402912047518 -0.54383195128390038 1.1062768597705592 1;
	setAttr ".pm[32]" -type "matrix" -0.44544497944150713 0.31790426679360734 -0.8369681280937612 0
		 -0.53604559259280804 0.65406161496897952 0.53372139406810004 0 0.71710103399185066 0.68639659161347089 -0.12093728155217454 -0
		 3.5487087479939037 -1.8700671021165951 -2.7925192544727233 1;
	setAttr ".pm[33]" -type "matrix" -0.052113644842616026 -0.12229877356956341 -0.99112419908132532 0
		 -0.12985134008384805 0.98487688501104831 -0.11470026525411023 0 0.99016301561896736 0.12272135655343426 -0.067206183837786579 -0
		 1.5808752886267781 -4.2107979269501721 0.024886578657810372 1;
	setAttr ".pm[34]" -type "matrix" 0.51285923410589029 0.15316128048266991 0.84469937146491858 -0
		 -0.35222853801336468 0.93486282786315433 0.044345801251915153 0 -0.78288598339814941 -0.3202703783377655 0.53340080779662979 -0
		 1.1996854652596878 -4.1723182493855946 0.61489409327925182 1;
	setAttr ".pm[35]" -type "matrix" -0.73333549252294605 0.11850971777536495 0.66945836479868692 -0
		 0.055614854265168837 0.99184696103279268 -0.11465859703955258 0 -0.67758840263923692 -0.046851389337113004 -0.73394748035945334 0
		 -1.6184639253570574 -4.1509626321413302 0.61671609555364271 1;
	setAttr ".pm[36]" -type "matrix" 0.71787470010069721 0.19100108051108461 -0.66945836479868681 -0
		 -0.15418153999379064 0.98136713764526728 0.1146585970395526 0 0.67888435515960788 0.020907615682650958 0.73394748035945312 -0
		 2.987810459616135 -3.9063461047656256 -0.61671609555364337 1;
	setAttr ".pm[37]" -type "matrix" 0.86346497510865083 0.01229272663840846 -0.50425898666499791 -0
		 0.11820591342388179 0.96693328786482802 0.22598092585556948 -0 0.49036272165840966 -0.25473300863984616 0.83345995435716624 -0
		 -0.31526851927339061 -4.1175003486713431 -0.84111836428204012 1;
	setAttr ".pm[38]" -type "matrix" 0.85074581735119792 0.14817026903880434 -0.50425898666499791 -0
		 -0.035601726522438017 0.97348093880572806 0.22598092585556945 0 0.52437016632152489 -0.17429983693304779 0.83345995435716613 -0
		 -0.54266115293508965 -4.2561403836399734 -0.84111836428203923 1;
	setAttr ".pm[39]" -type "matrix" -0.51836859257157597 0.80319048658789161 -0.2935626755738362 -0
		 0.85499374135413664 0.49348852949922861 -0.15954552171071609 -0 0.016724367869042668 -0.33369763785108691 -0.94253179363456308 -0
		 -4.8180154521350591 -3.4553778402904016 -0.7848661515675518 1;
	setAttr ".pm[40]" -type "matrix" 0.13331225767208435 -0.9465985408103601 0.29356267557383614 -0
		 0.96950646724456246 0.18601730154215074 0.15954552171071607 0 -0.20563329478793038 0.26334153880972577 0.94253179363456319 -0
		 -6.3757106097054148 -0.94555417178716261 0.7848661515675518 1;
	setAttr ".pm[41]" -type "matrix" 0.95562517126066493 0.024525243382202185 0.2935626755738362 -0
		 -0.074275015140186543 0.98439242613298306 0.15954552171071609 0 -0.28506798167972303 -0.17427008868151553 0.94253179363456319 -0
		 0.085391099712523177 -7.5497824375075142 0.78486615156755213 1;
	setAttr ".pm[42]" -type "matrix" -0.16932532307067247 0.96527649990704545 -0.19892263243335806 -0
		 0.98556021377032699 0.16584045593116589 -0.034176135087669167 -0 1.3183898417423744e-16 -0.2018371172598033 -0.97941910237459295 -0
		 -5.7236422783817282 -1.9839300723893565 -0.95909989525908557 1;
	setAttr ".pm[43]" -type "matrix" 0.62316378607661982 -0.75637073054715476 0.19892263243335795 -0
		 0.7669143872697135 0.64083875849482563 0.034176135087669222 0 -0.15332716106865452 0.13125929903200931 0.97941910237459284 -0
		 -6.1360967711649694 -4.1170383759049205 0.95909989525908523 1;
	setAttr ".pm[44]" -type "matrix" 0.98000917862884818 -0.0034345464029732859 0.19892263243335798 -0
		 -0.0034345464029732738 0.99940992374574489 0.034176135087669222 0 -0.19892263243335823 -0.034176135087669333 0.97941910237459295 -0
		 -1.6944175488132156 -8.489243544670618 0.95909989525908523 1;
	setAttr ".gm" -type "matrix" 0.13782292497074947 0.075497158347951815 -0.028051036199876648 0
		 -1.0896093798392026 2.0510396279898138 0.16664310487355324 0 0.030111964527850383 0.003262840119822964 0.15673054477229795 0
		 0.27419955463428974 6.5790521016608334 -1.2958738050987137 1;
	setAttr -s 6 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode skinCluster -n "skinCluster15";
	rename -uid "D51A941F-F640-14F5-9F4F-66A5C947A6E8";
	setAttr -s 56 ".wl";
	setAttr ".wl[0:55].w"
		5 24 0.068254097182434928 25 0.41163085429153706 26 0.41176158127888135 
		27 0.094461161638093413 28 0.013892305609053303
		5 24 0.074931710554887565 25 0.39861204160043828 26 0.40261850360972479 
		27 0.10654356244596849 28 0.017294181788980921
		5 24 0.091784047162216068 25 0.43092049609958077 26 0.39138545314353179 
		27 0.07318275011230789 28 0.012727253482363506
		5 23 0.0048098870455397687 24 0.10274727095871357 25 0.54845506257805365 
		26 0.31724254798329521 27 0.026745231434397856
		5 23 0.0017557072680921184 24 0.071670968680973196 25 0.74231567789134578 
		26 0.17781833011689196 27 0.006439316042697033
		5 6 0.0022290789940990928 24 0.065495544477639805 25 0.68668633927429767 
		26 0.23829297809476185 27 0.0072960591592015119
		5 6 0.0058614051122883619 24 0.071864573561268075 25 0.50100420941379997 
		26 0.39823256024363529 27 0.023037251669008274
		5 19 0.0078643488007605379 24 0.068910119842280806 25 0.43626652823064083 
		26 0.43116012235431261 27 0.055798880772005219
		5 25 0.0050949173968193326 26 0.097310402887353709 27 0.87673736423780435 
		28 0.0090704855500982461 42 0.011786829927924295
		5 25 0.00092177341513140351 26 0.043861575887643618 27 0.94702516261399194 
		28 0.0060750972560511202 42 0.0021163908271818075
		5 25 0.0014099152283027813 26 0.055922277577958125 27 0.92614909118204392 
		28 0.013608928513924643 42 0.0029097874977705761
		5 25 0.008762737887092328 26 0.11391223418755865 27 0.83878502906246855 
		28 0.023099465880033813 42 0.015440532982846743
		5 25 0.028175022960066399 26 0.1321815459374924 27 0.77775362454316321 
		28 0.018869776214499725 42 0.043020030344778387
		5 25 0.043806633206311327 26 0.13399559564306029 27 0.7417576078002599 
		28 0.01419538892692384 42 0.066244774423444591
		5 25 0.037187017024517863 26 0.12845301153912794 27 0.75742539616281535 
		28 0.012156901365604898 42 0.064777673907934041
		5 25 0.018666163437059746 26 0.12627059666843493 27 0.80564972312011285 
		28 0.01123182536929542 42 0.038181691405097015
		4 26 0.0014817191127757643 27 0.056375937021162288 28 0.0017478014837724498 
		42 0.94039454238228959
		4 26 0.0041495379610852097 27 0.13786076480504128 28 0.0063859872922939305 
		42 0.85160370994157952
		4 27 0.20324864552436822 28 0.0097478443434072266 29 0.0077962156142132857 
		42 0.7792072945180113
		4 27 0.21474235722617743 28 0.0070281387187725508 29 0.0055113592374767305 
		42 0.77271814481757328
		4 26 0.0027258824734743194 27 0.15808634154427201 28 0.0030436859274844035 
		42 0.8361440900547692
		5 19 0.0005012268139021048 26 0.00095045917969582068 27 0.064025015449535594 
		28 0.00086474025090342056 42 0.93365855830596312
		5 19 0.00013829167216925149 26 0.00022529435474424449 27 0.01416342803086857 
		28 0.00019137312283032469 42 0.98528161281938764
		5 19 0.00012411671204016643 26 0.00028303275455143778 27 0.013966215164379753 
		28 0.00026391347089847625 42 0.98536272189813012
		3 27 0.00063977338909336067 42 0.99203993403168322 43 0.0073202925792233533
		3 27 0.0029119240100934037 42 0.96635088585092144 43 0.030737190138985196
		2 42 0.94388927698539227 43 0.056110723014607775
		3 27 0.0041666593170343203 42 0.95346850087753809 43 0.04236483980542765
		4 19 0.00056500177288189247 27 0.0013876403327464429 42 0.98282169248124573 
		43 0.015225665413125965
		4 19 6.6680913242059332e-05 27 0.00014554332282659839 42 0.99806978557100179 
		43 0.0017179901929294072
		3 27 4.5059190485756309e-05 42 0.99941291525882825 43 0.00054202555068599357
		3 42 0.0084436994852143347 43 0.99138282511829379 44 0.0001734753964919222
		3 42 0.055755231262992852 43 0.94277897253394671 44 0.0014657962030604473
		3 42 0.10953892325103268 43 0.88702955486845836 44 0.0034315218805089707
		3 42 0.12901212646760324 43 0.86679878530989363 44 0.0041890882225031206
		3 42 0.10408987831727966 43 0.89288358148942104 44 0.003026540193299294
		3 42 0.046489700358213502 43 0.95242599198129163 44 0.0010843076604949051
		3 42 0.0044848266385918963 43 0.995431637132557 44 8.3536228851207984e-05
		3 42 7.2606201962359465e-07 43 0.99999926123600469 44 1.2701975744559132e-08
		3 42 0.00056978977034659653 43 0.99705947500408609 44 0.0023707352255672729
		3 42 0.0033796668690299 43 0.97771959928033891 44 0.018900733850631218
		3 42 0.0066706681112259757 43 0.94536435032782673 44 0.047964981560947299
		3 42 0.0079110173950112522 43 0.92984087845323748 44 0.062248104151751381
		3 42 0.0066715658785040039 43 0.94675334684123447 44 0.046575087280261593
		3 42 0.0032989893764464912 43 0.97903568966255483 44 0.017665320960998758
		3 42 0.00051391211590924579 43 0.99741574078817041 44 0.0020703470959203703
		3 42 2.4801024040306362e-05 43 0.99988638202327829 44 8.8816952681411391e-05
		3 42 0.19050876237719583 43 0.80939062683220664 44 0.00010061079059763373
		3 42 0.056835417902817167 43 0.94313879049452143 44 2.5791602661317336e-05
		3 42 0.13166157585557112 43 0.86829439187533874 44 4.4032269090067579e-05
		3 42 0.37080337702860439 43 0.62910158843345054 44 9.5034537945113705e-05
		3 42 0.4853203098353292 43 0.51456292778549839 44 0.00011676237917241018
		2 42 0.48509231862661073 43 0.51490768137338938
		3 42 0.39493028001607144 43 0.60487706375450423 44 0.00019265622942433002
		3 27 0.0062386637678382637 42 0.93273174394270841 43 0.061029592289453337
		2 42 0.49867719058286908 43 0.50132280941713092;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.012728295233860504 0.99991782735513501 -0.0015261185493631081 -0
		 0.99280702824109124 0.012819459325065943 0.11903724685032832 -0 0.11904702925958592 1.0690233420707081e-16 -0.99288861652476801 -0
		 -0.90795101870048134 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513461 0.91862659735055918 -0.041563650809936667 -0
		 0.89526386431128191 0.39248175502475208 0.21085702556737568 -0 0.210011846539538 0.045642596473303453 -0.9766328776465748 -0
		 -0.37507697621182828 -2.8657604802815309 -0.94611761528610516 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402895 0.9445447650793507 0.045683164274527482 -0
		 0.94422144490049698 0.32697288226068943 -0.039173935928819348 0 -0.051938692002751134 0.030396069274366267 -0.99818758319551948 0
		 -1.5297596850582682 -2.7773530357943352 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790586 0.99329326174337518 0.045683164274527482 -0
		 0.99337604742855179 0.10802514123606741 -0.039173935928819348 0 -0.043846136866929383 0.041219716594552334 -0.99818758319551959 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810515 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885265 0.99890059027644973 0.045683164274527607 -0
		 0.99915653175010688 0.012313724251499982 -0.039173935928819466 0 -0.039693397610562217 0.045232542935574056 -0.99818758319551937 0
		 -3.4912318179848607 -1.9040448117726043 -0.56315261966810481 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871752 -0.9779020118066285 -0.091812310658712079 -0
		 0.96088145788389734 0.20231395106606309 -0.18914515351696121 -0 0.20354033747357872 -0.052694596578666153 0.9776474878567194 -0
		 -4.1608222065879765 0.98034715670107386 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.849256614102049 -0.40332677146099288 -0
		 0.89689896658620161 0.4222537097758039 -0.13143077385899588 -0 0.28192467949760502 -0.31696215544524442 0.90556803560289056 -0
		 -4.6827584700038933 -0.43291834424742021 1.8868280135693325 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143826 -0.47572266972118704 -0
		 0.74200082470018769 0.64087873460052991 -0.19674659763529495 -0 0.4473524375790161 -0.25474905055727082 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547873 -0.45027497011225115 -0.47572266972118704 -0
		 0.40753183853562547 0.89174468145243679 -0.19674659763529498 -0 0.51281322894014236 -0.045209229054513987 0.85730899787199377 -0
		 -3.7930210190858711 -3.6363074555288435 2.3527934785693625 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988877 -0.60770287165339087 -0
		 -0.15684837943322541 0.97734058610779651 -0.14214065082037369 0 0.58840109184103584 0.20806465329722415 0.78134067804548823 -0
		 -1.2358328313690483 -5.3627024397852345 2.4055843427903012 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304327 0.42405058758597708 -0.53977069894956764 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867554 0.18573444686090734 0.83774129179212098 -0
		 0.1968172812762447 -5.9805478664821443 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348465 0.49094017626205783 -0.60972944210779889 -0
		 -0.5253983994062138 0.83932464881653146 0.13960893879116207 0 0.58030058688812003 0.23347778742481168 0.78021750277503932 -0
		 0.47614274721700267 -5.961344900019987 0.95798160440020297 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516239 0.60280760005635936 -0.65335941194369052 -0
		 -0.66368542414675347 0.72082410497382132 0.19983560109207887 0 0.5914196324406692 0.34210467258279464 0.7301966936112233 -0
		 1.1441516084105745 -5.8141102579502952 0.85898842630906724 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387919 -0.10503749339307361 -0.91693018807666515 -0
		 0.17781968135064385 0.98332967287429862 -0.037985725862222486 -0 0.90563458731928081 -0.14842465909216213 0.39723559108470113 -0
		 -3.0698135514498937 -3.9119159816185101 3.2206463961358001 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042264 0.077623837547557792 -0.3834011912353672 -0
		 0.20793806673474038 0.92724908623729163 -0.31140149722621147 -0 0.33133622500252974 -0.36631089516488313 -0.86950137095037139 -0
		 1.3350913447026536 -3.8738355210740298 3.8541836841977992 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364847 -0.094924216888717688 0.38340119123536714 -0
		 -0.031825581119802333 0.94974535529880866 0.31140149722621158 0 -0.39369304385399273 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558672 -3.7939732910568535 -3.8541836841977997 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071677 -0.39002924497921759 0.452124470705772 -0
		 0.2418572836977026 0.90452625422546051 0.35119411973896503 -0 -0.54593443129409036 -0.17236427552656972 0.81990618563942996 -0
		 -4.4547110826954048 -2.2284950952224647 -4.392248129419202 1;
	setAttr ".pm[18]" -type "matrix" 0.8806009698142695 -0.14186400160433182 0.45212447070577194 -0
		 -0.029550252819743231 0.93583624252273023 0.35119411973896497 0 -0.47293626898394825 -0.32262227485054945 0.81990618563942974 -0
		 -4.8264647244913848 -3.7828002607320328 -4.3922481294192028 1;
	setAttr ".pm[19]" -type "matrix" 0.04444990963230469 -0.99486331132534522 -0.090946123130399792 -0
		 0.99875087560877895 0.046333564308836124 -0.018705327827550827 -0 0.022823102426645002 -0.090001069978133355 0.99568012604370837 -0
		 -5.1987338443485154 1.1631347543266388 0.9593990667563872 1;
	setAttr ".pm[20]" -type "matrix" 0.59746412934814974 -0.79672166835715486 -0.090946123130399792 -0
		 0.79887115989862156 0.60121126119950097 -0.018705327827550827 -0 0.06958077338236654 -0.061478472468806014 0.99568012604370837 -0
		 -6.0311161264281017 -2.7072772985180777 0.9593990667563872 1;
	setAttr ".pm[21]" -type "matrix" 0.86518594954605277 0.49313494643519812 -0.090946123130399764 -0
		 -0.49658384305064746 0.86778718447088932 -0.018705327827550817 0 0.069697629293580379 0.061345962152701043 0.99568012604370804 -0
		 1.7365891972474419 -7.8707547550432926 0.95939906675638709 1;
	setAttr ".pm[22]" -type "matrix" 0.99585451783966294 -0.0016068558999377096 -0.090946123130399764 -0
		 -9.4996095158742211e-05 0.99982503553702085 -0.018705327827550817 0 0.090960267557186225 0.018636424751305627 0.99568012604370815 -0
		 -3.6603758191881481 -6.9736763934885175 0.95939906675638698 1;
	setAttr ".pm[23]" -type "matrix" -0.32924786964475911 0.69647275897298944 0.63759041424957197 -0
		 0.89339606886512035 0.44836933267261597 -0.02843247535938619 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461437 0
		 -3.5395339554045822 -2.4005302806614881 -1.426859062061397 1;
	setAttr ".pm[24]" -type "matrix" -0.2788948936776629 0.7069333932652262 0.64997139611450527 -0
		 0.8885321965626376 0.44672740812313078 -0.10461911155789998 0 -0.36431878067442514 0.54834277629791328 -0.75272307373282876 0
		 -4.0483565879838146 -2.4178888731886139 -1.0785180430682908 1;
	setAttr ".pm[25]" -type "matrix" -0.23031898058193831 0.6528205623008978 0.72164983241239422 -0
		 0.83303853881336309 0.51558677386086182 -0.20054194441922923 0 -0.50299101387141465 0.55497350572517268 -0.66257410748362211 0
		 -4.4246285444210187 -2.6889499752129313 -0.5852217214780755 1;
	setAttr ".pm[26]" -type "matrix" -0.43594206856657181 0.59749643679491382 0.67301747441747795 -0
		 0.7008473455733657 0.69452627827057267 -0.16262302110831151 0 -0.5645949973712715 0.40078829425147744 -0.72152701414037557 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020237 1;
	setAttr ".pm[27]" -type "matrix" -0.80828667061645421 0.2506903381799318 0.53275417637687217 -0
		 0.21819681833351881 0.96794042383007672 -0.12442461325951773 0 -0.54686635165540887 0.015674509845052274 -0.83707317671050763 0
		 -1.278220982043448 -5.4701710369415641 -1.0637098843123747 1;
	setAttr ".pm[28]" -type "matrix" -0.82004746298995335 -0.20903383935798978 0.53275417637687217 -0
		 -0.32022389937182466 0.93913533097542601 -0.12442461325951776 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050752 0
		 1.4741587314170379 -5.4790257814298382 -1.0637098843123742 1;
	setAttr ".pm[29]" -type "matrix" -0.68115616977266769 -0.5822485630455535 0.44386133331482847 -0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048567 0 -0.16426653899654681 -0.4692574321309736 -0.86764852708682749 0
		 3.7155105341486685 -4.2535038943938588 -0.56138920422851701 1;
	setAttr ".pm[30]" -type "matrix" -0.50408143703462183 -0.80314784176126897 0.31757746946426541 0
		 -0.83807469275740265 0.36604707764536509 -0.40452484016049428 0 0.20864494769031905 -0.47006710289224019 -0.85761541764464611 -0
		 4.7675519887131355 -2.6983875271677138 0.40050570930127832 1;
	setAttr ".pm[31]" -type "matrix" -0.13887805416914528 -0.9736202144440087 0.18104298963559595 0
		 -0.84422276414869568 0.020829102434948937 -0.53558759599610806 0 0.51768794709103294 -0.22722197630897611 -0.82484505388522256 -0
		 5.131402912047518 -0.54383195128390038 1.1062768597705592 1;
	setAttr ".pm[32]" -type "matrix" -0.44544497944150713 0.31790426679360734 -0.8369681280937612 0
		 -0.53604559259280804 0.65406161496897952 0.53372139406810004 0 0.71710103399185066 0.68639659161347089 -0.12093728155217454 -0
		 3.5487087479939037 -1.8700671021165951 -2.7925192544727233 1;
	setAttr ".pm[33]" -type "matrix" -0.052113644842616026 -0.12229877356956341 -0.99112419908132532 0
		 -0.12985134008384805 0.98487688501104831 -0.11470026525411023 0 0.99016301561896736 0.12272135655343426 -0.067206183837786579 -0
		 1.5808752886267781 -4.2107979269501721 0.024886578657810372 1;
	setAttr ".pm[34]" -type "matrix" 0.51285923410589029 0.15316128048266991 0.84469937146491858 -0
		 -0.35222853801336468 0.93486282786315433 0.044345801251915153 0 -0.78288598339814941 -0.3202703783377655 0.53340080779662979 -0
		 1.1996854652596878 -4.1723182493855946 0.61489409327925182 1;
	setAttr ".pm[35]" -type "matrix" -0.73333549252294605 0.11850971777536495 0.66945836479868692 -0
		 0.055614854265168837 0.99184696103279268 -0.11465859703955258 0 -0.67758840263923692 -0.046851389337113004 -0.73394748035945334 0
		 -1.6184639253570574 -4.1509626321413302 0.61671609555364271 1;
	setAttr ".pm[36]" -type "matrix" 0.71787470010069721 0.19100108051108461 -0.66945836479868681 -0
		 -0.15418153999379064 0.98136713764526728 0.1146585970395526 0 0.67888435515960788 0.020907615682650958 0.73394748035945312 -0
		 2.987810459616135 -3.9063461047656256 -0.61671609555364337 1;
	setAttr ".pm[37]" -type "matrix" 0.86346497510865083 0.01229272663840846 -0.50425898666499791 -0
		 0.11820591342388179 0.96693328786482802 0.22598092585556948 -0 0.49036272165840966 -0.25473300863984616 0.83345995435716624 -0
		 -0.31526851927339061 -4.1175003486713431 -0.84111836428204012 1;
	setAttr ".pm[38]" -type "matrix" 0.85074581735119792 0.14817026903880434 -0.50425898666499791 -0
		 -0.035601726522438017 0.97348093880572806 0.22598092585556945 0 0.52437016632152489 -0.17429983693304779 0.83345995435716613 -0
		 -0.54266115293508965 -4.2561403836399734 -0.84111836428203923 1;
	setAttr ".pm[39]" -type "matrix" -0.51836859257157597 0.80319048658789161 -0.2935626755738362 -0
		 0.85499374135413664 0.49348852949922861 -0.15954552171071609 -0 0.016724367869042668 -0.33369763785108691 -0.94253179363456308 -0
		 -4.8180154521350591 -3.4553778402904016 -0.7848661515675518 1;
	setAttr ".pm[40]" -type "matrix" 0.13331225767208435 -0.9465985408103601 0.29356267557383614 -0
		 0.96950646724456246 0.18601730154215074 0.15954552171071607 0 -0.20563329478793038 0.26334153880972577 0.94253179363456319 -0
		 -6.3757106097054148 -0.94555417178716261 0.7848661515675518 1;
	setAttr ".pm[41]" -type "matrix" 0.95562517126066493 0.024525243382202185 0.2935626755738362 -0
		 -0.074275015140186543 0.98439242613298306 0.15954552171071609 0 -0.28506798167972303 -0.17427008868151553 0.94253179363456319 -0
		 0.085391099712523177 -7.5497824375075142 0.78486615156755213 1;
	setAttr ".pm[42]" -type "matrix" -0.16932532307067247 0.96527649990704545 -0.19892263243335806 -0
		 0.98556021377032699 0.16584045593116589 -0.034176135087669167 -0 1.3183898417423744e-16 -0.2018371172598033 -0.97941910237459295 -0
		 -5.7236422783817282 -1.9839300723893565 -0.95909989525908557 1;
	setAttr ".pm[43]" -type "matrix" 0.62316378607661982 -0.75637073054715476 0.19892263243335795 -0
		 0.7669143872697135 0.64083875849482563 0.034176135087669222 0 -0.15332716106865452 0.13125929903200931 0.97941910237459284 -0
		 -6.1360967711649694 -4.1170383759049205 0.95909989525908523 1;
	setAttr ".pm[44]" -type "matrix" 0.98000917862884818 -0.0034345464029732859 0.19892263243335798 -0
		 -0.0034345464029732738 0.99940992374574489 0.034176135087669222 0 -0.19892263243335823 -0.034176135087669333 0.97941910237459295 -0
		 -1.6944175488132156 -8.489243544670618 0.95909989525908523 1;
	setAttr ".gm" -type "matrix" 0.13782292497074947 0.075497158347951815 -0.028051036199876648 0
		 -1.0896093798392026 2.0510396279898138 0.16664310487355324 0 0.030111964527850383 0.003262840119822964 0.15673054477229795 0
		 0.27419955463428974 6.5790521016608334 -1.2958738050987137 1;
	setAttr -s 15 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 15 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 15 ".ifcl";
createNode skinCluster -n "skinCluster19";
	rename -uid "E4175A54-9641-D2FD-3C1E-378C3F805560";
	setAttr -s 30 ".wl";
	setAttr ".wl[0:29].w"
		4 29 0.0026789258170717414 39 0.29060946027553863 40 0.7048861590757759 
		41 0.0018254548316138297
		4 29 0.0032547995439039727 39 0.32296672212139083 40 0.67150754147705083 
		41 0.0022709368576543819
		4 29 0.0043563184910982537 39 0.078693552832667837 40 0.87943600196747218 
		41 0.037514126708761801
		4 29 0.0031503135312712879 39 0.052445567218100106 40 0.91886697291727337 
		41 0.025537146333355243
		4 29 0.0027084963943884281 39 0.29341108899124008 40 0.70207766208031475 
		41 0.0018027525340566519
		3 39 0.050765260217498054 40 0.92569394617489376 41 0.023540793607608142
		4 29 0.0028277995555770386 39 0.095632406845345491 40 0.89374723097745878 
		41 0.0077925626216186414
		4 29 0.0040597153437630608 39 0.14596421771896315 40 0.83968594838995747 
		41 0.010290118547316389
		4 29 0.0030186603061594396 39 0.10046411498992168 40 0.88784523182910913 
		41 0.0086719928748097488
		4 29 0.0028253645730172442 39 0.30012185865212798 40 0.69512072486819343 
		41 0.0019320519066613371
		4 29 0.003723385177782403 39 0.13350609133738034 40 0.85318514986030125 
		41 0.0095853736245360456
		3 39 0.078124167727093102 40 0.88434394928070048 41 0.03753188299220641
		4 29 0.0028870144233551789 39 0.30381608847272262 40 0.69128470670643538 
		41 0.0020121903974867524
		4 29 0.0038030105277302331 39 0.1353432089467764 40 0.85089104840564811 
		41 0.0099627321198452658
		4 29 0.0044255988719481242 39 0.077996421324952547 40 0.87911756333091251 
		41 0.038460416472186849
		4 29 0.0044125402335649854 39 0.03485596923101044 40 0.83297921237302952 
		41 0.12775227816239504
		3 39 0.025742987811772734 40 0.85310254307844324 41 0.12115446910978399
		3 39 0.027679973026716379 40 0.86290459076849368 41 0.10941543620478983
		3 39 0.033957762687887742 40 0.82843314358692122 41 0.13760909372519103
		3 39 0.035945539980911413 40 0.84089985364786224 41 0.12315460637122633
		3 39 0.0031654127305016208 40 0.70805425171516034 41 0.28878033555433796
		3 39 0.0029172837671470261 40 0.72322553193776973 41 0.27385718429508327
		3 39 0.0030000858867520494 40 0.74135614642208814 41 0.25564376769115976
		3 39 0.0033722710644334725 40 0.72052923300145666 41 0.2760984959341099
		3 39 0.0030506924057119426 40 0.70415725546507724 41 0.29279205212921078
		3 39 1.8394976576241678e-05 40 0.49999080251171185 41 0.49999080251171185
		3 39 2.0718348532051365e-05 40 0.49998964082573399 41 0.49998964082573399
		3 39 2.3861350084564274e-05 40 0.49998806932495754 41 0.49998806932495787
		3 39 2.0802995180259406e-05 40 0.49998959850240993 41 0.49998959850240982
		3 39 1.8777364636309221e-05 40 0.4999906113176818 41 0.4999906113176818;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.012728295233860504 0.99991782735513501 -0.0015261185493631081 -0
		 0.99280702824109124 0.012819459325065943 0.11903724685032832 -0 0.11904702925958592 1.0690233420707081e-16 -0.99288861652476801 -0
		 -0.90795101870048134 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513461 0.91862659735055918 -0.041563650809936667 -0
		 0.89526386431128191 0.39248175502475208 0.21085702556737568 -0 0.210011846539538 0.045642596473303453 -0.9766328776465748 -0
		 -0.37507697621182828 -2.8657604802815309 -0.94611761528610516 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402895 0.9445447650793507 0.045683164274527482 -0
		 0.94422144490049698 0.32697288226068943 -0.039173935928819348 0 -0.051938692002751134 0.030396069274366267 -0.99818758319551948 0
		 -1.5297596850582682 -2.7773530357943352 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790586 0.99329326174337518 0.045683164274527482 -0
		 0.99337604742855179 0.10802514123606741 -0.039173935928819348 0 -0.043846136866929383 0.041219716594552334 -0.99818758319551959 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810515 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885265 0.99890059027644973 0.045683164274527607 -0
		 0.99915653175010688 0.012313724251499982 -0.039173935928819466 0 -0.039693397610562217 0.045232542935574056 -0.99818758319551937 0
		 -3.4912318179848607 -1.9040448117726043 -0.56315261966810481 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871752 -0.9779020118066285 -0.091812310658712079 -0
		 0.96088145788389734 0.20231395106606309 -0.18914515351696121 -0 0.20354033747357872 -0.052694596578666153 0.9776474878567194 -0
		 -4.1608222065879765 0.98034715670107386 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.849256614102049 -0.40332677146099288 -0
		 0.89689896658620161 0.4222537097758039 -0.13143077385899588 -0 0.28192467949760502 -0.31696215544524442 0.90556803560289056 -0
		 -4.6827584700038933 -0.43291834424742021 1.8868280135693325 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143826 -0.47572266972118704 -0
		 0.74200082470018769 0.64087873460052991 -0.19674659763529495 -0 0.4473524375790161 -0.25474905055727082 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547873 -0.45027497011225115 -0.47572266972118704 -0
		 0.40753183853562547 0.89174468145243679 -0.19674659763529498 -0 0.51281322894014236 -0.045209229054513987 0.85730899787199377 -0
		 -3.7930210190858711 -3.6363074555288435 2.3527934785693625 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988877 -0.60770287165339087 -0
		 -0.15684837943322541 0.97734058610779651 -0.14214065082037369 0 0.58840109184103584 0.20806465329722415 0.78134067804548823 -0
		 -1.2358328313690483 -5.3627024397852345 2.4055843427903012 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304327 0.42405058758597708 -0.53977069894956764 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867554 0.18573444686090734 0.83774129179212098 -0
		 0.1968172812762447 -5.9805478664821443 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348465 0.49094017626205783 -0.60972944210779889 -0
		 -0.5253983994062138 0.83932464881653146 0.13960893879116207 0 0.58030058688812003 0.23347778742481168 0.78021750277503932 -0
		 0.47614274721700267 -5.961344900019987 0.95798160440020297 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516239 0.60280760005635936 -0.65335941194369052 -0
		 -0.66368542414675347 0.72082410497382132 0.19983560109207887 0 0.5914196324406692 0.34210467258279464 0.7301966936112233 -0
		 1.1441516084105745 -5.8141102579502952 0.85898842630906724 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387919 -0.10503749339307361 -0.91693018807666515 -0
		 0.17781968135064385 0.98332967287429862 -0.037985725862222486 -0 0.90563458731928081 -0.14842465909216213 0.39723559108470113 -0
		 -3.0698135514498937 -3.9119159816185101 3.2206463961358001 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042264 0.077623837547557792 -0.3834011912353672 -0
		 0.20793806673474038 0.92724908623729163 -0.31140149722621147 -0 0.33133622500252974 -0.36631089516488313 -0.86950137095037139 -0
		 1.3350913447026536 -3.8738355210740298 3.8541836841977992 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364847 -0.094924216888717688 0.38340119123536714 -0
		 -0.031825581119802333 0.94974535529880866 0.31140149722621158 0 -0.39369304385399273 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558672 -3.7939732910568535 -3.8541836841977997 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071677 -0.39002924497921759 0.452124470705772 -0
		 0.2418572836977026 0.90452625422546051 0.35119411973896503 -0 -0.54593443129409036 -0.17236427552656972 0.81990618563942996 -0
		 -4.4547110826954048 -2.2284950952224647 -4.392248129419202 1;
	setAttr ".pm[18]" -type "matrix" 0.8806009698142695 -0.14186400160433182 0.45212447070577194 -0
		 -0.029550252819743231 0.93583624252273023 0.35119411973896497 0 -0.47293626898394825 -0.32262227485054945 0.81990618563942974 -0
		 -4.8264647244913848 -3.7828002607320328 -4.3922481294192028 1;
	setAttr ".pm[19]" -type "matrix" 0.04444990963230469 -0.99486331132534522 -0.090946123130399792 -0
		 0.99875087560877895 0.046333564308836124 -0.018705327827550827 -0 0.022823102426645002 -0.090001069978133355 0.99568012604370837 -0
		 -5.1987338443485154 1.1631347543266388 0.9593990667563872 1;
	setAttr ".pm[20]" -type "matrix" 0.59746412934814974 -0.79672166835715486 -0.090946123130399792 -0
		 0.79887115989862156 0.60121126119950097 -0.018705327827550827 -0 0.06958077338236654 -0.061478472468806014 0.99568012604370837 -0
		 -6.0311161264281017 -2.7072772985180777 0.9593990667563872 1;
	setAttr ".pm[21]" -type "matrix" 0.86518594954605277 0.49313494643519812 -0.090946123130399764 -0
		 -0.49658384305064746 0.86778718447088932 -0.018705327827550817 0 0.069697629293580379 0.061345962152701043 0.99568012604370804 -0
		 1.7365891972474419 -7.8707547550432926 0.95939906675638709 1;
	setAttr ".pm[22]" -type "matrix" 0.99585451783966294 -0.0016068558999377096 -0.090946123130399764 -0
		 -9.4996095158742211e-05 0.99982503553702085 -0.018705327827550817 0 0.090960267557186225 0.018636424751305627 0.99568012604370815 -0
		 -3.6603758191881481 -6.9736763934885175 0.95939906675638698 1;
	setAttr ".pm[23]" -type "matrix" -0.32924786964475911 0.69647275897298944 0.63759041424957197 -0
		 0.89339606886512035 0.44836933267261597 -0.02843247535938619 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461437 0
		 -3.5395339554045822 -2.4005302806614881 -1.426859062061397 1;
	setAttr ".pm[24]" -type "matrix" -0.2788948936776629 0.7069333932652262 0.64997139611450527 -0
		 0.8885321965626376 0.44672740812313078 -0.10461911155789998 0 -0.36431878067442514 0.54834277629791328 -0.75272307373282876 0
		 -4.0483565879838146 -2.4178888731886139 -1.0785180430682908 1;
	setAttr ".pm[25]" -type "matrix" -0.23031898058193831 0.6528205623008978 0.72164983241239422 -0
		 0.83303853881336309 0.51558677386086182 -0.20054194441922923 0 -0.50299101387141465 0.55497350572517268 -0.66257410748362211 0
		 -4.4246285444210187 -2.6889499752129313 -0.5852217214780755 1;
	setAttr ".pm[26]" -type "matrix" -0.43594206856657181 0.59749643679491382 0.67301747441747795 -0
		 0.7008473455733657 0.69452627827057267 -0.16262302110831151 0 -0.5645949973712715 0.40078829425147744 -0.72152701414037557 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020237 1;
	setAttr ".pm[27]" -type "matrix" -0.80828667061645421 0.2506903381799318 0.53275417637687217 -0
		 0.21819681833351881 0.96794042383007672 -0.12442461325951773 0 -0.54686635165540887 0.015674509845052274 -0.83707317671050763 0
		 -1.278220982043448 -5.4701710369415641 -1.0637098843123747 1;
	setAttr ".pm[28]" -type "matrix" -0.82004746298995335 -0.20903383935798978 0.53275417637687217 -0
		 -0.32022389937182466 0.93913533097542601 -0.12442461325951776 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050752 0
		 1.4741587314170379 -5.4790257814298382 -1.0637098843123742 1;
	setAttr ".pm[29]" -type "matrix" -0.68115616977266769 -0.5822485630455535 0.44386133331482847 -0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048567 0 -0.16426653899654681 -0.4692574321309736 -0.86764852708682749 0
		 3.7155105341486685 -4.2535038943938588 -0.56138920422851701 1;
	setAttr ".pm[30]" -type "matrix" -0.50408143703462183 -0.80314784176126897 0.31757746946426541 0
		 -0.83807469275740265 0.36604707764536509 -0.40452484016049428 0 0.20864494769031905 -0.47006710289224019 -0.85761541764464611 -0
		 4.7675519887131355 -2.6983875271677138 0.40050570930127832 1;
	setAttr ".pm[31]" -type "matrix" -0.13887805416914528 -0.9736202144440087 0.18104298963559595 0
		 -0.84422276414869568 0.020829102434948937 -0.53558759599610806 0 0.51768794709103294 -0.22722197630897611 -0.82484505388522256 -0
		 5.131402912047518 -0.54383195128390038 1.1062768597705592 1;
	setAttr ".pm[32]" -type "matrix" -0.44544497944150713 0.31790426679360734 -0.8369681280937612 0
		 -0.53604559259280804 0.65406161496897952 0.53372139406810004 0 0.71710103399185066 0.68639659161347089 -0.12093728155217454 -0
		 3.5487087479939037 -1.8700671021165951 -2.7925192544727233 1;
	setAttr ".pm[33]" -type "matrix" -0.052113644842616026 -0.12229877356956341 -0.99112419908132532 0
		 -0.12985134008384805 0.98487688501104831 -0.11470026525411023 0 0.99016301561896736 0.12272135655343426 -0.067206183837786579 -0
		 1.5808752886267781 -4.2107979269501721 0.024886578657810372 1;
	setAttr ".pm[34]" -type "matrix" 0.51285923410589029 0.15316128048266991 0.84469937146491858 -0
		 -0.35222853801336468 0.93486282786315433 0.044345801251915153 0 -0.78288598339814941 -0.3202703783377655 0.53340080779662979 -0
		 1.1996854652596878 -4.1723182493855946 0.61489409327925182 1;
	setAttr ".pm[35]" -type "matrix" -0.73333549252294605 0.11850971777536495 0.66945836479868692 -0
		 0.055614854265168837 0.99184696103279268 -0.11465859703955258 0 -0.67758840263923692 -0.046851389337113004 -0.73394748035945334 0
		 -1.6184639253570574 -4.1509626321413302 0.61671609555364271 1;
	setAttr ".pm[36]" -type "matrix" 0.71787470010069721 0.19100108051108461 -0.66945836479868681 -0
		 -0.15418153999379064 0.98136713764526728 0.1146585970395526 0 0.67888435515960788 0.020907615682650958 0.73394748035945312 -0
		 2.987810459616135 -3.9063461047656256 -0.61671609555364337 1;
	setAttr ".pm[37]" -type "matrix" 0.86346497510865083 0.01229272663840846 -0.50425898666499791 -0
		 0.11820591342388179 0.96693328786482802 0.22598092585556948 -0 0.49036272165840966 -0.25473300863984616 0.83345995435716624 -0
		 -0.31526851927339061 -4.1175003486713431 -0.84111836428204012 1;
	setAttr ".pm[38]" -type "matrix" 0.85074581735119792 0.14817026903880434 -0.50425898666499791 -0
		 -0.035601726522438017 0.97348093880572806 0.22598092585556945 0 0.52437016632152489 -0.17429983693304779 0.83345995435716613 -0
		 -0.54266115293508965 -4.2561403836399734 -0.84111836428203923 1;
	setAttr ".pm[39]" -type "matrix" -0.51836859257157597 0.80319048658789161 -0.2935626755738362 -0
		 0.85499374135413664 0.49348852949922861 -0.15954552171071609 -0 0.016724367869042668 -0.33369763785108691 -0.94253179363456308 -0
		 -4.8180154521350591 -3.4553778402904016 -0.7848661515675518 1;
	setAttr ".pm[40]" -type "matrix" 0.13331225767208435 -0.9465985408103601 0.29356267557383614 -0
		 0.96950646724456246 0.18601730154215074 0.15954552171071607 0 -0.20563329478793038 0.26334153880972577 0.94253179363456319 -0
		 -6.3757106097054148 -0.94555417178716261 0.7848661515675518 1;
	setAttr ".pm[41]" -type "matrix" 0.95562517126066493 0.024525243382202185 0.2935626755738362 -0
		 -0.074275015140186543 0.98439242613298306 0.15954552171071609 0 -0.28506798167972303 -0.17427008868151553 0.94253179363456319 -0
		 0.085391099712523177 -7.5497824375075142 0.78486615156755213 1;
	setAttr ".pm[42]" -type "matrix" -0.16932532307067247 0.96527649990704545 -0.19892263243335806 -0
		 0.98556021377032699 0.16584045593116589 -0.034176135087669167 -0 1.3183898417423744e-16 -0.2018371172598033 -0.97941910237459295 -0
		 -5.7236422783817282 -1.9839300723893565 -0.95909989525908557 1;
	setAttr ".pm[43]" -type "matrix" 0.62316378607661982 -0.75637073054715476 0.19892263243335795 -0
		 0.7669143872697135 0.64083875849482563 0.034176135087669222 0 -0.15332716106865452 0.13125929903200931 0.97941910237459284 -0
		 -6.1360967711649694 -4.1170383759049205 0.95909989525908523 1;
	setAttr ".pm[44]" -type "matrix" 0.98000917862884818 -0.0034345464029732859 0.19892263243335798 -0
		 -0.0034345464029732738 0.99940992374574489 0.034176135087669222 0 -0.19892263243335823 -0.034176135087669333 0.97941910237459295 -0
		 -1.6944175488132156 -8.489243544670618 0.95909989525908523 1;
	setAttr ".gm" -type "matrix" -0.055017241492530081 0.066556389810669941 0.011179860532662641 0
		 -0.87572698674973737 -0.80014246005590273 0.45389746582147278 0 0.030828535689398012 0.011953158232430278 0.080550372830453118 0
		 0.53227239508200885 6.0818521527156975 -2.1000696672499459 1;
	setAttr -s 6 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode skinCluster -n "skinCluster17";
	rename -uid "BA55A123-BE44-88BD-D51A-95857559AC34";
	setAttr -s 6 ".wl";
	setAttr ".wl[0:5].w"
		2 39 0.9938205216729501 40 0.0061794783270499344
		2 39 0.98428597113846961 40 0.015714028861530383
		2 39 0.85444749293058964 40 0.14555250706941036
		1 39 1
		1 39 1
		2 39 0.75516044667392379 40 0.24483955332607621;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.012728295233860504 0.99991782735513501 -0.0015261185493631081 -0
		 0.99280702824109124 0.012819459325065943 0.11903724685032832 -0 0.11904702925958592 1.0690233420707081e-16 -0.99288861652476801 -0
		 -0.90795101870048134 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513461 0.91862659735055918 -0.041563650809936667 -0
		 0.89526386431128191 0.39248175502475208 0.21085702556737568 -0 0.210011846539538 0.045642596473303453 -0.9766328776465748 -0
		 -0.37507697621182828 -2.8657604802815309 -0.94611761528610516 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402895 0.9445447650793507 0.045683164274527482 -0
		 0.94422144490049698 0.32697288226068943 -0.039173935928819348 0 -0.051938692002751134 0.030396069274366267 -0.99818758319551948 0
		 -1.5297596850582682 -2.7773530357943352 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790586 0.99329326174337518 0.045683164274527482 -0
		 0.99337604742855179 0.10802514123606741 -0.039173935928819348 0 -0.043846136866929383 0.041219716594552334 -0.99818758319551959 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810515 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885265 0.99890059027644973 0.045683164274527607 -0
		 0.99915653175010688 0.012313724251499982 -0.039173935928819466 0 -0.039693397610562217 0.045232542935574056 -0.99818758319551937 0
		 -3.4912318179848607 -1.9040448117726043 -0.56315261966810481 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871752 -0.9779020118066285 -0.091812310658712079 -0
		 0.96088145788389734 0.20231395106606309 -0.18914515351696121 -0 0.20354033747357872 -0.052694596578666153 0.9776474878567194 -0
		 -4.1608222065879765 0.98034715670107386 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.849256614102049 -0.40332677146099288 -0
		 0.89689896658620161 0.4222537097758039 -0.13143077385899588 -0 0.28192467949760502 -0.31696215544524442 0.90556803560289056 -0
		 -4.6827584700038933 -0.43291834424742021 1.8868280135693325 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143826 -0.47572266972118704 -0
		 0.74200082470018769 0.64087873460052991 -0.19674659763529495 -0 0.4473524375790161 -0.25474905055727082 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547873 -0.45027497011225115 -0.47572266972118704 -0
		 0.40753183853562547 0.89174468145243679 -0.19674659763529498 -0 0.51281322894014236 -0.045209229054513987 0.85730899787199377 -0
		 -3.7930210190858711 -3.6363074555288435 2.3527934785693625 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988877 -0.60770287165339087 -0
		 -0.15684837943322541 0.97734058610779651 -0.14214065082037369 0 0.58840109184103584 0.20806465329722415 0.78134067804548823 -0
		 -1.2358328313690483 -5.3627024397852345 2.4055843427903012 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304327 0.42405058758597708 -0.53977069894956764 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867554 0.18573444686090734 0.83774129179212098 -0
		 0.1968172812762447 -5.9805478664821443 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348465 0.49094017626205783 -0.60972944210779889 -0
		 -0.5253983994062138 0.83932464881653146 0.13960893879116207 0 0.58030058688812003 0.23347778742481168 0.78021750277503932 -0
		 0.47614274721700267 -5.961344900019987 0.95798160440020297 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516239 0.60280760005635936 -0.65335941194369052 -0
		 -0.66368542414675347 0.72082410497382132 0.19983560109207887 0 0.5914196324406692 0.34210467258279464 0.7301966936112233 -0
		 1.1441516084105745 -5.8141102579502952 0.85898842630906724 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387919 -0.10503749339307361 -0.91693018807666515 -0
		 0.17781968135064385 0.98332967287429862 -0.037985725862222486 -0 0.90563458731928081 -0.14842465909216213 0.39723559108470113 -0
		 -3.0698135514498937 -3.9119159816185101 3.2206463961358001 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042264 0.077623837547557792 -0.3834011912353672 -0
		 0.20793806673474038 0.92724908623729163 -0.31140149722621147 -0 0.33133622500252974 -0.36631089516488313 -0.86950137095037139 -0
		 1.3350913447026536 -3.8738355210740298 3.8541836841977992 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364847 -0.094924216888717688 0.38340119123536714 -0
		 -0.031825581119802333 0.94974535529880866 0.31140149722621158 0 -0.39369304385399273 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558672 -3.7939732910568535 -3.8541836841977997 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071677 -0.39002924497921759 0.452124470705772 -0
		 0.2418572836977026 0.90452625422546051 0.35119411973896503 -0 -0.54593443129409036 -0.17236427552656972 0.81990618563942996 -0
		 -4.4547110826954048 -2.2284950952224647 -4.392248129419202 1;
	setAttr ".pm[18]" -type "matrix" 0.8806009698142695 -0.14186400160433182 0.45212447070577194 -0
		 -0.029550252819743231 0.93583624252273023 0.35119411973896497 0 -0.47293626898394825 -0.32262227485054945 0.81990618563942974 -0
		 -4.8264647244913848 -3.7828002607320328 -4.3922481294192028 1;
	setAttr ".pm[19]" -type "matrix" 0.04444990963230469 -0.99486331132534522 -0.090946123130399792 -0
		 0.99875087560877895 0.046333564308836124 -0.018705327827550827 -0 0.022823102426645002 -0.090001069978133355 0.99568012604370837 -0
		 -5.1987338443485154 1.1631347543266388 0.9593990667563872 1;
	setAttr ".pm[20]" -type "matrix" 0.59746412934814974 -0.79672166835715486 -0.090946123130399792 -0
		 0.79887115989862156 0.60121126119950097 -0.018705327827550827 -0 0.06958077338236654 -0.061478472468806014 0.99568012604370837 -0
		 -6.0311161264281017 -2.7072772985180777 0.9593990667563872 1;
	setAttr ".pm[21]" -type "matrix" 0.86518594954605277 0.49313494643519812 -0.090946123130399764 -0
		 -0.49658384305064746 0.86778718447088932 -0.018705327827550817 0 0.069697629293580379 0.061345962152701043 0.99568012604370804 -0
		 1.7365891972474419 -7.8707547550432926 0.95939906675638709 1;
	setAttr ".pm[22]" -type "matrix" 0.99585451783966294 -0.0016068558999377096 -0.090946123130399764 -0
		 -9.4996095158742211e-05 0.99982503553702085 -0.018705327827550817 0 0.090960267557186225 0.018636424751305627 0.99568012604370815 -0
		 -3.6603758191881481 -6.9736763934885175 0.95939906675638698 1;
	setAttr ".pm[23]" -type "matrix" -0.32924786964475911 0.69647275897298944 0.63759041424957197 -0
		 0.89339606886512035 0.44836933267261597 -0.02843247535938619 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461437 0
		 -3.5395339554045822 -2.4005302806614881 -1.426859062061397 1;
	setAttr ".pm[24]" -type "matrix" -0.2788948936776629 0.7069333932652262 0.64997139611450527 -0
		 0.8885321965626376 0.44672740812313078 -0.10461911155789998 0 -0.36431878067442514 0.54834277629791328 -0.75272307373282876 0
		 -4.0483565879838146 -2.4178888731886139 -1.0785180430682908 1;
	setAttr ".pm[25]" -type "matrix" -0.23031898058193831 0.6528205623008978 0.72164983241239422 -0
		 0.83303853881336309 0.51558677386086182 -0.20054194441922923 0 -0.50299101387141465 0.55497350572517268 -0.66257410748362211 0
		 -4.4246285444210187 -2.6889499752129313 -0.5852217214780755 1;
	setAttr ".pm[26]" -type "matrix" -0.43594206856657181 0.59749643679491382 0.67301747441747795 -0
		 0.7008473455733657 0.69452627827057267 -0.16262302110831151 0 -0.5645949973712715 0.40078829425147744 -0.72152701414037557 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020237 1;
	setAttr ".pm[27]" -type "matrix" -0.80828667061645421 0.2506903381799318 0.53275417637687217 -0
		 0.21819681833351881 0.96794042383007672 -0.12442461325951773 0 -0.54686635165540887 0.015674509845052274 -0.83707317671050763 0
		 -1.278220982043448 -5.4701710369415641 -1.0637098843123747 1;
	setAttr ".pm[28]" -type "matrix" -0.82004746298995335 -0.20903383935798978 0.53275417637687217 -0
		 -0.32022389937182466 0.93913533097542601 -0.12442461325951776 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050752 0
		 1.4741587314170379 -5.4790257814298382 -1.0637098843123742 1;
	setAttr ".pm[29]" -type "matrix" -0.68115616977266769 -0.5822485630455535 0.44386133331482847 -0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048567 0 -0.16426653899654681 -0.4692574321309736 -0.86764852708682749 0
		 3.7155105341486685 -4.2535038943938588 -0.56138920422851701 1;
	setAttr ".pm[30]" -type "matrix" -0.50408143703462183 -0.80314784176126897 0.31757746946426541 0
		 -0.83807469275740265 0.36604707764536509 -0.40452484016049428 0 0.20864494769031905 -0.47006710289224019 -0.85761541764464611 -0
		 4.7675519887131355 -2.6983875271677138 0.40050570930127832 1;
	setAttr ".pm[31]" -type "matrix" -0.13887805416914528 -0.9736202144440087 0.18104298963559595 0
		 -0.84422276414869568 0.020829102434948937 -0.53558759599610806 0 0.51768794709103294 -0.22722197630897611 -0.82484505388522256 -0
		 5.131402912047518 -0.54383195128390038 1.1062768597705592 1;
	setAttr ".pm[32]" -type "matrix" -0.44544497944150713 0.31790426679360734 -0.8369681280937612 0
		 -0.53604559259280804 0.65406161496897952 0.53372139406810004 0 0.71710103399185066 0.68639659161347089 -0.12093728155217454 -0
		 3.5487087479939037 -1.8700671021165951 -2.7925192544727233 1;
	setAttr ".pm[33]" -type "matrix" -0.052113644842616026 -0.12229877356956341 -0.99112419908132532 0
		 -0.12985134008384805 0.98487688501104831 -0.11470026525411023 0 0.99016301561896736 0.12272135655343426 -0.067206183837786579 -0
		 1.5808752886267781 -4.2107979269501721 0.024886578657810372 1;
	setAttr ".pm[34]" -type "matrix" 0.51285923410589029 0.15316128048266991 0.84469937146491858 -0
		 -0.35222853801336468 0.93486282786315433 0.044345801251915153 0 -0.78288598339814941 -0.3202703783377655 0.53340080779662979 -0
		 1.1996854652596878 -4.1723182493855946 0.61489409327925182 1;
	setAttr ".pm[35]" -type "matrix" -0.73333549252294605 0.11850971777536495 0.66945836479868692 -0
		 0.055614854265168837 0.99184696103279268 -0.11465859703955258 0 -0.67758840263923692 -0.046851389337113004 -0.73394748035945334 0
		 -1.6184639253570574 -4.1509626321413302 0.61671609555364271 1;
	setAttr ".pm[36]" -type "matrix" 0.71787470010069721 0.19100108051108461 -0.66945836479868681 -0
		 -0.15418153999379064 0.98136713764526728 0.1146585970395526 0 0.67888435515960788 0.020907615682650958 0.73394748035945312 -0
		 2.987810459616135 -3.9063461047656256 -0.61671609555364337 1;
	setAttr ".pm[37]" -type "matrix" 0.86346497510865083 0.01229272663840846 -0.50425898666499791 -0
		 0.11820591342388179 0.96693328786482802 0.22598092585556948 -0 0.49036272165840966 -0.25473300863984616 0.83345995435716624 -0
		 -0.31526851927339061 -4.1175003486713431 -0.84111836428204012 1;
	setAttr ".pm[38]" -type "matrix" 0.85074581735119792 0.14817026903880434 -0.50425898666499791 -0
		 -0.035601726522438017 0.97348093880572806 0.22598092585556945 0 0.52437016632152489 -0.17429983693304779 0.83345995435716613 -0
		 -0.54266115293508965 -4.2561403836399734 -0.84111836428203923 1;
	setAttr ".pm[39]" -type "matrix" -0.51836859257157597 0.80319048658789161 -0.2935626755738362 -0
		 0.85499374135413664 0.49348852949922861 -0.15954552171071609 -0 0.016724367869042668 -0.33369763785108691 -0.94253179363456308 -0
		 -4.8180154521350591 -3.4553778402904016 -0.7848661515675518 1;
	setAttr ".pm[40]" -type "matrix" 0.13331225767208435 -0.9465985408103601 0.29356267557383614 -0
		 0.96950646724456246 0.18601730154215074 0.15954552171071607 0 -0.20563329478793038 0.26334153880972577 0.94253179363456319 -0
		 -6.3757106097054148 -0.94555417178716261 0.7848661515675518 1;
	setAttr ".pm[41]" -type "matrix" 0.95562517126066493 0.024525243382202185 0.2935626755738362 -0
		 -0.074275015140186543 0.98439242613298306 0.15954552171071609 0 -0.28506798167972303 -0.17427008868151553 0.94253179363456319 -0
		 0.085391099712523177 -7.5497824375075142 0.78486615156755213 1;
	setAttr ".pm[42]" -type "matrix" -0.16932532307067247 0.96527649990704545 -0.19892263243335806 -0
		 0.98556021377032699 0.16584045593116589 -0.034176135087669167 -0 1.3183898417423744e-16 -0.2018371172598033 -0.97941910237459295 -0
		 -5.7236422783817282 -1.9839300723893565 -0.95909989525908557 1;
	setAttr ".pm[43]" -type "matrix" 0.62316378607661982 -0.75637073054715476 0.19892263243335795 -0
		 0.7669143872697135 0.64083875849482563 0.034176135087669222 0 -0.15332716106865452 0.13125929903200931 0.97941910237459284 -0
		 -6.1360967711649694 -4.1170383759049205 0.95909989525908523 1;
	setAttr ".pm[44]" -type "matrix" 0.98000917862884818 -0.0034345464029732859 0.19892263243335798 -0
		 -0.0034345464029732738 0.99940992374574489 0.034176135087669222 0 -0.19892263243335823 -0.034176135087669333 0.97941910237459295 -0
		 -1.6944175488132156 -8.489243544670618 0.95909989525908523 1;
	setAttr ".gm" -type "matrix" 0.039607107782577262 0.11970527137582093 8.7490826184895261e-19 0
		 -1.7310715472768667 0.57276289142765791 0.24077833965570336 0 0.015671219202719751 -0.0051851657066782119 0.12500240768622908 0
		 -0.012418023358079941 5.5200234100020431 -1.7966621403707963 1;
	setAttr -s 6 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
createNode skinCluster -n "skinCluster18";
	rename -uid "B0AE6674-984B-0024-D9CD-32B98995CC02";
	setAttr -s 40 ".wl";
	setAttr ".wl[0:39].w"
		5 27 0.022135825891550356 28 0.40327700654699866 29 0.53299391311306055 
		30 0.016811118644222425 39 0.024782135804167969
		5 27 0.0045622783328954607 28 0.43331375563369601 29 0.54053123991120933 
		30 0.01450855217200922 39 0.0070841739501900499
		5 27 0.00026650415272346325 28 0.38879001224523396 29 0.60792947414106235 
		30 0.0026430903759636255 39 0.00037091908501667224
		5 27 0.0032347556845209349 28 0.75089512712436346 29 0.24219682422302186 
		30 0.0024630620102047336 39 0.0012102309578890524
		5 27 0.013861884995533055 28 0.90914512798906622 29 0.073292582182268778 
		30 0.0015307209680294508 39 0.0021696838651025611
		5 27 0.054584651633287289 28 0.78482352426532498 29 0.1471798686983706 
		30 0.0038144637293532073 39 0.0095974916736639194
		5 27 0.057150961580974942 28 0.52579743320085714 29 0.37784792744970147 
		30 0.010948266014024315 39 0.028255411754442059
		5 28 0.0015377949666683793 29 0.17316974051397238 30 0.00069478499449402526 
		39 0.82229026260392279 40 0.0023074169209424721
		5 28 0.0027968078751147529 29 0.27853287515627262 30 0.0016297896544078367 
		39 0.71374470223353448 40 0.0032958250806702986
		5 28 0.0039387351465462192 29 0.36551384245973478 30 0.0027707657507656312 
		39 0.62405227760955706 40 0.0037243790333963056
		5 28 0.0036039212135345476 29 0.37913628960372303 30 0.0019607631761122762 
		39 0.61183343909054655 40 0.0034655869160836387
		5 27 0.001165733088269861 28 0.0025348915562198558 29 0.30153638279067152 
		39 0.69172583226137274 40 0.0030371603034660259
		5 27 0.00076575473348440993 28 0.0015029827778910568 29 0.19027341068392958 
		39 0.80520910443975835 40 0.0022487473649366102
		5 27 0.00046129899509337057 28 0.001057071180498658 29 0.13204834615090158 
		39 0.86466814133829961 40 0.0017651423352067006
		5 29 0.00017647947024564199 39 0.036051718126368856 40 0.96362806642775201 
		41 9.8278124929346541e-05 42 4.5457850704272883e-05
		5 29 0.0013188537385118106 39 0.18502278909782965 40 0.81251705094128091 
		41 0.00082292579251963766 42 0.00031838042985801577
		5 29 0.0026770405399019295 39 0.29040568674319106 40 0.70439248886474104 
		41 0.0018241682253092965 42 0.000700615626856706
		5 29 0.0032515147052562163 39 0.32264170751693194 40 0.67082932178196286 
		41 0.0022686364233672801 42 0.001008819572481836
		5 29 0.002705752636213918 39 0.293112785661654 40 0.70136264385111213 
		41 0.0018009274826692281 42 0.0010178903683508516
		5 29 0.0013064784511328841 39 0.18634601854629135 40 0.81100491844337108 
		41 0.00078608083903097098 42 0.00055650372017369886
		5 29 0.0001599176705280899 39 0.033630197245872732 40 0.96605894104983792 
		41 8.6562193180932679e-05 42 6.4381840580330933e-05
		2 39 1.6078203107946681e-08 40 0.9999999839217969
		5 29 0.00024234546170262016 39 0.0038851237565995528 40 0.99136939405543489 
		41 0.0042214578435953729 42 0.00028167888266753248
		5 29 0.0010537363151362678 39 0.015207089906858793 40 0.96103756822994324 
		41 0.02151670983218136 42 0.0011848957158803581
		5 39 0.026736263867326849 40 0.92161018877292356 41 0.046885447812346097 
		42 0.0025108843344323266 43 0.002257215212971135
		5 39 0.030452957331931246 40 0.90498173575088536 41 0.057814717491496789 
		42 0.0035344600926569929 43 0.0032161293330296536
		5 39 0.025390452944030084 40 0.9242058765144886 41 0.043960695343610523 
		42 0.0034093380998854151 43 0.0030336370979854553
		5 39 0.013317848455556483 40 0.96496438464496803 41 0.018438435550533726 
		42 0.0017820906155212254 43 0.00149724073342051
		5 39 0.0029805112292530665 40 0.99325963296471254 41 0.003177988482589622 
		42 0.00032532324348122376 43 0.00025654407996359346
		5 39 0.00066173398236346527 40 0.99861412840432029 41 0.00062710178794805037 
		42 5.4572052424525392e-05 43 4.2463772943721523e-05
		5 28 0.00013146912420043084 29 0.0019014268034028105 30 8.4698508733075436e-05 
		39 0.9576702110174713 40 0.040212194546192501
		5 28 4.7768546364128921e-05 29 0.00073743208229054536 39 0.98431735296095235 
		40 0.014866219795400282 42 3.1226614992595304e-05
		5 28 0.00021304526702379848 29 0.003207053000208173 39 0.94232941733895437 
		40 0.054072160367322257 42 0.00017832402649149367
		5 28 0.00072511224247941532 29 0.0099879155761484831 39 0.8431468129001457 
		40 0.14557077782006586 42 0.00056938146116043351
		5 28 0.0012066662946734253 29 0.015259987739110295 30 0.00086291693420658343 
		39 0.76535673052532494 40 0.21731369850668475
		5 28 0.001009742747846589 29 0.012366663553785743 30 0.00080170845691624501 
		39 0.77395423710075029 40 0.21186764814070116
		5 28 0.00051382345203031872 29 0.0067306989240775751 30 0.00037668884134476927 
		39 0.8618269290968722 40 0.13055185968567526
		5 28 0.0042035873995736918 29 0.39860704823937493 30 0.0028694820130943941 
		39 0.59064729551565287 40 0.0036725868323040675
		5 28 0.0012969634227623155 29 0.015702503016721509 30 0.0010176901258723925 
		39 0.74155457003478897 40 0.24042827339985479
		5 27 5.5591274217877264e-05 28 0.36398841895788608 29 0.63558231636012807 
		30 0.00032615592802255129 39 4.7517479745441397e-05;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.38870050540429557 -0.92136416095832874 0 -0 0.92136416095832874 0.38870050540429557 -0 0
		 0 -0 1 -0 -0.80127697829814215 1.8563768853358402 0.7887202317130233 1;
	setAttr ".pm[1]" -type "matrix" -0.012728295233860504 0.99991782735513501 -0.0015261185493631081 -0
		 0.99280702824109124 0.012819459325065943 0.11903724685032832 -0 0.11904702925958592 1.0690233420707081e-16 -0.99288861652476801 -0
		 -0.90795101870048134 -2.46693888076021 -0.90323233470182485 1;
	setAttr ".pm[2]" -type "matrix" -0.39293464796513461 0.91862659735055918 -0.041563650809936667 -0
		 0.89526386431128191 0.39248175502475208 0.21085702556737568 -0 0.210011846539538 0.045642596473303453 -0.9766328776465748 -0
		 -0.37507697621182828 -2.8657604802815309 -0.94611761528610516 1;
	setAttr ".pm[3]" -type "matrix" -0.32518953744402895 0.9445447650793507 0.045683164274527482 -0
		 0.94422144490049698 0.32697288226068943 -0.039173935928819348 0 -0.051938692002751134 0.030396069274366267 -0.99818758319551948 0
		 -1.5297596850582682 -2.7773530357943352 -0.56315261966810504 1;
	setAttr ".pm[4]" -type "matrix" -0.10621461611790586 0.99329326174337518 0.045683164274527482 -0
		 0.99337604742855179 0.10802514123606741 -0.039173935928819348 0 -0.043846136866929383 0.041219716594552334 -0.99818758319551959 0
		 -2.7052352910001209 -2.2299093056565908 -0.56315261966810515 1;
	setAttr ".pm[5]" -type "matrix" -0.010519469911885265 0.99890059027644973 0.045683164274527607 -0
		 0.99915653175010688 0.012313724251499982 -0.039173935928819466 0 -0.039693397610562217 0.045232542935574056 -0.99818758319551937 0
		 -3.4912318179848607 -1.9040448117726043 -0.56315261966810481 1;
	setAttr ".pm[6]" -type "matrix" 0.18782479845871752 -0.9779020118066285 -0.091812310658712079 -0
		 0.96088145788389734 0.20231395106606309 -0.18914515351696121 -0 0.20354033747357872 -0.052694596578666153 0.9776474878567194 -0
		 -4.1608222065879765 0.98034715670107386 1.5724203257326161 1;
	setAttr ".pm[7]" -type "matrix" 0.34072088111352394 -0.849256614102049 -0.40332677146099288 -0
		 0.89689896658620161 0.4222537097758039 -0.13143077385899588 -0 0.28192467949760502 -0.31696215544524442 0.90556803560289056 -0
		 -4.6827584700038933 -0.43291834424742021 1.8868280135693325 1;
	setAttr ".pm[8]" -type "matrix" 0.49931009676988697 -0.72413905348143826 -0.47572266972118704 -0
		 0.74200082470018769 0.64087873460052991 -0.19674659763529495 -0 0.4473524375790161 -0.25474905055727082 0.85730899787199377 -0
		 -4.6396417984943259 -1.780216437068677 2.3527934785693621 1;
	setAttr ".pm[9]" -type "matrix" 0.75560597721547873 -0.45027497011225115 -0.47572266972118704 -0
		 0.40753183853562547 0.89174468145243679 -0.19674659763529498 -0 0.51281322894014236 -0.045209229054513987 0.85730899787199377 -0
		 -3.7930210190858711 -3.6363074555288435 2.3527934785693625 1;
	setAttr ".pm[10]" -type "matrix" 0.79321040146322364 0.038916304998988877 -0.60770287165339087 -0
		 -0.15684837943322541 0.97734058610779651 -0.14214065082037369 0 0.58840109184103584 0.20806465329722415 0.78134067804548823 -0
		 -1.2358328313690483 -5.3627024397852345 2.4055843427903012 1;
	setAttr ".pm[11]" -type "matrix" 0.72720608614304327 0.42405058758597708 -0.53977069894956764 -0
		 -0.45549869923060748 0.88638807213164816 0.082686882768454525 0 0.51350973045867554 0.18573444686090734 0.83774129179212098 -0
		 0.1968172812762447 -5.9805478664821443 1.0033621058298416 1;
	setAttr ".pm[12]" -type "matrix" 0.62226019538348465 0.49094017626205783 -0.60972944210779889 -0
		 -0.5253983994062138 0.83932464881653146 0.13960893879116207 0 0.58030058688812003 0.23347778742481168 0.78021750277503932 -0
		 0.47614274721700267 -5.961344900019987 0.95798160440020297 1;
	setAttr ".pm[13]" -type "matrix" 0.45797868524516239 0.60280760005635936 -0.65335941194369052 -0
		 -0.66368542414675347 0.72082410497382132 0.19983560109207887 0 0.5914196324406692 0.34210467258279464 0.7301966936112233 -0
		 1.1441516084105745 -5.8141102579502952 0.85898842630906724 1;
	setAttr ".pm[14]" -type "matrix" 0.38497552542387919 -0.10503749339307361 -0.91693018807666515 -0
		 0.17781968135064385 0.98332967287429862 -0.037985725862222486 -0 0.90563458731928081 -0.14842465909216213 0.39723559108470113 -0
		 -3.0698135514498937 -3.9119159816185101 3.2206463961358001 1;
	setAttr ".pm[15]" -type "matrix" -0.92031411290042264 0.077623837547557792 -0.3834011912353672 -0
		 0.20793806673474038 0.92724908623729163 -0.31140149722621147 -0 0.33133622500252974 -0.36631089516488313 -0.86950137095037139 -0
		 1.3350913447026536 -3.8738355210740298 3.8541836841977992 1;
	setAttr ".pm[16]" -type "matrix" 0.91869087271364847 -0.094924216888717688 0.38340119123536714 -0
		 -0.031825581119802333 0.94974535529880866 0.31140149722621158 0 -0.39369304385399273 -0.29828367896417524 0.86950137095037128 -0
		 -0.78530619882558672 -3.7939732910568535 -3.8541836841977997 1;
	setAttr ".pm[17]" -type "matrix" 0.80215999093071677 -0.39002924497921759 0.452124470705772 -0
		 0.2418572836977026 0.90452625422546051 0.35119411973896503 -0 -0.54593443129409036 -0.17236427552656972 0.81990618563942996 -0
		 -4.4547110826954048 -2.2284950952224647 -4.392248129419202 1;
	setAttr ".pm[18]" -type "matrix" 0.8806009698142695 -0.14186400160433182 0.45212447070577194 -0
		 -0.029550252819743231 0.93583624252273023 0.35119411973896497 0 -0.47293626898394825 -0.32262227485054945 0.81990618563942974 -0
		 -4.8264647244913848 -3.7828002607320328 -4.3922481294192028 1;
	setAttr ".pm[19]" -type "matrix" 0.04444990963230469 -0.99486331132534522 -0.090946123130399792 -0
		 0.99875087560877895 0.046333564308836124 -0.018705327827550827 -0 0.022823102426645002 -0.090001069978133355 0.99568012604370837 -0
		 -5.1987338443485154 1.1631347543266388 0.9593990667563872 1;
	setAttr ".pm[20]" -type "matrix" 0.59746412934814974 -0.79672166835715486 -0.090946123130399792 -0
		 0.79887115989862156 0.60121126119950097 -0.018705327827550827 -0 0.06958077338236654 -0.061478472468806014 0.99568012604370837 -0
		 -6.0311161264281017 -2.7072772985180777 0.9593990667563872 1;
	setAttr ".pm[21]" -type "matrix" 0.86518594954605277 0.49313494643519812 -0.090946123130399764 -0
		 -0.49658384305064746 0.86778718447088932 -0.018705327827550817 0 0.069697629293580379 0.061345962152701043 0.99568012604370804 -0
		 1.7365891972474419 -7.8707547550432926 0.95939906675638709 1;
	setAttr ".pm[22]" -type "matrix" 0.99585451783966294 -0.0016068558999377096 -0.090946123130399764 -0
		 -9.4996095158742211e-05 0.99982503553702085 -0.018705327827550817 0 0.090960267557186225 0.018636424751305627 0.99568012604370815 -0
		 -3.6603758191881481 -6.9736763934885175 0.95939906675638698 1;
	setAttr ".pm[23]" -type "matrix" -0.32924786964475911 0.69647275897298944 0.63759041424957197 -0
		 0.89339606886512035 0.44836933267261597 -0.02843247535938619 0 -0.30567843311352066 0.56025943769584607 -0.76985067253461437 0
		 -3.5395339554045822 -2.4005302806614881 -1.426859062061397 1;
	setAttr ".pm[24]" -type "matrix" -0.2788948936776629 0.7069333932652262 0.64997139611450527 -0
		 0.8885321965626376 0.44672740812313078 -0.10461911155789998 0 -0.36431878067442514 0.54834277629791328 -0.75272307373282876 0
		 -4.0483565879838146 -2.4178888731886139 -1.0785180430682908 1;
	setAttr ".pm[25]" -type "matrix" -0.23031898058193831 0.6528205623008978 0.72164983241239422 -0
		 0.83303853881336309 0.51558677386086182 -0.20054194441922923 0 -0.50299101387141465 0.55497350572517268 -0.66257410748362211 0
		 -4.4246285444210187 -2.6889499752129313 -0.5852217214780755 1;
	setAttr ".pm[26]" -type "matrix" -0.43594206856657181 0.59749643679491382 0.67301747441747795 -0
		 0.7008473455733657 0.69452627827057267 -0.16262302110831151 0 -0.5645949973712715 0.40078829425147744 -0.72152701414037557 0
		 -3.9504407157143104 -3.7708443752185148 -0.80903150093020237 1;
	setAttr ".pm[27]" -type "matrix" -0.80828667061645421 0.2506903381799318 0.53275417637687217 -0
		 0.21819681833351881 0.96794042383007672 -0.12442461325951773 0 -0.54686635165540887 0.015674509845052274 -0.83707317671050763 0
		 -1.278220982043448 -5.4701710369415641 -1.0637098843123747 1;
	setAttr ".pm[28]" -type "matrix" -0.82004746298995335 -0.20903383935798978 0.53275417637687217 -0
		 -0.32022389937182466 0.93913533097542601 -0.12442461325951776 0 -0.47431931513996423 -0.27263470820300051 -0.83707317671050752 0
		 1.4741587314170379 -5.4790257814298382 -1.0637098843123742 1;
	setAttr ".pm[29]" -type "matrix" -0.68115616977266769 -0.5822485630455535 0.44386133331482847 -0
		 -0.71347233761844253 0.66391571243737957 -0.22399363882048567 0 -0.16426653899654681 -0.4692574321309736 -0.86764852708682749 0
		 3.7155105341486685 -4.2535038943938588 -0.56138920422851701 1;
	setAttr ".pm[30]" -type "matrix" -0.50408143703462183 -0.80314784176126897 0.31757746946426541 0
		 -0.83807469275740265 0.36604707764536509 -0.40452484016049428 0 0.20864494769031905 -0.47006710289224019 -0.85761541764464611 -0
		 4.7675519887131355 -2.6983875271677138 0.40050570930127832 1;
	setAttr ".pm[31]" -type "matrix" -0.13887805416914528 -0.9736202144440087 0.18104298963559595 0
		 -0.84422276414869568 0.020829102434948937 -0.53558759599610806 0 0.51768794709103294 -0.22722197630897611 -0.82484505388522256 -0
		 5.131402912047518 -0.54383195128390038 1.1062768597705592 1;
	setAttr ".pm[32]" -type "matrix" -0.44544497944150713 0.31790426679360734 -0.8369681280937612 0
		 -0.53604559259280804 0.65406161496897952 0.53372139406810004 0 0.71710103399185066 0.68639659161347089 -0.12093728155217454 -0
		 3.5487087479939037 -1.8700671021165951 -2.7925192544727233 1;
	setAttr ".pm[33]" -type "matrix" -0.052113644842616026 -0.12229877356956341 -0.99112419908132532 0
		 -0.12985134008384805 0.98487688501104831 -0.11470026525411023 0 0.99016301561896736 0.12272135655343426 -0.067206183837786579 -0
		 1.5808752886267781 -4.2107979269501721 0.024886578657810372 1;
	setAttr ".pm[34]" -type "matrix" 0.51285923410589029 0.15316128048266991 0.84469937146491858 -0
		 -0.35222853801336468 0.93486282786315433 0.044345801251915153 0 -0.78288598339814941 -0.3202703783377655 0.53340080779662979 -0
		 1.1996854652596878 -4.1723182493855946 0.61489409327925182 1;
	setAttr ".pm[35]" -type "matrix" -0.73333549252294605 0.11850971777536495 0.66945836479868692 -0
		 0.055614854265168837 0.99184696103279268 -0.11465859703955258 0 -0.67758840263923692 -0.046851389337113004 -0.73394748035945334 0
		 -1.6184639253570574 -4.1509626321413302 0.61671609555364271 1;
	setAttr ".pm[36]" -type "matrix" 0.71787470010069721 0.19100108051108461 -0.66945836479868681 -0
		 -0.15418153999379064 0.98136713764526728 0.1146585970395526 0 0.67888435515960788 0.020907615682650958 0.73394748035945312 -0
		 2.987810459616135 -3.9063461047656256 -0.61671609555364337 1;
	setAttr ".pm[37]" -type "matrix" 0.86346497510865083 0.01229272663840846 -0.50425898666499791 -0
		 0.11820591342388179 0.96693328786482802 0.22598092585556948 -0 0.49036272165840966 -0.25473300863984616 0.83345995435716624 -0
		 -0.31526851927339061 -4.1175003486713431 -0.84111836428204012 1;
	setAttr ".pm[38]" -type "matrix" 0.85074581735119792 0.14817026903880434 -0.50425898666499791 -0
		 -0.035601726522438017 0.97348093880572806 0.22598092585556945 0 0.52437016632152489 -0.17429983693304779 0.83345995435716613 -0
		 -0.54266115293508965 -4.2561403836399734 -0.84111836428203923 1;
	setAttr ".pm[39]" -type "matrix" -0.51836859257157597 0.80319048658789161 -0.2935626755738362 -0
		 0.85499374135413664 0.49348852949922861 -0.15954552171071609 -0 0.016724367869042668 -0.33369763785108691 -0.94253179363456308 -0
		 -4.8180154521350591 -3.4553778402904016 -0.7848661515675518 1;
	setAttr ".pm[40]" -type "matrix" 0.13331225767208435 -0.9465985408103601 0.29356267557383614 -0
		 0.96950646724456246 0.18601730154215074 0.15954552171071607 0 -0.20563329478793038 0.26334153880972577 0.94253179363456319 -0
		 -6.3757106097054148 -0.94555417178716261 0.7848661515675518 1;
	setAttr ".pm[41]" -type "matrix" 0.95562517126066493 0.024525243382202185 0.2935626755738362 -0
		 -0.074275015140186543 0.98439242613298306 0.15954552171071609 0 -0.28506798167972303 -0.17427008868151553 0.94253179363456319 -0
		 0.085391099712523177 -7.5497824375075142 0.78486615156755213 1;
	setAttr ".pm[42]" -type "matrix" -0.16932532307067247 0.96527649990704545 -0.19892263243335806 -0
		 0.98556021377032699 0.16584045593116589 -0.034176135087669167 -0 1.3183898417423744e-16 -0.2018371172598033 -0.97941910237459295 -0
		 -5.7236422783817282 -1.9839300723893565 -0.95909989525908557 1;
	setAttr ".pm[43]" -type "matrix" 0.62316378607661982 -0.75637073054715476 0.19892263243335795 -0
		 0.7669143872697135 0.64083875849482563 0.034176135087669222 0 -0.15332716106865452 0.13125929903200931 0.97941910237459284 -0
		 -6.1360967711649694 -4.1170383759049205 0.95909989525908523 1;
	setAttr ".pm[44]" -type "matrix" 0.98000917862884818 -0.0034345464029732859 0.19892263243335798 -0
		 -0.0034345464029732738 0.99940992374574489 0.034176135087669222 0 -0.19892263243335823 -0.034176135087669333 0.97941910237459295 -0
		 -1.6944175488132156 -8.489243544670618 0.95909989525908523 1;
	setAttr ".gm" -type "matrix" 0.039607107782577262 0.11970527137582093 8.7490826184895261e-19 0
		 -1.7310715472768667 0.57276289142765791 0.24077833965570336 0 0.015671219202719751 -0.0051851657066782119 0.12500240768622908 0
		 -0.012418023358079941 5.5200234100020431 -1.7966621403707963 1;
	setAttr -s 9 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 9 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 9 ".ifcl";
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "32681C76-7641-85C9-E73A-68B274726C6A";
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
connectAttr "smallShieldStem6.s" "leftLeaf.is";
connectAttr "leftLeaf.s" "leftLeaf1.is";
connectAttr "leftLeaf1.s" "leftLeaf2.is";
connectAttr "smallShieldStem4.s" "midLeaf.is";
connectAttr "midLeaf.s" "midLeaf1.is";
connectAttr "midLeaf1.s" "midLeaf2.is";
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
connectAttr "smallShieldStem.wm" "skinCluster1.ma[23]";
connectAttr "smallShieldStem1.wm" "skinCluster1.ma[24]";
connectAttr "smallShieldStem2.wm" "skinCluster1.ma[25]";
connectAttr "smallShieldStem3.wm" "skinCluster1.ma[26]";
connectAttr "smallShieldStem4.wm" "skinCluster1.ma[27]";
connectAttr "smallShieldStem5.wm" "skinCluster1.ma[28]";
connectAttr "smallShieldStem6.wm" "skinCluster1.ma[29]";
connectAttr "smallShieldStem7.wm" "skinCluster1.ma[30]";
connectAttr "smallShieldStem8.wm" "skinCluster1.ma[31]";
connectAttr "smallShieldStem9.wm" "skinCluster1.ma[32]";
connectAttr "smallShieldStem10.wm" "skinCluster1.ma[33]";
connectAttr "smallShieldStem11.wm" "skinCluster1.ma[34]";
connectAttr "smallShieldLeft.wm" "skinCluster1.ma[35]";
connectAttr "smallShieldRight.wm" "skinCluster1.ma[37]";
connectAttr "leftLeaf.wm" "skinCluster1.ma[39]";
connectAttr "midLeaf.wm" "skinCluster1.ma[42]";
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
connectAttr "smallShieldStem.liw" "skinCluster1.lw[23]";
connectAttr "smallShieldStem1.liw" "skinCluster1.lw[24]";
connectAttr "smallShieldStem2.liw" "skinCluster1.lw[25]";
connectAttr "smallShieldStem3.liw" "skinCluster1.lw[26]";
connectAttr "smallShieldStem4.liw" "skinCluster1.lw[27]";
connectAttr "smallShieldStem5.liw" "skinCluster1.lw[28]";
connectAttr "smallShieldStem6.liw" "skinCluster1.lw[29]";
connectAttr "smallShieldStem7.liw" "skinCluster1.lw[30]";
connectAttr "smallShieldStem8.liw" "skinCluster1.lw[31]";
connectAttr "smallShieldStem9.liw" "skinCluster1.lw[32]";
connectAttr "smallShieldStem10.liw" "skinCluster1.lw[33]";
connectAttr "smallShieldStem11.liw" "skinCluster1.lw[34]";
connectAttr "smallShieldLeft.liw" "skinCluster1.lw[35]";
connectAttr "smallShieldRight.liw" "skinCluster1.lw[37]";
connectAttr "leftLeaf.liw" "skinCluster1.lw[39]";
connectAttr "midLeaf.liw" "skinCluster1.lw[42]";
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
connectAttr "smallShieldStem.obcc" "skinCluster1.ifcl[23]";
connectAttr "smallShieldStem1.obcc" "skinCluster1.ifcl[24]";
connectAttr "smallShieldStem2.obcc" "skinCluster1.ifcl[25]";
connectAttr "smallShieldStem3.obcc" "skinCluster1.ifcl[26]";
connectAttr "smallShieldStem4.obcc" "skinCluster1.ifcl[27]";
connectAttr "smallShieldStem5.obcc" "skinCluster1.ifcl[28]";
connectAttr "smallShieldStem6.obcc" "skinCluster1.ifcl[29]";
connectAttr "smallShieldStem7.obcc" "skinCluster1.ifcl[30]";
connectAttr "smallShieldStem8.obcc" "skinCluster1.ifcl[31]";
connectAttr "smallShieldStem9.obcc" "skinCluster1.ifcl[32]";
connectAttr "smallShieldStem10.obcc" "skinCluster1.ifcl[33]";
connectAttr "smallShieldStem11.obcc" "skinCluster1.ifcl[34]";
connectAttr "smallShieldLeft.obcc" "skinCluster1.ifcl[35]";
connectAttr "smallShieldRight.obcc" "skinCluster1.ifcl[37]";
connectAttr "leftLeaf.obcc" "skinCluster1.ifcl[39]";
connectAttr "midLeaf.obcc" "skinCluster1.ifcl[42]";
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
connectAttr "smallShieldStem.msg" "bindPose1.m[23]";
connectAttr "smallShieldStem1.msg" "bindPose1.m[24]";
connectAttr "smallShieldStem2.msg" "bindPose1.m[25]";
connectAttr "smallShieldStem3.msg" "bindPose1.m[26]";
connectAttr "smallShieldStem4.msg" "bindPose1.m[27]";
connectAttr "smallShieldStem5.msg" "bindPose1.m[28]";
connectAttr "smallShieldStem6.msg" "bindPose1.m[29]";
connectAttr "smallShieldStem7.msg" "bindPose1.m[30]";
connectAttr "smallShieldStem8.msg" "bindPose1.m[31]";
connectAttr "smallShieldStem9.msg" "bindPose1.m[32]";
connectAttr "smallShieldStem10.msg" "bindPose1.m[33]";
connectAttr "smallShieldStem11.msg" "bindPose1.m[34]";
connectAttr "smallShieldLeft.msg" "bindPose1.m[35]";
connectAttr "smallShieldRight.msg" "bindPose1.m[37]";
connectAttr "leftLeaf.msg" "bindPose1.m[39]";
connectAttr "leftLeaf1.msg" "bindPose1.m[40]";
connectAttr "midLeaf.msg" "bindPose1.m[42]";
connectAttr "midLeaf1.msg" "bindPose1.m[43]";
connectAttr "bigShieldLeft1.msg" "bindPose1.m[45]";
connectAttr "bigShieldRight1.msg" "bindPose1.m[46]";
connectAttr "rightLeaf3.msg" "bindPose1.m[47]";
connectAttr "smallShieldRight1.msg" "bindPose1.m[49]";
connectAttr "smallShieldLeft1.msg" "bindPose1.m[61]";
connectAttr "midLeaf2.msg" "bindPose1.m[71]";
connectAttr "leftLeaf2.msg" "bindPose1.m[75]";
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
connectAttr "bindPose1.m[5]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "bindPose1.m[31]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[33]" "bindPose1.p[34]";
connectAttr "bindPose1.m[34]" "bindPose1.p[35]";
connectAttr "bindPose1.m[34]" "bindPose1.p[37]";
connectAttr "bindPose1.m[29]" "bindPose1.p[39]";
connectAttr "bindPose1.m[39]" "bindPose1.p[40]";
connectAttr "bindPose1.m[27]" "bindPose1.p[42]";
connectAttr "bindPose1.m[42]" "bindPose1.p[43]";
connectAttr "bindPose1.m[15]" "bindPose1.p[45]";
connectAttr "bindPose1.m[17]" "bindPose1.p[46]";
connectAttr "bindPose1.m[21]" "bindPose1.p[47]";
connectAttr "bindPose1.m[37]" "bindPose1.p[49]";
connectAttr "bindPose1.m[35]" "bindPose1.p[61]";
connectAttr "bindPose1.m[43]" "bindPose1.p[71]";
connectAttr "bindPose1.m[40]" "bindPose1.p[75]";
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
connectAttr "smallShieldStem.bps" "bindPose1.wm[23]";
connectAttr "smallShieldStem1.bps" "bindPose1.wm[24]";
connectAttr "smallShieldStem2.bps" "bindPose1.wm[25]";
connectAttr "smallShieldStem3.bps" "bindPose1.wm[26]";
connectAttr "smallShieldStem4.bps" "bindPose1.wm[27]";
connectAttr "smallShieldStem5.bps" "bindPose1.wm[28]";
connectAttr "smallShieldStem6.bps" "bindPose1.wm[29]";
connectAttr "smallShieldStem7.bps" "bindPose1.wm[30]";
connectAttr "smallShieldStem8.bps" "bindPose1.wm[31]";
connectAttr "smallShieldStem9.bps" "bindPose1.wm[32]";
connectAttr "smallShieldStem10.bps" "bindPose1.wm[33]";
connectAttr "smallShieldStem11.bps" "bindPose1.wm[34]";
connectAttr "smallShieldLeft.bps" "bindPose1.wm[35]";
connectAttr "smallShieldRight.bps" "bindPose1.wm[37]";
connectAttr "leftLeaf.bps" "bindPose1.wm[39]";
connectAttr "leftLeaf1.bps" "bindPose1.wm[40]";
connectAttr "midLeaf.bps" "bindPose1.wm[42]";
connectAttr "midLeaf1.bps" "bindPose1.wm[43]";
connectAttr "bigShieldLeft1.bps" "bindPose1.wm[45]";
connectAttr "bigShieldRight1.bps" "bindPose1.wm[46]";
connectAttr "rightLeaf3.bps" "bindPose1.wm[47]";
connectAttr "smallShieldRight1.bps" "bindPose1.wm[49]";
connectAttr "smallShieldLeft1.bps" "bindPose1.wm[61]";
connectAttr "midLeaf2.bps" "bindPose1.wm[71]";
connectAttr "leftLeaf2.bps" "bindPose1.wm[75]";
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
connectAttr "rightLeaf2.wm" "skinCluster2.ma[21]";
connectAttr "rightLeaf3.wm" "skinCluster2.ma[22]";
connectAttr "smallShieldRight.wm" "skinCluster2.ma[37]";
connectAttr "smallShieldRight1.wm" "skinCluster2.ma[38]";
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
connectAttr "rightLeaf2.liw" "skinCluster2.lw[21]";
connectAttr "rightLeaf3.liw" "skinCluster2.lw[22]";
connectAttr "smallShieldRight.liw" "skinCluster2.lw[37]";
connectAttr "smallShieldRight1.liw" "skinCluster2.lw[38]";
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
connectAttr "rightLeaf2.obcc" "skinCluster2.ifcl[21]";
connectAttr "rightLeaf3.obcc" "skinCluster2.ifcl[22]";
connectAttr "smallShieldRight.obcc" "skinCluster2.ifcl[37]";
connectAttr "smallShieldRight1.obcc" "skinCluster2.ifcl[38]";
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
connectAttr "smallShieldStem.wm" "skinCluster6.ma[23]";
connectAttr "smallShieldStem1.wm" "skinCluster6.ma[24]";
connectAttr "smallShieldStem2.wm" "skinCluster6.ma[25]";
connectAttr "smallShieldStem3.wm" "skinCluster6.ma[26]";
connectAttr "smallShieldStem4.wm" "skinCluster6.ma[27]";
connectAttr "smallShieldStem6.wm" "skinCluster6.ma[29]";
connectAttr "smallShieldStem7.wm" "skinCluster6.ma[30]";
connectAttr "smallShieldStem8.wm" "skinCluster6.ma[31]";
connectAttr "smallShieldStem9.wm" "skinCluster6.ma[32]";
connectAttr "smallShieldStem10.wm" "skinCluster6.ma[33]";
connectAttr "smallShieldStem11.wm" "skinCluster6.ma[34]";
connectAttr "smallShieldLeft.wm" "skinCluster6.ma[35]";
connectAttr "smallShieldLeft1.wm" "skinCluster6.ma[36]";
connectAttr "smallShieldRight.wm" "skinCluster6.ma[37]";
connectAttr "smallShieldRight1.wm" "skinCluster6.ma[38]";
connectAttr "leftLeaf.wm" "skinCluster6.ma[39]";
connectAttr "leftLeaf1.wm" "skinCluster6.ma[40]";
connectAttr "midLeaf.wm" "skinCluster6.ma[42]";
connectAttr "stem4.liw" "skinCluster6.lw[4]";
connectAttr "stem5.liw" "skinCluster6.lw[5]";
connectAttr "bigShieldStem.liw" "skinCluster6.lw[6]";
connectAttr "rightLeaf.liw" "skinCluster6.lw[19]";
connectAttr "smallShieldStem.liw" "skinCluster6.lw[23]";
connectAttr "smallShieldStem1.liw" "skinCluster6.lw[24]";
connectAttr "smallShieldStem2.liw" "skinCluster6.lw[25]";
connectAttr "smallShieldStem3.liw" "skinCluster6.lw[26]";
connectAttr "smallShieldStem4.liw" "skinCluster6.lw[27]";
connectAttr "smallShieldStem6.liw" "skinCluster6.lw[29]";
connectAttr "smallShieldStem7.liw" "skinCluster6.lw[30]";
connectAttr "smallShieldStem8.liw" "skinCluster6.lw[31]";
connectAttr "smallShieldStem9.liw" "skinCluster6.lw[32]";
connectAttr "smallShieldStem10.liw" "skinCluster6.lw[33]";
connectAttr "smallShieldStem11.liw" "skinCluster6.lw[34]";
connectAttr "smallShieldLeft.liw" "skinCluster6.lw[35]";
connectAttr "smallShieldLeft1.liw" "skinCluster6.lw[36]";
connectAttr "smallShieldRight.liw" "skinCluster6.lw[37]";
connectAttr "smallShieldRight1.liw" "skinCluster6.lw[38]";
connectAttr "leftLeaf.liw" "skinCluster6.lw[39]";
connectAttr "leftLeaf1.liw" "skinCluster6.lw[40]";
connectAttr "midLeaf.liw" "skinCluster6.lw[42]";
connectAttr "stem4.obcc" "skinCluster6.ifcl[4]";
connectAttr "stem5.obcc" "skinCluster6.ifcl[5]";
connectAttr "bigShieldStem.obcc" "skinCluster6.ifcl[6]";
connectAttr "rightLeaf.obcc" "skinCluster6.ifcl[19]";
connectAttr "smallShieldStem.obcc" "skinCluster6.ifcl[23]";
connectAttr "smallShieldStem1.obcc" "skinCluster6.ifcl[24]";
connectAttr "smallShieldStem2.obcc" "skinCluster6.ifcl[25]";
connectAttr "smallShieldStem3.obcc" "skinCluster6.ifcl[26]";
connectAttr "smallShieldStem4.obcc" "skinCluster6.ifcl[27]";
connectAttr "smallShieldStem6.obcc" "skinCluster6.ifcl[29]";
connectAttr "smallShieldStem7.obcc" "skinCluster6.ifcl[30]";
connectAttr "smallShieldStem8.obcc" "skinCluster6.ifcl[31]";
connectAttr "smallShieldStem9.obcc" "skinCluster6.ifcl[32]";
connectAttr "smallShieldStem10.obcc" "skinCluster6.ifcl[33]";
connectAttr "smallShieldStem11.obcc" "skinCluster6.ifcl[34]";
connectAttr "smallShieldLeft.obcc" "skinCluster6.ifcl[35]";
connectAttr "smallShieldLeft1.obcc" "skinCluster6.ifcl[36]";
connectAttr "smallShieldRight.obcc" "skinCluster6.ifcl[37]";
connectAttr "smallShieldRight1.obcc" "skinCluster6.ifcl[38]";
connectAttr "leftLeaf.obcc" "skinCluster6.ifcl[39]";
connectAttr "leftLeaf1.obcc" "skinCluster6.ifcl[40]";
connectAttr "midLeaf.obcc" "skinCluster6.ifcl[42]";
connectAttr "bindPose1.msg" "skinCluster6.bp";
connectAttr "leftLeaf.msg" "skinCluster6.ptt";
connectAttr "smallShieldStem9.wm" "skinCluster7.ma[32]";
connectAttr "smallShieldStem10.wm" "skinCluster7.ma[33]";
connectAttr "smallShieldStem11.wm" "skinCluster7.ma[34]";
connectAttr "smallShieldLeft.wm" "skinCluster7.ma[35]";
connectAttr "smallShieldRight.wm" "skinCluster7.ma[37]";
connectAttr "smallShieldStem9.liw" "skinCluster7.lw[32]";
connectAttr "smallShieldStem10.liw" "skinCluster7.lw[33]";
connectAttr "smallShieldStem11.liw" "skinCluster7.lw[34]";
connectAttr "smallShieldLeft.liw" "skinCluster7.lw[35]";
connectAttr "smallShieldRight.liw" "skinCluster7.lw[37]";
connectAttr "smallShieldStem9.obcc" "skinCluster7.ifcl[32]";
connectAttr "smallShieldStem10.obcc" "skinCluster7.ifcl[33]";
connectAttr "smallShieldStem11.obcc" "skinCluster7.ifcl[34]";
connectAttr "smallShieldLeft.obcc" "skinCluster7.ifcl[35]";
connectAttr "smallShieldRight.obcc" "skinCluster7.ifcl[37]";
connectAttr "bindPose1.msg" "skinCluster7.bp";
connectAttr "smallShieldStem9.wm" "skinCluster8.ma[32]";
connectAttr "smallShieldStem10.wm" "skinCluster8.ma[33]";
connectAttr "smallShieldStem11.wm" "skinCluster8.ma[34]";
connectAttr "smallShieldLeft.wm" "skinCluster8.ma[35]";
connectAttr "smallShieldRight.wm" "skinCluster8.ma[37]";
connectAttr "smallShieldStem9.liw" "skinCluster8.lw[32]";
connectAttr "smallShieldStem10.liw" "skinCluster8.lw[33]";
connectAttr "smallShieldStem11.liw" "skinCluster8.lw[34]";
connectAttr "smallShieldLeft.liw" "skinCluster8.lw[35]";
connectAttr "smallShieldRight.liw" "skinCluster8.lw[37]";
connectAttr "smallShieldStem9.obcc" "skinCluster8.ifcl[32]";
connectAttr "smallShieldStem10.obcc" "skinCluster8.ifcl[33]";
connectAttr "smallShieldStem11.obcc" "skinCluster8.ifcl[34]";
connectAttr "smallShieldLeft.obcc" "skinCluster8.ifcl[35]";
connectAttr "smallShieldRight.obcc" "skinCluster8.ifcl[37]";
connectAttr "bindPose1.msg" "skinCluster8.bp";
connectAttr "smallShieldStem9.wm" "skinCluster9.ma[32]";
connectAttr "smallShieldStem10.wm" "skinCluster9.ma[33]";
connectAttr "smallShieldStem11.wm" "skinCluster9.ma[34]";
connectAttr "smallShieldLeft.wm" "skinCluster9.ma[35]";
connectAttr "smallShieldRight.wm" "skinCluster9.ma[37]";
connectAttr "smallShieldStem9.liw" "skinCluster9.lw[32]";
connectAttr "smallShieldStem10.liw" "skinCluster9.lw[33]";
connectAttr "smallShieldStem11.liw" "skinCluster9.lw[34]";
connectAttr "smallShieldLeft.liw" "skinCluster9.lw[35]";
connectAttr "smallShieldRight.liw" "skinCluster9.lw[37]";
connectAttr "smallShieldStem9.obcc" "skinCluster9.ifcl[32]";
connectAttr "smallShieldStem10.obcc" "skinCluster9.ifcl[33]";
connectAttr "smallShieldStem11.obcc" "skinCluster9.ifcl[34]";
connectAttr "smallShieldLeft.obcc" "skinCluster9.ifcl[35]";
connectAttr "smallShieldRight.obcc" "skinCluster9.ifcl[37]";
connectAttr "bindPose1.msg" "skinCluster9.bp";
connectAttr "bigShieldStem3.wm" "skinCluster13.ma[9]";
connectAttr "bigShieldStem4.wm" "skinCluster13.ma[10]";
connectAttr "bigShieldStem5.wm" "skinCluster13.ma[11]";
connectAttr "bigShieldStem6.wm" "skinCluster13.ma[12]";
connectAttr "rightLeaf.wm" "skinCluster13.ma[19]";
connectAttr "rightLeaf1.wm" "skinCluster13.ma[20]";
connectAttr "rightLeaf2.wm" "skinCluster13.ma[21]";
connectAttr "rightLeaf3.wm" "skinCluster13.ma[22]";
connectAttr "midLeaf1.wm" "skinCluster13.ma[43]";
connectAttr "midLeaf2.wm" "skinCluster13.ma[44]";
connectAttr "bigShieldStem3.liw" "skinCluster13.lw[9]";
connectAttr "bigShieldStem4.liw" "skinCluster13.lw[10]";
connectAttr "bigShieldStem5.liw" "skinCluster13.lw[11]";
connectAttr "bigShieldStem6.liw" "skinCluster13.lw[12]";
connectAttr "rightLeaf.liw" "skinCluster13.lw[19]";
connectAttr "rightLeaf1.liw" "skinCluster13.lw[20]";
connectAttr "rightLeaf2.liw" "skinCluster13.lw[21]";
connectAttr "rightLeaf3.liw" "skinCluster13.lw[22]";
connectAttr "midLeaf1.liw" "skinCluster13.lw[43]";
connectAttr "midLeaf2.liw" "skinCluster13.lw[44]";
connectAttr "bigShieldStem3.obcc" "skinCluster13.ifcl[9]";
connectAttr "bigShieldStem4.obcc" "skinCluster13.ifcl[10]";
connectAttr "bigShieldStem5.obcc" "skinCluster13.ifcl[11]";
connectAttr "bigShieldStem6.obcc" "skinCluster13.ifcl[12]";
connectAttr "rightLeaf.obcc" "skinCluster13.ifcl[19]";
connectAttr "rightLeaf1.obcc" "skinCluster13.ifcl[20]";
connectAttr "rightLeaf2.obcc" "skinCluster13.ifcl[21]";
connectAttr "rightLeaf3.obcc" "skinCluster13.ifcl[22]";
connectAttr "midLeaf1.obcc" "skinCluster13.ifcl[43]";
connectAttr "midLeaf2.obcc" "skinCluster13.ifcl[44]";
connectAttr "bindPose1.msg" "skinCluster13.bp";
connectAttr "rightLeaf1.wm" "skinCluster11.ma[20]";
connectAttr "rightLeaf2.wm" "skinCluster11.ma[21]";
connectAttr "rightLeaf3.wm" "skinCluster11.ma[22]";
connectAttr "midLeaf1.wm" "skinCluster11.ma[43]";
connectAttr "midLeaf2.wm" "skinCluster11.ma[44]";
connectAttr "rightLeaf1.liw" "skinCluster11.lw[20]";
connectAttr "rightLeaf2.liw" "skinCluster11.lw[21]";
connectAttr "rightLeaf3.liw" "skinCluster11.lw[22]";
connectAttr "midLeaf1.liw" "skinCluster11.lw[43]";
connectAttr "midLeaf2.liw" "skinCluster11.lw[44]";
connectAttr "rightLeaf1.obcc" "skinCluster11.ifcl[20]";
connectAttr "rightLeaf2.obcc" "skinCluster11.ifcl[21]";
connectAttr "rightLeaf3.obcc" "skinCluster11.ifcl[22]";
connectAttr "midLeaf1.obcc" "skinCluster11.ifcl[43]";
connectAttr "midLeaf2.obcc" "skinCluster11.ifcl[44]";
connectAttr "bindPose1.msg" "skinCluster11.bp";
connectAttr "midLeaf1.msg" "skinCluster11.ptt";
connectAttr "stem5.wm" "skinCluster10.ma[5]";
connectAttr "bigShieldStem.wm" "skinCluster10.ma[6]";
connectAttr "bigShieldStem1.wm" "skinCluster10.ma[7]";
connectAttr "bigShieldStem2.wm" "skinCluster10.ma[8]";
connectAttr "bigShieldStem3.wm" "skinCluster10.ma[9]";
connectAttr "rightLeaf.wm" "skinCluster10.ma[19]";
connectAttr "rightLeaf1.wm" "skinCluster10.ma[20]";
connectAttr "rightLeaf2.wm" "skinCluster10.ma[21]";
connectAttr "rightLeaf3.wm" "skinCluster10.ma[22]";
connectAttr "smallShieldStem.wm" "skinCluster10.ma[23]";
connectAttr "smallShieldStem1.wm" "skinCluster10.ma[24]";
connectAttr "smallShieldStem2.wm" "skinCluster10.ma[25]";
connectAttr "smallShieldStem3.wm" "skinCluster10.ma[26]";
connectAttr "smallShieldStem4.wm" "skinCluster10.ma[27]";
connectAttr "midLeaf.wm" "skinCluster10.ma[42]";
connectAttr "midLeaf1.wm" "skinCluster10.ma[43]";
connectAttr "midLeaf2.wm" "skinCluster10.ma[44]";
connectAttr "stem5.liw" "skinCluster10.lw[5]";
connectAttr "bigShieldStem.liw" "skinCluster10.lw[6]";
connectAttr "bigShieldStem1.liw" "skinCluster10.lw[7]";
connectAttr "bigShieldStem2.liw" "skinCluster10.lw[8]";
connectAttr "bigShieldStem3.liw" "skinCluster10.lw[9]";
connectAttr "rightLeaf.liw" "skinCluster10.lw[19]";
connectAttr "rightLeaf1.liw" "skinCluster10.lw[20]";
connectAttr "rightLeaf2.liw" "skinCluster10.lw[21]";
connectAttr "rightLeaf3.liw" "skinCluster10.lw[22]";
connectAttr "smallShieldStem.liw" "skinCluster10.lw[23]";
connectAttr "smallShieldStem1.liw" "skinCluster10.lw[24]";
connectAttr "smallShieldStem2.liw" "skinCluster10.lw[25]";
connectAttr "smallShieldStem3.liw" "skinCluster10.lw[26]";
connectAttr "smallShieldStem4.liw" "skinCluster10.lw[27]";
connectAttr "midLeaf.liw" "skinCluster10.lw[42]";
connectAttr "midLeaf1.liw" "skinCluster10.lw[43]";
connectAttr "midLeaf2.liw" "skinCluster10.lw[44]";
connectAttr "stem5.obcc" "skinCluster10.ifcl[5]";
connectAttr "bigShieldStem.obcc" "skinCluster10.ifcl[6]";
connectAttr "bigShieldStem1.obcc" "skinCluster10.ifcl[7]";
connectAttr "bigShieldStem2.obcc" "skinCluster10.ifcl[8]";
connectAttr "bigShieldStem3.obcc" "skinCluster10.ifcl[9]";
connectAttr "rightLeaf.obcc" "skinCluster10.ifcl[19]";
connectAttr "rightLeaf1.obcc" "skinCluster10.ifcl[20]";
connectAttr "rightLeaf2.obcc" "skinCluster10.ifcl[21]";
connectAttr "rightLeaf3.obcc" "skinCluster10.ifcl[22]";
connectAttr "smallShieldStem.obcc" "skinCluster10.ifcl[23]";
connectAttr "smallShieldStem1.obcc" "skinCluster10.ifcl[24]";
connectAttr "smallShieldStem2.obcc" "skinCluster10.ifcl[25]";
connectAttr "smallShieldStem3.obcc" "skinCluster10.ifcl[26]";
connectAttr "smallShieldStem4.obcc" "skinCluster10.ifcl[27]";
connectAttr "midLeaf.obcc" "skinCluster10.ifcl[42]";
connectAttr "midLeaf1.obcc" "skinCluster10.ifcl[43]";
connectAttr "midLeaf2.obcc" "skinCluster10.ifcl[44]";
connectAttr "bindPose1.msg" "skinCluster10.bp";
connectAttr "rightLeaf.wm" "skinCluster12.ma[19]";
connectAttr "rightLeaf1.wm" "skinCluster12.ma[20]";
connectAttr "rightLeaf2.wm" "skinCluster12.ma[21]";
connectAttr "smallShieldStem4.wm" "skinCluster12.ma[27]";
connectAttr "midLeaf.wm" "skinCluster12.ma[42]";
connectAttr "midLeaf1.wm" "skinCluster12.ma[43]";
connectAttr "midLeaf2.wm" "skinCluster12.ma[44]";
connectAttr "rightLeaf.liw" "skinCluster12.lw[19]";
connectAttr "rightLeaf1.liw" "skinCluster12.lw[20]";
connectAttr "rightLeaf2.liw" "skinCluster12.lw[21]";
connectAttr "smallShieldStem4.liw" "skinCluster12.lw[27]";
connectAttr "midLeaf.liw" "skinCluster12.lw[42]";
connectAttr "midLeaf1.liw" "skinCluster12.lw[43]";
connectAttr "midLeaf2.liw" "skinCluster12.lw[44]";
connectAttr "rightLeaf.obcc" "skinCluster12.ifcl[19]";
connectAttr "rightLeaf1.obcc" "skinCluster12.ifcl[20]";
connectAttr "rightLeaf2.obcc" "skinCluster12.ifcl[21]";
connectAttr "smallShieldStem4.obcc" "skinCluster12.ifcl[27]";
connectAttr "midLeaf.obcc" "skinCluster12.ifcl[42]";
connectAttr "midLeaf1.obcc" "skinCluster12.ifcl[43]";
connectAttr "midLeaf2.obcc" "skinCluster12.ifcl[44]";
connectAttr "bindPose1.msg" "skinCluster12.bp";
connectAttr "midLeaf2.msg" "skinCluster12.ptt";
connectAttr "rightLeaf1.wm" "skinCluster14.ma[20]";
connectAttr "rightLeaf2.wm" "skinCluster14.ma[21]";
connectAttr "leftLeaf1.wm" "skinCluster14.ma[40]";
connectAttr "leftLeaf2.wm" "skinCluster14.ma[41]";
connectAttr "midLeaf.wm" "skinCluster14.ma[42]";
connectAttr "midLeaf1.wm" "skinCluster14.ma[43]";
connectAttr "midLeaf2.wm" "skinCluster14.ma[44]";
connectAttr "rightLeaf1.liw" "skinCluster14.lw[20]";
connectAttr "rightLeaf2.liw" "skinCluster14.lw[21]";
connectAttr "leftLeaf1.liw" "skinCluster14.lw[40]";
connectAttr "leftLeaf2.liw" "skinCluster14.lw[41]";
connectAttr "midLeaf.liw" "skinCluster14.lw[42]";
connectAttr "midLeaf1.liw" "skinCluster14.lw[43]";
connectAttr "midLeaf2.liw" "skinCluster14.lw[44]";
connectAttr "rightLeaf1.obcc" "skinCluster14.ifcl[20]";
connectAttr "rightLeaf2.obcc" "skinCluster14.ifcl[21]";
connectAttr "leftLeaf1.obcc" "skinCluster14.ifcl[40]";
connectAttr "leftLeaf2.obcc" "skinCluster14.ifcl[41]";
connectAttr "midLeaf.obcc" "skinCluster14.ifcl[42]";
connectAttr "midLeaf1.obcc" "skinCluster14.ifcl[43]";
connectAttr "midLeaf2.obcc" "skinCluster14.ifcl[44]";
connectAttr "bindPose1.msg" "skinCluster14.bp";
connectAttr "leftLeaf2.msg" "skinCluster14.ptt";
connectAttr "smallShieldStem4.wm" "skinCluster16.ma[27]";
connectAttr "leftLeaf.wm" "skinCluster16.ma[39]";
connectAttr "leftLeaf1.wm" "skinCluster16.ma[40]";
connectAttr "leftLeaf2.wm" "skinCluster16.ma[41]";
connectAttr "midLeaf.wm" "skinCluster16.ma[42]";
connectAttr "midLeaf1.wm" "skinCluster16.ma[43]";
connectAttr "smallShieldStem4.liw" "skinCluster16.lw[27]";
connectAttr "leftLeaf.liw" "skinCluster16.lw[39]";
connectAttr "leftLeaf1.liw" "skinCluster16.lw[40]";
connectAttr "leftLeaf2.liw" "skinCluster16.lw[41]";
connectAttr "midLeaf.liw" "skinCluster16.lw[42]";
connectAttr "midLeaf1.liw" "skinCluster16.lw[43]";
connectAttr "smallShieldStem4.obcc" "skinCluster16.ifcl[27]";
connectAttr "leftLeaf.obcc" "skinCluster16.ifcl[39]";
connectAttr "leftLeaf1.obcc" "skinCluster16.ifcl[40]";
connectAttr "leftLeaf2.obcc" "skinCluster16.ifcl[41]";
connectAttr "midLeaf.obcc" "skinCluster16.ifcl[42]";
connectAttr "midLeaf1.obcc" "skinCluster16.ifcl[43]";
connectAttr "bindPose1.msg" "skinCluster16.bp";
connectAttr "smallShieldStem4.msg" "skinCluster16.ptt";
connectAttr "bigShieldStem.wm" "skinCluster15.ma[6]";
connectAttr "rightLeaf.wm" "skinCluster15.ma[19]";
connectAttr "smallShieldStem.wm" "skinCluster15.ma[23]";
connectAttr "smallShieldStem1.wm" "skinCluster15.ma[24]";
connectAttr "smallShieldStem2.wm" "skinCluster15.ma[25]";
connectAttr "smallShieldStem3.wm" "skinCluster15.ma[26]";
connectAttr "smallShieldStem4.wm" "skinCluster15.ma[27]";
connectAttr "smallShieldStem5.wm" "skinCluster15.ma[28]";
connectAttr "smallShieldStem6.wm" "skinCluster15.ma[29]";
connectAttr "leftLeaf.wm" "skinCluster15.ma[39]";
connectAttr "leftLeaf1.wm" "skinCluster15.ma[40]";
connectAttr "leftLeaf2.wm" "skinCluster15.ma[41]";
connectAttr "midLeaf.wm" "skinCluster15.ma[42]";
connectAttr "midLeaf1.wm" "skinCluster15.ma[43]";
connectAttr "midLeaf2.wm" "skinCluster15.ma[44]";
connectAttr "bigShieldStem.liw" "skinCluster15.lw[6]";
connectAttr "rightLeaf.liw" "skinCluster15.lw[19]";
connectAttr "smallShieldStem.liw" "skinCluster15.lw[23]";
connectAttr "smallShieldStem1.liw" "skinCluster15.lw[24]";
connectAttr "smallShieldStem2.liw" "skinCluster15.lw[25]";
connectAttr "smallShieldStem3.liw" "skinCluster15.lw[26]";
connectAttr "smallShieldStem4.liw" "skinCluster15.lw[27]";
connectAttr "smallShieldStem5.liw" "skinCluster15.lw[28]";
connectAttr "smallShieldStem6.liw" "skinCluster15.lw[29]";
connectAttr "leftLeaf.liw" "skinCluster15.lw[39]";
connectAttr "leftLeaf1.liw" "skinCluster15.lw[40]";
connectAttr "leftLeaf2.liw" "skinCluster15.lw[41]";
connectAttr "midLeaf.liw" "skinCluster15.lw[42]";
connectAttr "midLeaf1.liw" "skinCluster15.lw[43]";
connectAttr "midLeaf2.liw" "skinCluster15.lw[44]";
connectAttr "bigShieldStem.obcc" "skinCluster15.ifcl[6]";
connectAttr "rightLeaf.obcc" "skinCluster15.ifcl[19]";
connectAttr "smallShieldStem.obcc" "skinCluster15.ifcl[23]";
connectAttr "smallShieldStem1.obcc" "skinCluster15.ifcl[24]";
connectAttr "smallShieldStem2.obcc" "skinCluster15.ifcl[25]";
connectAttr "smallShieldStem3.obcc" "skinCluster15.ifcl[26]";
connectAttr "smallShieldStem4.obcc" "skinCluster15.ifcl[27]";
connectAttr "smallShieldStem5.obcc" "skinCluster15.ifcl[28]";
connectAttr "smallShieldStem6.obcc" "skinCluster15.ifcl[29]";
connectAttr "leftLeaf.obcc" "skinCluster15.ifcl[39]";
connectAttr "leftLeaf1.obcc" "skinCluster15.ifcl[40]";
connectAttr "leftLeaf2.obcc" "skinCluster15.ifcl[41]";
connectAttr "midLeaf.obcc" "skinCluster15.ifcl[42]";
connectAttr "midLeaf1.obcc" "skinCluster15.ifcl[43]";
connectAttr "midLeaf2.obcc" "skinCluster15.ifcl[44]";
connectAttr "bindPose1.msg" "skinCluster15.bp";
connectAttr "leftLeaf.msg" "skinCluster15.ptt";
connectAttr "smallShieldStem6.wm" "skinCluster19.ma[29]";
connectAttr "leftLeaf.wm" "skinCluster19.ma[39]";
connectAttr "leftLeaf1.wm" "skinCluster19.ma[40]";
connectAttr "leftLeaf2.wm" "skinCluster19.ma[41]";
connectAttr "midLeaf.wm" "skinCluster19.ma[42]";
connectAttr "midLeaf1.wm" "skinCluster19.ma[43]";
connectAttr "smallShieldStem6.liw" "skinCluster19.lw[29]";
connectAttr "leftLeaf.liw" "skinCluster19.lw[39]";
connectAttr "leftLeaf1.liw" "skinCluster19.lw[40]";
connectAttr "leftLeaf2.liw" "skinCluster19.lw[41]";
connectAttr "midLeaf.liw" "skinCluster19.lw[42]";
connectAttr "midLeaf1.liw" "skinCluster19.lw[43]";
connectAttr "smallShieldStem6.obcc" "skinCluster19.ifcl[29]";
connectAttr "leftLeaf.obcc" "skinCluster19.ifcl[39]";
connectAttr "leftLeaf1.obcc" "skinCluster19.ifcl[40]";
connectAttr "leftLeaf2.obcc" "skinCluster19.ifcl[41]";
connectAttr "midLeaf.obcc" "skinCluster19.ifcl[42]";
connectAttr "midLeaf1.obcc" "skinCluster19.ifcl[43]";
connectAttr "bindPose1.msg" "skinCluster19.bp";
connectAttr "midLeaf1.msg" "skinCluster19.ptt";
connectAttr "smallShieldStem5.wm" "skinCluster17.ma[28]";
connectAttr "smallShieldStem6.wm" "skinCluster17.ma[29]";
connectAttr "smallShieldStem7.wm" "skinCluster17.ma[30]";
connectAttr "smallShieldStem8.wm" "skinCluster17.ma[31]";
connectAttr "leftLeaf.wm" "skinCluster17.ma[39]";
connectAttr "leftLeaf1.wm" "skinCluster17.ma[40]";
connectAttr "smallShieldStem5.liw" "skinCluster17.lw[28]";
connectAttr "smallShieldStem6.liw" "skinCluster17.lw[29]";
connectAttr "smallShieldStem7.liw" "skinCluster17.lw[30]";
connectAttr "smallShieldStem8.liw" "skinCluster17.lw[31]";
connectAttr "leftLeaf.liw" "skinCluster17.lw[39]";
connectAttr "leftLeaf1.liw" "skinCluster17.lw[40]";
connectAttr "smallShieldStem5.obcc" "skinCluster17.ifcl[28]";
connectAttr "smallShieldStem6.obcc" "skinCluster17.ifcl[29]";
connectAttr "smallShieldStem7.obcc" "skinCluster17.ifcl[30]";
connectAttr "smallShieldStem8.obcc" "skinCluster17.ifcl[31]";
connectAttr "leftLeaf.obcc" "skinCluster17.ifcl[39]";
connectAttr "leftLeaf1.obcc" "skinCluster17.ifcl[40]";
connectAttr "bindPose1.msg" "skinCluster17.bp";
connectAttr "smallShieldStem8.msg" "skinCluster17.ptt";
connectAttr "smallShieldStem4.wm" "skinCluster18.ma[27]";
connectAttr "smallShieldStem5.wm" "skinCluster18.ma[28]";
connectAttr "smallShieldStem6.wm" "skinCluster18.ma[29]";
connectAttr "smallShieldStem7.wm" "skinCluster18.ma[30]";
connectAttr "leftLeaf.wm" "skinCluster18.ma[39]";
connectAttr "leftLeaf1.wm" "skinCluster18.ma[40]";
connectAttr "leftLeaf2.wm" "skinCluster18.ma[41]";
connectAttr "midLeaf.wm" "skinCluster18.ma[42]";
connectAttr "midLeaf1.wm" "skinCluster18.ma[43]";
connectAttr "smallShieldStem4.liw" "skinCluster18.lw[27]";
connectAttr "smallShieldStem5.liw" "skinCluster18.lw[28]";
connectAttr "smallShieldStem6.liw" "skinCluster18.lw[29]";
connectAttr "smallShieldStem7.liw" "skinCluster18.lw[30]";
connectAttr "leftLeaf.liw" "skinCluster18.lw[39]";
connectAttr "leftLeaf1.liw" "skinCluster18.lw[40]";
connectAttr "leftLeaf2.liw" "skinCluster18.lw[41]";
connectAttr "midLeaf.liw" "skinCluster18.lw[42]";
connectAttr "midLeaf1.liw" "skinCluster18.lw[43]";
connectAttr "smallShieldStem4.obcc" "skinCluster18.ifcl[27]";
connectAttr "smallShieldStem5.obcc" "skinCluster18.ifcl[28]";
connectAttr "smallShieldStem6.obcc" "skinCluster18.ifcl[29]";
connectAttr "smallShieldStem7.obcc" "skinCluster18.ifcl[30]";
connectAttr "leftLeaf.obcc" "skinCluster18.ifcl[39]";
connectAttr "leftLeaf1.obcc" "skinCluster18.ifcl[40]";
connectAttr "leftLeaf2.obcc" "skinCluster18.ifcl[41]";
connectAttr "midLeaf.obcc" "skinCluster18.ifcl[42]";
connectAttr "midLeaf1.obcc" "skinCluster18.ifcl[43]";
connectAttr "bindPose1.msg" "skinCluster18.bp";
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
// End of ShieldRigv02.ma
